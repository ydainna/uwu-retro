class dofus.§\x17\x04\x19§.Creature extends dofus.§\x17\x04\x19§.§\x1a\x05\t§
{
   var §\x1e\f\x18§ = "appear";
   function Creature(sID, §\x16\x1c\x16§, §\x1a\x1b\x1b§, §\x16\x17\x18§, §\x17\x07\x13§, §\x18\x02\x16§)
   {
      super();
      this.initialize(sID,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_);
   }
   function §\x19\f§(§\x19\n\x19§)
   {
      this["\x1d\x1a\f"] = Number(_loc2_);
      return this["\x04\x1b"]();
   }
   function §\x04\x1b§()
   {
      return this.api.lang["\x17\x1c\t"](this["\x1d\x1a\f"]).n;
   }
   function §\x1a\x13§(§\x19\f\x0e§)
   {
      this["\x1d\x1b\x07"] = Number(_loc2_);
      return this["\x06\x15"]();
   }
   function §\x06\x15§()
   {
      return this["\x1d\x1b\x07"];
   }
   function §\x02\x07§()
   {
      return this.api.lang["\x17\x1c\t"](this["\x1d\x1a\f"])["g" + this["\x1d\x1b\x07"]].l;
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
      var _loc2_ = !this["\x1b\x1e\x14"] ? this.api.lang["\x17\x1c\t"](this["\x1d\x1a\f"])["g" + this["\x1d\x1b\x07"]].r : this["\x1b\x1e\x14"];
      var _loc3_ = new Array();
      var _loc4_ = 0;
      while(_loc4_ < _loc2_.length)
      {
         _loc3_[_loc4_] = _loc2_[_loc4_];
         _loc4_ = _loc4_ + 1;
      }
      _loc3_[0] += this["\x16\x19\x06"]["\x17\x1c\x03"](dofus["\x18\x18\x0b"]["\x16\x19\x06"]["\x19\x06\x17"]);
      _loc3_[1] += this["\x16\x19\x06"]["\x17\x1c\x03"](dofus["\x18\x18\x0b"]["\x16\x19\x06"]["\x17\x0b\x11"]);
      _loc3_[2] += this["\x16\x19\x06"]["\x17\x1c\x03"](dofus["\x18\x18\x0b"]["\x16\x19\x06"]["\x17\x11\f"]);
      _loc3_[3] += this["\x16\x19\x06"]["\x17\x1c\x03"](dofus["\x18\x18\x0b"]["\x16\x19\x06"]["\x1b\x18\x16"]);
      _loc3_[4] += this["\x16\x19\x06"]["\x17\x1c\x03"](dofus["\x18\x18\x0b"]["\x16\x19\x06"]["\x16\x02\x04"]);
      _loc3_[5] += this["\x16\x19\x06"]["\x17\x1c\x03"](dofus["\x18\x18\x0b"]["\x16\x19\x06"]["\x17\t\x07"]);
      _loc3_[6] += this["\x16\x19\x06"]["\x17\x1c\x03"](dofus["\x18\x18\x0b"]["\x16\x19\x06"]["\x17\t\b"]);
      return _loc3_;
   }
   function §\x1e\x11\x19§()
   {
      return new dofus.datacenter.["\x16\x02\x1b"](this.api.lang["\x17\x1c\t"](this["\x1d\x1a\f"]).a,0);
   }
}
