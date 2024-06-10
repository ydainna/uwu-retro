class dofus.graphics.gapi.§\x17\x01\x06§.ListInventoryViewer extends dofus.graphics.gapi.§\x17\x01\x06§.§\x18\f\r§
{
   static var §\x16\x1b\x10§ = "ListInventoryViewer";
   var §\x1c\x03\x0f§ = true;
   var §\x1c\x03\x10§ = true;
   function ListInventoryViewer()
   {
      super();
   }
   function §\x1e\x17\x13§()
   {
      if(this._currentOverRow != undefined && this._currentOverRow.item != undefined)
      {
         return dofus.datacenter.Item(this._currentOverRow.item);
      }
      return undefined;
   }
   function §\x02\x1c§()
   {
      return this._lstInventory;
   }
   function §\x12\x0e§(§\x16\n\x13§)
   {
      this["\x1c\x03\x0f"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1a\x1e\x04"](_loc2_);
      }
      return this.displayKamas;
   }
   function §\x12\x10§(§\x16\n\x15§)
   {
      if(this["\x18\t\x1c"])
      {
         ank.utils.Logger.err("[displayPrices] impossible après init");
         return undefined;
      }
      this["\x1c\x03\x10"] = _loc2_;
      return this.displayPrices;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.ListInventoryViewer.CLASS_NAME);
   }
   function createChildren()
   {
      var _loc3_ = !this["\x1c\x03\x10"] ? "ListInventoryViewerItemNoPrice" : "ListInventoryViewerItem";
      this.attachMovie("List","_lstInventory",10,{styleName:"LightBrownList",cellRenderer:_loc3_,rowHeight:20});
      this._lstInventory.move(this["\x1d\r\x12"]._x,this["\x1d\r\x12"]._y);
      this._lstInventory["\x1a\x19\x18"](this["\x1d\r\x12"]._width,this["\x1d\r\x12"]._height);
      this["\x1e\x03\n"] = this._lstInventory;
      this["\x1a\x1e\x04"](this["\x1c\x03\x0f"]);
      this.addToQueue({object:this,method:this.addListeners});
      super.createChildren();
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.initTexts});
   }
   function addListeners()
   {
      super.addListeners();
      this._lstInventory.addEventListener("itemSelected",this);
      this._lstInventory.addEventListener("itemdblClick",this);
      this._lstInventory.addEventListener("itemRollOver",this);
      this._lstInventory.addEventListener("itemRollOut",this);
   }
   function initTexts()
   {
   }
   function initData()
   {
      this.kamaChanged({value:this["\x1e\x04\x02"].Kama});
   }
   function §\x1a\x1e\x04§(bShow)
   {
      this["\x1c\x19\x1c"]._visible = _loc2_;
      this["\x1d\f\x17"]._visible = _loc2_;
   }
   function itemSelected(oEvent)
   {
      super.itemSelected(_loc3_);
      if(_loc3_.target != this._cbTypes)
      {
         if(Key.isDown(dofus.Constants["\x16\x19\x13"]) && _loc3_.row.item != undefined)
         {
            this.api.kernel.GameManager["\x18\n\x1d"](_loc3_.row.item);
            return undefined;
         }
         this["\x17\x07\x19"]({type:"selectedItem",item:_loc3_.row.item,targets:_loc3_.targets});
      }
   }
   function itemdblClick(oEvent)
   {
      this["\x17\x07\x19"]({type:"itemdblClick",item:_loc2_.row.item,targets:_loc2_.targets});
   }
   function itemRollOver(oEvent)
   {
      var _loc3_ = _loc2_.row.item;
      this._currentOverRow = _loc2_.row;
      this["\x17\x07\x19"]({type:"rollOverItem",item:_loc2_.row.item,targets:_loc2_.targets});
   }
   function itemRollOut(oEvent)
   {
      this._currentOverRow = undefined;
      var _loc3_ = _loc2_.row.item;
      this["\x17\x07\x19"]({type:"rollOutItem",item:_loc2_.row.item,targets:_loc2_.targets});
   }
}
