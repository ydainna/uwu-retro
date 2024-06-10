class dofus.graphics.gapi.ui.PopupQuantity extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "PopupQuantity";
   var §\x1e\x01\x03§ = 0;
   var §\x1c\x0b\x19§ = false;
   var §\x1d\x19\t§ = 1;
   var §\x1d\x19\x1d§ = 1;
   var _bMaxButtonValidationEnabled = true;
   function PopupQuantity()
   {
      super();
   }
   function §\x04§(§\x19\x10\x10§)
   {
      this["\x1e\x01\x03"] = _loc2_;
      var _loc3_ = this._winBackground.content;
      _loc3_["\x1e\x0e\x0b"].text = _loc2_;
      _loc3_["\x1e\x0e\x0b"].setFocus();
      return this["\f\x1c"]();
   }
   function §\f\x1c§()
   {
      return this["\x1e\x01\x03"];
   }
   function §\x17\x17§(§\x19\t\x19§)
   {
      if(_loc2_ == undefined || _loc2_ < this["\x1d\x19\x1d"])
      {
         this["\x1d\x19\t"] = this["\x1d\x19\x1d"];
      }
      else
      {
         this["\x1d\x19\t"] = _loc2_;
      }
      return this["\x03\x06"]();
   }
   function §\x18\x12§(§\x19\n\x0e§)
   {
      this["\x1d\x19\x1d"] = _loc2_;
      return this["\x03\x1a"]();
   }
   function §\x1e\x1d§(§\x16\x14\b§)
   {
      this["\x1c\x0b\x19"] = _loc2_;
      return this.useAllStage;
   }
   function get isMaxButtonValidationEnabled()
   {
      return this._bMaxButtonValidationEnabled;
   }
   function set isMaxButtonValidationEnabled(bMaxButtonValidationEnabled)
   {
      this._bMaxButtonValidationEnabled = bMaxButtonValidationEnabled;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.PopupQuantity.CLASS_NAME);
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
      _loc2_._btnMax.addEventListener("click",this);
      _loc2_._btnMin.addEventListener("click",this);
      _loc2_._btnMax.label = this.api.lang.getText("MAX_WORD");
      _loc2_._btnMin.label = this.api.lang.getText("MIN_WORD");
      _loc2_["\x1e\x0e\x0b"].restrict = "0-9";
      _loc2_["\x1e\x0e\x0b"].text = this["\x1e\x01\x03"];
      _loc2_["\x1e\x0e\x0b"].addEventListener("change",this);
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
      this["\x17\x07\x19"]({type:"validate",value:this.value,params:this["\x1e\x04\x1c"]});
   }
   function change(oEvent)
   {
      var _loc3_ = this._winBackground.content;
      var _loc4_ = Number(_loc3_["\x1e\x0e\x0b"].text);
      if(_global.isNaN(_loc4_))
      {
         this.value = this["\x1d\x19\x1d"];
      }
      else if(_loc4_ > this["\x1d\x19\t"])
      {
         this.value = this["\x1d\x19\t"];
      }
      else if(_loc4_ < this["\x1d\x19\x1d"])
      {
         this.value = this["\x1d\x19\x1d"];
      }
      else
      {
         this["\x1e\x01\x03"] = _loc4_;
      }
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
         case "_btnMax":
            if(this._bMaxButtonValidationEnabled && this.value == this["\x1d\x19\t"])
            {
               this.validate();
               break;
            }
            this.value = this["\x1d\x19\t"];
            return undefined;
         case "_bgHidder":
         default:
            break;
         case "_btnMin":
            this.value = this["\x1d\x19\x1d"];
            return undefined;
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
