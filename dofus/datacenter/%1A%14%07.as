class dofus.datacenter.§\x1a\x14\x07§ extends Object
{
   function §\x1a\x14\x07§(§\x19\b\x0b§, nDate, §\x19\x10\x06§, nStatus, §\x16\x05\x13§, aHistory)
   {
      super();
      this["\x1d\x17\x01"] = _loc3_;
      this["\x1d\x15\n"] = nDate;
      this["\x1d\x1e\x18"] = _loc5_;
      this["\x1d\x1d\x0e"] = nStatus;
      this["\x1b\x1e\x1b"] = _loc7_;
      this["\x1b\x1d\x07"] = aHistory;
      var _loc9_ = _global.api;
      this["\x1e\r\n"] = _loc9_.lang.getText("STATUS_PROBLEM_" + this["\x1d\x1e\x18"]);
      this["\x1e\f\x19"] = _loc9_.lang.getText("STATUS_STATE_" + this["\x1d\x1d\x0e"]);
      var _loc10_ = _loc9_.lang.getConfigText("LONG_DATE_FORMAT");
      var _loc11_ = _loc9_.config.language;
      var _loc12_ = String(this["\x1d\x15\n"]);
      var _loc13_ = new Date(Number(_loc12_.substr(0,4)),Number(_loc12_.substr(4,2)) - 1,Number(_loc12_.substr(6,2)));
      this["\x1e\b\x1b"] = eval("\x1a\x01\x1a")utils.["\x1b\x01\x19"]["\x17\x12\r"](_loc13_,_loc10_,_loc11_);
   }
   function §\x1e\x1c\x05§()
   {
      return this["\x1d\x17\x01"];
   }
   function §\x1e\x18\x05§()
   {
      return this["\x1e\b\x1b"];
   }
   function §\f\r§()
   {
      return this["\x1e\r\n"];
   }
   function §\n\n§()
   {
      return this["\x1e\f\x19"];
   }
   function §\b\x1a§()
   {
      return this["\x1b\x1e\x1b"];
   }
   function §\x1e\x1b\x15§()
   {
      return this["\x1b\x1d\x07"];
   }
}
