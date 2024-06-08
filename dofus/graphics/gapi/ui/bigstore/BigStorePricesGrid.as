class dofus.§\x18\x03\x10§.gapi.ui.bigstore.BigStorePricesGrid extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   static var §\x16\x1b\x10§ = "BigStorePricesGrid";
   function BigStorePricesGrid()
   {
      super();
   }
   function get hasSelected()
   {
      return this["\x1d\x1c\x12"] != null;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.bigstore.BigStorePricesGrid.CLASS_NAME);
      this.api = _global.api;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
      this.addToQueue({object:this,method:this["\x1a\x19\x02"]});
   }
   function addListeners()
   {
      this._dgPrices.addEventListener("itemSelected",this);
      this._parent._oData.addEventListener("modelChanged2",this);
   }
   function §\x1b\x14\x14§()
   {
      this.modelChanged2();
   }
   function §\x1a\x19\x02§()
   {
      this._dgPrices["\x16\x1d\x12"] = ["","x" + this._parent._oData.quantity1,"x" + this._parent._oData.quantity2,"x" + this._parent._oData.quantity3];
   }
   function deletePreviousSelection()
   {
      delete this["\x1d\x1c\x12"];
      delete this["\x1d\x1c\x11"];
      delete this["\x1c\n\x19"];
      delete this["\x1c\n\x17"];
   }
   function §\x1b\x15\x05§(§\x19\x13\x07§, bRefreshList, bIsMonster)
   {
      this._dgPrices.selectedIndex = -1;
      this.deletePreviousSelection();
      if(bRefreshList)
      {
         if(_loc2_ != undefined)
         {
            if(bIsMonster)
            {
               this.api.network.Exchange.bigStoreSoulList(_loc2_.getMonsterList());
            }
            else
            {
               this.api.network.Exchange["\x16\f\x1c"](_loc2_.unicID);
            }
         }
         else
         {
            this._dgPrices.dataProvider = new ank.utils.ExtendedArray();
         }
      }
   }
   function §\x1a\x15\x05§(§\x16\x13\f§, §\x16\x13\x0b§)
   {
      this["\x1c\n\x19"].selected = false;
      this["\x1c\n\x19"] = _loc2_;
      this["\x1c\n\x17"].enabled = false;
      this["\x1c\n\x17"] = _loc3_;
   }
   function §\x1a\x13\b§(§\x19\x13\x07§, §\x19\f\x1a§, §\x16\x13\f§, §\x16\x13\x0b§)
   {
      if(_loc4_ != this["\x1c\n\x19"])
      {
         this["\x1d\x1c\x12"] = _loc2_.id;
         this["\x1d\x1c\x11"] = _loc3_;
         this["\x1a\x15\x05"](_loc4_,_loc5_);
      }
      else
      {
         this.deletePreviousSelection();
      }
   }
   function §\x18\x10\x03§(§\x19\b\x18§, §\x19\f\x1a§)
   {
      return _loc2_ == this["\x1d\x1c\x12"] && this["\x1d\x1c\x11"] == _loc3_;
   }
   function modelChanged2(oEvent)
   {
      this.deletePreviousSelection();
      this["\x1c\n\x19"].selected = false;
      this["\x1c\n\x17"].enabled = false;
      var _loc3_ = this._parent._oData["\x18\f\x0b"];
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         var _loc5_ = _loc3_[_loc4_];
         if(this._parent.isSimilarToPreviousBought(_loc5_))
         {
            this["\x1d\x1c\x12"] = this._parent.previousBoughtId;
            this["\x1d\x1c\x11"] = this._parent.previousBoughtQty;
            break;
         }
         _loc4_ = _loc4_ + 1;
      }
      var _loc6_ = this._parent._oData["\x18\f\x0b"];
      _loc6_["\x16\x13\x11"]("priceSet1",Array.DESCENDING);
      _loc6_.reverse();
      this._dgPrices.dataProvider = _loc6_;
   }
   function itemSelected(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._dgPrices)
      {
         if(Key.isDown(dofus.Constants["\x16\x19\x13"]) && _loc2_.row.item.item != undefined)
         {
            this.api.kernel.GameManager["\x18\n\x1d"](_loc2_.row.item.item);
            return undefined;
         }
         this._parent["\x1c\x11\x13"]["\x18\x10\x17"] = _loc2_.row.item.item;
         this._parent.toggleComponentsVisibility(4,false);
      }
   }
}
