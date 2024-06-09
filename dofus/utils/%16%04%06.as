class dofus.utils.§\x16\x04\x06§ extends Object
{
   function §\x16\x04\x06§()
   {
      super();
      dofus.utils.["\x16\x04\x06"]._oLastInstance = this;
   }
   static function §\x17\x19\t§()
   {
      return dofus.utils.["\x16\x04\x06"]._oLastInstance;
   }
   function §\x1e\x16\x0f§()
   {
      return this["\x1e\x02\x17"];
   }
   function §\x01\x13§()
   {
      return this["\x1e\x04\x03"];
   }
   function §\x1e\x18\x02§()
   {
      return this["\x1e\x03\b"];
   }
   function §\x05\x01§()
   {
      return this["\x1e\x04\x14"];
   }
   function §\x1e\x1b\x01§()
   {
      return this["\x1e\x03\x13"];
   }
   function §\f\x12§()
   {
      return this["\x1e\x06\x04"];
   }
   function §\t\x12§()
   {
      return this["\x1e\x05\x0f"];
   }
   function §\x01\x1a§()
   {
      return this["\x1e\x04\x04"];
   }
   function §\x1e\x16\x07§()
   {
      return this["\x1e\x02\x16"];
   }
   function §\x1e\x19\x11§()
   {
      return this["\x1e\x03\x0e"];
   }
   function §\x04\r§()
   {
      return this["\x1e\x04\x13"];
   }
   function initialize()
   {
      this["\x1e\x02\x17"] = _global.CONFIG;
      this["\x1e\x04\x04"] = new dofus.utils.["\x17\t\x11"]();
      var _loc2_ = dofus["\x17\t\r"]["\x17\x15\f"]();
      this["\x1e\x06\x04"] = _loc2_.GAPI;
      this["\x1e\x06\x04"].api = this;
      new org.flashdevelop.utils.FlashConnect.trace("[Api] (initializa) " + this["\x1e\x06\x04"].api,"dofus.utils.Api::initialize","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/utils/Api.as",144);
      this["\x1e\x03\x0e"] = new dofus.Eelectron(this);
      this["\x1e\x04\x03"] = new dofus.kernel(this);
      this["\x1e\x05\x0f"] = dofus.sounds.AudioManager.getInstance();
      _global.SOMA = this["\x1e\x05\x0f"];
      this["\x1e\x03\b"] = new dofus.datacenter.["\x17\x04\x1a"](this);
      this["\x1e\x04\x14"] = new dofus.aks.Aks(this);
      this["\x1e\x03\x13"] = _loc2_.BATTLEFIELD;
      if(this["\x1e\x02\x17"].isStreaming && this["\x1e\x02\x17"].update == "explod")
      {
         this["\x1e\x03\x13"].initialize(this["\x1e\x03\b"],dofus.Constants["\x19\x11\x19"],dofus.Constants["\x19\x11\x19"],dofus.Constants["\x15\x1b\x14"],this);
      }
      else
      {
         this["\x1e\x03\x13"].initialize(this["\x1e\x03\b"],dofus.Constants["\x18\x03\x1b"],dofus.Constants["\x19\x11\x18"],dofus.Constants["\x15\x1b\x14"],this);
      }
      this["\x1e\x02\x16"] = _global.GAC;
      this["\x1e\x02\x17"].languages = this["\x1e\x04\x04"].getConfigText("LANGUAGES_LIST");
      this["\x1e\x04\x13"] = new ank.utils.["\x18\x1e\x12"]();
      _root.menu = new ank.gapi.controls["\x1a\x0e\x10"](this);
      if(this.ui.getUIComponent("Zoom") == undefined)
      {
         this.ui.loadUIComponent("Zoom","Zoom");
      }
   }
   function §\x16\x1a\b§(sFile, nCheckID)
   {
      var _loc2_ = sFile.split("*");
      sFile = _loc2_[0];
      var §\x16\x05\t§ = "";
      if(_loc2_.length > 1)
      {
         set("\x16\x05\t",_loc2_[1]);
      }
      var _loc3_ = !this.datacenter.Player.isAuthorized && (!this.datacenter.Player.isSkippingFightAnimations && (!this.datacenter.Player.isSkippingLootPanel && this.ui.getUIComponent("Debug") == undefined));
      if(_loc3_)
      {
         var _loc4_ = _global.CONFIG.connexionServer.ip;
         if(_loc4_ == undefined)
         {
            _loc4_ = this.datacenter.Basics.serverHost;
         }
         if(_loc4_ != undefined && (_loc4_.indexOf("127.0.0.1") == 0 || _loc4_.indexOf("192.168") == 0))
         {
            _loc3_ = !_loc3_;
         }
      }
      var nAddition = !!_loc3_ ? -10 : 0;
      var _loc5_ = new Object();
      var ref = this;
      _loc5_.onLoadInit = function(§\x18\x1b\f§, §\x18\x07\x16§)
      {
         var _loc4_ = _loc2_.getBytesTotal() + nAddition;
         var _loc5_ = "CHALLENGE";
         var _loc6_ = _loc2_[_loc5_];
         if(_loc6_ != undefined)
         {
            var _loc7_ = false;
            var _loc8_ = 0;
            while(_loc8_ < ref.config["\x17\x04\x1c"].length)
            {
               if(sFile.indexOf(ref.config["\x17\x04\x1c"][_loc8_].url) == 0)
               {
                  _loc7_ = true;
               }
               _loc8_ = _loc8_ + 1;
            }
            if(_loc7_)
            {
               var _loc9_ = Number(_loc6_.apply(ref,[_root,_global,sFile,nCheckID,eval("\x16\x05\t")]));
               if(_global.isNaN(_loc9_))
               {
                  _loc2_.removeMovieClip();
                  return undefined;
               }
               _loc4_ = _loc9_;
            }
         }
         ref["\x19\x17\x12"](true,_loc4_,nCheckID);
         _loc2_.removeMovieClip();
      };
      _loc5_.onLoadError = function(§\x18\x1b\f§, §\x17\r\x18§, §\x18\x07\x16§)
      {
         var _loc5_ = _loc2_.getBytesTotal() + nAddition;
         ref["\x19\x17\x12"](true,_loc5_,nCheckID);
         _loc2_.removeMovieClip();
      };
      var _loc6_ = dofus["\x17\t\r"].getInstance()["\x18\x01\x15"]();
      var _loc7_ = _loc6_.createEmptyMovieClip("FC" + nCheckID,_loc6_.getNextHighestDepth());
      var _loc8_ = new MovieClipLoader();
      _loc8_.addListener(_loc5_);
      _loc8_.loadClip(sFile,_loc7_);
   }
   function §\x19\x17\x12§(bSuccess, §\x19\x07\x15§, §\x19\x05\x02§)
   {
      this.networkBasics["\x17\x10\f"](_loc4_,!_loc2_ ? -1 : _loc3_);
   }
}
