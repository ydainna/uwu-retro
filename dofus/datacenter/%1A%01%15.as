class dofus.datacenter.§\x1a\x01\x15§ extends Object
{
   function §\x1a\x01\x15§(§\x19\b\x14§)
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
      return this["\x1e\x04\x19"].n;
   }
   function §\x1e\x11\x19§()
   {
      return new dofus.datacenter.Alignment(this["\x1e\x04\x19"].a);
   }
   function §\x1e\x1c\x03§()
   {
      return dofus.Constants["\x1a\x01\x16"] + this["\x1d\x17\x03"] + ".swf";
   }
   function initialize(§\x19\b\x14§)
   {
      this["\x1d\x17\x03"] = _loc2_;
      this["\x1e\x04\x19"] = this.api.lang["\x17\x14\x03"](_loc2_);
   }
}
