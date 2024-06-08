class dofus.§\x17\x04\x19§.§\x15\x1b\x15§ extends Object
{
   function §\x15\x1b\x15§(§\x19\x10\n§, §\x19\x10\x06§, §\x19\x07\x19§)
   {
      super();
      this.api = _global.api;
      this.initialize(_loc3_,_loc4_,_loc5_);
   }
   function §\f\x15§()
   {
      return this["\x1d\x1e\x1a"];
   }
   function §\f\r§()
   {
      if(this["\x1d\x1e\x18"] != undefined)
      {
         return this["\x1d\x1e\x18"];
      }
      return this["\x1e\x03\x1c"].t;
   }
   function §\x1e\x1b\x05§()
   {
      return this["\x1e\x03\x1c"].g;
   }
   function §\x1e\x1b\x01§()
   {
      return this.type + "_" + this.gfxID;
   }
   function §\x1e\x1a\x18§()
   {
      return this["\x1d\x16\x0f"];
   }
   function initialize(§\x19\x10\n§, §\x19\x10\x06§, §\x19\x07\x19§)
   {
      this["\x1d\x1e\x1a"] = _loc2_;
      if(_loc4_ != undefined)
      {
         this["\x1d\x16\x0f"] = _loc4_;
      }
      if(_loc3_ != undefined)
      {
         this["\x1d\x1e\x18"] = _loc3_;
      }
      this["\x1e\x03\x1c"] = this.api.lang["\x17\x19\x1d"](_loc2_);
   }
}
