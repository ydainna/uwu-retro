class dofus.datacenter.§\x1a\x12\x0e§ extends dofus.datacenter.Exchange
{
   var §\x1d\x1b\x01§ = 0;
   var §\x1d\x1a\x1d§ = 0;
   function §\x1a\x12\x0e§(§\x19\x06\n§)
   {
      super();
      this.initialize(_loc3_);
   }
   function §\x1e\x16\x17§()
   {
      return this["\x1c\x0f\x02"];
   }
   function §\x06\x05§()
   {
      return this["\x1c\x10\x01"];
   }
   function §\x06\x06§()
   {
      return this["\x1c\x10\x03"];
   }
   function §\x1a\t§(§\x19\t\x01§)
   {
      this["\x1d\x1b\x01"] = _loc2_;
      this["\x17\x07\x19"]({type:"payKamaChange",value:_loc2_});
      return this["\x06\b"]();
   }
   function §\x06\b§()
   {
      return this["\x1d\x1b\x01"];
   }
   function §\x1a\b§(§\x19\t\x01§)
   {
      this["\x1d\x1a\x1d"] = _loc2_;
      this["\x17\x07\x19"]({type:"payIfSuccessKamaChange",value:_loc2_});
      return this["\x06\x07"]();
   }
   function §\x06\x07§()
   {
      return this["\x1d\x1a\x1d"];
   }
   function initialize(§\x19\x06\n§)
   {
      super.initialize(_loc3_);
      this["\x1c\x0f\x02"] = new ank.utils.ExtendedArray();
      this["\x1c\x10\x01"] = new ank.utils.ExtendedArray();
      this["\x1c\x10\x03"] = new ank.utils.ExtendedArray();
   }
   function §\x16\x1b\x1b§()
   {
      this["\x1c\x0f\x02"]["\x1a\x0b\x16"]();
   }
   function §\x16\x1c\t§()
   {
      this["\x1c\x10\x01"]["\x1a\x0b\x16"]();
   }
   function §\x16\x1c\n§()
   {
      this["\x1c\x10\x03"]["\x1a\x0b\x16"]();
   }
}
