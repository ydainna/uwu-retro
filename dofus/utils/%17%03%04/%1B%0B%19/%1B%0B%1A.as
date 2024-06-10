class dofus.utils.§\x17\x03\x04§.§\x1b\x0b\x19§.§\x1b\x0b\x1a§ extends dofus.utils.ApiElement implements dofus.utils.§\x17\x03\x04§.§\x18\b\x0b§
{
   function §\x1b\x0b\x1a§()
   {
      super();
   }
   function §\x16\x04\x1b§(§\x1b\x04\x11§, §\x19\x03\x06§)
   {
      this["\x1e\x0b\x11"] = _loc2_;
      this["\x1d\x12\x18"] = _loc3_;
      this._aSubarea = dofus.datacenter.["\x1b\x0b\x18"](this.api.datacenter.Subareas.getItemAt(this.api.datacenter.Map["\x1b\x0b\x17"]));
   }
   function §\x18\r\x16§()
   {
      var _loc2_ = this._aSubarea.alignment;
      switch(this["\x1e\x0b\x11"])
      {
         case "=":
            return this._aSubarea.alignment.index == this["\x1d\x12\x18"];
         case "!":
            return this._aSubarea.alignment.index != this["\x1d\x12\x18"];
         default:
            return false;
      }
   }
   function §\x16\x19\x15§()
   {
      return "=!".indexOf(this["\x1e\x0b\x11"]) > -1;
   }
}
