class dofus.§\x18\x03\x10§.gapi.ui.§\x17\x13\x07§.§\x17\x13\t§ extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "GameResultPlayerPVPNoHonour";
   function §\x17\x13\t§()
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
      super.init(false,dofus.graphics.gapi.ui["\x17\x13\x07"]["\x17\x13\t"].CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
      this["\x1d\x06\x19"]._visible = false;
   }
   function addListeners()
   {
   }
   function initTexts()
   {
      this["\x1d\x04\x12"].text = this["\x1e\r\b"];
      this["\x1c\x1b\x0f"].text = this.api.lang.getText("NAME_BIG");
      this["\x1c\x1a\x07"].text = this.api.lang.getText("LEVEL_SMALL");
      this["\x1c\x19\x1c"].text = this.api.lang.getText("KAMAS");
      this["\x1c\x18\x19"].text = this.api.lang.getText("HONOUR_POINTS");
      this["\x1c\x1d\x10"].text = this.api.lang.getText("RANK");
      this._lblItems.text = this.api.lang.getText("WIN_ITEMS");
      if(!this.api.datacenter.Basics.aks_current_server["\x18\x0e\x03"]())
      {
         this["\x1c\x16\x1c"].text = this.api.lang.getText("DISGRACE_POINTS");
      }
      else
      {
         this["\x1c\x16\x1c"].text = this.api.lang.getText("WIN_XP");
      }
   }
   function §\x18\t\x14§()
   {
      if(this.api.datacenter.Basics.aks_current_server["\x18\x0e\x03"]())
      {
         this["\x1d\x06\x19"].cellRenderer = "GameResultPlayerPVPNoHonour";
      }
      else
      {
         this["\x1d\x06\x19"].cellRenderer = "GameResultPlayerPVP";
      }
      var _loc2_ = this["\x1c\x0f\x06"].length;
      this["\x1d\x06\x19"].dataProvider = this["\x1c\x0f\x06"];
      this["\x1d\x06\x19"]["\x1a\x19\x18"](undefined,Math.min(_loc2_,dofus.graphics.gapi.ui.GameResult["\x18\x1b\n"]) * this["\x1d\x06\x19"].rowHeight);
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
