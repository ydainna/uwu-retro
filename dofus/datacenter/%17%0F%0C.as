class dofus.§\x17\x04\x19§.§\x17\x0f\f§ extends Object
{
   function §\x17\x0f\f§(§\x19\b\x14§, §\x19\t\x0f§, §\x16\x03\x1d§)
   {
      super();
      this.api = _global.api;
      this.initialize(_loc3_,_loc4_,_loc5_);
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
      return this["\x1e\x03\x12"].n;
   }
   function §\x02\x06§()
   {
      return this["\x1d\x18\x10"];
   }
   function §\x1e\x19\b§()
   {
      return new dofus.datacenter.["\x17\x0f\r"](this["\x1e\x03\x12"].e,this["\x1b\x1e\x0b"]);
   }
   function §\x1e\x1c\x03§()
   {
      return dofus.Constants["\x17\x0f\x0e"] + this["\x1e\x03\x12"].g + ".swf";
   }
   function initialize(§\x19\b\x14§, §\x19\t\x0f§, §\x16\x03\x1d§)
   {
      this["\x1d\x17\x03"] = _loc2_;
      this["\x1d\x18\x10"] = _loc3_;
      this["\x1b\x1e\x0b"] = _loc4_;
      this["\x1e\x03\x12"] = this.api.lang["\x17\x14\x01"](_loc2_);
   }
}
