class dofus.aks.Account extends dofus.aks.Handler
{
   static var ACTION_LOGIN_WITH_ZAAP_TOKEN = "#Z";
   static var ACTION_LOGIN_WITH_CHARACTER_SWITCH_TICKET = "#S";

   function Account(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
      this.WaitQueueTimer = new Object();
   }

   //TODO : check 3nd parameter name (_loc4_)(boolean type ?)
   function logon(sLogin, sPassword, §\x16\x15\x04§, bCharacterSwitch)
   {
      if(this.api.datacenter.Basics.connexionKey == undefined)
      {
         this.onLogin(false, "n");
         return undefined;
      }
      if(sLogin == undefined)
      {
         sLogin = this.api.datacenter.Basics.login;
      }
      else
      {
         this.api.datacenter.Basics.login = sLogin;
      }
      if(sPassword == undefined)
      {
         sPassword = this.api.datacenter.Basics.password;
      }
      else
      {
         this.api.datacenter.Basics.password = sPassword;
      }
      var _loc6_ = dofus.Constants.VERSION + "." + dofus.Constants.SUBVERSION + "." + dofus.Constants.SUBSUBVERSION + (dofus.Constants.BETAVERSION <= 0 ? "" : "." + dofus.Constants.BETAVERSION) + (!this.api.electron.enabled ? "" : "e") + (!this.api.config.isStreaming ? "" : "s");
      var _loc7_ = _loc6_;
      _loc7_ += "|" + this.api.config.language;
      this.aks.send(_loc7_,true, this.api.lang.getText("CONNECTING"));
      if(bCharacterSwitch)
      {
         this.aks.send(sLogin + "\n" + sPassword);
      }
      else if(_loc4_)
      {
         this.aks.send(sLogin + "\n" + sPassword);
      }
      else if(this.api.lang.getConfigText("CRYPTO_METHOD") == 2)
      {
         var _loc8_ = new ank.utils.Md5();
         var _loc9_ = "#2" + _loc8_.hex_md5(_loc8_.hex_md5(sPassword) + this.api.datacenter.Basics.connexionKey);
         this.aks.send(sLogin + "\n" + _loc9_);
      }
      else
      {
         this.aks.send(sLogin + "\n" + ank.utils.Crypt.cryptPassword(sPassword, this.api.datacenter.Basics.connexionKey));
      }
   }

   function logOnWithCharacterSwitchTicket(sCharacterSwitchTicket)
   {
      var _loc3_ = dofus.aks.Account.ACTION_LOGIN_WITH_CHARACTER_SWITCH_TICKET;
      this.api.datacenter.Basics.login = _loc3_;
      var _loc4_ = dofus.Constants.VERSION + "." + dofus.Constants.SUBVERSION + "." + dofus.Constants.SUBSUBVERSION + (dofus.Constants.BETAVERSION <= 0 ? "" : "." + dofus.Constants.BETAVERSION) + (!this.api.electron.enabled ? "" : "e") + (!this.api.config.isStreaming ? "" : "s");
      var _loc5_ = _loc4_;
      _loc5_ += "|" + this.api.config.language;
      this.aks.send(_loc5_, true, this.api.lang.getText("CONNECTING"));
      this.aks.send(_loc3_ + "\n" + sCharacterSwitchTicket);
   }

   function setNickName(sNickName)
   {
      this.aks.send(sNickName, true, this.api.lang.getText("WAITING_MSG_LOADING"));
   }

   function getCharacters()
   {
      this.aks.send("AL", true, this.api.lang.getText("CONNECTING"));
   }

   function getCharactersForced()
   {
      this.aks.send("ALf", true, this.api.lang.getText("CONNECTING"));
   }

   function getServersList()
   {
      this.aks.send("Ax", true, this.api.lang.getText("WAITING_MSG_LOADING"));
   }

   function setServer(nServerID)
   {
      if(nServerID == undefined)
      {
         return undefined;
      }
      this.api.datacenter.Basics.aks_incoming_server_id = nServerID;
      this.aks.send("AX" + nServerID, true, this.api.lang.getText("WAITING_MSG_LOADING"));
   }

   function searchForFriend(sNick)
   {
      this.aks.send("AF" + sNick);
   }

   function setCharacter(sCharacID)
   {
      this.aks.send("AS" + sCharacID, true, this.api.lang.getText("WAITING_MSG_LOADING"));
      this.api.ui.unloadUIComponent("ChooseCharacter");
      this.getQueuePosition();
   }

   function editCharacterName(sName)
   {
      this.aks.send("AEn" + sName, true);
   }

   function editCharacterColors(nColor1, nColor2, nColor3)
   {
      this.aks.send("AEc" + nColor1 + "|" + nColor2 + "|" + nColor3, true);
   }

   function addCharacter(sName, nClass, nColor1, nColor2, nColor3, nSex)
   {
      this.aks.send("AA" + sName + "|" + nClass + "|" + nSex + "|" + nColor1 + "|" + nColor2 + "|" + nColor3, true, this.api.lang.getText("WAITING_MSG_RECORDING"));
   }

   function deleteCharacter(nCharacID, sSecretAnswer)
   {
      if(nCharacID == undefined)
      {
         return undefined;
      }
      if(sSecretAnswer == undefined)
      {
         sSecretAnswer = "";
      }
      var _loc4_ = new ank.utils.ExtendedString(_global.escape(sSecretAnswer));
      this.aks.send("AD" + nCharacID + "|" + _loc4_.replace(["|", "\r", "\n", String.fromCharCode(0)], ["", "", "", ""]), true, this.api.lang.getText("WAITING_MSG_DELETING"));
   }

   function resetCharacter(nCharacID)
   {
      this.aks.send("AR" + nCharacID);
   }

   function boost(nBonusID, nQuantity)
   {
      this.aks.send("AB" + nBonusID + "|" + nQuantity);
   }

   function sendTicket(sTicket)
   {
      this.aks.send("AT" + sTicket);
   }

   function rescue(sTicket)
   {
      var _loc3_ = "";
      if(this.api.datacenter.Game.isFight)
      {
         _loc3_ = !this.api.datacenter.Game.isRunning ? "|0" : "|1";
      }
      this.aks.send("Ar" + sTicket + _loc3_);
   }

   function getGifts()
   {
      this.aks.send("Ag" + this.api.config.language);
   }

   function attributeGiftToCharacter(nGiftID, nCharacterID)
   {
      this.aks.send("AG" + nGiftID + "|" + nCharacterID);
   }

   function getQueuePosition()
   {
      this.aks.send("Af", false);
      ank.utils.Timer.setTimer(this.WaitQueueTimer, "WaitQueue", this, this.getQueuePosition, Number(this.api.lang.getConfigText("DELAY_WAIT_QUEUE_REFRESH")));
   }

