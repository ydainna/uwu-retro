class ank.battlefield.utils.Compressor extends ank.utils.Compressor
{
   function Compressor()
   {
      super();
   }
   static function §\x1b\x13\r§(mapID, §\x19\x03\t§, §\x1b\x19\n§, §\x18\x05\x13§, §\x16\b\t§, sData, §\x19\x13\x10§, §\x16\x0b\x1c§)
   {
      if(_loc8_ == undefined)
      {
         return undefined;
      }
      var _loc10_ = new Array();
      var _loc11_ = new Array();
      var _loc12_ = _loc7_.length;
      var _loc14_ = 0;
      var _loc15_ = 0;
      while(_loc15_ < _loc12_)
      {
         var _loc13_ = ank.battlefieldutils.Compressor["\x1b\x13\f"](_loc7_.substring(_loc15_,_loc15_ + 10),_loc9_,0);
         _loc13_.num = _loc14_;
         _loc10_.push(_loc13_);
         _loc14_ = _loc14_ + 1;
         if(_loc13_.isTargetable)
         {
            _loc11_.push(_loc13_);
         }
         _loc15_ += 10;
      }
      _loc8_.id = Number(mapID);
      _loc8_.name = _loc3_;
      _loc8_.width = Number(_loc4_);
      _loc8_.height = Number(_loc5_);
      _loc8_.backgroundNum = _loc6_;
      _loc8_.data = _loc10_;
      _loc8_.validCells = _loc11_;
   }
   static function §\x1b\x13\f§(sData, §\x16\x0b\x1c§, §\x19\f\x05§)
   {
      if(_loc3_ == undefined)
      {
         _loc3_ = false;
      }
      if(_loc4_ == undefined)
      {
         _loc4_ = 0;
      }
      else
      {
         _loc4_ = Number(_loc4_);
      }
      var _loc5_ = new ank.battlefield.datacenter.["\x16\x17\x13"]();
      var _loc6_ = _loc2_.split("");
      var _loc7_ = _loc6_.length - 1;
      var _loc8_ = new Array();
      while(_loc7_ >= 0)
      {
         _loc8_[_loc7_] = ank.utils.Compressor._self["\x1c\x11\x04"][_loc6_[_loc7_]];
         _loc7_ = _loc7_ - 1;
      }
      _loc5_["\x15\x1c\x1a"] = !((_loc8_[0] & 32) >> 5) ? false : true;
      if(_loc5_["\x15\x1c\x1a"] || _loc3_)
      {
         _loc5_["\x19\f\x05"] = _loc4_;
         _loc5_["\x18\x15\x05"] = !(_loc8_[0] & 1) ? false : true;
         _loc5_["\x18\x13\x0b"] = (_loc8_[1] & 48) >> 4;
         _loc5_["\x18\x03\x18"] = _loc8_[1] & 15;
         _loc5_.movement = (_loc8_[2] & 56) >> 3;
         _loc5_["\x18\x13\n"] = ((_loc8_[0] & 24) << 6) + ((_loc8_[2] & 7) << 6) + _loc8_[3];
         _loc5_["\x18\x03\x1a"] = (_loc8_[4] & 60) >> 2;
         _loc5_["\x18\x13\t"] = !((_loc8_[4] & 2) >> 1) ? false : true;
         _loc5_["\x18\x13\x0e"] = ((_loc8_[0] & 4) << 11) + ((_loc8_[4] & 1) << 12) + (_loc8_[5] << 6) + _loc8_[6];
         _loc5_["\x18\x13\x0f"] = (_loc8_[7] & 48) >> 4;
         _loc5_["\x18\x13\r"] = !((_loc8_[7] & 8) >> 3) ? false : true;
         _loc5_["\x18\x13\x10"] = !((_loc8_[7] & 4) >> 2) ? false : true;
         _loc5_["\x18\x13\x11"] = !((_loc8_[7] & 2) >> 1) ? false : true;
         _loc5_["\x18\x13\x12"] = ((_loc8_[0] & 2) << 12) + ((_loc8_[7] & 1) << 12) + (_loc8_[8] << 6) + _loc8_[9];
         _loc5_.layerObjectExternal = "";
         _loc5_.layerObjectExternalInteractive = false;
      }
      return _loc5_;
   }
   static function §\x16\x1e\b§(§\x19\x13\x10§)
   {
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      var _loc3_ = new Array();
      var _loc4_ = _loc2_.data;
      var _loc5_ = _loc4_.length;
      var _loc6_ = 0;
      while(_loc6_ < _loc5_)
      {
         _loc3_.push(ank.battlefieldutils.Compressor["\x16\x1e\x03"](_loc4_[_loc6_]));
         _loc6_ = _loc6_ + 1;
      }
      return _loc3_.join("");
   }
   static function §\x16\x1e\x03§(§\x19\x12\x05§)
   {
      var _loc4_ = new Array(0,0,0,0,0,0,0,0,0,0);
      _loc4_[0] = (!_loc2_["\x15\x1c\x1a"] ? 0 : 1) << 5;
      _loc4_[0] |= !_loc2_["\x18\x15\x05"] ? 0 : 1;
      _loc4_[0] |= (_loc2_["\x18\x13\n"] & 1536) >> 6;
      _loc4_[0] |= (_loc2_["\x18\x13\x0e"] & 8192) >> 11;
      _loc4_[0] |= (_loc2_["\x18\x13\x12"] & 8192) >> 12;
      _loc4_[1] = (_loc2_["\x18\x13\x0b"] & 3) << 4;
      _loc4_[1] |= _loc2_["\x18\x03\x18"] & 15;
      _loc4_[2] = (_loc2_.movement & 7) << 3;
      _loc4_[2] |= _loc2_["\x18\x13\n"] >> 6 & 7;
      _loc4_[3] = _loc2_["\x18\x13\n"] & 63;
      _loc4_[4] = (_loc2_["\x18\x03\x1a"] & 15) << 2;
      _loc4_[4] |= (!_loc2_["\x18\x13\t"] ? 0 : 1) << 1;
      _loc4_[4] |= _loc2_["\x18\x13\x0e"] >> 12 & 1;
      _loc4_[5] = _loc2_["\x18\x13\x0e"] >> 6 & 63;
      _loc4_[6] = _loc2_["\x18\x13\x0e"] & 63;
      _loc4_[7] = (_loc2_["\x18\x13\x0f"] & 3) << 4;
      _loc4_[7] |= (!_loc2_["\x18\x13\r"] ? 0 : 1) << 3;
      _loc4_[7] |= (!_loc2_["\x18\x13\x10"] ? 0 : 1) << 2;
      _loc4_[7] |= (!_loc2_["\x18\x13\x11"] ? 0 : 1) << 1;
      _loc4_[7] |= _loc2_["\x18\x13\x12"] >> 12 & 1;
      _loc4_[8] = _loc2_["\x18\x13\x12"] >> 6 & 63;
      _loc4_[9] = _loc2_["\x18\x13\x12"] & 63;
      var _loc5_ = _loc4_.length - 1;
      while(_loc5_ >= 0)
      {
         _loc4_[_loc5_] = ank.utils.Compressor["\x17\r\x07"](_loc4_[_loc5_]);
         _loc5_ = _loc5_ - 1;
      }
      var _loc3_ = _loc4_.join("");
      return _loc3_;
   }
   static function §\x16\x1e\n§(§\x16\x01\x1b§, §\x16\x14\x1d§)
   {
      var _loc4_ = new String();
      var _loc5_ = ank.battlefieldutils.Compressor["\x18\x18\t"](_loc2_,_loc3_);
      var _loc11_ = _loc5_.length;
      var _loc6_ = 0;
      while(_loc6_ < _loc11_)
      {
         var _loc7_ = _loc5_[_loc6_];
         var _loc8_ = _loc7_.dir & 7;
         var _loc9_ = (_loc7_.num & 4032) >> 6;
         var _loc10_ = _loc7_.num & 63;
         _loc4_ += ank.utils.Compressor["\x17\r\x07"](_loc8_);
         _loc4_ += ank.utils.Compressor["\x17\r\x07"](_loc9_);
         _loc4_ += ank.utils.Compressor["\x17\r\x07"](_loc10_);
         _loc6_ = _loc6_ + 1;
      }
      return _loc4_;
   }
   static function §\x18\x18\t§(§\x16\x01\x1a§, §\x16\x14\x1d§)
   {
      if(_loc2_ == undefined)
      {
         ank.utils.Logger.err("Le chemin est vide");
         return new Array();
      }
      var _loc4_ = new Array();
      if(_loc3_)
      {
         _loc4_.push(_loc2_[0]);
      }
      var _loc6_ = _loc2_.length - 1;
      while(_loc6_ >= 0)
      {
         if(_loc2_[_loc6_].dir != _loc5_)
         {
            _loc4_.splice(0,0,_loc2_[_loc6_]);
            var _loc5_ = _loc2_[_loc6_].dir;
         }
         _loc6_ = _loc6_ - 1;
      }
      return _loc4_;
   }
   static function §\x17\x0e\x15§(§\x18\x18\x15§, §\x16\x1e\x04§)
   {
      var _loc4_ = new Array();
      var _loc5_ = _loc3_.split("");
      var _loc7_ = _loc3_.length;
      var _loc8_ = _loc2_["\x17\x14\x1c"]();
      var _loc6_ = 0;
      while(_loc6_ < _loc7_)
      {
         _loc5_[_loc6_] = ank.utils.Compressor.decode64(_loc5_[_loc6_]);
         _loc5_[_loc6_ + 1] = ank.utils.Compressor.decode64(_loc5_[_loc6_ + 1]);
         _loc5_[_loc6_ + 2] = ank.utils.Compressor.decode64(_loc5_[_loc6_ + 2]);
         var _loc9_ = (_loc5_[_loc6_ + 1] & 15) << 6 | _loc5_[_loc6_ + 2];
         if(_loc9_ < 0)
         {
            ank.utils.Logger.err("Case pas sur carte");
            return null;
         }
         if(_loc9_ > _loc8_)
         {
            ank.utils.Logger.err("Case pas sur carte");
            return null;
         }
         _loc4_.push({num:_loc9_,dir:_loc5_[_loc6_]});
         _loc6_ += 3;
      }
      return ank.battlefieldutils.Compressor["\x18\x18\b"](_loc2_,_loc4_);
   }
   static function §\x18\x18\b§(§\x18\x18\x15§, §\x16\x02\x18§)
   {
      var _loc4_ = new Array();
      var _loc6_ = 0;
      var _loc7_ = _loc2_["\x18\x02\r"]();
      var _loc8_ = [1,_loc7_,_loc7_ * 2 - 1,_loc7_ - 1,-1,0 - _loc7_,0 - _loc7_ * 2 + 1,0 - (_loc7_ - 1)];
      var _loc5_ = _loc3_[0].num;
      _loc4_[_loc6_] = _loc5_;
      var _loc9_ = 1;
      while(_loc9_ < _loc3_.length)
      {
         var _loc10_ = _loc3_[_loc9_].num;
         var _loc11_ = _loc3_[_loc9_].dir;
         var _loc12_ = 2 * _loc7_ + 1;
         while(_loc4_[_loc6_] != _loc10_)
         {
            _loc5_ += _loc8_[_loc11_];
            _loc4_[_loc6_ = _loc6_ + 1] = _loc5_;
            if((_loc12_ = _loc12_ - 1) < 0)
            {
               ank.utils.Logger.err("Chemin impossible");
               return null;
            }
         }
         _loc5_ = _loc10_;
         _loc9_ = _loc9_ + 1;
      }
      return _loc4_;
   }
}
