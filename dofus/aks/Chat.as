class dofus.aks.Chat extends dofus.aks.Handler
{
   function Chat(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function send(§\x1b\x03\x10§, §\x1a\x12\x02§, §\x19\x1e\x1d§)
   {
      if(this.api.datacenter.Game["\x18\x0f\x1b"] && _loc3_ == "*")
      {
         _loc3_ = "#";
      }
      if(_loc3_.toLowerCase() == this.api.datacenter.Player.Name.toLowerCase())
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_WISP_YOURSELF"),"ERROR_CHAT");
         return undefined;
      }
      if(this.api.kernel.ChatManager["\x18\f\x16"](_loc3_))
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_WISP_BLACKLISTED"),"ERROR_CHAT");
         return undefined;
      }
      _loc2_ = new ank.utils.ExtendedString(_loc2_)["\x1a\r\n"](["|"],[""]);
      var _loc5_ = this.api.kernel.ChatManager["\x16\x04\x11"](_loc2_);
      if(!_loc5_)
      {
         return undefined;
      }
      if(this.api.datacenter.Player.zaapToken == undefined && (_loc2_.indexOf(this.api.datacenter.Player.login) > -1 || _loc2_.indexOf(this.api.datacenter.Player.password) > -1))
      {
         if(_loc2_ != undefined && (this.api.datacenter.Player.login != undefined && this.api.datacenter.Player.password != undefined))
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_SAY_YOUR_PASSWORD"),"ERROR_CHAT");
            return undefined;
         }
      }
      if(_loc2_.length == 0)
      {
         return undefined;
      }
      var _loc6_ = new String();
      var _loc7_ = _loc4_.items;
      if(_loc7_.length > 0)
      {
         var _loc8_ = 0;
         var _loc9_ = 0;
         while(_loc9_ < _loc7_.length)
         {
            var _loc10_ = _loc7_[_loc9_];
            var _loc11_ = "[" + _loc10_.name + "]";
            var _loc12_ = _loc2_.indexOf(_loc11_);
            if(_loc12_ != -1)
            {
               var _loc13_ = "°" + _loc8_;
               _loc8_ = _loc8_ + 1;
               var _loc14_ = _loc2_.split("");
               _loc14_.splice(_loc12_,_loc11_.length,_loc13_);
               _loc2_ = _loc14_.join("");
               if(_loc6_.length > 0)
               {
                  _loc6_ += "!";
               }
               var _loc15_ = _loc10_["\x16\x1e\x05"];
               _loc6_ += _loc10_.unicID + "!" + (_loc15_ == undefined ? "." : _loc15_);
            }
            _loc9_ = _loc9_ + 1;
         }
      }
      var _loc16_ = _loc6_;
      if(_loc16_.length > dofus.Constants["\x18\x1a\x0b"])
      {
         _loc16_ = _loc16_.substring(0,dofus.Constants["\x18\x1a\x0b"] - 1);
      }
      if(_loc2_.length > dofus.Constants["\x18\x1a\x15"] && !(dofus.Constants.ALPHA && this.api.datacenter.Player.isAuthorized))
      {
         _loc2_ = _loc2_.substring(0,dofus.Constants["\x18\x1a\x15"]);
      }
      this.aks.send("BM" + _loc3_ + "|" + _loc2_ + "|" + _loc16_,true,undefined,true);
   }
   function §\x1a\r\x11§(§\x1a\x10\x12§, §\x1b\x03\x12§, §\x1b\x03\x10§, §\x19\r\n§)
   {
      this.aks.send("BR" + _loc2_ + "|" + _loc4_ + "|" + _loc3_ + "|" + _loc5_,false);
   }
   function §\x1b\x0b\x1c§(§\x19\x04\x18§, §\x16\x13\x03§)
   {
      if(!this.api.datacenter.Basics.inGame)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("SRV_MSG_7"),"ERROR_CHAT");
         return undefined;
      }
      var _loc4_ = "";
      switch(_loc2_)
      {
         case 0:
            _loc4_ = "i";
            break;
         case 2:
            _loc4_ = "*";
            break;
         case 3:
            _loc4_ = "#$p";
            break;
         case 4:
            _loc4_ = "%";
            break;
         case 5:
            _loc4_ = "!";
            break;
         case 6:
            _loc4_ = "?";
            break;
         case 7:
            _loc4_ = ":";
            break;
         case 8:
            _loc4_ = "^";
            break;
         case 10:
            _loc4_ = "e";
      }
      this.aks.send("cC" + (!_loc3_ ? "-" : "+") + _loc4_,true);
   }
   function §\x1b\x16\x1d§(§\x19\x0e\x13§)
   {
      if(6756 - this.api.datacenter.Basics.aks_chat_lastActionTime < dofus.Constants["\x16\x1c\x14"])
      {
         return undefined;
      }
      this.api.datacenter.Basics.aks_chat_lastActionTime = 3089;
      this.aks.send("BS" + _loc2_,true);
   }
   function §\x19\x1d\x13§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_.charAt(0) == "+";
      var _loc4_ = _loc2_.substr(1).split("");
      var _loc5_ = 0;
      for(; _loc5_ < _loc4_.length; _loc5_ = _loc5_ + 1)
      {
         var _loc6_ = 0;
         switch(_loc4_[_loc5_])
         {
            case "i":
               _loc6_ = 0;
               break;
            case "*":
               _loc6_ = 2;
               break;
            case "#":
               _loc6_ = 3;
               break;
            case "$":
               _loc6_ = 3;
               break;
            case "p":
               _loc6_ = 3;
               break;
            case "%":
               _loc6_ = 4;
               break;
            case "!":
               _loc6_ = 5;
               break;
            case "?":
               _loc6_ = 6;
               break;
            case ":":
               _loc6_ = 7;
               break;
            case "^":
               _loc6_ = 8;
               break;
            case "@":
               _loc6_ = 9;
               break;
            case "e":
               _loc6_ = 10;
               break;
            default:
               continue;
         }
         this.api.ui.getUIComponent("Banner")["\x16\x19\x0b"]["\x1a\x12\x1a"](_loc6_,_loc3_);
         this.api.kernel.ChatManager["\x1a\x1a\x1c"](_loc6_,_loc3_);
         this.api.datacenter.Basics["\x16\x19\x14"][_loc6_] = _loc3_;
      }
   }
   function §\x19\x1a\b§(bSuccess, §\x1a\x1b\r§)
   {
      if(!_loc2_)
      {
         switch(_loc3_.charAt(0))
         {
            case "S":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("SYNTAX_ERROR",[" /w <" + this.api.lang.getText("NAME") + "> <" + this.api.lang.getText("MSG") + ">"]),"ERROR_CHAT");
               break;
            case "f":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("USER_NOT_CONNECTED",[_loc3_.substr(1)]),"ERROR_CHAT");
               break;
            case "e":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("USER_NOT_CONNECTED_BUT_TRY_SEND_EXTERNAL",[_loc3_.substr(1)]),"ERROR_CHAT");
               break;
            case "n":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("USER_NOT_CONNECTED_EXTERNAL_NACK",[_loc3_.substr(1)]),"ERROR_CHAT");
         }
         return undefined;
      }
      var _loc4_ = _loc3_.charAt(0);
      _loc3_ = _loc4_ != "|" ? _loc3_.substr(2) : _loc3_.substr(1);
      var _loc5_ = _loc3_.split("|");
      var _loc6_ = _loc5_[2];
      var _loc7_ = _loc5_[1];
      var _loc8_ = _loc5_[0];
      var _loc9_ = _loc5_[3];
      if(this.api.kernel.ChatManager["\x18\f\x16"](_loc7_))
      {
         return undefined;
      }
      var _loc10_ = _loc6_;
      if(_loc4_ != "e")
      {
         if(_loc9_.length > 0)
         {
            var _loc11_ = _loc9_.split("!");
            _loc6_ = this.api.kernel.ChatManager["\x1a\x03\x19"](_loc6_,_loc11_,true);
            _loc10_ = this.api.kernel.ChatManager["\x1a\x03\x19"](_loc10_,_loc11_,false);
         }
         _loc6_ = this.api.kernel.ChatManager["\x1a\x03\x1a"](_loc6_);
      }
      switch(_loc4_)
      {
         case "F":
            var _loc12_ = "WHISP_CHAT";
            _loc6_ = this.api.kernel.ChatManager["\x1a\x03\x1d"](_loc6_);
            if(!_loc6_.length)
            {
               return undefined;
            }
            var _loc13_ = this.api.lang.getText("FROM") + " " + _loc7_ + " : ";
            this.api.electron.makeNotification(_loc13_ + this.api.kernel.ChatManager["\x16\x04\r"](_loc6_));
            _loc6_ = this.api.lang.getText("FROM") + " <i>" + this["\x17\x1a\x1d"](_loc8_,_loc7_) + "</i> : " + this["\x17\x1a\x1c"](_loc8_,_loc7_,_loc13_,_loc10_,_loc6_);
            this.api.kernel.Console.pushWhisper("/w " + _loc7_ + " ");
            break;
         case "T":
            _loc12_ = "WHISP_CHAT";
            var _loc14_ = this.api.lang.getText("TO_DESTINATION") + " " + _loc7_ + " : ";
            _loc6_ = this.api.lang.getText("TO_DESTINATION") + " " + this["\x17\x1a\x1d"](_loc8_,_loc7_) + " : " + this["\x17\x1a\x1c"](_loc8_,_loc7_,_loc14_,_loc10_,_loc6_);
            break;
         case "#":
            if(this.api.datacenter.Game["\x18\r\x15"])
            {
               _loc12_ = "WHISP_CHAT";
               var _loc15_ = this.isLivingItemMessage(_loc6_);
               if(!_loc15_)
               {
                  if(this.api.datacenter.Game["\x18\x0f\x1b"])
                  {
                     var _loc16_ = "(" + this.api.lang.getText("SPECTATOR") + ")";
                  }
                  else
                  {
                     _loc16_ = "(" + this.api.lang.getText("TEAM") + ")";
                  }
                  var _loc17_ = _loc16_ + " " + _loc7_ + " : ";
                  _loc6_ = _loc16_ + " " + this["\x17\x1a\x1d"](_loc8_,_loc7_) + " : " + this["\x17\x1a\x1c"](_loc8_,_loc7_,_loc17_,_loc10_,_loc6_);
               }
               else if(_loc15_ && !_global.isNaN(_loc6_.substr(2,_loc6_.length - 4)))
               {
                  _loc6_ = this.parseLivingItemMessage(_loc6_,_loc8_,_loc7_,_loc10_);
                  if(_loc6_ == undefined)
                  {
                     return undefined;
                  }
               }
            }
            break;
         case "%":
            _loc12_ = "GUILD_CHAT_SOUND";
            var _loc18_ = "(" + this.api.lang.getText("GUILD") + ") " + _loc7_ + " : ";
            _loc6_ = "(" + this.api.lang.getText("GUILD") + ") " + this["\x17\x1a\x1d"](_loc8_,_loc7_) + " : " + this["\x17\x1a\x1c"](_loc8_,_loc7_,_loc18_,_loc10_,_loc6_);
            break;
         case "$":
            _loc12_ = "PARTY_CHAT";
            var _loc19_ = "(" + this.api.lang.getText("PARTY") + ") " + _loc7_ + " : ";
            _loc6_ = "(" + this.api.lang.getText("PARTY") + ") " + this["\x17\x1a\x1d"](_loc8_,_loc7_) + " : " + this["\x17\x1a\x1c"](_loc8_,_loc7_,_loc19_,_loc10_,_loc6_);
            break;
         case "!":
            _loc12_ = "PVP_CHAT";
            var _loc20_ = "(" + this.api.lang.getText("ALIGNMENT") + ") " + _loc7_ + " : ";
            _loc6_ = "(" + this.api.lang.getText("ALIGNMENT") + ") " + this["\x17\x1a\x1d"](_loc8_,_loc7_) + " : " + this["\x17\x1a\x1c"](_loc8_,_loc7_,_loc20_,_loc10_,_loc6_);
            break;
         case "?":
            _loc12_ = "RECRUITMENT_CHAT";
            var _loc21_ = "(" + this.api.lang.getText("RECRUITMENT") + ") " + _loc7_ + " : ";
            _loc6_ = "(" + this.api.lang.getText("RECRUITMENT") + ") " + this["\x17\x1a\x1d"](_loc8_,_loc7_) + " : " + this["\x17\x1a\x1c"](_loc8_,_loc7_,_loc21_,_loc10_,_loc6_);
            break;
         case ":":
            _loc12_ = "TRADE_CHAT";
            var _loc22_ = "(" + this.api.lang.getText("TRADE") + ") " + _loc7_ + " : ";
            _loc6_ = "(" + this.api.lang.getText("TRADE") + ") " + this["\x17\x1a\x1d"](_loc8_,_loc7_) + " : " + this["\x17\x1a\x1c"](_loc8_,_loc7_,_loc22_,_loc10_,_loc6_);
            break;
         case "^":
            _loc12_ = "MEETIC_CHAT";
            var _loc23_ = "(" + this.api.lang.getText("MEETIC") + ") " + _loc7_ + " : ";
            _loc6_ = "(" + this.api.lang.getText("MEETIC") + ") " + this["\x17\x1a\x1d"](_loc8_,_loc7_) + " : " + this["\x17\x1a\x1c"](_loc8_,_loc7_,_loc23_,_loc10_,_loc6_);
            break;
         case "e":
            _loc12_ = "GAME_EVENTS_CHAT";
            _loc6_ = _loc10_;
            break;
         case "@":
            _loc12_ = "ADMIN_CHAT";
            var _loc24_ = "(" + this.api.lang.getText("PRIVATE_CHANNEL") + ") " + _loc7_ + " : ";
            _loc6_ = "(" + this.api.lang.getText("PRIVATE_CHANNEL") + ") " + this["\x17\x1a\x1d"](_loc8_,_loc7_) + " : " + this["\x17\x1a\x1c"](_loc8_,_loc7_,_loc24_,_loc10_,_loc6_);
            break;
         default:
            var _loc25_ = this.isLivingItemMessage(_loc6_);
            if(this.api.lang.getConfigText("EMOTES_ENABLED") && (!_loc25_ && (_loc6_.charAt(0) == dofus.Constants["\x17\f\x1b"] && _loc6_.charAt(_loc6_.length - 1) == dofus.Constants["\x17\f\x1b"])))
            {
               if(!this.api.datacenter.Game["\x18\x0f\x12"] && this.api.kernel.ChatManager["\x18\x10\b"](2))
               {
                  var _loc26_ = !(_loc6_.charAt(_loc6_.length - 2) == "." && _loc6_.charAt(_loc6_.length - 3) != ".") ? _loc6_ : _loc6_.substr(0,_loc6_.length - 2) + dofus.Constants["\x17\f\x1b"];
                  _loc26_ = dofus.Constants["\x17\f\x1b"] + _loc26_.charAt(1).toUpperCase() + _loc26_.substr(2);
                  this.api.gfx["\x15\x1e\x10"](_loc8_,this.api.kernel.ChatManager["\x16\x04\r"](_loc26_));
               }
               _loc12_ = "EMOTE_CHAT";
               _loc6_ = _loc6_.substr(1,_loc6_.length - 2);
               if(!dofus.managers.ChatManager["\x18\x0f\r"](_loc6_.charAt(_loc6_.length - 1)))
               {
                  _loc6_ += ".";
               }
               _loc6_ = "<i>" + this["\x17\x1a\x1d"](_loc8_,_loc7_) + " " + _loc6_.charAt(0).toLowerCase() + _loc6_.substr(1) + "</i>";
               break;
            }
            if(_loc6_.substr(0,7) == "!THINK!")
            {
               _loc6_ = _loc6_.substr(7);
               if(!this.api.datacenter.Game["\x18\x0f\x12"] && this.api.kernel.ChatManager["\x18\x10\b"](2))
               {
                  this.api.gfx["\x15\x1e\x10"](_loc8_,this.api.kernel.ChatManager["\x16\x04\r"](_loc6_),ank.battlefield["\x1b\x0f\x13"]["\x16\x13\x1c"]);
               }
               _loc12_ = "THINK_CHAT";
               var _loc27_ = _loc7_ + " " + this.api.lang.getText("THINKS_WORD") + " : ";
               _loc6_ = "<i>" + this["\x17\x1a\x1d"](_loc8_,_loc7_) + " " + this.api.lang.getText("THINKS_WORD") + " : " + this["\x17\x1a\x1c"](_loc8_,_loc7_,_loc27_,_loc10_,_loc6_) + "</i>";
               break;
            }
            if(_loc25_ && !_global.isNaN(_loc6_.substr(2,_loc6_.length - 4)))
            {
               _loc12_ = "MESSAGE_CHAT";
               _loc6_ = this.parseLivingItemMessage(_loc6_,_loc8_,_loc7_,_loc10_);
               break;
            }
            if(!this.api.datacenter.Game["\x18\x0f\x12"] && this.api.kernel.ChatManager["\x18\x10\b"](2))
            {
               this.api.gfx["\x15\x1e\x10"](_loc8_,this.api.kernel.ChatManager["\x16\x04\r"](_loc6_));
            }
            _loc12_ = "MESSAGE_CHAT";
            var _loc28_ = _loc7_ + " : ";
            _loc6_ = this["\x17\x1a\x1d"](_loc8_,_loc7_) + " : " + this["\x17\x1a\x1c"](_loc8_,_loc7_,_loc28_,_loc10_,_loc6_);
            if(this.api.datacenter.Player.isAuthorized)
            {
               var _loc29_ = this.api.kernel["\x17\x05\x16"]["\x18\x01\x17"]();
               this.api.kernel.ChatManager["\x15\x1e\n"](this.api.datacenter.["\x18\x18\x0e"].id,_loc12_,this["\x17\x1d\x1c"](_loc28_,_loc10_),_loc29_);
            }
            break;
      }
      this.api.kernel.showMessage(undefined,_loc6_,_loc12_);
   }
   function §\x17\x1d\x1c§(§\x1b\x07\x02§, §\x1b\x07\x18§)
   {
      return _loc2_ + _loc3_;
   }
   function §\x17\x1a\x1c§(sPlayerID, §\x1b\x06\x1b§, §\x1b\x07\x02§, §\x1b\x07\x18§, §\x1b\x03\x10§)
   {
      var _loc7_ = this.api.kernel["\x17\x05\x16"]["\x18\x01\x17"]() + " ";
      _loc6_ = this.api.kernel.ChatManager["\x16\x04\r"](_loc6_);
      return "<a href=\"asfunction:onHref,ShowMessagePopupMenu," + sPlayerID + "," + _loc3_ + "," + _global.escape(_loc7_ + _loc4_ + _loc5_) + "\">" + _loc6_ + "</a>";
   }
   static function getLinkHighlightSprite(sPlayerID, §\x1b\x03\x05§)
   {
      return "<a href=\"asfunction:onHref,highlightSprite," + sPlayerID + "\">" + _loc3_ + "</a>";
   }
   static function getLinkHighlightSprites(aSpritesIDs, §\x1b\x03\x05§)
   {
      return dofus.aks.Chat.getLinkHighlightSprite(aSpritesIDs.join(","),_loc3_);
   }
   function §\x17\x1a\x1d§(sPlayerID, §\x1b\x06\x1b§, §\x16\x0f\b§)
   {
      if(sPlayerID == undefined)
      {
         sPlayerID = "";
      }
      var _loc5_ = "<b>";
      var _loc6_ = "</b>";
      if(_loc4_)
      {
         _loc5_ = "";
         _loc6_ = "";
      }
      return _loc5_ + "<a href=\"asfunction:onHref,ShowPlayerPopupMenu," + sPlayerID + "," + _loc3_ + "\">" + _loc3_ + "</a>" + _loc6_;
   }
   function §\x19\x1c\x11§(§\x1a\x1b\r§)
   {
      if(_loc2_ != undefined)
      {
         this.api.kernel.showMessage(undefined,_loc2_,"INFO_CHAT");
      }
   }
   function §\x19\x1c\x1b§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = _loc3_[0];
      var _loc5_ = Number(_loc3_[1]);
      if(!this.api.datacenter.Game["\x18\r\x15"] && !this.api.datacenter.Game["\x18\x0f\x12"])
      {
         if(_loc4_ != this.api.datacenter.Player.ID && this.api.gfx.spriteHandler["\x18\x0f\f"] || this.api.kernel.ChatManager["\x18\f\x16"](this.api.datacenter.["\x1b\x07\x0e"].getItemAt(_loc4_).name))
         {
            return undefined;
         }
      }
      this.api.gfx["\x15\x1e\x15"](_loc4_,"smiley",dofus.graphics.battlefield["\x1b\x03\x15"],[_loc5_],dofus.Constants["\x1b\x03\x17"]);
   }
   function isLivingItemMessage(§\x1b\x03\x10§)
   {
      return _loc2_.charAt(0) == dofus.Constants["\x17\f\x1b"] && (_loc2_.charAt(1) == dofus.Constants["\x17\f\x1b"] && (_loc2_.charAt(_loc2_.length - 1) == dofus.Constants["\x17\f\x1b"] && _loc2_.charAt(_loc2_.length - 2) == dofus.Constants["\x17\f\x1b"]));
   }
   function parseLivingItemMessage(§\x1b\x03\x10§, sFromID, sFromName, §\x1b\x07\x18§)
   {
      if(this.api.kernel.OptionsManager.getOption("UseSpeakingItems"))
      {
      }
      var _loc6_ = _global.parseInt(_loc2_.substr(2,_loc2_.length - 4));
      var _loc7_ = this.api.lang["\x17\x1e\x1a"](_loc6_ - Number(sFromID));
      if(_loc7_.m)
      {
         _loc2_ = _loc7_.m;
         if(!this.api.datacenter.Game["\x18\x0f\x12"] && this.api.kernel.ChatManager["\x18\x10\b"](2))
         {
            this.api.gfx["\x15\x1e\x10"](sFromID,this.api.kernel.ChatManager["\x16\x04\r"](_loc2_));
         }
         var _loc8_ = sFromName + " : ";
         return this["\x17\x1a\x1d"](sFromID,sFromName,true) + " : " + this["\x17\x1a\x1c"](sFromID,sFromName,_loc8_,_loc5_,_loc2_);
      }
      return undefined;
   }
}