   function getRandomCharacterName()
   {
      this.aks.send("AP",false);
   }

   function useKey(nKeyID)
   {
      this.aks.send("Ak" + dofus.aks.Aks.HEX_CHARS[nKeyID], false);
   }
   
   function requestRegionalVersion()
   {
      this.aks.send("AV", true, this.api.lang.getText("WAITING_MSG_LOADING"));
   }

   function sendConfiguredPort()
   {
      this.aks.send("Ap" + this.api.datacenter.Basics.aks_connection_server_port,false);
   }
   
   function sendIdentity()
   {
      if(this.api.electron.enabled)
      {
         var _loc2_ = this.api.network.getRandomNetworkKey();
      }
      else
      {
         dofus.managers.UIdManager.getInstance().update();
         var _loc3_ = SharedObject.getLocal(dofus.Constants.GLOBAL_SO_IDENTITY_NAME);
         var _loc4_ = _loc3_.data.identityVersion;
         _loc2_ = _loc3_.data.identity;
         if(!this.api.network.isValidNetworkKey(_loc2_, _loc4_))
         {
            _loc4_ = dofus.aks.Aks.CURRENT_IDENTITY_VERSION;
            _loc2_ = this.api.network.getRandomNetworkKey();
            _loc3_.data.identityVersion = _loc4_;
            _loc3_.data.identity = _loc2_;
            _loc3_.flush();
         }
         _loc3_.close();
      }
      if(this.api.datacenter.Basics.aks_identity != _loc2_)
      {
         this.api.datacenter.Basics.aks_identity = _loc2_;
      }
      this.aks.send("Ai" + this.api.datacenter.Basics.aks_identity, false, undefined, true);
   }
   
   function validCharacterMigration(nCharacterID, sName)
   {
      this.aks.send("AM" + nCharacterID + ";" + sName, false);
   }

   function deleteCharacterMigration(nCharacterID)
   {
      this.aks.send("AM-" + nCharacterID, false);
   }

   function askCharacterMigration(nCharacterID, sName)
   {
      this.aks.send("AM?" + nCharacterID + ";" + sName, false);
   }

   function onRegionalVersion(sExtraData)
   {
      var _loc3_ = this.api.lang.getConfigText("MAXIMUM_ALLOWED_VERSION");
      var _loc4_ = Number(sExtraData);
      if(_loc3_ > 0)
      {
         if((_loc4_ <= 0 || _loc4_ > _loc3_) && !this.api.datacenter.Player.isAuthorized)
         {
            var _loc5_ = {name:"SwitchToEnglish",listener:this};
            this.api.kernel.showMessage(undefined,this.api.lang.getText("SWITCH_TO_ENGLISH"),"CAUTION_YESNO",_loc5_);
            return undefined;
         }
      }
      this.api.datacenter.Basics.aks_current_regional_version = !(_loc4_ > 0 && !_global.isNaN(_loc4_)) ? Number.MAX_VALUE : _loc4_;
      this.getGifts();
      this.getCharacters();
      this.api.network.Account.getQueuePosition();
   }

   function onCharacterDelete(bSuccess, sExtraData)
   {
      if(!bSuccess)
      {
         this.api.ui.unloadUIComponent("WaitingMessage");
         this.api.kernel.showMessage(undefined, this.api.lang.getText("CHARACTER_DELETION_FAILED"),"ERROR_BOX");
      }
   }

   function onSecretQuestion(sExtraData)
   {
      this.api.datacenter.Basics.aks_secret_question = sExtraData;
   }

   function onKey(sExtraData)
   {
      var _loc3_ = _global.parseInt(sExtraData.substr(0,1),16);
      var _loc4_ = sExtraData.substr(1);
      this.aks.addKeyToCollection(_loc3_,_loc4_);
      this.useKey(_loc3_);
      this.aks.startUsingKey(_loc3_);
   }

   function onDofusPseudo(sExtraData)
   {
      this.api.datacenter.Basics.dofusPseudo = sExtraData;
   }

   function onCommunity(sExtraData)
   {
      var _loc3_ = Number(sExtraData);
      if(_loc3_ >= 0)
      {
         this.api.datacenter.Basics.communityId = _loc3_;
      }
   }

