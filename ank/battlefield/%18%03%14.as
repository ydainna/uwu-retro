class ank.battlefield.§\x18\x03\x14§
{
   function §\x18\x03\x14§(c, §\x17\x04\x0e§)
   {
      this.initialize(c,_loc3_);
   }
   function initialize(c, §\x17\x04\x0e§)
   {
      this["\x1d\n\x06"] = c;
      this["\x1e\x03\b"] = _loc3_;
   }
   function draw(§\x16\b\x13§)
   {
      this["\x1d\x0b\x1b"] = this["\x1d\n\x06"].createEmptyMovieClip("\x18\x1b\x16",10);
      var _loc3_ = this["\x1e\x03\b"]["\x18\x18\x0e"].data;
      var _loc4_ = ank.battlefield.Constants["\x16\x17\x1b"];
      var _loc6_ = new Object();
      this["\x1d\x0b\x1b"].lineStyle(1,ank.battlefield.Constants["\x18\x03\x16"],ank.battlefield.Constants["\x18\x03\x15"]);
      for(var k in _loc3_)
      {
         var _loc5_ = _loc3_[k];
         if(!(!_loc5_["\x15\x1c\x1a"] && !_loc2_))
         {
            if(_loc5_.movement != 0 && _loc5_["\x18\x15\x05"] || _loc2_)
            {
               this["\x1d\x0b\x1b"].moveTo(_loc4_[_loc5_["\x18\x03\x1a"]][0][0] + _loc5_.x,_loc4_[_loc5_["\x18\x03\x1a"]][0][1] + _loc5_.y);
               this["\x1d\x0b\x1b"].lineTo(_loc4_[_loc5_["\x18\x03\x1a"]][1][0] + _loc5_.x,_loc4_[_loc5_["\x18\x03\x1a"]][1][1] + _loc5_.y);
               this["\x1d\x0b\x1b"].lineTo(_loc4_[_loc5_["\x18\x03\x1a"]][2][0] + _loc5_.x,_loc4_[_loc5_["\x18\x03\x1a"]][2][1] + _loc5_.y);
            }
            else
            {
               _loc6_[k] = _loc5_;
            }
         }
      }
      var _loc7_ = this["\x1e\x03\b"]["\x18\x18\x0e"].width;
      var _loc8_ = [0 - _loc7_,0 - (_loc7_ - 1)];
      for(var k in _loc6_)
      {
         _loc5_ = _loc6_[k];
         var _loc9_ = 0;
         for(; _loc9_ < 2; _loc9_ = _loc9_ + 1)
         {
            var _loc10_ = Number(k) + _loc8_[_loc9_];
            if(_loc6_[_loc10_] == undefined)
            {
               if(!_loc3_[_loc10_]["\x15\x1c\x1a"] && !_loc2_)
               {
                  continue;
               }
               var _loc11_ = (_loc9_ + 1) % 4;
               this["\x1d\x0b\x1b"].moveTo(_loc4_[_loc5_["\x18\x03\x1a"]][_loc9_][0] + _loc5_.x,_loc4_[_loc5_["\x18\x03\x1a"]][_loc9_][1] + _loc5_.y);
               this["\x1d\x0b\x1b"].lineTo(_loc4_[_loc5_["\x18\x03\x1a"]][_loc11_][0] + _loc5_.x,_loc4_[_loc5_["\x18\x03\x1a"]][_loc11_][1] + _loc5_.y);
            }
         }
      }
      this["\x16\f\x10"] = true;
   }
   function clear(§\x1b\x18\n§)
   {
      this["\x1d\x0b\x1b"].removeMovieClip();
      this["\x16\f\x10"] = false;
   }
}
