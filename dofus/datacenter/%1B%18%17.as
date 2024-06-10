class dofus.datacenter.§\x1b\x18\x17§ extends Object
{
   function §\x1b\x18\x17§(§\x19\b\x0b§, bCurrent, bRespawn, nCost)
   {
      super();
      this.api = _global.api;
      this["\x1e\x04\x0e"] = this.api.lang["\x17\x1b\x11"](_loc3_);
      this._oArea = this.api.lang["\x17\x1b\x04"](this["\x1e\x04\x0e"].sa);
      this["\x1d\x17\x01"] = _loc3_;
      this["\x1c\x03\x04"] = bCurrent;
      this["\x1c\x07\x14"] = bRespawn;
      this["\x1d\x14\b"] = nCost;
      this.fieldToSort = this.areaName + this.subareaName;
   }
   function §\x1e\x1c\x05§()
   {
      return this["\x1d\x17\x01"];
   }
   function get areaID()
   {
      return this._oArea.areaID;
   }
   function get areaName()
   {
      return this.api.lang["\x17\x1b\x06"](this._oArea.areaID).n;
   }
   function get subareaID()
   {
      return this["\x1e\x04\x0e"].sa;
   }
   function get subareaName()
   {
      var _loc2_ = this.api.lang["\x17\x1b\x0f"](this["\x1e\x04\x0e"].sa).n.substr(0,2) != "//" ? this.api.lang["\x17\x1b\x0f"](this["\x1e\x04\x0e"].sa).n : String(this.api.lang["\x17\x1b\x0f"](this["\x1e\x04\x0e"].sa).n).substr(2);
      if(dofus.Constants.DEBUG)
      {
         _loc2_ += " (" + this.id + ")";
      }
      return _loc2_;
   }
   function §\x1e\x16\x19§()
   {
      return this["\x1e\x04\x0e"].x + ", " + this["\x1e\x04\x0e"].y;
   }
   function §\x1e\x1e\x0f§()
   {
      return this["\x1c\x07\x14"];
   }
   function §\x1e\x1d\x06§()
   {
      return this["\x1c\x03\x04"];
   }
   function §\x1e\x16\x1b§()
   {
      return this["\x1d\x14\b"];
   }
}
