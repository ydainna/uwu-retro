class dofus.graphics.gapi.ui.ChooseItemSkin extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ChooseItemSkin";
   function ChooseItemSkin()
   {
      super();
   }
   function §\x16\n§(§\x19\x13\x07§)
   {
      this["\x1e\x03\x18"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1b\x14\x14"]();
      }
      return this["\x01\x07"]();
   }
   function §\x01\x07§()
   {
      return this["\x1e\x03\x18"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.ChooseItemSkin.CLASS_NAME);
   }
   function destroy()
   {
      this.gapi.hideTooltip();
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this["\x1c\x0b\x10"].addEventListener("click",this);
   }
   function §\x1b\x14\x14§()
   {
      this["\x1c\r\t"].item = this["\x1e\x03\x18"];
   }
   function initTexts()
   {
      this["\x1c\x0b\x10"].label = this.api.lang.getText("VALIDATE");
      this["\x1e\x10\b"].title = this.api.lang.getText("CHOOSE_SKIN");
   }
   function validate(§\x19\x13\x07§)
   {
      if(!_loc2_)
      {
         return undefined;
      }
      this.api.kernel.SpeakingItemsManager["\x1b\x11\x10"](dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_CHANGE_SKIN);
      this.api.network.Items["\x1a\x19\x19"](this["\x1e\x03\x18"].ID,this["\x1e\x03\x18"].position,_loc2_["\x1b\x02\f"] + 1);
      this["\x16\x15\n"]();
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._bgh:
         case this._btnClose:
            this["\x16\x15\n"]();
            break;
         case this["\x1c\x0b\x10"]:
            this.validate(this["\x1c\r\t"].selectedItem);
      }
   }
   function dblClickItem(oEvent)
   {
      this.validate(_loc2_.target.contentData);
   }
}
