class dofus.§\x18\x03\x10§.gapi.ui.AskYesNoWithString extends ank.gapi.ui.FlyWindow
{
   static var §\x16\x1b\x10§ = "AskYesNoWithString";
   function AskYesNoWithString()
   {
      super();
   }
   function §\x06\x02§()
   {
      return this["\x1e\x04\x1c"];
   }
   function §\x1a\x03§(§\x19\x1e\x1d§)
   {
      this["\x1e\x04\x1c"] = _loc2_;
      return this["\x06\x02"]();
   }
   function get help()
   {
      return this._sHelp;
   }
   function set help(sHelp)
   {
      this._sHelp = sHelp;
   }
   function get inputMaxChars()
   {
      return this._nInputMaxChars;
   }
   function set inputMaxChars(nInputMaxChars)
   {
      this._nInputMaxChars = nInputMaxChars;
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function §\x18\n\x16§()
   {
      var _loc2_ = this._winBackground.content;
      if(this._sHelp != undefined)
      {
         _loc2_["\x1e\x0f\f"].text = this._sHelp;
      }
      if(this._nInputMaxChars != undefined)
      {
         _loc2_._tiString.maxChars = this._nInputMaxChars;
      }
      _loc2_._btnOk.label = this.api.lang.getText("OK");
      _loc2_._btnCancel.label = this.api.lang.getText("CANCEL_SMALL");
      _loc2_._btnOk.addEventListener("click",this);
      _loc2_._btnCancel.addEventListener("click",this);
      _loc2_._tiString.setFocus();
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
   }
   function click(oEvent)
   {
      var _loc3_ = this._winBackground.content._tiString.text;
      switch(_loc2_.target._name)
      {
         case "_btnOk":
            this["\x17\x07\x19"]({type:"yes",params:this.params,inputText:_loc3_});
            break;
         case "_btnCancel":
            this["\x17\x07\x19"]({type:"no",params:this.params,inputText:_loc3_});
      }
      this["\x1b\x13\x13"]();
   }
   function onShortcut(sShortcut)
   {
      if(_loc2_ == "ACCEPT_CURRENT_DIALOG")
      {
         this.click({target:this._winBackground.content._btnOk});
         return false;
      }
      return true;
   }
}
