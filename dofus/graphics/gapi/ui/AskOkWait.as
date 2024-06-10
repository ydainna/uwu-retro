class dofus.graphics.gapi.ui.AskOkWait extends ank.gapi.ui.FlyWindow
{
   static var §\x16\x1b\x10§ = "AskOkWait";
   function AskOkWait()
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
      return true;
   }
   function §\x18\n\x16§()
   {
      this["\x1e\x01\n"] = 5;
      var _loc2_ = this._winBackground.content;
      var _loc3_ = _loc2_._btnOk;
      _loc3_.enabled = false;
      _loc3_.label = this.api.lang.getText("OK") + " (" + this["\x1e\x01\n"] + ")";
      _loc3_.addEventListener("click",this);
      _loc2_._txtText.addEventListener("change",this);
      _loc2_._txtText.text = this["\x1e\r\x06"];
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
      this.startTimer();
   }
   function click(oEvent)
   {
      this.api.kernel.KeyManager["\x1a\f\x17"](this);
      this["\x17\x07\x19"]({type:"ok"});
      this["\x1b\x13\x13"]();
   }
   function change(oEvent)
   {
      var _loc3_ = this._winBackground.content;
      _loc3_._btnOk._y = _loc3_._txtText._y + _loc3_._txtText.height + 20;
      this._winBackground["\x1a\x18\x1a"]();
   }
   function onShortcut(sShortcut)
   {
      if(_loc2_ == "ACCEPT_CURRENT_DIALOG" && this._winBackground.content._btnOk.enabled)
      {
         Selection.setFocus();
         this.click();
      }
      return false;
   }
   function startTimer()
   {
      this.stopTimer();
      this["\x1d\x17\b"] = _global.setInterval(this,"updateTimer",1000);
   }
   function stopTimer()
   {
      _global.clearInterval(this["\x1d\x17\b"]);
   }
   function updateTimer()
   {
      this["\x1e\x01\n"] -= 1;
      var _loc2_ = this._winBackground.content._btnOk;
      _loc2_.label = this.api.lang.getText("OK") + " (" + this["\x1e\x01\n"] + ")";
      if(this["\x1e\x01\n"] == 0)
      {
         _loc2_.label = this.api.lang.getText("OK");
         _loc2_.enabled = true;
         this.stopTimer();
      }
   }
}
