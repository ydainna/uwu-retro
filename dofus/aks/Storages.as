class dofus.aks.§\x1b\x0b\x06§ extends dofus.aks.Handler
{
   function §\x1b\x0b\x06§(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function onInformations(sExtraData)
   {
      var _loc3_ = _loc2_.split(";");
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         var _loc5_ = _loc3_[_loc4_].split(",");
         var _loc6_ = _loc5_[0];
         var _loc7_ = _loc5_[1] == "1";
         var _loc8_ = this.api.datacenter..Storages;
         var _loc9_ = _loc8_.getItemAt(_loc6_);
         if(_loc9_ == undefined)
         {
            _loc9_ = new dofus.datacenter..Storage();
         }
         _loc9_["\x18\x0e\x17"] = _loc7_;
         _loc8_["\x15\x1d\x13"](_loc6_,_loc9_);
         _loc4_ = _loc4_ + 1;
      }
   }
   function onLockedStorage(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = _loc3_[0];
      var _loc5_ = _loc3_[1] == "1";
      var _loc6_ = this.api.datacenter..Storages;
      var _loc7_ = _loc6_.getItemAt(_loc4_);
      if(_loc7_ == undefined)
      {
         _loc7_ = new dofus.datacenter..Storage(_loc4_);
         _loc6_["\x15\x1d\x13"](_loc4_,_loc7_);
      }
      _loc7_["\x18\x0e\x17"] = _loc5_;
   }
}
