class dofus.datacenter.spellscollection.SpellsDeck
{
   static var DECK_CAPACITY = 14;
   function SpellsDeck(eoSpells, sName, §\x19\b\x0b§)
   {
      this._eoSpells = eoSpells;
      this["\x1e\x0b\x06"] = _loc3_;
      this["\x1d\x17\x01"] = _loc4_;
   }
   static function createEmptySpellsDeck(§\x19\b\x0b§)
   {
      return new dofus.datacenter.spellscollection.SpellsDeck(undefined,undefined,_loc2_);
   }
   function get eoSpells()
   {
      return this._eoSpells;
   }
   function §\x04\x1b§()
   {
      return this["\x1e\x0b\x06"];
   }
   function §\x19\f§(sName)
   {
      this["\x1e\x0b\x06"] = _loc2_;
      return this["\x04\x1b"]();
   }
   function §\x1e\x1c\x04§()
   {
      return this["\x1d\x17\x01"];
   }
}
