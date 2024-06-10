class dofus.graphics.gapi.ui.AskCustomShortcut extends ank.gapi.ui.FlyWindow
{
   static var §\x16\x1b\x10§ = "AskCustomShortcut";
   function AskCustomShortcut()
   {
      super();
   }
   function §\x1c\x14§(§\x1b\b\f§)
   {
      this["\x1e\f\x15"] = _loc2_;
      return this.ShortcutCode;
   }
   function §\x15\x0b§(§\x16\r\x0f§)
   {
      this["\x1c\x05\x13"] = _loc2_;
      return this.IsAlt;
   }
   function §\x12\x07§(§\x1a\x12\x01§)
   {
      this["\x1e\t\x05"] = _loc2_;
      this._winBackground.content["\x1e\x0f\f"].text = this["\x1e\t\x05"];
      return this.Description;
   }
   function destroy()
   {
      this.api.ui.getUIComponent("Shortcuts").aks_a_logs();
      this.api.kernel.KeyManager["\x16\x11\n"] = true;
   }
   function §\x18\n\x16§()
   {
      var _loc2_ = this._winBackground.content;
      _loc2_["\x1e\x0f\f"].text = this.api.lang.getText("SHORTCUTS_CUSTOM_HELP",[this["\x1e\t\x05"]]);
      _loc2_._btnOk.label = this.api.lang.getText("OK");
      _loc2_._btnCancel.label = this.api.lang.getText("CANCEL_SMALL");
      _loc2_._btnReset.label = this.api.lang.getText("DEFAUT");
      _loc2_._btnOk.addEventListener("click",this);
      _loc2_._btnCancel.addEventListener("click",this);
      _loc2_._btnReset.addEventListener("click",this);
      _loc2_._btnNone.addEventListener("click",this);
      var _loc3_ = this.api.kernel.KeyManager["\x17\x16\x05"](this["\x1e\f\x15"]);
      if(this["\x1c\x05\x13"])
      {
         _loc2_["\x1d\x01\x0f"].text = _loc3_.d2 != undefined ? _loc3_.d2 : this.api.lang.getText("KEY_UNDEFINED");
      }
      else
      {
         _loc2_["\x1d\x01\x0f"].text = _loc3_.d != undefined ? _loc3_.d : this.api.lang.getText("KEY_UNDEFINED");
      }
      this.api.kernel.KeyManager["\x16\x11\n"] = false;
      Key.addListener(this);
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnOk":
            if(this["\x1d\x17\x12"] != undefined && !_global.isNaN(this["\x1d\x17\x12"]))
            {
               this.api.kernel.KeyManager["\x1a\x15\x1c"](this["\x1e\f\x15"],this["\x1c\x05\x13"],this["\x1d\x17\x12"],this["\x1d\x14\n"],this._sAscii);
            }
            this["\x1b\x13\x13"]();
            break;
         case "_btnCancel":
            this["\x1b\x13\x13"]();
            break;
         case "_btnReset":
            var _loc3_ = this._winBackground.content;
            var _loc4_ = this.api.kernel.KeyManager["\x17\x16\x0f"](this["\x1e\f\x15"]);
            if(!this["\x1c\x05\x13"])
            {
               this["\x1d\x17\x12"] = _loc4_.k;
               this["\x1d\x14\n"] = _loc4_.c;
               _loc3_["\x1d\x01\x0f"].text = _loc0_ = _loc4_.s != undefined ? _loc4_.s : this.api.lang.getText("KEY_UNDEFINED");
               this._sAscii = _loc0_;
            }
            else
            {
               this["\x1d\x17\x12"] = _loc4_.k2;
               this["\x1d\x14\n"] = _loc4_.c2;
               _loc3_["\x1d\x01\x0f"].text = _loc0_ = _loc4_.s2 != undefined ? _loc4_.s2 : this.api.lang.getText("KEY_UNDEFINED");
               this._sAscii = _loc0_;
            }
            break;
         case "_btnNone":
            var _loc5_ = this._winBackground.content;
            this["\x1d\x17\x12"] = -1;
            this["\x1d\x14\n"] = undefined;
            _loc5_["\x1d\x01\x0f"].text = _loc0_ = this.api.lang.getText("KEY_UNDEFINED");
            this._sAscii = _loc0_;
      }
   }
   function onKeyUp()
   {
      var _loc2_ = Key.getCode();
      var _loc3_ = Key.getAscii();
      if(_loc2_ == Key.CONTROL || _loc2_ == Key.SHIFT)
      {
         return undefined;
      }
      this["\x1d\x17\x12"] = _loc2_;
      var _loc4_ = 0;
      if(Key.isDown(Key.CONTROL))
      {
         _loc4_ += 1;
      }
      if(Key.isDown(Key.SHIFT))
      {
         _loc4_ += 2;
      }
      this["\x1d\x14\n"] = _loc4_;
      var _loc5_ = "";
      if(_loc3_ > 32 && _loc3_ < 256)
      {
         _loc5_ = String.fromCharCode(_loc3_);
      }
      else
      {
         _loc5_ = this.api.lang["\x17\x1a\b"](_loc2_);
      }
      _loc5_ = this.api.lang["\x17\x15\x14"](_loc4_) + _loc5_;
      this._sAscii = this._winBackground.content["\x1d\x01\x0f"].text = _loc5_;
   }
}
