class dofus.graphics.gapi.ui.PopupText extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "PopupText";
   var §\x1c\x0b\x19§ = false;
   var §\x1d\x19\n§ = 20;
   var §\x1e\f\t§ = "a-z A-Z";
   function PopupText()
   {
      super();
   }
   function §\x04§(§\x1b\f\x15§)
   {
      this._sValue = _loc2_;
      return this["\f\x1c"]();
   }
   function §\x1e\x1d§(§\x16\x14\b§)
   {
      this["\x1c\x0b\x19"] = _loc2_;
      return this.useAllStage;
   }
   function §\x17\x19§(§\x19\t\x1b§)
   {
      this["\x1d\x19\n"] = _loc2_;
      return this["\x03\b"]();
   }
   function §\x1b\x13§(§\x1b\x07\x1c§)
   {
      this["\x1e\f\t"] = _loc2_;
      return this["\x07\x1a"]();
   }
   function §\f\x1c§()
   {
      return this._sValue;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.PopupText.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
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
      _loc2_["\x1e\x0e\x0b"].restrict = this["\x1e\f\t"];
      _loc2_["\x1e\x0e\x0b"].maxChars = this["\x1d\x19\n"];
      _loc2_["\x1e\x0e\x0b"].text = this._sValue;
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
      this["\x17\x07\x19"]({type:"validate",value:this._winBackground.content["\x1e\x0e\x0b"].text,params:this["\x1e\x04\x1c"]});
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
