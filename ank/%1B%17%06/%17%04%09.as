class ank.utils.§\x17\x04\t§
{
   static var §\x19\x02\x07§ = 86400000;
   function §\x17\x04\t§(nRefTime, §\x16\x03\x10§, §\x19\x11\x07§)
   {
      this["\x1d\x1b\x1a"] = nRefTime;
      this["\x1b\x1e\x01"] = _loc3_;
      this["\x1e\x02\x02"] = _loc4_;
      this["\x1b\x1e\x01"].sortOn("0",Array.NUMERIC | Array.DESCENDING);
      this["\x1d\x1c\b"] = 1846;
   }
   function §\x17\x16\x06§()
   {
      var _loc2_ = this["\x17\x16\x03"]();
      var _loc3_ = _loc2_.getUTCHours();
      var _loc4_ = _loc2_.getUTCMinutes();
      return [_loc3_,_loc4_];
   }
   function getCurrentDate()
   {
      var _loc2_ = this["\x17\x16\x03"]();
      var _loc3_ = this["\x18\x02\x11"]();
      var _loc4_ = 1;
      var _loc5_ = 0;
      while(_loc5_ < this["\x1b\x1e\x01"].length)
      {
         if(this["\x1b\x1e\x01"][_loc5_][0] < _loc3_)
         {
            _loc4_ = _loc5_;
            break;
         }
         _loc5_ = _loc5_ + 1;
      }
      return [_loc2_.getUTCFullYear(),this["\x1b\x1e\x01"][_loc4_][1],_loc3_ - this["\x1b\x1e\x01"][_loc4_][0]];
   }
   function §\x17\x16\x02§()
   {
      var _loc2_ = new Date();
      _loc2_.setTime(this["\x1d\x1b\x1a"]);
      var _loc3_ = new Date(Date.UTC(1970,0,1,_loc2_.getUTCHours(),_loc2_.getUTCMinutes(),_loc2_.getUTCSeconds(),_loc2_.getUTCMilliseconds()));
      return _loc3_.getTime();
   }
   function §\x17\x16\x14§(§\x19\x0f\x17§)
   {
      var _loc3_ = this["\x17\x16\x03"]();
      var _loc4_ = new Date();
      _loc4_.setTime(_loc2_);
      _loc4_ = new Date(Date.UTC(_loc4_.getUTCFullYear() - this["\x1e\x02\x02"],_loc4_.getUTCMonth(),_loc4_.getUTCDate(),_loc4_.getUTCHours(),_loc4_.getUTCMinutes(),_loc4_.getUTCSeconds(),_loc4_.getUTCMilliseconds()));
      return _loc3_ - _loc4_;
   }
   function §\x17\x16\x03§()
   {
      var _loc2_ = 4700 - this["\x1d\x1c\b"];
      var _loc3_ = new Date();
      _loc3_.setTime(this["\x1d\x1b\x1a"] + _loc2_);
      _loc3_ = new Date(Date.UTC(_loc3_.getUTCFullYear() - this["\x1e\x02\x02"],_loc3_.getUTCMonth(),_loc3_.getUTCDate(),_loc3_.getUTCHours(),_loc3_.getUTCMinutes(),_loc3_.getUTCSeconds(),_loc3_.getUTCMilliseconds()));
      return _loc3_;
   }
   function §\x18\x02\x11§()
   {
      var _loc2_ = this["\x17\x16\x03"]();
      var _loc3_ = new Date(Date.UTC(_loc2_.getUTCFullYear(),0,1));
      return Math.floor((_loc2_ - _loc3_) / ank.utils.["\x17\x04\t"]["\x19\x02\x07"]) + 1;
   }
}
