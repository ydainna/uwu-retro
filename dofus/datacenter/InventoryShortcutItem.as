class dofus.§\x17\x04\x19§.InventoryShortcutItem extends Object
{
   static var OBJI_DEFAULT_FRAME = "H0";
   function InventoryShortcutItem(nGenericID, §\x19\f\r§, §\x1a\x12\x0f§)
   {
      super();
      this.api = _global.api;
      this._nGenericID = nGenericID;
      this["\x1d\x1b\x05"] = _loc4_;
      this["\x1e\t\x0b"] = _loc5_;
      this["\x1e\x06\x06"] = this.api.lang["\x17\x19\x1d"](nGenericID);
   }
   function get isShortcut()
   {
      return true;
   }
   function §\x01\x15§()
   {
      if(this.isRealItemEquiped)
      {
         return "Eq";
      }
      var _loc2_ = this.Quantity;
      if(_loc2_ > 1)
      {
         return String(_loc2_);
      }
      return undefined;
   }
   function findEquipedRealItem()
   {
      var _loc2_ = this.api.datacenter.Player.InventoryByItemPositions.getItems();
      for(var k in _loc2_)
      {
         var _loc3_ = _loc2_[k];
         if(_loc3_.unicID == this._nGenericID)
         {
            if(_loc3_["\x16\x1e\x05"] == this["\x1e\t\x0b"])
            {
               return _loc3_;
            }
         }
      }
      return undefined;
   }
   function findRealItem()
   {
      if(this._oRealItem != undefined)
      {
         if(!this._oRealItem.isEquiped)
         {
            var _loc2_ = this.findEquipedRealItem();
            if(_loc2_ != undefined)
            {
               this._oRealItem = _loc2_;
               return true;
            }
         }
         if(!this._oRealItem.isRemovedFromInventory)
         {
            return true;
         }
      }
      var _loc3_ = this.api.datacenter.Player.Inventory;
      for(var k in _loc3_)
      {
         var _loc5_ = _loc3_[k];
         if(_loc5_.unicID == this._nGenericID)
         {
            if(_loc5_["\x16\x1e\x05"] == this["\x1e\t\x0b"])
            {
               var _loc4_ = _loc5_;
               if(_loc5_.isEquiped)
               {
                  break;
               }
            }
         }
      }
      var _loc6_ = _loc4_ != undefined;
      this._oRealItem = _loc4_;
      return _loc6_;
   }
   function get realLinkedItem()
   {
      return !this.findRealItem() ? undefined : this._oRealItem;
   }
   function get genericID()
   {
      return this._nGenericID;
   }
   function §\x06\x13§()
   {
      return this["\x1d\x1b\x05"];
   }
   function §\x1e\x16\r§()
   {
      return this["\x1e\t\x0b"];
   }
   function §\f\r§()
   {
      return !this.findRealItem() ? Number(this["\x1e\x06\x06"].t) : this._oRealItem.type;
   }
   function §\x1e\x1b\x01§()
   {
      return !this.findRealItem() ? this["\x1e\x06\x06"].g : this._oRealItem.gfx;
   }
   function §\x1e\x1c\x03§()
   {
      return dofus.Constants["\x18\x11\x04"] + this.type + "/" + this.gfx + ".swf";
   }
   function §\x06\x02§()
   {
      if(this.findRealItem())
      {
         return this._oRealItem.params;
      }
      return {frame:dofus.datacenter..InventoryShortcutItem.OBJI_DEFAULT_FRAME};
   }
   function get isRealItemEquiped()
   {
      return !this.findRealItem() ? false : this._oRealItem.isEquiped;
   }
   function §\x1e\x1c\x04§()
   {
      return !this.findRealItem() ? -1 : this._oRealItem.ID;
   }
   function §\x06\x1b§()
   {
      if(!this.findRealItem())
      {
         return 0;
      }
      return this._oRealItem.Quantity;
   }
   function §\x1e\x14\x17§()
   {
      return this["\x1e\x06\x06"].u != undefined && this.findRealItem();
   }
   function §\x1e\x14\x13§()
   {
      return this["\x1e\x06\x06"].ut != undefined && this.findRealItem();
   }
   function §\x04\x1b§()
   {
      var _loc2_ = ank.utils.PatternDecoder.getDescription(this.api.lang["\x17\x0f\x12"](this["\x1e\x06\x06"].n),this.api.lang["\x17\x19\x1c"]());
      if(dofus.Constants.DEBUG)
      {
         _loc2_ += " (" + this._nGenericID + ")";
      }
      return _loc2_;
   }
}
