class dofus.aks.Dialog extends dofus.aks.Handler
{
   function Dialog(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function §\x16\x0b\x07§(§\x1b\x04\x0b§)
   {
      this.aks.send("DB" + _loc2_,true);
   }
   function §\x17\x02\x04§(§\x1b\x04\x0b§)
   {
      this.aks.send("DC" + _loc2_,true);
   }
   function §\x18\x13\x1d§()
   {
      this.aks.send("DV",true);
   }
   function response(§\x19\f\x1c§, §\x19\r\x0f§)
   {
      this.aks.send("DR" + _loc2_ + "|" + _loc3_,true);
   }
   function §\x19\x16\r§(sExtraData)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_) === "1")
      {
         getURL("javascript:DownloadOs()","_self");
      }
   }
   function §\x19\x16\x0b§(bSuccess, sExtraData)
   {
      if(!_loc2_)
      {
         return undefined;
      }
      var _loc4_ = Number(_loc3_);
      var _loc5_ = this.api.datacenter.Sprites.getItemAt(_loc4_);
      var _loc6_ = new Array();
      var _loc7_ = _loc5_.name;
      if(dofus.Constants.DEBUG && _loc5_.unicID != undefined)
      {
         _loc7_ = _loc7_ + " (" + _loc5_.unicID + ")";
      }
      _loc6_[1] = _loc5_.color1 != undefined ? _loc5_.color1 : -1;
      _loc6_[2] = _loc5_.color2 != undefined ? _loc5_.color2 : -1;
      _loc6_[3] = _loc5_.color3 != undefined ? _loc5_.color3 : -1;
      this.api.ui.loadUIComponent("NpcDialog","NpcDialog",{name:_loc7_,gfx:_loc5_.gfxID,id:_loc4_,customArtwork:_loc5_.customArtwork,colors:_loc6_});
   }
   function §\x19\x1b\x15§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = _loc3_[0].split(";");
      var _loc5_ = Number(_loc4_[0]);
      var _loc6_ = _loc4_[1].split(",");
      var _loc7_ = _loc3_[1].split(";");
      var _loc8_ = new dofus.datacenter.["\x1a\b\x1b"](_loc5_,_loc7_,_loc6_);
      this.api.ui.getUIComponent("NpcDialog")["\x1a\x19\x03"](_loc8_);
   }
   function §\x19\x1b\x02§()
   {
      this.api.ui.getUIComponent("NpcDialog")["\x1a\x18\x15"]();
   }
   function §\x19\x19\x16§()
   {
      this.api.ui.unloadUIComponent("NpcDialog");
   }
}
