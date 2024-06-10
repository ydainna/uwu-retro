class dofus.graphics.gapi.ui.AskYesNo extends ank.gapi.ui.FlyWindow
{
   static var §\x16\x1b\x10§ = "AskYesNo";
   function AskYesNo()
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
      this["\x17\x07\x19"]({type:"no",params:this.params});
      this["\x1b\x13\x13"]();
      return true;
   }
   function §\x18\n\x16§()
   {
      var _loc2_ = this._winBackground.content;
      _loc2_._txtText.text = this["\x1e\r\x06"];
      _loc2_._btnYes.label = this.api.lang.getText("YES");
      _loc2_._btnNo.label = this.api.lang.getText("NO");
      _loc2_._btnYes.addEventListener("click",this);
      _loc2_._btnNo.addEventListener("click",this);
      _loc2_._txtText.addEventListener("change",this);
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnYes":
            this["\x17\x07\x19"]({type:"yes",params:this.params});
            break;
         case "_btnNo":
            this["\x17\x07\x19"]({type:"no",params:this.params});
      }
      this["\x1b\x13\x13"]();
   }
   function change(oEvent)
   {
      var _loc3_ = this._winBackground.content;
      _loc3_._btnYes._y = _loc3_._txtText._y + _loc3_._txtText.height + 20;
      _loc3_._btnNo._y = _loc3_._txtText._y + _loc3_._txtText.height + 20;
      this._winBackground["\x1a\x18\x1a"]();
   }
   function onShortcut(sShortcut)
   {
      if(_loc2_ == "ACCEPT_CURRENT_DIALOG")
      {
         this.click({target:this._winBackground.content._btnYes});
         return false;
      }
      return true;
   }
}
