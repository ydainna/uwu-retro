class dofus.aks.InventoryShortcuts extends dofus.aks.Handler
{
   function InventoryShortcuts(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function sendInventoryShortcutAdd(§\x19\f\r§, nObjectID)
   {
      this.aks.send("OrA" + _loc2_ + ";" + nObjectID);
   }
   function sendInventoryShortcutMove(nOldPosition, nNewPosition)
   {
      this.aks.send("OrM" + nOldPosition + ";" + nNewPosition);
   }
   function sendInventoryShortcutRemove(§\x19\f\r§)
   {
      this.aks.send("OrR" + _loc2_);
   }
   function onInventoryShortcutAdded(sExtraData)
   {
      var _loc3_ = _loc2_.split(";");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      var _loc6_ = _loc3_[2];
      var _loc7_ = new dofus.datacenter..InventoryShortcutItem(_loc5_,_loc4_,_loc6_);
      var _loc8_ = this.api.datacenter.Player.InventoryShortcuts;
      _loc8_["\x15\x1d\x13"](_loc4_,_loc7_);
   }
   function onInventoryShortcutRemoved(sExtraData)
   {
      var _loc3_ = Number(_loc2_);
      var _loc4_ = this.api.datacenter.Player.InventoryShortcuts;
      _loc4_["\x1a\f\n"](_loc3_);
   }
}
