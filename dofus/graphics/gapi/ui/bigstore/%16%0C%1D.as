class dofus.§\x18\x03\x10§.gapi.ui.bigstore.§\x16\f\x1d§ extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   static var NUMBER_OF_PRICES = 3;
   function §\x16\f\x1d§()
   {
      super();
   }
   function §\x17\x07§(§\x18\x1b\x17§)
   {
      this["\x1d\r\t"] = _loc2_;
      return this.list;
   }
   function §\x1b\x18§(§\x18\x1c\x02§)
   {
      this["\x1d\x0f\x15"] = _loc2_;
      return this.row;
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      delete this["\x1d\x1c\x13"];
      if(_loc2_)
      {
         this["\x1e\x03\x18"] = _loc4_;
         this._ldrIcon.forceReload = !_loc4_.item.isMonsterInBidHouse ? false : true;
         this._ldrIcon.contentParams = _loc4_.item.params;
         this._ldrIcon.contentPath = _loc4_.item.iconFile;
         var _loc5_ = 1;
         while(_loc5_ <= dofus.graphics.gapi.ui.bigstore["\x16\f\x1d"].NUMBER_OF_PRICES)
         {
            var _loc6_ = this["_btnPriceSet" + _loc5_];
            var _loc7_ = this["_mcMySale" + _loc5_];
            var _loc8_ = _loc4_["priceSet" + _loc5_];
            var _loc9_ = _loc4_["isMySale" + _loc5_];
            var _loc10_ = this._oBigStoreUI._mcPricesGrid["\x18\x10\x03"](_loc4_.id,_loc5_);
            if(_loc10_)
            {
               this["\x1d\x1c\x13"] = _loc5_;
               this._oBigStoreUI._mcPricesGrid["\x1a\x15\x05"](_loc6_,this._btnBuy);
            }
            _loc6_.enabled = !_global.isNaN(_loc8_);
            _loc6_.selected = _loc10_;
            _loc6_.label = !_global.isNaN(_loc8_) ? new ank.utils.ExtendedString(_loc8_)["\x15\x1e\x01"](this["\x1d\r\t"].gapi.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + "  " : "-  ";
            _loc6_._visible = true;
            _loc7_._visible = _loc9_;
            _loc5_ = _loc5_ + 1;
         }
         this._btnBuy._visible = true;
         this._btnBuy.enabled = this["\x1d\x1c\x13"] != undefined;
      }
      else if(this._ldrIcon.contentPath != undefined)
      {
         var _loc11_ = 1;
         while(_loc11_ <= dofus.graphics.gapi.ui.bigstore["\x16\f\x1d"].NUMBER_OF_PRICES)
         {
            var _loc12_ = this["_btnPriceSet" + _loc11_];
            var _loc13_ = this["_mcMySale" + _loc11_];
            _loc12_._visible = false;
            _loc13_._visible = false;
            _loc11_ = _loc11_ + 1;
         }
         this._btnBuy._visible = false;
         this._ldrIcon.contentPath = "";
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
      this._oBigStoreUI = this["\x1d\r\t"]._parent._parent._parent;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
   }
   function addListeners()
   {
      var _loc2_ = 1;
      while(_loc2_ <= dofus.graphics.gapi.ui.bigstore["\x16\f\x1d"].NUMBER_OF_PRICES)
      {
         var _loc3_ = this["_btnPriceSet" + _loc2_];
         _loc3_.addEventListener("click",this);
         _loc2_ = _loc2_ + 1;
      }
      this._btnBuy.addEventListener("click",this);
   }
   function initTexts()
   {
      this._btnBuy.label = this["\x1d\r\t"].gapi.api.lang.getText("BUY");
   }
   function selectItem(§\x16\x12\x04§, §\x19\b\x14§)
   {
      this._oBigStoreUI._mcPricesGrid["\x1a\x13\b"](this["\x1e\x03\x18"],_loc3_,this["_btnPriceSet" + _loc3_],this._btnBuy);
      if(_loc2_)
      {
         this["\x1d\x1c\x13"] = _loc3_;
         this["\x1d\x0f\x15"].select();
         this._btnBuy.enabled = true;
      }
      else
      {
         delete this["\x1d\x1c\x13"];
         this._btnBuy.enabled = false;
      }
   }
   function click(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) !== this._btnBuy)
      {
         var _loc3_ = Number(_loc2_.target._name.substr(12));
         this.selectItem(_loc2_.target.selected,_loc3_);
      }
      else
      {
         if(!this["\x1d\x1c\x13"] || _global.isNaN(this["\x1d\x1c\x13"]))
         {
            this._btnBuy.enabled = false;
            return undefined;
         }
         this._oBigStoreUI["\x16\x05\x17"](this["\x1e\x03\x18"].item,this["\x1d\x1c\x13"],this["\x1e\x03\x18"]["priceSet" + this["\x1d\x1c\x13"]]);
         this._oBigStoreUI["\x16\x06\x04"](this["\x1e\x03\x18"].item);
      }
   }
}
