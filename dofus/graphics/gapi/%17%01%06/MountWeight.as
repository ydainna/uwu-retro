class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.MountWeight extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "MountWeight";
   function MountWeight()
   {
      super();
   }
   function §\x1d\x18§(§\x1b\b\x17§)
   {
      this["\x1e\f\x1c"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1e\x06\x18"].styleName = _loc2_;
      }
      return this["\n\x0e"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.MountWeight.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
   }
   function addListeners()
   {
      this["\x1e\x06\x18"].addEventListener("over",this);
      this["\x1e\x06\x18"].addEventListener("out",this);
      this.api.datacenter.Player.mount.addEventListener("podsChanged",this);
   }
   function §\x18\t\x14§()
   {
      if(this["\x1e\f\x1c"] != undefined)
      {
         this["\x1e\x06\x18"].styleName = this["\x1e\f\x1c"];
      }
      this.podsChanged();
   }
   function podsChanged(oEvent)
   {
      var _loc3_ = this.api.datacenter.Player.mount.podsMax;
      var _loc4_ = this.api.datacenter.Player.mount.pods;
      this["\x1d\x15\b"] = _loc4_;
      this["\x1e\x06\x18"]["\x18\x19\x12"] = _loc3_;
      this["\x1e\x06\x18"].value = _loc4_;
   }
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this["\x1e\x06\x18"])
      {
         var _loc3_ = _loc2_.target["\x18\x19\x12"];
         var _loc4_ = new ank.utils.ExtendedString(this["\x1d\x15\b"])["\x15\x1e\x01"](" ",3);
         var _loc5_ = new ank.utils.ExtendedString(_loc3_)["\x15\x1e\x01"](" ",3);
         this.gapi.showTooltip(this.api.lang.getText("PLAYER_WEIGHT",[_loc4_,_loc5_]),_loc2_.target,-20);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
