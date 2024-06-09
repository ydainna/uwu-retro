class dofus.§\x18\x03\x10§.gapi.ui.Shortcuts extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Shortcuts";
   function Shortcuts()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Shortcuts.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
   }
   function initTexts()
   {
      this["\x1e\x10\t"].title = this.api.lang.getText("KEYBORD_SHORTCUT");
      this._btnClose2.label = this.api.lang.getText("CLOSE");
      this["\x1c\x16\x17"].text = this.api.lang.getText("SHORTCUTS_DESCRIPTION");
      this["\x1c\x1a\x02"].text = this.api.lang.getText("SHORTCUTS_KEYS");
      this["\x1c\x16\x12"].text = this.api.lang.getText("SHORTCUTS_SET_CHOICE");
      this._btnApplyDefault.label = this.api.lang.getText("SHORTCUTS_APPLY_DEFAULT");
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._btnClose2.addEventListener("click",this);
      this["\x1c\f\x1a"].addEventListener("itemSelected",this);
      this._btnApplyDefault.addEventListener("click",this);
   }
   function initData()
   {
      var _loc2_ = new ank.utils.ExtendedArray();
      var _loc3_ = this.api.lang["\x17\x1a\x06"]();
      _loc3_.sortOn("d");
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         if(_loc3_[_loc4_] != undefined)
         {
            _loc2_.push({label:_loc3_[_loc4_].d,id:_loc3_[_loc4_].i});
            if(_loc3_[_loc4_].i == this.api.kernel.OptionsManager.getOption("ShortcutSetDefault"))
            {
               this["\x1c\f\x1a"].selectedIndex = _loc4_;
            }
         }
         _loc4_ = _loc4_ + 1;
      }
      var _loc5_ = this.api.lang["\x17\x1a\x04"]();
      _loc5_.sortOn("o",Array.NUMERIC);
      var _loc6_ = this.api.lang["\x17\x1a\x03"]();
      var _loc7_ = new ank.utils.ExtendedArray();
      var _loc8_ = 0;
      while(_loc8_ < _loc5_.length)
      {
         if(_loc5_[_loc8_] != undefined)
         {
            _loc7_.push({c:true,d:_loc5_[_loc8_].d});
            for(var k in _loc6_)
            {
               if(_loc6_[k] != undefined)
               {
                  if(!((k == "CONSOLE" || k == "CONSOLESIZE") && !this.api.datacenter.Player.isAuthorized))
                  {
                     if(_loc6_[k].c == _loc5_[_loc8_].i)
                     {
                        _loc7_.push({c:false,d:_loc6_[k].d,s:this.api.kernel.KeyManager["\x17\x16\x05"](k),k:k,l:_loc6_[k].s});
                     }
                  }
               }
            }
         }
         _loc8_ = _loc8_ + 1;
      }
      this["\x1d\x07\x02"].dataProvider = _loc7_;
      this["\x1c\f\x1a"].dataProvider = _loc2_;
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnClose":
         case "_btnClose2":
            this["\x16\x15\n"]();
            break;
         case "_btnApplyDefault":
            this.api.kernel.showMessage(undefined,this.api.lang.getText("SHORTCUTS_RESET_TO_DEFAULT"),"CAUTION_YESNO",{listener:this});
      }
   }
   function itemSelected(oEvent)
   {
      this.api.kernel.OptionsManager.setOption("ShortcutSetDefault",this["\x1c\f\x1a"].selectedItem.id);
   }
   function yes(oEvent)
   {
      this.api.kernel.KeyManager["\x16\x1b\x1c"]();
      this.api.kernel.OptionsManager.setOption("ShortcutSet",this["\x1c\f\x1a"].selectedItem.id);
      this.initData();
   }
   function §\x1a\n\x15§()
   {
      this.initData();
   }
}
