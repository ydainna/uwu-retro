class dofus.aks.Waypoints extends dofus.aks.Handler
{
   function Waypoints(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function §\x18\x13\x1d§()
   {
      this.aks.send("WV",true);
   }
   function §\x1b\x16\x11§(§\x19\x10\x16§)
   {
      this.aks.send("WU" + _loc2_,true);
   }
   function onCreate(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = new ank.utils.ExtendedArray();
      var _loc6_ = 1;
      while(_loc6_ < _loc3_.length)
      {
         var _loc7_ = _loc3_[_loc6_].split(";");
         var _loc8_ = Number(_loc7_[0]);
         var _loc9_ = Number(_loc7_[1]);
         var _loc10_ = new dofus.datacenter.["\x1b\x18\x17"](_loc8_,_loc8_ == this.api.datacenter.Map.id,_loc8_ == _loc4_,_loc9_);
         _loc5_.push(_loc10_);
         _loc6_ = _loc6_ + 1;
      }
      this.api.ui.loadUIComponent("Waypoints","Waypoints",{data:_loc5_});
   }
   function onLeave()
   {
      this.api.ui.unloadUIComponent("Waypoints");
   }
   function §\x19\x1e\r§()
   {
      this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_USE_WAYPOINT"),"ERROR_CHAT");
   }
}
