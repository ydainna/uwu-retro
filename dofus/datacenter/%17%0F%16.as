class dofus.datacenter.§\x17\x0f\x16§ extends Object
{
   function §\x17\x0f\x16§(§\x19\b\x0b§, §\x19\x06\f§)
   {
      super();
      this.initialize(_loc3_,_loc4_);
   }
   function §\x1e\x1c\x05§()
   {
      return this["\x1d\x17\x01"];
   }
   function §\x1e\x19\x06§()
   {
      return this.api.kernel.GameManager["\x17\x17\x01"](this.duration);
   }
   function §\x1e\x1b\x10§()
   {
      return this["\x1c\x10\x12"] != undefined && this["\x1c\x10\x13"] != undefined;
   }
   function §\x0b\x0e§()
   {
      return dofus.Constants["\x18\x01\x14"](this["\x1d\x1e\x03"],this["\x1d\x1e\x01"]);
   }
   function §\x0b\r§()
   {
      return this["\x1d\x1e\x02"];
   }
   function §\x0b\x10§()
   {
      return this["\x1c\x10\x12"];
   }
   function §\x0b\x0f§()
   {
      var _loc2_ = 0;
      var _loc3_ = 0;
      while(_loc3_ < this["\x1c\x10\x12"].length)
      {
         _loc2_ += this["\x1c\x10\x12"][_loc3_].level;
         _loc3_ = _loc3_ + 1;
      }
      return _loc2_;
   }
   function §\x0b\x12§()
   {
      return dofus.Constants["\x18\x01\x14"](this["\x1d\x1e\x06"],this["\x1d\x1e\x04"]);
   }
   function §\x0b\x11§()
   {
      return this["\x1d\x1e\x05"];
   }
   function §\x0b\x14§()
   {
      return this["\x1c\x10\x13"];
   }
   function §\x0b\x13§()
   {
      var _loc2_ = 0;
      var _loc3_ = 0;
      while(_loc3_ < this["\x1c\x10\x13"].length)
      {
         _loc2_ += this["\x1c\x10\x13"][_loc3_].level;
         _loc3_ = _loc3_ + 1;
      }
      return _loc2_;
   }
   function initialize(§\x19\b\x0b§, §\x19\x06\f§)
   {
      this.api = _global.api;
      this["\x1d\x17\x01"] = _loc2_;
      this.duration = _loc3_;
   }
   function §\x15\x1e\x1d§(§\x19\b\x14§, §\x19\x10\x06§, §\x19\x03\x06§, §\x19\x05\f§)
   {
      switch(_loc2_)
      {
         case 1:
            this["\x1d\x1e\x03"] = _loc3_;
            this["\x1d\x1e\x01"] = _loc4_;
            this["\x1d\x1e\x02"] = _loc5_;
            break;
         case 2:
            this["\x1d\x1e\x06"] = _loc3_;
            this["\x1d\x1e\x04"] = _loc4_;
            this["\x1d\x1e\x05"] = _loc5_;
      }
   }
   function §\x15\x1e\x06§(§\x19\b\x14§, §\x17\x0b\r§)
   {
      switch(_loc2_)
      {
         case 1:
            this["\x1c\x10\x12"] = _loc3_;
            break;
         case 2:
            this["\x1c\x10\x13"] = _loc3_;
      }
   }
}
