class dofus.§\x17\x04\x19§.§\x1b\x10\x16§
{
   function §\x1b\x10\x16§(§\x18\b\f§, param)
   {
      this.api = _global.api;
      this["\x1c\x11\x06"] = _loc2_;
      switch(this.api.lang["\x18\x01\x1d"](_loc2_).pt)
      {
         case 1:
            var _loc4_ = this.api.lang["\x18\x01\x1d"](_loc2_).t.split("%1").join(this.api.lang["\x17\x1c\x04"]()[_global.parseInt(param)].n);
            break;
         case 0:
         default:
            _loc4_ = this.api.lang["\x18\x01\x1d"](_loc2_).t.split("%1").join(param);
      }
      this["\x1e\x0e\x02"] = "« " + _loc4_ + " »";
      this["\x1c\r\x10"] = this.api.lang["\x18\x01\x1d"](_loc2_).c;
   }
   function §\x1e\x16\x03§()
   {
      return this["\x1c\r\x10"];
   }
   function §\x0b\x16§()
   {
      return this["\x1e\x0e\x02"];
   }
}
