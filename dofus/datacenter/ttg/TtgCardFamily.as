class dofus.datacenter.ttg.TtgCardFamily
{
   function TtgCardFamily(nFamilyID, nFamilyCompletionPercentage, nFamilyFoilCompletionPercentage)
   {
      this.api = _global.api;
      this._nFamilyID = nFamilyID;
      this.familyName = this.api.lang.getTtgFamilyObject(this._nFamilyID).n;
      this._nFamilyCompletionPercentage = nFamilyCompletionPercentage;
      this._nFamilyFoilCompletionPercentage = nFamilyFoilCompletionPercentage;
   }
   function get familyID()
   {
      return this._nFamilyID;
   }
   function §\x1e\x1c\x03§()
   {
      return "CardFamily";
   }
   function get forceReloadOnContainer()
   {
      return true;
   }
   function §\x06\x02§()
   {
      return {familyID:this.familyID,familyCompletionPercentage:this._nFamilyCompletionPercentage,familyFoilCompletionPercentage:this._nFamilyFoilCompletionPercentage};
   }
}
