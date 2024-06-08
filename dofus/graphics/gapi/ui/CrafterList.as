class dofus.§\x18\x03\x10§.gapi.ui.CrafterList extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "CrafterList";
   function CrafterList()
   {
      super();
   }
   function §\x16\x12§(§\x17\x0b\x05§)
   {
      this["\x1c\x0f\x15"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1b\x15\n"]();
      }
      return this.jobs;
   }
   function §\x11\r§(§\x17\n\x1a§)
   {
      this["\x1c\x0f\x03"].removeEventListener("modelChanged",this);
      this["\x1c\x0f\x03"] = _loc2_;
      this["\x1c\x0f\x03"].addEventListener("modelChanged",this);
      if(this["\x18\t\x1c"])
      {
         this["\x1b\x14\x12"]();
      }
      return this["\x1e\x16\x1d"]();
   }
   function §\x1e\x16\x1d§()
   {
      return this["\x1c\x0f\x03"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.CrafterList.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      ank.utils.Timer.removeTimer(this,"simulation");
      this.api.network.Exchange["\x18\x13\x1d"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._btnClose2.addEventListener("click",this);
      this["\x1c\x0e\x0e"].addEventListener("itemSelected",this);
      this["\x1c\x0e\x0e"].addEventListener("itemdblClick",this);
      this["\x1c\f\x14"].addEventListener("itemSelected",this);
   }
   function initTexts()
   {
      this._lblJob.text = this.api.lang.getText("JOB");
      this._winBackground.title = this.api.lang.getText("CRAFTERS_LIST");
      this._btnClose2.label = this.api.lang.getText("CLOSE");
      this["\x1c\x0e\x0e"]["\x16\x1d\x12"] = ["",this.api.lang.getText("NAME_BIG"),this.api.lang.getText("LEVEL_SMALL"),this.api.lang.getText("SUBAREA"),this.api.lang.getText("COORDINATES"),this.api.lang.getText("IN_WORKSHOP"),this.api.lang.getText("NOT_FREE"),this.api.lang.getText("MIN_ITEM_IN_RECEIPT")];
   }
   function §\x1b\x14\x14§()
   {
      this["\x1b\x15\n"]();
   }
   function §\x1b\x15\n§()
   {
      this["\x1c\f\x14"].dataProvider = this["\x1c\x0f\x15"];
      if(this["\x1c\x0f\x15"] != undefined && this["\x1c\x0f\x15"].length > 0)
      {
         this["\x1c\f\x14"].selectedIndex = 0;
         this.api.network.Exchange["\x17\x15\x18"](this["\x1c\f\x14"].selectedItem.id);
      }
   }
   function §\x1b\x14\x12§()
   {
      this["\x1c\x0e\x0e"].dataProvider = this["\x1c\x0f\x03"];
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnClose:
         case this._btnClose2:
            this["\x16\x15\n"]();
      }
   }
   function itemdblClick(oEvent)
   {
      this.itemSelected(_loc2_);
   }
   function itemSelected(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\f\x14"]:
            this["\x1c\x0f\x03"]["\x1a\x0b\x16"]();
            this.api.network.Exchange["\x17\x15\x18"](this["\x1c\f\x14"].selectedItem.id);
            break;
         case this["\x1c\x0e\x0e"]:
            var _loc3_ = _loc2_.row.item;
            this.api.ui.loadUIComponent("CrafterCard","CrafterCard",{crafter:_loc3_});
      }
   }
   function modelChanged(oEvent)
   {
      this["\x1b\x14\x12"]();
   }
}
