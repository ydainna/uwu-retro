class dofus.§\x18\x03\x10§.gapi.ui.§\x17\x13\x07§.GameResultTeamLight extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "GameResultTeamLight";
   function GameResultTeamLight()
   {
      super();
   }
   function §\x1e\r§(§\x1b\n\x18§)
   {
      this["\x1e\r\b"] = _loc2_;
      return this["\f\x02"]();
   }
   function §\x11\x1a§(§\x17\n\x1c§)
   {
      this["\x1c\x0f\x06"] = _loc2_;
      return this["\x1e\x18\x03"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui["\x17\x13\x07"].GameResultTeamLight.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      this["\x1d\x06\x19"]._visible = false;
   }
   function addListeners()
   {
   }
   function initData()
   {
      var _loc2_ = this["\x1c\x0f\x06"].length;
      this["\x1d\x06\x19"].dataProvider = this["\x1c\x0f\x06"];
      this["\x1d\x06\x19"]["\x1a\x19\x18"](undefined,Math.min(_loc2_,1) * this["\x1d\x06\x19"].rowHeight);
      this["\x1d\x06\x19"]._visible = true;
   }
   function itemRollOver(oEvent)
   {
   }
   function itemRollOut(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
