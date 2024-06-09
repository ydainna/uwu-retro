class dofus.§\x17\x04\x19§.modreport.ModReportPlayerEntityInfos
{
   function ModReportPlayerEntityInfos(§\x1a\x10\x12§, §\x1a\x10\x15§, sAccountPseudo, bIsOnline, sContext)
   {
      this._sCharacterID = _loc2_;
      this["\x1e\b\x07"] = _loc3_;
      this._sAccountPseudo = sAccountPseudo;
      this._bIsOnline = bIsOnline;
      this._sContext = sContext;
   }
   function get characterID()
   {
      return this._sCharacterID;
   }
   function get accountPseudo()
   {
      return this._sAccountPseudo;
   }
   function __get__characterName()
   {
      return this["\x1e\b\x07"];
   }
   function get isOnline()
   {
      return this._bIsOnline;
   }
   function get context()
   {
      return this._sContext;
   }
   function toString()
   {
      return "Character Name : " + this.characterName + ", Account Pseudo : " + this.accountPseudo + ", Character ID : " + this.characterID;
   }
}
