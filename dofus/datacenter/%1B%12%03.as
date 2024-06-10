class dofus.datacenter.§\x1b\x12\x03§ extends dofus.datacenter.§\x1b\x11\x1c§
{
   function §\x1b\x12\x03§(sID, §\x19\x0f\x19§, §\x15\x1b\x0e§)
   {
      super(sID,dofus.datacenter.["\x1b\x11\x1c"]["\x1b\x12\x1d"]);
      this["\x1d\x1e\f"] = _loc4_;
      this["\x1a\x15\x07"](_loc5_);
   }
   function §\x0b\x1c§()
   {
      return this["\x1d\x1e\f"] != undefined ? this["\x1d\x1e\f"] : 0;
   }
   function §\x1e\x15\x01§()
   {
      return this["\x1e\x02\x11"];
   }
   function §\x1a\x15\x07§(§\x15\x1b\x0e§)
   {
      this["\x1e\x02\x11"] = new Object();
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         var _loc4_ = _loc2_[_loc3_];
         var _loc5_ = _loc4_[0];
         var _loc6_ = _loc4_[1];
         var _loc7_ = _loc4_[2];
         var _loc8_ = new dofus.datacenter.["\x1b\x12\x04"](_loc5_,_loc6_,_loc7_);
         this["\x1e\x02\x11"][_loc5_] = _loc8_;
         _loc3_ = _loc3_ + 1;
      }
   }
}
