class dofus.graphics.gapi.ui.bigstore.BigStoreSellFilter implements dofus.graphics.gapi.§\x17\x01\x06§.§\x18\f\f§.§\x18\b\x10§
{
   var §\x1d\x19\r§ = null;
   var §\x1b\x1b\x12§ = null;
   function BigStoreSellFilter(maximalLevel, allowedTypes)
   {
      this["\x1d\x19\r"] = maximalLevel;
      this["\x1b\x1b\x12"] = allowedTypes;
   }
   function §\x18\x0e\x0b§(§\x18\x10\x14§)
   {
      if(!_loc2_["\x16\x15\x17"])
      {
         return false;
      }
      if(this["\x1d\x19\r"] != null && _loc2_.level > this["\x1d\x19\r"])
      {
         return false;
      }
      var _loc3_ = false;
      for(var i in this["\x1b\x1b\x12"])
      {
         if(_loc2_.type == Number(this["\x1b\x1b\x12"][i]))
         {
            _loc3_ = true;
            break;
         }
      }
      if(!_loc3_)
      {
         return false;
      }
      return true;
   }
}
