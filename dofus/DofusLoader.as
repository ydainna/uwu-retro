§§pop()[getProperty(§§pop(), _X)] = function(nDataBank)
{
   return "[DataBank " + nDataBank + "] ";
};
_loc1_["\x16\x01\x05"] = function(sText)
{
   this["\x1e\n\x1b"] += new ank.utils.ExtendedString(_loc2_)["\x1a\r\n"]("&nbsp;"," ") + "\r\n";
};
_loc1_["\x18\x17\x15"] = function(sText)
{
   this.log("");
   this.log(_loc2_,"#CCCCCC","#CCCCCC");
};
_loc1_["\x18\x17\x13"] = function(sText)
{
   this.log(_loc2_,"#FF0000","#DD0000");
};
_loc1_["\x18\x17\f"] = function(sText)
{
   this.log(_loc2_,"#00FF00","#00AA00");
};
_loc1_["\x18\x17\x12"] = function(sText)
{
   this.log(_loc2_,"#FF9900","#DD7700");
};
_loc1_["\x18\x17\x16"] = function(sText)
{
   this.log(_loc2_,"#FFFF00","#AAAA00");
};
_loc1_.getText = function(§\x18\x11\x1b§, §\x16\x03\x1d§)
{
   var _loc4_ = this["\x18\x12\x16"][_loc2_][_global.CONFIG.language];
   if(_loc4_ == undefined || _loc4_.length == 0)
   {
      _loc4_ = _global[dofus.Constants["\x18\x03\x05"] + "_" + dofusutils.["\x17\t\x11"].STANDARD_DATA_BANK].data[_loc2_];
   }
   if(_loc4_ == undefined || _loc4_.length == 0)
   {
      _loc4_ = this["\x18\x12\x16"][_loc2_].fr;
   }
   return this.replaceText(_loc4_,_loc3_);
};
_loc1_.replaceText = function(sText, §\x16\x03\x1d§)
{
   if(_loc3_ == undefined)
   {
      _loc3_ = new Array();
   }
   var _loc4_ = new Array();
   var _loc5_ = new Array();
   var _loc6_ = 0;
   while(_loc6_ < _loc3_.length)
   {
      _loc4_.push("%" + (_loc6_ + 1));
      _loc5_.push(_loc3_[_loc6_]);
      _loc6_ = _loc6_ + 1;
   }
   return new ank.utils.ExtendedString(_loc2_)["\x1a\r\n"](_loc4_,_loc5_);
};
_loc1_["\x16\x1c\b"] = function()
{
   this["\x1c\r\f"].clear();
   this["\x1c\r\x0e"].clear();
   this["\x1c\r\r"].clear();
};
_loc1_["\x1a\x18\x1b"] = function(§\x19\x10\x10§, §\x19\t\x19§)
{
   this["\x1a\x1e\x16"](true);
   if(_loc2_ > _loc3_)
   {
      _loc2_ = _loc3_;
   }
   this["\x1d\x0f\x02"]["\x18\x1b\x1c"]._width = _loc2_ / _loc3_ * 100;
   this["\x1d\x0f\x02"]["\x1b\x12\b"].text = Math.floor(Number(this["\x1d\x0f\x02"]["\x18\x1b\x1c"]._width)) + "%";
};
_loc1_["\x1a\x1e\x16"] = function(bShow)
{
   if(this["\x1d\x0f\x02"]._visible != _loc2_)
   {
      this["\x1d\x0f\x02"]._visible = _loc2_;
   }
};
_loc1_["\x19\x01\b"] = function(§\x19\x10\x1a§)
{
};
_loc1_["\x1b\x01\x12"] = function(bShow)
{
   if(_loc2_)
   {
      this._mcWaitBar = this.attachMovie("GrayWaitBar","_mcWaitBar",1000,{_x:this["\x1d\x0f\x02"]._x + this["\x1d\x0f\x02"]["\x18\x1b\x1d"]._x,_y:this["\x1d\x0f\x02"]._y + this["\x1d\x0f\x02"]["\x18\x1b\x1d"]._y});
      this._mcWaitBar["\x1b\x12\x07"].text = "Waiting";
   }
   else
   {
      this._mcWaitBar.removeMovieClip();
   }
   if(_loc2_)
   {
      this["\x1a\x1e\x16"](false);
   }
};
_loc1_["\x1a\x1a\x18"] = function(§\x19\x10\x10§, §\x19\t\x19§)
{
   this["\x1b\x01\x0f"](true);
   if(_loc2_ > _loc3_)
   {
      _loc2_ = _loc3_;
   }
   this["\x1d\x11\x02"]["\x18\x1b\x1c"]._width = _loc2_ / _loc3_ * 100;
   this["\x1d\x11\x02"]["\x1b\x12\b"].text = Math.floor(Number(this["\x1d\x11\x02"]["\x18\x1b\x1c"]._width)) + "%";
};
_loc1_["\x1b\x01\x0f"] = function(bShow)
{
   if(_loc2_)
   {
      var _loc3_ = 10079232;
      var _loc4_ = (_loc3_ & 16711680) >> 16;
      var _loc5_ = (_loc3_ & 65280) >> 8;
      var _loc6_ = _loc3_ & 255;
      var _loc7_ = new Color(this["\x1d\x11\x02"]["\x18\x1b\x1c"]);
      var _loc8_ = new Object();
      _loc8_ = {ra:"0",rb:_loc4_,ga:"0",gb:_loc5_,ba:"0",bb:_loc6_,aa:"100",ab:"0"};
      _loc7_.setTransform(_loc8_);
      this["\x1d\r\x0b"]._visible = true;
      this["\x1d\x11\x02"]._visible = true;
   }
   else
   {
      this["\x1d\x11\x02"]._visible = false;
      this["\x1d\r\x0b"]._visible = false;
   }
};
_loc1_["\x1a\x1d\x04"] = function(bShow)
{
   this["\x1c\x15\f"]._visible = _loc2_;
   this["\x1d\x06\x11"]._visible = _loc2_;
   this["\x1c\x15\x10"]._visible = _loc2_;
   this["\x1d\x06\x12"]._visible = _loc2_;
   this["\x1c\t\n"]._visible = _loc2_;
};
_loc1_["\x1a\x1e\x11"] = function(bShow)
{
   this._btnNext._visible = _loc2_;
};
_loc1_["\x1a\x1e\x1b"] = function(bShow)
{
   this["\x1c\x0b\x01"]._visible = _loc2_;
};
_loc1_["\x1a\x1d\x06"] = function(bShow)
{
   this._btnContinue._visible = _loc2_;
};
_loc1_["\x1a\x1d\x01"] = function(bShow)
{
   this._btnClearCache._visible = _loc2_;
};
_loc1_["\x1a\x1d\x07"] = function(bShow)
{
   this["\x1c\t\x0e"]._visible = _loc2_;
};
_loc1_["\x1a\x1e\t"] = function(bShow)
{
   if(_loc2_ == undefined)
   {
      _loc2_ = !this["\x1c\r\f"]._visible;
   }
   this["\x1c\r\f"]._visible = _loc2_;
};
_loc1_["\x19\x0b\x06"] = function(§\x1a\x14\x04§, §\x1b\b\x1b§)
{
   new org.flashdevelop.utils.FlashConnect.trace("Non critical error : " + _loc2_,"dofus.DofusLoader::nonCriticalError","src/core/classes/dofus/DofusLoader.as",557);
   this["\x18\x17\x12"](_loc3_ + "<b>" + this.getText("WARNING") + "</b> : " + _loc2_);
   this["\x1c\x07\x04"] = true;
};
_loc1_["\x17\x03\x05"] = function(§\x1a\x14\x04§, §\x1b\b\x1b§, §\x16\x12\r§, §\x16\x03\x1d§, §\x1a\x1b\x18§)
{
   var _loc7_ = this["\x17\r\x1b"][_loc2_];
   this["\x17\r\x1b"].current = _loc2_;
   this["\x17\r\x1b"].from = _loc6_;
   var _loc8_ = this.replaceText(_loc7_[_global.CONFIG.language],_loc5_);
   if(_loc8_ == undefined || _loc8_.length == 0)
   {
      _loc8_ = this.replaceText(_loc7_.fr,_loc5_);
   }
   this["\x1c\r\r"].log("<b>" + this.getText("ERROR") + "</b> : " + _loc8_,"#FF0000","#DD0000");
   var _loc9_ = "<u><a href=\'" + _loc7_["link" + _global.CONFIG.language] + "\' target=\'_blank\'>" + this.getText("LINK_HELP") + "</a></u>";
   this["\x1c\r\r"].log(_loc9_,"#FF0000","#DD0000");
   this["\x16\x01\x05"](_loc3_ + "<b>" + this.getText("ERROR") + "</b> : " + _loc8_);
   this["\x1a\x1d\x07"](true);
   this["\x1a\x1e\x1b"](true);
   this["\x1a\x1d\x06"](true);
   if(_loc4_)
   {
      this["\x1a\x1d\x01"](true);
   }
};
_loc1_["\x17\x1a\x10"] = function(nDataBank)
{
   return ank.utils.["\x1a\x1c\b"].getLocal(dofus.Constants["\x18\x12\x15"] + "_" + nDataBank);
};
_loc1_["\x18\x02\x0f"] = function(nDataBank)
{
   return ank.utils.["\x1a\x1c\b"].getLocal(dofus.Constants["\x1b\x1a\x12"] + "_" + nDataBank);
};
_loc1_["\x17\x1c\x1d"] = function()
{
   return ank.utils.["\x1a\x1c\b"].getLocal(dofus.Constants.GLOBAL_SO_OPTIONS_NAME);
};
_loc1_["\x17\x1e\x13"] = function()
{
   return ank.utils.["\x1a\x1c\b"].getLocal(dofus.Constants["\x18\x03\b"]);
};
_loc1_["\x17\x1c\x1b"] = function()
{
   return ank.utils.["\x1a\x1c\b"].getLocal(dofus.Constants["\x18\x03\x06"]);
};
_loc1_["\x17\x14\x19"] = function()
{
   return ank.utils.["\x1a\x1c\b"].getLocal(dofus.Constants["\x18\x03\x02"]);
};
_loc1_["\x18\x13\x02"] = function(§\x16\x10\x15§)
{
   if(!this["\x1c\x02\n"])
   {
      this["\x1a\x1c\x16"](true);
   }
   if(_loc2_)
   {
      this._mcBanner["\x1a\x05\n"]();
   }
   else
   {
      this._mcBanner["\x1b\n\x1a"]();
   }
};
_loc1_["\x1a\x1c\x16"] = function(bShow)
{
   if(!this["\x1c\x06\n"])
   {
      this["\x15\x1d\x1c"](_loc2_);
   }
   else
   {
      var _loc3_ = _loc2_ != undefined ? _loc2_ : !this["\x1c\x02\n"];
      if(_loc3_)
      {
         if(this["\x1c\x02\n"])
         {
            return undefined;
         }
         new org.flashdevelop.utils.FlashConnect.trace("[showBanner] Show","dofus.DofusLoader::showBanner","src/core/classes/dofus/DofusLoader.as",642);
         var _loc4_ = "";
         if(this["\x1b\x1d\x17"].length > 0)
         {
            var _loc6_ = Math.floor(Math.random() * (this["\x1b\x1d\x17"].length + 1));
            if(_loc6_ < this["\x1b\x1d\x17"].length)
            {
               var _loc7_ = this["\x1b\x1d\x17"][_loc6_];
               var _loc5_ = this.createEmptyMovieClip("_mcBanner",this.getNextHighestDepth());
               eval("\x1a\x01\x1a")utils.["\x16\r\x1b"]["\x18\x15\x15"](dofus.Constants["\x18\x16\x06"] + _loc7_,_loc5_);
            }
         }
         var _loc8_ = "";
         if(!_loc5_)
         {
            _loc5_ = this.attachMovie("LoadingBanner_" + _global.CONFIG.language,"_mcBanner",this.getNextHighestDepth(),this["\x1d\b\x11"]);
         }
         if(!_loc5_)
         {
            _loc5_ = this.attachMovie("LoadingBanner_" + _loc8_,"_mcBanner",this.getNextHighestDepth(),this["\x1d\b\x11"]);
         }
         if(!_loc5_)
         {
            _loc5_ = this.attachMovie("LoadingBanner","_mcBanner",this.getNextHighestDepth(),this["\x1d\b\x11"]);
         }
         _loc5_["\x16\x15\x06"] = true;
         _loc5_.swapDepths(this["\x1d\b\x11"]);
      }
      else
      {
         if(!this["\x1c\x02\n"])
         {
            return undefined;
         }
         new org.flashdevelop.utils.FlashConnect.trace("[showBanner] Hide","dofus.DofusLoader::showBanner","src/core/classes/dofus/DofusLoader.as",676);
         this._mcBanner.swapDepths(this["\x1d\b\x11"]);
         this._mcBanner.removeMovieClip();
      }
      this["\x1c\x02\n"] = _loc3_;
   }
};
_loc1_.copyAndOrganizeDataServersForDataBank = function(nDataBank)
{
   var _loc3_ = _global.CONFIG.dataBanks;
   var _loc4_ = _loc3_[nDataBank].slice(0);
   var _loc5_ = 0;
   while(_loc5_ < _loc4_.length)
   {
      var _loc6_ = _loc4_[_loc5_];
      if(_loc6_.nPriority == undefined || _global.isNaN(_loc6_.nPriority))
      {
         _loc6_.nPriority = 0;
      }
      var _loc7_ = _loc6_.priority;
      _loc6_.rand = random(99999);
      _loc5_ = _loc5_ + 1;
   }
   _loc4_.sortOn(["priority","rand"],Array.DESCENDING);
   var _loc8_ = 0;
   while(_loc8_ < _loc4_.length)
   {
      new org.flashdevelop.utils.FlashConnect.trace(_loc4_[_loc8_].priority + " : " + _loc4_[_loc8_].url,"dofus.DofusLoader::copyAndOrganizeDataServersForDataBank","src/core/classes/dofus/DofusLoader.as",710);
      _loc8_ = _loc8_ + 1;
   }
   return _loc4_;
};
_loc1_.copyAndOrganizeDataBanks = function()
{
   var _loc2_ = new Array();
   var _loc3_ = _global.CONFIG.dataBanks;
   var _loc4_ = 0;
   while(_loc4_ < _loc3_.length)
   {
      _loc2_[_loc4_] = _loc3_[_loc4_].slice(0);
      _loc4_ = _loc4_ + 1;
   }
   var _loc5_ = 0;
   while(_loc5_ < _loc2_.length)
   {
      new org.flashdevelop.utils.FlashConnect.trace("=== Banque de données numéro " + _loc5_ + " ===","dofus.DofusLoader::copyAndOrganizeDataBanks","src/core/classes/dofus/DofusLoader.as",727);
      var _loc6_ = _loc2_[_loc5_];
      var _loc7_ = 0;
      while(_loc7_ < _loc6_.length)
      {
         var _loc8_ = _loc6_[_loc7_];
         if(_loc8_.nPriority == undefined || _global.isNaN(_loc8_.nPriority))
         {
            _loc8_.nPriority = 0;
         }
         var _loc9_ = _loc8_.priority;
         _loc8_.rand = random(99999);
         _loc7_ = _loc7_ + 1;
      }
      _loc6_.sortOn(["priority","rand"],Array.DESCENDING);
      var _loc10_ = 0;
      while(_loc10_ < _loc6_.length)
      {
         new org.flashdevelop.utils.FlashConnect.trace(_loc6_[_loc10_].priority + " : " + _loc6_[_loc10_].url,"dofus.DofusLoader::copyAndOrganizeDataBanks","src/core/classes/dofus/DofusLoader.as",750);
         _loc10_ = _loc10_ + 1;
      }
      _loc5_ = _loc5_ + 1;
   }
   return _loc2_;
};
_loc1_["\x16\x1a\x16"] = function()
{
   var _loc2_ = _global.api.lang.getConfigText("MAXIMUM_CLIENT_OCCURENCES");
   if(_loc2_ == undefined || (_global.isNaN(_loc2_) || _loc2_ < 1))
   {
      return true;
   }
   var _loc3_ = this["\x17\x1c\x1b"]().data.occ;
   var _loc4_ = new Array();
   var _loc5_ = 0;
   while(_loc5_ < _loc3_.length)
   {
      if(_loc3_[_loc5_].tick + dofus.Constants["\x18\x1a\x19"] > new Date().getTime())
      {
         _loc4_.push(_loc3_[_loc5_]);
      }
      _loc5_ = _loc5_ + 1;
   }
   var _loc6_ = _loc4_.length;
   if(!_global.api.datacenter.Player.isAuthorized && _loc6_ + 1 > _loc2_)
   {
      this["\x17\x03\x05"]("TOO_MANY_OCCURENCES",this["\x1b\r\x12"],false);
      return false;
   }
   this["\x1d\x1a\x12"] = Math.round(Math.random() * 1000);
   _loc4_.push({id:this["\x1d\x1a\x12"],tick:new Date().getTime()});
   this["\x17\x1c\x1b"]().data.occ = _loc4_;
   _global.setInterval(this,"refreshOccurenceTick",dofus.Constants["\x19\x12\x04"]);
   return true;
};
_loc1_.refreshOccurenceTick = function()
{
   var _loc2_ = this["\x17\x1c\x1b"]().data.occ;
   var _loc3_ = 0;
   while(_loc3_ < _loc2_.length)
   {
      if(_loc2_[_loc3_].id == this["\x1d\x1a\x12"])
      {
         _loc2_[_loc3_].tick = new Date().getTime();
         break;
      }
      _loc3_ = _loc3_ + 1;
   }
   this["\x17\x1c\x1b"]().data.occ = _loc2_;
};
_loc1_["\x16\x1a\t"] = function()
{
   var _loc2_ = System.capabilities.version;
   var _loc3_ = Number(_loc2_.split(" ")[1].split(",")[0]);
   if(_root.electron != undefined)
   {
      var _loc5_ = String(flash.external.ExternalInterface.call("getElectronVersion"));
      var _loc6_ = String(flash.external.ExternalInterface.call("getNodejsVersion"));
      var _loc4_ = " (Electron <b>" + _loc5_ + "</b> | Node.js <b>" + _loc6_ + "</b>)";
   }
   else
   {
      _loc4_ = System.capabilities.playerType.length != 0 ? " (" + System.capabilities.playerType + ")" : " ";
   }
   var _loc7_ = "Flash player" + _loc4_ + " <b>" + _loc2_ + "</b>";
   this.log(this["\x1b\r\x12"] + _loc7_);
   if(dofus.Constants.USE_JS_LOG && _global.CONFIG.isNewAccount)
   {
      this.getURL("JavaScript:WriteLog(\'checkFlashPlayer;" + _loc3_ + "\')");
      this.getURL("JavaScript:WriteLog(\'versionDate;" + dofus.Constants.VERSIONDATE + "\')");
   }
   if(_loc3_ >= 8)
   {
      var _loc8_ = System.security.sandboxType;
      if(_loc8_ != "localTrusted" && _loc8_ != "remote")
      {
         this["\x17\x03\x05"]("BAD_FLASH_SANDBOX",this["\x1b\r\x12"],false);
         return false;
      }
      return true;
   }
   this["\x17\x03\x05"]("BAD_FLASH_PLAYER",this["\x1b\r\x12"],false);
   this["\x1a\x1c\x16"](false);
   return false;
};
_loc1_.click = function(oEvent)
{
   loop0:
   switch(_loc2_.target)
   {
      case this["\x1c\t\n"]:
         this["\x16\x1b\x06"](this["\x1d\x06\x11"].selectedItem.data,this["\x1d\x06\x12"].selectedItem.data,true);
         break;
      case this._btnClearCache:
         this.clearCache();
         this.reboot();
         break;
      case this["\x1c\t\x0e"]:
         System.setClipboard(this["\x1e\n\x1b"]);
         break;
      case this["\x1c\x0b\x01"]:
         this["\x1a\x1c\x16"](false);
         this["\x1a\x1e\t"]();
         break;
      case this._btnContinue:
         switch(this["\x17\r\x1b"].current)
         {
            case "CHECK_LAST_VERSION_FAILED":
               var _loc3_ = new LoadVars();
               _loc3_.f = "";
               this["\x19\x15\x13"](true,_loc3_,"","");
               break;
            case "CHECK_LAST_VERSION_FAILED":
               var _loc4_ = new LoadVars();
               _loc4_.f = "";
               this["\x19\x15\x13"](true,_loc4_,"","");
         }
         break;
      case this._btnNext:
         this["\x1a\x1e\x11"](false);
         switch(this["\x1e\f\x1a"])
         {
            case "MODULE":
               this["\x18\t\x11"](_global.MODULE_CORE);
               break loop0;
            case "XTRA":
               this["\x18\t\x06"]();
         }
   }
};
_loc1_.itemSelected = function(oEvent)
{
   switch(_loc2_.target)
   {
      case this["\x1d\x06\x11"]:
         this["\x1a\x12\x12"]();
         break;
      case this["\x1d\x06\x12"]:
         this["\x1a\x12\x13"]();
   }
};
_loc1_.onKeyUp = function()
{
   if(Key.getCode() == Key.ESCAPE)
   {
      getURL("FSCommand:" add "quit","");
   }
};
_loc1_["\x1a\x16\x05"] = function(§\x1b\b\x17§)
{
   if(System.capabilities.playerType == "PlugIn" && (!_global.CONFIG.isStreaming && _root.electron == undefined))
   {
      this.getURL("javascript:setFlashStyle(\'flashid\', \'" + _loc2_ + "\');");
   }
};
_loc1_["\x16\x1c\x1c"] = function()
{
   if(System.capabilities.playerType == "PlugIn")
   {
      this.getURL("javascript:closeBrowserWindow();");
   }
};
_loc1_.reboot = function()
{
   new org.flashdevelop.utils.FlashConnect.trace("Loader reboot()","dofus.DofusLoader::reboot","src/core/classes/dofus/DofusLoader.as",959);
   var _loc2_ = 0;
   while(_loc2_ < dofus.Constants["\x18\x1d\x14"].length)
   {
      this["\x1d\r\n"].unloadClip(_global["MODULE_" + dofus.Constants["\x18\x1d\x14"][_loc2_][4]]);
      _loc2_ = _loc2_ + 1;
   }
   dofus["\x17\t\r"]["\x17\x15\f"]().removeMovieClip();
   this["\x18\n\x07"](_root);
};
_loc1_.clearCache = function()
{
   var _loc2_ = this["\x17\x1c\x1d"]();
   var _loc3_ = _loc2_.data.dataBanksCount;
   if(_loc3_ == undefined || _global.isNaN(_loc3_))
   {
      return undefined;
   }
   new org.flashdevelop.utils.FlashConnect.trace("Loader clearCache, " + _loc3_ + " databanks","dofus.DofusLoader::clearCache","src/core/classes/dofus/DofusLoader.as",981);
   var _loc4_ = 0;
   while(_loc4_ < _loc3_)
   {
      var _loc5_ = this["\x17\x1a\x10"](_loc4_);
      var _loc6_ = this["\x18\x02\x0f"](_loc4_);
      _loc5_.clear();
      _loc6_.clear();
      _loc4_ = _loc4_ + 1;
   }
};
_loc1_["\x1a\x1e\b"] = function(bShow, §\x16\x0f\x12§)
{
   this._visible = _loc2_;
};
_loc1_["\x1a\x1c\x17"] = function(§\x16\n\b§)
{
   this["\x1c\x0e\x07"] = this["\x1c\r\x0e"];
   this["\x18\x17\x15"](this.getText("STARTING"));
   this.log(this["\x1b\r\x12"] + "Dofus Retro <b>v" + dofus.Constants.VERSION + "." + dofus.Constants.SUBVERSION + "." + dofus.Constants.SUBSUBVERSION + "</b> " + (dofus.Constants.BETAVERSION <= 0 ? "" : "(<font color=\"#FF0000\"><i><b>BETA " + dofus.Constants.BETAVERSION + "</b></i></font>) ") + "(<b>" + dofus.Constants.VERSIONDATE + "</b>" + (!dofus.Constants.ALPHA ? "" : " <font color=\"#00FF00\"><i><b>ALPHA BUILD</b></i></font>") + ")");
   if(!this["\x16\x1a\t"]())
   {
      this["\x1a\x1e\x1b"](false);
      this["\x1a\x1d\x07"](false);
      return undefined;
   }
   this["\x16\x19\x18"]();
   this["\x1c\x0e\x07"] = this["\x1c\r\f"];
   if(_loc2_)
   {
      this.addToQueue({object:this,method:this["\x18\x15\x16"]});
   }
};
_loc1_["\x18\x15\x16"] = function()
{
   this["\x1a\x1e\b"](true);
   this["\x19\x01\b"](0);
   this["\x18\x17\x15"](this.getText("LOADING_CONFIG_FILE"));
   var _loc2_ = new XML();
   var §\x18\x15\x1b§ = this;
   _loc2_.ignoreWhite = true;
   _loc2_.onLoad = function(bSuccess)
   {
      eval("\x18\x15\x1b")["\x19\x15\x19"](_loc2_,this);
   };
   this["\x1b\x01\x12"](true);
   if(!dofus.Eelectron.getUserDataTextFileXMLContent(_loc2_,dofus.Constants["\x16\x1e\x0e"]))
   {
      _loc2_.load(dofus.Constants["\x16\x1e\x0e"]);
   }
};
_loc1_["\x19\x15\x19"] = function(bSuccess, §\x1b\x19\x19§)
{
   this["\x1b\x01\x12"](false);
   if(dofus.Constants.USE_JS_LOG && _global.CONFIG.isNewAccount)
   {
      this.getURL("JavaScript:WriteLog(\'onConfigLoaded;" + _loc2_ + "\')");
   }
   if(_loc2_)
   {
      this["\x1a\x1a\x18"](50,100);
      var _loc4_ = _loc3_.firstChild.firstChild;
      if(_loc3_.childNodes.length == 0 || _loc4_ == null)
      {
         this["\x17\x03\x05"]("CORRUPT_CONFIG_FILE",this["\x1b\r\x12"],false);
         return undefined;
      }
      _global.CONFIG["\x16\x15\x06"] = new Array();
      var _loc5_ = new ank.utils.ExtendedArray();
      var _loc6_ = false;
      while(_loc4_ != null)
      {
         switch(_loc4_.nodeName)
         {
            case "delay":
               _global.CONFIG.delay = _loc4_.attributes.value;
               break;
            case "rdelay":
               _global.CONFIG.rdelay = _loc4_.attributes.value;
               break;
            case "rcount":
               _global.CONFIG.rcount = _loc4_.attributes.value;
               break;
            case "hardcore":
               _global.CONFIG.onlyHardcore = true;
               break;
            case "streaming":
               _global.CONFIG.isStreaming = true;
               if(_loc4_.attributes.method)
               {
                  _global.CONFIG["\x1b\x0b\r"] = _loc4_.attributes.method;
               }
               else
               {
                  _global.CONFIG["\x1b\x0b\r"] = "compact";
               }
               _root["\x1d\x12\t"].attachMovie("UI_Misc","miniClip",_root["\x1d\x12\t"].getNextHighestDepth());
               break;
            case "expo":
               _global.CONFIG["\x18\r\x14"] = true;
               break;
            case "conf":
               var _loc7_ = _loc4_.attributes.name;
               var _loc8_ = _loc4_.attributes.type;
               if(_loc7_ != undefined && (dofus.Constants.TEST != true && _loc8_ != "test" || dofus.Constants.TEST == true && _loc8_ == "test"))
               {
                  var _loc9_ = new Object();
                  _loc9_.name = _loc7_;
                  var _loc10_ = Number(_loc4_.attributes.zaapconnectport);
                  _loc9_.zaapConnectPort = !(_loc10_ == undefined || _global.isNaN(_loc10_)) ? _loc10_ : dofus.ZaapConnect.TCP_DEFAULT_PORT;
                  _loc9_.debug = _loc4_.attributes.boo == "1";
                  _loc9_.debugRequests = _loc4_.attributes.debugrequests == "1" || _loc4_.attributes.debugrequests == "2";
                  _loc9_.logRequests = _loc4_.attributes.debugrequests == "2";
                  _loc9_.openRetroChat = _loc4_.attributes.openRetroChat == "1";
                  _loc9_.openRetroConsole = _loc4_.attributes.openRetroConsole == "1";
                  _loc9_.connexionServers = new ank.utils.ExtendedArray();
                  _loc9_.dataBanks = new Array();
                  var _loc11_ = _loc9_.dataBanks;
                  var _loc12_ = _loc4_.firstChild;
                  while(_loc12_ != null)
                  {
                     switch(_loc12_.nodeName)
                     {
                        case "databank":
                           var _loc13_ = Number(_loc12_.attributes.id);
                           if(_global.isNaN(_loc13_))
                           {
                              break;
                           }
                           var _loc14_ = _loc11_[_loc13_];
                           if(_loc14_ == undefined)
                           {
                              _loc14_ = new Array();
                              _loc11_[_loc13_] = _loc14_;
                           }
                           var _loc15_ = _loc12_.firstChild;
                           while(_loc15_ != null)
                           {
                              if((_loc0_ = _loc15_.nodeName) === "dataserver")
                              {
                                 var _loc16_ = _loc15_.attributes.url;
                                 var _loc17_ = _loc15_.attributes.type;
                                 var _loc18_ = Number(_loc15_.attributes.priority);
                                 if(_loc16_ != undefined && _loc16_ != "")
                                 {
                                    _loc14_.push({url:_loc16_,type:_loc17_,priority:_loc18_,dataBankId:_loc13_});
                                    System.security.allowDomain(_loc16_);
                                 }
                              }
                              _loc15_ = _loc15_.nextSibling;
                           }
                           var _loc19_ = this["\x17\x1c\x1d"]();
                           _loc19_.data.dataBanksCount = _loc14_.length;
                           _loc19_.flush();
                           break;
                        case "dataserver":
                           var _loc20_ = dofusutils.["\x17\t\x11"].STANDARD_DATA_BANK;
                           var _loc21_ = _loc11_[_loc20_];
                           if(_loc21_ == undefined)
                           {
                              _loc21_ = new Array();
                              _loc11_[_loc20_] = _loc21_;
                           }
                           var _loc22_ = _loc12_.attributes.url;
                           var _loc23_ = _loc12_.attributes.type;
                           var _loc24_ = Number(_loc12_.attributes.priority);
                           if(_loc22_ != undefined && _loc22_ != "")
                           {
                              _loc21_.push({url:_loc22_,type:_loc23_,priority:_loc24_,dataBankId:_loc20_});
                              System.security.allowDomain(_loc22_);
                           }
                           var _loc25_ = this["\x17\x1c\x1d"]();
                           _loc25_.data.dataBanksCount = _loc21_.length;
                           _loc25_.flush();
                           break;
                        case "connserver":
                           var _loc26_ = _loc12_.attributes.name;
                           var _loc27_ = _loc12_.attributes.ip;
                           var _loc28_ = _loc12_.attributes.port;
                           if(_loc26_ != undefined && (_loc27_ != "" && _loc28_ != undefined))
                           {
                              _loc9_.connexionServers.push({label:_loc26_,data:{name:_loc26_,ip:_loc27_,port:_loc28_}});
                           }
                           break;
                        default:
                           this["\x19\x0b\x06"](this.getText("UNKNOWN_TYPE_NODE") + " (" + _loc4_.nodeName + ")",this["\x1b\r\x12"]);
                     }
                     _loc12_ = _loc12_.nextSibling;
                  }
                  if(_loc11_[dofusutils.["\x17\t\x11"].STANDARD_DATA_BANK].length > 0)
                  {
                     _loc5_.push({label:_loc9_.name,data:_loc9_});
                  }
               }
               break;
            case "languages":
               _global.CONFIG["\x1b\x19\x1c"] = _loc4_.attributes.value.split(",");
               _global.CONFIG["\x1b\x02\x0e"] = _loc4_.attributes.skipcheck == "true" || _loc4_.attributes.skipcheck == "1";
               break;
            case "cacheasbitmap":
               var _loc29_ = _loc4_.firstChild;
               while(_loc29_ != null)
               {
                  var _loc30_ = _loc29_.attributes["\x17\f\x12"];
                  var _loc31_ = _loc29_.attributes.value == "true";
                  _global.CONFIG["\x16\x15\x06"][_loc30_] = _loc31_;
                  _loc29_ = _loc29_.nextSibling;
               }
               break;
            case "servers":
               var _loc32_ = _loc4_.firstChild;
               _global.CONFIG.customServersIP = new Array();
               while(_loc32_ != null)
               {
                  var _loc33_ = _loc32_.attributes.id;
                  var _loc34_ = _loc32_.attributes.ip;
                  var _loc35_ = _loc32_.attributes.port;
                  _global.CONFIG.customServersIP[_loc33_] = {ip:_loc34_,port:_loc35_};
                  _loc32_ = _loc32_.nextSibling;
               }
               break;
            default:
               this["\x19\x0b\x06"](this.getText("UNKNOWN_TYPE_NODE") + " (" + _loc4_.nodeName + ")",this["\x1b\r\x12"]);
         }
         _loc4_ = _loc4_.nextSibling;
      }
      if(_loc5_.length == 0)
      {
         this["\x17\x03\x05"]("CORRUPT_CONFIG_FILE",this["\x1b\r\x12"],false);
         return undefined;
      }
      this.log(this["\x1b\r\x12"] + this.getText("CONFIG_FILE_LOADED"));
      this["\x16\x05\x1d"](_loc5_);
   }
   this["\x17\x03\x05"]("NO_CONFIG_FILE",this["\x1b\r\x12"],false);
   return undefined;
};
_loc1_["\x16\x05\x1d"] = function(§\x17\n\x18§)
{
   if(_loc2_.length == 1 && _loc2_[0].data.connexionServers.length == 0)
   {
      this["\x16\x1b\x06"](_loc2_[0].data,undefined,false);
   }
   else
   {
      this["\x18\x17\x15"](this.getText("CHOOSE_CONFIGURATION"));
      this["\x1d\x06\x11"].dataProvider = _loc2_;
      var _loc3_ = this["\x17\x1c\x1d"]().data.loaderLastConfName;
      if(_loc3_ != undefined)
      {
         var _loc4_ = 0;
         while(_loc4_ < _loc2_.length)
         {
            if(_loc2_[_loc4_].data.name == _loc3_)
            {
               this["\x1d\x06\x11"].selectedIndex = _loc4_;
               break;
            }
            _loc4_ = _loc4_ + 1;
         }
      }
      else
      {
         this["\x1d\x06\x11"].selectedIndex = 0;
      }
      this["\x1a\x12\x12"]();
      this["\x1a\x1d\x04"](true);
   }
};
_loc1_["\x1a\x12\x12"] = function()
{
   var _loc2_ = this["\x1d\x06\x11"].selectedItem.data.connexionServers;
   this["\x1d\x06\x12"].dataProvider = _loc2_;
   var _loc3_ = this["\x17\x1c\x1d"]();
   var _loc4_ = _loc3_.data.loaderConf[this["\x1d\x06\x11"].selectedItem.label];
   if(_loc4_ != undefined)
   {
      var _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         if(_loc2_[_loc5_].data.name == _loc4_)
         {
            this["\x1d\x06\x12"].selectedIndex = _loc5_;
            break;
         }
         _loc5_ = _loc5_ + 1;
      }
   }
   else if(_loc2_.length > 0)
   {
      this["\x1d\x06\x12"].selectedIndex = 0;
   }
   var _loc6_ = this["\x1d\x06\x11"].selectedItem.label;
   var _loc7_ = _loc6_ != _loc3_.data.loaderLastConfName;
   if(_loc7_)
   {
      this.clearCache();
   }
   _loc3_.data.loaderLastConfName = _loc6_;
   _loc3_.flush();
   this["\x1a\x12\x13"]();
};
_loc1_["\x1a\x12\x13"] = function()
{
   var _loc2_ = this["\x17\x1c\x1d"]();
   if(_loc2_.data.loaderConf == undefined)
   {
      _loc2_.data.loaderConf = new Object();
   }
   _loc2_.data.loaderConf[this["\x1d\x06\x11"].selectedItem.label] = this["\x1d\x06\x12"].selectedItem.label;
   _loc2_.flush();
};
_loc1_["\x16\x1b\x06"] = function(§\x19\x12\f§, §\x1a\x02\x02§, §\x16\x0e\x11§)
{
   this["\x1a\x1d\x04"](false);
   if(_loc4_)
   {
      this.log(this["\x1b\r\x12"] + this.getText("CURRENT_CONFIG",[_loc2_.name]));
      if(_loc3_ != undefined)
      {
         this.log(this["\x1b\r\x12"] + this.getText("CURRENT_SERVER",[_loc3_.name]));
      }
   }
   _global.CONFIG.dataBanks = _loc2_.dataBanks;
   _global.CONFIG.connexionServer = _loc3_;
   _global.CONFIG.zaapConnectPort = _loc2_.zaapConnectPort;
   if(_loc2_.debug)
   {
      dofus.Constants.DEBUG = true;
      this["\x18\x17\x16"](this["\x1b\r\x12"] + this.getText("DEBUG_MODE"));
   }
   if(_loc2_.debugRequests)
   {
      dofus.Constants["\x17\x05\x17"] = true;
   }
   if(_loc2_.logRequests)
   {
      dofus.Constants.DEBUG_ENCRYPTION = true;
   }
   if(_loc2_.openRetroChat)
   {
      dofus.Eelectron.retroChatOpen();
   }
   if(_loc2_.openRetroConsole)
   {
      dofus.Eelectron.retroConsoleOpen();
   }
   dofus.ZaapConnect.newInstance();
   this["\x18\x16\b"]();
};
_loc1_["\x1b\t\x12"] = function()
{
   this["\x1d\x1e\x0f"]--;
   if(this["\x1d\x1e\x0f"] <= 0)
   {
      this["\x1d\x1e\x0f"] = 20;
      this.getURL("javascript:startTimer()");
   }
   if(this["\x1c\x06\x04"])
   {
      this.addToQueue({object:this,method:this["\x1b\t\x12"]});
   }
};
_loc1_["\x18\x16\x07"] = function()
{
   if(dofus.Constants.USE_JS_LOG && _global.CONFIG.isNewAccount)
   {
      this.getURL("javascript:startTimer()");
      this["\x1b\t\x12"]();
   }
   this["\x18\x17\x15"](this.getText("LOAD_LANG_FILE"));
   this["\x1e\f\x1a"] = "LANG";
   this._nLoadedLangFiles = 0;
   var _loc2_ = this.copyAndOrganizeDataBanks();
   this._aCurrentDataBanks = _loc2_;
   var _loc3_ = 0;
   while(_loc3_ < _loc2_.length)
   {
      var _loc4_ = this["\x17\x1a\x10"](_loc3_);
      var _loc5_ = _loc4_.data.VERSIONS.lang;
      _global[dofus.Constants["\x18\x03\x05"] + "_" + _loc3_] = _loc4_;
      var _loc6_ = this.getDataBankLogHeader(_loc3_);
      this.log(this["\x1b\r\x12"] + _loc6_ + this.getText("CURRENT_LANG_FILE_VERSION",[_loc5_ != undefined ? _loc5_ : "Aucune"]));
      this.log(this["\x1b\r\x12"] + _loc6_ + this.getText("CHECK_LAST_VERSION"));
      var _loc7_ = this._aXtraCurrentVersion[_loc3_];
      if(_loc7_ == undefined)
      {
         _loc7_ = new Array();
         this._aXtraCurrentVersion[_loc3_] = _loc7_;
      }
      _loc7_.lang = !_global.isNaN(_loc5_) ? Number(_loc5_) : 0;
      this["\x16\x1a\f"]("lang," + _loc5_,_loc3_);
      _loc3_ = _loc3_ + 1;
   }
};
_loc1_["\x16\x1a\f"] = function(sFiles, nDataBank)
{
   var _loc2_ = this._aCurrentDataBanks[nDataBank];
   if(_loc2_.length < 1)
   {
      if(!this["\x1c\x06\x0b"])
      {
         this["\x17\x03\x05"]("CHECK_LAST_VERSION_FAILED",this["\x1b\r\x12"],true,new Array(),"checkXtra");
      }
      else
      {
         this["\x19\x0b\x06"]("CHECK_LAST_VERSION_FAILED",this["\x1b\r\x12"],true);
         var _loc3_ = new LoadVars();
         var _loc4_ = new Array();
         var _loc5_ = this["\x1d\r\f"].VERSIONS[_global.CONFIG.language];
         for(var i in _loc5_)
         {
            _loc4_.push(i + "," + _global.CONFIG.language + "," + _loc5_[i]);
         }
         _loc3_.f = _loc4_.join("|");
         this["\x19\x15\x13"](true,_loc3_,undefined,undefined,nDataBank);
      }
      return undefined;
   }
   var §\x1a\x02\x02§ = _loc2_.shift();
   if(eval("\x1a\x02\x02").type == "local")
   {
      this["\x16\x1a\f"](sFiles,nDataBank);
      return undefined;
   }
   var §\x1b\f\x12§ = eval("\x1a\x02\x02").url + "lang/versions_" + _global.CONFIG.language + ".txt" + "?wtf=" + Math.random();
   new org.flashdevelop.utils.FlashConnect.trace("checkLanguageWithNextHost " + eval("\x1b\f\x12") + " : " + nDataBank,"dofus.DofusLoader::checkLanguageWithNextHost","src/core/classes/dofus/DofusLoader.as",1628);
   var _loc6_ = new LoadVars();
   var §\x18\x15\x1b§ = this;
   _loc6_.onLoad = function(bSuccess)
   {
      eval("\x18\x15\x1b")["\x19\x0b\x06"](eval("\x18\x15\x1b").getText("IMPOSSIBLE_TO_GET_FILE",[eval("\x1b\f\x12")]),eval("\x18\x15\x1b")["\x1b\r\x12"] + eval("\x18\x15\x1b")["\x1b\r\x12"]);
      eval("\x18\x15\x1b")["\x19\x15\x13"](_loc2_,this,eval("\x1a\x02\x02").url,sFiles,nDataBank);
   };
   this["\x1b\x01\x12"](true);
   _loc6_.load(eval("\x1b\f\x12"),this,"GET");
};
_loc1_["\x19\x15\x13"] = function(bSuccess, §\x18\x17\x1d§, §\x1b\b\x06§, §\x1a\x1b\x11§, nDataBank)
{
   this["\x1b\x01\x12"](false);
   if(_loc2_ && _loc3_.f != undefined)
   {
      this["\x1a\x1a\x18"](100,100);
      this._aDistantFilesList[nDataBank] = _loc3_.f;
      var _loc7_ = _loc3_.f.substr(_loc3_.f.indexOf("lang,")).split("|")[0].split(",");
      var _loc8_ = false;
      if(_loc3_.f != "")
      {
         var _loc9_ = _loc7_[2];
         new org.flashdevelop.utils.FlashConnect.trace(">>>>> " + _loc9_,"dofus.DofusLoader::onCheckLanguage","src/core/classes/dofus/DofusLoader.as",1667);
         if(_global.CONFIG.language == this["\x17\x1a\x10"](nDataBank).data.LANGUAGE && (this._aXtraCurrentVersion[nDataBank].lang != undefined && _loc9_ == this._aXtraCurrentVersion[nDataBank].lang))
         {
            _loc8_ = true;
         }
         else
         {
            this.log(this["\x1b\r\x12"] + this.getDataBankLogHeader(nDataBank) + this.getText("NEW_LANG_FILE_AVAILABLE",[_loc7_[2]]));
            if(this["\x1c\b\x0e"])
            {
               if(this._aXtraCurrentVersion[nDataBank].lang == 0)
               {
                  _loc9_ = this["\x1d\r\f"].VERSIONS[_global.CONFIG.language].lang;
               }
            }
            this["\x1b\x15\f"](_loc7_[2],nDataBank);
         }
      }
      else
      {
         _loc8_ = true;
      }
      if(_loc8_)
      {
         this._nLoadedLangFiles++;
         this.log(this["\x1b\r\x12"] + this.getText("NO_NEW_VERSION_AVAILABLE"));
         if(this._aCurrentDataBanks.length == this._nLoadedLangFiles)
         {
            this["\x18\x16\r"]();
         }
      }
   }
   else
   {
      this["\x19\x0b\x06"](this.getText("IMPOSSIBLE_TO_JOIN_SERVER",[_loc4_]),this["\x1b\r\x12"] + this["\x1b\r\x12"]);
      this["\x16\x1a\f"](_loc5_,nDataBank);
   }
};
_loc1_["\x1b\x15\f"] = function(§\x19\x07\x13§, nDataBank)
{
   this["\x1c\x0b\x17"] = true;
   this["\x1b\x01\x12"](true);
   var _loc4_ = new dofusutils.["\x18\x12\x10"]();
   _loc4_.addListener(this);
   var _loc5_ = dofus.Constants["\x18\x12\x15"] + "_" + nDataBank;
   var _loc6_ = this.copyAndOrganizeDataServersForDataBank(nDataBank);
   var _loc7_ = this.getDataBankMcContainer(nDataBank);
   _loc4_.loadLangFile(_loc6_,"lang/swf/lang_" + _global.CONFIG.language + "_" + _loc2_ + ".swf",_loc7_,_loc5_,"lang",_global.CONFIG.language,false);
};
_loc1_.getDataBankMcContainer = function(nDataBank)
{
   var _loc3_ = "db" + nDataBank;
   var _loc4_ = this["\x1d\n\x06"][_loc3_];
   if(_loc4_ == undefined)
   {
      _loc4_ = this["\x1d\n\x06"].createEmptyMovieClip(_loc3_,this["\x1d\n\x06"].getNextHighestDepth());
   }
   return _loc4_;
};
_loc1_["\x18\x16\r"] = function()
{
   this["\x18\x17\x15"](this.getText("LOAD_MODULES"));
   this["\x1e\f\x1a"] = "MODULE";
   this["\x1b\x1c\x0e"] = dofus.Constants["\x18\x1d\x14"].slice(0);
   this["\x18\x16\x10"]();
};
_loc1_["\x18\x16\x10"] = function()
{
   if(this["\x1b\x1c\x0e"].length < 1)
   {
      this["\x18\x17\x15"](this.getText("INIT_END"));
      this["\x19\x16\x02"](_global.MODULE_CORE);
      return undefined;
   }
   this["\x1b\x1c\r"] = this["\x1b\x1c\x0e"].shift();
   var _loc2_ = this["\x1b\x1c\r"][0];
   var _loc3_ = this["\x1b\x1c\r"][1];
   var _loc4_ = this["\x1b\x1c\r"][2];
   var _loc5_ = this["\x1b\x1c\r"][4];
   this["\x1d\n\x0f"] = this["\x1d\r\x1b"].createEmptyMovieClip("mc" + _loc5_,this["\x1d\r\x1b"].getNextHighestDepth());
   this["\x1e\x0e\r"] = _global.setInterval(this["\x19\x1d\x1b"],1000,this,this["\x1d\r\n"],this["\x1d\n\x0f"]);
   this["\x1d\r\n"].loadClip(_loc3_,this["\x1d\n\x0f"]);
};
_loc1_["\x19\x16\x02"] = function(§\x18\x1b\x14§)
{
   if(_global.CONFIG.isStreaming)
   {
      this["\x1c\x06\x04"] = false;
      this.getURL("javascript:stopTimer()");
   }
   if((this["\x1c\x07\x04"] || this["\x1c\x0b\x17"]) && (dofus.Constants.DEBUG && dofus.kernel.FAST_SWITCHING_SERVER_REQUEST == undefined))
   {
      this["\x1a\x1e\x11"](true);
      this["\x1a\x1d\x07"](true);
      this["\x1a\x1e\x1b"](true);
   }
   else
   {
      this["\x18\t\x11"](_loc2_);
   }
};
_loc1_["\x18\t\x11"] = function(§\x18\x1b\x14§)
{
   Key.removeListener(this);
   var _loc3_ = null;
   if((_loc3_ = dofus["\x17\t\r"].getInstance()) == undefined)
   {
      _loc3_ = new dofus["\x17\t\r"](_loc2_);
      if(Key.isDown(Key.SHIFT))
      {
         Stage.scaleMode = "exactFit";
      }
   }
   _loc3_["\x18\n\x11"]();
   this["\x1c\x07\x04"] = false;
   this["\x1c\x0b\x17"] = false;
};
_loc1_["\x18\x16\b"] = function()
{
   this["\x18\x17\x15"](this.getText("LOAD_XTRA_FILES"));
   this._aCurrentDataBanks = this.copyAndOrganizeDataBanks();
   this["\x16\x1a\x0f"](dofus.Constants["\x18\x12\x14"]);
   this["\x1b\x01\x12"](true);
};
_loc1_["\x16\x1a\x0f"] = function(sFiles)
{
   var _loc2_ = this._aCurrentDataBanks[dofusutils.["\x17\t\x11"].STANDARD_DATA_BANK];
   if(_loc2_.length < 1)
   {
      this["\x19\x0b\x06"]("CHECK_LAST_VERSION_FAILED",this["\x1b\r\x12"] + this["\x1b\r\x12"],true);
      this["\x18\x16\x07"]();
      return undefined;
   }
   var _loc3_ = _loc2_.shift();
   var §\x1b\f\x12§ = _loc3_.url + sFiles;
   var §\x18\x15\x1b§ = this;
   var _loc4_ = new MovieClipLoader();
   var _loc5_ = new Object();
   _loc5_.onLoadInit = function(§\x18\x1b\f§)
   {
      new org.flashdevelop.utils.FlashConnect.trace("Chargement du fichier de version depuis " + eval("\x1b\f\x12"),"dofus.DofusLoader::checkLocalFileListWithNextHost","src/core/classes/dofus/DofusLoader.as",1882);
      eval("\x18\x15\x1b")["\x18\x16\x07"]();
      eval("\x18\x15\x1b")["\x1c\x06\x0b"] = true;
   };
   _loc5_.onLoadError = function(§\x18\x1b\f§)
   {
      new org.flashdevelop.utils.FlashConnect.trace("Error on load " + eval("\x1b\f\x12"),"dofus.DofusLoader::checkLocalFileListWithNextHost","src/core/classes/dofus/DofusLoader.as",1888);
      eval("\x18\x15\x1b")["\x19\x0b\x06"](eval("\x18\x15\x1b").getText("IMPOSSIBLE_TO_GET_FILE",[eval("\x1b\f\x12")]),eval("\x18\x15\x1b")["\x1b\r\x12"] + eval("\x18\x15\x1b")["\x1b\r\x12"]);
      eval("\x18\x15\x1b")["\x16\x1a\x0f"](sFiles);
   };
   _loc4_.addListener(_loc5_);
   this.log(this["\x1b\r\x12"] + this.getDataBankLogHeader(_loc3_.dataBankId) + this.getText("CHECKING_VERSIONS"));
   _loc4_.loadClip(eval("\x1b\f\x12"),this["\x1d\r\f"]);
};
_loc1_["\x18\x17\x02"] = function()
{
   this["\x16\x1c\b"]();
   this["\x1a\x1e\b"](true);
   this["\x1a\x1c\x16"](true);
   this["\x1a\x1e\t"](false);
   this["\x1a\x1e\x1b"](false);
   this["\x1a\x1d\x04"](false);
   this["\x1a\x1e\x11"](false);
   this["\x1a\x1d\x06"](false);
   this["\x1a\x1d\x01"](false);
   this["\x1a\x1d\x07"](false);
   this["\x1a\x1e\x16"](false);
   this["\x18\x13\x02"](true);
   this["\x1a\x1a\x18"](0,100);
   this["\x1a\x1c\x17"]();
   if(!this["\x16\x1a\x16"]())
   {
      this["\x1a\x1e\x1b"](false);
      this["\x1a\x1d\x07"](false);
      return undefined;
   }
   this["\x18\x17\x15"](this.getText("LOAD_XTRA_FILES"));
   this.log(this["\x1b\r\x12"] + this.getText("CHECK_LAST_VERSION"));
   this["\x1e\f\x1a"] = "XTRA";
   this["\x19\x01\b"](-60);
   var _loc2_ = dofusutils.["\x16\x04\x06"].getInstance();
   if(_loc2_ != undefined)
   {
      _loc2_.lang["\x16\x1c\f"]();
   }
   var _loc3_ = this.copyAndOrganizeDataBanks();
   this._aCurrentDataBanks = _loc3_;
   this["\x1b\x01\x12"](false);
   this._nTotalXtraFilesToLoad = 0;
   var _loc4_ = _global.api.lang.getConfigText("XTRA_FILE");
   var _loc5_ = 0;
   while(_loc5_ < _loc3_.length)
   {
      var _loc6_ = this["\x18\x02\x0f"](_loc5_);
      _global[dofus.Constants["\x18\x03\n"] + "_" + _loc5_] = _loc6_;
      var _loc7_ = _loc6_.data.VERSIONS;
      var _loc8_ = 0;
      while(_loc8_ < _loc4_.length)
      {
         var _loc9_ = _loc4_[_loc8_];
         var _loc10_ = _loc7_[_loc9_] != undefined ? _loc7_[_loc9_] : 0;
         var _loc11_ = this._aXtraCurrentVersion[_loc5_];
         if(_loc11_ == undefined)
         {
            _loc11_ = new Array();
            this._aXtraCurrentVersion[_loc5_] = _loc11_;
         }
         _loc11_[_loc9_] = _loc10_;
         _loc8_ = _loc8_ + 1;
      }
      var _loc12_ = this._aDistantFilesList[_loc5_].split("|");
      this["\x1c\x01\x16"][_loc5_] = _loc12_;
      this._nTotalXtraFilesToLoad += _loc12_.length;
      _loc5_ = _loc5_ + 1;
   }
   this._nRemainingXtraFilesToLoad = this._nTotalXtraFilesToLoad;
   var _loc13_ = 0;
   while(_loc13_ < _loc3_.length)
   {
      this["\x1b\x15\x12"](_loc13_);
      _loc13_ = _loc13_ + 1;
   }
};
_loc1_["\x1b\x15\x12"] = function(nDataBank)
{
   var _loc3_ = this["\x1c\x01\x16"][nDataBank];
   var _loc4_ = this._aCurrentXtraLoadFile[nDataBank];
   if(this["\x1c\b\x0e"] && _loc4_ != undefined)
   {
      _loc3_.push(_loc4_);
   }
   if(_loc3_.length >= 1)
   {
      while(true)
      {
         if(_loc3_.length > 0)
         {
            this["\x1a\x1a\x18"](10 + (90 - 90 / this._nTotalXtraFilesToLoad * this._nRemainingXtraFilesToLoad),100);
            this._nRemainingXtraFilesToLoad--;
            var _loc5_ = _loc3_.shift().split(",");
            this["\x1b\x1c\x0f"][nDataBank] = _loc5_;
            if(_loc3_.length > 0 && _loc5_[2])
            {
               if(!this["\x1c\b\x0e"])
               {
                  this._aCurrentXtraLoadFile[nDataBank] = _loc5_;
               }
               var _loc6_ = _loc5_[0];
               var _loc7_ = _loc5_[1];
               var _loc8_ = _loc5_[2];
               if(_loc6_ != "lang")
               {
                  this["\x1d\x0f\x02"]["\x1b\x12\x07"].text = _loc6_;
                  var _loc9_ = this._aXtraCurrentVersion[nDataBank][_loc6_];
                  if(_global.CONFIG.language == this["\x17\x1a\x10"](nDataBank).data.LANGUAGE && Number(_loc8_) == _loc9_)
                  {
                     new org.flashdevelop.utils.FlashConnect.trace("[        ] " + _loc6_,"dofus.DofusLoader::updateNextXtra","src/core/classes/dofus/DofusLoader.as",2040);
                  }
                  else
                  {
                     new org.flashdevelop.utils.FlashConnect.trace(_loc6_ + ", locale : " + _loc9_ + " , distant : " + _loc8_ + ", databank : " + nDataBank,"dofus.DofusLoader::updateNextXtra","src/core/classes/dofus/DofusLoader.as",2044);
                     if(!this["\x1c\x06\x0b"])
                     {
                        if(this["\x1c\b\x0e"])
                        {
                           new org.flashdevelop.utils.FlashConnect.trace("erreur fatale","dofus.DofusLoader::updateNextXtra","src/core/classes/dofus/DofusLoader.as",2070);
                           return undefined;
                        }
                        new org.flashdevelop.utils.FlashConnect.trace("[serverDL] " + _loc6_,"dofus.DofusLoader::updateNextXtra","src/core/classes/dofus/DofusLoader.as",2074);
                        break;
                     }
                     if(!this["\x1c\b\x0e"])
                     {
                        new org.flashdevelop.utils.FlashConnect.trace("[serverDL] " + _loc6_,"dofus.DofusLoader::updateNextXtra","src/core/classes/dofus/DofusLoader.as",2063);
                        break;
                     }
                     if(this._aXtraCurrentVersion[nDataBank][_loc6_] == 0)
                     {
                        new org.flashdevelop.utils.FlashConnect.trace("[localDL ] " + _loc6_,"dofus.DofusLoader::updateNextXtra","src/core/classes/dofus/DofusLoader.as",2054);
                        _loc8_ = this["\x1d\r\f"].VERSIONS[_global.CONFIG.language][_loc6_];
                        break;
                     }
                     new org.flashdevelop.utils.FlashConnect.trace("[        ] " + _loc6_,"dofus.DofusLoader::updateNextXtra","src/core/classes/dofus/DofusLoader.as",2059);
                  }
               }
            }
            continue;
         }
         this["\x19\x0b\x05"]();
      }
      this["\x1c\x0b\x17"] = true;
      _loc5_[3] = _loc5_[0] + "_" + _loc5_[1] + "_" + _loc5_[2];
      this.log(this["\x1b\r\x12"] + this.getDataBankLogHeader(nDataBank) + this.getText("UPDATE_FILE",[_loc6_]));
      this["\x1b\x01\x12"](true);
      var _loc10_ = new dofusutils.["\x18\x12\x10"]();
      _loc10_.addListener(this);
      if(dofus.Constants.USE_JS_LOG && _global.CONFIG.isNewAccount)
      {
         this.getURL("JavaScript:WriteLog(\'updateNextXtra;" + _loc6_ + "_" + _global.CONFIG.language + "_" + _loc8_ + "\')");
      }
      var _loc11_ = dofus.Constants["\x1b\x1a\x12"] + "_" + nDataBank;
      var _loc12_ = this.copyAndOrganizeDataServersForDataBank(nDataBank);
      var _loc13_ = this.getDataBankMcContainer(nDataBank);
      _loc10_.loadLangFile(_loc12_,"lang/swf/" + _loc6_ + "_" + _global.CONFIG.language + "_" + _loc8_ + ".swf",_loc13_,_loc11_,_loc6_,_global.CONFIG.language,true);
      return undefined;
   }
   this["\x19\x0b\x05"]();
};
_loc1_["\x19\x0b\x05"] = function()
{
   var _loc2_ = true;
   var _loc3_ = 0;
   while(_loc3_ < this["\x1c\x01\x16"].length)
   {
      var _loc4_ = this["\x1c\x01\x16"][_loc3_];
      if(_loc4_ != undefined && _loc4_.length > 0)
      {
         _loc2_ = false;
         break;
      }
      _loc3_ = _loc3_ + 1;
   }
   if(!_loc2_)
   {
      return undefined;
   }
   this["\x18\x17\x15"](this.getText("INIT_END"));
   if(dofus.Constants.USE_JS_LOG && _global.CONFIG.isNewAccount)
   {
      this.getURL("JavaScript:WriteLog(\'XtraLangLoadEnd\')");
   }
   if((this["\x1c\x07\x04"] || this["\x1c\x0b\x17"]) && (dofus.Constants.DEBUG && (Key.isDown(Key.SHIFT) && dofus.kernel.FAST_SWITCHING_SERVER_REQUEST == undefined)))
   {
      this["\x1a\x1c\x16"](false);
      this["\x1a\x1e\t"]();
      this["\x1a\x1e\x11"](true);
      this["\x1a\x1d\x07"](true);
      this["\x1a\x1e\x1b"](true);
   }
   else
   {
      this["\x18\t\x06"]();
   }
};
_loc1_["\x18\t\x06"] = function()
{
   this["\x1a\x1e\b"](false);
   _global.api.kernel["\x19\x19\x01"]();
   this["\x1c\x07\x04"] = false;
   this["\x1c\x0b\x17"] = false;
   this["\x18\x13\x02"](false);
   this["\x1a\x1c\x16"](false);
};
_loc1_["\x16\x19\x18"] = function()
{
   var _loc2_ = new Date();
   var _loc3_ = _loc2_.getFullYear() + "-" + (_loc2_.getMonth() + 1) + "-" + _loc2_.getDate();
   if(!this["\x17\x14\x19"]().data.clearDate)
   {
      this.clearCache();
      this["\x17\x14\x19"]().data.clearDate = _loc3_;
      this["\x17\x14\x19"]().flush(100);
      return false;
   }
   var _loc4_ = _global[dofus.Constants["\x18\x03\x05"] + "_" + dofusutils.["\x17\t\x11"].STANDARD_DATA_BANK];
   if(_loc4_ && (_loc4_.data.C.CLEAR_DATE && _loc4_.data.C.ENABLED_AUTO_CLEARCACHE))
   {
      if(this["\x17\x14\x19"]().data.clearDate < _loc4_.data.C.CLEAR_DATE)
      {
         this.clearCache();
         this["\x17\x14\x19"]().data.clearDate = _loc4_.data.C.CLEAR_DATE;
         this["\x17\x14\x19"]().flush();
         this.reboot();
         return false;
      }
   }
   return true;
};
_loc1_.onLoadStart = function(§\x18\x1b\f§)
{
   this["\x1b\x01\x12"](false);
   this["\x1a\x18\x1b"](0,100);
};
_loc1_["\x19\x1d\x1b"] = function(§\x1a\x1c\f§, §\x18\x13\x1b§, §\x1b\r\x19§)
{
   var _loc5_ = _loc3_.getProgress(_loc4_);
   _loc2_["\x1a\x18\x1b"](Number(_loc5_.bytesLoaded),Number(_loc5_.bytesTotal));
};
_loc1_.onLoadError = function(§\x18\x1b\f§, §\x17\r\x18§, §\x18\x07\x16§, §\x1a\x02\x02§)
{
   _global.clearInterval(this["\x1e\x0e\r"]);
   this["\x1a\x1e\x16"](false);
   this["\x1b\x01\x12"](false);
   var _loc6_ = _loc5_.dataBankId;
   switch(this["\x1e\f\x1a"])
   {
      case "LANG":
         if(_loc5_.type == "local")
         {
            this.log(this["\x1b\r\x12"] + this["\x1b\r\x12"] + this.getDataBankLogHeader(_loc6_) + this.getText("NO_FILE_IN_LOCAL",["lang",_loc5_.url]));
         }
         else
         {
            if(dofus.Constants.USE_JS_LOG && _global.CONFIG.isNewAccount)
            {
               this.getURL("JavaScript:WriteLog(\'onLoadError LANG-" + _loc5_.url + "lang" + "\')");
            }
            this["\x19\x0b\x06"](this.getText("IMPOSSIBLE_TO_DOWNLOAD_FILE",["lang",_loc5_.url]),this["\x1b\r\x12"] + this["\x1b\r\x12"] + this.getDataBankLogHeader(_loc6_));
         }
         break;
      case "MODULE":
         if(dofus.Constants.USE_JS_LOG && _global.CONFIG.isNewAccount)
         {
            this.getURL("JavaScript:WriteLog(\'onLoadError MODULE-" + this["\x1b\x1c\r"][4] + "\')");
         }
         this["\x17\x03\x05"]("IMPOSSIBLE_TO_LOAD_MODULE",this["\x1b\r\x12"],true,[this["\x1b\x1c\r"][4]]);
         break;
      case "XTRA":
         var _loc7_ = this["\x1b\x1c\x0f"][_loc6_];
         if(_loc5_.type == "local")
         {
            this.log(this["\x1b\r\x12"] + this["\x1b\r\x12"] + this.getDataBankLogHeader(_loc6_) + this.getText("NO_FILE_IN_LOCAL",[_loc7_[3],_loc5_.url]));
            break;
         }
         if(dofus.Constants.USE_JS_LOG && _global.CONFIG.isNewAccount)
         {
            this.getURL("JavaScript:WriteLog(\'onLoadError XTRA-" + _loc5_.url + _loc7_[3] + "\')");
         }
         this["\x19\x0b\x06"](this.getText("IMPOSSIBLE_TO_DOWNLOAD_FILE",[_loc7_[3],_loc5_.url]),this["\x1b\r\x12"] + this["\x1b\r\x12"] + this.getDataBankLogHeader(_loc6_));
         break;
   }
};
_loc1_.onLoadComplete = function(§\x18\x1b\f§)
{
   _global.clearInterval(this["\x1e\x0e\r"]);
   if(this["\x1e\f\x1a"] == "MODULE")
   {
      _global["MODULE_" + this["\x1b\x1c\r"][4]] = _loc2_;
   }
};
_loc1_.onLoadInit = function(§\x18\x1b\f§, §\x1a\x02\x02§)
{
   this["\x1a\x1e\x16"](false);
   var _loc4_ = _loc3_.dataBankId;
   switch(this["\x1e\f\x1a"])
   {
      case "LANG":
         this._nLoadedLangFiles++;
         this["\x18\x17\f"](this["\x1b\r\x12"] + this.getDataBankLogHeader(_loc4_) + this.getText("UPDATE_FINISH",["lang",_loc3_.url]));
         if(this._aCurrentDataBanks.length == this._nLoadedLangFiles)
         {
            if(!this["\x16\x19\x18"]())
            {
               return undefined;
            }
            this["\x18\x16\r"]();
         }
         break;
      case "MODULE":
         this.log(this["\x1b\r\x12"] + this.getText("MODULE_LOADED",[this["\x1b\x1c\r"][4]]));
         if(!this["\x16\x19\x18"]())
         {
            return undefined;
         }
         this["\x18\x16\x10"]();
         break;
      case "XTRA":
         var _loc5_ = this["\x1b\x1c\x0f"][_loc4_];
         if(_loc3_.type == "local")
         {
            this["\x18\x17\f"](this["\x1b\r\x12"] + this["\x1b\r\x12"] + this.getDataBankLogHeader(_loc4_) + this.getText("FILE_LOADED",[_loc5_[3],_loc3_.url]));
         }
         else
         {
            this["\x18\x17\f"](this["\x1b\r\x12"] + this["\x1b\r\x12"] + this.getDataBankLogHeader(_loc4_) + this.getText("UPDATE_FINISH",[_loc5_[3],_loc3_.url]));
         }
         this._aCurrentXtraLoadFile[_loc4_] = undefined;
         this["\x1b\x15\x12"](_loc4_);
   }
};
_loc1_.onCorruptFile = function(§\x18\x1b\f§, §\x1b\x11\x04§, §\x1a\x02\x02§)
{
   switch(this["\x1e\f\x1a"])
   {
      case "LANG":
         this["\x19\x0b\x06"](this.getText("CORRUPT_FILE",["lang",_loc4_.url,_loc3_]),this["\x1b\r\x12"] + this["\x1b\r\x12"]);
         break;
      case "XTRA":
         this["\x19\x0b\x06"](this.getText("CORRUPT_FILE",[this["\x1b\x1c\x0f"][3],_loc4_.url,_loc3_]),this["\x1b\r\x12"] + this["\x1b\r\x12"]);
   }
};
_loc1_.onCantWrite = function(§\x18\x1b\f§)
{
   switch(this["\x1e\f\x1a"])
   {
      case "LANG":
         this["\x17\x03\x05"]("WRITE_FAILED",this["\x1b\r\x12"] + this["\x1b\r\x12"],true,["lang"]);
         break;
      case "XTRA":
         this["\x17\x03\x05"]("WRITE_FAILED",this["\x1b\r\x12"] + this["\x1b\r\x12"],true,[this["\x1b\x1c\x0f"][3]]);
   }
};
_loc1_.onAllLoadFailed = function(§\x18\x1b\f§)
{
   this["\x1a\x1e\x16"](false);
   this["\x1b\x01\x12"](false);
   if(dofus.Constants.USE_JS_LOG && _global.CONFIG.isNewAccount)
   {
      this.getURL("JavaScript:WriteLog(\'onAllLoadFailed;" + this["\x1e\f\x1a"] + "\')");
   }
   switch(this["\x1e\f\x1a"])
   {
      case "LANG":
         if(!this["\x1c\b\x0e"])
         {
            this["\x17\x03\x05"]("CANT_UPDATE_FILE",this["\x1b\r\x12"] + this["\x1b\r\x12"],true,["lang"]);
         }
         else
         {
            this["\x19\x0b\x06"]("CANT_UPDATE_FILE",this["\x1b\r\x12"] + this["\x1b\r\x12"],true,["lang"]);
         }
         this["\x1c\b\x0e"] = true;
         break;
      case "XTRA":
         new org.flashdevelop.utils.FlashConnect.trace("## Passage en chargement local","dofus.DofusLoader::onAllLoadFailed","src/core/classes/dofus/DofusLoader.as",2407);
         this["\x1c\b\x0e"] = true;
         this["\x19\x0b\x06"]("CANT_UPDATE_FILE",this["\x1b\r\x12"] + this["\x1b\r\x12"],true,[this["\x1b\x1c\x0f"][3]]);
         this["\x1b\x15\x12"]();
   }
};
_loc1_["\x19\x16\x01"] = function()
{
   this["\x18\x13\x02"](false);
   this["\x1a\x1c\x16"](false);
   this["\x1a\x1e\b"](false);
};
ASSetPropFlags(_loc1_,null,1);
_loc1_["\x1b\r\x12"] = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
_loc1_["\x1e\n\x1b"] = "";
_loc1_["\x1e\n\x0f"] = "fr";
_loc1_["\x1c\x06\x0b"] = false;
_loc1_["\x1c\b\x0e"] = false;
_loc1_._aCurrentXtraLoadFile = new Array();
_loc1_._aXtraCurrentVersion = new Array();
_loc1_["\x1b\x1c\x0f"] = new Array();
_loc1_["\x1c\x01\x16"] = new Array();
_loc1_._aDistantFilesList = new Array();
_loc1_["\x1b\x1d\x17"] = new Array();
_loc1_["\x1c\x06\n"] = false;
_loc1_["\x1d\x1b\r"] = 0;
_loc1_["\x1d\x1e\x0f"] = 0;
_loc1_["\x1c\x06\x04"] = true;
