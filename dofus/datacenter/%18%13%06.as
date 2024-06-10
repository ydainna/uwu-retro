class dofus.datacenter.§\x18\x13\x06§
{
   function §\x18\x13\x06§(§\x19\x0e\x17§, §\x1b\b\x12§)
   {
      this.initialize(_loc2_,_loc3_);
   }
   function §\x1b\x0f§(§\x19\r\x0e§)
   {
      this["\x1d\x1c\x01"] = Number(_loc2_);
      return this["\x07\x13"]();
   }
   function §\x07\x13§()
   {
      return this["\x1d\x1c\x01"];
   }
   function §\n\x03§()
   {
      return this["\x1e\f\x17"];
   }
   function §\t\x17§()
   {
      return this["\x1e\x05\x14"];
   }
   function initialize(§\x19\x0e\x17§, §\x1b\b\x12§)
   {
      this["\x1e\x05\x14"] = _global.api.datacenter.Player.Spells.findFirstItem("ID",_loc2_).item;
      this["\x1e\f\x17"] = _loc3_;
      var _loc4_ = this["\x1e\x05\x14"]["\x17\x06\x13"];
      if(_loc4_ == undefined)
      {
         _loc4_ = 0;
      }
      if(_loc4_ >= 63)
      {
         this["\x1d\x1c\x01"] = Number.MAX_VALUE;
      }
      else
      {
         this["\x1d\x1c\x01"] = _loc4_;
      }
   }
}
