class dofus.aks.Documents extends dofus.aks.Handler
{
   function Documents(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function §\x18\x13\x1d§()
   {
      this.aks.send("dV");
   }
   function §\x19\x16\x0b§(bSuccess, sExtraData)
   {
      if(_loc2_)
      {
         var _loc4_ = _loc3_;
         var _loc5_ = this.api.config.language;
         this.api.ui.loadUIComponent("CenterText","CenterText",{text:this.api.lang.getText("LOADING"),background:false},{bForceLoad:true});
         this.api.kernel.DocumentsServersManager["\x18\x15\x1a"](_loc5_ + "_" + _loc4_);
      }
   }
   function §\x19\x19\x16§()
   {
      this.api.ui.unloadUIComponent("Document");
   }
}
