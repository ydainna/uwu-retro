class dofus.aks.Aks extends dofus.utils.ApiElement
{
   static var EVALUATE_AVERAGE_PING_ON_COMMANDS = 50;
   var _bConnected = false;
   var _bConnecting = false;
   static var HEX_CHARS = ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"];
   static var CURRENT_IDENTITY_VERSION = 10;
   var unknown = false;
   
   function Aks(oAPI)
   {
      super();
      this.initialize(oAPI);
   }
   function §\x1e\x1d\x04§()
   {
      return this._bConnected;
   }
   function initialize(oAPI)
   {
      super.initialize(oAPI);
      thisBasics = new dofus.aks.Basics(this,oAPI);
      this.Evenemential = new dofus.aks.Evenemential(this,oAPI);
      this.Account = new dofus.aks.Account(this,oAPI);
      this.Friends = new dofus.aks.Friends(this,oAPI);
      this.Enemies = new dofus.aks.Enemies(this,oAPI);
      this.Chat = new dofus.aks.Chat(this,oAPI);
      this.Dialog = new dofus.aks.Dialog(this,oAPI);
      this.Exchange = new dofus.aks.Exchange(this,oAPI);
      this.Game = new dofus.aks.Game(this,oAPI);
      this.GameActions = new dofus.aks.GameActions(this,oAPI);
      this.Houses = new dofus.aks.Houses(this,oAPI);
      this.Infos = new dofus.aks.Infos(this,oAPI);
      this.Items = new dofus.aks.Items(this,oAPI);
      this.Job = new dofus.aks.Job(this,oAPI);
      this.Key = new dofus.aks.Key(this,oAPI);
      this.Spells = new dofus.aks.Spells(this,oAPI);
      this.Storages = new dofus.aks.Storages(this,oAPI);
      this.Emotes = new dofus.aks.Emotes(this,oAPI);
      this.Documents = new dofus.aks.Documents(this,oAPI);
      this.Survey = new dofus.aks.Survey(this,oAPI);
      this.Guild = new dofus.aks.Guild(this,oAPI);
      this.Waypoints = new dofus.aks.Waypoints(this,oAPI);
      this.Subareas = new dofus.aks.Subareas(this,oAPI);
      this.Specialization = new dofus.aks.Specialization(this,oAPI);
      this.Fights = new dofus.aks.Fights(this,oAPI);
      this.Tutorial = new dofus.aks.Tutorial(this,oAPI);
      this.Quests = new dofus.aks.Quests(this,oAPI);
      this.RapidStuff = new dofus.aks.RapidStuff(this,oAPI);
      this.Party = new dofus.aks.Party(this,oAPI);
      this.Subway = new dofus.aks.Subway(this,oAPI);
      this.Mount = new dofus.aks.Mount(this,oAPI);
      this.Conquest = new dofus.aks.Conquest(this,oAPI);
      this.ModReport = new dofus.aks.ModReport(this,oAPI);
      this.Ttg = new dofus.aks.Ttg(this,oAPI);
      this.InventoryShortcuts = new dofus.aks.InventoryShortcuts(this,oAPI);
      this.Temporis = new dofus.aks.Temporis(this,oAPI);
      this.ChooseReward = new dofus.aks.ChooseReward(this,oAPI);
      this.Ping = new Object();
      this.Lag = new Object();
      this.Deco = new Object();
      this._bLag = false;
      this._bAutoReco = this.api.lang.getConfigText("AUTO_RECONNECT") == true;
      this._oDataProcessor = new dofus.aks.DataProcessor(this,oAPI);
      this._xSocket = new XMLSocket();
      this._aLastPings = new Array();
      var aks = this;
      this._xSocket.onClose = function()
      {
         aks.onClose();
         aks.resetKeys();
      };
      this._xSocket.onConnect = function(bSuccess)
      {
         aks.onConnect(_loc2_);
      };
      this._xSocket.onData = function(sData)
      {
         aks.onData(_loc2_);
      };
      this._oLoader = new LoadVars();
      this._oLoader.onLoad = function(§\x1b\f\x07§)
      {
         aks.onLoad(_loc2_);
      };
   }
   function connect(§\x1a\x1c\x12§, §\x19\f\f§, §\x16\x11\x1b§)
   {
      new org.flashdevelop.utils.FlashConnect.trace("connect " + _loc2_ + ":" + _loc3_,"dofus.aks.Aks::connect","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/aks/Aks.as",185);
      if(_loc4_ == undefined)
      {
         _loc4_ = true;
      }
      if(this._bConnected)
      {
         return null;
      }
      if(this._bConnecting)
      {
         return null;
      }
      this.api.ui.loadUIComponent("Waiting","Waiting",undefined,{bStayIfPresent:true});
      if(_loc2_ == undefined)
      {
         _loc2_ = this.api.datacenter.Basics.serverHost;
      }
      else if(_loc4_)
      {
         this.api.datacenter.Basics.serverHost = _loc2_;
      }
      if(_loc3_ == undefined)
      {
         _loc3_ = this.api.datacenter.Basics.serverPort;
      }
      else if(_loc4_)
      {
         this.api.datacenter.Basics.serverPort = _loc3_;
      }
      this._bConnecting = true;
      this._aLastPings = new Array();
      var _loc5_ = this._xSocket.connect(_loc2_,_loc3_);
      return _loc5_;
   }
   function §\x1b\x04\x0f§()
   {
      if(this._bConnected)
      {
         this._xSocket.close();
      }
      var _loc2_ = dofus.graphics.gapi.ui.Login(this.api.ui.getUIComponent("Login"));
      if(_loc2_ != undefined)
      {
         _loc2_.reenableZaapConnectButton();
      }
      this.api.electron.updateWindowTitle();
      this.api.electron.setLoginDiscordActivity();
      this.resetKeys();
      this._bConnected = false;
   }
   function disconnect(§\x16\x10\x1a§, bShowMessage, §\x16\x10\x1b§)
   {
      this["\x1b\x04\x0f"]();
      if(!_loc4_)
      {
         this.onClose(_loc2_,_loc3_,true);
      }
      else
      {
         ank.utils.Timer.setTimer(this.Deco,"disconnect",this,this.onClose,1000,[_loc2_,_loc3_,true]);
      }
   }
   function send(sData, §\x16\x14\x1a§, §\x1b\f\x17§, §\x16\x0f\x0f§, §\x16\x0f\t§)
   {
      if(_loc2_ == undefined || _loc2_.length == 0)
      {
         return undefined;
      }
      if(_loc5_ != true && _loc2_.length > dofus.Constants["\x18\x1a\x15"])
      {
         _loc2_ = _loc2_.substring(0,dofus.Constants["\x18\x1a\x15"] - 1);
      }
      this.api.kernel.GameManager["\x1b\x01\x17"]();
      if(_loc3_ || _loc3_ == undefined)
      {
         if(_loc4_ != undefined)
         {
            this.api.ui.loadUIComponent("WaitingMessage","WaitingMessage",{text:_loc4_},{bAlwaysOnTop:true,bForceLoad:true});
         }
         this["\x1e\b\x1c"] = _loc2_;
         this.api.ui.loadUIComponent("Waiting","Waiting");
         this["\x1c\x11\r"] = true;
         if(this.api.datacenter.Basics.inGame && this._bAutoReco)
         {
            ank.utils.Timer.setTimer(this.Lag,"lag",this,this["\x19\x19\x14"],Number(this.api.lang.getConfigText("DELAY_RECO_MESSAGE")));
         }
      }
      this.api.electron.onPacketSent(_loc2_);
      if(this.api.datacenter.Basics.inGame)
      {
         _loc2_ = this.api.electron.applyPacketToSendPostProcessing(_loc2_);
      }
      if(dofus.Constants["\x17\x05\x17"])
      {
         this.api.electron.debugRequest(true,_loc2_);
      }
      if(!_loc6_)
      {
         _loc2_ = this["\x1a\x06\x17"](_loc2_);
      }
      if(_loc2_.charAt(_loc2_.length - 1) != "\n")
      {
         _loc2_ += "\n";
      }
      this._xSocket.send(_loc2_);
      if(_loc3_ || _loc3_ == undefined)
      {
         this._nLastWaitingSend = 2363;
      }
      if(dofus.Constants["\x17\x05\x17"] && dofus.Constants["\x17\x05\x18"])
      {
         new org.flashdevelop.utils.FlashConnect.trace("SND (C) " + _loc2_,com.ankamagames["\x1b\x10\x1d"].Logger["\x18\x14\x10"],"dofus.aks.Aks::send","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/aks/Aks.as",313);
      }
   }
   function §\x1a\x07\x10§(§\x1a\x10\x19§)
   {
      this._oDataProcessor.process(_loc2_);
   }
   function §\x1b\t\x14§(nKeyID)
   {
      this["\x1d\x14\x16"] = _loc2_;
   }
   function §\x1a\r\x1d§()
   {
      this["\x1d\x14\x16"] = 0;
      this["\x1b\x1d\r"] = new Array();
   }
   function §\x1b\x13\x17§(§\x1a\x0f\x06§)
   {
      if(this["\x1d\x14\x16"] == 0 || (this["\x1d\x14\x16"] == undefined || _global.isNaN(this["\x1d\x14\x16"])))
      {
         return _loc2_;
      }
      var _loc3_ = this["\x1b\x1d\r"][_global.parseInt(_loc2_.substr(0,1),16)];
      if(_loc3_ == undefined)
      {
         new org.flashdevelop.utils.FlashConnect.trace("[?!!] Le serveur a demandé une clé que je n\'ai pas...","dofus.aks.Aks::unprepareData","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/aks/Aks.as",348);
         return _loc2_;
      }
      var _loc4_ = _loc2_.substr(1,1).toUpperCase();
      var _loc5_ = dofus.aks.Aks["\x17\x06\x02"](_loc2_.substr(2),_loc3_,_global.parseInt(_loc4_,16) * 2);
      if(dofus.aks.Aks["\x16\x1a\x1a"](_loc5_) != _loc4_)
      {
         new org.flashdevelop.utils.FlashConnect.trace("[?!!] Checksum invalide! (Reçu : " + _loc2_.substr(1,1) + ", Calculé : " + dofus.aks.Aks["\x16\x1a\x1a"](_loc5_) + ")","dofus.aks.Aks::unprepareData","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/aks/Aks.as",361);
         new org.flashdevelop.utils.FlashConnect.trace("[?!!] Données interpretées : " + _loc5_,"dofus.aks.Aks::unprepareData","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/aks/Aks.as",362);
         return _loc2_;
      }
      return _loc5_;
   }
   function §\x1a\x06\x17§(§\x1a\x0f\x06§)
   {
      if(this["\x1d\x14\x16"] == 0 || (this["\x1d\x14\x16"] == undefined || _global.isNaN(this["\x1d\x14\x16"])))
      {
         return _loc2_;
      }
      if(this["\x1b\x1d\r"][this["\x1d\x14\x16"]] == undefined)
      {
         new org.flashdevelop.utils.FlashConnect.trace("[?!!] La clé " + this["\x1d\x14\x16"] + " définie en clé actuelle n\'existe pas dans le buffer...","dofus.aks.Aks::prepareData","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/aks/Aks.as",378);
         return _loc2_;
      }
      var _loc3_ = dofus.aks.Aks.HEX_CHARS[this["\x1d\x14\x16"]];
      var _loc4_ = dofus.aks.Aks["\x16\x1a\x1a"](_loc2_);
      _loc3_ += _loc4_;
      return _loc3_ + dofus.aks.Aks["\x17\x04\r"](_loc2_,this["\x1b\x1d\r"][this["\x1d\x14\x16"]],_global.parseInt(_loc4_,16) * 2);
   }
   static function §\x1a\x06\x18§(§\x17\x04\x0e§)
   {
      var _loc3_ = new String();
      var _loc4_ = 0;
      while(_loc4_ < _loc2_.length)
      {
         _loc3_ += String.fromCharCode(_global.parseInt(_loc2_.substr(_loc4_,2),16));
         _loc4_ += 2;
      }
      _loc3_ = _global.unescape(_loc3_);
      return _loc3_;
   }
   static function §\x16\x1a\x1a§(§\x1a\x0f\x06§)
   {
      var _loc3_ = 0;
      var _loc4_ = 0;
      while(_loc4_ < _loc2_.length)
      {
         _loc3_ += _loc2_.charCodeAt(_loc4_) % 16;
         _loc4_ = _loc4_ + 1;
      }
      return dofus.aks.Aks.HEX_CHARS[_loc3_ % 16];
   }
   static function d2h(§\x17\x04\x0e§)
   {
      if(_loc2_ > 255)
      {
         _loc2_ = 255;
      }
      return dofus.aks.Aks.HEX_CHARS[Math.floor(_loc2_ / 16)] + dofus.aks.Aks.HEX_CHARS[_loc2_ % 16];
   }
   static function §\x1a\x06\x16§(§\x1a\x0f\x06§)
   {
      var _loc3_ = new String();
      var _loc4_ = 0;
      while(_loc4_ < _loc2_.length)
      {
         var _loc5_ = _loc2_.charAt(_loc4_);
         var _loc6_ = _loc2_.charCodeAt(_loc4_);
         if(_loc6_ < 32 || (_loc6_ > 127 || (_loc5_ == "%" || _loc5_ == "+")))
         {
            _loc3_ += _global.escape(_loc5_);
         }
         else
         {
            _loc3_ += _loc5_;
         }
         _loc4_ = _loc4_ + 1;
      }
      return _loc3_;
   }
   static function §\x17\x04\r§(§\x17\x04\x0e§, §\x18\x11\x15§, c)
   {
      var _loc5_ = new String();
      var _loc6_ = _loc3_.length;
      _loc2_ = dofus.aks.Aks["\x1a\x06\x16"](_loc2_);
      var _loc7_ = 0;
      while(_loc7_ < _loc2_.length)
      {
         _loc5_ += dofus.aks.Aks.d2h(_loc2_.charCodeAt(_loc7_) ^ _loc3_.charCodeAt((_loc7_ + c) % _loc6_));
         _loc7_ = _loc7_ + 1;
      }
      return _loc5_;
   }
   static function §\x17\x06\x02§(§\x17\x04\x0e§, §\x18\x11\x15§, c)
   {
      var _loc5_ = new String();
      var _loc6_ = _loc3_.length;
      var _loc7_ = 0;
      var _loc8_ = 0;
      var _loc9_ = 0;
      while(_loc9_ < _loc2_.length)
      {
         _loc7_;
         _loc5_ += String.fromCharCode(_global.parseInt(_loc2_.substr(_loc9_,2),16) ^ _loc3_.charCodeAt((_loc7_++ + c) % _loc6_));
         _loc9_ += 2;
      }
      _loc5_ = _global.unescape(_loc5_);
      return _loc5_;
   }
   function §\x15\x1d\x16§(nKeyID, sKey)
   {
      if(this["\x1b\x1d\r"] == undefined)
      {
         this["\x1b\x1d\r"] = new Array();
      }
      this["\x1b\x1d\r"][_loc2_] = dofus.aks.Aks["\x1a\x06\x18"](_loc3_);
   }
   function ping()
   {
      this.api.datacenter.Basics.lastPingTimer = 9785;
      this.send("ping");
   }
   function §\x1a\t\x0b§()
   {
      this.send("qping");
   }
   function §\x17\x14\x10§()
   {
      var _loc2_ = 0;
      var _loc3_ = 0;
      while(_loc3_ < this._aLastPings.length)
      {
         _loc2_ += this._aLastPings[_loc3_];
         _loc3_ = _loc3_ + 1;
      }
      return Math.round(_loc2_ / this._aLastPings.length);
   }
   function §\x17\x14\x12§()
   {
      return this._aLastPings.length;
   }
   function §\x17\x14\x11§()
   {
      return dofus.aks.Aks.EVALUATE_AVERAGE_PING_ON_COMMANDS;
   }
   function getRandomNetworkKey()
   {
      if(this.api.electron.enabled)
      {
         var _loc2_ = this.api.electron.getRandomNetworkKey();
      }
      else
      {
         _loc2_ = "";
         var _loc3_ = Math.round(Math.random() * 128) + 128;
         var _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ += this["\x17\x1d\x16"]();
            _loc4_ = _loc4_ + 1;
         }
      }
      var _loc5_ = dofus.aks.Aks["\x16\x1a\x1a"](_loc2_) + _loc2_;
      return _loc5_ + dofus.aks.Aks["\x16\x1a\x1a"](_loc5_);
   }
   function §\x18\x10\r§(sKey, §\x19\b\x0e§)
   {
      if(_loc3_ == undefined || _loc3_ != dofus.aks.Aks.CURRENT_IDENTITY_VERSION)
      {
         return false;
      }
      if(_loc2_ == undefined || (_loc2_.length == 0 || (_loc2_ == "" || (dofus.aks.Aks["\x16\x1a\x1a"](_loc2_.substr(0,_loc2_.length - 1)) != _loc2_.substr(_loc2_.length - 1) || dofus.aks.Aks["\x16\x1a\x1a"](_loc2_.substr(1,_loc2_.length - 2)) != _loc2_.substr(0,1)))))
      {
         return false;
      }
      return true;
   }
   function defaultProcessAction(sType, sAction, bError, sData)
   {
      this.api.network.send(String(_loc5_.substr(0,2) + dofus.aks.Aks.EVALUATE_AVERAGE_PING_ON_COMMANDS),false);
   }
   function §\x17\x1d\x16§()
   {
      var _loc2_ = Math.ceil(Math.random() * 100);
      if(_loc2_ <= 40)
      {
         return String.fromCharCode(Math.floor(Math.random() * 26) + 65);
      }
      if(_loc2_ <= 80)
      {
         return String.fromCharCode(Math.floor(Math.random() * 26) + 97);
      }
      return String.fromCharCode(Math.floor(Math.random() * 10) + 48);
   }
   function §\x19\x19\x14§()
   {
      this._bLag = true;
      this.api.ui.loadUIComponent("WaitingMessage","WaitingMessage",{text:this.api.lang.getText("WAIT_FOR_SERVER")},{bAlwaysOnTop:true,bForceLoad:true});
      if(this._bAutoReco)
      {
         ank.utils.Timer.setTimer(this.Deco,"deco",this,this["\x19\x16\x10"],Number(this.api.lang.getConfigText("DELAY_RECO_START")));
      }
   }
   function §\x19\x16\x10§()
   {
      if(this._bConnected)
      {
         this.resetKeys();
         this._xSocket.close();
         this._bConnected = false;
      }
      this.onClose(true,false,false);
   }
   function onConnect(bSuccess)
   {
      this._bConnecting = false;
      if(!_loc2_)
      {
         if(this.api.datacenter.Basics.aks_rescue_count > 0)
         {
            this.api.datacenter.Basics.aks_rescue_count--;
            ank.utils.Timer.setTimer(this,"connect",this,this.connect,_global.CONFIG.rdelay,[this.api.datacenter.Basics.aks_gameserver_ip,this.api.datacenter.Basics.aks_gameserver_port,false]);
            this.api.ui.loadUIComponent("WaitingMessage","WaitingMessage",{text:this.api.lang.getText("TRYING_TO_RECONNECT",[this.api.datacenter.Basics.aks_rescue_count])},{bAlwaysOnTop:true,bForceLoad:true});
            return undefined;
         }
         if(this.api.datacenter.Basics.aks_rescue_count == 0)
         {
            this.onClose(false,true);
            return undefined;
         }
         if(this.api.ui.getUIComponent("Login") && (this.api.datacenter.Basics.aks_connection_server && this.api.datacenter.Basics.aks_connection_server.length))
         {
            var _loc3_ = String(this.api.datacenter.Basics.aks_connection_server.shift());
            ank.utils.Timer.setTimer(this,"connect",this,this.connect,_global.CONFIG.rdelay,[_loc3_,this.api.datacenter.Basics.aks_connection_server_port,false]);
            return undefined;
         }
         this.api.ui.unloadUIComponent("Waiting");
         this.api.ui.unloadUIComponent("WaitingMessage");
         this.api.ui.unloadUIComponent("ChooseCharacter");
         this.api.kernel.manualLogon();
         this.api.kernel.showMessage(this.api.lang.getText("CONNECTION"),this.api.lang.getText("CANT_CONNECT"),"ERROR_BOX",{name:"OnConnect"});
         this["\x1b\x04\x0f"]();
      }
      else
      {
         this.api.ui.unloadUIComponent("Waiting");
         this.api.ui.unloadUIComponent("WaitingMessage");
         if(!this.api.datacenter.Basics.isLogged)
         {
            this.api.ui.loadUIComponent("MainMenu","MainMenu",{§\x1a\t\f§:(!(System.capabilities.playerType == "PlugIn" && !this.api.electron.enabled) ? "quit" : "no")},{bStayIfPresent:true,bAlwaysOnTop:true});
         }
         this._bConnected = true;
      }
   }
   function onData(sData)
   {
      ank.utils.Timer.removeTimer(this.Lag,"lag");
      if(this._bLag)
      {
         dofus.utils.["\x16\x04\x06"].getInstance().ui.unloadUIComponent("WaitingMessage");
         ank.utils.Timer.removeTimer(this.Deco,"deco");
         this._bLag = false;
      }
      if(dofus.Constants["\x17\x05\x17"] && dofus.Constants["\x17\x05\x18"])
      {
         new org.flashdevelop.utils.FlashConnect.trace("RCV (C) " + _loc2_,com.ankamagames["\x1b\x10\x1d"].Logger["\x18\x14\x10"],"dofus.aks.Aks::onData","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/aks/Aks.as",678);
      }
      _loc2_ = this["\x1b\x13\x17"](_loc2_);
      this.api.electron.onPacketReceived(_loc2_);
      if(dofus.Constants["\x17\x05\x17"])
      {
         this.api.electron.debugRequest(false,_loc2_);
      }
      if(this["\x1c\x11\r"])
      {
         this["\x1c\x11\r"] = false;
         this.api.ui.unloadUIComponent("Waiting");
         var _loc3_ = 8327 - this._nLastWaitingSend;
         if(_loc3_ > 100)
         {
            new org.flashdevelop.utils.FlashConnect.trace("[Aks] (onData) " + this["\x1e\b\x1c"] + " (since " + _loc3_ + "ms)","dofus.aks.Aks::onData","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/aks/Aks.as",695);
         }
         this._aLastPings.push(_loc3_);
         if(this._aLastPings.length > dofus.aks.Aks.EVALUATE_AVERAGE_PING_ON_COMMANDS)
         {
            this._aLastPings.shift();
         }
      }
      this._oDataProcessor.process(_loc2_);
   }
   function onLoad(§\x1b\f\x07§)
   {
      if(!_loc2_)
      {
         this.sendNextDisconnectionState();
      }
   }
   function §\x1a\x13\x1b§()
   {
      if(this._aDisconnectionUrl.length <= 0)
      {
         return undefined;
      }
      var _loc2_ = this._aDisconnectionUrl.shift() + this._sDisconnectionParams;
      this._oLoader.load(_loc2_);
   }


   function onClose(bReconnect, bShowMessage, bManual)
   {
      if(bManual == undefined)
      {
         bManual = false;
      }
      if(!bManual && (this.api.datacenter.Basics.aks_current_server != undefined && (!this.api.datacenter.Basics.aks_server_will_disconnect && this.api.lang.getConfigText("FORWARD_UNWANTED_DISCONNECTION"))))
      {
         this._aDisconnectionUrl = String(this.api.lang.getConfigText("FORWARD_UNWANTED_DISCONNECTION_URL")).split("|");
         this._sDisconnectionParams = new String();
         this._sDisconnectionParams += "?serverid=" + this.api.datacenter.Basics.aks_current_server;
         this._sDisconnectionParams += "&serverip=" + this.api.datacenter.Basics.aks_gameserver_ip;
         this._sDisconnectionParams += "&serverport=" + this.api.datacenter.Basics.aks_gameserver_port;
         this._sDisconnectionParams += "&login=" + this.api.datacenter.Basics.login;
         this.sendNextDisconnectionState();
      }
      this._bConnecting = false;
      this._bConnected = false;
      ank.battlefield.SpriteHandler.resetStaticVars(); //TODO : create function in spritehandler
      this.unknown = false;
      this.api.gfx._visible = true;
      if(this.api.datacenter.Basics.aks_current_server != undefined && (this.api.datacenter.Basics.aks_rescue_count == -1 && (!bManual && (this.api.lang.getConfigText("AUTO_RECONNECT") && !this.api.datacenter.Basics.aks_server_will_disconnect))))
      {
         ank.utils.Timer.removeTimer(this.Deco,"deco");
         this.api.datacenter.Basics.aks_rescue_count = _global.CONFIG.rcount;
         ank.utils.Timer.setTimer(this,"connect",this,this.connect,_global.CONFIG.rdelay,[this.api.datacenter.Basics.aks_gameserver_ip,this.api.datacenter.Basics.aks_gameserver_port,false]);
         this.api.ui.loadUIComponent("WaitingMessage","WaitingMessage",{text:this.api.lang.getText("TRYING_TO_RECONNECT",[this.api.datacenter.Basics.aks_rescue_count])},{bAlwaysOnTop:true,bForceLoad:true});
         return undefined;
      }
      if(bReconnect == undefined)
      {
         bReconnect = false;
      }
      if(bShowMessage == undefined)
      {
         bShowMessage = !this.api.datacenter.Basics.aks_server_will_disconnect;
      }
      if(!bReconnect && dofus.kernel.FAST_SWITCHING_SERVER_REQUEST != undefined) //TODO: create variable in kernel
      {
         this.api.kernel.onFastServerSwitchSuccess(); //TODO: create function in kernel
      }
      if(this.api.datacenter.Basics.isLogged)
      {
         this.api.kernel.GameManager.zoomGfx(100);
         this.api.ui.clear();
         if(this.api.ui.getUIComponent("Zoom") == undefined)
         {
            this.api.ui.loadUIComponent("Zoom","Zoom");
         }
         this.api.gfx.clear();
         this.api.kernel.TutorialManager.clear();
         ank.utils.Timer.clear();
      }
      else
      {
         this.api.ui.unloadUIComponent("CenterText");
         this.api.ui.unloadUIComponent("ChooseNickName");
      }
      this.api.sounds.stopAllSounds();
      if(bReconnect)
      {
         if(this.api.datacenter.Player.zaapToken != undefined && this.api.datacenter.Basics.characterSwitchTicket == undefined)
         {
            this.api.ui.setScreenSize(742,550);
            this.api.kernel.manualLogon();
         }
         else
         {
            this.connect();
         }
      }
      else if(this.api.datacenter.Basics.isLogged)
      {
         this.api.ui.setScreenSize(742,550);
         this.api.kernel.manualLogon();
         this.api.kernel.ChatManager.clear();
      }
      if(bShowMessage)
      {
         var _loc5_ = this.api.lang.getText("DISCONNECT");
         if(this.api.datacenter.Basics.serverMessageID != -1)
         {
            _loc5_ += "\n\n" + this.api.lang.getText("SRV_MSG_" + this.api.datacenter.Basics.serverMessageID,this.api.datacenter.Basics.serverMessageParams);
            this.api.kernel.showMessage(this.api.lang.getText("CONNECTION"),_loc5_,"ERROR_BOX",{name:"OnClose"});
         }
         else if(this.api.lang.getConfigText("SIMPLE_AUTO_RECONNECT"))
         {
            _loc5_ += "\n\n" + this.api.lang.getText("ATTEMPT_RECONNECT");
            var _loc6_ = {name:"OnClose",listener:this,params:{login:this.api.datacenter.Player.login,pass:this.api.datacenter.Player.password}};
            this.api.kernel.showMessage(this.api.lang.getText("CONNECTION"),_loc5_,"CAUTION_YESNO",_loc6_);
         }
         else
         {
            this.api.kernel.showMessage(this.api.lang.getText("CONNECTION"),_loc5_,"ERROR_BOX",{name:"OnClose"});
         }
      }
      this.api.datacenter.clear();
   }

   function onHelloConnectionServer(sKey)
   {
      this.api.datacenter.Basics.connexionKey = _loc2_;
      var _loc3_ = this.api.datacenter.Basics.characterSwitchTicket != undefined;
      if(_loc3_)
      {
         this.Account.logOnWithCharacterSwitchTicket(this.api.datacenter.Basics.characterSwitchTicket);
         delete this.api.datacenter.Basics.characterSwitchTicket;
      }
      else
      {
         var _loc4_ = this.api.datacenter.Player.zaapToken != null;
         var _loc5_ = !_loc4_ ? this.api.datacenter.Player.password : this.api.datacenter.Player.zaapToken;
         this.Account.logon(this.api.datacenter.Player.login,_loc5_,_loc4_);
      }
      this.api.network.Account.getQueuePosition();
   }



   function §\x19\x18\r§(sExtraData)
   {
      this.api.ui.loadUIComponent("WaitingMessage","WaitingMessage",{text:this.api.lang.getText("CONNECTING")},{bAlwaysOnTop:true,bForceLoad:true});
      if(this.api.datacenter.Basics.aks_rescue_count == -1)
      {
         this.Account.sendTicket(this.api.datacenter.Basics.aks_ticket);
      }
      else
      {
         this.Account.rescue(this.api.datacenter.Basics.aks_ticket);
      }
      this.api.datacenter.Basics.aks_rescue_count = -1;
   }
   function onTelemetry(sExtraData, bYolo)
   {
      if(!this.api.electron.enabled || bYolo)
      {
         var _loc4_ = "";
         §§goto(addr31);
         §§push(false && false);
      }
      else
      {
         this.api.electron.getTelemetry(_loc2_);
      }
   }
   function onCharacterSwitchTicket(sExtraData)
   {
      this.api.datacenter.Basics.characterSwitchTicket = _loc2_;
      this.disconnect(true,false,true);
   }
   function askCharacterSwitchTicket()
   {
      this.send("HS");
   }
   function §\x19\x1b\x06§()
   {
      var _loc2_ = 5181 - this.api.datacenter.Basics.lastPingTimer;
      this.api.kernel.showMessage(undefined,"Ping : " + _loc2_ + "ms",this.api.ui.getUIComponent("Debug") != undefined ? "DEBUG_LOG" : "INFO_CHAT");
   }
   function §\x19\x1b\x17§()
   {
   }
   function §\x19\x1c\x11§(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0);
      switch(_loc3_)
      {
         case "0":
            var _loc4_ = _loc2_.substr(1).split("|");
            var _loc5_ = Number(_loc4_[0]);
            var _loc6_ = _loc4_[1].split(";");
            this.api.datacenter.Basics.serverMessageID = _loc5_;
            this.api.datacenter.Basics.serverMessageParams = _loc6_;
            break;
         case "1":
            var _loc7_ = _loc2_.substr(1).split("|");
            var _loc8_ = _loc7_[0];
            var _loc9_ = _loc7_[1].split(";");
            var _loc10_ = String(_loc7_[2]).length <= 0 ? undefined : _loc7_[2];
            switch(Number(_loc8_))
            {
               case 23:
                  var _loc11_ = Number(_loc9_[0]);
                  _loc9_[0] = this.api.lang["\x18\x01\x07"](_loc11_).n;
                  break;
               default:
                  break;
               case 12:
                  this.api.kernel.showMessage(this.api.lang.getText("INFORMATIONS"),this.api.lang.getText("SRV_MSG_12"),"ERROR_CHAT");
                  this.api.kernel.showMessage(this.api.lang.getText("INFORMATIONS"),this.api.lang.getText("SRV_MSG_12") + "\n\n" + this.api.lang.getText("DO_U_RELEASE_NOW"),"CAUTION_YESNO",{name:_loc10_,listener:this});
                  return undefined;
            }
            this.api.kernel.showMessage(this.api.lang.getText("INFORMATIONS"),this.api.lang.getText("SRV_MSG_" + _loc8_,_loc9_),"ERROR_BOX",{name:_loc10_});
      }
   }
   function §\x19\x14\x0e§()
   {
      this.api.kernel.quit(false);
   }
   function §\x19\x1c\x16§()
   {
      this.api.datacenter.Basics.aks_server_will_disconnect = true;
   }
   function yes(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) !== "AskYesNoOnClose")
      {
         this.api.network.Game["\x17\x12\x12"]();
      }
      else
      {
         var _loc3_ = dofus.graphics.gapi.ui.Login(this.api.ui.getUIComponent("Login"));
         if(_loc3_ != undefined)
         {
            var _loc4_ = _loc2_.params.login;
            if(_loc4_ == dofus.aks.Account.ACTION_LOGIN_WITH_ZAAP_TOKEN)
            {
               _loc3_.zaapAutoLogin(false);
            }
            else
            {
               var _loc5_ = _loc2_.params.pass;
               _loc3_.autoLogin(_loc4_,_loc5_);
            }
         }
      }
   }
}
