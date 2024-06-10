class dofus.§\x18\x03\x10§.gapi.ui.PlayerShopModifier extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "PlayerShopModifier";
   function PlayerShopModifier()
   {
      super();
   }
   function §\x11\x19§(§\x19\x12\x10§)
   {
      this._oData = _loc2_;
      return this["\x1e\x18\x01"]();
   }
   function §\x1e\x17\x13§()
   {
      if(this._livInventory != undefined && this._livInventory["\x17\x03\x19"] != undefined)
      {
         return this._livInventory["\x17\x03\x19"];
      }
      if(this._livInventory2 != undefined && this._livInventory2["\x17\x03\x19"] != undefined)
      {
         return this._livInventory2["\x17\x03\x19"];
      }
      return undefined;
   }
   function §\x01\x0e§()
   {
      return this["\x1c\x11\x13"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.PlayerShopModifier.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this.gapi.hideTooltip();
      this.api.network.Exchange.leave();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.initTexts});
      this["\x18\x06\x0f"](true);
      this["\x1a\x14\x19"](false);
      this["\x1a\x17\x1d"](false);
      this["\x1e\x0f\x15"].restrict = "0-9";
      this._txtPrice.restrict = "0-9";
      this["\x1e\x0f\x15"].onSetFocus = function()
      {
         this._parent.onSetFocus();
      };
      this["\x1e\x0f\x15"].onKillFocus = function()
      {
         this._parent.onKillFocus();
      };
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
      this._livInventory.addEventListener("selectedItem",this);
      this._livInventory2.addEventListener("selectedItem",this);
      this._livInventory2.addEventListener("rollOverItem",this);
      this._livInventory2.addEventListener("rollOutItem",this);
      this._livInventory2["\x18\x17\x1b"].multipleSelection = true;
      this._btnAdd.addEventListener("click",this);
      this._btnRemove.addEventListener("click",this);
      this._btnModify.addEventListener("click",this);
      this._btnClose.addEventListener("click",this);
      this._btnOffline.addEventListener("click",this);
      this._btnOffline.addEventListener("over",this);
      this._btnOffline.addEventListener("out",this);
      if(this._oData != undefined)
      {
         this._oData.addEventListener("modelChanged",this);
      }
      else
      {
         ank.utils.Logger.err("[PlayerShop] il n\'y a pas de data");
      }
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
   }
   function initTexts()
   {
      this._btnAdd.label = this.api.lang.getText("PUT_ON_SELL");
      this["\x1a\x0b\x07"]();
      this._btnModify.label = this.api.lang.getText("MODIFY");
      this["\x1c\x1d\t"].text = this.api.lang.getText("QUANTITY") + " :";
      this._txtPriceLabel.text = this.api.lang.getText("UNIT_PRICE") + " :";
      this["\x1e\x10\x11"].title = this.api.datacenter.Player.data.name;
      this["\x1e\x10\x12"].title = this.api.lang.getText("SHOP_STOCK");
   }
   function initData()
   {
      this._livInventory.dataProvider = this.api.datacenter.Player.Inventory;
      this._livInventory["\x18\x11\x17"] = this.api.datacenter.Player;
      this.modelChanged();
   }
   function §\x18\x06\x0f§(§\x16\f\x12§)
   {
      this["\x1c\x11\x13"]._visible = !_loc2_;
      this["\x1e\x10\x14"]._visible = !_loc2_;
      this["\x1d\x0f\x07"]._visible = !_loc2_;
      this["\x1d\x0e\x1b"]._visible = !_loc2_;
      this["\x1c\x1d\t"]._visible = !_loc2_;
      this._txtPriceLabel._visible = !_loc2_;
      this["\x1e\x0f\x15"]._visible = !_loc2_;
      this._txtPrice._visible = !_loc2_;
      if(_loc2_)
      {
         this["\x1e\x05\t"] = undefined;
      }
   }
   function §\x1a\x14\x19§(§\x16\b\x0f§)
   {
      this._btnAdd._visible = _loc2_;
      this._mcSellArrow._visible = _loc2_;
      this["\x1d\x0f\x07"]._visible = _loc2_;
      this["\x1e\x0f\x15"]["\x17\x0b\x1c"] = true;
      this["\x1e\x0f\x15"].selectable = true;
      this._txtPrice.tabIndex = 0;
      this["\x1e\x0f\x15"].tabIndex = 1;
      this["\x1e\x03\x0b"] = this._btnAdd;
   }
   function §\x1a\x17\x1d§(§\x16\b\x0f§)
   {
      this._btnModify._visible = _loc2_;
      this._mcBuyArrow._visible = _loc2_;
      this["\x1d\x0f\x07"]._visible = false;
      this["\x1e\x0f\x15"]["\x17\x0b\x1c"] = false;
      this["\x1e\x0f\x15"].selectable = false;
      this._txtPrice.tabIndex = 0;
      this["\x1e\x0f\x15"].tabIndex = undefined;
      this["\x1e\x03\x0b"] = this._btnModify;
   }
   function §\x16\x01\x06§(§\x19\x13\x07§, nQuantity, §\x19\f\x10§)
   {
      this.api.network.Exchange["\x19\x01\x01"](true,_loc2_,_loc3_,_loc4_);
   }
   function remove(§\x16\x05\x12§)
   {
      var _loc3_ = new Array();
      var _loc4_ = 0;
      while(_loc4_ < _loc2_.length)
      {
         var _loc5_ = _loc2_[_loc4_];
         _loc3_.push({Add:false,ID:_loc5_.ID,Quantity:_loc5_.Quantity});
         _loc4_ = _loc4_ + 1;
      }
      this.api.network.Exchange["\x19\x01\x02"](_loc3_);
   }
   function §\x18\x1d\x11§(§\x19\x13\x07§, §\x19\f\x10§)
   {
      this.api.network.Exchange["\x19\x01\x01"](true,_loc2_,0,_loc3_);
   }
   function §\x1a\x0b\x07§(§\x19\x0f\r§)
   {
      if(_loc2_ == undefined)
      {
         _loc2_ = this._livInventory2["\x18\x17\x1b"]["\x17\x1e\x07"]().length;
      }
      if(this["\x1e\f\x07"] == undefined)
      {
         this["\x1e\f\x07"] = this.api.lang.getText("REMOVE");
      }
      this._btnRemove.enabled = _loc2_ != undefined && (_loc2_ == 0 && (this["\x1e\x05\t"] != undefined && this._mcBuyArrow._visible) || _loc2_ > 0);
      if(_loc2_ == undefined || _loc2_ <= 1)
      {
         this._btnRemove.label = this["\x1e\f\x07"];
      }
      else
      {
         this._btnRemove.label = this["\x1e\f\x07"] + " (" + _loc2_ + ")";
      }
   }
   function onShortcut(sShortcut)
   {
      if(_loc2_ == "ACCEPT_CURRENT_DIALOG" && this["\x1e\x05\t"] != undefined)
      {
         this.click({target:this["\x1e\x03\x0b"]});
         return false;
      }
      return true;
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnRemove":
            var _loc3_ = this._livInventory2["\x18\x17\x1b"]["\x17\x1e\x07"]();
            if(_loc3_.length == 0 && this["\x1e\x05\t"] == undefined)
            {
               break;
            }
            if(_loc3_.length == 0)
            {
               _loc3_.push(this["\x1e\x05\t"]);
            }
            this.remove(_loc3_);
            this["\x18\x06\x0f"](true);
            this["\x1a\x17\x1d"](false);
            break;
         case "_btnModify":
            var _loc4_ = Number(this._txtPrice.text);
            if(_global.isNaN(_loc4_))
            {
               this.gapi.loadUIComponent("AskOk","AksOkBadPrice",{title:this.api.lang.getText("ERROR_WORD"),text:this.api.lang.getText("ERROR_INVALID_PRICE")});
            }
            else
            {
               this["\x18\x1d\x11"](this["\x1e\x05\t"],_loc4_);
               this["\x18\x06\x0f"](true);
               this["\x1a\x17\x1d"](false);
            }
            break;
         case "_btnAdd":
            var _loc5_ = Number(this._txtPrice.text);
            var _loc6_ = Number(this["\x1e\x0f\x15"].text);
            if(_global.isNaN(_loc5_))
            {
               this.gapi.loadUIComponent("AskOk","AksOkBadPrice",{title:this.api.lang.getText("ERROR_WORD"),text:this.api.lang.getText("ERROR_INVALID_PRICE")});
            }
            else if(_global.isNaN(_loc6_) || _loc6_ == 0)
            {
               this.gapi.loadUIComponent("AskOk","AksOkBadQuantity",{title:this.api.lang.getText("ERROR_WORD"),text:this.api.lang.getText("ERROR_INVALID_QUANTITY")});
            }
            else
            {
               _loc6_ = Math.min(this["\x1e\x05\t"].Quantity,_loc6_);
               this["\x16\x01\x06"](this["\x1e\x05\t"],_loc6_,_loc5_);
               this["\x18\x06\x0f"](true);
               this["\x1a\x14\x19"](false);
            }
            break;
         case "_btnClose":
            this["\x16\x15\n"]();
            break;
         case "_btnOffline":
            this["\x16\x15\n"]();
            this.api.kernel.GameManager["\x19\x12\x1a"]();
      }
   }
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "_btnOffline")
      {
         this.gapi.showTooltip(this.api.lang.getText("MERCHANT_MODE"),_loc2_.target,-20);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function rollOverItem(oEvent)
   {
      var _loc3_ = _loc2_.targets.length;
      this["\x1a\x0b\x07"](_loc3_);
   }
   function rollOutItem(oEvent)
   {
      var _loc3_ = _loc2_.targets.length;
      this["\x1a\x0b\x07"](_loc3_);
   }
   function selectedItem(oEvent)
   {
      if(_loc2_.item == undefined)
      {
         this["\x18\x06\x0f"](true);
         this["\x1a\x14\x19"](false);
         this["\x1a\x17\x1d"](false);
      }
      else
      {
         this["\x1e\x05\t"] = _loc2_.item;
         this["\x18\x06\x0f"](false);
         this["\x1c\x11\x13"]["\x18\x10\x17"] = _loc2_.item;
         switch(_loc2_.target._name)
         {
            case "_livInventory":
               this["\x1e\x0f\x15"].text = _loc2_.item.Quantity;
               this._txtPrice.text = "";
               this["\x1a\x17\x1d"](false);
               this["\x1a\x14\x19"](true);
               this._livInventory2["\x1a\x16\x14"](this._livInventory["\x17\x03\x12"]);
               this["\x1a\x0b\x07"]();
               break;
            case "_livInventory2":
               var _loc3_ = _loc2_.targets.length;
               this["\x1e\x0f\x15"].text = _loc2_.item.Quantity;
               this._txtPrice.text = _loc2_.item.price;
               this["\x1a\x14\x19"](false);
               this["\x1a\x17\x1d"](true);
               this._livInventory["\x1a\x16\x14"](this._livInventory2["\x17\x03\x12"]);
               this["\x1a\x0b\x07"](_loc3_);
         }
         Selection.setFocus(this._txtPrice);
      }
   }
   function modelChanged(oEvent)
   {
      this._livInventory2.dataProvider = this._oData["\x18\f\n"];
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
