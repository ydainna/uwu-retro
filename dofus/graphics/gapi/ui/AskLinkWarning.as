class dofus.§\x18\x03\x10§.gapi.ui.AskLinkWarning extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "AskLinkWarning";
   function AskLinkWarning()
   {
      super();
   }
   function §\x1e\x07§(sText)
   {
      this["\x1e\r\x06"] = _loc2_;
      return this["\x0b\x16"]();
   }
   function §\x0b\x16§()
   {
      return this["\x1e\r\x06"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.AskLinkWarning.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
   }
   function addListeners()
   {
      this._btnOk.addEventListener("click",this);
   }
   function initTexts()
   {
      this._btnOk.label = this.api.lang.getText("OK");
      this._winBackground.title = this.api.lang.getText("CAUTION");
      this._txtText.text = this["\x1e\r\x06"];
   }
   function click(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "_btnOk")
      {
         this["\x17\x07\x19"]({type:"ok",params:this.params});
      }
      this["\x1b\x13\x13"]();
   }
}
