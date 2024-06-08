class dofus.§\x18\x03\x10§.gapi.ui.CreateCharacter extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "CreateCharacter";
   static var §\x19\x03\x0e§ = 500;
   var §\x1d\x18\x03§ = 0;
   var §\x1c\x06\b§ = false;
   function CreateCharacter()
   {
      super();
   }
   function §\x1b\x0e§(§\x19\r\r§)
   {
      this["\x1d\x1b\x1d"] = _loc2_;
      return this.remainingTime;
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
      super.init(false,dofus.graphics.gapi.ui.CreateCharacter.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x1a\x1a\x1d"]});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this["\x18\t\x0e"]});
      this.addToQueue({object:this,method:this["\x1a\x13\x0b"]});
      this.addToQueue({object:this,method:this.switchUiTemporis});
      this.api.kernel["\x1b\x0b\f"]["\x19\x15\f"]();
      if(dofus.Constants.USE_JS_LOG && _global.CONFIG.isNewAccount)
      {
         this.getURL("JavaScript:WriteLog(\'CreateCharacter\')");
      }
   }
   function addListeners()
   {
      var ref = this;
      this["\x1d\r\x13"].onPress = function()
      {
         ref.click({target:this});
      };
      this["\x1d\r\x13"].onRollOver = function()
      {
         ref.over({target:this});
      };
      this["\x1d\r\x13"].onRollOut = function()
      {
         ref.out({target:this});
      };
      this["\x1d\x0b\t"].onPress = function()
      {
         ref.click({target:this});
      };
      this["\x1d\x0b\t"].onRollOver = function()
      {
         ref.over({target:this});
      };
      this["\x1d\x0b\t"].onRollOut = function()
      {
         ref.out({target:this});
      };
      this["\x1d\x10\t"].onPress = function()
      {
         ref.click({target:this});
      };
      this["\x1d\x10\t"].onRollOver = function()
      {
         ref.over({target:this});
      };
      this["\x1d\x10\t"].onRollOut = function()
      {
         ref.out({target:this});
      };
      this["\x1d\x10\n"].onPress = function()
      {
         ref.click({target:this});
      };
      this["\x1d\x10\n"].onRollOver = function()
      {
         ref.over({target:this});
      };
      this["\x1d\x10\n"].onRollOut = function()
      {
         ref.out({target:this});
      };
      this["\x1d\f\x04"].onPress = function()
      {
         ref.click({target:this});
      };
      this["\x1d\f\x04"].onRollOver = function()
      {
         ref.over({target:this});
      };
      this["\x1d\f\x04"].onRollOut = function()
      {
         ref.out({target:this});
      };
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
      this._mcRight.onPress = function()
      {
         ref.click({target:this});
      };
      this._mcRight.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._mcRight.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._mcLeft.onPress = function()
      {
         ref.click({target:this});
      };
      this._mcLeft.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._mcLeft.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._btnBack.addEventListener("click",this);
      this._btnValidate.addEventListener("click",this);
      this._itCharacterName.addEventListener("change",this);
      this["\x1c\r\x17"].addEventListener("change",this);
      this["\x1c\r\x17"].addEventListener("over",this);
      this["\x1c\r\x17"].addEventListener("out",this);
      this["\x1c\r\x16"].addEventListener("change",this);
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
      this._lblTitle.text = this.api.lang.getText("CREATE_TITLE");
      this["\x1c\x14\x1b"].text = this.api.lang.getText("SPRITE_COLORS");
      this["\x1c\x14\x1d"].text = this.api.lang.getText("CREATE_CHARACTER_NAME");
      this._btnBack.label = this.api.lang.getText("BACK");
      this._btnValidate.label = this.api.lang.getText("VALIDATE");
      this["\x1c\x18\x18"].text = this.api.lang.getText("HISTORY_CLASS_WORD");
      this["\x1d\x01\x1c"].text = this.api.lang.getText("SPELLS_SHORTCUT");
      this._lblCopyright.text = this.api.lang.getText("COPYRIGHT",[new Date().getUTCFullYear()]);
   }
   function §\x18\t\x0e§()
   {
      this["\x1e\x02\x16"] = {color1:-1,color2:-1,color3:-1};
      this["\x1d\x1c\x1a"] = Math.round(Math.random());
      var _loc2_ = new Array();
      var _loc3_ = 0;
      while(_loc3_ < dofus.Constants["\x18\x04\x19"].length)
      {
         if(!(this.api.config.isStreaming && dofus.Constants["\x18\x04\x19"][_loc3_] == 12))
         {
            _loc2_[_loc3_] = dofus.Constants["\x16\x10\x1d"] + dofus.Constants["\x18\x04\x19"][_loc3_] + this["\x1d\x1c\x1a"] + ".swf";
         }
         _loc3_ = _loc3_ + 1;
      }
      this["\x1c\r\x16"].initialize(_loc2_);
      this["\x1c\r\x16"]["\x16\x03\x17"] = true;
      if(dofus.Constants.TRIPLEFRAMERATE)
      {
         this["\x1c\r\x16"]["\x16\x03\x18"] = 9;
      }
      else
      {
         this["\x1c\r\x16"]["\x16\x03\x18"] = 3;
      }
      this["\x1e\r\x0f"].zoom = 250;
      this["\x1e\r\x0f"]["\x1b\x07\x05"] = ["StaticF","StaticR","StaticL","WalkF","RunF","Anim2R","Anim2L"];
      this["\x1e\r\x0f"]["\x1a\n\x1d"] = 50;
      this["\x1e\r\x0f"]["\x1b\x16\x1b"] = true;
   }
   function §\x1a\x13\x0b§()
   {
      var _loc2_ = -1;
      while(_loc2_ == -1 || this.api.config.isStreaming && _loc2_ == 12)
      {
         _loc2_ = Math.round(Math.random() * (dofus.Constants["\x18\x04\x19"].length - 1)) + 1;
      }
      this["\x1a\x15\x10"](_loc2_,this["\x1d\x1c\x1a"]);
      this._bLoaded = true;
   }
   function §\x1a\x15\x10§(§\x19\x05\x05§, §\x19\x0e\b§)
   {
      this["\x1c\r\x17"].breed = _loc2_;
      this["\x1c\r\x17"]["\x1a\x1b\f"] = _loc3_;
      if(this["\x1d\x13\r"] == _loc2_ && this["\x1d\x1c\x1a"] == _loc3_)
      {
         return undefined;
      }
      this["\x1e\r\x0f"]["\x1b\x07\x06"] = new ank.battlefield.datacenter..Sprite("viewer",ank.battlefield.mc.Sprite,dofus.Constants["\x16\x1c\x1a"] + _loc2_ + _loc3_ + ".swf",undefined,5);
      this["\x1d\x05\x06"].contentPath = dofus.Constants["\x16\x11\x01"] + _loc2_ + ".swf";
      if(this.api.datacenter.Basics.aks_current_server.isTemporis())
      {
         this._ldrClassPassive.contentPath = dofus.Constants["\x16\x10\x1c"] + _loc2_ + ".swf";
      }
      var _loc4_ = 0;
      while(_loc4_ < dofus.Constants["\x18\x04\x19"].length)
      {
         if(!(this.api.config.isStreaming && dofus.Constants["\x18\x04\x19"][_loc4_] == 12))
         {
            if(dofus.Constants["\x18\x04\x19"][_loc4_] == _loc2_)
            {
               this["\x1c\r\x16"]["\x17\x03\x13"] = _loc4_;
            }
         }
         _loc4_ = _loc4_ + 1;
      }
      if(this["\x1d\x1c\x1a"] != _loc3_)
      {
         var _loc5_ = new Array();
         var _loc6_ = 0;
         while(_loc6_ < dofus.Constants["\x18\x04\x19"].length)
         {
            if(!(this.api.config.isStreaming && dofus.Constants["\x18\x04\x19"][_loc6_] == 12))
            {
               _loc5_[_loc6_] = dofus.Constants["\x16\x10\x1d"] + dofus.Constants["\x18\x04\x19"][_loc6_] + _loc3_ + ".swf";
            }
            _loc6_ = _loc6_ + 1;
         }
         this["\x1c\r\x16"]["\x16\x1c\x18"] = _loc5_;
         this["\x1c\r\x16"]["\x1b\x14\x10"](1,this["\x1e\x02\x16"].color1);
         this["\x1c\r\x16"]["\x1b\x14\x10"](2,this["\x1e\x02\x16"].color2);
         this["\x1c\r\x16"]["\x1b\x14\x10"](3,this["\x1e\x02\x16"].color3);
      }
      var _loc7_ = this.api.lang.getClassText(_loc2_);
      this["\x1c\x15\x04"].text = _loc7_.ln;
      this._txtClassDescription.text = "<font color=\'#514A3C\'>" + _loc7_.d + "</font>";
      this["\x1e\x0f\x19"].text = "<font color=\'#514A3C\' size=\'14\'><b>" + _loc7_.sd + "</b></font>";
      if(this.api.datacenter.Basics.aks_current_server.isTemporis())
      {
         this._lblTitlePassiveTemporis.text = "<font color=\'#514A3C\'>" + _loc7_.pt + "</font>";
         this._txtPassiveTemporis.text = "<font color=\'#514A3C\' size=\'14\'><b>" + _loc7_.pd + "</b></font>";
      }
      this["\x1e\r\x0f"].setColors(this["\x1e\x02\x16"]);
      if(dofus.Constants["\x17\r\x14"][_loc2_ - 1] > this.api.datacenter.Basics.aks_current_regional_version)
      {
         this._btnValidate.label = this.api.lang.getText("COMING_SOON_SHORT");
      }
      else
      {
         this._btnValidate.label = this.api.lang.getText("VALIDATE");
      }
      this["\x1d\x13\r"] = _loc2_;
      this["\x1d\x1c\x1a"] = _loc3_;
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
   function §\x1b\x17\r§()
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
         var _loc3_ = new dofusutils.["\x19\x03\n"]["\x19\x03\x0b"](_loc2_);
         var _loc4_ = new dofusutils.["\x19\x03\n"]["\x1a\x0f\x01"]["\x19\x03\f"]();
         var _loc5_ = _loc3_["\x18\x10\f"](_loc4_);
         if(!_loc5_.IS_SUCCESS)
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("INVALID_CHARACTER_NAME") + "\r\n" + _loc5_.toString("\r\n"),"ERROR_BOX");
            return undefined;
         }
      }
      if(dofus.Constants["\x17\r\x14"][this["\x1d\x13\r"] - 1] > this.api.datacenter.Basics.aks_current_regional_version)
      {
         var _loc6_ = this.api.lang.getClassText(this["\x1d\x13\r"]).sn;
         this.api.kernel.showMessage(undefined,this.api.lang.getText("COMING_SOON_GUILD",[_loc6_]),"ERROR_BOX");
         return undefined;
      }
      if(dofus.Constants.PAYING_GUILD[this["\x1d\x13\r"] - 1] && this["\x1d\x1b\x1d"] <= 0)
      {
         var _loc7_ = this.api.lang.getClassText(this["\x1d\x13\r"]).sn;
         this.api.kernel.showMessage(undefined,this.api.lang.getText("PAYING_GUILD",[_loc7_]),"ERROR_BOX");
         return undefined;
      }
      this.api.datacenter.Basics.hasCreatedCharacter = true;
      if(dofus.Constants.USE_JS_LOG && _global.CONFIG.isNewAccount)
      {
         this.getURL("JavaScript:WriteLog(\'addCharacter;" + _loc2_ + "\')");
      }
      this.api.network.Account.addCharacter(_loc2_,this["\x1d\x13\r"],this["\x1e\x02\x16"].color1,this["\x1e\x02\x16"].color2,this["\x1e\x02\x16"].color3,this["\x1d\x1c\x1a"]);
   }
   function setColors(§\x19\x12\t§)
   {
      this["\x1e\x02\x16"] = _loc2_;
      this["\x1e\r\x0f"].setColors(this["\x1e\x02\x16"]);
      this["\x1c\r\x16"]["\x1b\x14\x10"](1,_loc2_.color1);
      this["\x1c\r\x16"]["\x1b\x14\x10"](2,_loc2_.color2);
      this["\x1c\r\x16"]["\x1b\x14\x10"](3,_loc2_.color3);
   }
   function switchUiTemporis()
   {
      if(this.api.datacenter.Basics.aks_current_server.isTemporis())
      {
         this["\x1d\x05\x06"]._y -= 55;
         this["\x1c\x15\x04"]._y -= 55;
         this["\x1e\x0f\x19"]._y -= 55;
         this._mcSeparateur._y -= 55;
         this._lblTitlePassiveTemporis._visible = true;
         this._txtPassiveTemporis._visible = true;
         this._mcSeparateurTemporis._visible = true;
         this._ldrClassPassive._visible = true;
      }
      else
      {
         this._lblTitlePassiveTemporis._visible = false;
         this._txtPassiveTemporis._visible = false;
         this._mcSeparateurTemporis._visible = false;
         this._ldrClassPassive._visible = false;
      }
   }
   function §\x18\x06\n§()
   {
      this["\x1d\x0f\f"]._visible = false;
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._mcRight:
            this["\x1c\r\x16"].slide(1);
            break;
         case this._mcLeft:
            this["\x1c\r\x16"].slide(-1);
            break;
         case this["\x1d\r\x13"]:
            this["\x1a\x15\x10"](this["\x1d\x13\r"],0);
            break;
         case this["\x1d\x0b\t"]:
            this["\x1a\x15\x10"](this["\x1d\x13\r"],1);
            break;
         case this["\x1d\x10\n"]:
         case this["\x1d\x10\t"]:
            this.api.ui.loadUIComponent("SpellViewerOnCreate","SpellViewerOnCreate",{breed:this["\x1d\x13\r"]});
            break;
         case this["\x1d\f\x04"]:
            this.api.ui.loadUIComponent("HistoryViewerOnCreate","HistoryViewerOnCreate",{breed:this["\x1d\x13\r"]});
            break;
         case this._btnValidate:
            this["\x1b\x17\r"]();
            break;
         case this._btnBack:
            if(this.api.datacenter.Basics.createCharacter)
            {
               this.api.kernel["\x16\x18\x1b"](true);
            }
            else
            {
               this.api.datacenter.Basics.ignoreCreateCharacter = true;
               this.api.network.Account.getCharactersForced();
            }
            break;
         case this["\x1d\x0f\f"]:
            if(this["\x1d\x18\x03"] + dofus.graphics.gapi.ui.CreateCharacter["\x19\x03\x0e"] < 1372)
            {
               this.api.network.Account.getRandomCharacterName();
               this["\x1d\x18\x03"] = 10227;
               break;
            }
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
            break;
         case this["\x1d\r\x13"]:
            this.gapi.showTooltip(this.api.lang.getText("ANIMAL_MEN"),_root._xmouse,_root._ymouse - 20);
            break;
         case this["\x1d\x0b\t"]:
            this.gapi.showTooltip(this.api.lang.getText("ANIMAL_WOMEN"),_root._xmouse,_root._ymouse - 20);
            break;
         case this["\x1d\x10\t"]:
            this.gapi.showTooltip(this.api.lang.getText("CLASS_SPELLS"),_root._xmouse,_root._ymouse - 20);
            break;
         case this._mcRight:
            this.gapi.showTooltip(this.api.lang.getText("NEXT_WORD"),_root._xmouse,_root._ymouse - 20);
            break;
         case this._mcLeft:
            this.gapi.showTooltip(this.api.lang.getText("PREVIOUS_WORD"),_root._xmouse,_root._ymouse - 20);
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
         case this["\x1c\r\x16"]:
            if(this._bLoaded)
            {
               this["\x1a\x15\x10"](dofus.Constants["\x18\x04\x19"][_loc2_.value],this["\x1d\x1c\x1a"]);
            }
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
