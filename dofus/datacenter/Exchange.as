class dofus.§\x17\x04\x19§.Exchange extends Object
{
   var §\x1d\x18\x1a§ = 0;
   var §\x1d\x15\x17§ = 0;
   function Exchange(§\x19\x06\n§)
   {
      super();
      this.initialize(_loc3_);
   }
   function §\x15\x07§(§\x17\x0b\x04§)
   {
      this["\x1c\x0f\x11"] = _loc2_;
      return this["\x1e\x1c\x14"]();
   }
   function §\x1e\x1c\x14§()
   {
      return this["\x1c\x0f\x11"];
   }
   function §\x02\x14§()
   {
      return this["\x1c\x0f\x17"];
   }
   function §\x1e\x18\x1a§()
   {
      return this["\x1c\x0f\t"];
   }
   function §\x1e\x16\x17§()
   {
      return this["\x1c\x0f\x02"];
   }
   function §\x07\n§()
   {
      return this["\x1c\x10\b"];
   }
   function §\x1e\x18\x1c§()
   {
      return this["\x1d\x15\x18"];
   }
   function §\x17\x0b§(§\x19\t\x12§)
   {
      this["\x1d\x18\x1a"] = _loc2_;
      this["\x17\x07\x19"]({type:"localKamaChange",value:_loc2_});
      return this["\x02\x15"]();
   }
   function §\x02\x15§()
   {
      return this["\x1d\x18\x1a"];
   }
   function §\x12\x13§(§\x19\x06\t§)
   {
      this["\x1d\x15\x17"] = _loc2_;
      this["\x17\x07\x19"]({type:"distantKamaChange",value:_loc2_});
      return this["\x1e\x18\x1b"]();
   }
   function §\x1e\x18\x1b§()
   {
      return this["\x1d\x15\x17"];
   }
   function initialize(§\x19\x06\n§)
   {
      eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
      this["\x1d\x15\x18"] = _loc2_;
      this["\x1c\x0f\x17"] = new ank.utils.ExtendedArray();
      this["\x1c\x0f\t"] = new ank.utils.ExtendedArray();
      this["\x1c\x0f\x02"] = new ank.utils.ExtendedArray();
      this["\x1c\x10\b"] = new ank.utils.ExtendedArray();
      this["\x1c\x10\b"][0] = false;
      this["\x1c\x10\b"][1] = false;
   }
   function §\x16\x1c\x07§()
   {
      this["\x1c\x0f\x17"]["\x1a\x0b\x16"]();
   }
   function §\x16\x1b\x1d§()
   {
      this["\x1c\x0f\t"]["\x1a\x0b\x16"]();
   }
   function §\x16\x1b\x1b§()
   {
      this["\x1c\x0f\x02"]["\x1a\x0b\x16"]();
   }
}
