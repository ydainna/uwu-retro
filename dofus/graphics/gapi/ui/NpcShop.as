class dofus.graphics.gapi.ui.NpcShop extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "NpcShop";
   function NpcShop()
   {
      super();
   }
   function §\x11\x19§(§\x19\x12\x10§)
   {
      this._oData = _loc2_;
      return this["\x1e\x18\x01"]();
   }
   function §\x10\x1d§(§\x15\x1b\x1c§)
   {
      this["\x1c\r\x11"] = _loc2_;
      return this["\x1e\x16\x07"]();
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
      super.init(false,dofus.graphics.gapi.ui.NpcShop.CLASS_NAME);
      this.gapi.getUIComponent("Banner")["\x16\x19\f"] = false;
   }
   function destroy()
   {
      this.gapi.getUIComponent("Banner")["\x16\x19\f"] = true;
   }
   function §\x16\x15\n§()
   {
      this.api.network.Exchange.leave();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.initTexts});
      this["\x18\x06\x0f"](true);
      this["\x1a\x19\x16"](false);
      this["\x1a\x15\x06"](false);
      this.gapi["\x1b\x13\x12"]();
   }
   function addListeners()
   {
      this._livInventory.addEventListener("selectedItem",this);
      this._livInventory2.addEventListener("selectedItem",this);
      this._btnSell.addEventListener("click",this);
      this._btnBuy.addEventListener("click",this);
      this._btnClose.addEventListener("click",this);
      this._ldrArtwork.addEventListener("complete",this);
      if(this._oData != undefined)
      {
         this._oData.addEventListener("modelChanged",this);
      }
      else
      {
         ank.utils.Logger.err("[NpcShop] il n\'y a pas de data");
      }
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
   }
   function initTexts()
   {
      this._btnSell.label = this.api.lang.getText("SELL");
      this._btnBuy.label = this.api.lang.getText("BUY");
      this["\x1e\x10\x11"].title = this.api.datacenter.Player.data.name;
      this["\x1e\x10\x12"].title = this._oData.name;
   }
   function initData()
   {
      this._livInventory.dataProvider = this.api.datacenter.Player.Inventory;
      this._livInventory["\x18\x11\x17"] = this.api.datacenter.Player;
      this._ldrArtwork.contentPath = dofus.Constants["\x16\x05\x10"] + this._oData.gfx + ".swf";
      this.modelChanged();
   }
   function §\x18\x06\x0f§(§\x16\f\x12§)
   {
      this["\x1c\x11\x13"]._visible = !_loc2_;
      this["\x1e\x10\x14"]._visible = !_loc2_;
      if(_loc2_)
      {
         this["\x1e\x05\t"] = undefined;
      }
   }
   function §\x1a\x19\x16§(§\x16\b\x0f§)
   {
      this._btnSell._visible = _loc2_;
      this._mcSellArrow._visible = _loc2_;
   }
   function §\x1a\x15\x06§(§\x16\b\x0f§)
   {
      this._btnBuy._visible = _loc2_;
      this._mcBuyArrow._visible = _loc2_;
   }
   function getPlayerMoneyAmount()
   {
      if(this["\x1e\x05\t"].hasCustomMoneyItemId)
      {
         var _loc2_ = this.api.datacenter.Player.getInventoryItemQuantityByUnicID(this["\x1e\x05\t"].customMoneyItemId);
      }
      else
      {
         _loc2_ = this.api.datacenter.Player.Kama;
      }
      return _loc2_;
   }
   function §\x16\x06\b§(sType, §\x19\f\x15§, nPrice, §\x19\x10\x17§)
   {
      var _loc5_ = 0;
      if(_loc2_ == "buy")
      {
         _loc5_ = Math.floor(this.getPlayerMoneyAmount() / nPrice);
         if(_loc4_ != undefined)
         {
            var _loc6_ = this.api.datacenter.Player.maxWeight - this.api.datacenter.Player.currentWeight;
            var _loc7_ = Math.floor(_loc6_ / _loc4_);
            if(_loc5_ > _loc7_)
            {
               _loc5_ = _loc7_;
            }
         }
         if(_loc5_ == 0)
         {
            var _loc8_ = !this["\x1e\x05\t"].hasCustomMoneyItemId ? this.api.lang.getText("NOT_ENOUGH_RICH") : this.api.lang.getText("CANT_BUY");
            this.gapi.loadUIComponent("AskOk","AskOkRich",{title:this.api.lang.getText("ERROR_WORD"),text:_loc8_});
            return undefined;
         }
      }
      else
      {
         _loc5_ = _loc3_;
      }
      var api = this.api;
      var _loc9_ = "POPUP_QUANTITY_NPC_SHOP";
      var sMoney = !this["\x1e\x05\t"].hasCustomMoneyItemId ? " " + api.lang.getText("KAMAS") : "x " + new dofus.datacenter.Item(0,this["\x1e\x05\t"].customMoneyItemId).name;
      var _loc10_ = [function(§\x19\n\x0e§, §\x19\t\x19§, §\x19\x10\x10§)
      {
         var _loc5_ = _loc4_ * nPrice;
         var _loc6_ = new ank.utils.ExtendedString(_loc5_)["\x15\x1e\x01"](api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
         _loc6_ += sMoney;
         return _loc6_;
      }];
      var _loc11_ = this.gapi.loadUIComponent("PopupQuantityWithDescription","PopupQuantity",{descriptionLangKey:_loc9_,descriptionLangKeyParams:_loc10_,value:1,max:_loc5_,min:1,isMaxButtonValidationEnabled:_loc2_ == "sell",params:{type:_loc2_}});
      _loc11_.addEventListener("validate",this);
   }
   function §\x1b\x17\x0b§(nQuantity)
   {
      if(_loc2_ <= 0)
      {
         return undefined;
      }
      if(this.getPlayerMoneyAmount() < this["\x1e\x05\t"].price * _loc2_)
      {
         var _loc3_ = !this["\x1e\x05\t"].hasCustomMoneyItemId ? this.api.lang.getText("NOT_ENOUGH_RICH") : this.api.lang.getText("CANT_BUY");
         this.gapi.loadUIComponent("AskOk","AskOkRich",{title:this.api.lang.getText("ERROR_WORD"),text:_loc3_});
         return undefined;
      }
      this.api.network.Exchange.buy(this["\x1e\x05\t"].unicID,_loc2_);
   }
   function §\x1b\x17\x13§(nQuantity)
   {
      if(_loc2_ <= 0)
      {
         return undefined;
      }
      if(_loc2_ > this["\x1e\x05\t"].Quantity)
      {
         _loc2_ = this["\x1e\x05\t"].Quantity;
      }
      this.api.network.Exchange.sell(this["\x1e\x05\t"].ID,_loc2_);
      if(this["\x1e\x05\t"]["\x16\x15\x17"])
      {
         this["\x1e\x05\t"]._nQuantity -= _loc2_;
      }
      if(this["\x1e\x05\t"]._nQuantity > 0)
      {
         return undefined;
      }
      this["\x18\x06\x0f"](true);
      this["\x1a\x19\x16"](false);
      this["\x1a\x15\x06"](false);
   }
   function applyColor(§\x18\x1b\f§, §\x1b\x1b\x07§)
   {
      var _loc4_ = this["\x1c\r\x11"][_loc3_];
      if(_loc4_ == -1 || _loc4_ == undefined)
      {
         return undefined;
      }
      var _loc5_ = (_loc4_ & 16711680) >> 16;
      var _loc6_ = (_loc4_ & 65280) >> 8;
      var _loc7_ = _loc4_ & 255;
      var _loc8_ = new Color(_loc2_);
      var _loc9_ = new Object();
      _loc9_ = {ra:0,ga:0,ba:0,rb:_loc5_,gb:_loc6_,bb:_loc7_};
      _loc8_.setTransform(_loc9_);
   }
   function modelChanged(oEvent)
   {
      this._livInventory2.dataProvider = this._oData["\x18\f\n"];
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnBuy":
            this["\x16\x06\b"]("buy",1,this["\x1e\x05\t"].price,this["\x1e\x05\t"].weight);
            break;
         case "_btnSell":
            this["\x16\x06\b"]("sell",this["\x1e\x05\t"].Quantity,this["\x1e\x05\t"].price);
            break;
         case "_btnClose":
            this["\x16\x15\n"]();
      }
   }
   function onShortcut(sShortcut)
   {
      if(_loc2_ == "ACCEPT_CURRENT_DIALOG" && this["\x1e\x05\t"] != undefined)
      {
         this.click({target:this["\x1e\x03\x0b"]});
         return false;
      }
      this.gapi.getUIComponent("Banner")["\x1a\x15\x0b"]();
      return true;
   }
   function selectedItem(oEvent)
   {
      if(_loc2_.item == undefined)
      {
         this["\x18\x06\x0f"](true);
         this["\x1a\x19\x16"](false);
         this["\x1a\x15\x06"](false);
      }
      else
      {
         this["\x1e\x05\t"] = _loc2_.item;
         this["\x18\x06\x0f"](false);
         this["\x1c\x11\x13"]["\x18\x10\x17"] = _loc2_.item;
         switch(_loc2_.target._name)
         {
            case "_livInventory":
               this["\x1a\x19\x16"](true);
               this["\x1a\x15\x06"](false);
               this["\x1e\x03\x0b"] = this._btnSell;
               this._livInventory2["\x1a\x16\x14"](this._livInventory["\x17\x03\x12"]);
               break;
            case "_livInventory2":
               this["\x1a\x19\x16"](false);
               this["\x1a\x15\x06"](true);
               this["\x1e\x03\x0b"] = this._btnBuy;
               this._livInventory["\x1a\x16\x14"](this._livInventory2["\x17\x03\x12"]);
         }
      }
   }
   function validate(oEvent)
   {
      switch(_loc2_.params.type)
      {
         case "sell":
            this["\x1b\x17\x13"](_loc2_.value);
            break;
         case "buy":
            this["\x1b\x17\x0b"](_loc2_.value);
      }
   }
   function complete(oEvent)
   {
      var ref = this;
      this._ldrArtwork.content.stringCourseColor = function(§\x18\x1b\f§, §\x1b\x1a\x1d§)
      {
         ref.applyColor(_loc2_,_loc3_);
      };
   }
}
