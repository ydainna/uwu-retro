class dofus.§\x17\x04\x19§.Rank extends Object
{
   function Rank(§\x19\x10\x10§, §\x19\b\x04§, §\x19\x06\x04§, §\x16\x0b\t§)
   {
      super();
      this.api = _global.api;
      this.initialize(_loc3_,_loc4_,_loc5_,_loc6_);
   }
   function §\f\x1c§()
   {
      return this["\x1e\x01\x03"];
   }
   function §\x04§(§\x1b\x17\x07§)
   {
      this["\x1e\x01\x03"] = _loc2_;
      return this["\f\x1c"]();
   }
   function §\x1e\x1b\x17§()
   {
      return this["\x1d\x16\x19"];
   }
   function §\x14\x11§(§\x1b\x17\x07§)
   {
      this["\x1d\x16\x19"] = _loc2_;
      return this["\x1e\x1b\x17"]();
   }
   function §\x1e\x18\x18§()
   {
      return this["\x1d\x15\x13"];
   }
   function §\x12\r§(§\x1b\x17\x07§)
   {
      this["\x1d\x15\x13"] = _loc2_;
      return this["\x1e\x18\x18"]();
   }
   function §\x1e\x19\x15§()
   {
      return this._bEnabled;
   }
   function §\x12\x1d§(§\x1b\x17\x07§)
   {
      this._bEnabled = _loc2_;
      return this["\x1e\x19\x15"]();
   }
   function initialize(§\x19\x10\x10§, §\x19\b\x04§, §\x19\x06\x04§, §\x16\x0b\t§)
   {
      this["\x1e\x01\x03"] = !(_global.isNaN(_loc2_) || _loc2_ == undefined) ? _loc2_ : 0;
      this["\x1d\x16\x19"] = !(_global.isNaN(_loc3_) || _loc3_ == undefined) ? _loc3_ : 0;
      this["\x1d\x15\x13"] = !(_global.isNaN(_loc4_) || _loc4_ == undefined) ? _loc4_ : 0;
      this._bEnabled = _loc5_ != undefined ? _loc5_ : false;
   }
   function clone()
   {
      return new dofus.datacenter.Rank(this["\x1e\x01\x03"],this["\x1d\x16\x19"],this["\x1d\x15\x13"],this._bEnabled);
   }
}
