class dofus.§\x18\x03\x10§.gapi.ui.PayZone extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "PayZone";
   function PayZone()
   {
      super();
   }
   function §\x12\t§(§\x19\x05\x1c§)
   {
      this["\x1d\x15\x0f"] = _loc2_;
      return this["\x1e\x18\x12"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.PayZone.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      if(this.api.datacenter.Basics.payzone_isFirst)
      {
         this.gapi.loadUIComponent("PayZoneDialog2","PayZoneDialog2",{name:"El Pemy",gfx:"9059",dialogID:this["\x1d\x15\x0f"]});
      }
   }
   function addListeners()
   {
      this["\x1c\n\x01"].addEventListener("click",this);
   }
   function click(oEvent)
   {
      this.gapi.loadUIComponent("PayZoneDialog2","PayZoneDialog2",{name:"El Pemy",gfx:"9059",dialogID:this["\x1d\x15\x0f"]});
   }
}
