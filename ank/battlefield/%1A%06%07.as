class ank.battlefield.§\x1a\x06\x07§
{
   function §\x1a\x06\x07§(§\x16\b\b§, c)
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
      this.hide();
      this["\x1b\x1e\x1c"] = new Array();
   }
   function hide(§\x1b\x18\n§)
   {
      this["\x1d\x12\x05"].removeMovieClip();
      this["\x1d\x12\x05"] = this["\x1d\n\x06"].createEmptyMovieClip("\x1b\x1b\x0b",2);
      this["\x1d\x12\x05"]["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["Zone/Pointers"];
   }
   function §\x15\x1e\x0e§(§\x1b\b\b§, §\x19\x02\x04§, §\x19\x05\x06§, §\x19\x04\x13§)
   {
      this["\x1b\x1e\x1c"].push({shape:_loc2_,size:_loc3_,col:_loc4_,cellNumRef:_loc5_});
   }
   function draw(§\x19\x04\x12§)
   {
      var _loc3_ = this["\x1b\x1e\x1c"];
      if(_loc3_.length == 0)
      {
         return undefined;
      }
      this.hide();
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         this["\x1d\x12\x05"].__proto__ = MovieClip.prototype;
         var _loc5_ = ank.battlefield.mc["\x1b\x1b\b"](this["\x1d\x12\x05"]["\x16\x06\x16"](ank.battlefield.mc["\x1b\x1b\b"],"zone" + _loc4_,10 * _loc4_,[this["\x1d\b\x12"]["\x18\x18\x15"]]));
         var _loc7_ = _loc3_[_loc4_].shape;
         var _loc8_ = _loc7_.charCodeAt(0);
         switch(_loc8_)
         {
            case 8:
               var _loc6_ = ank.battlefield.mc["\x1b\x1b\b"].getCellsSquare(this["\x1d\b\x12"]["\x18\x18\x15"],_loc3_[_loc4_].size,_loc2_);
               break;
            case 16:
               _loc6_ = ank.battlefield.mc["\x1b\x1b\b"].getCellsLineWide(this["\x1d\b\x12"]["\x18\x18\x15"],_loc3_[_loc4_].size,_loc3_[_loc4_].cellNumRef,_loc2_);
               break;
            case 17:
               _loc6_ = ank.battlefield.mc["\x1b\x1b\b"].getCellsSpike(this["\x1d\b\x12"]["\x18\x18\x15"],_loc3_[_loc4_].size,_loc3_[_loc4_].cellNumRef,_loc2_);
               break;
            case 4:
            case 80:
               _loc5_["\x17\t\x1b"](0,_loc3_[_loc4_].col,_loc2_);
               break;
            case 3:
            case 67:
               if(typeof _loc3_[_loc4_].size == "number")
               {
                  _loc5_["\x17\t\x1b"](_loc3_[_loc4_].size,_loc3_[_loc4_].col,_loc2_);
               }
               else if(_loc3_[_loc4_].size[0] == 0 && !_global.isNaN(Number(_loc3_[_loc4_].size[1])))
               {
                  _loc5_["\x17\t\x1b"](Number(_loc3_[_loc4_].size[1]),_loc3_[_loc4_].col,_loc2_);
               }
               else
               {
                  var _loc9_ = 0;
                  if(_loc3_[_loc4_].size[0] > 0)
                  {
                     _loc9_ = -1;
                  }
                  _loc5_["\x17\n\x0e"](_loc3_[_loc4_].size[0] + _loc9_,_loc3_[_loc4_].size[1],_loc3_[_loc4_].col,_loc2_);
               }
               break;
            case 6:
            case 68:
               var _loc10_ = -1;
               var _loc11_ = -1;
               if(typeof _loc3_[_loc4_].size == "number")
               {
                  _loc11_ = Number(_loc3_[_loc4_].size);
                  _loc10_ = _loc11_ % 2 != 0 ? 0 : 1;
               }
               else
               {
                  _loc10_ = Number(_loc3_[_loc4_].size[1]);
                  _loc11_ = Number(_loc3_[_loc4_].size[0]);
               }
               var _loc12_ = _loc10_;
               while(_loc12_ < _loc11_)
               {
                  _loc5_["\x17\n\x0e"](_loc12_ + 1,_loc12_,_loc3_[_loc4_].col,_loc2_);
                  _loc12_ += 2;
               }
               break;
            case 2:
            case 76:
               _loc5_["\x17\n\b"](_loc3_[_loc4_].size,_loc3_[_loc4_].col,_loc2_,_loc3_[_loc4_].cellNumRef);
               break;
            case 1:
            case 88:
               if(typeof _loc3_[_loc4_].size == "number")
               {
                  _loc5_["\x17\n\x02"](_loc3_[_loc4_].size,_loc3_[_loc4_].col,_loc2_);
               }
               else
               {
                  var _loc13_ = this["\x1d\b\x12"]["\x18\x18\x15"];
                  var _loc15_ = _loc13_["\x18\x02\r"]();
                  var _loc16_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc13_,_loc2_);
                  var _loc14_ = _loc2_ - _loc15_ * _loc3_[_loc4_].size[0];
                  if(ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc13_,_loc14_).y == _loc16_.y)
                  {
                     _loc5_["\x17\n\b"](_loc3_[_loc4_].size[1] - _loc3_[_loc4_].size[0],_loc3_[_loc4_].col,_loc14_,_loc2_,true);
                  }
                  _loc14_ = _loc2_ - (_loc15_ - 1) * _loc3_[_loc4_].size[0];
                  if(ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc13_,_loc14_).x == _loc16_.x)
                  {
                     _loc5_["\x17\n\b"](_loc3_[_loc4_].size[1] - _loc3_[_loc4_].size[0],_loc3_[_loc4_].col,_loc14_,_loc2_,true);
                  }
                  _loc14_ = _loc2_ + _loc15_ * _loc3_[_loc4_].size[0];
                  if(ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc13_,_loc14_).y == _loc16_.y)
                  {
                     _loc5_["\x17\n\b"](_loc3_[_loc4_].size[1] - _loc3_[_loc4_].size[0],_loc3_[_loc4_].col,_loc14_,_loc2_,true);
                  }
                  _loc14_ = _loc2_ + (_loc15_ - 1) * _loc3_[_loc4_].size[0];
                  if(ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc13_,_loc14_).x == _loc16_.x)
                  {
                     _loc5_["\x17\n\b"](_loc3_[_loc4_].size[1] - _loc3_[_loc4_].size[0],_loc3_[_loc4_].col,_loc14_,_loc2_,true);
                  }
               }
               break;
            case 5:
            case 84:
               _loc5_["\x17\n\b"](_loc3_[_loc4_].size,_loc3_[_loc4_].col,_loc2_,_loc3_[_loc4_].cellNumRef,false,true);
               break;
            case 82:
               _loc5_["\x17\n\f"](_loc3_[_loc4_].size[0],_loc3_[_loc4_].size[1],_loc3_[_loc4_].col,_loc2_);
               break;
            case 7:
            case 79:
               _loc5_["\x17\n\x0e"](_loc3_[_loc4_].size,_loc3_[_loc4_].size - 1,_loc3_[_loc4_].col,_loc2_);
               break;
         }
         if(_loc6_ != undefined)
         {
            var _loc17_ = this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x15\x02"]();
            var _loc18_ = 0;
            while(_loc18_ < _loc6_.length)
            {
               var _loc19_ = _loc6_[_loc18_];
               if(_loc19_ >= 0)
               {
                  if(_loc19_ <= this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1c"]())
                  {
                     var _loc20_ = _loc17_[_loc19_];
                     if(!(_loc20_ == undefined || !_loc20_["\x15\x1c\x1a"]))
                     {
                        var _loc21_ = _loc5_.createCellMc(_loc19_);
                        _loc5_["\x17\t\x1b"](0,_loc3_[_loc4_].col,_loc19_,_loc21_);
                        this["\x19\x01\x07"](_loc21_,_loc19_);
                     }
                  }
               }
               _loc18_ = _loc18_ + 1;
            }
         }
         else
         {
            this["\x19\x01\x07"](_loc5_,_loc2_);
         }
         _loc4_ = _loc4_ + 1;
      }
   }
   function §\x19\x01\x07§(§\x18\x1c\x07§, §\x19\x04\x12§)
   {
      var _loc4_ = this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](_loc3_);
      _loc2_._x = _loc4_.x;
      _loc2_._y = _loc4_.y + ank.battlefield.Constants["\x18\x14\x0e"] * (_loc4_["\x18\x03\x18"] - 7);
   }
}
