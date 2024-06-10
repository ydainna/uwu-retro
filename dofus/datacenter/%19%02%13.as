class dofus.datacenter.§\x19\x02\x13§ extends dofus.datacenter.§\x16\x19\x02§
{
   function §\x19\x02\x13§(sID, §\x16\x1c\x16§, §\x1a\x1b\x1b§, §\x16\x17\x18§, §\x17\x07\x13§, gfxID, bShowIsPlayer)
   {
      super();
      this["\x1c\b\n"] = bShowIsPlayer == undefined ? false : bShowIsPlayer;
      this.initialize(sID,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_);
   }
   function §\x04\x1b§()
   {
      if(!this["\x1c\b\n"])
      {
         return this["\x18\x1d\x1b"];
      }
      return this["\x1e\x0b\x17"];
   }
   function §\x18\x18§(§\x19\x03\x01§)
   {
      this["\x1d\x1a\x05"] = _loc2_;
      return this["\x04\x06"]();
   }
   function §\x04\x06§()
   {
      return this["\x1d\x1a\x05"];
   }
   function §\x1a\r§(§\x19\x03\x01§)
   {
      this["\x1e\x0b\x17"] = _loc2_;
      return this["\x06\r"]();
   }
   function §\x06\r§()
   {
      return this["\x1e\x0b\x17"];
   }
   function §\x04\x07§()
   {
      return this.api.lang["\x17\x1c\t"](this["\x1d\x1a\x05"]).n;
   }
   function §\x1e\x11\x19§()
   {
      return new dofus.datacenter.Alignment();
   }
   function §\x1a\x13§(§\x19\f\x0e§)
   {
      this["\x1d\x1b\x07"] = Number(_loc2_);
      return this["\x06\x15"]();
   }
   function §\x06\x15§()
   {
      return this["\x1d\x1b\x07"];
   }
   function §\x02\x07§()
   {
      return this.api.lang["\x17\x1c\t"](this["\x1d\x1a\x05"])["g" + this["\x1d\x1b\x07"]].l;
   }
   function §\x07\x17§()
   {
      return this.api.lang["\x17\x1c\t"](this["\x1d\x1a\x05"])["g" + this["\x1d\x1b\x07"]].r;
   }
   function §\x1c\x18§(§\x16\b\b§)
   {
      this["\x1c\b\n"] = _loc2_;
      return this["\t\x06"]();
   }
   function §\t\x06§()
   {
      return this["\x1c\b\n"];
   }
}
