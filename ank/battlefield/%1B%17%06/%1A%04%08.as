class ank.battlefield.utils.§\x1a\x04\b§
{
   static var DIRECTION_EAST = 0;
   static var DIRECTION_SOUTH_EAST = 1;
   static var DIRECTION_SOUTH = 2;
   static var DIRECTION_SOUTH_WEST = 3;
   static var DIRECTION_WEST = 4;
   static var DIRECTION_NORTH_WEST = 5;
   static var DIRECTION_NORTH = 6;
   static var DIRECTION_NORTH_EAST = 7;
   function §\x1a\x04\b§()
   {
   }
   static function §\x1a\x04\x07§(§\x16\x04\x05§, §\x18\x18\x15§, §\x19\x04\x0f§, §\x19\x04\x10§, oParams)
   {
      var _loc7_ = _loc2_.datacenter..Game.isFight;
      if(_loc4_ == undefined)
      {
         return null;
      }
      if(_loc5_ == undefined)
      {
         return null;
      }
      if(_loc7_ == undefined)
      {
         _loc7_ = false;
      }
      var _loc8_ = _loc6_.bAllDirections != undefined ? _loc6_.bAllDirections : true;
      var _loc9_ = _loc6_.nMaxLength != undefined ? _loc6_.nMaxLength : 500;
      var _loc10_ = _loc6_.bIgnoreSprites != undefined ? _loc6_.bIgnoreSprites : false;
      var _loc11_ = _loc6_.bCellNumOnly != undefined ? _loc6_.bCellNumOnly : false;
      var _loc12_ = _loc6_.bWithBeginCellNum != undefined ? _loc6_.bWithBeginCellNum : false;
      var _loc13_ = _loc3_["\x18\x02\r"]();
      if(_loc8_)
      {
         var _loc14_ = 8;
         var _loc15_ = [1,_loc13_,_loc13_ * 2 - 1,_loc13_ - 1,-1,0 - _loc13_,0 - _loc13_ * 2 + 1,0 - (_loc13_ - 1)];
         var _loc16_ = [1.5,1,1.5,1,1.5,1,1.5,1];
      }
      else
      {
         _loc14_ = 4;
         _loc15_ = [_loc13_,_loc13_ - 1,0 - _loc13_,0 - (_loc13_ - 1)];
         _loc16_ = [1,1,1,1];
      }
      var _loc17_ = _loc3_["\x17\x15\x02"]();
      var _loc18_ = new Object();
      var _loc19_ = new Object();
      var _loc20_ = false;
      var _loc0_ = null;
      var _loc21_ = _loc18_["oCell" + _loc4_] = new Object();
      _loc21_.num = _loc4_;
      _loc21_.g = 0;
      _loc21_.v = 0;
      _loc21_.h = ank.battlefieldutils.["\x1a\x04\b"]["\x18\x03\r"](_loc3_,_loc4_,_loc5_);
      _loc21_.f = _loc21_.h;
      _loc21_.l = _loc17_[_loc4_]["\x18\x03\x18"];
      _loc21_.m = _loc17_[_loc4_].movement;
      _loc21_["\x1a\x03\x12"] = null;
      var _loc22_ = new Array();
      var _loc23_ = 0;
      while(_loc23_ < _loc17_.length - 1)
      {
         _loc22_[_loc23_] = _loc17_[_loc23_]["\x18\x10\t"];
         _loc23_ = _loc23_ + 1;
      }
      var _loc24_ = new Array();
      if(!_loc10_ && !_loc7_)
      {
         var _loc25_ = 0;
         while(_loc25_ < _loc17_.length - 1)
         {
            _loc24_[_loc25_] = _loc17_[_loc25_]["\x18\x10\x06"];
            _loc25_ = _loc25_ + 1;
         }
      }
      while(!_loc20_)
      {
         var _loc26_ = null;
         var _loc27_ = 500000;
         for(var k in _loc18_)
         {
            if(_loc18_[k].f < _loc27_)
            {
               _loc27_ = _loc18_[k].f;
               _loc26_ = k;
            }
         }
         var _loc28_ = _loc18_[_loc26_];
         delete _loc18_[_loc26_];
         if(_loc28_.num == _loc5_)
         {
            var _loc29_ = new Array();
            while(_loc28_.num != _loc4_)
            {
               if(_loc28_.m == 0)
               {
                  _loc29_ = new Array();
               }
               else if(_loc11_)
               {
                  _loc29_.splice(0,0,_loc28_.num);
               }
               else
               {
                  _loc29_.splice(0,0,{num:_loc28_.num,dir:ank.battlefieldutils.["\x1a\x04\b"]["\x17\x16\x15"](_loc3_,_loc28_["\x1a\x03\x12"].num,_loc28_.num)});
               }
               _loc28_ = _loc28_["\x1a\x03\x12"];
            }
            if(_loc12_)
            {
               if(_loc11_)
               {
                  _loc29_.splice(0,0,_loc4_);
               }
               else
               {
                  _loc29_.splice(0,0,{num:_loc4_,dir:ank.battlefieldutils.["\x1a\x04\b"]["\x17\x16\x15"](_loc3_,_loc28_["\x1a\x03\x12"].num,_loc4_)});
               }
            }
            return _loc29_;
         }
         var _loc30_ = false;
         var _loc31_ = 0;
         for(; _loc31_ < _loc14_; _loc31_ = _loc31_ + 1)
         {
            var _loc32_ = _loc28_.num + _loc15_[_loc31_];
            if(Math.abs(_loc17_[_loc32_].x - _loc17_[_loc28_.num].x) <= 53)
            {
               var _loc33_ = _loc17_[_loc32_];
               _loc30_ = !(_loc32_ == _loc5_ && _loc33_.movement == 1) ? false : true;
               var _loc34_ = _loc33_["\x18\x03\x18"];
               var _loc35_ = _loc28_.l == undefined || Math.abs(_loc34_ - _loc28_.l) < 2;
               if(!_loc35_ || (!_loc33_["\x15\x1c\x1a"] || _loc33_.movement == 1 && !_loc30_))
               {
                  continue;
               }
               var _loc36_ = true;
               if(!_loc10_)
               {
                  var _loc37_ = _loc33_["\x1b\x07\r"];
                  if(_loc7_)
                  {
                     _loc36_ = _loc37_ == undefined ? true : false;
                  }
                  else
                  {
                     var _loc38_ = _loc2_.gfx.spriteHandler["\x18\x01\b"](_loc37_);
                     _loc36_ = !(_loc38_ != undefined && (_loc38_ instanceof dofus.datacenter.["\x16\x19\x02"] && _loc32_ != _loc5_)) ? true : false;
                  }
                  if(_loc36_ && (_loc32_ != _loc5_ && _loc24_[_loc32_] == true))
                  {
                     _loc36_ = false;
                  }
               }
               if(_loc36_ && (_loc32_ != _loc5_ && _loc22_[_loc32_] == true))
               {
                  _loc36_ = false;
               }
               if(!_loc36_)
               {
                  continue;
               }
               var _loc39_ = "oCell" + _loc32_;
               var _loc40_ = _loc28_.v + _loc16_[_loc31_] + (!(_loc33_.movement == 0 || _loc33_.movement == 1) ? 0 : 1000 + (_loc31_ % 2 != 0 ? 0 : 3)) + (!(_loc33_.movement == 1 && _loc30_) ? (_loc31_ == _loc28_.d ? 0 : 0.5) + (5 - _loc33_.movement) / 3 : -1000);
               var _loc41_ = _loc28_.g + _loc16_[_loc31_];
               var _loc42_ = null;
               if(_loc18_[_loc39_])
               {
                  _loc42_ = _loc18_[_loc39_].v;
               }
               else if(_loc19_[_loc39_])
               {
                  _loc42_ = _loc19_[_loc39_].v;
               }
               if((_loc42_ == null || _loc42_ > _loc40_) && _loc41_ <= _loc9_)
               {
                  if(_loc19_[_loc39_])
                  {
                     delete _loc19_[_loc39_];
                  }
                  var _loc43_ = new Object();
                  _loc43_.num = _loc32_;
                  _loc43_.g = _loc41_;
                  _loc43_.v = _loc40_;
                  _loc43_.h = ank.battlefieldutils.["\x1a\x04\b"]["\x18\x03\r"](_loc3_,_loc32_,_loc5_);
                  _loc43_.f = _loc43_.v + _loc43_.h;
                  _loc43_.d = _loc31_;
                  _loc43_.l = _loc34_;
                  _loc43_.m = _loc33_.movement;
                  _loc43_["\x1a\x03\x12"] = _loc28_;
                  _loc18_[_loc39_] = _loc43_;
               }
            }
         }
         _loc19_["oCell" + _loc28_.num] = {v:_loc28_.v};
         _loc20_ = true;
         for(var k in _loc18_)
         {
            _loc20_ = false;
            while(§§pop() != null)
            {
            }
            break;
         }
      }
      return null;
   }
   static function §\x18\x03\r§(§\x18\x18\x15§, §\x19\x04\r§, §\x19\x04\x0e§)
   {
      var _loc5_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc2_,_loc3_);
      var _loc6_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc2_,_loc4_);
      var _loc7_ = Math.abs(_loc5_.x - _loc6_.x);
      var _loc8_ = Math.abs(_loc5_.y - _loc6_.y);
      return Math.sqrt(Math.pow(_loc7_,2) + Math.pow(_loc8_,2));
   }
   static function §\x18\x03\f§(§\x18\x18\x15§, §\x19\x04\r§, §\x19\x04\x0e§)
   {
      var _loc5_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc2_,_loc3_);
      var _loc6_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc2_,_loc4_);
      var _loc7_ = Math.abs(_loc5_.x - _loc6_.x);
      var _loc8_ = Math.abs(_loc5_.y - _loc6_.y);
      return _loc7_ + _loc8_;
   }
   static function §\x17\x14\x1a§(§\x18\x18\x15§, §\x19\n\x1b§)
   {
      var _loc4_ = _loc2_["\x18\x02\r"]();
      var _loc5_ = Math.floor(_loc3_ / (_loc4_ * 2 - 1));
      var _loc6_ = _loc3_ - _loc5_ * (_loc4_ * 2 - 1);
      var _loc7_ = _loc6_ % _loc4_;
      var _loc8_ = new Object();
      _loc8_.y = _loc5_ - _loc7_;
      _loc8_.x = (_loc3_ - (_loc4_ - 1) * _loc8_.y) / _loc4_;
      return _loc8_;
   }
   static function getTranslation1(§\x19\x06\x01§)
   {
      switch(_loc2_)
      {
         case ank.battlefieldutils.["\x1a\x04\b"].DIRECTION_SOUTH_EAST:
            return 1;
         case ank.battlefieldutils.["\x1a\x04\b"].DIRECTION_NORTH_WEST:
            return -1;
         default:
            return 0;
      }
   }
   static function getTranslation2(§\x19\x06\x01§)
   {
      switch(_loc2_)
      {
         case ank.battlefieldutils.["\x1a\x04\b"].DIRECTION_SOUTH_WEST:
            return 1;
         case ank.battlefieldutils.["\x1a\x04\b"].DIRECTION_NORTH_EAST:
            return -1;
         default:
            return 0;
      }
   }
   static function §\x17\x16\x15§(§\x18\x18\x15§, §\x19\x04\r§, §\x19\x04\x0e§)
   {
      var _loc5_ = _loc2_["\x18\x02\r"]();
      var _loc6_ = [1,_loc5_,_loc5_ * 2 - 1,_loc5_ - 1,-1,0 - _loc5_,0 - _loc5_ * 2 + 1,0 - (_loc5_ - 1)];
      var _loc7_ = _loc4_ - _loc3_;
      var _loc8_ = 7;
      while(_loc8_ >= 0)
      {
         if(_loc6_[_loc8_] == _loc7_)
         {
            return _loc8_;
         }
         _loc8_ = _loc8_ - 1;
      }
      var _loc9_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc2_,_loc3_);
      var _loc10_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc2_,_loc4_);
      var _loc11_ = _loc10_.x - _loc9_.x;
      var _loc12_ = _loc10_.y - _loc9_.y;
      if(_loc11_ == 0)
      {
         if(_loc12_ > 0)
         {
            return 3;
         }
         return 7;
      }
      if(_loc11_ > 0)
      {
         return 1;
      }
      return 5;
   }
   static function getDirectionCasterToImpact(casterCoords, impactCoords)
   {
      if(casterCoords.x > impactCoords.x)
      {
         return ank.battlefieldutils.["\x1a\x04\b"].DIRECTION_NORTH_WEST;
      }
      if(casterCoords.x < impactCoords.x)
      {
         return ank.battlefieldutils.["\x1a\x04\b"].DIRECTION_SOUTH_EAST;
      }
      if(casterCoords.y < impactCoords.y)
      {
         return ank.battlefieldutils.["\x1a\x04\b"].DIRECTION_SOUTH_WEST;
      }
      return ank.battlefieldutils.["\x1a\x04\b"].DIRECTION_NORTH_EAST;
   }
   static function §\x17\x16\x16§(§\x1b\x19\x15§, §\x1b\x1a\x15§, §\x1b\x19\x16§, §\x1b\x1a\x16§, §\x16\b\x16§)
   {
      var _loc7_ = Math.atan2(_loc5_ - _loc3_,_loc4_ - _loc2_);
      if(_loc6_)
      {
         if(_loc7_ >= (0 - Math.PI) / 8 && _loc7_ < Math.PI / 8)
         {
            return 0;
         }
         if(_loc7_ >= Math.PI / 8 && _loc7_ < Math.PI / 3)
         {
            return 1;
         }
         if(_loc7_ >= Math.PI / 3 && _loc7_ < 2 * Math.PI / 3)
         {
            return 2;
         }
         if(_loc7_ >= 2 * Math.PI / 3 && _loc7_ < 7 * Math.PI / 8)
         {
            return 3;
         }
         if(_loc7_ >= 7 * Math.PI / 8 || _loc7_ < -7 * Math.PI / 8)
         {
            return 4;
         }
         if(_loc7_ >= -7 * Math.PI / 8 && _loc7_ < -2 * Math.PI / 3)
         {
            return 5;
         }
         if(_loc7_ >= -2 * Math.PI / 3 && _loc7_ < (0 - Math.PI) / 3)
         {
            return 6;
         }
         if(_loc7_ >= (0 - Math.PI) / 3 && _loc7_ < (0 - Math.PI) / 8)
         {
            return 7;
         }
      }
      else
      {
         if(_loc7_ >= 0 && _loc7_ < Math.PI / 2)
         {
            return 1;
         }
         if(_loc7_ >= Math.PI / 2 && _loc7_ <= Math.PI)
         {
            return 3;
         }
         if(_loc7_ >= 0 - Math.PI && _loc7_ < (0 - Math.PI) / 2)
         {
            return 5;
         }
         if(_loc7_ >= (0 - Math.PI) / 2 && _loc7_ < 0)
         {
            return 7;
         }
      }
      return 1;
   }
   static function §\x17\x14\r§(§\x18\x18\x15§, §\x19\x04\x12§, §\x19\x06\x03§, §\x19\b\x14§)
   {
      var _loc6_ = _loc2_["\x18\x02\r"]();
      var _loc7_ = [1,_loc6_,_loc6_ * 2 - 1,_loc6_ - 1,-1,0 - _loc6_,0 - _loc6_ * 2 + 1,0 - (_loc6_ - 1)];
      var _loc8_ = 0;
      switch(_loc5_ % 8)
      {
         case 0:
            _loc8_ = 2;
            break;
         case 1:
            _loc8_ = 6;
            break;
         case 2:
            _loc8_ = 4;
            break;
         case 3:
            _loc8_ = 0;
            break;
         case 4:
            _loc8_ = 3;
            break;
         case 5:
            _loc8_ = 5;
            break;
         case 6:
            _loc8_ = 1;
            break;
         case 7:
            _loc8_ = 7;
      }
      _loc8_ = (_loc8_ + _loc4_) % 8;
      var _loc9_ = _loc3_ + _loc7_[_loc8_];
      var _loc10_ = _loc2_["\x17\x15\x02"]();
      var _loc11_ = _loc10_[_loc9_];
      if(_loc11_["\x15\x1c\x1a"] && (_loc10_[_loc9_] != undefined && Math.abs(_loc10_[_loc9_].x - _loc10_[_loc3_].x) <= 53))
      {
         return _loc9_;
      }
      return _loc3_;
   }
   static function §\x17\x01\x07§(§\x19\x06\x02§)
   {
      return _loc2_ | 1;
   }
   static function §\x17\x1e\x16§(§\x1b\x03\t§, §\x18\x14\b§, §\x1b\x03\n§, §\x18\x14\t§, §\x17\x07\x13§)
   {
      switch(_loc6_)
      {
         case 0:
            if(((_loc2_ - 1 & 2) >> 1) + _loc3_ != (_loc4_ - 1 & 1) + _loc5_)
            {
               return false;
            }
            break;
         case 1:
            if(((_loc2_ - 1 & 4) >> 2) + _loc3_ != ((_loc4_ - 1 & 2) >> 1) + _loc5_)
            {
               return false;
            }
            if(((_loc2_ - 1 & 8) >> 3) + _loc3_ != (_loc4_ - 1 & 1) + _loc5_)
            {
               return false;
            }
            break;
         case 2:
            if(((_loc2_ - 1 & 8) >> 3) + _loc3_ != ((_loc4_ - 1 & 2) >> 1) + _loc5_)
            {
               return false;
            }
            break;
         case 3:
            if(((_loc2_ - 1 & 8) >> 3) + _loc3_ != ((_loc4_ - 1 & 4) >> 2) + _loc5_)
            {
               return false;
            }
            if((_loc2_ - 1 & 1) + _loc3_ != ((_loc4_ - 1 & 2) >> 1) + _loc5_)
            {
               return false;
            }
            break;
         case 4:
            if((_loc2_ - 1 & 1) + _loc3_ != ((_loc4_ - 1 & 4) >> 2) + _loc5_)
            {
               return false;
            }
            break;
         case 5:
            if((_loc2_ - 1 & 1) + _loc3_ != ((_loc4_ - 1 & 8) >> 3) + _loc5_)
            {
               return false;
            }
            if(((_loc2_ - 1 & 2) >> 1) + _loc3_ != ((_loc4_ - 1 & 4) >> 2) + _loc5_)
            {
               return false;
            }
            break;
         case 6:
            if(((_loc2_ - 1 & 2) >> 1) + _loc3_ != ((_loc4_ - 1 & 8) >> 3) + _loc5_)
            {
               return false;
            }
            break;
         case 7:
            if(((_loc2_ - 1 & 2) >> 1) + _loc3_ != (_loc4_ - 1 & 1) + _loc5_)
            {
               return false;
            }
            if(((_loc2_ - 1 & 4) >> 2) + _loc3_ != ((_loc4_ - 1 & 8) >> 3) + _loc5_)
            {
               return false;
            }
            break;
      }
      return true;
   }
   static function §\x16\x1a\x1d§(§\x18\x18\x15§, §\x16\x17\x14§, §\x16\x17\x15§)
   {
      var _loc5_ = _loc2_["\x17\x14\x1d"](_loc4_);
      if(!_loc5_["\x18\x15\x05"] || !_loc5_["\x15\x1c\x1a"])
      {
         return false;
      }
      var _loc6_ = ank.battlefieldutils.["\x1a\x04\b"].getCellsIdBetween(_loc2_,_loc3_,_loc4_);
      var _loc7_ = 0;
      while(_loc7_ < _loc6_.length - 1)
      {
         var _loc8_ = _loc6_[_loc7_];
         if(!ank.battlefieldutils.["\x1a\x04\b"].isCellFreeForLOS(_loc2_,_loc8_,_loc3_,_loc4_))
         {
            return false;
         }
         _loc7_ = _loc7_ + 1;
      }
      return true;
   }
   static function getCellsIdBetween(§\x18\x18\x15§, from, to)
   {
      if(from == to)
      {
         return [];
      }
      var _loc5_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc2_,from);
      var _loc6_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc2_,to);
      var _loc7_ = _loc5_.x;
      var _loc8_ = _loc5_.y;
      var _loc9_ = _loc6_.x;
      var _loc10_ = _loc6_.y;
      var _loc11_ = _loc9_ - _loc7_;
      var _loc12_ = _loc10_ - _loc8_;
      var _loc13_ = Math.sqrt(_loc11_ * _loc11_ + _loc12_ * _loc12_);
      var _loc14_ = _loc11_ / _loc13_;
      var _loc15_ = _loc12_ / _loc13_;
      var _loc16_ = Math.abs(1 / _loc14_);
      var _loc17_ = Math.abs(1 / _loc15_);
      var _loc18_ = _loc14_ >= 0 ? 1 : -1;
      var _loc19_ = _loc15_ >= 0 ? 1 : -1;
      var _loc20_ = 0.5 * _loc16_;
      var _loc21_ = 0.5 * _loc17_;
      var _loc22_ = [];
      while(_loc7_ != _loc9_ || _loc8_ != _loc10_)
      {
         if(Math.abs(_loc20_ - _loc21_) < 1e-10)
         {
            _loc20_ += _loc16_;
            _loc21_ += _loc17_;
            _loc7_ += _loc18_;
            _loc8_ += _loc19_;
         }
         else if(_loc20_ < _loc21_)
         {
            _loc20_ += _loc16_;
            _loc7_ += _loc18_;
         }
         else
         {
            _loc21_ += _loc17_;
            _loc8_ += _loc19_;
         }
         var _loc23_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1b"](_loc2_,_loc7_,_loc8_);
         _loc22_.push(_loc23_);
      }
      return _loc22_;
   }
   static function isCellFreeForLOS(§\x18\x18\x15§, §\x16\x17\x18§)
   {
      var _loc4_ = _loc2_["\x17\x14\x1d"](_loc3_);
      if(!_loc4_["\x18\x15\x05"] || !_loc4_["\x15\x1c\x1a"])
      {
         return false;
      }
      var _loc5_ = _loc4_["\x1b\x07\r"];
      var _loc6_ = _global.api;
      var _loc7_ = _loc5_ == undefined ? undefined : _loc6_.gfx.spriteHandler["\x18\x01\b"](_loc5_);
      var _loc8_ = _loc7_ != undefined && !_loc7_.isInvisibleInFight;
      if(_loc8_)
      {
         return false;
      }
      return true;
   }
   static function §\x17\x14\x1b§(§\x18\x18\x15§, §\x1b\x19\x14§, §\x1b\x1a\x14§)
   {
      var _loc5_ = _loc2_["\x18\x02\r"]();
      return _loc3_ * _loc5_ + _loc4_ * (_loc5_ - 1);
   }
   static function §\x16\x19\x16§(§\x18\x18\x15§, §\x16\x17\x14§, §\x16\x17\x15§)
   {
      var _loc5_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc2_,_loc3_);
      var _loc6_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc2_,_loc4_);
      if(_loc5_.x == _loc6_.x)
      {
         return true;
      }
      if(_loc5_.y == _loc6_.y)
      {
         return true;
      }
      return false;
   }
   static function §\x16\x1a\x18§(§\x18\x18\x15§, §\x19\x04\r§, §\x19\x04\x0e§, §\x16\x0e\x0b§, §\x19\r\x05§, §\x19\r\x04§, §\x19\r\x06§)
   {
      _loc6_ = Number(_loc6_);
      _loc7_ = Number(_loc7_);
      _loc8_ = Number(_loc8_);
      if(_loc7_ != 0)
      {
         _loc7_ += _loc8_;
         _loc7_ = Math.max(_loc6_,_loc7_);
      }
      if(_loc5_)
      {
         if(!ank.battlefieldutils.["\x1a\x04\b"]["\x16\x19\x16"](_loc2_,_loc3_,_loc4_))
         {
            return false;
         }
      }
      if(ank.battlefieldutils.["\x1a\x04\b"]["\x18\x03\f"](_loc2_,_loc3_,_loc4_) > _loc7_ || ank.battlefieldutils.["\x1a\x04\b"]["\x18\x03\f"](_loc2_,_loc3_,_loc4_) < _loc6_)
      {
         return false;
      }
      return true;
   }
}
