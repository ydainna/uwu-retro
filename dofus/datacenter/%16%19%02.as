class dofus.datacenter.§\x16\x19\x02§ extends dofus.datacenter.§\x1a\x05\t§
{
   static var MAX_NEUTRAL_RESISTANCE_MIXED = 50;
   static var MAX_EARTH_RESISTANCE_MIXED = 50;
   static var MAX_WATER_RESISTANCE_MIXED = 50;
   static var MAX_FIRE_RESISTANCE_MIXED = 50;
   static var MAX_AIR_RESISTANCE_MIXED = 50;
   var §\x1b\x1a\x10§ = {staticF:true};
   function §\x16\x19\x02§(sID, §\x16\x1c\x16§, §\x1a\x1b\x1b§, §\x16\x17\x18§, §\x17\x07\x13§, gfxID, §\x1b\x10\x15§)
   {
      super();
      this["\x1e\x0e\x1a"] = _loc9_;
      this.initialize(sID,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_);
   }
   function §\t\x16§()
   {
      var _loc2_ = this["\x1d\x1d\x06"];
      if(this["\x18\x0f\x19"])
      {
         _loc2_ /= 2;
      }
      else if(this["\x18\f\x10"])
      {
         _loc2_ *= 5;
      }
      return _loc2_;
   }
   function get hasTtgCollection()
   {
      return this._bHasTtgCollection;
   }
   function set hasTtgCollection(bHasTtgCollection)
   {
      this._bHasTtgCollection = bHasTtgCollection;
   }
   function §\x1e\x1b\x07§()
   {
      return this["\x1d\x16\x16"];
   }
   function §\x14\x06§(§\x1b\x17\x16§)
   {
      this["\x1d\x16\x16"] = Number(_loc2_);
      return this["\x1e\x1b\x07"]();
   }
   function §\b\x1b§()
   {
      return this["\x1d\x1c\x1a"];
   }
   function §\x1c\x10§(§\x1b\x17\x16§)
   {
      this["\x1d\x1c\x1a"] = Number(_loc2_);
      return this["\b\x1b"]();
   }
   function §\x1e\x12\x11§()
   {
      return this["\x1d\x13\x01"];
   }
   function §\x0f\x02§(§\x1b\x17\x16§)
   {
      this["\x1d\x13\x01"] = Number(_loc2_);
      return this["\x1e\x12\x11"]();
   }
   function §\x1e\x11\x19§()
   {
      return this["\x1e\x02\x07"];
   }
   function §\x0e\x0f§(§\x1b\x17\x16§)
   {
      this["\x1e\x02\x07"] = _loc2_;
      return this["\x1e\x11\x19"]();
   }
   function §\x03\x17§()
   {
      return this["\x1c\x06\x11"];
   }
   function §\x18\x0f§(§\x1b\x17\x16§)
   {
      this["\x1c\x06\x11"] = _loc2_;
      return this["\x03\x17"]();
   }
   function §\b\x19§()
   {
      return this["\x1d\x1c\x17"];
   }
   function §\x1c\r§(§\x1b\x17\x16§)
   {
      this["\x1d\x1c\x17"] = _loc2_;
      return this["\b\x19"]();
   }
   function §\x1e\x18\x14§()
   {
      return this["\x1c\x03\x0e"];
   }
   function §\x12\n§(§\x1b\x17\x16§)
   {
      this["\x1c\x03\x0e"] = _loc2_;
      return this["\x1e\x18\x14"]();
   }
   function §\x07\b§()
   {
      return this["\x1e\x05\x04"];
   }
   function §\x1b\x05§(§\x1b\x17\x16§)
   {
      this["\x1e\x05\x04"] = _loc2_;
      return this["\x07\b"]();
   }
   function §\x04\x12§()
   {
      return this["\x1b\x1e\x04"];
   }
   function §\x19\x04§(§\x1b\x17\x16§)
   {
      this["\x1b\x1e\x04"] = _loc2_;
      return this["\x04\x12"]();
   }
   function §\x14\b§(§\x1a\x1c\x02§)
   {
      this["\x1e\n\x02"] = _loc2_;
      return this["\x1e\x1b\t"]();
   }
   function §\x1e\x1b\t§()
   {
      return this["\x1e\n\x02"];
   }
   function §\f\x02§()
   {
      return this["\x1e\x0e\x1a"];
   }
   function §\x12\x1c§(§\x19\x12\x15§)
   {
      this["\x1e\x03\x0f"] = _loc2_;
      return this["\x1e\x19\x14"]();
   }
   function §\x1e\x19\x14§()
   {
      return this["\x1e\x03\x0f"];
   }
   function §\x1b\x14§(§\x19\r\x11§)
   {
      this["\x1d\x1c\x03"] = Number(_loc2_);
      return this["\x07\x1b"]();
   }
   function §\x1e\x13\x17§()
   {
      return (this["\x1d\x1c\x03"] & 1) != 1;
   }
   function §\x1e\x13\x19§()
   {
      return (this["\x1d\x1c\x03"] & 2) != 2;
   }
   function §\x1e\x14\x06§()
   {
      return (this["\x1d\x1c\x03"] & 4) != 4;
   }
   function §\x1e\x13\x18§()
   {
      return (this["\x1d\x1c\x03"] & 8) != 8;
   }
   function §\x1e\x1a\x16§()
   {
      return (this["\x1d\x1c\x03"] & 16) == 16;
   }
   function §\x1e\x1e\x14§()
   {
      return (this["\x1d\x1c\x03"] & 32) == 32;
   }
   function §\x1e\x14\x12§()
   {
      return (this["\x1d\x1c\x03"] & 64) != 64;
   }
   function §\x1e\x1e\x1c§()
   {
      return (this["\x1d\x1c\x03"] & 128) == 128;
   }
   function §\x1e\x1c\x16§()
   {
      return (this["\x1d\x1c\x03"] & 256) == 256;
   }
   function onResistancesUpdated()
   {
      this["\x17\x07\x19"]({type:"resistancesChanged"});
   }
   function §\x1b\x11§(§\x16\x05\x06§)
   {
      this["\x1b\x1e\x14"] = _loc2_;
      return this["\x07\x17"]();
   }
   function §\x07\x17§()
   {
      var _loc2_ = new Array();
      var _loc3_ = 0;
      while(_loc3_ < this["\x1b\x1e\x14"].length)
      {
         _loc2_[_loc3_] = this["\x1b\x1e\x14"][_loc3_];
         _loc3_ = _loc3_ + 1;
      }
      _loc2_[0] += this["\x16\x19\x06"]["\x17\x1c\x03"](dofus.managers["\x16\x19\x06"]["\x19\x06\x17"]);
      _loc2_[1] += this["\x16\x19\x06"]["\x17\x1c\x03"](dofus.managers["\x16\x19\x06"]["\x17\x0b\x11"]);
      _loc2_[2] += this["\x16\x19\x06"]["\x17\x1c\x03"](dofus.managers["\x16\x19\x06"]["\x17\x11\f"]);
      _loc2_[3] += this["\x16\x19\x06"]["\x17\x1c\x03"](dofus.managers["\x16\x19\x06"]["\x1b\x18\x16"]);
      _loc2_[4] += this["\x16\x19\x06"]["\x17\x1c\x03"](dofus.managers["\x16\x19\x06"]["\x16\x02\x04"]);
      _loc2_[5] += this["\x16\x19\x06"]["\x17\x1c\x03"](dofus.managers["\x16\x19\x06"]["\x17\t\x07"]);
      _loc2_[6] += this["\x16\x19\x06"]["\x17\x1c\x03"](dofus.managers["\x16\x19\x06"]["\x17\t\b"]);
      _loc2_[0] = Math.min(_loc2_[0],dofus.datacenter.["\x16\x19\x02"].MAX_NEUTRAL_RESISTANCE_MIXED);
      _loc2_[1] = Math.min(_loc2_[1],dofus.datacenter.["\x16\x19\x02"].MAX_EARTH_RESISTANCE_MIXED);
      _loc2_[2] = Math.min(_loc2_[2],dofus.datacenter.["\x16\x19\x02"].MAX_FIRE_RESISTANCE_MIXED);
      _loc2_[3] = Math.min(_loc2_[3],dofus.datacenter.["\x16\x19\x02"].MAX_WATER_RESISTANCE_MIXED);
      _loc2_[4] = Math.min(_loc2_[4],dofus.datacenter.["\x16\x19\x02"].MAX_AIR_RESISTANCE_MIXED);
      return _loc2_;
   }
}
