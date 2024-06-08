class dofus.§\x18\x03\x10§.gapi.ui.AskCancel extends ank.gapi.ui.FlyWindow
{
   static var §\x16\x1b\x10§ = "AskCancel";
   function AskCancel()
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
   function §\x16\x15\n§()
   {
      this["\x17\x07\x19"]({type:"cancel",params:this.params});
      this["\x1b\x13\x13"]();
      return true;
   }
   function §\x18\n\x16§()
   {
      var _loc2_ = this._winBackground.content;
      _loc2_._txtText.text = this["\x1e\r\x06"];
      _loc2_._btnCancel.label = this.api.lang.getText("CANCEL_SMALL");
      _loc2_._btnCancel.addEventListener("click",this);
      _loc2_._txtText.addEventListener("change",this);
   }
   function click(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "_btnCancel")
      {
         this["\x17\x07\x19"]({type:"cancel",params:this.params});
      }
      this["\x1b\x13\x13"]();
   }
   function change(oEvent)
   {
      var _loc3_ = this._winBackground.content;
      _loc3_._btnCancel._y = _loc3_._txtText._y + _loc3_._txtText.height + 20;
      this._winBackground["\x1a\x18\x1a"]();
   }
}
