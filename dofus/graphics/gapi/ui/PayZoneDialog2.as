class dofus.graphics.gapi.ui.PayZoneDialog2 extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "PayZoneDialog2";
   function PayZoneDialog2()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.PayZoneDialog2.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
   }
   function addListeners()
   {
      this._btnMoreInfo.onRelease = this["\x18\x15\r"](this.api);
   }
   function §\x18\x15\r§(api)
   {
      return function()
      {
         getURL(api.lang.getConfigText("MEMBERS_LINK"),"_blank");
      };
   }
   function initTexts()
   {
      this._lblTitle.text = this.api.lang.getText("PAY_ZONE_TITLE");
      this._taContent.text = this.api.lang.getText("PAY_ZONE_DESC");
      this._btnMoreInfo["\x1c\x11\x15"].text = this.api.lang.getText("PAY_ZONE_BTN");
   }
}
