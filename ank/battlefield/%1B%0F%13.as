class ank.battlefield.TextHandler
{
   static var §\x16\x13\x1b§ = 1;
   static var BUBBLE_TYPE_THINK = 2;
   function TextHandler(§\x16\b\b§, c, d)
   {
      this.initialize(_loc2_,c,_loc4_);
   }
   function initialize(§\x16\b\b§, c, d)
   {
      this["\x1d\b\x12"] = _loc2_;
      this["\x1d\n\x06"] = c;
      this["\x1e\x03\b"] = _loc4_;
   }
   function clear()
   {
      for(var k in this["\x1d\n\x06"])
      {
         this["\x1d\n\x06"][k].removeMovieClip();
      }
   }
   function §\x15\x1d\x03§(sID, §\x19\x10\x1a§, §\x19\x11\x05§, sText, §\x1b\x12\t§)
   {
      var _loc7_ = (this["\x1e\x03\b"].Map.width - 1) * ank.battlefield.Constants["\x16\x18\t"];
      this["\x1a\x0b\x1b"](sID);
      var _loc8_ = this["\x1d\n\x06"]["\x16\x06\x16"](_loc6_ != ank.battlefield.TextHandler.BUBBLE_TYPE_THINK ? ank.battlefield.mc["\x16\x13\x10"] : ank.battlefield.mc["\x16\x13\x12"],"bubble" + sID,this["\x1d\n\x06"].getNextHighestDepth(),[_loc5_,_loc3_,_loc4_,_loc7_]);
      var _loc9_ = this["\x1d\b\x12"]["\x18\x02\x12"]();
      if(_loc9_ < 100)
      {
         _loc8_._xscale = _loc8_._yscale = 10000 / _loc9_;
      }
   }
   function §\x1a\x0b\x1b§(sID)
   {
      var _loc3_ = this["\x1d\n\x06"]["bubble" + sID];
      _loc3_.remove();
   }
}
