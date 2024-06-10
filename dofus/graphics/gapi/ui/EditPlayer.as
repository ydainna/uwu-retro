class dofus.§\x18\x03\x10§.gapi.ui.EditPlayer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "EditPlayer";
   static var §\x19\x03\x0e§ = 500;
   var §\x1d\x18\x03§ = 0;
   var §\x1c\x06\b§ = false;
   var §\x1c\x03\x16§ = false;
   var §\x1c\x03\x17§ = false;
   var §\x1c\x04\n§ = false;
   function EditPlayer()
   {
      super();
   }
   function §\x12\x18§(§\x16\x0b\x05§)
   {
      this["\x1c\x03\x16"] = _loc2_;
      return this.editColors;
   }
   function §\x12\x19§(§\x16\x0b\x06§)
   {
      this["\x1c\x03\x17"] = _loc2_;
      return this.editName;
   }
   function §\x13\x14§(bForce)
   {
      this["\x1c\x04\n"] = _loc2_;
      return this.force;
   }
   function §\x10\x10§(§\x1b\x04\x06§)
   {
      if(this._itCharacterName.text != undefined)
      {
         this._itCharacterName.text = _loc2_;
      }
      return this.characterName;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.EditPlayer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x1a\x1a\x1d"]});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this["\x18\t\x0e"]});
   }
   function addListeners()
   {
      var ref = this;
      this["\x1d\x0f\f"].onPress = function()
      {
         ref.click({target:this});
      };
      this["\x1d\x0f\f"].onRollOver = function()
      {
         ref.over({target:this});
      };
      this["\x1d\x0f\f"].onRollOut = function()
      {
         ref.out({target:this});
      };
      this._btnCancel.addEventListener("click",this);
      this._btnValidate.addEventListener("click",this);
      this["\x1c\t\x1c"].addEventListener("click",this);
      if(this.api.datacenter.Player.mount != undefined)
      {
         this["\x1c\x0b\x02"].addEventListener("click",this);
      }
      else
      {
         this["\x1c\x0b\x02"]._visible = false;
         this["\x1d\x01\x11"]._visible = false;
      }
      this._btnClose.addEventListener("click",this);
      this._itCharacterName.addEventListener("change",this);
      this["\x1c\r\x17"].addEventListener("change",this);
      this["\x1c\r\x17"].addEventListener("over",this);
      this["\x1c\r\x17"].addEventListener("out",this);
   }
   function §\x1a\x1a\x1d§()
   {
      var _loc2_ = "";
      if(this.api.datacenter.Player.isAuthorized)
      {
         _loc2_ = "a-zA-Z\\-\\[\\]";
      }
      else
      {
         _loc2_ = "a-zA-Z\\-";
      }
      if(this.api.config.isStreaming)
      {
         _loc2_ += "0-9";
      }
      this._itCharacterName.restrict = _loc2_;
   }
   function initTexts()
   {
      this["\x1e\x10\t"].title = this.api.lang.getText("CUSTOMIZE");
      this._lblTitle.text = this.api.lang.getText("CREATE_TITLE");
      this["\x1c\x18\x16"].text = this.api.lang.getText("HIDE_STUFF");
      this["\x1d\x01\x11"].text = this.api.lang.getText("SHOW_MOUNT");
      this["\x1c\x15\x06"].text = this.api.lang.getText("CLICK_TO_ANIMATE");
      this["\x1c\x14\x1b"].text = this.api.lang.getText("SPRITE_COLORS");
      this["\x1c\x14\x1d"].text = this.api.lang.getText("CREATE_CHARACTER_NAME");
      this._btnCancel.label = this.api.lang.getText("BACK");
      this._btnValidate.label = this.api.lang.getText("VALIDATE");
   }
   function §\x18\t\x0e§()
   {
      if(this["\x1c\x04\n"])
      {
         this._btnClose._visible = false;
         this._btnCancel._visible = false;
      }
      if(!this["\x1c\x03\x17"])
      {
         this._itCharacterName.enabled = false;
         this["\x1d\x0f\f"]._visible = false;
         this["\x1d\f\r"]._visible = false;
      }
      if(!this["\x1c\x03\x16"])
      {
         this["\x1c\x14\x1b"]._visible = false;
         this["\x1c\r\x17"]._visible = false;
      }
      this.characterName = this.api.datacenter.Player.Name;
      this["\x1a\x1e\x0f"]();
      this._btnValidate.label = this.api.lang.getText("VALIDATE");
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function §\x1a\x1e\x0f§()
   {
      var _loc2_ = this["\x1c\t\x1c"].selected;
      var _loc3_ = this["\x1c\x0b\x02"].selected;
      var _loc4_ = ank.battlefield.datacenter..Sprite(this.api.datacenter.Player.data);
      if(_loc4_ == undefined)
      {
         this["\x1e\r\x0f"]._visible = false;
         this["\x1c\r\x17"]._visible = false;
         return undefined;
      }
      if(this["\x1e\r\x0f"]["\x1b\x07\x06"] == undefined)
      {
         var _loc5_ = _loc4_.color1;
         var _loc6_ = _loc4_.color2;
         var _loc7_ = _loc4_.color3;
      }
      else
      {
         _loc5_ = this["\x1e\r\x0f"]["\x17\x15\r"](1);
         _loc6_ = this["\x1e\r\x0f"]["\x17\x15\r"](2);
         _loc7_ = this["\x1e\r\x0f"]["\x17\x15\r"](3);
      }
      this["\x1e\x02\x16"] = {color1:_loc5_,color2:_loc6_,color3:_loc7_};
      this["\x1e\r\x0f"].zoom = 200;
      this["\x1e\r\x0f"]["\x1b\x07\x05"] = ["StaticF","StaticR","StaticL","WalkF","RunF","Anim2R","Anim2L"];
      this["\x1e\r\x0f"]["\x1a\n\x1d"] = 50;
      this["\x1e\r\x0f"]["\x1b\x16\x1b"] = true;
      var _loc8_ = this.api.datacenter.Player.Guild;
      var _loc9_ = this.api.datacenter.Player.Sex;
      this["\x1c\r\x17"].breed = _loc8_;
      this["\x1c\r\x17"].sex = _loc9_;
      this["\x1c\r\x17"].colors = [_loc5_,_loc6_,_loc7_];
      var _loc10_ = _loc8_ + "" + _loc9_;
      var _loc11_ = new ank.battlefield.datacenter..Sprite("viewer",ank.battlefield.mc.Sprite,dofus.Constants["\x16\x1c\x1a"] + _loc10_ + ".swf",undefined,5);
      if(!_loc2_)
      {
         _loc11_.accessories = _loc4_.accessories;
      }
      if(_loc3_)
      {
         var _loc12_ = this.api.datacenter.Player.mount;
         if(_loc12_ != undefined)
         {
            var _loc13_ = new dofus.datacenter.Mount(_loc12_.modelID,Number(_loc10_));
            if(_loc12_["\x18\r\x02"])
            {
               _loc13_["\x16\x17\x01"] = _loc12_["\x16\x17\x01"];
               _loc13_.customColor1 = _loc6_;
               _loc13_.customColor2 = _loc7_;
               _loc13_.customColor3 = _loc7_;
            }
            _loc11_.mount = _loc13_;
         }
      }
      this["\x1e\r\x0f"]["\x17\r\x02"] = true;
      this["\x1e\r\x0f"]["\x1a\n\x16"] = !_loc2_;
      this["\x1e\r\x0f"]["\x1b\x04\x1b"] = _loc4_;
      this["\x1e\r\x0f"]["\x1b\x07\x06"] = _loc11_;
      this["\x1e\r\x0f"].setColors(this["\x1e\x02\x16"]);
   }
   function §\x1a\x1d\x02§(nIndex)
   {
      var §\x16\x14\x1b§ = true;
      this["\x1d\x1c\x07"] = this["\x1e\r\x0f"]["\x17\x15\r"](nIndex);
      this.onEnterFrame = function()
      {
         this["\x1e\r\x0f"]["\x1a\x15\x11"](nIndex,!(§\x16\x14\x1b§ = !eval("\x16\x14\x1b")) ? 16746632 : 16733525);
      };
   }
   function §\x18\x06\x05§(§\x19\b\x14§)
   {
      delete this.onEnterFrame;
      this["\x1e\r\x0f"]["\x1a\x15\x11"](_loc2_,this["\x1d\x1c\x07"]);
   }
   function §\x1b\x17\x12§()
   {
      var _loc2_ = this._itCharacterName.text;
      if(_loc2_.length == 0 || _loc2_ == undefined)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("NEED_CHARACTER_NAME"),"ERROR_BOX",{name:"CREATENONAME"});
         return undefined;
      }
      if(_loc2_.length > 20)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("LONG_CHARACTER_NAME",[_loc2_,20]),"ERROR_BOX");
         return undefined;
      }
      if(this.api.lang.getConfigText("CHAR_NAME_FILTER") && !this.api.datacenter.Player.isAuthorized)
      {
         var _loc3_ = new dofus.utils.["\x19\x03\n"]["\x19\x03\x0b"](_loc2_);
         var _loc4_ = new dofus.utils.["\x19\x03\n"]["\x1a\x0f\x01"]["\x19\x03\f"]();
         var _loc5_ = _loc3_["\x18\x10\f"](_loc4_);
         if(!_loc5_.IS_SUCCESS)
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("INVALID_CHARACTER_NAME") + "\r\n" + _loc5_.toString("\r\n"),"ERROR_BOX");
            return undefined;
         }
      }
      this.api.network.Account.editCharacterName(_loc2_);
   }
   function §\x1b\x17\f§()
   {
      this.api.network.Account.editCharacterColors(this["\x1e\x02\x16"].color1,this["\x1e\x02\x16"].color2,this["\x1e\x02\x16"].color3);
   }
   function setColors(§\x19\x12\t§)
   {
      this["\x1e\x02\x16"] = _loc2_;
      this["\x1e\r\x0f"].setColors(this["\x1e\x02\x16"]);
   }
   function hideGenerateRandomName()
   {
      this["\x1d\x0f\f"]._visible = false;
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnValidate:
            if(this["\x1c\x03\x17"])
            {
               var _loc3_ = this._itCharacterName.text;
               if(this.api.datacenter.Player.Name == _loc3_)
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("CHARACTER_NAME_MUST_CHANGE"),"ERROR_BOX");
                  break;
               }
               var _loc4_ = this.gapi.loadUIComponent("AskYesNo","AskYesNoEditName",{title:this.api.lang.getText("QUESTION"),text:this.api.lang.getText("CONFIRM_EDIT_NAME")});
               _loc4_.addEventListener("yes",this);
               break;
            }
            if(this["\x1c\x03\x16"])
            {
               this["\x1b\x17\f"]();
            }
         case this._btnCancel:
         case this._btnClose:
            this["\x16\x15\n"]();
            break;
         case this["\x1d\x0f\f"]:
            if(this["\x1d\x18\x03"] + dofus.graphics.gapi.ui.EditPlayer["\x19\x03\x0e"] < 4942)
            {
               this.api.network.Account.getRandomCharacterName();
               this["\x1d\x18\x03"] = 4305;
            }
            break;
         case this["\x1c\t\x1c"]:
         case this["\x1c\x0b\x02"]:
            this["\x1a\x1e\x0f"]();
      }
   }
   function yes(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "AskYesNoEditName")
      {
         this["\x1b\x17\x12"]();
         this["\x1b\x13\x13"]();
      }
   }
   function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\r\x17"]:
            this["\x1a\x1d\x02"](_loc2_.index);
            break;
         case this["\x1d\x0f\f"]:
            this.gapi.showTooltip(this.api.lang.getText("RANDOM_NICKNAME"),_root._xmouse,_root._ymouse - 20);
      }
   }
   function out(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) !== this["\x1c\r\x17"])
      {
         this.gapi.hideTooltip();
      }
      else
      {
         this["\x18\x06\x05"](_loc2_.index);
      }
   }
   function change(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\r\x17"]:
            this.setColors(_loc2_.value);
            break;
         case this._itCharacterName:
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
               break;
            }
      }
   }
}
