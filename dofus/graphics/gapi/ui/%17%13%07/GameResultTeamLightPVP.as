class dofus.graphics.gapi.ui.§\x17\x13\x07§.GameResultTeamLightPVP extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "GameResultTeamLightPVP";
   function GameResultTeamLightPVP()
   {
      super();
   }
   function §\x1e\r§(sTitle)
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
      super.init(false,dofus.graphics.gapi.ui["\x17\x13\x07"].GameResultTeamLightPVP.CLASS_NAME);
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
