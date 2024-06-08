class dofus.§\x18\x03\x10§.gapi.ui.SpellViewerOnCreate extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "SpellViewerOnCreate";
   static var §\x1b\x06\x13§ = 20;
   function SpellViewerOnCreate()
   {
      super();
   }
   function §\x1e\x13\x07§()
   {
      return this["\x1d\x13\r"];
   }
   function §\x0f\x16§(§\x19\x03\x01§)
   {
      this.api.datacenter.Player.Guild = _loc2_;
      this["\x1d\x13\r"] = _loc2_;
      return this["\x1e\x13\x07"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.SpellViewerOnCreate.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this["\x18\n\x14"]});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
   }
   function §\x18\n\x14§()
   {
      this["\x1c\x14\x0e"].text = this.api.lang.getText("CLASS_SPELLS");
      this["\x1c\x14\r"].text = this.api.lang.getClassText(this["\x1d\x13\r"]).sn;
      this["\x1d\x04\x1c"].text = this.api.lang.getText("SEE_ALL_SPELLS");
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._btnClose.addEventListener("over",this);
      this._btnClose.addEventListener("out",this);
      this["\x1c\x04\x17"].addEventListener("click",this);
      this["\x1d\x11\x1a"].onRelease = function()
      {
      };
      this["\x1d\x11\x1a"].useHandCursor = false;
      this["\x1d\x11\x18"].onRelease = function()
      {
         var §\x16\x06\x10§ = new Object();
         var _loc2_ = 0;
         while(_loc2_ < dofus.graphics.gapi.ui.SpellViewerOnCreate["\x1b\x06\x13"])
         {
            var _loc3_ = this._parent["_ctr" + _loc2_];
            var _loc4_ = this._parent["\x1d\x0e\x14"]._x;
            var _loc5_ = this._parent["\x1d\x0e\x14"]._y;
            var _loc6_ = _loc4_ + (_loc2_ - (_loc2_ <= 9 ? 0 : 10)) * (_loc3_.width + 5);
            var _loc7_ = _loc5_ + (5 + _loc3_.height) * (_loc2_ <= 9 ? 0 : 1);
            eval("\x16\x06\x10")["_ctr" + _loc2_] = {x:_loc6_,y:_loc7_};
            _loc3_.onEnterFrame = function()
            {
               if(dofus.Constants.TRIPLEFRAMERATE)
               {
                  this._x += (eval("\x16\x06\x10")[this._name].x - this._x) / 6;
                  this._y += (eval("\x16\x06\x10")[this._name].y - this._y) / 6;
               }
               else
               {
                  this._x += (eval("\x16\x06\x10")[this._name].x - this._x) / 2;
                  this._y += (eval("\x16\x06\x10")[this._name].y - this._y) / 2;
               }
               this._alpha += (100 - this._alpha) / 2;
               if(Math.abs(this._x - eval("\x16\x06\x10")[this._name].x) < 0.5 && (Math.abs(this._y - eval("\x16\x06\x10")[this._name].y) < 0.5 && Math.abs(this._alpha - 100) < 0.5))
               {
                  delete this.onEnterFrame;
               }
            };
            _loc2_ = _loc2_ + 1;
         }
         var ref = this._parent;
         var _loc8_ = 0;
         this.onEnterFrame = function()
         {
            var _loc2_ = (ref["\x1d\x0e\x13"]._y - ref["\x1d\x10\x0b"]._y) / 2;
            ref["\x1d\x10\x0b"]._y += _loc2_;
            ref["\x1d\x11\x1a"]._y += _loc2_;
            if(Math.abs(ref["\x1d\x10\x0b"]._y - ref["\x1d\x0e\x13"]._y) < 0.5)
            {
               ref["\x1d\x11\x1a"]._y += ref["\x1d\x0e\x13"]._y - ref["\x1d\x10\x0b"]._y;
               ref["\x1d\x10\x0b"]._y = ref["\x1d\x0e\x13"]._y;
               delete this.onEnterFrame;
            }
         };
         this._parent["\x1d\t\x01"]._visible = false;
         this._parent["\x1d\t\x02"]._visible = false;
         this._parent["\x1d\x04\x1c"]._visible = false;
         delete this.onRelease;
      };
      var _loc2_ = 0;
      while(_loc2_ < dofus.graphics.gapi.ui.SpellViewerOnCreate["\x1b\x06\x13"])
      {
         var _loc3_ = this["_ctr" + _loc2_];
         _loc3_.addEventListener("over",this);
         _loc3_.addEventListener("out",this);
         _loc3_.addEventListener("click",this);
         _loc3_.addEventListener("onContentLoaded",this);
         _loc2_ = _loc2_ + 1;
      }
   }
   function temporisGetBreedSpells()
   {
      var _loc2_ = this.api.lang["\x18\x01\x06"]();
      var _loc3_ = new Array();
      for(var i in _loc2_)
      {
         var _loc4_ = _loc2_[i];
         var _loc5_ = new dofus.datacenter.["\x1b\x06\x06"](Number(i),1);
         var _loc6_ = _loc5_["\x16\x17\f"];
         if(_loc6_ == dofus.graphics.gapi.ui.SpellsCollection.SPELLS_CATEGORY_TR2_BREED && _loc5_.spellBreed == this["\x1d\x13\r"])
         {
            if(_loc5_.isPassive)
            {
               continue;
            }
            _loc3_.push(_loc5_.ID);
         }
      }
      return _loc3_;
   }
   function §\x18\t\x14§()
   {
      if(this.api.datacenter.Basics.aks_current_server.isTemporis())
      {
         var _loc2_ = this.temporisGetBreedSpells();
      }
      else
      {
         _loc2_ = this.api.lang.getClassText(this["\x1d\x13\r"]).s;
      }
      var _loc3_ = 0;
      while(_loc3_ < dofus.graphics.gapi.ui.SpellViewerOnCreate["\x1b\x06\x13"])
      {
         var _loc4_ = _loc2_[_loc3_];
         if(_loc4_ != undefined)
         {
            var _loc5_ = new dofus.datacenter.["\x1b\x06\x06"](_loc4_,1);
            var _loc6_ = this["_ctr" + _loc3_];
            _loc6_.contentData = _loc5_;
            _loc6_._alpha = _loc3_ >= 3 ? 0 : 100;
         }
         _loc3_ = _loc3_ + 1;
      }
      if(_loc2_.length < dofus.graphics.gapi.ui.SpellViewerOnCreate["\x1b\x06\x13"] / 2)
      {
         this["\x1d\x11\x18"].onRelease();
      }
      this["\x1d\x10\x0b"]["\x1d\x05\x1c"].addEventListener("complete",this);
      this["\x1b\x01\x01"](_loc2_[0],1);
   }
   function §\x1b\x01\x01§(§\x19\x0e\x17§, §\x19\t\x0f§)
   {
      this["\x1d\x1d\x07"] = _loc2_;
      var _loc4_ = this.api.kernel["\x16\x19\t"]["\x18\x01\x05"](_loc2_ + "~" + _loc3_ + "~");
      if(!_loc4_["\x18\x10\n"])
      {
         if(_loc3_ != 1)
         {
            this["\x1b\x01\x01"](_loc2_,1);
            return undefined;
         }
         _loc4_ = undefined;
      }
      var _loc5_ = 1;
      while(_loc5_ < 7)
      {
         var _loc6_ = this["_btnLevel" + _loc5_];
         _loc6_.selected = _loc5_ == _loc3_;
         _loc5_ = _loc5_ + 1;
      }
      if(_loc4_.name == undefined)
      {
         this["\x1d\x10\x0b"]["\x1d\x01\x1d"].text = "";
         this["\x1d\x10\x0b"]["\x1d\x02\x01"].text = "";
         this["\x1d\x10\x0b"]["\x1d\x01\x1b"].text = "";
         this["\x1d\x10\x0b"]["\x1e\x0f\x1b"].text = "";
         this["\x1d\x10\x0b"]["\x1d\x05\x1c"].contentPath = "";
         if(this["\x1d\x10\x0b"]["\x1d\x05\x1c"].loaded)
         {
            this["\x1d\x10\x0b"]["\x1d\x05\x1c"].content.applyColors();
         }
      }
      else if(this["\x1d\x10\x0b"]["\x1d\x01\x1d"].text != undefined)
      {
         this["\x1d\x10\x0b"]["\x1d\x01\x1d"].text = _loc4_.name;
         this["\x1d\x10\x0b"]["\x1d\x02\x01"].text = this.api.lang.getText("RANGEFULL") + " : " + _loc4_["\x1a\t\x17"];
         this["\x1d\x10\x0b"]["\x1d\x01\x1b"].text = this.api.lang.getText("ACTIONPOINTS") + " : " + _loc4_["\x16\x04\x03"];
         this["\x1d\x10\x0b"]["\x1e\x0f\x1b"].text = _loc4_.description + "\n" + _loc4_["\x17\x07\b"];
         this["\x1d\x10\x0b"]["\x1d\x05\x1c"].forceReload = true;
         this["\x1d\x10\x0b"]["\x1d\x05\x1c"].contentParams = _loc4_.params;
         this["\x1d\x10\x0b"]["\x1d\x05\x1c"].contentPath = _loc4_.iconFile;
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\x04\x17"]:
         case this._btnClose:
            this["\x1b\x13\x13"]();
            break;
         default:
            this["\x1b\x01\x01"](_loc2_.target.contentData.ID,1);
      }
   }
   function §\x1a\x0b\b§()
   {
      var _loc2_ = 0;
      while(_loc2_ < dofus.graphics.gapi.ui.SpellViewerOnCreate["\x1b\x06\x13"])
      {
         var _loc3_ = this["_ctr" + _loc2_];
         var _loc4_ = _loc3_.content;
         _loc4_.applyColors();
         _loc2_ = _loc2_ + 1;
      }
      var _loc5_ = this["\x1d\x10\x0b"]["\x1d\x05\x1c"];
      _loc5_.content.applyColors();
   }
   function complete(oEvent)
   {
      var _loc3_ = _loc2_.clip;
      _loc3_.applyColors();
   }
   function onContentLoaded(oEvent)
   {
      var _loc3_ = _loc2_.content;
      _loc3_.applyColors();
   }
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) !== this._btnClose)
      {
         var _loc3_ = _loc2_.target.contentData.ID;
         if(_loc3_ != undefined)
         {
            var _loc4_ = dofus.datacenter.["\x1b\x06\x06"](this.api.kernel["\x16\x19\t"]["\x18\x01\x05"](_loc3_ + "~1~"));
            this.gapi.showTooltip(_loc4_.name + ", " + this.api.lang.getText("REQUIRED_SPELL_LEVEL").toLowerCase() + ": " + _loc4_["\x18\x1d\x06"],_loc2_.target,-20);
         }
      }
      else
      {
         this.gapi.showTooltip(this.api.lang.getText("CLOSE"),_loc2_.target,-20);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
