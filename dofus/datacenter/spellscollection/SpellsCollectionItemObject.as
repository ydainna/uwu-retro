class dofus.§\x17\x04\x19§.spellscollection.SpellsCollectionItemObject
{
   function SpellsCollectionItemObject(§\x1a\x02\x06§)
   {
      this["\x1e\x05\x14"] = _loc2_;
   }
   function §\t\x17§()
   {
      return this["\x1e\x05\x14"];
   }
   function §\x1e\x1c\x03§()
   {
      return "SpellsCollectionItem";
   }
   function get forceReloadOnContainer()
   {
      return true;
   }
   function §\x06\x02§()
   {
      return {spell:this["\x1e\x05\x14"]};
   }
}
