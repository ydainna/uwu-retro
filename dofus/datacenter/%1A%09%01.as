class dofus.§\x17\x04\x19§.§\x1a\t\x01§
{
   function §\x1a\t\x01§(§\x19\b\x0b§, §\x16\x0b\x14§)
   {
      this.initialize(_loc2_,_loc3_);
   }
   function §\x1e\x1c\x05§()
   {
      return this["\x1d\x17\x01"];
   }
   function §\x1e\x18\r§()
   {
      var _loc2_ = this.api.lang["\x17\x1d\x10"](this["\x1d\x17\x01"]);
      var _loc3_ = _loc2_.t;
      var _loc4_ = _loc2_.p;
      var _loc5_ = new Array();
      var _loc6_ = this.api.lang["\x17\x1d\x11"](_loc3_);
      switch(_loc3_)
      {
         case 0:
         case 4:
            _loc5_ = [_loc4_[0]];
            break;
         case 1:
         case 9:
         case 10:
            _loc5_ = [this.api.lang["\x17\x1c\x18"](_loc4_[0]).n];
            break;
         case 2:
         case 3:
            _loc5_[0] = this.api.lang["\x17\x1c\x18"](_loc4_[0]).n;
            _loc5_[1] = this.api.lang["\x17\x19\x1d"](_loc4_[1]).n;
            _loc5_[2] = _loc4_[2];
            break;
         case 5:
            _loc5_[0] = this.api.lang["\x17\x1b\x0f"](_loc4_[0]).n;
            break;
         case 6:
         case 7:
            _loc5_[0] = this.api.lang["\x17\x1c\t"](_loc4_[0]).n;
            _loc5_[1] = _loc4_[1];
            break;
         case 8:
            _loc5_[0] = this.api.lang["\x17\x19\x1d"](_loc4_[0]).n;
            break;
         case 12:
            _loc5_[0] = this.api.lang["\x17\x1c\x18"](_loc4_[0]).n;
            _loc5_[1] = this.api.lang["\x17\x1c\t"](_loc4_[1]).n;
            _loc5_[2] = _loc4_[2];
      }
      var _loc7_ = ank.utils.PatternDecoder.getDescription(_loc6_,_loc5_);
      if(_loc7_ != null && dofus.Constants.DEBUG)
      {
         _loc7_ = _loc7_ + " (" + this["\x1d\x17\x01"] + ")";
      }
      return _loc7_;
   }
   function §\x1e\x1d\x0e§()
   {
      return this["\x1c\x04\x04"];
   }
   function §\r\x14§()
   {
      return this.api.lang["\x17\x1d\x10"](this["\x1d\x17\x01"]).x;
   }
   function §\x0e\x02§()
   {
      return this.api.lang["\x17\x1d\x10"](this["\x1d\x17\x01"]).y;
   }
   function initialize(§\x19\b\x0b§, §\x16\x0b\x14§)
   {
      this.api = _global.api;
      this["\x1d\x17\x01"] = _loc2_;
      this["\x1c\x04\x04"] = _loc3_;
   }
}
