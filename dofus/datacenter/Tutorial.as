class dofus.§\x17\x04\x19§.Tutorial extends Object
{
   static var §\x19\x0b\x0e§ = 0;
   static var §\x17\x0e\n§ = 1;
   function Tutorial(mcData)
   {
      super();
      this["\x1e\x02\r"] = new Object();
      this["\x1a\x15\x1d"](mcData.actions);
      this["\x1e\f\x0b"] = mcData.rootBlocID;
      this["\x1e\f\f"] = mcData.rootExitBlocID;
      this._bCanCancel = mcData.canCancel != undefined ? mcData.canCancel : true;
   }
   function §\x1e\x13\x1d§()
   {
      return this._bCanCancel;
   }
   function §\x15\x1d\x02§(§\x19\x12\x02§)
   {
      this["\x1e\x02\r"][_loc2_.id] = _loc2_;
   }
   function §\x1a\x15\x1d§(§\x15\x1b\n§)
   {
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         var _loc4_ = _loc2_[_loc3_];
         var _loc5_ = Number(_loc4_[0]);
         switch(_loc5_)
         {
            case dofus.datacenter.["\x1b\x11\x1c"]["\x1b\x12\x0e"]:
               var _loc6_ = _loc4_[1];
               var _loc7_ = _loc4_[2];
               var _loc8_ = _loc4_[3];
               var _loc9_ = _loc4_[4];
               var _loc10_ = _loc4_[5];
               var _loc11_ = new dofus.datacenter.["\x1b\x11\x1b"](_loc6_,_loc7_,_loc8_,_loc9_,_loc10_);
               this["\x15\x1d\x02"](_loc11_);
               break;
            case dofus.datacenter.["\x1b\x11\x1c"]["\x1b\x12\x1d"]:
               var _loc12_ = _loc4_[1];
               var _loc13_ = Number(_loc4_[2]);
               var _loc14_ = _loc4_[3];
               var _loc15_ = new dofus.datacenter.["\x1b\x12\x03"](_loc12_,_loc13_,_loc14_);
               this["\x15\x1d\x02"](_loc15_);
               break;
            case dofus.datacenter.["\x1b\x11\x1c"]["\x1b\x12\x15"]:
               var _loc16_ = _loc4_[1];
               var _loc17_ = _loc4_[2];
               var _loc18_ = _loc4_[3];
               var _loc19_ = _loc4_[4];
               var _loc20_ = _loc4_[5];
               var _loc21_ = _loc4_[6];
               var _loc22_ = new dofus.datacenter.["\x1b\x11\x1d"](_loc16_,_loc17_,_loc18_,_loc19_,_loc20_,_loc21_);
               this["\x15\x1d\x02"](_loc22_);
         }
         _loc3_ = _loc3_ + 1;
      }
   }
   function §\x17\x1e\x03§()
   {
      return this["\x1e\x02\r"][this["\x1e\f\x0b"]];
   }
   function §\x17\x1e\x04§()
   {
      return this["\x1e\x02\r"][this["\x1e\f\f"]];
   }
   function §\x17\x14\x15§(§\x1a\x10\x05§)
   {
      return this["\x1e\x02\r"][_loc2_];
   }
}
