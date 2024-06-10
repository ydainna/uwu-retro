class dofus.aks.RapidStuff extends dofus.aks.Handler
{
   function RapidStuff(oAKS, oAPI)
   {
      super.initialize(oAKS,oAPI);
   }

   function editRapidStuff(nRapidStuffID, nIconID, sName)
   {
      this.aks.send("xE" + nRapidStuffID + "|" + nIconID + "|" + sName);
   }

   function deleteRapidStuff(nRapidStuffID)
   {
      this.aks.send("xD" + nRapidStuffID);
   }

   function saveRapidStuff(nRapidStuffID)
   {
      this.aks.send("xS" + nRapidStuffID);
   }

   function loadRapidStuff(nRapidStuffID)
   {
      this.aks.send("xL" + nRapidStuffID);
   }

   function onRapidStuffCache(sExtraData)
   {
      var _loc3_ = sExtraData.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      var _loc6_ = _loc3_.length <= 2 ? undefined : _loc3_[2];
      var _loc7_ = _loc3_.length <= 3 ? undefined : _loc3_[3];
      var _loc8_ = new dofus.datacenter.RapidStuff(_loc5_,_loc4_,_loc6_);
      this.api.datacenter.Player.putRapidStuff(_loc4_,_loc8_);
   }
}