   function onLogin(bSuccess, sExtraData)
   {
      ank.utils.Timer.removeTimer(this.WaitQueueTimer,"WaitQueue");
      this.api.ui.unloadUIComponent("CenterText");
      this.api.ui.unloadUIComponent("WaitingMessage");
      this.api.ui.unloadUIComponent("WaitingQueue");
      if(bSuccess)
      {
         this.api.datacenter.Basics.isLogged = true;
         this.api.ui.unloadUIComponent("Login");
         this.api.ui.unloadUIComponent("ChooseNickName");
         var _loc4_ = sExtraData == "1";
         this.api.datacenter.Player.isAuthorized = _loc4_;
         this.api.electron.setWidescreenPanelId(!_loc4_ ? dofus.Eelectron.WIDESCREEN_PANEL_CHAT : dofus.Eelectron.WIDESCREEN_PANEL_CONSOLE);
         _root._loader.loadXtra();
      }
      else
      {
         var _loc5_ = sExtraData.charAt(0);
         var _loc6_ = this.api.lang.getText("LOGIN");
         var _loc8_ = false;
         new org.flashdevelop.utils.FlashConnect.trace(_loc5_,"dofus.aks.Account::onLogin","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/aks/Account.as",429);
         switch(_loc5_)
         {
            case "n":
               var _loc7_ = this.api.lang.getText("CONNECT_NOT_FINISHED");
               break;
            case "a":
               _loc7_ = this.api.lang.getText("ALREADY_LOGGED");
               break;
            case "c":
               _loc7_ = this.api.lang.getText("ALREADY_LOGGED_GAME_SERVER");
               break;
            case "v":
               _loc7_ = this.api.lang.getText("BAD_VERSION",[dofus.Constants.VERSION + "." + dofus.Constants.SUBVERSION + "." + dofus.Constants.SUBSUBVERSION + (dofus.Constants.BETAVERSION <= 0 ? "" : " Beta " + dofus.Constants.BETAVERSION),_loc3_.substr(1)]);
               _loc8_ = true;
               break;
            case "p":
               _loc7_ = this.api.lang.getText("NOT_PLAYER");
               break;
            case "b":
               _loc7_ = this.api.lang.getText("BANNED");
               break;
            case "d":
               _loc7_ = this.api.lang.getText("U_DISCONNECT_ACCOUNT");
               break;
            case "k":
               var _loc9_ = sExtraData.substr(1).split("|");
               var _loc10_ = _loc9_.slice(0,3);
               var _loc11_ = _loc9_.slice(3);
               var _loc12_ = 0;
               while(_loc12_ < _loc10_.length)
               {
                  if(_loc10_[_loc12_] == 0)
                  {
                     _loc10_[_loc12_] = undefined;
                  }
                  _loc12_ = _loc12_ + 1;
               }
               _loc7_ = ank.utils.PatternDecoder.getDescription(this.api.lang.getText("KICKED"),_loc10_);
               if(_loc11_ != undefined && _loc11_.length >= 2)
               {
                  var _loc13_ = _loc11_[0];
                  if(_loc13_.length > 0)
                  {
                     _loc6_ = _loc13_;
                  }
                  var _loc14_ = _loc11_[1];
                  var _loc15_ = undefined;
                  if(_loc11_.length >= 3)
                  {
                     _loc11_ = _loc11_.slice(2,_loc11_.length);
                     _loc15_ = "\n" + _loc11_.join("|");
                  }
                  _loc7_ += "\n\n" + this.api.lang.getText("SRV_MSG_18",[_loc14_,!(_loc15_ == undefined || _loc15_.length == 0) ? _loc15_ : ""]);
               }
               break;
            case "w":
               _loc7_ = this.api.lang.getText("SERVER_FULL");
               break;
            case "o":
               _loc7_ = this.api.lang.getText("OLD_ACCOUNT",[this.api.datacenter.Basics.login]);
               break;
            case "O":
               _loc7_ = this.api.lang.getText("OTP_TIME_FAILED");
               break;
            case "e":
               _loc7_ = this.api.lang.getText("OLD_ACCOUNT_USE_NEW",[this.api.datacenter.Basics.login]);
               break;
            case "m":
               _loc7_ = this.api.lang.getText("MAINTAIN_ACCOUNT");
               break;
            case "r":
               this.api.ui.loadUIComponent("ChooseNickName","ChooseNickName");
               return undefined;
            case "s":
               this.api.ui.getUIComponent("ChooseNickName").nickAlreadyUsed = true;
               return undefined;
            case "i":
               _loc7_ = this.api.lang.getText("LOGIN_ERROR_ANONYMOUS_IP");
               break;
            case "f":
               if(this.api.config.isStreaming)
               {
                  _loc7_ = this.api.lang.getText("ACCESS_DENIED_MINICLIP");
                  break;
               }
            default:
               _loc7_ = this.api.lang.getText("ACCESS_DENIED");
         }
         if(dofus.Constants.USE_JS_LOG && _global.CONFIG.isNewAccount)
         {
            getURL("JavaScript:WriteLog(\'LoginError;" + _loc7_ + "\')", "_self");
         }
         this.aks.disconnect(false, false);
         var _loc16_ = this.api.ui.loadUIComponent("AskOk", !_loc8_ ? "AskOkOnLogin" : "AskOkOnLoginCloseClient", {title: _loc6_, text: _loc7_});
         _loc16_.addEventListener("ok", this);
         this.api.kernel.manualLogon();
      }
   }

   function onServersList(bSuccess, sExtraData)
   {
      this.api.ui.unloadUIComponent("WaitingMessage");
      var _loc4_ = this.api.datacenter.Basics.aks_servers;
      var _loc5_ = 0;
      while(_loc5_ < _loc4_.length)
      {
         _loc4_[_loc5_].charactersCount = 0;
         _loc5_ = _loc5_ + 1;
      }
      this.api.ui.getUIComponent("MainMenu").quitMode = "menu";
      var _loc6_ = sExtraData.split("|");
      var _loc7_ = Number(_loc6_[0]);
      var _loc8_ = -1;
      this.api.datacenter.Player.subscriber = _loc7_ > 0;
      this.api.ui.getUIComponent("MainMenu").updateSubscribeButton();
      var _loc9_ = 0;
      var _loc10_ = 1;
      while(_loc10_ < _loc6_.length)
      {
         var _loc11_ = _loc6_[_loc10_].split(",");
         var _loc12_ = Number(_loc11_[0]);
         var _loc13_ = Number(_loc11_[1]);
         if(_loc13_ > 0)
         {
            _loc8_ = _loc12_;
         }
         _loc9_ += _loc13_;
         var _loc14_ = 0;
         while(_loc14_ < _loc4_.length)
         {
            if(_loc4_[_loc14_].id == _loc12_)
            {
               _loc4_[_loc14_].charactersCount = _loc13_;
               break;
            }
            _loc14_ = _loc14_ + 1;
         }
         _loc10_ = _loc10_ + 1;
      }
      if(_loc8_ == -1)
      {
         _loc8_ = _loc4_[Math.floor(Math.random() * (_loc4_.length - 1))].id;
         if(!_loc8_)
         {
            _loc8_ = -1;
         }
      }
      this.api.ui.unloadUIComponent("ServerList");
      this.api.ui.unloadUIComponent("ServerInformations");
      this.api.ui.unloadUIComponent("CreateCharacter");
      this.api.ui.unloadUIComponent("ChooseCharacter");
      this.api.ui.unloadUIComponent("AutomaticServer");
      this.api.ui.unloadUIComponent("ChooseServer");
      this.api.network.Basics.onAuthorizedCommandPrompt("Connection Server");
      if(dofus.kernel.FAST_SWITCHING_SERVER_REQUEST != undefined)
      {
         var _loc15_ = dofus.kernel.FAST_SWITCHING_SERVER_REQUEST;
         var _loc16_ = _loc15_.serverId;
         var _loc17_ = undefined;
         var _loc18_ = 0;
         while(_loc18_ < _loc4_.length)
         {
            var _loc19_ = _loc4_[_loc18_];
            if(_loc19_.id == _loc16_)
            {
               if(!(_loc19_.state != dofus.datacenter.Server.SERVER_ONLINE || !_loc19_.isAllowed))
               {
                  _loc17_ = _loc19_;
                  break;
               }
            }
            _loc18_ = _loc18_ + 1;
         }
         if(_loc17_ != undefined)
         {
            if(_loc17_.charactersCount != 0)
            {
               if(_loc15_.isServerSet)
               {
                  return undefined;
               }
               _loc15_.isServerSet = true;
               this.api.datacenter.Basics.aks_current_server = _loc17_;
               this.api.network.Account.setServer(_loc17_.id);
               return undefined;
            }
            this.api.kernel.onFastServerSwitchFail("You do not have any character on server " + _loc16_);
         }
         else
         {
            this.api.kernel.onFastServerSwitchFail("Server " + _loc16_ + " is not available now.");
         }
      }
      if(!this.api.datacenter.Basics.forceAutomaticServerSelection && (_loc9_ > 0 || (this.api.config.isStreaming || this.api.datacenter.Basics.forceManualServerSelection)))
      {
         if(this.api.datacenter.Basics.forceManualServerSelection)
         {
            this.api.datacenter.Basics.hasForcedManualSelection = true;
         }
         else if(_loc8_ != -1 && this.api.config.isStreaming)
         {
            var _loc20_ = new dofus.datacenter.Server(_loc8_,1,0);
            if(_loc20_.isAllowed())
            {
               this.api.datacenter.Basics.aks_current_server = _loc20_;
               this.api.network.Account.setServer(_loc8_);
               return undefined;
            }
         }
         this.api.datacenter.Basics.forceManualServerSelection = false;
         this.api.ui.loadUIComponent("ChooseServer","ChooseServer",{servers:_loc4_,remainingTime:_loc7_});
      }
      else
      {
         this.api.datacenter.Basics.forceAutomaticServerSelection = false;
         this.api.ui.loadUIComponent("ChooseServer","ChooseServer",{servers:_loc4_,remainingTime:_loc7_});
      }
   }

