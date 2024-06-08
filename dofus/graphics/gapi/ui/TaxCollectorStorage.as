class dofus.§\x18\x03\x10§.gapi.ui.TaxCollectorStorage extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "TaxCollectorStorage";
   function TaxCollectorStorage()
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
      super.init(false,dofus.graphics.gapi.ui.TaxCollectorStorage.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this.api.network.Exchange["\x18\x13\x1d"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
      this.addToQueue({object:this,method:this.initTexts});
      this["\x18\x06\x0f"](true);
      this["\x1a\x16\x1c"](false);
   }
   function addListeners()
   {
      this._livInventory.addEventListener("selectedItem",this);
      this._livInventory2.addEventListener("selectedItem",this);
      this._livInventory2.addEventListener("rollOverItem",this);
      this._livInventory2.addEventListener("rollOutItem",this);
      this._livInventory2["\x18\x17\x1b"].multipleSelection = true;
      this._btnGetItem.addEventListener("click",this);
      this._btnClose.addEventListener("click",this);
      if(this._oData != undefined)
      {
         this._oData.addEventListener("modelChanged",this);
      }
      else
      {
         ank.utils.Logger.err("[TaxCollectorShop] il n\'y a pas de data");
      }
   }
   function initTexts()
   {
      this["\x1a\x0b\x02"]();
      this["\x1e\x10\x11"].title = this.api.datacenter.Player.data.name;
      this["\x1e\x10\x12"].title = this._oData.name;
   }
   function §\x18\t\x14§()
   {
      this._livInventory.dataProvider = this.api.datacenter.Player.Inventory;
      this._ldrArtwork.contentPath = dofus.Constants["\x16\x05\x10"] + this._oData.gfx + ".swf";
      this.modelChanged();
   }
   function §\x1a\x0b\x02§(§\x19\x0f\r§)
   {
      if(_loc2_ == undefined)
      {
         _loc2_ = this._livInventory2["\x18\x17\x1b"]["\x17\x1e\x07"]().length;
      }
      if(this["\x1e\t\x19"] == undefined)
      {
         this["\x1e\t\x19"] = this.api.lang.getText("GET_ITEM");
      }
      this._btnGetItem.enabled = _loc2_ != undefined && (_loc2_ <= 1 && (this["\x1e\x05\t"] != undefined && this._mcBuyArrow._visible) || _loc2_ > 1);
      if(_loc2_ == undefined || _loc2_ <= 1)
      {
         this._btnGetItem.label = this["\x1e\t\x19"];
      }
      else
      {
         this._btnGetItem.label = this["\x1e\t\x19"] + " (" + _loc2_ + ")";
      }
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
   function §\x1a\x16\x1c§(§\x16\b\x0f§)
   {
      this._mcBuyArrow._visible = _loc2_;
   }
   function §\x16\x06\b§(nQuantity, §\x19\x1e\x1d§)
   {
      var _loc4_ = this.gapi.loadUIComponent("PopupQuantity","PopupQuantity",{value:_loc2_,max:_loc2_,params:_loc3_});
      _loc4_.addEventListener("validate",this);
   }
   function §\x1b\x17\x10§(§\x16\x05\x12§)
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
      this["\x18\x06\x0f"](true);
      this["\x1a\x16\x1c"](false);
   }
   function §\x1b\x17\x0f§(nQuantity)
   {
      if(_loc2_ <= 0)
      {
         return undefined;
      }
      _loc2_ = Math.min(this["\x1e\x05\t"].Quantity,_loc2_);
      this.api.network.Exchange["\x19\x01\x01"](false,this["\x1e\x05\t"],_loc2_);
      this["\x18\x06\x0f"](true);
      this["\x1a\x16\x1c"](false);
   }
   function modelChanged(oEvent)
   {
      this._livInventory2.dataProvider = this._oData["\x18\f\n"];
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnGetItem":
            var _loc3_ = this._livInventory2["\x18\x17\x1b"]["\x17\x1e\x07"]();
            if(_loc3_.length > 1)
            {
               this["\x1b\x17\x10"](_loc3_);
               break;
            }
            if(this["\x1e\x05\t"] == undefined)
            {
               break;
            }
            if(this["\x1e\x05\t"].Quantity > 1)
            {
               this["\x16\x06\b"](this["\x1e\x05\t"].Quantity);
            }
            else
            {
               this["\x1b\x17\x0f"](1);
            }
            break;
         case "_btnClose":
            this["\x16\x15\n"]();
      }
   }
   function rollOverItem(oEvent)
   {
      var _loc3_ = _loc2_.targets.length;
      this["\x1a\x0b\x02"](_loc3_);
   }
   function rollOutItem(oEvent)
   {
      var _loc3_ = _loc2_.targets.length;
      this["\x1a\x0b\x02"](_loc3_);
   }
   function selectedItem(oEvent)
   {
      if(_loc2_.item == undefined)
      {
         this["\x18\x06\x0f"](true);
         this["\x1a\x16\x1c"](false);
      }
      else
      {
         this["\x1e\x05\t"] = _loc2_.item;
         this["\x18\x06\x0f"](false);
         this["\x1c\x11\x13"]["\x18\x10\x17"] = _loc2_.item;
         switch(_loc2_.target._name)
         {
            case "_livInventory":
               this["\x1a\x16\x1c"](false);
               this._livInventory2["\x1a\x16\x14"](this._livInventory["\x17\x03\x12"]);
               this["\x1a\x0b\x02"]();
               break;
            case "_livInventory2":
               this["\x1a\x16\x1c"](true);
               this._livInventory["\x1a\x16\x14"](this._livInventory2["\x17\x03\x12"]);
               var _loc3_ = _loc2_.targets.length;
               this["\x1a\x0b\x02"](_loc3_);
         }
      }
   }
   function validate(oEvent)
   {
      this["\x1b\x17\x0f"](_loc2_.value);
   }
}
