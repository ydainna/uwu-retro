class dofus.§\x18\x11\x1a§ extends dofus.utils.ApiElement
{
   var §\x1b\x1a\x11§ = false;
   static var §\x17\x0f\b§ = undefined;
   function §\x18\x11\x1a§(oAPI)
   {
      super();
      new org.flashdevelop.utils.FlashConnect.trace("Kernel constructor " + oAPI,"dofus.Kernel::Kernel","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/Kernel.as",56);
      this.initialize(oAPI);
      if(this.AudioManager == null)
      {
         dofus.sounds.AudioManager.initialize(_root.createEmptyMovieClip("\x1b\x04\x16",99999),oAPI);
         this.AudioManager = dofus.sounds.AudioManager.getInstance();
      }
      if((this.CharactersManager = dofus.managers.CharactersManager.getInstance()) == null)
      {
         this.CharactersManager = new dofus.managers.CharactersManager(oAPI);
      }
      if((this.ChatManager = dofus.managers.ChatManager.getInstance()) == null)
      {
         this.ChatManager = new dofus.managers.ChatManager(oAPI);
      }
      if((this["\x18\x18\x18"] = dofus.managers["\x18\x18\x18"].getInstance()) == null)
      {
         this["\x18\x18\x18"] = new dofus.managers["\x18\x18\x18"]();
      }
      if((this["\x17\t\x05"] = dofus.managers["\x17\t\x05"].getInstance()) == null)
      {
         this["\x17\t\x05"] = new dofus.managers["\x17\t\x05"]();
      }
      if((this["\x1b\x12\x02"] = dofus.managers["\x1b\x12\x02"].getInstance()) == null)
      {
         this["\x1b\x12\x02"] = new dofus.managers["\x1b\x12\x02"]();
      }
      if((this.GameManager = dofus.managers.GameManager.getInstance()) == null)
      {
         this.GameManager = new dofus.managers.GameManager(oAPI);
      }
      else
      {
         this.GameManager.initialize(oAPI);
      }
      if((this.KeyManager = dofus.managers.KeyManager.getInstance()) == null)
      {
         this.KeyManager = new dofus.managers.KeyManager(oAPI);
      }
      if((this["\x19\b\x11"] = dofus.managers["\x19\b\x11"].getInstance()) == null)
      {
         this["\x19\b\x11"] = new dofus.managers["\x19\b\x11"](oAPI);
      }
      if((this["\x16\x05\x01"] = dofus.managers["\x16\x05\x01"].getInstance()) == null)
      {
         this["\x16\x05\x01"] = new dofus.managers["\x16\x05\x01"]();
      }
      if((this.TutorialManager = dofus.managers.TutorialManager.getInstance()) == null)
      {
         this.TutorialManager = new dofus.managers.TutorialManager(oAPI);
      }
      this.Console = new dofus.utils.["\x16\x1e\x18"]["\x16\x19\r"](oAPI);
      this.DebugConsole = new dofus.utils.["\x16\x1e\x18"]["\x17\x05\x14"](oAPI);
      if((this.OptionsManager = dofus.managers.OptionsManager.getInstance()) == null)
      {
         this.OptionsManager = new dofus.managers.OptionsManager(oAPI);
      }
      if((this.AdminManager = dofus.managers.AdminManager.getInstance()) == null)
      {
         this.AdminManager = new dofus.managers.AdminManager(oAPI);
      }
      if((this["\x17\x05\x16"] = dofus.managers["\x17\x05\x16"].getInstance()) == null)
      {
         this["\x17\x05\x16"] = new dofus.managers["\x17\x05\x16"](oAPI);
      }
      if((this.TipsManager = dofus.managers.TipsManager.getInstance()) == null)
      {
         this.TipsManager = new dofus.managers.TipsManager(oAPI);
      }
      if((this["\x1b\x06\x10"] = dofus.managers["\x1b\x06\x10"].getInstance()) == null)
      {
         this["\x1b\x06\x10"] = new dofus.managers["\x1b\x06\x10"](oAPI);
      }
      if((this.SpeakingItemsManager = dofus.managers.SpeakingItemsManager.getInstance()) == null)
      {
         this.SpeakingItemsManager = new dofus.managers.SpeakingItemsManager(oAPI);
      }
      if((this["\x1b\x0b\f"] = dofus.managers["\x1b\x0b\f"].getInstance()) == null)
      {
         this["\x1b\x0b\f"] = new dofus.managers["\x1b\x0b\f"](oAPI);
      }
      if(this.TemporisConfigManager == undefined)
      {
         this.TemporisConfigManager = new dofus.managers.TemporisConfigManager(oAPI);
      }
      if((this.HouseManager = dofus.managers.HousesManager.getInstance()) == null)
      {
         this.HouseManager = new dofus.managers.HousesManager(oAPI);
      }
      if((this.MountParkManager = dofus.managers.MountParksManager.getInstance()) == null)
      {
         this.MountParkManager = new dofus.managers.MountParksManager(oAPI);
      }
      dofus.managers.UIdManager.getInstance().update();
      this["\x1e\t\f"] = _global.setInterval(this,"sendScreenInfo",1000);
   }
   function sendScreenInfo()
   {
      if(!this.api.datacenter.Basics.inGame || (this.api.datacenter.Game.isFight || this.api.datacenter.Game.isRunning))
      {
         return undefined;
      }
      _global.clearInterval(this["\x1e\t\f"]);
      this.OptionsManager.setOption("sendResolution",true);
      this.api.network.Infos.sendScreenInfo();
   }
   function initialize(oAPI)
   {
      super.initialize(oAPI);
   }
   function start()
   {
      this.api.ui.setScreenSize(742,556);
      if(this["\x17\x17\x1b"]() > 8 && !this.api.electron.enabled)
      {
         Stage.showMenu = false;
      }
      if(!this.api.electron.enabled && (this.OptionsManager.getOption("DisplayStyle") == "medium" && (System.capabilities.screenResolutionY < 950 && System.capabilities.playerType != "StandAlone")))
      {
         this.OptionsManager.setOption("DisplayStyle","normal");
      }
      else if(this.OptionsManager.getOption("EnableWidescreenPanels") && this.api.electron.enabled)
      {
         this.OptionsManager.setOption("DisplayStyle",dofus.managers.OptionsManager.DISPLAY_STYLE_WIDESCREEN_PANELS);
         this["\x1a\x16\x05"](dofus.managers.OptionsManager.DISPLAY_STYLE_WIDESCREEN_PANELS,true);
      }
      else
      {
         this["\x1a\x16\x05"](this.OptionsManager.getOption("DisplayStyle"),true);
      }
      if(this.api.config.isStreaming)
      {
         new org.flashdevelop.utils.FlashConnect.trace("[?!!] Mode streaming activé (" + this.api.config["\x1b\x0b\r"] + ")!","dofus.Kernel::start","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/Kernel.as",212);
         if(this.api.config["\x1b\x0b\r"] == "explod")
         {
            this.api.gfx["\x1a\x1a\r"](true,dofus.Constants["\x18\x02\x18"],dofus.Constants["\x18\x02\x17"]);
         }
         this.api.gfx["\x1a\x1a\x0e"](this.api.config["\x1b\x0b\r"]);
      }
      this.setQuality(this.OptionsManager.getOption("DefaultQuality"));
      this.manualLogon();
   }
   function quit(§\x16\t\b§)
   {
      if(_loc2_ == undefined)
      {
         _loc2_ = true;
      }
      if(!_loc2_)
      {
         if(System.capabilities.playerType == "StandAlone")
         {
            getURL("FSCommand:" add "quit","");
         }
         else
         {
            _root._loader["\x16\x1c\x1c"]();
         }
      }
      else
      {
         this.showMessage(undefined,this.api.lang.getText("DO_U_QUIT"),"CAUTION_YESNO",{name:"Quit"});
      }
   }
   function disconnect()
   {
      this.showMessage(undefined,this.api.lang.getText("DO_U_DISCONNECT"),"CAUTION_YESNO",{name:"Disconnect"});
   }
   function §\x1a\n\t§()
   {
      this.api.network.disconnect(false,false);
      this.addToQueue({object:_root._loader,method:_root._loader.reboot});
   }
   function §\x17\x17\x1b§()
   {
      return Number(getVersion().split(" ")[1].split(",")[0]);
   }
   function setQuality(§\x1a\b\x17§)
   {
      _root._quality = _loc2_;
   }
   function §\x1a\x16\x05§(§\x1b\b\x16§, §\x16\n\x1d§)
   {
      if(this.api.electron.enabled)
      {
         var _loc4_ = _loc2_ == dofus.managers.OptionsManager.DISPLAY_STYLE_WIDESCREEN_PANELS;
         this.OptionsManager.setOption("EnableWidescreenPanels",_loc4_);
         return undefined;
      }
      if(System.capabilities.playerType == "StandAlone" && System.capabilities.os.indexOf("Windows") != -1)
      {
         var _loc5_ = new ank..external.display["\x1a\x11\b"]();
         switch(_loc2_)
         {
            case "normal":
               _loc5_.disable();
               break;
            case "medium":
               _loc5_.addEventListener("onScreenResolutionError",this);
               _loc5_.addEventListener("onScreenResolutionSuccess",this);
               if(_loc3_ != true)
               {
                  _loc5_.addEventListener("onExternalError",this);
               }
               _loc5_.enable(800,600,32);
               break;
            case "maximized":
               _loc5_.addEventListener("onScreenResolutionError",this);
               _loc5_.addEventListener("onScreenResolutionSuccess",this);
               if(_loc3_ != true)
               {
                  _loc5_.addEventListener("onExternalError",this);
               }
               _loc5_.enable(1024,768,32);
         }
      }
      else
      {
         _root._loader["\x1a\x16\x05"](_loc2_);
      }
   }
   function onFastServerSwitchSuccess(§\x1b\x03\x10§)
   {
      dofus.kernel.FAST_SWITCHING_SERVER_REQUEST = undefined;
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      this.api.kernel.showMessage(undefined,"Fast server switching failed : " + _loc2_,"ERROR_BOX");
   }
   function §\x19\x17\n§(§\x1b\x03\x10§)
   {
      dofus.kernel.FAST_SWITCHING_SERVER_REQUEST = undefined;
      this.api.kernel.showMessage(undefined,"<b>(Fast server switch)</b> : Welcome on <b>" + this.api.datacenter.Basics.aks_current_server.label + "</b>","COMMANDS_CHAT");
   }
   function changeServer(§\x16\x0f\x13§)
   {
      if(_loc2_ == true)
      {
         var _loc3_ = false;
         if(this.api.network.isConnected)
         {
            var _loc4_ = this.api.datacenter.Basics.aks_current_server;
            if(_loc4_ != undefined)
            {
               _loc3_ = true;
               this.api.network.askCharacterSwitchTicket();
            }
         }
         if(!_loc3_)
         {
            this.api.network.disconnect(true,false,true);
         }
      }
      else
      {
         this.showMessage(undefined,this.api.lang.getText("DO_U_SWITCH_CHARACTER"),"CAUTION_YESNO",{name:"ChangeCharacter"});
      }
   }
   function §\x1a\x1e\x0b§(§\x1b\n\x18§, §\x1b\x03\x1c§, sType, §\x19\x1e\x1d§, §\x1b\f\x0e§)
   {
      switch(_loc4_)
      {
         case "CAUTION_YESNO":
            if(_loc2_ == undefined)
            {
               _loc2_ = this.api.lang.getText("CAUTION");
            }
            var _loc7_ = this.api.ui.loadUIComponent("AskYesNo","AskYesNo" + (_loc5_.name == undefined ? "" : _loc5_.name),{title:_loc2_,text:_loc3_,params:_loc5_.params},{bForceLoad:true});
            _loc7_.addEventListener("yes",_loc5_.listener != undefined ? _loc5_.listener : this);
            _loc7_.addEventListener("no",_loc5_.listener != undefined ? _loc5_.listener : this);
            break;
         case "CAUTION_YESNOIGNORE":
            if(_loc2_ == undefined)
            {
               _loc2_ = this.api.lang.getText("CAUTION");
            }
            var _loc8_ = this.api.ui.loadUIComponent("AskYesNoIgnore","AskYesNoIgnore" + (_loc5_.name == undefined ? "" : _loc5_.name),{title:_loc2_,text:_loc3_,player:_loc5_.player,params:_loc5_.params},{bForceLoad:true});
            _loc8_.addEventListener("yes",_loc5_.listener != undefined ? _loc5_.listener : this);
            _loc8_.addEventListener("no",_loc5_.listener != undefined ? _loc5_.listener : this);
            _loc8_.addEventListener("ignore",_loc5_.listener != undefined ? _loc5_.listener : this);
            break;
         case "ERROR_BOX":
            if(_loc2_ == undefined)
            {
               _loc2_ = this.api.lang.getText("ERROR_WORD");
            }
            this.api.ui.loadUIComponent("AskOK","AskOK" + (_loc5_.name == undefined ? "" : _loc5_.name),{title:_loc2_,text:_loc3_,params:_loc5_.params},{bForceLoad:true});
            break;
         case "WAIT_BOX":
            if(_loc2_ == undefined)
            {
               _loc2_ = this.api.lang.getText("CHAT_LINK_WARNING");
            }
            this.api.ui.loadUIComponent("AskOKWait","AskOKWait",{title:_loc2_,text:_loc3_,params:_loc5_.params},{bForceLoad:true});
            break;
         case "INFO_CANCEL":
            if(_loc2_ == undefined)
            {
               _loc2_ = this.api.lang.getText("INFORMATION");
            }
            var _loc9_ = this.api.ui.loadUIComponent("AskCancel","AskCancel" + (_loc5_.name == undefined ? "" : _loc5_.name),{title:_loc2_,text:_loc3_,params:_loc5_.params},{bForceLoad:true});
            _loc9_.addEventListener("cancel",_loc5_.listener != undefined ? _loc5_.listener : this);
            break;
         case "ERROR_CHAT":
            this.ChatManager["\x16\x01\x01"](_loc2_ != undefined ? "<b>" + _loc2_ + "</b> : " + _loc3_ : _loc3_,dofus.Constants["\x17\r\x1d"],true,_loc6_);
            break;
         case "MESSAGE_CHAT":
            this.ChatManager["\x16\x01\x01"](_loc3_,dofus.Constants["\x19\x02\x03"],true,_loc6_);
            break;
         case "EMOTE_CHAT":
            this.ChatManager["\x16\x01\x01"](_loc3_,dofus.Constants["\x17\f\x1c"],true,_loc6_);
            break;
         case "THINK_CHAT":
            this.ChatManager["\x16\x01\x01"](_loc3_,dofus.Constants["\x1b\x0f\x1c"],true,_loc6_);
            break;
         case "INFO_FIGHT_CHAT":
            this.ChatManager.feMessagesBuffer.printAll();
            if(!this.api.kernel.OptionsManager.getOption("ChatEffects"))
            {
               return undefined;
            }
         case "INFO_CHAT":
            this.ChatManager["\x16\x01\x01"](_loc3_,dofus.Constants["\x18\t\x01"],true,_loc6_);
            break;
         case "PVP_CHAT":
            _loc3_ = this.api.kernel.ChatManager["\x1a\x03\x1a"](_loc3_);
            this.ChatManager["\x16\x01\x01"](_loc3_,dofus.Constants["\x1a\b\x10"],true,_loc6_);
            break;
         case "WHISP_CHAT":
            this.ChatManager["\x16\x01\x01"](_loc3_,dofus.Constants["\x19\x02\x02"],true,_loc6_);
            break;
         case "PARTY_CHAT":
            this.ChatManager["\x16\x01\x01"](_loc3_,dofus.Constants["\x18\x03\x1c"],true,_loc6_);
            break;
         case "GUILD_CHAT":
            this.ChatManager["\x16\x01\x01"](_loc3_,dofus.Constants["\x18\x04\x18"],false,_loc6_);
            break;
         case "GUILD_CHAT_SOUND":
            this.ChatManager["\x16\x01\x01"](_loc3_,dofus.Constants["\x18\x04\x18"],true,_loc6_);
            break;
         case "RECRUITMENT_CHAT":
            this.ChatManager["\x16\x01\x01"](_loc3_,dofus.Constants["\x1a\n\x0f"],false,_loc6_);
            break;
         case "TRADE_CHAT":
            this.ChatManager["\x16\x01\x01"](_loc3_,dofus.Constants["\x1b\x11\b"],false,_loc6_);
            break;
         case "MEETIC_CHAT":
            this.ChatManager["\x16\x01\x01"](_loc3_,dofus.Constants["\x18\x1c\x11"],false,_loc6_);
            break;
         case "GAME_EVENTS_CHAT":
            this.ChatManager["\x16\x01\x01"](_loc3_,dofus.Constants.GAME_EVENTS_CHAT,false,_loc6_);
            break;
         case "HUNT_CHAT":
            this.ChatManager["\x16\x01\x01"](_loc3_,dofus.Constants.GAME_HUNT_CHAT,true,_loc6_);
            break;
         case "ADMIN_CHAT":
            this.ChatManager["\x16\x01\x01"](_loc3_,dofus.Constants["\x16\x01\x10"],false,_loc6_);
            break;
         case "COMMANDS_CHAT":
            this.ChatManager["\x16\x01\x01"](_loc3_,dofus.Constants["\x16\x1d\x19"],false,_loc6_);
            break;
         case "DEBUG_LOG":
            this.api.datacenter.Basics.aks_a_logs += "\n<font color=\"#FFFFFF\">" + _loc3_ + "</font>";
            var _loc10_ = dofus.graphics.gapi.ui.Debug(this.api.ui.getUIComponent("Debug"));
            if(_loc10_ != undefined)
            {
               _loc10_["\x1a\n\x15"]();
            }
            break;
         case "DEBUG_ERROR":
            this.api.datacenter.Basics.aks_a_logs += "\n<font color=\"#FF0000\">" + _loc3_ + "</font>";
            var _loc11_ = dofus.graphics.gapi.ui.Debug(this.api.ui.getUIComponent("Debug"));
            if(_loc11_ != undefined)
            {
               _loc11_["\x1a\n\x15"]();
            }
            break;
         case "DEBUG_INFO":
            this.api.datacenter.Basics.aks_a_logs += "\n<font color=\"#00FF00\">" + _loc3_ + "</font>";
            var _loc12_ = dofus.graphics.gapi.ui.Debug(this.api.ui.getUIComponent("Debug"));
            if(_loc12_ != undefined)
            {
               _loc12_["\x1a\n\x15"]();
               break;
            }
      }
   }
   function §\x18\x18\f§()
   {
      this["\x18\n\b"]();
      this.addToQueue({object:this.api.ui,method:this.api.ui.loadUIComponent,params:["Login","Login",{language:this.api.config.language,canAutoLogOn:false},{bStayIfPresent:true}]});
      this.addToQueue({object:_root._loader,method:_root._loader["\x19\x16\x01"]});
   }
   function §\x16\x07\x18§()
   {
      this["\x18\n\b"]();
      this.addToQueue({object:this.api.ui,method:this.api.ui.loadUIComponent,params:["Login","Login",{language:this.api.config.language,canAutoLogOn:true},{bStayIfPresent:true}]});
      this.addToQueue({object:_root._loader,method:_root._loader["\x19\x16\x01"]});
   }
   function §\x18\n\b§()
   {
      this.api.electron.setInitialized();
      this.api.electron.updateWindowTitle();
      this.api.electron.setLoginDiscordActivity();
      this.api.ui.loadUIComponent("MainMenu","MainMenu",{quitMode:(!(System.capabilities.playerType == "PlugIn" && !this.api.electron.enabled) ? "quit" : "no")},{bStayIfPresent:true,bAlwaysOnTop:true});
   }
   function §\x16\x05\x19§()
   {
      this.showMessage(undefined,this.api.lang.getText("DO_U_CLEAR_CACHE"),"CAUTION_YESNO",{name:"ClearCache"});
   }
   function clearCache()
   {
      _root._loader.clearCache();
      this.reboot();
   }
   function §\x17\x11\x0b§()
   {
      if(this.api.ui.getUIComponent("Dragger") != undefined)
      {
         this.api.ui.unloadUIComponent("Dragger");
      }
      else
      {
         var _loc2_ = this.api.ui.loadUIComponent("Dragger","Dragger",undefined,{bForceLoad:true,bAlwaysOnTop:true});
         _loc2_.api = this.api;
         _loc2_.onRelease = function()
         {
            this.stopDrag();
            this.api.network.Basics.onAuthorizedCommand(true,"2|0|" + new ank.utils.ExtendedString(this._dropTarget).replace("/","."));
            this.startDrag(true);
         };
         _loc2_.startDrag(true);
      }
   }
   function yes(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "AskYesNoQuit":
            this.quit(false);
            break;
         case "AskYesNoDisconnect":
            this.api.electron.retroChatClear();
            this.api.network.disconnect(false,false);
            break;
         case "AskYesNoChangeCharacter":
            this.changeServer(true);
            break;
         case "AskYesNoClearCache":
            this.clearCache();
      }
   }
   function §\x19\x19\x01§()
   {
      this["\x18\x18\x18"].initialize(this.api);
      this["\x17\t\x05"].initialize(this.api);
      this["\x1b\x12\x02"].initialize(this.api);
      this["\x16\x05\x01"].initialize(this.api);
      this.AdminManager.initialize(this.api);
      var _loc2_ = this.api.lang["\x18\x01\x18"]();
      this["\x19\b\x11"].initialize(_loc2_.tz.slice(),_loc2_.m.slice(),_loc2_.z,this.api.gfx);
      this.api.kernel.KeyManager["\x19\x1c\x18"](this.api.kernel.OptionsManager.getOption("ShortcutSet"));
      this["\x1b\x1a\x11"] = true;
      this.api.network.Account.sendConfiguredPort();
      this.api.network.Account.sendIdentity();
      this.api.network.Account.getServersList();
   }
   function onScreenResolutionError(oEvent)
   {
      var _loc3_ = ank..external.display["\x1a\x11\b"](_loc2_.target);
      _loc3_["\x1a\f\x0f"]();
   }
   function onScreenResolutionSuccess(oEvent)
   {
      var _loc3_ = ank..external.display["\x1a\x11\b"](_loc2_.target);
      _loc3_["\x1a\f\x0f"]();
   }
   function onExternalError(oEvent)
   {
   }
}
