class dofus.§\x17\x04\x19§.§\x16\f\x1a§ extends dofus.§\x17\x04\x19§.§\x1a\x1c\x0e§
{
   function §\x16\f\x1a§()
   {
      super();
      this.initialize();
   }
   function §\x1a\x1a§(§\x19\f\x17§)
   {
      this._nQuantity1 = _loc2_;
      return this["\x06\x1c"]();
   }
   function §\x06\x1c§()
   {
      return this._nQuantity1;
   }
   function §\x1a\x1b§(§\x19\f\x18§)
   {
      this._nQuantity2 = _loc2_;
      return this["\x06\x1d"]();
   }
   function §\x06\x1d§()
   {
      return this._nQuantity2;
   }
   function §\x1a\x1c§(§\x19\f\x19§)
   {
      this._nQuantity3 = _loc2_;
      return this["\x07\x01"]();
   }
   function §\x07\x01§()
   {
      return this._nQuantity3;
   }
   function §\x1e\x15§(§\x16\x07\x04§)
   {
      this["\x1c\x01\x0e"] = _loc2_;
      return this["\f\x0f"]();
   }
   function §\f\x0f§()
   {
      return this["\x1c\x01\x0e"];
   }
   function §\f\x10§()
   {
      var _loc2_ = new Object();
      for(var k in this["\x1c\x01\x0e"])
      {
         _loc2_[this["\x1c\x01\x0e"][k]] = true;
      }
      return _loc2_;
   }
   function §\x1e\x04§(§\x19\x0f\x0e§)
   {
      this["\x1d\x1d\x14"] = _loc2_;
      return this["\n\x1d"]();
   }
   function §\n\x1d§()
   {
      return this["\x1d\x1d\x14"];
   }
   function §\x18\x02§(§\x19\n\x04§)
   {
      this["\x1d\x19\x12"] = _loc2_;
      return this["\x03\r"]();
   }
   function §\x03\r§()
   {
      return this["\x1d\x19\x12"];
   }
   function §\x17\x1d§(§\x19\n\x02§)
   {
      this["\x1d\x19\x10"] = _loc2_;
      return this["\x03\x0b"]();
   }
   function §\x03\x0b§()
   {
      return this["\x1d\x19\x10"];
   }
   function §\x15\b§(§\x17\x0b\x04§)
   {
      this["\x1c\x0f\x12"] = _loc2_;
      this["\x17\x07\x19"]({type:"modelChanged2"});
      return this["\x1e\x1c\x15"]();
   }
   function §\x1e\x1c\x15§()
   {
      return this["\x1c\x0f\x12"];
   }
   function refreshInventory(sEventType)
   {
      this["\x17\x07\x19"]({type:sEventType});
   }
}
