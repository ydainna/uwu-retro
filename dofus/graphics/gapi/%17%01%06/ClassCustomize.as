class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.ClassCustomize extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ClassCustomize";
   static var §\x1b\x07\x0f§ = ["StaticF","StaticR","StaticL","WalkF","RunF","Anim2R","Anim2L"];
   static var §\x19\x03\x0e§ = 500;
   var §\x1d\x1d\b§ = 0;
   var §\x1d\x18\x03§ = 0;
   function ClassCustomize()
   {
      super();
   }
   function §\x10\x18§(§\x19\x05\x05§)
   {
      this["\x1d\x14\x01"] = _loc2_;
      this.addToQueue({object:this,method:this["\x18\x13\x14"]});
      return this["\x1e\x15\x1a"]();
   }
   function §\x1c\x11§(§\x19\x0e\b§)
   {
      this["\x1d\x1c\x1a"] = _loc2_;
      this.addToQueue({object:this,method:this["\x18\x13\x14"]});
      return this["\b\x1c"]();
   }
   function §\x10\x1d§(§\x15\x1b\x1c§)
   {
      this.addToQueue({object:this,method:this.applyColor,params:[_loc2_[0],1]});
      this.addToQueue({object:this,method:this.applyColor,params:[_loc2_[1],2]});
      this.addToQueue({object:this,method:this.applyColor,params:[_loc2_[2],3]});
      this.addToQueue({object:this,method:this["\x1b\x16\t"]});
      return this["\x1e\x16\x07"]();
   }
   function §\x19\f§(sName)
   {
      this.addToQueue({object:this,method:function()
      {
         if(this._itCharacterName.text != undefined)
         {
            this._itCharacterName.text = sName;
            this._itCharacterName.setFocus();
            Selection.setSelection(sName.length,sName.length);
         }
      }});
      return this["\x04\x1b"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.ClassCustomize.CLASS_NAME);
      this._mcRegenerateNickName._visible = false;
   }
   function createChildren()
   {
      this._visible = false;
      this["\x1e\x02\x16"] = {color1:-1,color2:-1,color3:-1};
      this["\x1e\x02\x0b"] = {color1:-1,color2:-1,color3:-1};
      this.addToQueue({object:this,method:function()
      {
         this["\x1a\x1a\x1d"]();
      }});
      this.addToQueue({object:this,method:this["\x16\x1a\x07"]});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
      this.api.colors.addSprite(this["\x1d\x06\x01"],this["\x1e\x02\x16"]);
      this.addToQueue({object:this,method:this["\x1a\x15\x12"],params:[1]});
      this.addToQueue({object:this,method:function()
      {
         this._itCharacterName.setFocus();
      }});
      this.addToQueue({object:this,method:function()
      {
         this._visible = true;
      }});
   }
   function §\x1a\x1a\x1d§()
   {
      if(this.api.datacenter.Player.isAuthorized)
      {
         this._itCharacterName.restrict = "a-zA-Z\\-\\[\\]";
      }
      else
      {
         this._itCharacterName.restrict = "a-zA-Z\\-";
      }
   }
   function §\x16\x1a\x07§()
   {
      if(this.api.lang.getConfigText("GENERATE_RANDOM_NAME") && this.api.datacenter.Basics.aks_can_generate_names !== false)
      {
         this._mcRegenerateNickName._visible = true;
      }
   }
   function addListeners()
   {
      this._cpColorPicker.addEventListener("change",this);
      this["\x1d\x06\x01"].addEventListener("initialization",this);
      this._btnNextAnim.addEventListener("click",this);
      this._btnPreviousAnim.addEventListener("click",this);
      this._btnReset1.addEventListener("click",this);
      this._btnReset2.addEventListener("click",this);
      this._btnReset3.addEventListener("click",this);
      this._btnColor1.addEventListener("click",this);
      this._btnColor2.addEventListener("click",this);
      this._btnColor3.addEventListener("click",this);
      this._btnColor1.addEventListener("over",this);
      this._btnColor2.addEventListener("over",this);
      this._btnColor3.addEventListener("over",this);
      this._btnColor1.addEventListener("out",this);
      this._btnColor2.addEventListener("out",this);
      this._btnColor3.addEventListener("out",this);
      this._itCharacterName.addEventListener("change",this);
      var ref = this;
      this._mcRegenerateNickName.onRelease = function()
      {
         ref.click({target:this});
      };
      this._mcRegenerateNickName.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._mcRegenerateNickName.onRollOut = function()
      {
         ref.out({target:this});
      };
   }
   function initTexts()
   {
      this["\x1c\x14\x1b"].text = this.api.lang.getText("SPRITE_COLORS");
      this["\x1c\x14\x1d"].text = this.api.lang.getText("CREATE_CHARACTER_NAME");
   }
   function §\x18\x13\x14§()
   {
      if(this["\x1d\x14\x01"] == undefined || this["\x1d\x1c\x1a"] == undefined)
      {
         return undefined;
      }
      this["\x1d\x06\x01"].contentPath = dofus.Constants["\x16\x1c\x1a"] + this["\x1d\x14\x01"] + this["\x1d\x1c\x1a"] + ".swf";
   }
   function applyColor(§\x19\x05\x06§, §\x19\b\x14§)
   {
      if(_loc3_ == undefined)
      {
         _loc3_ = this["\x1d\x1c\x0f"];
      }
      var _loc4_ = {ColoredButton:{bgcolor:(_loc2_ != -1 ? _loc2_ : 16711680),highlightcolor:(_loc2_ != -1 ? _loc2_ : 16777215),bgdowncolor:(_loc2_ != -1 ? _loc2_ : 16711680),highlightdowncolor:(_loc2_ != -1 ? _loc2_ : 16777215)}};
      ank.gapi.styles["\x1b\x0b\x14"]["\x18\x16\x14"](_loc4_);
      this["_btnColor" + _loc3_].styleName = "ColoredButton";
      this["\x1e\x02\x16"]["color" + _loc3_] = _loc2_;
      this["\x1e\x02\x0b"]["color" + _loc3_] = _loc2_;
      this["\x1b\x16\t"]();
   }
   function §\x1a\x15\x12§(§\x19\b\x14§)
   {
      var _loc3_ = this["_btnColor" + this["\x1d\x1c\x0f"]];
      var _loc4_ = this["_btnColor" + _loc2_];
      _loc3_.selected = false;
      _loc4_.selected = true;
      this["\x1d\x1c\x0f"] = _loc2_;
   }
   function §\x1a\x1d\x02§(nIndex)
   {
      var §\x16\x14\x1b§ = true;
      this.onEnterFrame = function()
      {
         this["\x1e\x02\x16"]["color" + nIndex] = !eval("\x16\x14\x1b") ? 16746632 : 16733525;
         this["\x1b\x16\t"]();
         set("\x16\x14\x1b",!eval("\x16\x14\x1b"));
      };
   }
   function §\x18\x06\x05§(§\x19\b\x14§)
   {
      delete this.onEnterFrame;
      this["\x1e\x02\x16"].color1 = this["\x1e\x02\x0b"].color1;
      this["\x1e\x02\x16"].color2 = this["\x1e\x02\x0b"].color2;
      this["\x1e\x02\x16"].color3 = this["\x1e\x02\x0b"].color3;
      this["\x1b\x16\t"]();
   }
   function §\x1b\x16\t§()
   {
      var _loc2_ = this["\x1d\x06\x01"].content;
      _loc2_.mcAnim.removeMovieClip();
      _loc2_.attachMovie(dofus.graphics.gapi.controls.ClassCustomize["\x1b\x07\x0f"][this["\x1d\x1d\b"]],"mcAnim",10);
      _loc2_._xscale = _loc2_._yscale = 200;
   }
   function §\x18\x06\n§()
   {
      this._mcRegenerateNickName._visible = false;
   }
   function change(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_itCharacterName":
            var _loc3_ = this._itCharacterName.text;
            if(!this.api.datacenter.Player.isAuthorized)
            {
               _loc3_ = _loc3_.substr(0,1).toUpperCase() + _loc3_.substr(1);
               var _loc4_ = _loc3_.substr(0,1);
               var _loc5_ = 1;
               while(_loc5_ < _loc3_.length)
               {
                  if(_loc3_.substr(_loc5_ - 1,1) != "-")
                  {
                     _loc4_ += _loc3_.substr(_loc5_,1).toLowerCase();
                  }
                  else
                  {
                     _loc4_ += _loc3_.substr(_loc5_,1);
                  }
                  _loc5_ = _loc5_ + 1;
               }
               this._itCharacterName.removeEventListener("change",this);
               this._itCharacterName.text = _loc4_;
               this._itCharacterName.addEventListener("change",this);
            }
            this["\x17\x07\x19"]({type:"nameChange",value:this._itCharacterName.text});
            break;
         case "_cpColorPicker":
            this.applyColor(_loc2_.value);
            this["\x17\x07\x19"]({type:"colorsChange",value:this["\x1e\x02\x16"]});
      }
   }
   function initialization(oEvent)
   {
      this["\x1b\x16\t"]();
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnNextAnim":
            this["\x1d\x1d\b"]++;
            if(this["\x1d\x1d\b"] >= dofus.graphics.gapi.controls.ClassCustomize["\x1b\x07\x0f"].length)
            {
               this["\x1d\x1d\b"] = 0;
            }
            this["\x1b\x16\t"]();
            break;
         case "_btnPreviousAnim":
            this["\x1d\x1d\b"]--;
            if(this["\x1d\x1d\b"] < 0)
            {
               this["\x1d\x1d\b"] = dofus.graphics.gapi.controls.ClassCustomize["\x1b\x07\x0f"].length - 1;
            }
            this["\x1b\x16\t"]();
            break;
         case "_btnColor1":
         case "_btnColor2":
         case "_btnColor3":
            var _loc3_ = Number(_loc2_.target._name.substr(9));
            var _loc4_ = this["\x1e\x02\x0b"]["color" + _loc3_];
            if(_loc4_ != -1)
            {
               this._cpColorPicker["\x1a\x15\x11"](_loc4_);
            }
            this["\x1a\x15\x12"](_loc3_);
            break;
         case "_btnReset1":
         case "_btnReset2":
         case "_btnReset3":
            var _loc5_ = Number(_loc2_.target._name.substr(9));
            this.applyColor(-1,_loc5_);
            this["\x17\x07\x19"]({type:"colorsChange",value:this["\x1e\x02\x16"]});
            break;
         case "_mcRegenerateNickName":
            if(this["\x1d\x18\x03"] + dofus.graphics.gapi.controls.ClassCustomize["\x19\x03\x0e"] < 8168)
            {
               this.api.network.Account.getRandomCharacterName();
               this["\x1d\x18\x03"] = dofus.graphics.gapi.controls.ClassCustomize["\x19\x03\x0e"];
               break;
            }
      }
   }
   function over(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnColor1":
         case "_btnColor2":
         case "_btnColor3":
            var _loc3_ = Number(_loc2_.target._name.substr(9));
            this["\x1a\x1d\x02"](_loc3_);
            break;
         case "_mcRegenerateNickName":
            var _loc4_ = {x:this._mcRegenerateNickName._x,y:this._mcRegenerateNickName._y};
            this._mcRegenerateNickName.localToGlobal(_loc4_);
            this.gapi.showTooltip(this.api.lang.getText("RANDOM_NICKNAME"),_loc4_.x + this._x,_loc4_.y + this._y - 20);
      }
   }
   function out(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnColor1":
         case "_btnColor2":
         case "_btnColor3":
            this["\x18\x06\x05"]();
            break;
         default:
            this.gapi.hideTooltip();
      }
   }
}
