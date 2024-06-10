class dofus.§\x18\x03\x10§.gapi.ui.BigStoreSell extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "BigStoreSell";
   function BigStoreSell()
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
   function §\x1a\x17\x1b§(§\x19\x10\n§, §\x19\f\x10§)
   {
      if(this["\x1c\x11\x13"]["\x18\x10\x17"].unicID == _loc2_ && this["\x1c\x11\x13"]["\x18\x10\x17"] != undefined)
      {
         if(_loc3_ == -2)
         {
            this["\x1c\x1a\x19"].text = this.api.lang.getText("BIG_STORE_UNCALCULABLE");
         }
         else if(_loc3_ == -1)
         {
            this["\x1c\x1a\x19"].text = this.api.lang.getText("BIG_STORE_NOT_SOLD_YET");
         }
         else
         {
            var _loc4_ = new ank.utils.ExtendedString(_loc3_)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
            this["\x1c\x1a\x19"].text = this.api.lang.getText("MIDDLEPRICE",[_loc4_]);
         }
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.BigStoreSell.CLASS_NAME);
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
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this["\x1a\x06\x0f"]});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this["\x1a\x14\x19"],params:[false]});
      this.addToQueue({object:this,method:this["\x1a\x19\n"],params:[false]});
      this["\x18\x06\x0f"](true);
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
      this._btnClose.addEventListener("click",this);
      this._btnSwitchToBuy.addEventListener("click",this);
      this["\x1c\x0b\x0f"].addEventListener("over",this);
      this["\x1c\x0b\x0f"].addEventListener("out",this);
      this._btnFilterSell.addEventListener("click",this);
      this._btnFilterSell.addEventListener("over",this);
      this._btnFilterSell.addEventListener("out",this);
      this["\x1e\x0e\x16"].addEventListener("change",this);
      if(this._oData != undefined)
      {
         this._oData.addEventListener("modelChanged",this);
         this._oData.addEventListener("modelChanged2",this);
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
      this._btnSwitchToBuy.label = this.api.lang.getText("BIGSTORE_MODE_BUY");
      this["\x1c\x1d\t"].text = this.api.lang.getText("SET_QUANTITY") + " :";
      this["\x1c\x1d\x03"].text = this.api.lang.getText("SET_PRICE") + " :";
      this["\x1c\x17\x19"].text = this.api.lang.getText("BIGSTORE_FILTER");
      this["\x1e\x10\x11"].title = this.api.datacenter.Player.data.name;
      this["\x1e\x10\x12"].title = this.api.lang.getText("SHOP_STOCK");
   }
   function §\x1a\x06\x0f§(nQuantity)
   {
      var _loc3_ = new ank.utils.ExtendedArray();
      if(_loc2_ >= this._oData.quantity1)
      {
         _loc3_.push({label:"x" + this._oData.quantity1,index:1});
      }
      if(_loc2_ >= this._oData.quantity2)
      {
         _loc3_.push({label:"x" + this._oData.quantity2,index:2});
      }
      if(_loc2_ >= this._oData.quantity3)
      {
         _loc3_.push({label:"x" + this._oData.quantity3,index:3});
      }
      this["\x1c\f\x17"].dataProvider = _loc3_;
   }
   function initData()
   {
      this["\x17\r\x06"](this.api.kernel.OptionsManager.getOption("BigStoreSellFilter"));
      this._livInventory.dataProvider = this.api.datacenter.Player.Inventory;
      this._livInventory["\x18\x11\x17"] = this.api.datacenter.Player;
      this.modelChanged();
   }
   function §\x17\r\x06§(§\x16\x0b\b§)
   {
      if(_loc2_)
      {
         var _loc3_ = new Array();
         for(var i in this._oData["\x1b\x12\x0b"])
         {
            _loc3_.push(i);
         }
         this._livInventory["\x17\x04\n"] = new dofus.graphics.gapi.ui.bigstore.BigStoreSellFilter(Number(this._oData["\x18\x19\x19"]),_loc3_);
      }
      else
      {
         this._livInventory["\x17\x04\n"] = null;
      }
      this._btnFilterSell.selected = _loc2_;
      this.api.kernel.OptionsManager.setOption("BigStoreSellFilter",_loc2_);
   }
   function §\x18\x06\x0f§(§\x16\f\x12§)
   {
      this["\x1c\x11\x13"]._visible = !_loc2_;
      this["\x1e\x10\x14"]._visible = !_loc2_;
      this["\x1e\f\x03"]._visible = !_loc2_;
      this._mcPricesGrid._visible = !_loc2_;
      this["\x1d\x0e\x1b"]._visible = !_loc2_;
      this["\x1d\f\x17"]._visible = !_loc2_;
      this["\x1c\x1d\t"]._visible = !_loc2_;
      this["\x1c\x1d\n"]._visible = !_loc2_;
      this["\x1c\x1d\x03"]._visible = !_loc2_;
      this["\x1d\x02\x19"]._visible = !_loc2_;
      this["\x1d\x02\x1a"]._visible = !_loc2_;
      this["\x1c\f\x17"]._visible = !_loc2_;
      this["\x1e\x0e\x16"]._visible = !_loc2_;
      this["\x1d\r\x1a"]._visible = !_loc2_;
      this["\x1c\x1a\x19"]._visible = !_loc2_;
      if(_loc2_)
      {
         this["\x1e\x05\t"] = undefined;
      }
   }
   function emptyPricesGrid()
   {
      this._mcPricesGrid._dgPrices.dataProvider = new ank.utils.ExtendedArray();
   }
   function §\x1a\x14\x19§(§\x16\b\x0f§)
   {
      this._btnAdd._visible = _loc2_;
      this._mcSellArrow._visible = _loc2_;
      this["\x1d\x0e\x1b"]._visible = _loc2_;
      this._mcMask._visible = false;
      this["\x1c\f\x17"]._visible = _loc2_;
      this["\x1c\x1d\n"]._visible = false;
      this["\x1e\x0e\x16"].tabIndex = 0;
      this["\x1e\x0e\x16"].enabled = _loc2_;
      this["\x1e\x03\x0b"] = this._btnAdd;
      this["\x1d\f\x17"]._visible = _loc2_;
      this["\x1d\x02\x19"].text = this.api.lang.getText("BIGSTORE_TAX") + " :";
      if(this["\x1d\x02\x1a"].text != undefined)
      {
         this["\x1d\x02\x1a"].text = "";
      }
      if(this._txtBadItem.text != undefined)
      {
         this._txtBadItem.text = "";
      }
      this["\x1d\x02\x19"]._visible = _loc2_;
      this["\x1c\x1d\t"]._visible = _loc2_;
      this["\x1c\x1d\x03"]._visible = _loc2_;
      this["\x1e\f\x03"]._visible = _loc2_;
      this["\x1d\x02\x1a"]._visible = _loc2_;
      this["\x1e\x0e\x16"]._visible = _loc2_;
   }
   function §\x1a\x19\n§(§\x16\b\x0f§)
   {
      this._mcBuyArrow._visible = _loc2_;
      this["\x1d\x0e\x1b"]._visible = false;
      this._mcMask._visible = false;
      this["\x1c\f\x17"]._visible = false;
      this["\x1c\x1d\n"]._visible = _loc2_;
      this["\x1e\x0e\x16"].tabIndex = 0;
      this["\x1e\x0e\x16"].enabled = !_loc2_;
      this["\x1e\x03\x0b"] = this._btnRemove;
      this["\x1d\f\x17"]._visible = false;
      this["\x1d\x02\x19"].text = this.api.lang.getText("BIGSTORE_TIME") + " :";
      if(this["\x1d\x02\x1a"].text != undefined)
      {
         this["\x1d\x02\x1a"].text = "";
      }
      if(this._txtBadItem.text != undefined)
      {
         this._txtBadItem.text = "";
      }
      this["\x1d\x02\x19"]._visible = _loc2_;
      this["\x1c\x1d\t"]._visible = _loc2_;
      this["\x1c\x1d\x03"]._visible = _loc2_;
      this["\x1e\f\x03"]._visible = _loc2_;
      this["\x1d\x02\x1a"]._visible = _loc2_;
      this["\x1e\x0e\x16"]._visible = _loc2_;
   }
   function canItemBeSold(§\x19\x13\x07§)
   {
      var _loc3_ = _loc2_.type;
      if(!this._oData["\x1b\x12\x0b"][_loc3_])
      {
         this["\x1e\f\x06"] = this.api.lang.getText("BIGSTORE_BAD_TYPE");
         return false;
      }
      if(_loc2_.level > this._oData["\x18\x19\x19"])
      {
         this["\x1e\f\x06"] = this.api.lang.getText("BIGSTORE_BAD_LEVEL");
         return false;
      }
      if(!_loc2_["\x16\x15\x17"])
      {
         this["\x1e\f\x06"] = this.api.lang.getText("ITEM_LINKED_CANT_SELL");
         return false;
      }
      return true;
   }
   function §\x1a\x15\x01§(sMessage)
   {
      this._mcBuyArrow._visible = false;
      this["\x1d\x0e\x1b"]._visible = false;
      this._mcMask._visible = true;
      this["\x1c\f\x17"]._visible = false;
      this["\x1c\x1d\n"]._visible = false;
      this["\x1e\x0e\x16"].tabIndex = 0;
      this["\x1e\x0e\x16"].enabled = false;
      this["\x1e\x03\x0b"] = undefined;
      this["\x1d\f\x17"]._visible = false;
      this._txtBadItem.text = _loc2_;
      this["\x1d\x02\x19"]._visible = false;
      this["\x1c\x1d\t"]._visible = false;
      this["\x1c\x1d\x03"]._visible = false;
      this["\x1e\f\x03"]._visible = false;
      this["\x1d\x02\x1a"]._visible = false;
      this["\x1e\x0e\x16"]._visible = false;
      this["\x1a\x0b\x07"]();
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
   function §\x16\x15\t§()
   {
      if(this._oData["\x1b\x0e\x02"] == 0)
      {
         this["\x1d\x02\x1a"].text = "0";
         return undefined;
      }
      var _loc2_ = Number(this["\x1e\x0e\x16"].text);
      var _loc3_ = Math.max(1,Math.round(_loc2_ * this._oData["\x1b\x0e\x02"] / 100));
      this["\x1d\x02\x1a"].text = String(!_global.isNaN(_loc3_) ? _loc3_ : 0);
   }
   function §\x1b\x15\x06§()
   {
      this["\x1e\x10\x12"].title = this.api.lang.getText("SHOP_STOCK") + " (" + this._oData["\x18\f\n"].length + "/" + this._oData["\x18\x19\x16"] + ")";
   }
   function §\x16\x06\x0b§(§\x19\x13\x07§, §\x19\f\x1a§, §\x19\f\x10§)
   {
      var _loc5_ = this._oData["quantity" + _loc3_];
      var _loc6_ = this.gapi.loadUIComponent("AskYesNo","AskYesNoSell",{title:this.api.lang.getText("BIGSTORE"),text:this.api.lang.getText("DO_U_SELL_ITEM_BIGSTORE",["x" + _loc5_ + " " + _loc2_.name,new ank.utils.ExtendedString(_loc4_)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3)]),params:{item:_loc2_,itemQuantity:_loc2_.Quantity,quantity:_loc5_,quantityIndex:_loc3_,price:_loc4_}});
      _loc6_.addEventListener("yes",this);
   }
   function §\x16\x06\x04§(§\x19\x13\x07§)
   {
      this.api.network.Exchange["\x17\x19\x14"](_loc2_.unicID);
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
      switch(_loc2_.target)
      {
         case this._btnRemove:
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
            this["\x1a\x19\n"](false);
            this._btnAdd._visible = false;
            break;
         case this._btnAdd:
            var _loc4_ = Number(this["\x1e\x0e\x16"].text);
            var _loc5_ = Number(this["\x1c\f\x17"].selectedItem.index);
            if(_global.isNaN(_loc4_) || _loc4_ == 0)
            {
               this.gapi.loadUIComponent("AskOk","AksOkBadPrice",{title:this.api.lang.getText("ERROR_WORD"),text:this.api.lang.getText("ERROR_INVALID_PRICE")});
            }
            else if(_global.isNaN(_loc5_) || _loc5_ == 0)
            {
               this.gapi.loadUIComponent("AskOk","AksOkBadQuantity",{title:this.api.lang.getText("ERROR_WORD"),text:this.api.lang.getText("ERROR_INVALID_QUANTITY")});
            }
            else
            {
               this["\x16\x06\x0b"](this["\x1e\x05\t"],_loc5_,_loc4_);
            }
            break;
         case this._btnClose:
            this["\x16\x15\n"]();
            break;
         case this._btnSwitchToBuy:
            this.api.network.Exchange["\x1a\r\x13"](11,this._oData.npcID);
            break;
         case this._btnFilterSell:
            this["\x17\r\x06"](this._btnFilterSell.selected);
      }
   }
   function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\x0b\x0f"]:
            var _loc3_ = this.api.lang.getText("BIGSTORE_MAX_LEVEL") + " : " + this._oData["\x18\x19\x19"];
            _loc3_ += "\n" + this.api.lang.getText("BIGSTORE_TAX") + " : " + this._oData["\x1b\x0e\x02"] + "%";
            _loc3_ += "\n" + this.api.lang.getText("BIGSTORE_MAX_ITEM_PER_ACCOUNT") + " : " + this._oData["\x18\x19\x16"];
            _loc3_ += "\n" + this.api.lang.getText("BIGSTORE_MAX_SELL_TIME") + " : " + this._oData.maxSellTime + " " + ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("HOURS"),"m",this._oData.maxSellTime < 2);
            _loc3_ += "\n\n" + this.api.lang.getText("BIGSTORE_GAIN_SLOT");
            _loc3_ += "\n\n" + this.api.lang.getText("BIGSTORE_TYPES") + " :";
            var _loc4_ = this._oData.types;
            for(var k in _loc4_)
            {
               _loc3_ += "\n - " + this.api.lang["\x17\x19\x1a"](_loc4_[k]).n;
            }
            this.gapi.showTooltip(_loc3_,_loc2_.target,20);
            break;
         case this._btnFilterSell:
            this.gapi.showTooltip(this.api.lang.getText("BIGSTORE_SELL_FILTER_OVER"),_loc2_.target,20);
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
         this["\x1a\x19\n"](false);
      }
      else
      {
         this["\x1c\x11\x13"]["\x18\x10\x17"] = _loc2_.item;
         this["\x18\x06\x0f"](false);
         this["\x1a\x06\x0f"](_loc2_.item.Quantity);
         this._bFullSoul = dofus.datacenter.Item.isFullSoul(_loc2_.item.type);
         if(this.canItemBeSold(_loc2_.item))
         {
            switch(_loc2_.target)
            {
               case this._livInventory:
                  if(this["\x1d\x1b\x12"] != undefined && this["\x1c\f\x17"].dataProvider.length >= this["\x1d\x1b\x12"])
                  {
                     this["\x1c\f\x17"].selectedIndex = this["\x1d\x1b\x12"] - 1;
                  }
                  else
                  {
                     this["\x1d\x1b\x12"] = undefined;
                     this["\x1c\f\x17"].selectedIndex = 0;
                  }
                  this["\x1a\x19\n"](false);
                  this["\x1a\x14\x19"](true);
                  if(this["\x1e\x0e\x16"].text != undefined)
                  {
                     if(!_global.isNaN(this["\x1d\x18\x01"]))
                     {
                        this["\x1e\x0e\x16"].text = String(this["\x1d\x18\x01"]);
                     }
                     else
                     {
                        this["\x1e\x0e\x16"].text = "";
                     }
                  }
                  this._livInventory2["\x1a\x16\x14"](this._livInventory["\x17\x03\x12"]);
                  this["\x1e\x0e\x16"].setFocus();
                  this["\x1a\x0b\x07"]();
                  break;
               case this._livInventory2:
                  this["\x1c\x1d\n"].text = "x" + String(_loc2_.item.Quantity);
                  this["\x1a\x14\x19"](false);
                  this["\x1a\x19\n"](true);
                  this["\x1e\x0e\x16"].text = _loc2_.item.price;
                  this._livInventory["\x1a\x16\x14"](this._livInventory2["\x17\x03\x12"]);
                  this["\x1d\x02\x1a"].text = _loc2_.item["\x1a\x0b\x11"] + "h";
                  var _loc3_ = _loc2_.targets.length;
                  this["\x1a\x0b\x07"](_loc3_);
            }
            if(!this._bFullSoul)
            {
               if(_loc2_.item.unicID != this["\x1e\x05\t"].unicID)
               {
                  this._mcPricesGrid["\x1b\x15\x05"](_loc2_.item,true);
                  this["\x16\x06\x04"](_loc2_.item);
               }
            }
            else
            {
               this._mcPricesGrid["\x1b\x15\x05"](_loc2_.item,true,true);
               this["\x1a\x17\x1b"](_loc2_.item.unicID,-2);
            }
            this["\x1e\x05\t"] = _loc2_.item;
         }
         else
         {
            this["\x1a\x14\x19"](false);
            this["\x1a\x19\n"](false);
            this.emptyPricesGrid();
            this["\x1a\x15\x01"](this["\x1e\f\x06"]);
         }
      }
   }
   function modelChanged(oEvent)
   {
      this._livInventory2.dataProvider = this._oData["\x18\f\n"];
      this["\x1b\x15\x06"]();
   }
   function change(oEvent)
   {
      if(this._btnAdd._visible)
      {
         this["\x1d\x18\x01"] = Number(this["\x1e\x0e\x16"].text);
         this["\x16\x15\t"]();
      }
   }
   function yes(oEvent)
   {
      this["\x1d\x1b\x12"] = _loc2_.target.params.quantityIndex;
      this.api.network.Exchange["\x19\x01\x01"](true,_loc2_.target.params.item,_loc2_.target.params.quantityIndex,_loc2_.target.params.price);
      if(_loc2_.target.params.itemQuantity - _loc2_.target.params.quantity < _loc2_.target.params.quantity)
      {
         this["\x1a\x14\x19"](false);
         this["\x18\x06\x0f"](true);
      }
      else
      {
         this["\x1a\x06\x0f"](_loc2_.target.params.itemQuantity - _loc2_.target.params.quantity);
      }
   }
}
