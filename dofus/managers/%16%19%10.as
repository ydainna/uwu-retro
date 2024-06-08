class dofus.§\x18\x18\x0b§.§\x16\x19\x10§ extends dofus.utils.ApiElement
{
   static var §\x1e\f\x10§ = null;
   static var §\x1b\x12\x16§ = 0;
   static var §\x1b\x12\x12§ = 1;
   static var §\x1b\x12\x18§ = 2;
   static var §\x1b\x13\x01§ = 3;
   static var §\x1b\x12\x14§ = 4;
   static var §\x1b\x12\x19§ = 5;
   static var §\x1b\x12\x1a§ = 6;
   static var §\x1b\x12\x1c§ = 7;
   static var §\x1b\x12\x17§ = 8;
   static var §\x1b\x12\x0f§ = 9;
   static var TYPE_GAME_EVENTS = 10;
   static var §\x18\x1a\x06§ = 150;
   static var §\x18\x1b\x02§ = 1000;
   static var §\x18\x1a\x10§ = 50;
   static var §\x18\x1b\t§ = 30;
   static var §\x17\f\x1d§ = 31;
   static var §\x1b\x0b\x05§ = 6;
   static var §\x18\x1a\x11§ = 75;
   static var §\x18\x1b\x01§ = 6;
   static var §\x16\x01\x0f§ = 5;
   static var §\x18\x07\x15§ = 300;
   var §\x1c\x01\x13§ = [true,true,true,true,true,true,true,true,true,true,true];
   var §\x1d\x17\f§ = 0;
   var §\x1c\x04\x05§ = false;
   var §\x1c\x0b\x1d§ = false;
   static var §\x16\x18\n§ = ["%","&","§","#","+","?"];
   static var §\x1a\x06\x0e§ = [".","!","?","~"];
   static var §\x18\x15\x0e§ = ["WWW","HTTP","@",".COM",".FR",".INFO","HOTMAIL","MSN","GMAIL","FTP"];
   static var §\x1b\x19\x07§ = [".DOFUS.COM",".ANKAMA-GAMES.COM",".GOOGLE.COM",".DOFUS.FR",".DOFUS.DE",".DOFUS.ES",".DOFUS.CO.UK",".WAKFU.COM",".ANKAMA-SHOP.COM",".ANKAMA.COM",".ANKAMA-EDITIONS.COM",".ANKAMA-WEB.COM",".ANKAMA-EVENTS.COM",".DOFUS-ARENA.COM",".MUTAFUKAZ.COM",".MANGA-DOFUS.COM",".LABANDEPASSANTE.FR","@_@",".ANKAMA-PLAY.COM"];
   var §\x1d\x16\b§ = 0;
   function §\x16\x19\x10§(oAPI)
   {
      super();
      dofus.managers.ChatManager["\x1e\f\x10"] = this;
      this.initialize(oAPI);
   }
   function get feMessagesBuffer()
   {
      return this._feMessagesBuffer;
   }
   function get visibleTypes()
   {
      return this["\x1c\x01\x13"];
   }
   function §\x1e\x1a\r§()
   {
      return this["\x1d\x16\b"];
   }
   function §\x13\x0f§(§\x19\x07\x14§)
   {
      this["\x1d\x16\b"] = _loc2_;
      return this["\x1e\x1a\r"]();
   }
   static function §\x17\x19\t§()
   {
      return dofus.managers.ChatManager["\x1e\f\x10"];
   }
   function initialize(oAPI)
   {
      super.initialize(oAPI);
      this["\x1b\x1d\x0b"] = new Array();
      this["\x1b\x1e\x11"] = new Array();
      this._feMessagesBuffer = new dofus.managers["\x16\x19\x0b"].FightEventsMessagesBuffer(oAPI);
      this["\x1d\x17\f"] = 0;
      this["\x1b\x1b\x17"] = new Array();
      this["\x1b\x15\x1a"]();
      this.clear();
      this.api.electron.retroChatRefresh(this["\x1c\x01\x13"],this.api.kernel.OptionsManager.getOption("TimestampInChat"));
   }
   function §\x15\x1e\n§(§\x19\t\x15§, §\x1b\x03\x11§, §\x1b\x07\x17§, §\x1b\n\x17§)
   {
      var _loc6_ = new Object();
      _loc6_["\x18\x18\x17"] = _loc2_;
      _loc6_.messageType = _loc3_;
      _loc6_.timestamp = _loc5_;
      _loc6_.rawFullMessage = _loc4_;
      if(this["\x1b\x1e\x11"].length > dofus.managers.ChatManager["\x18\x1b\x02"])
      {
         this["\x1b\x1e\x11"].shift();
      }
      this["\x1b\x1e\x11"].push(_loc6_);
   }
   function §\x17\x1a\x01§()
   {
      var _loc2_ = "";
      var _loc3_ = 0;
      while(_loc3_ < this["\x1b\x1e\x11"].length)
      {
         var _loc4_ = this["\x1b\x1e\x11"][_loc3_];
         if(_loc4_.messageType == "MESSAGE_CHAT")
         {
            if(dofus.datacenter.["\x17\t\x0f"]["\x18\x0e\x0e"](_loc4_["\x18\x18\x17"]))
            {
               _loc2_ += "\n" + _loc4_.timestamp + " " + _loc4_.rawFullMessage;
            }
         }
         _loc3_ = _loc3_ + 1;
      }
      return _loc2_.length <= 0 ? _loc2_ : _loc2_.substring(1);
   }
   function §\x1b\x15\x1a§()
   {
      if(this.api.datacenter.Player.isAuthorized)
      {
         dofus.managers.ChatManager["\x18\x1a\x06"] *= dofus.managers.ChatManager["\x16\x01\x0f"];
         dofus.managers.ChatManager["\x18\x1a\x11"] *= dofus.managers.ChatManager["\x16\x01\x0f"];
      }
   }
   function clear()
   {
      this["\x1b\x1d\x1c"] = new Array();
      this["\x1b\x1e\x11"] = new Array();
      this["\x1d\x19\x1c"] = 0;
   }
   function §\x1a\x1a\x1b§(§\x16\x07\x04§)
   {
      this["\x1c\x01\x13"] = _loc2_;
      this["\x1a\n\x15"](true);
   }
   function §\x18\x10\b§(§\x19\x10\x06§)
   {
      return this["\x1c\x01\x13"][_loc2_];
   }
   function §\x1a\x1a\x1c§(§\x19\x10\x06§, §\x16\x14\x17§)
   {
      this["\x1c\x01\x13"][_loc2_] = _loc3_;
      this.api.electron.retroChatRefresh(this["\x1c\x01\x13"]);
      this["\x1a\n\x15"](true);
   }
   function §\x18\t\f§()
   {
      if(this["\x1e\x02\x13"] == undefined)
      {
         this["\x1e\x02\x13"] = new Object();
         var _loc2_ = this.api.lang["\x17\x15\x04"]();
         for(var j in _loc2_)
         {
            this["\x1e\x02\x13"][String(_loc2_[j].c).toUpperCase()] = {weight:Number(_loc2_[j].l),id:Number(j),parseWord:_loc2_[j].d};
            if(_loc2_[j].d)
            {
               this["\x1c\x0b\x1d"] = true;
            }
         }
      }
   }
   function §\x16\x04\x11§(sText)
   {
      if(this.api.datacenter.Player.isAuthorized)
      {
         return true;
      }
      if(!this.api.lang.getConfigText("CENSORSHIP_ENABLE_OUTPUT"))
      {
         return true;
      }
      this["\x18\t\f"]();
      var _loc3_ = -1;
      var _loc4_ = 0;
      var _loc5_ = -1;
      var _loc6_ = this["\x16\b\x05"](_loc2_.toUpperCase()).split(" ");
      for(var i in _loc6_)
      {
         if(this["\x1e\x02\x13"][_loc6_[i]] != undefined)
         {
            if(Number(this["\x1e\x02\x13"][_loc6_[i]].weight) > _loc3_)
            {
               _loc3_ = Number(this["\x1e\x02\x13"][_loc6_[i]].weight);
               _loc4_ = Number(this["\x1e\x02\x13"][_loc6_[i]].id);
            }
         }
         else if(this["\x1c\x0b\x1d"])
         {
            for(var j in this["\x1e\x02\x13"])
            {
               _loc5_ = _loc6_[i].indexOf(j);
               if(_loc5_ != -1 && this["\x1e\x02\x13"][j].parseWord)
               {
                  if(Number(this["\x1e\x02\x13"][j].weight) > _loc3_)
                  {
                     _loc3_ = Number(this["\x1e\x02\x13"][j].weight);
                     _loc4_ = Number(this["\x1e\x02\x13"][j].id);
                  }
               }
            }
         }
      }
      if(_loc3_ >= this.api.lang.getConfigText("SEND_CENSORSHIP_SINCE"))
      {
         this.api.network.Basics["\x1a\x0f\x0e"](_loc3_,_loc4_);
      }
      if(_loc3_ > 0)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("PLEASE_RESTRAIN_TO_A_POLITE_VOCABULARY"),"ERROR_CHAT");
         return false;
      }
      return true;
   }
   function §\x16\x04\r§(sText)
   {
      if(!this.api.kernel.OptionsManager.getOption("CensorshipFilter") || !this.api.lang.getConfigText("CENSORSHIP_ENABLE_INPUT"))
      {
         return _loc2_;
      }
      this["\x18\t\f"]();
      var _loc3_ = new Array();
      var _loc4_ = _loc2_.split(" ");
      var _loc5_ = this["\x16\b\x05"](_loc2_.toUpperCase()).split(" ");
      var _loc6_ = -1;
      for(var i in _loc5_)
      {
         _loc6_ = -1;
         if(this["\x1e\x02\x13"][_loc5_[i]] != undefined)
         {
            _loc3_.push(this["\x17\x15\x03"](_loc5_[i]));
            _loc6_ = 0;
         }
         else if(this["\x1c\x0b\x1d"])
         {
            §§enumerate(this["\x1e\x02\x13"]);
            var _loc0_ = null;
            loop1:
            for(; (_loc0_ = §§enumeration()) != null; _loc6_ = -1)
            {
               var j = _loc0_;
               _loc6_ = _loc5_[i].indexOf(j);
               if(!(_loc6_ != -1 && this["\x1e\x02\x13"][j].parseWord))
               {
                  continue;
               }
               _loc3_.push(this["\x17\x15\x03"](_loc5_[i]));
               while(true)
               {
                  if(§§pop() == null)
                  {
                     break loop1;
                  }
               }
            }
         }
         if(_loc6_ == -1)
         {
            _loc3_.push(_loc4_[i]);
         }
      }
      _loc3_.reverse();
      return _loc3_.join(" ");
   }
   function §\x16\b\x05§(§\x1b\r\x0e§)
   {
      var _loc3_ = new String();
      var _loc4_ = 0;
      while(_loc4_ < _loc2_.length)
      {
         var _loc5_ = _loc2_.charCodeAt(_loc4_);
         if(_loc5_ > 47 && _loc5_ < 58 || (_loc5_ > 64 && _loc5_ < 91 || _loc5_ == 32))
         {
            _loc3_ += _loc2_.charAt(_loc4_);
         }
         _loc4_ = _loc4_ + 1;
      }
      return _loc3_;
   }
   function §\x17\x15\x03§(§\x1b\r\x0e§)
   {
      var _loc3_ = new String();
      var _loc4_ = new String();
      var _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         var _loc6_ = _loc2_.charCodeAt(_loc5_);
         if(_loc6_ > 47 && _loc6_ < 58 || (_loc6_ > 64 && _loc6_ < 91 || _loc6_ > 96 && _loc6_ < 123))
         {
            var _loc7_ = new String();
            do
            {
               _loc7_ = dofus.managers.ChatManager["\x16\x18\n"][Math.floor(Math.random() * dofus.managers.ChatManager["\x16\x18\n"].length)];
            }
            while(_loc7_ == _loc4_);
            
            _loc3_ += _loc4_ = _loc7_;
         }
         else
         {
            _loc3_ += _loc4_ = _loc2_.charAt(_loc5_);
         }
         _loc5_ = _loc5_ + 1;
      }
      return _loc3_;
   }
   function §\x15\x1d\x1a§(sText)
   {
      var _loc3_ = _loc2_.toUpperCase();
      if(_loc3_.indexOf("</A>") > -1)
      {
         _loc3_ = _loc3_.substr(_loc3_.indexOf("</A>"));
      }
      var _loc4_ = _loc3_.split(" ");
      var _loc5_ = false;
      var _loc6_ = 0;
      while(_loc6_ < _loc4_.length)
      {
         var _loc7_ = false;
         var _loc8_ = 0;
         while(_loc8_ < dofus.managers.ChatManager["\x18\x15\x0e"].length)
         {
            if(_loc4_[_loc6_].indexOf(dofus.managers.ChatManager["\x18\x15\x0e"][_loc8_]) > -1)
            {
               _loc7_ = true;
               break;
            }
            _loc8_ = _loc8_ + 1;
         }
         if(_loc7_)
         {
            var _loc9_ = 0;
            while(_loc9_ < dofus.managers.ChatManager["\x1b\x19\x07"].length)
            {
               if(_loc4_[_loc6_].indexOf(dofus.managers.ChatManager["\x1b\x19\x07"][_loc9_]) > -1)
               {
                  _loc7_ = false;
                  break;
               }
               _loc9_ = _loc9_ + 1;
            }
         }
         if(_loc7_)
         {
            _loc5_ = true;
            break;
         }
         _loc6_ = _loc6_ + 1;
      }
      if(_loc5_)
      {
         _loc2_ += " [<font color=\"#006699\"><u><b><a href=\"asfunction:onHref,ShowLinkWarning,CHAT_LINK_WARNING_TEXT\">" + this.api.lang.getText("CHAT_LINK_WARNING") + "</a></b></u></font>]";
      }
      return _loc2_;
   }
   function §\x16\x01\x01§(sText, §\x1a\x10\x1a§, §\x16\x12\x17§, §\x1b\f\x0e§)
   {
      if(_loc4_ == undefined)
      {
         _loc4_ = true;
      }
      var _loc6_ = "";
      var _loc9_ = false;
      switch(_loc3_)
      {
         case dofus.Constants["\x19\x02\x03"]:
            var _loc7_ = dofus.managers.ChatManager["\x1b\x12\x18"];
            _loc9_ = true;
            var _loc8_ = true;
            break;
         case dofus.Constants["\x17\f\x1c"]:
            _loc7_ = dofus.managers.ChatManager["\x1b\x12\x18"];
            _loc9_ = true;
            _loc8_ = true;
            break;
         case dofus.Constants["\x1b\x0f\x1c"]:
            _loc7_ = dofus.managers.ChatManager["\x1b\x12\x18"];
            _loc9_ = true;
            _loc8_ = true;
            break;
         case dofus.Constants["\x18\x03\x1c"]:
         case dofus.Constants["\x19\x02\x02"]:
            _loc7_ = dofus.managers.ChatManager["\x1b\x13\x01"];
            _loc9_ = true;
            _loc8_ = true;
            if(_loc4_)
            {
               this.api.sounds["\x17\x0e\x06"]["\x19\x15\x12"]();
            }
            break;
         case dofus.Constants["\x18\t\x01"]:
            _loc7_ = dofus.managers.ChatManager["\x1b\x12\x16"];
            this["\x1d\x19\x1c"]++;
            _loc8_ = false;
            break;
         case dofus.Constants["\x17\r\x1d"]:
            _loc7_ = dofus.managers.ChatManager["\x1b\x12\x12"];
            _loc8_ = true;
            if(_loc4_)
            {
               if(this["\x1c\x04\x05"])
               {
                  this.api.sounds["\x17\x0e\x06"]["\x19\x16\x1d"]();
               }
               else
               {
                  this["\x1c\x04\x05"] = true;
               }
            }
            break;
         case dofus.Constants["\x18\x04\x18"]:
            _loc7_ = dofus.managers.ChatManager["\x1b\x12\x14"];
            _loc9_ = true;
            _loc8_ = true;
            if(_loc4_ && this.api.kernel.OptionsManager.getOption("GuildMessageSound"))
            {
               this.api.sounds["\x17\x0e\x06"]["\x19\x15\x12"]();
            }
            break;
         case dofus.Constants["\x1a\b\x10"]:
            _loc7_ = dofus.managers.ChatManager["\x1b\x12\x19"];
            _loc9_ = true;
            _loc8_ = true;
            break;
         case dofus.Constants["\x1b\x11\b"]:
            _loc7_ = dofus.managers.ChatManager["\x1b\x12\x1c"];
            _loc9_ = true;
            _loc8_ = true;
            break;
         case dofus.Constants["\x1a\n\x0f"]:
            _loc7_ = dofus.managers.ChatManager["\x1b\x12\x1a"];
            _loc9_ = true;
            _loc8_ = true;
            break;
         case dofus.Constants["\x18\x1c\x11"]:
            _loc7_ = dofus.managers.ChatManager["\x1b\x12\x17"];
            _loc9_ = true;
            _loc8_ = true;
            break;
         case dofus.Constants.GAME_EVENTS_CHAT:
            var _loc10_ = _loc2_.split(",");
            var _loc11_ = _loc10_[0];
            _loc10_.shift();
            _loc2_ = "(" + this.api.lang.getText("GAME_EVENTS_CHANNEL") + ") : " + this.api.lang.getText(_loc11_,_loc10_);
            _loc7_ = dofus.managers.ChatManager.TYPE_GAME_EVENTS;
            _loc9_ = false;
            _loc8_ = true;
            _loc2_ = this.api.kernel["\x17\x05\x16"]["\x17\x17\x1c"](_loc2_,";");
            if(this["\x1c\x01\x13"][_loc7_] == true)
            {
               this.api.sounds["\x17\x0e\x06"].onChatGameEvent();
               this.api.electron.makeNotification(_loc2_);
            }
            break;
         case dofus.Constants.GAME_HUNT_CHAT:
            _loc7_ = dofus.managers.ChatManager["\x1b\x12\x12"];
            this.api.electron.makeNotification(_loc2_);
            if(_loc5_ == "START_CONFIRMATION" && _loc4_)
            {
               this.api.sounds["\x17\x0e\x06"].onStartHunt();
            }
            break;
         case dofus.Constants["\x16\x01\x10"]:
         case dofus.Constants["\x16\x1d\x19"]:
            _loc7_ = dofus.managers.ChatManager["\x1b\x12\x0f"];
            _loc8_ = true;
            break;
         default:
            ank.utils.Logger.err("[Chat] Erreur : mauvaise couleur " + _loc2_);
            return undefined;
      }
      var _loc12_ = _loc2_;
      if(_loc9_)
      {
         _loc2_ = this["\x15\x1d\x1a"](_loc2_);
         _loc2_ = this["\x16\x04\r"](_loc2_.substring(0,_loc2_.length - 4)) + _loc2_.substring(_loc2_.length - 4);
      }
      if(_loc8_ && this.api.kernel["\x19\b\x11"].time.length)
      {
         _loc6_ = "[" + this.api.kernel["\x19\b\x11"].time + "] ";
      }
      this.api.electron.chatPrint(_loc2_,_loc3_,_loc5_,_loc7_,_loc6_);
      if(this["\x1d\x16\b"] > 0)
      {
         this.api.electron.chatLog(_loc12_);
         if(this["\x1d\x16\b"] == 2)
         {
            return undefined;
         }
      }
      if(this.api.electron.isShowingWidescreenPanel && this.api.electron.getWidescreenPanelId() == dofus.Eelectron.WIDESCREEN_PANEL_CHAT)
      {
         return undefined;
      }
      var _loc13_ = "\n<font color=\"#" + _loc3_ + "\">";
      var _loc14_ = "</font>";
      this["\x1b\x1d\x1c"].push({textStyleLeft:_loc13_,text:_loc2_,textStyleRight:_loc14_,type:_loc7_,uniqId:_loc5_,timestamp:_loc6_,lf:false});
      if(this["\x1b\x1d\x1c"].length > dofus.managers.ChatManager["\x18\x1a\x06"])
      {
         this["\x1b\x1d\x1c"].shift();
      }
      this["\x1a\n\x15"]();
   }
   function §\x1a\n\x15§(§\x16\f\x05§)
   {
      if(this["\x1d\x1b\x19"] != undefined)
      {
         _global.clearTimeout(this["\x1d\x1b\x19"]);
      }
      var _loc3_ = _global.setTimeout(this,"realRefresh",dofus.Constants["\x17\x06\x14"],_loc2_);
      this["\x1d\x1b\x19"] = _loc3_;
   }
   function realRefresh(§\x16\f\x05§)
   {
      var _loc3_ = this["\x1b\x1d\x1c"].length;
      var _loc4_ = new String();
      var _loc5_ = 0;
      if(_loc3_ == 0 && !_loc2_)
      {
         return undefined;
      }
      var _loc6_ = _loc3_ - 1;
      while(_loc5_ < dofus.managers.ChatManager["\x18\x1b\t"] && _loc6_ >= 0)
      {
         var _loc7_ = this["\x1b\x1d\x1c"][_loc6_];
         if(this["\x1c\x01\x13"][_loc7_.type] == true)
         {
            _loc5_ = _loc5_ + 1;
            if(!_loc7_.htmlSyntaxChecked)
            {
               var _loc8_ = dofus.managers.ChatManager["\x1a\x0f\n"](_loc7_.text);
               _loc7_.lf = _loc7_.lf;
               _loc7_.text = _loc8_.t;
               _loc7_.htmlSyntaxChecked = true;
            }
            if(this.api.kernel.OptionsManager.getOption("TimestampInChat"))
            {
               _loc4_ = (!_loc7_.lf ? "" : "\n") + _loc7_.textStyleLeft + _loc7_.timestamp + _loc7_.text + _loc7_.textStyleRight + _loc4_;
            }
            else
            {
               _loc4_ = (!_loc7_.lf ? "" : "\n") + _loc7_.textStyleLeft + _loc7_.text + _loc7_.textStyleRight + _loc4_;
            }
         }
         _loc6_ = _loc6_ - 1;
      }
      this.api.ui.getUIComponent("Banner")["\x1a\x15\x0e"](_loc4_);
   }
   static function §\x1a\x0f\n§(§\x1a\x0f\x06§)
   {
      var _loc3_ = true;
      var _loc4_ = new Array();
      var _loc5_ = new Array();
      var _loc6_ = _loc2_;
      var _loc7_ = 0;
      var _loc9_ = 0;
      var _loc8_ = null;
      while((_loc8_ = _loc6_.indexOf("<")) > -1 && _loc7_++ < dofus.managers.ChatManager["\x18\x07\x15"])
      {
         var _loc10_ = _loc6_.indexOf(">",_loc8_) + 1;
         var _loc11_ = _loc6_.substring(_loc8_,_loc10_);
         var _loc12_ = _loc11_.indexOf("/");
         var _loc13_ = _loc12_ == 1;
         var _loc14_ = _loc12_ == _loc11_.length - 2;
         var _loc15_ = !_loc13_ ? _loc11_.substring(1,_loc11_.length - 1) : _loc11_.substring(2,_loc11_.length - 1);
         var _loc16_ = _loc15_.indexOf(" ");
         _loc15_ = _loc15_.substring(0,_loc16_ <= -1 ? _loc15_.length : _loc16_);
         _loc5_[_loc9_] = {c:_loc13_,b:_loc15_};
         if(_loc14_)
         {
            _loc5_[_loc9_ = _loc9_ + 1] = {c:!_loc13_,b:_loc15_};
         }
         _loc6_ = _loc6_.substring(_loc10_);
         _loc9_ = _loc9_ + 1;
      }
      if(_loc7_ >= dofus.managers.ChatManager["\x18\x07\x15"])
      {
         _loc3_ = false;
      }
      if(_loc3_)
      {
         var _loc17_ = 0;
         while(_loc17_ < _loc5_.length)
         {
            var _loc18_ = _loc5_[_loc17_];
            if(_loc18_.c)
            {
               if(_loc4_[_loc18_.b] == undefined || _loc4_[_loc18_.b] == 0)
               {
                  _loc3_ = false;
                  break;
               }
               _loc4_[_loc18_.b] -= 1;
            }
            else
            {
               if(_loc4_[_loc18_.b] == undefined)
               {
                  _loc4_[_loc18_.b] = 0;
               }
               _loc4_[_loc18_.b] += 1;
            }
            _loc17_ = _loc17_ + 1;
         }
         for(var i in _loc4_)
         {
            if(_loc4_[i] > 0)
            {
               _loc3_ = false;
               break;
            }
         }
      }
      if(_loc3_)
      {
         return {v:_loc3_,t:_loc2_};
      }
      return {v:_loc3_,t:_loc2_.split("<").join("&lt;").split(">").join("&gt;")};
   }
   function §\x1a\x03\x19§(§\x1b\x03\x10§, §\x16\x02\x06§, bHtml)
   {
      if(bHtml == undefined)
      {
         bHtml = true;
      }
      var _loc5_ = 0;
      while(_loc5_ < _loc3_.length)
      {
         var _loc6_ = Number(_loc3_[_loc5_]);
         var _loc7_ = _loc3_[_loc5_ + 1];
         var _loc8_ = new dofus.datacenter.["\x18\x10\x15"](0,_loc6_,1,1,_loc7_,1);
         var _loc9_ = "°" + _loc5_ / 2;
         var _loc10_ = this["\x17\x1a\x1b"](_loc8_,bHtml);
         var _loc11_ = _loc2_.indexOf(_loc9_);
         if(_loc11_ != -1)
         {
            var _loc12_ = _loc2_.split("");
            _loc12_.splice(_loc11_,_loc9_.length,_loc10_);
            _loc2_ = _loc12_.join("");
         }
         _loc5_ += 2;
      }
      return _loc2_;
   }
   function §\x1a\x03\x1a§(§\x1b\x03\x10§)
   {
      var _loc3_ = _loc2_;
      var _loc4_ = 0;
      var _loc6_ = 0;
      var _loc7_ = 0;
      while(_loc3_.indexOf("[") > -1 && (_loc4_++ < dofus.managers.ChatManager["\x18\x07\x15"] && _loc6_ < dofus.managers.ChatManager["\x18\x1b\x01"]))
      {
         var _loc8_ = _loc3_.indexOf("[");
         var _loc9_ = _loc3_.indexOf("]",_loc8_) + 1;
         if(_loc9_ <= 0)
         {
            break;
         }
         var _loc10_ = _loc3_.substring(_loc8_ + 1,_loc9_ - 1).indexOf(", ") != -1 ? ", " : ",";
         var _loc11_ = _loc3_.substring(_loc8_ + 1,_loc9_ - 1).split(_loc10_);
         if(_loc11_.length == 2)
         {
            if(!_global.isNaN(_loc11_[0]) && !_global.isNaN(new ank.utils.ExtendedString(_loc11_[0])["\x1b\x11\x13"]().toString()))
            {
               var _loc12_ = _global.parseInt(_loc11_[0]);
               var _loc13_ = _global.parseInt(_loc11_[1]);
               if(Math.abs(_loc12_) < 150 && Math.abs(_loc13_) < 150)
               {
                  var _loc5_ = _loc2_.split(_loc3_.substring(_loc8_,_loc9_));
                  _loc6_ += _loc5_.length;
                  if(_loc6_ > dofus.managers.ChatManager["\x18\x1b\x01"])
                  {
                     break;
                  }
                  _loc2_ = _loc5_.join(this["\x17\x1a\x1a"](_loc12_,_loc13_));
               }
            }
         }
         _loc3_ = _loc3_.substring(_loc9_);
         _loc7_ = _loc7_ + 1;
      }
      return _loc2_;
   }
   function §\x1a\x03\x1d§(§\x1b\x03\x10§)
   {
      if(!this.api.lang.getConfigText("CHAT_USE_SECRETS_EMOTES"))
      {
         return _loc2_;
      }
      if(_loc2_.indexOf("[love]") != -1)
      {
         _loc2_ = _loc2_.split("[love]").join("");
         if(!this.api.datacenter.Game.isFight)
         {
            this.api.network.GameActions["\x19\x13\x17"](";208;" + this.api.datacenter.Player.ID + ";" + this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Player.ID).cellNum + ",2914,11,8,1");
         }
      }
      if(_loc2_.indexOf("[rock]") != -1)
      {
         _loc2_ = _loc2_.split("[rock]").join("");
         if(!this.api.datacenter.Game.isFight)
         {
            this.api.network.GameActions["\x19\x13\x17"](";208;" + this.api.datacenter.Player.ID + ";" + this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Player.ID).cellNum + ",2069,10,1,1");
            this.api.network.GameActions["\x19\x13\x17"](";208;" + this.api.datacenter.Player.ID + ";" + (this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Player.ID).cellNum + 1) + ",2904,11,8,3");
            this.api.network.GameActions["\x19\x13\x17"](";208;" + this.api.datacenter.Player.ID + ";" + (this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Player.ID).cellNum - 1) + ",2904,11,8,3");
            this.api.network.Chat["\x19\x1c\x1b"](this.api.datacenter.Player.ID + "|1");
            this.api.kernel.AudioManager.playSound("SPEAK_TRIGGER_LEVEL_UP");
            this.api.network.Chat["\x19\x1a\b"](true,this.api.datacenter.Player.ID + "|" + this.api.datacenter.Player.Name + "|" + _loc2_);
         }
         _loc2_ = "";
      }
      return _loc2_;
   }
   function §\x17\x1a\x1d§(sPlayerID, §\x1b\x06\x1b§)
   {
      if(sPlayerID == undefined)
      {
         sPlayerID = "";
      }
      return "<b><a href=\"asfunction:onHref,ShowPlayerPopupMenu," + sPlayerID + "," + _loc3_ + "\">" + _loc3_ + "</a></b>";
   }
   function §\x17\x1a\x1a§(§\x19\x10\x1a§, §\x19\x11\x05§)
   {
      return "<b><a href=\"asfunction:onHref,updateCompass," + _loc2_ + "," + _loc3_ + "\">[" + _loc2_ + "," + _loc3_ + "]</a></b>";
   }
   function §\x17\x1a\x1b§(§\x19\x13\x07§, bHtml)
   {
      if(bHtml == undefined)
      {
         bHtml = true;
      }
      var _loc4_ = this["\x15\x1d\x14"](_loc2_);
      return !!bHtml ? "<b>[<a href=\"asfunction:onHref,ShowItemViewer," + String(_loc4_) + "\">" + _loc2_.name + "</a>]</b>" : "[" + _loc2_.name + "]";
   }
   function §\x15\x1d\x14§(§\x19\x13\x07§)
   {
      if(this["\x1d\x17\f"] == undefined || _global.isNaN(this["\x1d\x17\f"]))
      {
         this["\x1d\x17\f"] = 0;
      }
      this["\x1d\x17\f"]++;
      if(this["\x1b\x1d\x0b"] == undefined)
      {
         this["\x1b\x1d\x0b"] = new Array();
      }
      if(this["\x1b\x1d\x0b"].length > dofus.managers.ChatManager["\x18\x1a\x11"])
      {
         this["\x1b\x1d\x0b"].shift();
      }
      this["\x1b\x1d\x0b"].push({id:this["\x1d\x17\f"],data:_loc2_});
      return this["\x1d\x17\f"];
   }
   function §\x17\x19\x13§(§\x19\b\x18§)
   {
      var _loc3_ = this["\x1b\x1d\x0b"].length;
      while(_loc3_ >= 0)
      {
         if(this["\x1b\x1d\x0b"][_loc3_].id == _loc2_)
         {
            return this["\x1b\x1d\x0b"][_loc3_].data;
         }
         _loc3_ = _loc3_ - 1;
      }
      return undefined;
   }
   static function §\x18\x0f\r§(§\x1a\x10\x0f§)
   {
      var _loc3_ = 0;
      while(_loc3_ < dofus.managers.ChatManager["\x1a\x06\x0e"].length)
      {
         if(dofus.managers.ChatManager["\x1a\x06\x0e"][_loc3_] == _loc2_)
         {
            return true;
         }
         _loc3_ = _loc3_ + 1;
      }
      return false;
   }
   function §\x16\x01\x03§(sName, nClass)
   {
      if(_loc2_ != this.api.datacenter.Player.Name && !this["\x18\f\x16"](_loc2_))
      {
         this["\x1b\x1b\x17"].push({sName:_loc2_,nClass:_loc3_});
      }
   }
   function §\x1a\r\x04§(sName)
   {
      for(var i in this["\x1b\x1b\x17"])
      {
         if(_loc2_ == this["\x1b\x1b\x17"][i].sName || _loc2_ == "*" + this["\x1b\x1b\x17"][i].sName)
         {
            this["\x1b\x1b\x17"][i] = undefined;
            this.api.ui.getUIComponent("Friends")["\x1b\x15\x03"]();
            this.api.kernel.showMessage(undefined,this.api.lang.getText("TEMPORARY_NOMORE_BLACKLISTED",[_loc2_]),"INFO_CHAT");
            return undefined;
         }
      }
   }
   function §\x17\x14\x14§()
   {
      return this["\x1b\x1b\x17"];
   }
   function §\x18\f\x16§(sName)
   {
      for(var i in this["\x1b\x1b\x17"])
      {
         if(_loc2_.toLowerCase() == this["\x1b\x1b\x17"][i].sName.toLowerCase())
         {
            return true;
         }
      }
      return false;
   }
   function §\x17\x1b\x1b§(§\x1b\f\x0e§)
   {
      for(var i in this["\x1b\x1d\x1c"])
      {
         if(this["\x1b\x1d\x1c"][i].uniqId == _loc2_)
         {
            return this["\x1b\x1d\x1c"][i].text;
         }
      }
      return undefined;
   }
}
