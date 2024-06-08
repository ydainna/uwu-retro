class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.TaxCollectorsViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "TaxCollectorsViewer";
   function TaxCollectorsViewer()
   {
      super();
   }
   function §\x1e\x05§(§\x17\x0b\x18§)
   {
      this["\x1b\x14\x14"](_loc2_);
      return this["\x0b\x03"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.TaxCollectorsViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._btnHireTaxCollector.addEventListener("click",this);
      this._btnHireTaxCollector.addEventListener("over",this);
      this._btnHireTaxCollector.addEventListener("out",this);
   }
   function initTexts()
   {
      this["\x1c\x0e\x16"]["\x16\x1d\x12"] = ["",this.api.lang.getText("NAME_BIG") + " / " + this.api.lang.getText("LOCALISATION"),this.api.lang.getText("ATTACKERS_SMALL"),this.api.lang.getText("DEFENDERS")];
      this["\x1c\x16\x17"].text = this.api.lang.getText("GUILD_TAXCOLLECTORS_LIST");
      this["\x1c\x19\x02"].text = this.api.lang.getText("HELP_HOW_DEFEND_TAX_SHORT");
      this._btnHireTaxCollector.label = this.api.lang.getText("HIRE_TAXCOLLECTOR");
   }
   function §\x1b\x14\x14§(§\x17\x0b\x18§)
   {
      var _loc3_ = this.api.datacenter.Player.guildInfos;
      this["\x1c\x15\x1a"].text = this.api.lang.getText("GUILD_TAX_COUNT",[_loc3_["\x1b\x0e\t"],_loc3_["\x1b\x0e\n"]]);
      _loc2_.sortOn(["state","\x18\x0e\x1c","startDate"],Array.NUMERIC | Array.DESCENDING);
      this["\x1c\x0e\x16"].dataProvider = _loc2_;
      this._btnHireTaxCollector.enabled = _loc3_["\x1a\x05\x15"]["\x16\x16\x05"] && (_loc3_["\x1b\x0e\t"] < _loc3_["\x1b\x0e\n"] && !this.api.datacenter.Player.cantInteractWithTaxCollector);
   }
   function click(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._btnHireTaxCollector)
      {
         var _loc3_ = this.api.datacenter.Player;
         if(_loc3_.guildInfos["\x1b\x0e\x05"] < _loc3_.Kama)
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("DO_YOU_HIRE_TAXCOLLECTOR",[new ank.utils.ExtendedString(_loc3_.guildInfos["\x1b\x0e\x05"])["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3)]),"CAUTION_YESNO",{name:"GuildTaxCollector",listener:this});
         }
         else
         {
            this.api.kernel.showMessage("undefined",this.api.lang.getText("NOT_ENOUGTH_RICH_TO_HIRE_TAX"),"ERROR_BOX");
         }
      }
   }
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._btnHireTaxCollector)
      {
         this.gapi.showTooltip(this.api.lang.getText("COST") + " : " + new ank.utils.ExtendedString(this.api.datacenter.Player.guildInfos["\x1b\x0e\x05"])["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + " " + this.api.lang.getText("KAMAS"),_loc2_.target,-20);
      }
   }
   function yes(oEvent)
   {
      this.api.network.Guild["\x18\x07\t"]();
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
