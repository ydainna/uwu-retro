class dofus.§\x17\x04\x19§.§\x1a\x14\b§ extends Object
{
   function §\x1a\x14\b§(nTimestamp, nEventID, bTranslated, §\x1a\x11\x04§)
   {
      super();
      this["\x1d\x1e\x12"] = nTimestamp;
      this["\x1d\x17\x01"] = nEventID;
      this["\x1c\x0b\x14"] = bTranslated;
      this["\x1e\b\x0e"] = _loc6_;
      var _loc7_ = _global.api;
      this["\x1e\r\b"] = _loc7_.lang.getText("STATUS_EVENT_" + this["\x1d\x17\x01"]);
      var _loc8_ = _loc7_.lang.getConfigText("HOUR_FORMAT");
      var _loc9_ = _loc7_.config.language;
      var _loc10_ = new Date(this["\x1d\x1e\x12"]);
      this["\x1e\n\x04"] = eval("\x1a\x01\x1a")utils.["\x1b\x01\x19"]["\x17\x12\r"](_loc10_,_loc8_,_loc9_);
   }
   function §\x0b\x1d§()
   {
      return this["\x1d\x1e\x12"];
   }
   function §\x1e\x1b\x18§()
   {
      return this["\x1e\n\x04"];
   }
   function §\x1e\x1c\x05§()
   {
      return this["\x1d\x17\x01"];
   }
   function §\f\x02§()
   {
      return this["\x1e\r\b"];
   }
   function §\f\n§()
   {
      return this["\x1c\x0b\x14"];
   }
   function §\x1e\x16\x12§()
   {
      return this["\x1e\b\x0e"];
   }
}
