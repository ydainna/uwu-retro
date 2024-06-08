class dofus.§\x18\x03\x10§.gapi.ui.MountViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "MountViewer";
   function MountViewer()
   {
      super();
   }
   function §\x18\x19§(§\x19\x13\x13§)
   {
      this["\x1e\x04\x11"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1b\x14\x14"]();
      }
      return this["\x04\t"]();
   }
   function §\x04\t§()
   {
      return this["\x1e\x04\x11"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.MountViewer.CLASS_NAME);
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
   }
   function §\x1b\x14\x14§()
   {
      this["\x1d\x12\x12"].mount = this["\x1e\x04\x11"];
   }
   function initTexts()
   {
      this._btnClose.label = this.api.lang.getText("CLOSE");
   }
   function click(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._btnClose)
      {
         this["\x16\x15\n"]();
      }
   }
}
