class dofus.datacenter.§\x1a\x03\x14§ extends dofus.datacenter.§\x1a\x05\t§
{
   function §\x1a\x03\x14§(sID, §\x16\x1c\x16§, §\x1a\x1b\x1b§, §\x16\x17\x18§, §\x17\x07\x13§, gfxID, nModelID)
   {
      super();
      this.initialize(sID,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_);
      this.modelID = nModelID;
      this["\x1c\x11\x16"] = _global.api.lang["\x17\x1c\x0b"](nModelID);
   }
   function §\x1e\x16\x04§()
   {
      return this["\x1c\x11\x16"].c1;
   }
   function §\x1e\x16\x05§()
   {
      return this["\x1c\x11\x16"].c2;
   }
   function §\x1e\x16\x06§()
   {
      return this["\x1c\x11\x16"].c3;
   }
   function §\x04\x04§()
   {
      return this["\x1c\x11\x16"].n;
   }
}
