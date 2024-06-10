class dofus.datacenter.§\x1a\x07\n§ extends Object
{
   function §\x1a\x07\n§(§\x18\x18\r§, cost, attackNear)
   {
      super();
      this.api = _global.api;
      this["\x1d\x19\x03"] = _loc3_;
      this["\x1d\x14\b"] = cost;
      this["\x1c\x01\x0b"] = attackNear;
      this["\x1e\x04\x0e"] = this.api.lang["\x17\x1b\x11"](this.mapID);
      this._oArea = this.api.lang["\x17\x1b\x04"](this["\x1e\x04\x0e"].sa);
      this.fieldToSort = this.areaName + this.name;
   }
   function §\x1e\x16\x1b§()
   {
      return this["\x1d\x14\b"];
   }
   function §\x02\x1d§()
   {
      return this["\x1d\x19\x03"];
   }
   function §\x1e\x12\x10§()
   {
      return this["\x1c\x01\x0b"];
   }
   function §\x1e\x16\x19§()
   {
      return this.x + ", " + this.y;
   }
   function §\r\x14§()
   {
      return this.api.lang["\x17\x1b\x11"](this["\x1d\x19\x03"]).x;
   }
   function §\x0e\x02§()
   {
      return this.api.lang["\x17\x1b\x11"](this["\x1d\x19\x03"]).y;
   }
   function §\x04\x1b§()
   {
      var _loc2_ = this.api.lang["\x17\x1b\x0f"](this["\x1e\x04\x0e"].sa).n.substr(0,2) != "//" ? this.api.lang["\x17\x1b\x0f"](this["\x1e\x04\x0e"].sa).n : String(this.api.lang["\x17\x1b\x0f"](this["\x1e\x04\x0e"].sa).n).substr(2);
      if(dofus.Constants.DEBUG)
      {
         _loc2_ += " (" + this["\x1d\x19\x03"] + ")";
      }
      return _loc2_;
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
}
