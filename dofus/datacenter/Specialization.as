class dofus.datacenter.Specialization extends Object
{
   function Specialization(§\x19\b\x14§)
   {
      super();
      this.api = _global.api;
      this.initialize(_loc3_);
   }
   function §\x1e\x1c\b§()
   {
      return this["\x1d\x17\x03"];
   }
   function §\x14\x1b§(§\x19\b\x14§)
   {
      this["\x1d\x17\x03"] = !(_global.isNaN(_loc2_) || _loc2_ == undefined) ? _loc2_ : 0;
      return this["\x1e\x1c\b"]();
   }
   function §\x04\x1b§()
   {
      return this["\x1e\x05\x13"].n;
   }
   function §\x1e\x18\r§()
   {
      return this["\x1e\x05\x13"].d;
   }
   function §\x05\x15§()
   {
      return new dofus.datacenter.["\x1a\x01\x15"](this["\x1e\x05\x13"].o);
   }
   function §\x1e\x11\x19§()
   {
      return new dofus.datacenter.Alignment(this.order.alignment.index,this["\x1e\x05\x13"].av);
   }
   function §\x1e\x1a\x07§()
   {
      return this["\x1c\x0f\x0b"];
   }
   function initialize(§\x19\b\x14§)
   {
      this["\x1d\x17\x03"] = _loc2_;
      this["\x1e\x05\x13"] = this.api.lang["\x17\x14\x05"](_loc2_);
      this["\x1c\x0f\x0b"] = new ank.utils.ExtendedArray();
      var _loc3_ = this["\x1e\x05\x13"].f;
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         this["\x1c\x0f\x0b"].push(new dofus.datacenter.["\x17\x0f\f"](_loc3_[_loc4_][0],_loc3_[_loc4_][1],_loc3_[_loc4_][2]));
         _loc4_ = _loc4_ + 1;
      }
   }
}
