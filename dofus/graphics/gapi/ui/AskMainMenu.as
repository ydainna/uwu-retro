class dofus.§\x18\x03\x10§.gapi.ui.AskMainMenu extends ank.gapi.ui.FlyWindow
{
   static var §\x16\x1b\x10§ = "AskMainMenu";
   function AskMainMenu()
   {
      super();
   }
   function §\x18\n\x16§()
   {
      this._winBackground.title = this.api.lang.getText("MENU");
      var _loc2_ = this._winBackground.content;
      _loc2_._btnChange.label = this.api.lang.getText("CHANGE_CHARACTER");
      _loc2_._btnDisconnect.label = this.api.lang.getText("LOGOFF");
      _loc2_._btnCancel.label = this.api.lang.getText("CANCEL_SMALL");
      _loc2_._btnQuit.label = this.api.lang.getText("QUIT_DOFUS");
      _loc2_._btnChange.addEventListener("click",this);
      _loc2_._btnDisconnect.addEventListener("click",this);
      _loc2_._btnCancel.addEventListener("click",this);
      _loc2_._btnQuit.addEventListener("click",this);
      this["\x1a\x16\t"](System.capabilities.playerType == "StandAlone" || this.api.electron.enabled);
      this["\x1a\x16\b"](this.api.ui.getUIComponent("Banner") != undefined);
   }
   function §\x1a\x16\b§(§\x16\x0b\b§)
   {
      var _loc3_ = this._winBackground.content._btnChange;
      _loc3_.enabled = _loc2_;
   }
   function §\x1a\x16\t§(§\x16\x0b\b§)
   {
      var _loc3_ = this._winBackground.content._btnQuit;
      _loc3_.enabled = _loc2_;
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnChange":
            this.api.kernel.changeServer();
            break;
         case "_btnDisconnect":
            this.api.kernel.disconnect();
            break;
         case "_btnQuit":
            this.api.kernel.quit();
      }
      this["\x1b\x13\x13"]();
   }
}
