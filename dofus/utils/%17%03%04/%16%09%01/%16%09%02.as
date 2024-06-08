class dofus.utils.§\x17\x03\x04§.§\x16\t\x01§.§\x16\t\x02§ extends dofus.utils.§\x16\x04\x07§ implements dofus.utils.§\x17\x03\x04§.§\x18\b\x0b§
{
   function §\x16\t\x02§(§\x1b\x04\x11§, §\x19\x10\x10§)
   {
      super();
      this["\x1e\x0b\x11"] = _loc3_;
      this["\x1e\x01\x03"] = _loc4_;
   }
   function §\x18\r\x16§()
   {
      var _loc2_ = this.api.datacenter.Basics.aks_current_regional_version;
      switch(this["\x1e\x0b\x11"])
      {
         case "=":
            return _loc2_ == this["\x1e\x01\x03"];
         case "!":
            return _loc2_ != this["\x1e\x01\x03"];
         case ">":
            return _loc2_ > this["\x1e\x01\x03"];
         case "<":
            return _loc2_ < this["\x1e\x01\x03"];
         default:
            return false;
      }
   }
   function §\x16\x19\x15§()
   {
      return "=!<>".indexOf(this["\x1e\x0b\x11"]) > -1;
   }
}
