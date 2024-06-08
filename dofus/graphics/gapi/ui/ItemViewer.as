class dofus.§\x18\x03\x10§.gapi.ui.ItemViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ItemViewer";
   function ItemViewer()
   {
      super();
   }
   function §\x16\n§(§\x19\x13\x07§)
   {
      this["\x1e\x03\x18"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1b\x14\x14"]();
      }
      return this["\x01\x07"]();
   }
   function §\x01\x07§()
   {
      return this["\x1e\x03\x18"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.ItemViewer.CLASS_NAME);
   }
   function destroy()
   {
      this.gapi.hideTooltip();
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
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
      this["\x1d\x11\x01"].onRollOver = function()
      {
         this._parent["\x19\x1e\x01"]();
      };
      this["\x1d\x11\x01"].onRollOut = function()
      {
         this._parent["\x19\x1d\x1d"]();
      };
   }
   function §\x1b\x14\x14§()
   {
      this["\x1c\x11\x13"]["\x18\x10\x17"] = this["\x1e\x03\x18"];
   }
   function initTexts()
   {
      this._btnClose.label = this.api.lang.getText("CLOSE");
      this["\x1d\x04\x07"].text = this.api.lang.getText("ITEMS_CHAT_WARNING");
   }
   function click(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._btnClose)
      {
         this["\x16\x15\n"]();
      }
   }
   function §\x19\x1d\x1d§()
   {
      this.gapi.hideTooltip();
   }
   function §\x19\x1e\x01§()
   {
      this.gapi.showTooltip(this.api.lang.getText("ITEMS_CHAT_WARNING_ROLLOVER"),this["\x1d\x11\x01"],14);
   }
}
