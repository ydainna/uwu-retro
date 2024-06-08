class com.ankamagames.exceptions.AbstractException extends Error
{
   function AbstractException(objectErrorSource, §\x16\x1b\x0f§, methodName, §\x19\x02\x01§)
   {
      super(_loc6_);
      this["\x1c\r\n"] = _loc4_;
      this["\x1d\x12\x06"] = methodName;
      this["\x1e\x02\f"] = objectErrorSource;
   }
   function §\x17\x1e\x19§(§\x1b\x18\n§)
   {
      return this["\x1e\x02\f"];
   }
   function §\x17\x1b\x1a§(§\x1b\x18\n§)
   {
      return !!super.message ? super.toString() : null;
   }
   function §\x17\x17\x13§(§\x1b\x18\n§)
   {
      return "com.ankamagames.exceptions.AbstractException";
   }
   function §\x17\x15\n§(§\x1b\x18\n§)
   {
      return this["\x1c\r\n"];
   }
   function §\x17\x1b\x1c§(§\x1b\x18\n§)
   {
      return !!this["\x1d\x12\x06"] ? this["\x1d\x12\x06"] : null;
   }
   function toString(§\x1b\x18\n§)
   {
      var _loc3_ = this["\x17\x17\x13"]() + " in " + this["\x17\x15\n"]() + (this["\x17\x1b\x1c"]() == null ? "" : "." + this["\x17\x1b\x1c"]());
      var _loc4_ = this["\x17\x1b\x1a"]();
      if(!_loc4_)
      {
         return _loc3_;
      }
      return "[EXCEPTION] " + _loc3_ + " :\r\n\t" + _loc4_;
   }
}
