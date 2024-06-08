class dofus.§\x18\x03\x10§.gapi.ui.PlayerInfos extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "PlayerInfos";
   function PlayerInfos()
   {
      super();
   }
   function §\x11\x19§(§\x19\x12\x10§)
   {
      this._oData = _loc2_;
      return this["\x1e\x18\x01"]();
   }
   function §\x1e\x18\x01§()
   {
      return this._oData;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.PlayerInfos.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
   }
   function §\x18\t\x14§()
   {
      if(this._oData != undefined)
      {
         this._winBackground.title = this.api.lang.getText("EFFECTS") + " " + this._oData.name + " (" + this.api.lang.getText("LEVEL_SMALL") + this._oData.Level + ")";
         this["\x1d\x06\x14"].dataProvider = this._oData["\x17\f\t"]["\x17\x17\x04"]();
         new org.flashdevelop.utils.FlashConnect.trace(this._oData["\x1b\t\x17"],"dofus.graphics.gapi.ui.PlayerInfos::initData","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/graphics/gapi/ui/PlayerInfos.as",92);
      }
   }
   function quit()
   {
      this["\x1b\x13\x13"]();
   }
   function click(oEvent)
   {
      this["\x1b\x13\x13"]();
   }
}
