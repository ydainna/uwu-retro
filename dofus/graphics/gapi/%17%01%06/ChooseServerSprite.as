class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.ChooseServerSprite extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ChooseServerSprite";
   static var §\x18\x1a\t§ = 5;
   var §\x1c\x07\x1c§ = false;
   var §\x1c\x07\b§ = false;
   function ChooseServerSprite()
   {
      super();
      this["\x1c\x1c\x04"]._visible = false;
      this["\x1d\x0e\x05"]._visible = false;
   }
   function §\x1c\r§(§\x19\x0e\x06§)
   {
      this["\x1d\x1c\x17"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1b\x14\x14"]();
      }
      return this["\b\x19"]();
   }
   function §\b\x19§()
   {
      return this["\x1d\x1c\x17"];
   }
   function §\b\x18§()
   {
      var _loc2_ = this.api.datacenter.Basics["\x16\x02\x12"];
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         if(_loc2_[_loc3_].id == this["\x1d\x1c\x17"])
         {
            return _loc2_[_loc3_];
         }
         _loc3_ = _loc3_ + 1;
      }
      return undefined;
   }
   function §\x1c\t§(§\x16\x12\x06§)
   {
      this["\x1c\x07\x1c"] = _loc2_;
      this["\x1b\x16\x01"](!_loc2_ ? this.getStyle().overcolor : this.getStyle().selectedcolor);
      return this["\b\x13"]();
   }
   function §\b\x13§()
   {
      return this["\x1c\x07\x1c"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.ChooseServerSprite.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
   }
   function addListeners()
   {
      this["\x1d\x06\x01"].addEventListener("initialization",this);
      this["\x1d\x06\x01"].addEventListener("error",this);
      this["\x1c\x0e\x03"].addEventListener("over",this);
      this["\x1c\x0e\x03"].addEventListener("out",this);
      this._lblState.onRelease = function()
      {
         getURL(this._parent.api.lang.getConfigText("FORUM_SERVERS_STATE_LAST_POST"),"_blank");
      };
      this["\x1c\x0e\x03"].onRelease = function()
      {
         getURL(this._parent.api.lang.getConfigText("FORUM_SERVERS_STATE_LAST_POST"),"_blank");
      };
      this.api.datacenter.Basics["\x16\x02\x12"].addEventListener("modelChanged",this);
   }
   function §\x1a\x16\x07§()
   {
      if(this._bEnabled)
      {
         this["\x1d\f\x0b"].onRelease = function()
         {
            this._parent["\x18\n\x1b"]();
         };
         this["\x1d\f\x0b"].onRollOver = function()
         {
            this._parent["\x18\n\x19"]();
         };
         this["\x1d\f\x0b"].onRollOut = this["\x1d\f\x0b"].onReleaseOutside = function()
         {
            this._parent["\x18\n\x18"]();
         };
         this["\x1a\x18\x04"](this,{ra:100,rb:0,ga:100,gb:0,ba:100,bb:0});
      }
      else
      {
         delete this["\x1d\f\x0b"].onRelease;
         delete this["\x1d\f\x0b"].onRollOver;
         delete this["\x1d\f\x0b"].onRollOut;
         delete this["\x1d\f\x0b"].onReleaseOutside;
         this["\x1a\x18\x04"](this,this.getStyle().desabledtransform);
         this.selected = false;
      }
   }
   function §\x1b\x14\x14§()
   {
      var _loc2_ = this.server;
      var _loc3_ = 0;
      while(_loc3_ < dofus.graphics.gapi.controls.ChooseServerSprite["\x18\x1a\t"] + 1)
      {
         this["Bonhomme" + _loc3_].removeMovieClip();
         _loc3_ = _loc3_ + 1;
      }
      this["\x1c\x1c\x04"]._visible = false;
      this["\x1d\x0e\x05"]._visible = false;
      if(_loc2_ != undefined)
      {
         this["\x1c\x1b\x0f"].text = _loc2_.label;
         var _loc4_ = _loc2_.charactersCount;
         if(_loc4_ <= dofus.graphics.gapi.controls.ChooseServerSprite["\x18\x1a\t"])
         {
            var _loc5_ = 3;
            var _loc6_ = (112 - _loc4_ * (14.5 + _loc5_)) / 2;
            var _loc7_ = _loc6_;
            var _loc8_ = 165;
            var _loc9_ = 0;
            while(_loc9_ < _loc4_)
            {
               var _loc10_ = this.attachMovie("Bonhomme","Bonhomme" + _loc9_,_loc9_,{_x:_loc7_,_y:_loc8_});
               _loc7_ += _loc5_ + 14.5;
               _loc9_ = _loc9_ + 1;
            }
         }
         else
         {
            this["\x1c\x1c\x04"]._visible = true;
            this["\x1d\x0e\x05"]._visible = true;
            this["\x1c\x1c\x04"].text = "x" + _loc4_;
         }
         this._lblState.text = _loc2_["\x1b\t\x19"];
         this["\x1d\x06\x01"].forceReload = true;
         this["\x1d\x06\x01"].contentPath = dofus.Constants["\x1a\x14\x17"] + _loc2_.id + ".swf";
         this.enabled = _loc2_.state == dofus.datacenter.["\x1a\x14\x05"].SERVER_ONLINE;
         this["\x1c\x0e\x03"].contentPath = _loc2_.state != dofus.datacenter.["\x1a\x14\x05"].SERVER_ONLINE ? "NewCross" : "NewValid";
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1c\x1b\x0f"].text = "";
         this._lblState.text = "";
         this["\x1d\x06\x01"].contentPath = "";
         this["\x1c\x0e\x03"].contentPath = "";
         this.enabled = false;
      }
   }
   function §\x1b\x16\x01§(§\x19\x05\x06§)
   {
      if(this["\x1c\x07\x1c"] || this["\x1c\x07\b"] && this._bEnabled)
      {
         this["\x1d\x0f\x17"].gotoAndPlay(1);
         this["\x1d\x0f\x17"]._visible = true;
      }
      else
      {
         this["\x1d\x0f\x17"].stop();
         this["\x1d\x0f\x17"]._visible = false;
      }
   }
   function initialization(oEvent)
   {
      var _loc3_ = _loc2_.clip;
   }
   function error(oEvent)
   {
      this["\x1d\x06\x01"].forceReload = true;
      this["\x1d\x06\x01"].contentPath = dofus.Constants["\x1a\x14\x17"] + "0.swf";
   }
   function §\x18\n\x1b§()
   {
      this.selected = true;
      this["\x17\x07\x19"]({type:"select",serverID:this["\x1d\x1c\x17"]});
   }
   function §\x18\n\x19§()
   {
      this["\x1c\x07\b"] = true;
      this["\x1b\x16\x01"](!this["\x1c\x07\x1c"] ? this.getStyle().overcolor : this.getStyle().selectedcolor);
   }
   function §\x18\n\x18§()
   {
      this["\x1c\x07\b"] = false;
      this["\x1b\x16\x01"](this.getStyle().selectedcolor);
   }
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this["\x1c\x0e\x03"])
      {
         this.gapi.showTooltip(this.server["\x1b\t\x18"],_root._xmouse,_root._ymouse - 20);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function modelChanged(oEvent)
   {
      this["\x1b\x14\x14"]();
      this["\x17\x07\x19"]({type:"unselect"});
   }
}
