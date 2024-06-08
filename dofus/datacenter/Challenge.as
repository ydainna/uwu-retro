class dofus.§\x17\x04\x19§.Challenge extends Object
{
   function Challenge(§\x19\b\x0b§, §\x19\x07\x12§)
   {
      super();
      this.initialize(_loc3_,_loc4_);
   }
   function initialize(§\x19\b\x0b§, §\x19\x07\x12§)
   {
      this["\x1d\x17\x01"] = _loc2_;
      this["\x1d\x16\x07"] = _loc3_;
      this["\x1e\x0e\x01"] = new Object();
   }
   function §\x15\x1e\x1d§(§\x1b\r\x11§)
   {
      this["\x1e\x0e\x01"][_loc2_.id] = _loc2_;
      _loc2_["\x1a\x15\t"](this);
   }
   function §\x1e\x1c\x05§()
   {
      return this["\x1d\x17\x01"];
   }
   function §\x1e\x1a\x0b§()
   {
      return this["\x1d\x16\x07"];
   }
   function §\x0b\x15§()
   {
      return this["\x1e\x0e\x01"];
   }
   function §\x1e\x16\x1c§()
   {
      var _loc2_ = 0;
      for(var k in this["\x1e\x0e\x01"])
      {
         _loc2_ += this["\x1e\x0e\x01"][k].count;
      }
      return _loc2_;
   }
}
