class dofus.graphics.gapi.ui.HouseIndoor extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "HouseIndoor";
   function HouseIndoor()
   {
      super();
   }
   function §\x14\x14§(§\x18\x05\x19§)
   {
      this["\x1c\x11\x05"] = _loc2_;
      this.api.gfx.addEventListener("mapLoaded",this);
      _loc2_.addEventListener("forsale",this);
      _loc2_.addEventListener("locked",this);
      this["\x1d\x0b\x14"]._visible = _loc2_["\x18\r\x1b"];
      this["\x1d\r\x0e"]._visible = _loc2_["\x18\x0e\x17"];
      return this.house;
   }
   function §\x1d\x01§(§\x16\x06\x01§)
   {
      this["\x1b\x1e\x1d"] = _loc2_;
      return this["\t\n"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.HouseIndoor.CLASS_NAME);
   }
   function createChildren()
   {
      this["\x1d\f\x07"].onRelease = this.click;
      if(this["\x1c\x11\x05"] == undefined)
      {
         this["\x1d\x0b\x14"]._visible = false;
         this["\x1d\r\x0e"]._visible = false;
      }
   }
   function click()
   {
      var _loc2_ = this._parent["\x1c\x11\x05"].instanceID;
      this._parent.api.kernel.HouseManager.openHouseMenu(undefined,_loc2_,this._parent["\x1b\x1e\x1d"],undefined);
   }
   function forsale(oEvent)
   {
      this["\x1d\x0b\x14"]._visible = _loc2_.value;
   }
   function locked(oEvent)
   {
      this["\x1d\r\x0e"]._visible = _loc2_.value;
   }
   function mapLoaded(oEvent)
   {
      var _loc3_ = _loc2_.currentMap;
      if(this.api.lang["\x17\x18\x19"](_loc3_.id) == undefined || this.api.lang["\x17\x18\x19"](_loc3_.id) != this["\x1c\x11\x05"].id)
      {
         this["\x1b\x13\x13"]();
      }
   }
}
