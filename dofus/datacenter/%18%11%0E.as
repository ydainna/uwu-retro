class dofus.§\x17\x04\x19§.§\x18\x11\x0e§ extends Object
{
   function §\x18\x11\x0e§(§\x19\x0b\x1d§, §\x19\n\x11§, nMaxSlot)
   {
      super();
      this["\x1d\x1a\x1b"] = _loc3_;
      this._nMinSlot = _loc4_ <= 1 ? 2 : _loc4_;
      this["\x1d\x19\x17"] = nMaxSlot;
   }
   function §\x1e\x1e\t§()
   {
      return (this["\x1d\x1a\x1b"] & 1) == 1;
   }
   function §\x1e\x1d\x11§()
   {
      return (this["\x1d\x1a\x1b"] & 2) == 2;
   }
   function §\x07\x19§()
   {
      return (this["\x1d\x1a\x1b"] & 4) == 4;
   }
   function §\x04\x02§()
   {
      return this._nMinSlot;
   }
   function §\x03\x12§()
   {
      return this["\x1d\x19\x17"];
   }
}
