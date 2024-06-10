class dofus.graphics.gapi.ui.AskSecretAnswer extends ank.gapi.ui.FlyWindow
{
   static var §\x16\x1b\x10§ = "AskSecretAnswer";
   var §\x18\r\x06§ = false;
   function AskSecretAnswer()
   {
      super();
   }
   function §\x1e\x15\x12§()
   {
      return this["\x1c\r\b"];
   }
   function §\x10\x12§(c)
   {
      this["\x1c\r\b"] = c;
      return this["\x1e\x15\x12"]();
   }
   function §\x18\n\x16§()
   {
      var _loc2_ = this._winBackground.content;
      _loc2_["\x1e\x0f\f"].text = this.api.lang.getText("DELETING_CHARACTER_ANSWER") + "\r\n" + _global.unescape(this.api.datacenter.Basics.aks_secret_question);
      _loc2_._btnOk.label = this.api.lang.getText("OK");
      _loc2_._btnCancel.label = this.api.lang.getText("CANCEL_SMALL");
      _loc2_._btnOk.addEventListener("click",this);
      _loc2_._btnCancel.addEventListener("click",this);
      _loc2_["\x1e\x0e\x12"].setFocus();
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnOk":
            var _loc3_ = this._winBackground.content["\x1e\x0e\x12"].text;
            if(_loc3_.length > 0)
            {
               this.api.kernel.showMessage(this.api.lang.getText("DELETE_WORD"),this.api.lang.getText("DO_U_DELETE_A",[this["\x1c\r\b"].name]),"CAUTION_YESNO",{name:"SecretAnswer",params:{nickname:_loc3_},listener:this});
            }
            break;
         case "_btnCancel":
            this["\x1b\x13\x13"]();
      }
   }
   function onShortcut(sShortcut)
   {
      if(_loc2_ == "ACCEPT_CURRENT_DIALOG" && this.api.ui.getUIComponent("AskYesNoSecretAnswer") == undefined)
      {
         this.click({target:this._winBackground.content._btnOk});
         return false;
      }
      return true;
   }
   function yes(oEvent)
   {
      this.api.network.Account.deleteCharacter(this["\x1c\r\b"].id,_loc2_.params.nickname);
      this["\x1b\x13\x13"]();
   }
   function no(oEvent)
   {
      this["\x1b\x13\x13"]();
   }
}
