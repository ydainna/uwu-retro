class dofus.§\x18\x18\x0b§.HousesManager extends dofus.utils.§\x16\x04\x07§
{
   static var §\x1e\f\x10§ = null;
   function HousesManager()
   {
      super();
      dofus["\x18\x18\x0b"].HousesManager["\x1e\f\x10"] = this;
   }
   function initialize(oAPI)
   {
      super.initialize(oAPI);
   }
   static function §\x17\x19\t§()
   {
      return dofus["\x18\x18\x0b"].HousesManager["\x1e\f\x10"];
   }
   function getHouseInstances(§\x19\b\x06§)
   {
      var _loc3_ = ank.utils.["\x17\x0e\r"](this.api.datacenter.Houses.getItemAt(_loc2_));
      if(_loc3_ == undefined)
      {
         _loc3_ = new ank.utils.["\x17\x0e\r"]();
         this.api.datacenter.Houses["\x15\x1d\x13"](_loc2_,_loc3_);
      }
      return _loc3_;
   }
   function getHouseByInstance(§\x19\b\x06§, nInstanceID)
   {
      var _loc4_ = this.getHouseInstances(_loc2_);
      var _loc5_ = dofus.datacenter.["\x18\x07\x11"](_loc4_.getItemAt(nInstanceID));
      if(_loc5_ == undefined)
      {
         _loc5_ = new dofus.datacenter.["\x18\x07\x11"](_loc2_);
         _loc5_.instanceID = nInstanceID;
         _loc4_["\x15\x1d\x13"](nInstanceID,_loc5_);
      }
      return _loc5_;
   }
   function openHouseMenu(sDoorName, §\x19\b\x06§, §\x16\x06\x01§, §\x18\x1b\x10§)
   {
      sDoorName = sDoorName != undefined ? sDoorName + " " : "";
      if(this.api.datacenter.["\x18\x18\x0e"].isMyHome)
      {
         var _loc6_ = _loc3_;
         _loc3_ = this.api.lang["\x17\x18\x19"](this.api.datacenter.["\x18\x18\x0e"].id);
         var _loc7_ = this.api.kernel.HouseManager.getHouseByInstance(_loc3_,_loc6_);
         this.openInstancedHouseMenu(sDoorName,_loc7_,_loc4_);
         return undefined;
      }
      var _loc8_ = this.getHouseInstances(_loc3_);
      if(_loc8_["\x17\x1a\x17"]() == 1)
      {
         var _loc9_ = dofus.datacenter.["\x18\x07\x11"](_loc8_.getFirstItem());
         this.openInstancedHouseMenu(sDoorName,_loc9_,_loc4_,_loc5_);
      }
      else
      {
         var _loc10_ = this.api.ui["\x17\x02\x19"]();
         var _loc11_ = _loc8_.getFirstItem().name;
         _loc10_["\x15\x1e\x18"](sDoorName + _loc11_);
         for(var i in _loc8_.getItems())
         {
            var _loc12_ = dofus.datacenter.["\x18\x07\x11"](_loc8_.getItemAt(i));
            if(_loc12_.instanceID != undefined)
            {
               _loc10_["\x15\x1d\x12"](_loc12_.getHouseOfOwnerName() + " >> ",this,this.openInstancedHouseMenu,[sDoorName,_loc12_,_loc4_,_loc5_]);
            }
         }
         _loc10_.show(_root._xmouse,_root._ymouse);
      }
   }
   function openInstancedHouseMenu(sDoorName, §\x18\x05\x19§, §\x16\x06\x01§, §\x18\x1b\x10§)
   {
      var _loc6_ = this.api["\x18\x1e\x11"].getMouseClickForGather(1)["\x1a\x0e\x0f"];
      var _loc7_ = true;
      var _loc8_ = this.api.ui["\x17\x02\x19"]();
      _loc8_["\x15\x1e\x18"](sDoorName + _loc3_.name);
      _loc8_["\x15\x1e\x18"](_loc3_.getHouseOfOwnerName());
      if(this.api.datacenter.Player.isAuthorized && (_loc3_["\x1a\x03\x06"] != undefined && _loc3_["\x1a\x03\x06"] != "?"))
      {
         _loc8_["\x15\x1d\x12"]("*" + _loc3_["\x1a\x03\x06"] + " >>",this.api.kernel.GameManager,this.api.kernel.GameManager["\x1a\x1e\x14"],[undefined,{sPlayerName:"*" + _loc3_["\x1a\x03\x06"]}]);
      }
      loop0:
      for(var k in _loc4_)
      {
         var _loc9_ = _loc4_[k];
         var _loc10_ = new dofus.datacenter.["\x1b\x02\n"](_loc9_);
         var _loc11_ = _loc10_["\x18\x01\r"](true,_loc3_["\x18\x17\x07"],_loc3_["\x18\r\x1b"],_loc3_["\x18\x0e\x17"]);
         if(_loc11_ == "X")
         {
            continue;
         }
         var _loc12_ = _loc11_ == "V";
         if(!(_loc12_ && ((Key.isDown(Key.SHIFT) || _loc6_) && _loc9_ == 84)))
         {
            if(_loc5_.num != undefined)
            {
               _loc8_["\x15\x1d\x12"](_loc10_.description,this.api.kernel.GameManager,this.api.kernel.GameManager["\x1b\x16\x19"],[_loc5_,_loc5_.num,_loc9_,_loc3_.instanceID],_loc12_);
            }
            else
            {
               _loc8_["\x15\x1d\x12"](_loc10_.description,this.api.kernel.GameManager,this.api.kernel.GameManager["\x1b\x16\x1c"],[_loc10_.id],_loc11_ == "V");
            }
            continue;
         }
         this.api.kernel.GameManager["\x1b\x16\x19"](_loc5_,_loc5_.num,_loc9_,_loc3_.instanceID);
         _loc7_ = false;
         while(true)
         {
            if(§§pop() == null)
            {
               break loop0;
            }
         }
      }
      if(!this.api.datacenter.["\x18\x18\x0e"].isMyHome && _loc3_.isHuntTargetInside)
      {
         _loc8_["\x15\x1d\x12"](this.api.lang.getText("ASSAULT") + " " + this.api.lang.getText("HUNTED"),this.api.kernel.GameManager,this.api.kernel.GameManager.askAttackIndoor);
      }
      if(this.api.datacenter.["\x18\x18\x0e"].isMyHome && (this.api.datacenter.Player.guildInfos != undefined && this.api.datacenter.Player.guildInfos["\x18\x10\n"]))
      {
         _loc8_["\x15\x1d\x12"](this.api.lang.getText("GUILD_HOUSE_CONFIGURATION"),_loc3_,_loc3_.loadGuildRightsComponent,[_loc3_]);
      }
      if(_loc7_)
      {
         _loc8_.show(_root._xmouse,_root._ymouse);
      }
   }
}
