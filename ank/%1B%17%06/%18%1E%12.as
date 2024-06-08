class ank.utils.§\x18\x1e\x12§
{
   static var §\x18\x1a\x07§ = 20;
   var §\x1b\x1e\x02§ = new Array();
   var §\x1b\x1e\x03§ = new Array();
   function §\x18\x1e\x12§()
   {
   }
   function §\x1b\x0b\x07§(§\x16\x11\t§)
   {
      var _loc3_ = new ank.utils.datacenter.["\x18\x1e\x10"](8026,_root._xmouse,_root._ymouse,_loc2_);
      this["\x1b\x1e\x02"].push(_loc3_);
      this["\x1b\x1e\x03"].push(_loc3_);
      if(this["\x1b\x1e\x02"].length > ank.utils.["\x18\x1e\x12"]["\x18\x1a\x07"])
      {
         this["\x1b\x1e\x02"].shift();
      }
      if(this["\x1b\x1e\x03"].length > 2)
      {
         this["\x1b\x1e\x03"].shift();
      }
   }
   function getMouseClickForGather(§\x19\b\x14§)
   {
      if(this["\x1b\x1e\x03"].length < _loc2_)
      {
         return undefined;
      }
      return this["\x1b\x1e\x03"][this["\x1b\x1e\x03"].length - _loc2_];
   }
   function §\x1a\r\x1c§()
   {
      if(this["\x1b\x1e\x03"].length == 0)
      {
         return undefined;
      }
      this["\x1b\x1e\x03"] = new Array();
   }
}
