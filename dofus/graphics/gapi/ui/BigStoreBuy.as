class dofus.§\x18\x03\x10§.gapi.ui.BigStoreBuy extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "BigStoreBuy";
   var §\x1e\t\x02§ = "";
   var _autoSelectPriceMin = 3000;
   var _autoSelectPriceDiff = 50;
   function BigStoreBuy()
   {
      super();
   }
   function §\x11\x19§(§\x19\x12\x10§)
   {
      this._oData = _loc2_;
      return this["\x1e\x18\x01"]();
   }
   function §\x12\x03§(sText)
   {
      this["\x1e\t\x02"] = _loc2_;
      return this.defaultSearch;
   }
   function get isFullSoul()
   {
      return dofus.datacenter.Item.isFullSoul(this._nCurrentTypeSelected);
   }
   function get previousBoughtId()
   {
      return this._nLastSelectedItemId;
   }
   function get previousBoughtQty()
   {
      return this._nLastSelectedIndex;
   }
   function §\x16\x05\x17§(§\x19\x13\x07§, §\x19\f\x1a§, §\x19\f\x10§)
   {
      if(_loc2_ != undefined && (_loc3_ != undefined && !_global.isNaN(_loc4_)))
      {
         if(_loc4_ > this.api.datacenter.Player.Kama)
         {
            this.gapi.loadUIComponent("AskOk","AskOkNotRich",{title:this.api.lang.getText("ERROR_WORD"),text:this.api.lang.getText("NOT_ENOUGH_RICH")});
         }
         else
         {
            var _loc5_ = this.gapi.loadUIComponent("AskYesNo","AskYesNoBuy",{title:this.api.lang.getText("BIGSTORE"),text:this.api.lang.getText("DO_U_BUY_ITEM_BIGSTORE",["x" + this._oData["quantity" + _loc3_] + " " + _loc2_.name,new ank.utils.ExtendedString(_loc4_)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3)]),params:{id:_loc2_.ID,quantityIndex:_loc3_,price:_loc4_}});
            _loc5_.addEventListener("yes",this);
         }
      }
   }
   function §\x1a\x1a\x1a§(§\x19\x10\x06§)
   {
      var _loc3_ = this._oData.types;
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         if(_loc3_[_loc4_] == _loc2_)
         {
            this._cbTypes.selectedIndex = _loc4_;
            break;
         }
         _loc4_ = _loc4_ + 1;
      }
   }
   function §\x1a\x17\x0b§(§\x19\x10\n§)
   {
      var _loc3_ = this._oData["\x18\f\n"];
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         if(_loc3_[_loc4_].unicID == _loc2_)
         {
            if(this._lstItems.selectedIndex != _loc4_)
            {
               this._lstItems.selectedIndex = _loc4_;
               this._lstItems["\x1a\x1b\x04"](_loc4_);
            }
            break;
         }
         _loc4_ = _loc4_ + 1;
      }
      this._mcPricesGrid["\x1b\x15\x05"](new dofus.datacenter.Item(0,_loc2_),false);
   }
   function §\x16\x06\x04§(§\x19\x13\x07§)
   {
      this.api.network.Exchange["\x17\x19\x14"](_loc2_.unicID);
   }
   function §\x1a\x17\x1b§(§\x19\x10\n§, §\x19\f\x10§)
   {
      if(this["\x1e\x02\x1c"].unicID != _loc2_ || this["\x1e\x02\x1c"] == undefined)
      {
         return undefined;
      }
      var _loc4_ = "";
      if(_loc3_ == -2)
      {
         _loc4_ = this.api.lang.getText("BIG_STORE_UNCALCULABLE");
      }
      else if(_loc3_ == -1)
      {
         _loc4_ = this.api.lang.getText("BIG_STORE_NOT_SOLD_YET");
      }
      else
      {
         var _loc5_ = new ank.utils.ExtendedString(_loc3_)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
         _loc4_ = this.api.lang.getText("MIDDLEPRICE",[_loc5_]);
      }
      this["\x1c\x1d\x04"].text = "<font color=\"#FFFFFF\">" + _loc4_ + "</font>";
   }
   function isSimilarToPreviousBought(§\x19\x13\x07§)
   {
      if(_loc2_.id != this._nLastSelectedItemId)
      {
         return false;
      }
      var _loc3_ = _loc2_["priceSet" + this._nLastSelectedIndex];
      if(_loc3_ == undefined || _global.isNaN(_loc3_))
      {
         return false;
      }
      if(_loc3_ < this._autoSelectPriceMin)
      {
         return true;
      }
      var _loc4_ = 100 * _loc3_ / this._nLastSelectedPrice - 100;
      if(_loc4_ > this._autoSelectPriceDiff)
      {
         return false;
      }
      return true;
   }
   function selectItem(§\x18\x10\x14§)
   {
      if(_loc2_.unicID != this["\x1e\x02\x1c"].unicID)
      {
         this._mcPricesGrid["\x1b\x15\x05"](_loc2_,true);
         this["\x1e\x02\x1c"] = _loc2_;
         this["\x16\x06\x04"](_loc2_);
      }
      if(this.isFullSoul)
      {
         this.toggleComponentsVisibility(2);
      }
      else
      {
         this["\x1c\x11\x13"]["\x18\x10\x17"] = _loc2_;
         this.toggleComponentsVisibility(4,true);
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.BigStoreBuy.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this.gapi.hideTooltip();
      this.api.network.Exchange["\x18\x13\x1d"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this["\x1a\x06\x0f"]});
      this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
      this["\x1a\x1c\x15"](false);
      this["\x1c\x11\x13"]._visible = false;
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._btnClose2.addEventListener("click",this);
      this._btnSearch.addEventListener("click",this);
      this["\x1c\x0b\x0f"].addEventListener("over",this);
      this["\x1c\x0b\x0f"].addEventListener("out",this);
      this._btnSwitchToSell.addEventListener("click",this);
      this._cbTypes.addEventListener("itemSelected",this);
      this._lstItems.addEventListener("itemSelected",this);
      if(this._oData != undefined)
      {
         this._oData.addEventListener("modelChanged",this);
         this._oData.addEventListener("modelChanged2",this);
      }
      else
      {
         ank.utils.Logger.err("[BigStoreBuy] il n\'y a pas de data");
      }
      this.api.datacenter.Player.addEventListener("kamaChanged",this);
   }
   function initTexts()
   {
      this._winBackground.title = this.api.lang.getText("BIGSTORE") + (this._oData != undefined ? " (" + this.api.lang.getText("BIGSTORE_MAX_LEVEL") + " : " + this._oData["\x18\x19\x19"] + ")" : "");
      this._lblItems.text = this.api.lang.getText("BIGSTORE_ITEM_LIST");
      this["\x1d\x03\x19"].text = this.api.lang.getText("ITEM_TYPE");
      this["\x1c\x19\x1d"].text = this.api.lang.getText("WALLET") + " :";
      this._btnClose2.label = this.api.lang.getText("CLOSE");
      this._btnSearch.label = this.api.lang.getText("SEARCH");
      this._btnSwitchToSell.label = this.api.lang.getText("BIGSTORE_MODE_SELL");
   }
   function §\x1b\x14\x14§()
   {
      this.kamaChanged({value:this.api.datacenter.Player.Kama});
   }
   function §\x1a\x06\x0f§()
   {
      var _loc2_ = this._oData.types;
      var _loc3_ = new ank.utils.ExtendedArray();
      var _loc4_ = 0;
      while(_loc4_ < _loc2_.length)
      {
         var _loc5_ = Number(_loc2_[_loc4_]);
         _loc3_.push({label:this.api.lang["\x17\x19\x1a"](_loc5_).n,id:_loc5_});
         _loc4_ = _loc4_ + 1;
      }
      _loc3_.sortOn("label");
      this._oData.types = new Array();
      var _loc6_ = 0;
      while(_loc6_ < _loc2_.length)
      {
         this._oData.types.push(_loc3_[_loc6_].id);
         _loc6_ = _loc6_ + 1;
      }
      this._cbTypes.dataProvider = _loc3_;
      if(_loc3_.length > 0)
      {
         this._cbTypes.selectedIndex = 0;
         this["\x1b\x16\x0b"](this._cbTypes.selectedItem.id);
         if(this._cbTypes.selectedIndex == undefined)
         {
            this.toggleComponentsVisibility(0);
         }
      }
   }
   function §\x1b\x16\x0b§(§\x19\x10\x07§)
   {
      this._lstItems.selectedIndex = -1;
      this._mcPricesGrid["\x1b\x15\x05"](undefined,true);
      this.api.network.Exchange["\x16\r\x02"](_loc2_);
      this._nCurrentTypeSelected = _loc2_;
      this["\x1e\x02\x1c"] = undefined;
   }
   function toggleComponentsVisibility(§\x19\b\x14§, bShowBaseEffects)
   {
      this._mcBottomArrow._visible = false;
      this._mcBottomArrow.stop();
      this._mcLeftArrow._visible = false;
      this._mcLeftArrow.stop();
      this._mcLeft2Arrow._visible = false;
      this._mcLeft2Arrow.stop();
      this["\x1c\x11\x13"]._visible = false;
      this._mcSpacer._visible = false;
      this["\x1c\x1b\x19"]._y = 151;
      switch(_loc2_)
      {
         case 0:
            this._mcLeftArrow._visible = true;
            this._mcLeftArrow.play();
            this["\x1c\x1b\x19"].text = this.api.lang.getText("BIGSTORE_HELP_SELECT_TYPE");
            this["\x1c\x1d\x04"].text = "";
            this["\x1c\x1b\x19"]._y = 101;
            break;
         case 1:
            this._mcLeft2Arrow._visible = true;
            this._mcLeft2Arrow.play();
            this["\x1c\x1b\x19"].text = this.api.lang.getText("BIGSTORE_HELP_SELECT_ITEM");
            this["\x1c\x1d\x04"].text = "";
            break;
         case 2:
            this._mcBottomArrow._visible = true;
            this._mcBottomArrow.play();
            this["\x1c\x1b\x19"].text = this.api.lang.getText("BIGSTORE_HELP_SELECT_PRICE");
            break;
         case 3:
            this["\x1c\x1b\x19"].text = this.api.lang.getText("NO_INVENTORY_SEARCH_RESULT");
            this["\x1c\x19\x14"].text = this.api.lang.getText(this.isFullSoul != true ? "NO_BIGSTORE_RESULT" : "NO_BIGSTORE_MONSTER_RESULT");
            this["\x1c\x1d\x04"].text = "";
            break;
         case 4:
            this["\x1c\x11\x13"].showBaseEffects = bShowBaseEffects;
            this["\x1c\x11\x13"]._visible = true;
            this._mcSpacer._visible = true;
            this["\x1c\x1b\x19"].text = "";
      }
   }
   function §\x1a\x1c\x15§(bShow)
   {
      if(_loc2_)
      {
         this["\x1d\x07\x1a"]._visible = true;
         this["\x1d\x07\x1a"].play();
         ank.utils.Timer.setTimer(this,"bigstore",this,this["\x1a\x1c\x15"],800,[false]);
      }
      else
      {
         this["\x1d\x07\x1a"]._visible = false;
         this["\x1d\x07\x1a"].stop();
      }
   }
   function §\x19\x1c\f§(bSuccess)
   {
      if(_loc2_)
      {
         this.api.ui.unloadUIComponent("BigStoreSearch");
      }
      else
      {
         this.api.kernel.showMessage(this.api.lang.getText("BIGSTORE"),this.api.lang.getText("ITEM_NOT_IN_BIGSTORE"),"ERROR_BOX");
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnClose:
         case this._btnClose2:
            this["\x16\x15\n"]();
            break;
         case this._btnSearch:
            this.api.ui.loadUIComponent("BigStoreSearch","BigStoreSearch",{types:this._oData.types,defaultSearch:this["\x1e\t\x02"],oParent:this,isMonster:this.isFullSoul});
            break;
         case this._btnSwitchToSell:
            this.api.network.Exchange["\x1a\r\x13"](10,this._oData.npcID);
      }
   }
   function itemSelected(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._cbTypes:
            this["\x1b\x16\x0b"](this._cbTypes.selectedItem.id);
            break;
         case this._lstItems:
            if(Key.isDown(dofus.Constants["\x16\x19\x13"]) && _loc2_.row.item != undefined)
            {
               this.api.kernel.GameManager["\x18\n\x1d"](_loc2_.row.item);
               return undefined;
            }
            this.selectItem(_loc2_.row.item);
            break;
      }
   }
   function modelChanged(oEvent)
   {
      var _loc3_ = this._oData["\x18\f\n"];
      if(this.isFullSoul)
      {
         _loc3_.sortOn("name");
      }
      else
      {
         _loc3_.sortOn(["_itemLevel","_itemName"],Array.NUMERIC | Array.CASEINSENSITIVE);
      }
      this._lstItems.dataProvider = _loc3_;
      if(_loc3_.length > 0)
      {
         this.toggleComponentsVisibility(1);
         this["\x1c\x19\x14"].text = _loc3_.length + " " + ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText(this.isFullSoul != true ? "OBJECTS" : "MONSTER"),"m",_loc3_.length < 2);
      }
      else
      {
         this.toggleComponentsVisibility(3);
      }
   }
   function modelChanged2(oEvent)
   {
      if(this._oData["\x18\f\x0b"].length > 0 && this._mcPricesGrid.hasSelected)
      {
         this.toggleComponentsVisibility(4);
      }
      else if(this._oData["\x18\f\x0b"].length > 0 && !this["\x1c\x11\x13"]._visible)
      {
         this.toggleComponentsVisibility(2);
      }
      else if(this._oData["\x18\f\x0b"].length == 0)
      {
         this["\x1e\x02\x1c"] = undefined;
         this.toggleComponentsVisibility(1);
      }
   }
   function yes(oEvent)
   {
      this.api.network.Exchange["\x16\f\x1b"](_loc2_.target.params.id,_loc2_.target.params.quantityIndex,_loc2_.target.params.price);
      this._nLastSelectedItemId = _loc2_.target.params.id;
      this._nLastSelectedIndex = _loc2_.target.params.quantityIndex;
      this._nLastSelectedPrice = _loc2_.target.params.price;
   }
   function kamaChanged(oEvent)
   {
      this["\x1c\x1a\x01"].text = new ank.utils.ExtendedString(_loc2_.value)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
   }
   function over(oEvent)
   {
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
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
