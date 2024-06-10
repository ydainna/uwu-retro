class dofus.graphics.gapi.ui.TitleDisplayer extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "TitleDisplayer";
   function TitleDisplayer()
   {
      super();
   }
   function §\x1e\r§(sTitle)
   {
      this["\x1e\r\b"] = _loc2_;
      return this["\f\x02"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.TitleDisplayer.CLASS_NAME);
      this["\x1e\x10\x03"].text = "";
      this._txtTitle.text = "";
   }
   function createChildren()
   {
      this["\x1e\x10\x03"]._alpha = this._txtTitle._alpha = 0;
      this.addToQueue({object:this,method:this["\x18\n\x14"]});
   }
   function §\x18\n\x14§()
   {
      this._txtTitle.text = this["\x1e\r\b"];
      this["\x1e\x10\x03"].text = this.api.lang.getText("TITLE_WON");
   }
}