   function onHosts(sExtraData)
   {
      var _loc3_ = this.api.datacenter.Basics.aks_servers;
      var _loc4_ = new Array();
      var _loc5_ = sExtraData.split("|");
      var _loc6_ = 0;
      while(_loc6_ < _loc5_.length)
      {
         var _loc7_ = _loc5_[_loc6_].split(";");
         var _loc8_ = Number(_loc7_[0]);
         var _loc9_ = Number(_loc7_[1]);
         var _loc10_ = Number(_loc7_[2]);
         var _loc11_ = _loc7_[3] == "1";
         var _loc12_ = new dofus.datacenter.Server(_loc8_,_loc9_,_loc10_,_loc11_);
         if(!(_global.CONFIG.onlyHardcore && _loc12_.typeNum != dofus.datacenter.Server.SERVER_HARDCORE))
         {
            var _loc13_ = _loc3_.findFirstItem("id",_loc8_).item;
            if(_loc13_ != undefined)
            {
               _loc12_.charactersCount = _loc13_.charactersCount;
            }
            _loc4_.push(_loc12_);
         }
         _loc6_ = _loc6_ + 1;
      }
      this.api.datacenter.Basics.aks_servers.createFromArray(_loc4_);
   }

   function onCharactersList(bSuccess, sExtraData, bIsMigration)
   {
      if(this.api.datacenter.Player.isAuthorized)
      {
         this.api.electron.setWidescreenPanelId(dofus.Eelectron.WIDESCREEN_PANEL_CHAT);
      }
      this.api.ui.unloadUIComponent("WaitingMessage");
      this.api.ui.unloadUIComponent("WaitingQueue");
      var _loc5_ = new Array();
      var _loc6_ = sExtraData.split("|");
      var _loc7_ = Number(_loc6_[0]);
      this.api.datacenter.Player.subscriber = _loc7_ > 0;
      this.api.ui.getUIComponent("MainMenu").updateSubscribeButton();
      var _loc8_ = Number(_loc6_[1]);
      var _loc9_ = new Array();
      this.api.datacenter.Sprites.clear();
      var _loc10_ = 2;
      while(_loc10_ < _loc6_.length)
      {
         var _loc11_ = _loc6_[_loc10_].split(";");
         var _loc12_ = new Object();
         var _loc13_ = _loc11_[0];
         var _loc14_ = _loc11_[1];
         _loc12_.level = _loc11_[2];
         _loc12_.gfxID = _loc11_[3];
         _loc12_.color1 = _loc11_[4];
         _loc12_.color2 = _loc11_[5];
         _loc12_.color3 = _loc11_[6];
         _loc12_.accessories = _loc11_[7];
         _loc12_.merchant = _loc11_[8];
         _loc12_.serverID = _loc11_[9];
         _loc12_.isDead = _loc11_[10];
         _loc12_.deathCount = _loc11_[11];
         _loc12_.lvlMax = _loc11_[12];
         var _loc15_ = this.api.kernel.CharactersManager.createCharacter(_loc13_,_loc14_,_loc12_);
         _loc15_.sortID = Number(_loc13_);
         _loc5_.push(_loc15_);
         _loc9_.push(Number(_loc13_));
         _loc10_ = _loc10_ + 1;
      }
      this.api.ui.unloadUIComponent("ChooseCharacter");
      this.api.ui.unloadUIComponent("CreateCharacter");
      this.api.ui.unloadUIComponent("ChooseServer");
      this.api.ui.unloadUIComponent("AutomaticServer");
      ank.utils.Timer.removeTimer(this.WaitQueueTimer,"WaitQueue");
      this.api.ui.getUIComponent("MainMenu").quitMode = "menu";
      if(this.api.datacenter.Basics.hasCreatedCharacter)
      {
         this.api.datacenter.Basics.hasCreatedCharacter = false;
         if(this.api.datacenter.Basics.oldCharList == undefined && _loc9_.length == 1 || this.api.datacenter.Basics.oldCharList.length + 1 == _loc9_.length)
         {
            var _loc16_ = 0;
            while(true)
            {
               if(_loc16_ < _loc9_.length)
               {
                  var _loc17_ = false;
                  var _loc18_ = 0;
                  while(_loc18_ < this.api.datacenter.Basics.oldCharList.length)
                  {
                     if(_loc9_[_loc16_] == this.api.datacenter.Basics.oldCharList[_loc18_])
                     {
                        _loc17_ = true;
                        break;
                     }
                     _loc18_ = _loc18_ + 1;
                  }
                  if(!_loc17_)
                  {
                     break;
                  }
                  continue;
               }
            }
            this.setCharacter(_loc9_[_loc16_]);
            return undefined;
         }
      }
      if(dofus.kernel.FAST_SWITCHING_SERVER_REQUEST != undefined)
      {
         var _loc19_ = dofus.kernel.FAST_SWITCHING_SERVER_REQUEST;
         var _loc20_ = _loc19_.playerName;
         var _loc21_ = 0;
         while(_loc21_ < _loc5_.length)
         {
            var _loc22_ = _loc5_[_loc21_];
            if(_loc22_.name == _loc20_)
            {
               this.setCharacter(_loc22_.id);
               return undefined;
            }
            _loc21_ = _loc21_ + 1;
         }
         this.api.kernel.onFastServerSwitchFail("Could not find " + _loc20_ + " on this characters list !");
      }
      this.api.datacenter.Basics.oldCharList = _loc9_;
      new org.flashdevelop.utils.FlashConnect.trace("ignoreMigration 2 : " + this.api.datacenter.Basics.ignoreMigration,"dofus.aks.Account::onCharactersList","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/aks/Account.as",886);
      if((!bIsMigration || this.api.datacenter.Basics.ignoreMigration) && ((this.api.datacenter.Basics.createCharacter || !_loc8_) && !this.api.datacenter.Basics.ignoreCreateCharacter))
      {
         this.api.ui.loadUIComponent("CreateCharacter","CreateCharacter",{remainingTime:_loc7_});
      }
      else
      {
         this.api.ui.unloadUIComponent("CharactersMigration");
         if(!bIsMigration || this.api.datacenter.Basics.ignoreMigration)
         {
            this.api.datacenter.Basics.createCharacter = false;
            this.api.ui.loadUIComponent("ChooseCharacter","ChooseCharacter",{spriteList:_loc5_,remainingTime:_loc7_,characterCount:_loc8_},{bForceLoad:true});
         }
         else
         {
            this.api.datacenter.Basics.ignoreMigration = false;
            this.api.datacenter.Basics.createCharacter = false;
            this.api.ui.loadUIComponent("CharactersMigration","CharactersMigration",{spriteList:_loc5_,remainingTime:_loc7_,characterCount:_loc8_},{bForceLoad:true});
         }
      }
   }

