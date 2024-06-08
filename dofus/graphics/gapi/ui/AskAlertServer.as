class dofus.§\x18\x03\x10§.gapi.ui.AskAlertServer extends ank.gapi.ui.FlyWindow
{
   static var §\x16\x1b\x10§ = "AskAlertServer";
   var §\x1c\x04\x1b§ = false;
   function AskAlertServer()
   {
      super();
   }
   function §\x1e\x07§(sText)
   {
      this["\x1e\r\x06"] = _loc2_;
      return this["\x0b\x16"]();
   }
   function §\x14\r§(§\x16\f\x13§)
   {
      this._bHideNext = _loc2_;
      return this.hideNext;
   }
   function §\x18\n\x16§()
   {
      var c = this._winBackground.content;
      c._btnClose.addEventListener("click",this);
      c._btnHideNext.addEventListener("click",this);
      c._txtText.text = this["\x1e\r\x06"];
      c._btnClose.label = this.api.lang.getText("CLOSE");
      c["\x1c\x18\x14"].text = this.api.lang.getText("ALERT_HIDENEXT");
      SharedObject.getLocal(dofus.Constants.OPTIONS_SHAREDOBJECT_NAME).onStatus = function(oEvent)
      {
         if(_loc2_.level == "status" && _loc2_.code == "SharedObject.Flush.Success")
         {
            c._btnHideNext._visible = true;
            c["\x1c\x18\x14"]._visible = true;
            c._btnHideNext.enabled = true;
            c._btnHideNext.selected = false;
         }
      };
      if(SharedObject.getLocal(dofus.Constants.OPTIONS_SHAREDOBJECT_NAME).flush() != true)
      {
         c._btnHideNext.enabled = false;
         c._btnHideNext.selected = false;
         c._btnHideNext._visible = false;
         c["\x1c\x18\x14"]._visible = false;
      }
      else
      {
         c._btnHideNext.selected = this._bHideNext;
      }
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnClose":
            this.api.kernel.KeyManager["\x1a\f\x17"](this);
            this["\x17\x07\x19"]({type:"close",hideNext:this._bHideNext});
            this["\x1b\x13\x13"]();
            break;
         case "_btnHideNext":
            this._bHideNext = _loc2_.target.selected;
      }
   }
   function change(oEvent)
   {
      var _loc3_ = this._winBackground.content;
      _loc3_._btnOk._y = _loc3_._txtText._y + _loc3_._txtText.height + 20;
      this._winBackground["\x1a\x18\x1a"]();
   }
   function onShortcut(sShortcut)
   {
      if(_loc2_ == "ACCEPT_CURRENT_DIALOG")
      {
         this.click(this._winBackground.content._btnClose);
         return false;
      }
      return true;
   }
}
