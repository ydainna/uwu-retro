class dofus.§\x17\x04\x19§.§\x1b\x0b\x18§ extends Object
{
   function §\x1b\x0b\x18§(§\x19\b\x0b§, §\x19\x03\x05§)
   {
      super();
      this.api = _global.api;
      this.initialize(_loc3_,_loc4_);
   }
   function §\x1e\x1c\x05§()
   {
      return this["\x1d\x17\x01"];
   }
   function §\x1e\x11\x19§()
   {
      return this["\x1e\x02\x07"];
   }
   function §\x0e\x0f§(§\x19\x11\x0f§)
   {
      this["\x1e\x02\x07"] = _loc2_;
      return this["\x1e\x11\x19"]();
   }
   function §\x04\x1b§()
   {
      return String(this.api.lang["\x17\x1b\x0f"](this["\x1d\x17\x01"]).n).substr(0,2) != "//" ? this.api.lang["\x17\x1b\x0f"](this["\x1d\x17\x01"]).n : String(this.api.lang["\x17\x1b\x0f"](this["\x1d\x17\x01"]).n).substr(2);
   }
   function §\x1e\x16\x03§()
   {
      return dofus.Constants["\x16\x05\x02"][this["\x1e\x02\x07"].index];
   }
   function initialize(§\x19\b\x0b§, §\x19\x03\x05§)
   {
      this["\x1d\x17\x01"] = _loc2_;
      this["\x1e\x02\x07"] = new dofus.datacenter.Alignment(_loc3_);
   }
}