   function onMiniClipInfo()
   {
      this.api.datacenter.Basics.first_connection_from_miniclip = true;
   }

   function onCharacterAdd(bSuccess, sExtraData)
   {
      var _loc4_ = dofus.graphics.gapi.ui.Gifts(this.api.ui.getUIComponent("Gifts"));
      if(_loc4_ == undefined || !_loc4_.isAttributingGifts)
      {
         this.api.ui.unloadUIComponent("WaitingMessage");
      }
      if(dofus.Constants.USE_JS_LOG && _global.CONFIG.isNewAccount)
      {
         getURL("JavaScript:WriteLog(\'CharacterValidation;" + bSuccess + "\')","_self");
      }
      if(!bSuccess)
      {
         switch(sExtraData)
         {
            case "s":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("SUBSCRIPTION_OUT"),"ERROR_BOX",{name:"CreateNameExists"});
               break;
            case "f":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CREATE_CHARACTER_FULL"),"ERROR_BOX",{name:"CreateNameExists"});
               break;
            case "a":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("NAME_ALEREADY_EXISTS"),"ERROR_BOX",{name:"CreateNameExists"});
               break;
            case "n":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CREATE_CHARACTER_BAD_NAME"),"ERROR_BOX",{name:"CreateNameExists"});
               break;
            default:
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CREATE_CHARACTER_ERROR"),"ERROR_BOX",{name:"CreateNameExists"});
         }
      }
      else
      {
         this.api.datacenter.Basics.createCharacter = false;
      }
   }

   
   function onSelectServerMinimal(sExtraData)
   {
      var _loc3_ = Number(sExtraData);
      var _loc4_ = new dofus.datacenter.Server(_loc3_,1,0);
      this.api.datacenter.Basics.aks_current_server = _loc4_;
      this.api.network.Basics.onAuthorizedCommandPrompt(this.api.datacenter.Basics.aks_current_server.label);
   }

   function onSelectServer(bSuccess, bUseIp, sExtraData)
   {
      this.api.ui.unloadUIComponent("WaitingMessage");
      if(bSuccess)
      {
         if(bUseIp)
         {
            var _loc8_ = sExtraData.substr(0,8);
            var _loc9_ = sExtraData.substr(8,3);
            var _loc7_ = sExtraData.substr(11);
            var _loc10_ = new Array();
            var _loc11_ = 0;
            while(_loc11_ < 8)
            {
               var _loc12_ = _loc8_.charCodeAt(_loc11_) - 48;
               var _loc13_ = _loc8_.charCodeAt(_loc11_ + 1) - 48;
               _loc10_.push((_loc12_ & 15) << 4 | _loc13_ & 15);
               _loc11_ += 2;
            }
            var _loc5_ = _loc10_.join(".");
            var _loc6_ = (ank.utils.Compressor.decode64(_loc9_.charAt(0)) & 63) << 12 | (ank.utils.Compressor.decode64(_loc9_.charAt(1)) & 63) << 6 | ank.utils.Compressor.decode64(_loc9_.charAt(2)) & 63;
         }
         else
         {
            var _loc14_ = sExtraData.split(";");
            var _loc15_ = _loc14_[0].split(":");
            _loc5_ = _loc15_[0];
            _loc6_ = _loc15_[1];
            _loc7_ = _loc14_[1];
         }
         var _loc16_ = this.api.config.getCustomIP(this.api.datacenter.Basics.aks_incoming_server_id);
         if(_loc16_ != undefined)
         {
            _loc5_ = _loc16_.ip;
            _loc6_ = _loc16_.port;
         }
         new org.flashdevelop.utils.FlashConnect.trace(_loc5_ + "/" + _loc6_ + "/" + _loc7_,"dofus.aks.Account::onSelectServer","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/aks/Account.as",1041);
         this.api.datacenter.Basics.aks_ticket = _loc7_;
         this.api.datacenter.Basics.aks_gameserver_ip = _loc5_;
         this.api.datacenter.Basics.aks_gameserver_port = _loc6_;
         this.api.datacenter.Basics.ignoreMigration = false;
         this.api.datacenter.Basics.ignoreCreateCharacter = false;
         this.api.ui.unloadUIComponent("ChooseServer");
         this.api.ui.unloadUIComponent("AutomaticServer");
         this.api.ui.loadUIComponent("Waiting","Waiting");
         this.aks.softDisconnect();
         this.api.ui.loadUIComponent("WaitingMessage","WaitingMessage",{text:this.api.lang.getText("CONNECTING")},{bAlwaysOnTop:true,bForceLoad:true});
         this.api.network.Basics.onAuthorizedCommandPrompt(this.api.datacenter.Basics.aks_current_server.label);
         if(_global.CONFIG.delay != undefined)
         {
            ank.utils.Timer.setTimer(this,"connect",this.aks,this.aks.connect,_global.CONFIG.delay,[_loc5_,_loc6_,false]);
         }
         else
         {
            this.aks.connect(_loc5_,_loc6_,false);
         }
      }
      else
      {
         delete this.api.datacenter.Basics.aks_current_server;
         this.api.datacenter.Basics.createCharacter = false;
         switch(sExtraData.charAt(0))
         {
            case "d":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_CHOOSE_CHARACTER_SERVER_DOWN"),"ERROR_BOX");
               break;
            case "f":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("SERVER_IS_FULL_NOT_FULL_MEMBER"),"ERROR_BOX");
               break;
            case "F":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("SERVER_FULL"),"ERROR_BOX");
               break;
            case "s":
               var _loc17_ = this.api.lang.getServerInfos(Number(_loc4_.substr(1))).n;
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_CHOOSE_CHARACTER_SHOP_OTHER_SERVER",[_loc17_]),"ERROR_BOX");
               break;
            case "r":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_SELECT_THIS_SERVER"),"ERROR_BOX");
         }
      }
   }

   function onRescue(bSuccess)
   {
      this.api.datacenter.Player.data.GameActionsManager.clear();
      this.api.ui.unloadUIComponent("WaitingMessage");
      this.api.ui.unloadUIComponent("WaitingQueue");
      ank.utils.Timer.removeTimer(this.WaitQueueTimer,"WaitQueue");
      if(!bSuccess)
      {
         this.api.datacenter.Basics.aks_rescue_count = -1;
         this.aks.disconnect(false,true);
      }
   }

   function onTicketResponse(bSuccess, sExtraData)
   {
      this.api.ui.unloadUIComponent("WaitingMessage");
      if(bSuccess)
      {
         var _loc4_ = _global.parseInt(sExtraData.substr(0,1),16);
         if(_global.isNaN(_loc4_))
         {
            _loc4_ = -1;
         }
         if(_loc4_ > 0)
         {
            this.aks.addKeyToCollection(_loc4_,sExtraData.substr(1));
            this.useKey(_loc4_);
            this.aks.startUsingKey(_loc4_);
         }
         else if(_loc4_ == 0)
         {
            this.useKey(0);
         }
         else if(_loc4_ == -1)
         {
            new org.flashdevelop.utils.FlashConnect.trace("[?!!] Le serveur semble ne pas connaître le protocole de cryptage!","dofus.aks.Account::onTicketResponse","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/aks/Account.as",1186);
         }
         this.api.datacenter.Basics.aks_current_regional_version = Number.POSITIVE_INFINITY;
         this.requestRegionalVersion();
      }
      else
      {
         this.aks.disconnect(false,true);
      }
   }
   
   function onCharacterSelected(bSuccess, sExtraData)
   {
      this.api.datacenter.Basics.inGame = true;
      if(bSuccess && this.api.datacenter.Player.isAuthorized)
      {
         this.api.kernel.AdminManager.characterEnteringGame();
      }
      this.api.ui.unloadUIComponent("WaitingMessage");
      this.api.ui.unloadUIComponent("ChooseCharacter");
      this.api.ui.unloadUIComponent("WaitingQueue");
      ank.utils.Timer.removeTimer(this.WaitQueueTimer,"WaitQueue");
      if(bSuccess)
      {
         var _loc4_ = sExtraData.split("|");
         var _loc5_ = new Object();
         var _loc6_ = Number(_loc4_[0]);
         var _loc7_ = _loc4_[1];
         _loc5_.level = _loc4_[2];
         _loc5_.guild = _loc4_[3];
         _loc5_.sex = _loc4_[4];
         _loc5_.gfxID = _loc4_[5];
         _loc5_.color1 = _loc4_[6];
         _loc5_.color2 = _loc4_[7];
         _loc5_.color3 = _loc4_[8];
         _loc5_.items = _loc4_[9];
         this.api.kernel.CharactersManager.setLocalPlayerData(_loc6_,_loc7_,_loc5_);
         this.aks.Game.create();
         if(this.api.datacenter.Player.isAuthorized)
         {
            this.api.kernel.AdminManager.characterEnteringGame();
         }
         this.api.electron.updateWindowTitle(_loc7_);
         this.api.electron.setIngameDiscordActivity();
      }
      else
      {
         this.aks.disconnect(false,true);
      }
   }

   function onStats(sExtraData)
   {
      this.api.ui.unloadUIComponent("WaitingMessage");
      var _loc3_ = sExtraData.split("|");
      var _loc4_ = this.api.datacenter.Player;
      var _loc5_ = _loc3_[0].split(",");
      _loc4_.XP = _loc5_[0];
      _loc4_.XPlow = _loc5_[1];
      _loc4_.XPhigh = _loc5_[2];
      _loc4_.Kama = _loc3_[1];
      _loc4_.BonusPoints = _loc3_[2];
      _loc4_.BonusPointsSpell = _loc3_[3];
      _loc5_ = _loc3_[4].split(",");
      var _loc6_ = 0;
      if(_loc5_[0].indexOf("~"))
      {
         var _loc7_ = _loc5_[0].split("~");
         _loc4_.haveFakeAlignment = _loc7_[0] != _loc7_[1];
         _loc5_[0] = _loc7_[0];
         _loc6_ = Number(_loc7_[1]);
      }
      var _loc8_ = Number(_loc5_[0]);
      var _loc9_ = Number(_loc5_[1]);
      _loc4_.alignment = new dofus.datacenter.Alignment(_loc8_,_loc9_);
      _loc4_.fakeAlignment = new dofus.datacenter.Alignment(_loc6_,_loc9_);
      _loc4_.data.alignment = _loc4_.alignment.clone();
      var _loc10_ = Number(_loc5_[2]);
      var _loc11_ = Number(_loc5_[3]);
      var _loc12_ = Number(_loc5_[4]);
      var _loc13_ = _loc5_[5] != "1" ? false : true;
      var _loc14_ = _loc4_.rank.disgrace;
      _loc4_.rank = new dofus.datacenter..Rank(_loc10_,_loc11_,_loc12_,_loc13_);
      _loc4_.data.rank = _loc4_.rank.clone();
      if(_loc14_ != undefined && (_loc14_ != _loc12_ && _loc12_ > 0))
      {
         this.api.kernel.GameManager.showDisgraceSanction();
      }
      _loc5_ = _loc3_[5].split(",");
      _loc4_.LP = _loc5_[0];
      _loc4_.data.LP = _loc5_[0];
      _loc4_.LPmax = _loc5_[1];
      _loc4_.data.LPmax = _loc5_[1];
      _loc5_ = _loc3_[6].split(",");
      _loc4_.EnergyMax = _loc5_[1];
      _loc4_.Energy = _loc5_[0];
      _loc4_.Initiative = _loc3_[7];
      _loc4_.Discernment = _loc3_[8];
      var _loc15_ = new Array();
      var _loc16_ = 3;
      while(_loc16_ > -1)
      {
         _loc15_[_loc16_] = new Array();
         _loc16_ = _loc16_ - 1;
      }
      var _loc17_ = 9;
      while(_loc17_ < 51)
      {
         _loc5_ = _loc3_[_loc17_].split(",");
         var _loc18_ = Number(_loc5_[0]);
         var _loc19_ = Number(_loc5_[1]);
         var _loc20_ = Number(_loc5_[2]);
         var _loc21_ = Number(_loc5_[3]);
         switch(_loc17_)
         {
            case 9:
               _loc15_[0].push({id:_loc17_,o:7,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"Star"});
               if(!this.api.datacenter.Game.isRunning)
               {
                  _loc4_.AP = _loc18_ + _loc19_ + _loc20_;
               }
               break;
            case 10:
               _loc15_[0].push({id:_loc17_,o:8,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconMP"});
               if(!this.api.datacenter.Game.isRunning)
               {
                  _loc4_.MP = _loc18_ + _loc19_ + _loc20_;
               }
               break;
            case 11:
               _loc15_[0].push({id:_loc17_,o:3,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconEarthBonus"});
               _loc4_.Force = _loc18_;
               _loc4_.ForceXtra = _loc19_ + _loc20_;
               break;
            case 12:
               _loc15_[0].push({id:_loc17_,o:1,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconVita"});
               _loc4_.Vitality = _loc18_;
               _loc4_.VitalityXtra = _loc19_ + _loc20_;
               break;
            case 13:
               _loc15_[0].push({id:_loc17_,o:2,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconWisdom"});
               _loc4_.Wisdom = _loc18_;
               _loc4_.WisdomXtra = _loc19_ + _loc20_;
               break;
            case 14:
               _loc15_[0].push({id:_loc17_,o:5,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconWaterBonus"});
               _loc4_.Chance = _loc18_;
               _loc4_.ChanceXtra = _loc19_ + _loc20_;
               break;
            case 15:
               _loc15_[0].push({id:_loc17_,o:6,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconAirBonus"});
               _loc4_.Agility = _loc18_;
               _loc4_.AgilityXtra = _loc19_ + _loc20_;
               _loc4_.AgilityTotal = _loc18_ + _loc19_ + _loc20_ + _loc21_;
               break;
            case 16:
               _loc15_[0].push({id:_loc17_,o:4,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconFireBonus"});
               _loc4_.Intelligence = _loc18_;
               _loc4_.IntelligenceXtra = _loc19_ + _loc20_;
               break;
            case 17:
               _loc15_[0].push({id:_loc17_,o:9,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_});
               _loc4_.RangeModerator = _loc18_ + _loc19_ + _loc20_;
               break;
            case 18:
               _loc15_[0].push({id:_loc17_,o:10,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_});
               _loc4_.MaxSummonedCreatures = _loc18_ + _loc19_ + _loc20_;
               break;
            case 19:
               _loc15_[1].push({id:_loc17_,o:1,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_});
               break;
            case 20:
               _loc15_[1].push({id:_loc17_,o:2,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_});
               break;
            case 21:
               _loc15_[1].push({id:_loc17_,o:3,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_});
               break;
            case 22:
               _loc15_[1].push({id:_loc17_,o:4,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_});
               break;
            case 23:
               _loc15_[1].push({id:_loc17_,o:7,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_});
               break;
            case 24:
               _loc15_[1].push({id:_loc17_,o:5,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_});
               break;
            case 25:
               _loc15_[1].push({id:_loc17_,o:6,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_});
               break;
            case 26:
               _loc15_[1].push({id:_loc17_,o:8,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_});
               break;
            case 27:
               _loc15_[1].push({id:_loc17_,o:9,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_});
               _loc4_.CriticalHitBonus = _loc18_ + _loc19_ + _loc20_ + _loc21_;
               break;
            case 28:
               _loc15_[1].push({id:_loc17_,o:10,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_});
               break;
            case 29:
               _loc15_[1].push({id:_loc17_,o:11,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"Star"});
               break;
            case 30:
               _loc15_[1].push({id:_loc17_,o:12,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconMP"});
               break;
            case 31:
               _loc15_[2].push({id:_loc17_,o:1,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconNeutral"});
               break;
            case 32:
               _loc15_[2].push({id:_loc17_,o:2,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconNeutral"});
               break;
            case 33:
               _loc15_[3].push({id:_loc17_,o:11,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconNeutral"});
               break;
            case 34:
               _loc15_[3].push({id:_loc17_,o:12,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconNeutral"});
               break;
            case 35:
               _loc15_[2].push({id:_loc17_,o:3,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconEarth"});
               break;
            case 36:
               _loc15_[2].push({id:_loc17_,o:4,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconEarth"});
               break;
            case 37:
               _loc15_[3].push({id:_loc17_,o:13,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconEarth"});
               break;
            case 38:
               _loc15_[3].push({id:_loc17_,o:14,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconEarth"});
               break;
            case 39:
               _loc15_[2].push({id:_loc17_,o:7,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconWater"});
               break;
            case 40:
               _loc15_[2].push({id:_loc17_,o:8,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconWater"});
               break;
            case 41:
               _loc15_[3].push({id:_loc17_,o:17,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconWater"});
               break;
            case 42:
               _loc15_[3].push({id:_loc17_,o:18,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconWater"});
               break;
            case 43:
               _loc15_[2].push({id:_loc17_,o:9,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconAir"});
               break;
            case 44:
               _loc15_[2].push({id:_loc17_,o:10,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconAir"});
               break;
            case 45:
               _loc15_[3].push({id:_loc17_,o:19,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconAir"});
               break;
            case 46:
               _loc15_[3].push({id:_loc17_,o:20,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconAir"});
               break;
            case 47:
               _loc15_[2].push({id:_loc17_,o:5,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconFire"});
               break;
            case 48:
               _loc15_[2].push({id:_loc17_,o:6,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconFire"});
               break;
            case 49:
               _loc15_[3].push({id:_loc17_,o:15,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconFire"});
               break;
            case 50:
               _loc15_[3].push({id:_loc17_,o:16,s:_loc18_,i:_loc19_,d:_loc20_,b:_loc21_,p:"IconFire"});
         }
         _loc17_ = _loc17_ + 1;
      }
      _loc4_.FullStats = _loc15_;
      this.api.network.Basics.getDate();
   }

   function onNewLevel(sExtraData)
   {
      var _loc3_ = Number(sExtraData);
      this.api.kernel.showMessage(this.api.lang.getText("INFORMATIONS"),this.api.lang.getText("NEW_LEVEL",[_loc3_]),"ERROR_BOX",{name:"NewLevel"});
      this.api.datacenter.Player.Level = _loc3_;
      this.api.datacenter.Player.data.Level = _loc3_;
      this.api.kernel.TipsManager.showNewTip(dofus.managers.TipsManager.TIP_GAIN_LEVEL);
   }

   function onRestrictions(sExtraData)
   {
      this.api.datacenter.Player.restrictions = _global.parseInt(sExtraData,36);
   }

   function onGiftsList(sExtraData)
   {
      var _loc3_ = sExtraData.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      var _loc6_ = _loc3_[2];
      var _loc7_ = _loc3_[3];
      var _loc8_ = _loc3_[4];
      var _loc9_ = Number(_loc3_[5]);
      var _loc10_ = _loc3_[6];
      var _loc11_ = "";
      if(_loc9_ != -1)
      {
         var _loc12_ = new Date(_loc9_ * 1000);
         var _loc13_ = (_loc12_.getDate() < 10 ? "0" : "") + _loc12_.getDate();
         var _loc14_ = (_loc12_.getMonth() + 1 < 10 ? "0" : "") + (_loc12_.getMonth() + 1);
         _loc11_ = _loc13_ + "/" + _loc14_ + "/" + _loc12_.getFullYear();
      }
      var _loc15_ = new LoadVars();
      _loc15_.decode("&text=" + _loc6_);
      var _loc16_ = _loc15_.text;
      _loc15_ = new LoadVars();
      _loc15_.decode("&desc=" + _loc7_);
      var _loc17_ = _loc15_.desc;
      _loc15_ = new LoadVars();
      _loc15_.decode("&gfxurl=" + _loc8_);
      var _loc18_ = _loc15_.gfxurl;
      var _loc19_ = new ank.utils.ExtendedArray();
      var _loc20_ = _loc10_.split(";");
      var _loc21_ = 0;
      while(_loc21_ < _loc20_.length)
      {
         if(_loc20_[_loc21_] != "")
         {
            var _loc22_ = this.api.kernel.CharactersManager.getItemObjectFromData(_loc20_[_loc21_]);
            _loc19_.push(_loc22_);
         }
         _loc21_ = _loc21_ + 1;
      }
      var _loc23_ = new dofus.datacenter..Gift();
      _loc23_.type = _loc4_;
      _loc23_.id = _loc5_;
      _loc23_.title = _loc16_;
      _loc23_.desc = _loc17_;
      _loc23_.gfxUrl = _loc18_;
      _loc23_.items = _loc19_;
      _loc23_.date = _loc11_;
      this.api.datacenter.Basics.aks_gifts_stack.push(_loc23_);
   }

   function onGiftStored(bSuccess)
   {
      var _loc3_ = dofus.graphics.gapi.ui.Gifts(this.api.ui.getUIComponent("Gifts"));
      if(_loc3_ == undefined)
      {
         this.api.ui.unloadUIComponent("WaitingMessage");
      }
      else
      {
         this.api.ui.getUIComponent("Gifts").checkNextGift();
      }
   }

   function onQueue(sExtraData)
   {
      var _loc3_ = Number(sExtraData);
      if(_loc3_ > 1)
      {
         this.api.ui.loadUIComponent("WaitingMessage","WaitingMessage",{text:this.api.lang.getText("CONNECTING") + " ( " + this.api.lang.getText("WAIT_QUEUE_POSITION",[_loc3_]) + " )"},{bAlwaysOnTop:true,bForceLoad:true});
      }
   }

   function onNewQueue(sExtraData)
   {
      var _loc3_ = sExtraData.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      var _loc6_ = Number(_loc3_[2]);
      switch(_loc3_[3])
      {
         case "0":
            var _loc7_ = false;
            break;
         case "1":
            _loc7_ = true;
      }
      var _loc8_ = Number(_loc3_[4]);
      new org.flashdevelop.utils.FlashConnect.trace("[Account] (onNewQueue) AskQueue","dofus.aks.Account::onNewQueue","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/aks/Account.as",1645);
      if(_loc4_ > 1)
      {
         new org.flashdevelop.utils.FlashConnect.trace("[Account] (onNewQueue) ShowQueue","dofus.aks.Account::onNewQueue","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/aks/Account.as",1649);
         this.api.ui.loadUIComponent("WaitingQueue","WaitingQueue",{queueInfos:{position:_loc4_,totalAbo:_loc5_,totalNonAbo:_loc6_,subscriber:_loc7_,queueId:_loc8_}},{bAlwaysOnTop:true,bForceLoad:true});
      }
   }

   function onCharacterNameGenerated(bSuccess, sCharacterNameOrError)
   {
      if(bSuccess)
      {
         if(this.api.ui.getUIComponent("CreateCharacter"))
         {
            this.api.ui.getUIComponent("CreateCharacter").characterName = sCharacterNameOrError;
         }
         if(this.api.ui.getUIComponent("CharactersMigration"))
         {
            this.api.ui.getUIComponent("CharactersMigration").setNewName = sCharacterNameOrError;
         }
         if(this.api.ui.getUIComponent("EditPlayer"))
         {
            this.api.ui.getUIComponent("EditPlayer").characterName = sCharacterNameOrError;
         }
      }
      else
      {
         switch(sCharacterNameOrError)
         {
            case "1":
               break;
            case "2":
               this.api.datacenter.Basics.aks_can_generate_names = false;
               if(this.api.ui.getUIComponent("CreateCharacter"))
               {
                  this.api.ui.getUIComponent("CreateCharacter").hideGenerateRandomName();
               }
               if(this.api.ui.getUIComponent("CharactersMigration"))
               {
                  this.api.ui.getUIComponent("CharactersMigration").hideGenerateRandomName();
                  break;
               }
         }
      }
   }

   function onCharactersMigrationAskConfirm(sData)
   {
      var _loc3_ = sData.split(";");
      var _loc4_ = _global.parseInt(_loc3_[0],10);
      var _loc5_ = _loc3_[1];
      var _loc6_ = {name:"ConfirmMigration",params:{nCharacterID:_loc4_,sName:_loc5_},listener:this};
      this.api.kernel.showMessage(undefined,this.api.lang.getText("CONFIRM_MIGRATION",[_loc5_]),"CAUTION_YESNO",_loc6_);
   }

   function onFriendServerList(sData)
   {
      var _loc3_ = sData.split(";");
      var _loc4_ = new Array();
      var _loc5_ = 0;
      while(_loc5_ < _loc3_.length)
      {
         var _loc6_ = _loc3_[_loc5_].split(",");
         _loc4_.push({server:_loc6_[0],count:_loc6_[1]});
         _loc5_ = _loc5_ + 1;
      }
      this.api.ui.getUIComponent("ServerList").setSearchResult(_loc4_);
   }

   function yes(oEvent)
   {
      switch(oEvent.target._name)
      {
         case "AskYesNoSwitchToEnglish":
            this.api.config.language = "en";
            this.api.kernel.clearCache();
            break;
         case "AskYesNoConfirmMigration":
            this.validCharacterMigration(oEvent.target.params.nCharacterID,oEvent.target.params.sName);
      }
   }

   function no(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = oEvent.target._name) === "AskYesNoSwitchToEnglish")
      {
         this.api.kernel.changeServer(true);
      }
   }
}
