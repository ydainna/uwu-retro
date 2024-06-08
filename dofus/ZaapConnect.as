class dofus.ZaapConnect extends dofus.utils.ApiElement
{
   static var TCP_DEFAULT_PORT = -1;
   static var ZAAP_HASH_LENGTH = 36;
   static var TCP_HOST = "127.0.0.1";
   static var HAAPI_GAME_ID = 101;
   static var ENABLED  = true;
   static var instance = null;
   var _gameSessionToken = null;
   var _authToken = null;
   var _bDisabledOnError = false;

   function ZaapConnect(bDebug)
   {
      super();
      this._api = _global.api;
      this._nPort = _global.CONFIG.zaapConnectPort;
      this._bDebug = dofus.Constants.DEBUG;
      this._xSocket = new XMLSocket();
      var ref = this;
      this._xSocket.onConnect = function(bSuccess)
      {
         ref.setConnected(bSuccess);
         ref.onConnect(bSuccess);
      };
      this._xSocket.onData = function(sData)
      {
         ref.onData(sData);
      };
      this._xSocket.onClose = function(sData)
      {
         ref.setConnected(false);
      };
   }

   static function newInstance()
   {
      if(!dofus.ZaapConnect.isEnabled())
      {
         return null;
      }
      if(dofus.ZaapConnect.instance != null)
      {
         delete dofus.ZaapConnect.instance;
      }
      dofus.ZaapConnect.instance = new dofus.ZaapConnect();
      return dofus.ZaapConnect.instance;
   }

   static function getInstance()
   {
      return dofus.ZaapConnect.instance;
   }

   static function isEnabled()
   {
      return dofus.ZaapConnect.ENABLED && (_global.CONFIG.zaapConnectPort != undefined && _global.CONFIG.zaapConnectPort > 0);
   }

   function get isDisabledOnError()
   {
      return this._bDisabledOnError;
   }

   function get disabledOnErrorLangKey()
   {
      return this._sDisabledOnErrorLangKey;
   }

   function renewAuthKey()
   {
      if(this.isConnected() && this.getSessionToken() != undefined)
      {
         this.askAuthToken();
      }
      else
      {
         this.connect();
      }
   }

   function getSessionToken()
   {
      return this._gameSessionToken;
   }

   function consumeAuthToken()
   {
      var _loc2_ = this._authToken;
      if(_loc2_ == undefined)
      {
         return null;
      }
      delete this._authToken;
      return _loc2_;
   }

   function isDebug()
   {
      return this._bDebug;
   }

   function isConnected()
   {
      return this._bConnected;
   }

   function setConnected(bConnected)
   {
      this._bConnected = bConnected;
   }
   
   function debugLog(sText)
   {
      if(!this.isDebug() || sText == null)
      {
         return undefined;
      }
      sText = "[ZaapConnect] " + sText;
      this.api.kernel.showMessage(undefined, sText, "DEBUG_LOG");
      this.api.electron.log(sText);
   }

   function processRequest(sType, aArgs)
   {
      switch(sType)
      {
         case "connect":
            if(aArgs[0] == "error")
            {
               this.processRequest("ignored",undefined);
               break;
            }
            this._gameSessionToken = aArgs[0];
            this.refreshUiLogin();
            this.debugLog("New Session Token : " + this.getSessionToken());
            this.askAuthToken();
            break;
         case "auth_getGameToken":
            this._authToken = aArgs[0];
            this.debugLog("New Auth Token : " + this._authToken);
            this.doAutoLogin();
            break;
         case "ignored":
            this.debugLog("Zaap is ignoring your client");
            this.disable("ERROR_ZAAP_CONNECT_LAUNCHER_IGNORING_CLIENT");
      }
   }

   function connect()
   {
      this.api.ui.loadUIComponent("Waiting","Waiting",undefined,{bStayIfPresent:true});
      this.debugLog("Connection to local port " + this._nPort);
      this._xSocket.connect(dofus.ZaapConnect.TCP_HOST,this._nPort);
   }
   function disconnect()
   {
      this._gameSessionToken = "";
      this._authToken = "";
      this._xSocket.close();
   }

   function disable(sErrorLangKey)
   {
      this.disconnect();
      this.debugLog("Now disabled until client restart");
      this._sDisabledOnErrorLangKey = sErrorLangKey;
      this._bDisabledOnError = true;
      this.refreshUiLogin();
   }

   function refreshUiLogin()
   {
      var _loc2_ = dofus.graphics.gapi.ui.Login(this.api.ui.getUIComponent("Login"));
      if(_loc2_ != undefined)
      {
         _loc2_.refreshAutoLoginUi();
      }
   }

   function send(sData)
   {
      this.debugLog("--&gt; " + _loc2_);
      this._xSocket.send(_loc2_);
   }

   function onData(sData)
   {
      this.debugLog("&lt;-- " + _loc2_);
      var _loc3_ = _loc2_.split(" ");
      var _loc4_ = new Array();
      var _loc5_ = _loc3_[0];
      var _loc6_ = 1;
      while(_loc6_ < _loc3_.length)
      {
         _loc4_.push(_loc3_[_loc6_]);
         _loc6_ = _loc6_ + 1;
      }
      this.processRequest(_loc5_,_loc4_);
   }

   function onConnect(bSuccess)
   {
      this.api.ui.unloadUIComponent("Waiting");
      if(!_loc2_)
      {
         this.debugLog("Could not connect to the launcher");
         this.disable("ERROR_ZAAP_CONNECT_CONNECTION_FAILED");
         return undefined;
      }
      this.debugLog("Connected to the zaap");
      this.askSessionToken();
   }

   function askSessionToken()
   {
      this.debugLog("Asking session token...");
      this.send("connect retro main -1 " + dofus.Eelectron.getZaapHash());
   }

   function askAuthToken()
   {
      this.debugLog("Asking auth token...");
      this.send("auth_getGameToken " + this.getSessionToken() + " " + dofus.ZaapConnect.HAAPI_GAME_ID);
   }

   function doAutoLogin()
   {
      if(this._authToken == undefined)
      {
         this.debugLog("Invalid auth token");
         this.disable("ERROR_ZAAP_CONNECT_INVALID_AUTH_TOKEN");
         return undefined;
      }
      if(this.api.network.isConnected)
      {
         this.debugLog("Already connected to the login server");
         return undefined;
      }
      var _loc2_ = dofus.graphics.gapi.ui.Login(this.api.ui.getUIComponent("Login"));
      if(_loc2_ == undefined)
      {
         this.debugLog("UI Login not found");
         return undefined;
      }
      if(!_loc2_.isLoaded())
      {
         this.debugLog("UI Login is not fully loaded, can\'t auto login now");
         return undefined;
      }
      this.debugLog("Let\'s login automatically...");
      _loc2_.zaapAutoLogin(true);
   }
}
