class dofus.aks.Key extends dofus.aks.Handler
{
   function Key(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function §\x18\x13\x1d§()
   {
      this.aks.send("KV",false);
   }
   function §\x1a\x13\x1a§(§\x19\x10\x06§, §\x1b\x02\x07§)
   {
      this.aks.send("KK" + _loc2_ + "|" + _loc3_);
   }
   function §\x19\x16\x0b§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      var _loc6_ = Number(_loc3_[2]);
      this.api.ui.loadUIComponent("KeyCode","KeyCode",{title:this.api.lang.getText("TYPE_CODE"),changeType:_loc4_,slotsCount:_loc5_,lockType:_loc6_});
   }
   function §\x19\x19\x12§(bSuccess)
   {
      var _loc3_ = !_loc2_ ? this.api.lang.getText("BAD_CODE") : this.api.lang.getText("CODE_CHANGED");
      this.api.kernel.showMessage(this.api.lang.getText("CODE"),_loc3_,"ERROR_BOX",{name:"Key"});
   }
   function §\x19\x19\x16§()
   {
      this.api.ui.unloadUIComponent("KeyCode");
   }
}
