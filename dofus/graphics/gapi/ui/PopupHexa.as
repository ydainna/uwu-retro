class dofus.graphics.gapi.ui.PopupHexa extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "PopupHexa";
   var §\x1e\x01\x03§ = "000000";
   var §\x1c\x0b\x19§ = false;
   function PopupHexa()
   {
      super();
   }
   function §\x04§(§\x19\x10\x10§)
   {
      this["\x1e\x01\x03"] = _loc2_;
      return this["\f\x1c"]();
   }
   function §\x1e\x1d§(§\x16\x14\b§)
   {
      this["\x1c\x0b\x19"] = _loc2_;
      return this.useAllStage;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.PopupHexa.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._winBackground.addEventListener("complete",this);
      this._bgHidder.addEventListener("click",this);
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
   }
   function §\x18\n\x16§()
   {
      var _loc2_ = this._winBackground.content;
      _loc2_._btnOk.addEventListener("click",this);
      _loc2_["\x1e\x0e\x0b"].restrict = "0-9 A-F";
      _loc2_["\x1e\x0e\x0b"].maxChars = 6;
      _loc2_["\x1e\x0e\x0b"].text = this["\x1e\x01\x03"];
      _loc2_["\x1e\x0e\x0b"].setFocus();
   }
   function §\x1a\x05\b§()
   {
      var _loc2_ = this._xmouse - this._winBackground.width;
      var _loc3_ = this._ymouse - this._winBackground._height;
      var _loc4_ = !this["\x1c\x0b\x19"] ? this.gapi["\x1a\x11\t"] : Stage.width;
      var _loc5_ = !this["\x1c\x0b\x19"] ? this.gapi["\x1a\x11\x07"] : Stage.height;
      if(_loc2_ < 0)
      {
         _loc2_ = 0;
      }
      if(_loc3_ < 0)
      {
         _loc3_ = 0;
      }
      if(_loc2_ > _loc4_ - this._winBackground.width)
      {
         _loc2_ = _loc4_ - this._winBackground.width;
      }
      if(_loc3_ > _loc5_ - this._winBackground.height)
      {
         _loc3_ = _loc5_ - this._winBackground.height;
      }
      this._winBackground._x = _loc2_;
      this._winBackground._y = _loc3_;
   }
   function validate()
   {
      this.api.kernel.KeyManager["\x1a\f\x17"](this);
      this["\x17\x07\x19"]({type:"validate",value:_global.parseInt(this._winBackground.content["\x1e\x0e\x0b"].text,16),params:this["\x1e\x04\x1c"]});
   }
   function complete(oEvent)
   {
      this["\x1a\x05\b"]();
      this.addToQueue({object:this,method:this["\x18\n\x16"]});
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnOk":
            this.validate();
            break;
         case "_bgHidder":
      }
      this["\x1b\x13\x13"]();
   }
   function onShortcut(sShortcut)
   {
      if(_loc2_ == "ACCEPT_CURRENT_DIALOG")
      {
         this.validate();
         this["\x1b\x13\x13"]();
         return false;
      }
      return true;
   }
}
