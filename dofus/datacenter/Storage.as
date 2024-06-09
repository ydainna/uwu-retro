class dofus.§\x17\x04\x19§.Storage extends Object
{
   var §\x1c\x06\f§ = false;
   var §\x1c\x06\r§ = false;
   function Storage()
   {
      super();
      this.initialize();
   }
   function §\x17\f§(§\x16\x0e\f§)
   {
      this["\x1c\x06\f"] = _loc2_;
      return this["\x02\x16"]();
   }
   function §\x02\x16§()
   {
      return this["\x1c\x06\f"];
   }
   function §\x15\x1b§(§\x16\x0e\r§)
   {
      this["\x1c\x06\r"] = _loc2_;
      this["\x17\x07\x19"]({type:"locked",value:_loc2_});
      return this["\x1e\x1d\x1d"]();
   }
   function §\x1e\x1d\x1d§()
   {
      return this["\x1c\x06\r"];
   }
   function §\x15\x07§(§\x17\x0b\x04§)
   {
      this["\x1c\x0f\x11"] = _loc2_;
      this["\x17\x07\x19"]({type:"modelChanged"});
      return this["\x1e\x1c\x14"]();
   }
   function §\x1e\x1c\x14§()
   {
      return this["\x1c\x0f\x11"];
   }
   function §\x16\x13§(§\x19\t\x03§)
   {
      this["\x1d\x17\x11"] = _loc2_;
      this["\x17\x07\x19"]({type:"kamaChanged",value:_loc2_});
      return this["\x01\x11"]();
   }
   function §\x01\x11§()
   {
      return this["\x1d\x17\x11"];
   }
   function initialize()
   {
      mx.["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
   }
}
