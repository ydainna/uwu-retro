class ank.battlefield.§\x1b\x1b\n§
{
   function §\x1b\x1b\n§(§\x16\b\b§, c)
   {
      this.initialize(_loc2_,c);
   }
   function initialize(§\x16\b\b§, c)
   {
      this["\x1d\b\x12"] = _loc2_;
      this["\x1d\n\x06"] = c;
      this.clear();
   }
   function clear(§\x1b\x18\n§)
   {
      this["\x1d\x12\x05"].removeMovieClip();
      this["\x1d\x12\x05"] = this["\x1d\n\x06"].createEmptyMovieClip("\x1b\x1b\x0b",10);
      this["\x1d\x1a\x0e"] = 0;
   }
   function §\x16\x1c\x12§(nCellNum, §\x1a\t\x0f§, §\x18\x13\b§)
   {
      _loc2_ = Number(_loc2_);
      _loc3_ = Number(_loc3_);
      if(_loc2_ < 0)
      {
         return undefined;
      }
      if(_loc2_ > this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1c"]())
      {
         return undefined;
      }
      var _loc5_ = _loc2_ * 1000 + _loc3_ * 100;
      this["\x1d\x12\x05"][_loc4_]["zone" + _loc5_].clear();
   }
   function §\x16\x1c\x13§(§\x18\x13\b§)
   {
      this["\x1d\x12\x05"][_loc2_].removeMovieClip();
   }
   function §\x17\n\x10§(nCellNum, §\x1a\t\x10§, §\x1a\t\x11§, §\x18\x13\b§, §\x16\x1d\x05§, nShapeID)
   {
      _loc2_ = Number(_loc2_);
      _loc3_ = Number(_loc3_);
      _loc4_ = Number(_loc4_);
      _loc6_ = Number(_loc6_);
      if(_loc2_ < 0)
      {
         return undefined;
      }
      if(_loc2_ > this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1c"]())
      {
         return undefined;
      }
      if(_global.isNaN(_loc3_) || _global.isNaN(_loc4_))
      {
         return undefined;
      }
      var _loc8_ = _loc2_ * 1000 + _loc4_ * 100;
      if(this["\x1d\x12\x05"][_loc5_] == undefined)
      {
         this["\x1d\x12\x05"].createEmptyMovieClip(_loc5_,this["\x1d\x1a\x0e"]++);
      }
      this["\x1d\x12\x05"][_loc5_].__proto__ = MovieClip.prototype;
      this["\x1d\x12\x05"][_loc5_]["\x16\x15\x06"] = this["\x1d\x12\x05"]["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["Zone/Zone"];
      var _loc9_ = ank.battlefield.mc["\x1b\x1b\b"](this["\x1d\x12\x05"][_loc5_]["\x16\x06\x16"](ank.battlefield.mc["\x1b\x1b\b"],"zone" + _loc8_,_loc8_,[this["\x1d\b\x12"]["\x18\x18\x15"]]));
      switch(nShapeID)
      {
         case 8:
            var _loc10_ = ank.battlefield.mc["\x1b\x1b\b"].getCellsSquare(this["\x1d\b\x12"]["\x18\x18\x15"],_loc4_,_loc2_);
            break;
         case 3:
         case 67:
            if(_loc3_ == 0)
            {
               _loc9_["\x17\t\x1b"](_loc4_,_loc6_,_loc2_);
            }
            else
            {
               if(_loc3_ > 0)
               {
                  _loc3_ -= 1;
               }
               _loc9_["\x17\n\x0e"](_loc3_,_loc4_,_loc6_,_loc2_);
            }
            break;
         case 1:
         case 88:
            if(_loc3_ == 0)
            {
               _loc9_["\x17\n\x02"](_loc4_,_loc6_,_loc2_);
            }
            else
            {
               var _loc11_ = this["\x1d\b\x12"]["\x18\x18\x15"];
               var _loc13_ = _loc11_["\x18\x02\r"]();
               var _loc14_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc11_,_loc2_);
               var _loc12_ = _loc2_ - _loc13_ * _loc3_;
               if(ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc11_,_loc12_).y == _loc14_.y)
               {
                  _loc9_["\x17\n\b"](_loc4_ - _loc3_,_loc6_,_loc12_,_loc2_,true);
               }
               _loc12_ = _loc2_ - (_loc13_ - 1) * _loc3_;
               if(ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc11_,_loc12_).x == _loc14_.x)
               {
                  _loc9_["\x17\n\b"](_loc4_ - _loc3_,_loc6_,_loc12_,_loc2_,true);
               }
               _loc12_ = _loc2_ + _loc13_ * _loc3_;
               if(ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc11_,_loc12_).y == _loc14_.y)
               {
                  _loc9_["\x17\n\b"](_loc4_ - _loc3_,_loc6_,_loc12_,_loc2_,true);
               }
               _loc12_ = _loc2_ + (_loc13_ - 1) * _loc3_;
               if(ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc11_,_loc12_).x == _loc14_.x)
               {
                  _loc9_["\x17\n\b"](_loc4_ - _loc3_,_loc6_,_loc12_,_loc2_,true);
               }
            }
            break;
         default:
            _loc9_["\x17\t\x1b"](_loc4_,_loc6_,_loc2_);
      }
      if(_loc10_ != undefined)
      {
         var _loc15_ = this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x15\x02"]();
         var _loc16_ = 0;
         while(_loc16_ < _loc10_.length)
         {
            var _loc17_ = _loc10_[_loc16_];
            if(_loc17_ >= 0)
            {
               if(_loc17_ <= this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1c"]())
               {
                  var _loc18_ = _loc15_[_loc17_];
                  if(!(_loc18_ == undefined || !_loc18_["\x15\x1c\x1a"]))
                  {
                     var _loc19_ = _loc9_.createCellMc(_loc17_);
                     _loc9_["\x17\t\x1b"](0,_loc6_,_loc17_,_loc19_);
                     this["\x19\x01\x13"](_loc19_,_loc17_);
                  }
               }
            }
            _loc16_ = _loc16_ + 1;
         }
      }
      else
      {
         this["\x19\x01\x13"](_loc9_,_loc2_);
      }
   }
   function §\x19\x01\x13§(§\x1b\x1b\x07§, nCellNum)
   {
      var _loc4_ = this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](_loc3_);
      _loc2_._x = _loc4_.x;
      _loc2_._y = _loc4_.y + ank.battlefield.Constants["\x18\x14\x0e"] * (_loc4_["\x18\x03\x18"] - 7);
   }
}
