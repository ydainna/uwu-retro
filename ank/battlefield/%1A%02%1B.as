class ank.battlefield.§\x1a\x02\x1b§
{
   function §\x1a\x02\x1b§(§\x16\b\b§, c)
   {
      this.initialize(_loc2_,c);
   }
   function get overHeadID()
   {
      return this["\x1e\n\x06"];
   }
   function get overHead()
   {
      return this["\x1d\n\x06"]["oh" + this["\x1e\n\x06"]];
   }
   function initialize(§\x16\b\b§, c)
   {
      this["\x1d\b\x12"] = _loc2_;
      this["\x1d\n\x06"] = c;
   }
   function clear()
   {
      for(var k in this["\x1d\n\x06"])
      {
         if(typeof this["\x1d\n\x06"][k] == "movieclip")
         {
            this["\x1d\n\x06"][k].swapDepths(0);
            this["\x1d\n\x06"][k].removeMovieClip();
         }
      }
   }
   function §\x15\x1e\x03§(sID, §\x19\x10\x1a§, §\x19\x11\x05§, §\x18\x1c\x03§, §\x1b\x02\x18§, §\x17\x0f\n§, §\x16\x03\x1d§, §\x19\x05\x1a§)
   {
      this["\x1e\n\x06"] = sID;
      var _loc10_ = this["\x1d\n\x06"]["oh" + sID];
      var _loc11_ = this["\x1d\b\x12"]["\x18\x02\x12"]();
      if(_loc10_ == undefined)
      {
         _loc10_ = this["\x1d\n\x06"]["\x16\x06\x16"](ank.battlefield.mc["\x1a\x02\x19"],"oh" + sID,_loc5_.getDepth(),[_loc5_,_loc11_,this["\x1d\b\x12"]]);
      }
      _loc10_._x = _loc3_;
      _loc10_._y = _loc4_;
      if(_loc11_ < 100)
      {
         _loc10_._xscale = _loc10_._yscale = 10000 / _loc11_;
      }
      _loc10_["\x15\x1d\x12"](_loc6_,_loc7_,_loc8_,_loc9_);
   }
   function §\x1a\f\x13§(sID, §\x1b\x02\x18§)
   {
      this["\x1e\n\x06"] = undefined;
      var _loc4_ = this["\x1d\n\x06"]["oh" + sID];
      _loc4_["\x1a\f\r"](_loc3_);
   }
   function §\x1a\f\x12§(sID)
   {
      var _loc3_ = this["\x1d\n\x06"]["oh" + sID];
      _loc3_.remove();
   }
}
