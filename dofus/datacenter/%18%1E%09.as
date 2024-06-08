class dofus.§\x17\x04\x19§.§\x18\x1e\t§ extends Object
{
   function §\x18\x1e\t§(nOwner, §\x19\f\x10§, §\x19\x0e\n§, nCurrentItems, nMaxItems, §\x1a\x1c\x02§, §\x19\x13\x04§, §\x19\t\x14§, §\x19\b\n§, nInstance)
   {
      super();
      this.api = _global.api;
      this.owner = nOwner;
      this.price = _loc4_;
      this.size = _loc5_;
      this.currentItems = nCurrentItems;
      this.maxItems = nMaxItems;
      this["\x18\x04\x07"] = _loc8_;
      this["\x18\x04\x01"] = _loc9_;
      this._nMapID = _loc10_;
      this["\x1e\x04\x0e"] = this.api.lang["\x17\x1b\x11"](_loc10_);
      this._oArea = this.api.lang["\x17\x1b\x04"](this["\x1e\x04\x0e"].sa);
      this.id = _loc11_;
      this.instance = nInstance;
   }
   function §\x1e\x1e\x0e§()
   {
      return this.owner == -1;
   }
   function §\x1e\x1b\r§()
   {
      return this.owner == 0;
   }
   function §\x18\x0e\x1c§(§\x19\x11\x11§)
   {
      return this["\x18\x04\x07"] == _loc2_.datacenter.Player.guildInfos.name;
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
         _loc2_ += " (" + this._nMapID + ")";
      }
      return _loc2_;
   }
   function §\x1e\x16\x19§()
   {
      return this["\x1e\x04\x0e"].x + ", " + this["\x1e\x04\x0e"].y;
   }
   function §\x02\x1d§()
   {
      return this._nMapID;
   }
   function get instanceId()
   {
      return this.instance;
   }
   function getPrintFormat()
   {
      var _loc2_ = "";
      _loc2_ += this["\x18\x04\x07"] != "" ? "<b>" + this["\x18\x04\x07"] + "</b>" : this.name;
      _loc2_ += this.price <= 0 ? "" : " (" + this.api.lang.getText("FOR_SALE_AT",[new ank.utils.ExtendedString(this.price)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3)]) + "k)";
      return _loc2_;
   }
   function §\x04\x1b§()
   {
      var _loc2_ = !this["\x18\x0f\x0e"] ? this.api.lang.getText("MOUNTPARK_PRIVATE") : this.api.lang.getText("MOUNTPARK_PUBLIC");
      if(dofus.Constants.DEBUG)
      {
         _loc2_ += " (" + this.id + ")";
      }
      return _loc2_;
   }
}
