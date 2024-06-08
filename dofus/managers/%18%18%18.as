class dofus.§\x18\x18\x0b§.§\x18\x18\x18§ extends dofus.§\x18\x18\x0b§.§\x1a\x14\f§
{
   static var §\x1e\f\x10§ = null;
   var §\x1c\x11\x19§ = undefined;
   var §\x1b\x1d\r§ = new Array();
   var §\x1c\x02\f§ = false;
   var §\x1c\x03\x07§ = false;
   var §\x1c\x07\f§ = false;
   function §\x18\x18\x18§()
   {
      super();
      dofus["\x18\x18\x0b"]["\x18\x18\x18"]["\x1e\f\x10"] = this;
   }
   function §\x1e\x1c\x1b§()
   {
      return this["\x1c\x02\f"];
   }
   function §\x15\f§(§\x16\t\x16§)
   {
      this["\x1c\x02\f"] = _loc2_;
      return this["\x1e\x1c\x1b"]();
   }
   static function §\x17\x19\t§()
   {
      return dofus["\x18\x18\x0b"]["\x18\x18\x18"]["\x1e\f\x10"];
   }
   function initialize(oAPI)
   {
      super.initialize(oAPI,"maps","maps/");
   }
   function §\x18\x16\f§(sID, §\x1a\x11\x1d§, sKey)
   {
      this["\x1c\x11\x19"] = undefined;
      if(!_global.isNaN(Number(sID)))
      {
         if(_loc4_ != undefined && _loc4_.length > 0)
         {
            this["\x1b\x1d\r"][Number(sID)] = dofus.aks.Aks["\x1a\x06\x18"](_loc4_);
         }
         else
         {
            delete this["\x1b\x1d\r"][Number(sID)];
         }
      }
      this["\x18\x15\x18"](sID + "_" + _loc3_ + (this["\x1b\x1d\r"][Number(sID)] == undefined ? "" : "X") + ".swf");
   }
   function §\x17\x1b\x0b§(§\x19\t\x14§)
   {
      var _loc3_ = this.api.lang["\x17\x1b\x11"](_loc2_);
      var _loc4_ = this.api.lang["\x17\x1b\x04"](_loc3_.sa);
      var _loc5_ = this.api.lang["\x17\x1b\x06"](_loc4_.areaID).n;
      var _loc6_ = this.api.lang["\x17\x1b\x0f"](_loc3_.sa).n;
      var _loc7_ = _loc5_ + (_loc6_.indexOf("//") != -1 ? "" : " (" + _loc6_ + ")");
      if(dofus.Constants.DEBUG)
      {
         _loc7_ += " (" + _loc2_ + ")";
      }
      return _loc7_;
   }
   function §\x1a\x03\x1b§(§\x19\x12\x10§)
   {
      if(this.api.network.Game["\x18\f\x1c"])
      {
         this.addToQueue({object:this,method:this["\x1a\x03\x1b"],params:[_loc2_]});
         return undefined;
      }
      var _loc3_ = Number(_loc2_.id);
      if(this.api.config.isStreaming && this.api.config["\x1b\x0b\r"] == "compact")
      {
         var _loc4_ = this.api.lang.getConfigText("INCARNAM_CLASS_MAP");
         var _loc5_ = false;
         var _loc6_ = 0;
         while(_loc6_ < _loc4_.length && !_loc5_)
         {
            if(_loc4_[_loc6_] == _loc3_)
            {
               _loc5_ = true;
            }
            _loc6_ = _loc6_ + 1;
         }
         if(_loc5_)
         {
            var _loc7_ = [dofus.Constants["\x18\x02\x19"] + "g" + this.api.datacenter.Player.Guild + ".swf",dofus.Constants["\x18\x02\x19"] + "o" + this.api.datacenter.Player.Guild + ".swf"];
         }
         else
         {
            _loc7_ = [dofus.Constants["\x18\x02\x19"] + "g0.swf",dofus.Constants["\x18\x02\x19"] + "o0.swf"];
         }
         if(!this.api.gfx["\x18\x16\n"]["\x16\x05\x05"](_loc7_))
         {
            this.api.gfx["\x18\x16\n"]["\x18\x16\x03"](_loc7_);
            this.api.gfx["\x16\n\n"] = false;
         }
         if(this.api.gfx["\x18\x16\n"]["\x16\x05\x04"](_loc7_))
         {
            this.api.gfx["\x1a\x15\x1b"](_loc7_[0],_loc7_[1]);
         }
         if(!this.api.gfx["\x16\n\n"] || !this.api.gfx["\x18\x16\n"]["\x16\x05\x04"](_loc7_))
         {
            var _loc8_ = this.api.ui.getUIComponent("CenterTextMap");
            if(!_loc8_)
            {
               _loc8_ = this.api.ui.loadUIComponent("CenterText","CenterTextMap",{text:this.api.lang.getText("LOADING_MAP"),timer:40000},{bForceLoad:true});
            }
            this.api.ui.getUIComponent("CenterTextMap")["\x1b\x15\x18"]("Downloading",this.api.gfx["\x18\x16\n"]["\x17\x1d\n"](_loc7_),100);
            this.addToQueue({object:this,method:this["\x1a\x03\x1b"],params:[_loc2_]});
            return undefined;
         }
         if(_loc5_ && !this["\x1c\x07\f"])
         {
            this["\x1c\x07\f"] = true;
            new org.flashdevelop.utils.FlashConnect.trace("preload","dofus.managers.MapsServersManager::parseMap","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/managers/MapsServersManager.as",144);
            this.api.gfx["\x18\x16\n"]["\x18\x16\x03"]([dofus.Constants["\x16\x1c\x1a"] + (this.api.datacenter.Player.Guild * 10 + this.api.datacenter.Player.Sex) + ".swf",dofus.Constants["\x16\x1c\x1a"] + "9059.swf",dofus.Constants["\x16\x1c\x1a"] + "9091.swf",dofus.Constants["\x16\x1c\x1a"] + "1219.swf",dofus.Constants["\x16\x1c\x1a"] + "101.swf",dofus.Constants["\x18\x02\x19"] + "g0.swf",dofus.Constants["\x18\x02\x19"] + "o0.swf"]);
         }
      }
      new org.flashdevelop.utils.FlashConnect.trace("===== Build Map =====","dofus.managers.MapsServersManager::parseMap","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/managers/MapsServersManager.as",155);
      this["\x1c\x03\x07"] = false;
      if(this.api.network.Game["\x19\t\f"] != _loc3_ && (this.api.network.Game["\x19\t\f"] != -1 && this.api.lang.getConfigText("CHECK_MAP_FILE_ID")))
      {
         new org.flashdevelop.utils.FlashConnect.trace("Donnée de map ne correspondant pas à la carte courante","dofus.managers.MapsServersManager::parseMap","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/managers/MapsServersManager.as",162);
         this.api.gfx["\x19\x1a\x07"]();
         return undefined;
      }
      this["\x1c\x02\f"] = true;
      this["\x1c\x11\x19"] = _loc2_;
      var _loc9_ = this["\x17\x1b\x0b"](_loc3_);
      var _loc10_ = Number(_loc2_.width);
      var _loc11_ = Number(_loc2_.height);
      var _loc12_ = Number(_loc2_.backgroundNum);
      var _loc13_ = this["\x1b\x1d\r"][_loc3_] == undefined ? _loc2_.mapData : dofus.aks.Aks["\x17\x06\x02"](_loc2_.mapData,this["\x1b\x1d\r"][_loc3_],_global.parseInt(dofus.aks.Aks["\x16\x1a\x1a"](this["\x1b\x1d\r"][_loc3_]),16) * 2);
      var _loc14_ = _loc2_.ambianceId;
      var _loc15_ = _loc2_.musicId;
      var _loc16_ = _loc2_.bOutdoor != 1 ? false : true;
      var _loc17_ = (_loc2_.capabilities & 1) == 0;
      var _loc18_ = (_loc2_.capabilities >> 1 & 1) == 0;
      var _loc19_ = (_loc2_.capabilities >> 2 & 1) == 0;
      var _loc20_ = (_loc2_.capabilities >> 3 & 1) == 0;
      var _loc21_ = _loc2_.canAggro != 1 ? false : true;
      var _loc22_ = _loc2_.canUseObject != 1 ? false : true;
      var _loc23_ = _loc2_.canUseInventory != 1 ? false : true;
      var _loc24_ = _loc2_.canChangeCharac != 1 ? false : true;
      new org.flashdevelop.utils.FlashConnect.trace("[MapServiceManager] (parseMap) Map " + _loc3_ + " : " + _loc18_,"dofus.managers.MapsServersManager::parseMap","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/managers/MapsServersManager.as",191);
      this.api.datacenter.Basics.aks_current_map_id = _loc3_;
      this.api.kernel["\x1b\x10\x0b"]["\x19\x1a\x14"](_loc3_);
      this.api.kernel["\x1b\x0b\f"]["\x19\x1a\x14"](_loc3_);
      var _loc25_ = new dofus.datacenter.["\x17\t\x0f"](_loc3_);
      _loc25_.bCanChallenge = _loc17_;
      _loc25_.bCanAttack = _loc18_;
      _loc25_.bSaveTeleport = _loc19_;
      _loc25_.bUseTeleport = _loc20_;
      _loc25_.bOutdoor = _loc16_;
      _loc25_.bCanAttackHunt = _loc21_;
      _loc25_.bCanUseItem = _loc22_;
      _loc25_.bCanEquipItem = _loc23_;
      _loc25_.bCanBoostStats = _loc24_;
      _loc25_.ambianceID = _loc14_;
      _loc25_.musicID = _loc15_;
      this.api.gfx["\x16\x14\x02"](_loc3_,_loc9_,_loc10_,_loc11_,_loc12_,_loc13_,_loc25_);
      if(this.api.networkBasics.lastReceivedReferenceTime != undefined)
      {
         this.api.kernel["\x19\b\x11"]["\x1a\x19\t"](this.api.networkBasics.lastReceivedReferenceTime,this.api.kernel.OptionsManager.getOption("NightMode"),_loc25_);
      }
      this["\x1c\x02\f"] = false;
      new org.flashdevelop.utils.FlashConnect.trace("===== Map Built =====","dofus.managers.MapsServersManager::parseMap","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/managers/MapsServersManager.as",227);
   }
   function §\x19\x15\x18§(§\x18\x1b\f§)
   {
      var _loc3_ = _loc2_;
      this["\x1a\x03\x1b"](_loc3_);
   }
   function §\x19\x17\b§()
   {
      this.api.kernel.showMessage(undefined,this.api.lang.getText("NO_MAPDATA_FILE"),"ERROR_BOX",{name:"NoMapData"});
   }
}
