class dofus.§\x18\x03\x10§.gapi.ui.KeyCode extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "KeyCode";
   static var §\x16\x1d\x04§ = 40;
   var §\x1b\x1d\f§ = new Array();
   var §\x1d\x14\x1d§ = 0;
   function KeyCode()
   {
      super();
   }
   function §\x1e\r§(sTitle)
   {
      this.addToQueue({object:this,method:function()
      {
         this["\x1e\x10\r"].title = sTitle;
      }});
      return this["\f\x02"]();
   }
   function §\x10\r§(§\x19\x04\x17§)
   {
      this["\x1d\x13\x18"] = _loc2_;
      return this.changeType;
   }
   function §\x1d\x06§(§\x19\x0e\x12§)
   {
      if(_loc2_ > 8)
      {
         ank.utils.Logger.err("[slotsCount] doit être au max 8");
         return undefined;
      }
      this["\x1d\x1d\x04"] = _loc2_;
      this.resetKeyCode();
      return this.slotsCount;
   }
   function set lockType(nLockType)
   {
      this._nLockType = nLockType;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.KeyCode.CLASS_NAME);
      this.gapi.getUIComponent("Banner")["\x16\x19\f"] = false;
   }
   function destroy()
   {
      this.gapi.getUIComponent("Banner")["\x16\x19\f"] = true;
   }
   function §\x16\x15\n§()
   {
      this.api.network.Key["\x18\x13\x1d"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.initTexts});
      this["\x17\t\x1d"]();
      this.resetKeyCode();
      this["\x1d\x10\x06"]._visible = false;
      this._btnNoCode._visible = false;
   }
   function addListeners()
   {
      var _loc2_ = 0;
      while(_loc2_ < 10)
      {
         var _loc3_ = this["_ctrSymbol" + _loc2_];
         _loc3_.addEventListener("drag",this);
         _loc3_.addEventListener("click",this);
         _loc3_.addEventListener("dblClick",this);
         _loc3_.params = {index:_loc2_};
         _loc2_ = _loc2_ + 1;
      }
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
      this.api.kernel.KeyManager["\x15\x1d\x15"]("onKeys",this);
      this._btnValidate.addEventListener("click",this);
      this._btnClose.addEventListener("click",this);
      this._btnResetCode.addEventListener("click",this);
      this._btnNoCode.addEventListener("click",this);
   }
   function initTexts()
   {
      switch(this["\x1d\x13\x18"])
      {
         case 0:
            this._btnValidate.label = this.api.lang.getText("UNLOCK");
            this["\x1e\x0f\n"].text = this.api.lang.getText("UNLOCK_INFOS");
            break;
         case 1:
            this._btnValidate.label = this.api.lang.getText("CHANGE");
            this._btnNoCode.label = this.api.lang.getText("NO_CODE");
            this["\x1e\x0f\n"].text = this.api.lang.getText("LOCK_INFOS");
      }
   }
   function initData()
   {
      var _loc2_ = 0;
      while(_loc2_ < 10)
      {
         this["_ctrSymbol" + _loc2_].contentData = {iconFile:"UI_KeyCodeSymbol" + _loc2_,value:String(_loc2_)};
         _loc2_ = _loc2_ + 1;
      }
      switch(this["\x1d\x13\x18"])
      {
         case 0:
            this._btnNoCode._visible = false;
            break;
         case 1:
            this._btnNoCode._visible = true;
      }
      switch(this._nLockType)
      {
         case 0:
            this._btnNoCode.enabled = true;
            break;
         case 1:
            this._btnNoCode.enabled = false;
      }
   }
   function §\x17\t\x1d§()
   {
      this["\x1d\x10\x07"].removeMovieClip();
      this.createEmptyMovieClip("\x1d\x10\x07",10);
      var _loc2_ = 0;
      while(_loc2_ < this["\x1d\x1d\x04"])
      {
         var _loc3_ = this["\x1d\x10\x07"].attachMovie("Container","_ctrCode" + _loc2_,_loc2_,{_x:_loc2_ * dofus.graphics.gapi.ui.KeyCode["\x16\x1d\x04"],backgroundRenderer:"UI_KeyCodeContainer",dragAndDrop:true,highlightRenderer:"UI_KeyCodeHighlight",styleName:"none",enabled:true,_width:30,_height:30});
         _loc3_.addEventListener("drop",this);
         _loc3_.addEventListener("drag",this);
         _loc3_.params = {index:_loc2_};
         _loc2_ = _loc2_ + 1;
      }
      this["\x1d\x10\x07"]._x = this["\x1d\x10\x06"]._x - this["\x1d\x10\x07"]._width;
      this["\x1d\x10\x07"]._y = this["\x1d\x10\x06"]._y;
   }
   function §\x1a\x13\x07§()
   {
      var _loc2_ = this["\x1d\x14\x1d"];
      this["\x1d\x14\x1d"]--;
      if(this["\x1d\x14\x1d"] < 0)
      {
         this["\x1d\x14\x1d"] = this["\x1d\x1d\x04"] - 1;
      }
      this["\x1a\x13\x0e"](_loc2_,this["\x1d\x14\x1d"]);
   }
   function §\x1a\x13\x05§()
   {
      var _loc2_ = this["\x1d\x14\x1d"];
      this["\x1d\x14\x1d"] = ++this["\x1d\x14\x1d"] % this["\x1d\x1d\x04"];
      this["\x1a\x13\x0e"](_loc2_,this["\x1d\x14\x1d"]);
   }
   function §\x1a\x13\x0e§(§\x19\t\r§, §\x19\x0e\x11§)
   {
      var _loc4_ = this["\x1d\x10\x07"]["_ctrCode" + _loc2_];
      _loc4_.selected = false;
      this["\x1d\x10\x07"]["_ctrCode" + _loc3_].selected = true;
   }
   function §\x1a\x17\x0f§(§\x19\t\x04§)
   {
      var _loc3_ = this["\x1d\x10\x07"]["_ctrCode" + this["\x1d\x14\x1d"]];
      var _loc4_ = this["_ctrSymbol" + _loc2_];
      if(_loc2_ != undefined)
      {
         _loc3_.contentData = _loc4_.contentData;
         this["\x1b\x1d\f"][this["\x1d\x14\x1d"]] = _loc2_;
      }
      else
      {
         _loc3_.contentData = undefined;
         this["\x1b\x1d\f"][this["\x1d\x14\x1d"]] = "_";
      }
      this["\x1a\x13\x05"]();
   }
   function resetKeyCode()
   {
      this["\x1b\x1d\f"] = new Array();
      var _loc2_ = 0;
      while(_loc2_ < this["\x1d\x1d\x04"])
      {
         var _loc3_ = this["\x1d\x10\x07"]["_ctrCode" + _loc2_];
         _loc3_.contentData = "_";
         this["\x1b\x1d\f"][_loc2_] = "_";
         _loc2_ = _loc2_ + 1;
      }
      this["\x1a\x13\x0e"](this["\x1d\x14\x1d"],0);
      this["\x1d\x14\x1d"] = 0;
   }
   function validate()
   {
      var _loc2_ = true;
      var _loc3_ = 0;
      while(_loc3_ < this["\x1b\x1d\f"].length)
      {
         if(this["\x1b\x1d\f"][_loc3_] != "_")
         {
            _loc2_ = false;
         }
         _loc3_ = _loc3_ + 1;
      }
      this.api.network.Key["\x1a\x13\x1a"](this["\x1d\x13\x18"],!_loc2_ ? this["\x1b\x1d\f"].join("") : "-");
   }
   function dblClick(oEvent)
   {
      this.click(_loc2_);
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnValidate:
            this.validate();
            break;
         case this._btnClose:
            this["\x16\x15\n"]();
            break;
         case this._btnResetCode:
            this.resetKeyCode();
            break;
         case this._btnNoCode:
            this.api.network.Key["\x1a\x13\x1a"](this["\x1d\x13\x18"],"-");
            break;
         default:
            this["\x1a\x17\x0f"](_loc2_.target.params.index);
      }
   }
   function drop(oEvent)
   {
      var _loc3_ = this.gapi["\x17\x16\x07"]();
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      if(_loc3_.isShortcut)
      {
         return undefined;
      }
      this.gapi.removeCursor();
      _loc2_.target.contentData = _loc3_;
      this["\x1b\x1d\f"][_loc2_.target.params.index] = _loc3_.value;
   }
   function drag(oEvent)
   {
      this.gapi.removeCursor();
      var _loc3_ = _loc2_.target.contentData;
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      this.gapi["\x1a\x15\x19"](_loc3_);
      if(_loc2_.target._parent != this)
      {
         _loc2_.target.contentData = undefined;
         this["\x1b\x1d\f"][_loc2_.target.params.index] = "_";
      }
   }
   function onShortcut(sShortcut)
   {
      if(Selection.getFocus() != null)
      {
         return true;
      }
      if(_loc2_ == "CODE_CLEAR")
      {
         this["\x1a\x17\x0f"]();
         return false;
      }
      if(_loc2_ == "CODE_NEXT")
      {
         this["\x1a\x13\x05"]();
         return false;
      }
      if(_loc2_ == "CODE_PREVIOUS")
      {
         this["\x1a\x13\x07"]();
         return false;
      }
      if(_loc2_ == "ACCEPT_CURRENT_DIALOG")
      {
         this.validate();
         return false;
      }
      return true;
   }
   function onKeys(sKey)
   {
      if(Selection.getFocus() != null)
      {
         return undefined;
      }
      var _loc3_ = _loc2_.charCodeAt(0) - 48;
      if(_loc3_ < 0 || _loc3_ > 9)
      {
         return undefined;
      }
      this["\x1a\x17\x0f"](_loc3_);
   }
}
