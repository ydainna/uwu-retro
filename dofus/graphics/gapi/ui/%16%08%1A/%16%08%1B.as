class dofus.graphics.gapi.ui.§\x16\b\x1a§.§\x16\b\x1b§
{
   function §\x16\b\x1b§()
   {
   }
   static function §\x1a\x1d\x12§(§\x18\x1b\r§)
   {
      if(_loc2_.api.datacenter.Player.XP == undefined || _loc2_.api.datacenter..Game.isFight)
      {
         return undefined;
      }
      var _loc3_ = _loc2_.api.kernel.OptionsManager.getOption("BannerGaugeMode");
      if(_loc2_["\x1d\n\x10"] == _loc2_["\x1d\t\x1c"] || _loc3_ == "none")
      {
         _loc2_.circleXtra["\x1a\x1b\x07"](false);
         return undefined;
      }
      _loc2_.circleXtra["\x1a\x1b\x07"](true);
      switch(_loc3_)
      {
         case "xp":
            var _loc4_ = Math.floor((_loc2_.api.datacenter.Player.XP - _loc2_.api.datacenter.Player.XPlow) / (_loc2_.api.datacenter.Player.XPhigh - _loc2_.api.datacenter.Player.XPlow) * 100);
            var _loc5_ = 8298148;
            break;
         case "xpmount":
            if(_loc2_.api.datacenter.Player.mount == undefined)
            {
               _loc4_ = 0;
            }
            else
            {
               _loc4_ = Math.floor((_loc2_.api.datacenter.Player.mount.xp - _loc2_.api.datacenter.Player.mount["\x1b\x1a\x0b"]) / (_loc2_.api.datacenter.Player.mount["\x1b\x1a\t"] - _loc2_.api.datacenter.Player.mount["\x1b\x1a\x0b"]) * 100);
            }
            _loc5_ = 8298148;
            break;
         case "pods":
            _loc4_ = Math.floor(_loc2_.api.datacenter.Player.currentWeight / _loc2_.api.datacenter.Player.maxWeight * 100);
            _loc5_ = 6340148;
            break;
         case "energy":
            if(_loc2_.api.datacenter.Player.EnergyMax == -1)
            {
               _loc4_ = 0;
            }
            else
            {
               _loc4_ = Math.floor(_loc2_.api.datacenter.Player.Energy / _loc2_.api.datacenter.Player.EnergyMax * 100);
            }
            _loc5_ = 10994717;
            break;
         case "xpcurrentjob":
            var _loc6_ = _loc2_.api.datacenter.Player.currentJobID;
            if(_loc6_ != undefined)
            {
               var _loc7_ = _loc2_.api.datacenter.Player["\x18\x11\x0f"].findFirstItem("id",_loc6_).item;
               if(_loc7_["\x1b\x1a\t"] != -1)
               {
                  _loc4_ = Math.floor((_loc7_.xp - _loc7_["\x1b\x1a\x0b"]) / (_loc7_["\x1b\x1a\t"] - _loc7_["\x1b\x1a\x0b"]) * 100);
               }
               else
               {
                  _loc4_ = 0;
               }
            }
            else
            {
               _loc4_ = 0;
            }
            _loc5_ = 10441125;
      }
      if(!_global.isNaN(_loc5_))
      {
         if(_global.isNaN(_loc4_))
         {
            _loc4_ = 0;
         }
         _loc2_["\x1c\f\x1d"]._visible = true;
         _loc2_["\x1c\f\x1d"]["\x1a\x16\x19"](_loc4_,_loc5_);
      }
   }
   static function §\x1a\x16\x1a§(§\x18\x1b\r§, §\x1a\x1b\x19§)
   {
      _loc2_["\x1d\n\x10"] = _loc3_ != "none" ? _loc2_["\x1d\t\x1b"] : _loc2_["\x1d\t\x1c"];
      var _loc4_ = _loc2_.api.kernel.OptionsManager.getOption("BannerGaugeMode");
      switch(_loc4_)
      {
         case "xp":
            _loc2_.api.datacenter.Player.removeEventListener("xpChanged",_loc2_);
            break;
         case "xpmount":
            _loc2_.api.datacenter.Player.removeEventListener("mountChanged",_loc2_);
            break;
         case "pods":
            _loc2_.api.datacenter.Player.removeEventListener("currentWeightChanged",_loc2_);
            break;
         case "energy":
            _loc2_.api.datacenter.Player.removeEventListener("energyChanged",_loc2_);
            break;
         case "xpcurrentjob":
            _loc2_.api.datacenter.Player.removeEventListener("currentJobChanged",_loc2_);
      }
      _loc2_.api.kernel.OptionsManager.setOption("BannerGaugeMode",_loc3_);
      switch(_loc3_)
      {
         case "xp":
            _loc2_.api.datacenter.Player.addEventListener("xpChanged",_loc2_);
            break;
         case "xpmount":
            _loc2_.api.datacenter.Player.addEventListener("mountChanged",_loc2_);
            break;
         case "pods":
            _loc2_.api.datacenter.Player.addEventListener("currentWeightChanged",_loc2_);
            break;
         case "energy":
            _loc2_.api.datacenter.Player.addEventListener("energyChanged",_loc2_);
            break;
         case "xpcurrentjob":
            _loc2_.api.datacenter.Player.addEventListener("currentJobChanged",_loc2_);
      }
      dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"]["\x1a\x1d\x12"](_loc2_);
   }
   static function §\x1a\x1d\x13§(§\x18\x1b\r§)
   {
      var _loc3_ = _loc2_.api.kernel.OptionsManager.getOption("BannerGaugeMode");
      var _loc4_ = _loc2_.api.ui["\x17\x02\x19"]();
      _loc4_["\x15\x1d\x12"](_loc2_.api.lang.getText("DISABLE"),dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"],dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"]["\x1a\x16\x1a"],[_loc2_,"none"],_loc3_ != "none");
      _loc4_["\x15\x1d\x12"](_loc2_.api.lang.getText("WORD_XP"),dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"],dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"]["\x1a\x16\x1a"],[_loc2_,"xp"],_loc3_ != "xp");
      _loc4_["\x15\x1d\x12"](_loc2_.api.lang.getText("WORD_XP") + " " + _loc2_.api.lang.getText("JOB"),dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"],dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"]["\x1a\x16\x1a"],[_loc2_,"xpcurrentjob"],_loc3_ != "xpcurrentjob");
      _loc4_["\x15\x1d\x12"](_loc2_.api.lang.getText("WORD_XP") + " " + _loc2_.api.lang.getText("MOUNT"),dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"],dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"]["\x1a\x16\x1a"],[_loc2_,"xpmount"],_loc3_ != "xpmount");
      _loc4_["\x15\x1d\x12"](_loc2_.api.lang.getText("WEIGHT"),dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"],dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"]["\x1a\x16\x1a"],[_loc2_,"pods"],_loc3_ != "pods");
      _loc4_["\x15\x1d\x12"](_loc2_.api.lang.getText("ENERGY"),dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"],dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"]["\x1a\x16\x1a"],[_loc2_,"energy"],_loc3_ != "energy");
      _loc4_.show(_root._xmouse,_root._ymouse,true);
   }
}
