class dofus.§\x18\x03\x10§.gapi.ui.MountParkSale extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "MountParkSale";
   function MountParkSale()
   {
      super();
   }
   function §\x1e\x1e\x04§()
   {
      return this["\x1e\x04\x12"]["\x18\x0e\x1c"](this.api);
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.MountParkSale.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this.api.network.Mount.leave();
      return true;
   }
   function createChildren()
   {
      this["\x1e\x04\x12"] = this.api.datacenter.Map.getMountPark(this.instance);
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.initTexts});
      this._btnCancel._visible = false;
      this._txtPrice.tabIndex = 0;
      this._txtPrice.restrict = "0-9";
      this._txtPrice.onSetFocus = function()
      {
         this._parent.onSetFocus();
      };
      this._txtPrice.onKillFocus = function()
      {
         this._parent.onKillFocus();
      };
   }
   function addListeners()
   {
      this._btnCancel.addEventListener("click",this);
      this._btnValidate.addEventListener("click",this);
      this._btnClose.addEventListener("click",this);
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
   }
   function initData()
   {
      this["\x1e\x0f\n"].text = this.api.lang.getText("MOUNTPARK_DESCRIPTION",[this["\x1e\x04\x12"].size,this["\x1e\x04\x12"].maxItems]);
      if(this["\x18\x0e\x1c"])
      {
         this._txtPrice.text = String(this["\x1e\x04\x12"].price == 0 ? this.defaultPrice : this["\x1e\x04\x12"].price);
         this._btnCancel._visible = this["\x1e\x04\x12"].price != 0;
         this["\x1d\x0e\x1b"]._visible = true;
         Selection.setFocus(this._txtPrice);
      }
      else
      {
         this._txtPrice.text = this["\x17\x17\x1d"]();
         this._txtPrice["\x17\x0b\x1c"] = false;
         this._txtPrice.selectable = false;
         this["\x1d\x0e\x1b"]._visible = false;
      }
   }
   function initTexts()
   {
      this["\x1c\x1d\x03"].text = this.api.lang.getText("PRICE") + " :";
      if(this["\x18\x0e\x1c"])
      {
         this._winBackground.title = this.api.lang.getText("MOUNTPARK_SALE");
         this._btnCancel.label = this.api.lang.getText("CANCEL_THE_SALE");
         this._btnValidate.label = this.api.lang.getText("VALIDATE");
      }
      else
      {
         this._winBackground.title = this.api.lang.getText("MOUNTPARK_PURCHASE");
         this._btnValidate.label = this.api.lang.getText("BUY");
      }
   }
   function onShortcut(sShortcut)
   {
      if(_loc2_ == "ACCEPT_CURRENT_DIALOG" && eval(Selection.getFocus())._name == "_txtPrice")
      {
         this.click({target:this._btnValidate});
         return false;
      }
      return true;
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnCancel":
            if(this["\x18\x0e\x1c"])
            {
               this.api.network.Mount["\x18\x1e\x0b"](0);
            }
            break;
         case "_btnValidate":
            if(this["\x18\x0e\x1c"])
            {
               this.api.network.Mount["\x18\x1e\x0b"](Number(this._txtPrice.text));
            }
            else
            {
               if(this["\x1e\x04\x12"].price <= 0)
               {
                  return undefined;
               }
               if(this["\x1e\x04\x12"].price > this.api.datacenter.Player.Kama)
               {
                  this.gapi.loadUIComponent("AskOk","AskOkNotRich",{title:this.api.lang.getText("ERROR_WORD"),text:this.api.lang.getText("NOT_ENOUGH_RICH")});
               }
               else
               {
                  var _loc3_ = this.gapi.loadUIComponent("AskYesNo","AskYesNoBuy",{title:this.api.lang.getText("MOUNTPARK_PURCHASE"),text:this.api.lang.getText("DO_U_BUY_MOUNTPARK",[this["\x17\x17\x1d"]()])});
                  _loc3_.addEventListener("yes",this);
               }
            }
            break;
         case "_btnClose":
            this["\x16\x15\n"]();
      }
   }
   function §\x17\x17\x1d§()
   {
      return new ank.utils.ExtendedString(this["\x1e\x04\x12"].price)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
   }
   function yes()
   {
      this.api.network.Mount["\x18\x1e\n"](this["\x1e\x04\x12"].price);
   }
   function onSetFocus()
   {
      getURL("FSCommand:" add "trapallkeys","false");
   }
   function onKillFocus()
   {
      getURL("FSCommand:" add "trapallkeys","true");
   }
}
