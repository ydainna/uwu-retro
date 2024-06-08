class dofus.§\x18\x18\x0b§.MountParksManager extends dofus.utils.ApiElement
{
   static var §\x1e\f\x10§ = null;
   function MountParksManager()
   {
      super();
      dofus.managers.MountParksManager["\x1e\f\x10"] = this;
   }
   function initialize(oAPI)
   {
      super.initialize(oAPI);
   }
   static function §\x17\x19\t§()
   {
      return dofus.managers.MountParksManager["\x1e\f\x10"];
   }
   function openMountParkMenu(sObject2Name, §\x16\x06\x01§, §\x18\x1b\x10§, oMountPark)
   {
      var _loc6_ = this.api.datacenter.["\x18\x18\x0e"].mountParks;
      if(_loc6_.length == 1 || dofus.datacenter.["\x18\x1e\t"](_loc6_[0])["\x18\x0e\x1c"](this.api))
      {
         var _loc7_ = dofus.datacenter.["\x18\x1e\t"](_loc6_[0]);
         this.openInstancedMountParkMenu(sObject2Name,_loc3_,_loc4_,_loc7_);
      }
      else
      {
         var _loc8_ = this.api.ui["\x17\x02\x19"]();
         _loc8_["\x15\x1e\x18"](sObject2Name);
         var _loc9_ = 0;
         while(_loc9_ < _loc6_.length)
         {
            var _loc10_ = dofus.datacenter.["\x18\x1e\t"](_loc6_[_loc9_]);
            if(_loc10_.instanceId != undefined)
            {
               var _loc11_ = !(_loc10_["\x18\x04\x07"] == undefined || _loc10_["\x18\x04\x07"].length == 0) ? _loc10_["\x18\x04\x07"] : sObject2Name;
               _loc8_["\x15\x1d\x12"](_loc11_ + " >> ",this,this.openInstancedMountParkMenu,[sObject2Name,_loc3_,_loc4_,_loc10_]);
            }
            _loc9_ = _loc9_ + 1;
         }
         _loc8_.show(_root._xmouse,_root._ymouse);
      }
   }
   function openInstancedMountParkMenu(sObject2Name, §\x16\x06\x01§, §\x18\x1b\x10§, oMountPark)
   {
      var _loc6_ = this.api["\x18\x1e\x11"].getMouseClickForGather(1)["\x1a\x0e\x0f"];
      var _loc7_ = true;
      var _loc8_ = this.api.ui["\x17\x02\x19"]();
      _loc8_["\x15\x1e\x18"](sObject2Name);
      if(oMountPark["\x18\x04\x07"] != undefined && oMountPark["\x18\x04\x07"].length != 0)
      {
         _loc8_["\x15\x1e\x18"](oMountPark["\x18\x04\x07"]);
      }
      for(var k in _loc3_)
      {
         var _loc9_ = _loc3_[k];
         var _loc10_ = new dofus.datacenter.["\x1b\x02\n"](_loc9_);
         var _loc11_ = _loc10_["\x18\x01\r"](true,oMountPark["\x18\x0e\x1c"](this.api),oMountPark.price > 0,oMountPark["\x18\x0f\x0e"] || oMountPark["\x18\x0e\x1c"](this.api),false,oMountPark["\x18\x0f\x0e"]);
         if(_loc11_ != "X")
         {
            var _loc12_ = _loc11_ == "V";
            if(_loc12_ && (Key.isDown(Key.SHIFT) || _loc6_))
            {
               this.api.kernel.GameManager["\x1b\x16\x19"](_loc4_,_loc4_.num,_loc9_,oMountPark.instanceId);
               _loc7_ = false;
               break;
            }
            _loc8_["\x15\x1d\x12"](_loc10_.description,this.api.kernel.GameManager,this.api.kernel.GameManager["\x1b\x16\x19"],[_loc4_,_loc4_.num,_loc9_,oMountPark.instanceId],_loc12_);
         }
      }
      if(_loc7_)
      {
         _loc8_.show(_root._xmouse,_root._ymouse);
      }
   }
}
