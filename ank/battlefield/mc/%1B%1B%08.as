class ank.battlefield.mc.§\x1b\x1b\b§ extends MovieClip
{
   static var ALPHA = 30;
   function §\x1b\x1b\b§(§\x18\x18\r§)
   {
      super();
      this.initialize(_loc3_);
   }
   function initialize(§\x18\x18\r§)
   {
      this.api = _global.api;
      this["\x1e\x04\x0e"] = _loc2_;
      this.clear();
   }
   function clear()
   {
      this.createEmptyMovieClip("\x1d\x12\x01",10);
   }
   function remove()
   {
      this.removeMovieClip();
   }
   function createCellMc(§\x19\x04\x11§)
   {
      return this["\x1d\x12\x01"].createEmptyMovieClip("cell" + _loc2_,this["\x1d\x12\x01"].getNextHighestDepth());
   }
   static function getCellsSquare(§\x18\x18\x15§, §\x19\r\x01§, nImpactCellNum)
   {
      var _loc5_ = new Array();
      var _loc6_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc2_,nImpactCellNum);
      var _loc7_ = _loc6_.x;
      var _loc8_ = _loc6_.y;
      var _loc9_ = _loc7_ - _loc3_;
      while(_loc9_ <= _loc7_ + _loc3_)
      {
         var _loc10_ = _loc8_ - _loc3_;
         while(_loc10_ <= _loc8_ + _loc3_)
         {
            var _loc11_ = _loc2_["\x17\x14\x1b"](_loc9_,_loc10_);
            _loc5_.push(_loc11_);
            _loc10_ = _loc10_ + 1;
         }
         _loc9_ = _loc9_ + 1;
      }
      return _loc5_;
   }
   static function getCellsLineWide(§\x18\x18\x15§, §\x19\r\x01§, nCasterCellNum, nImpactCellNum)
   {
      var _loc6_ = new Array();
      var _loc7_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc2_,nImpactCellNum);
      var _loc8_ = _loc7_.x;
      var _loc9_ = _loc7_.y;
      var _loc10_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x16\x15"](_loc2_,nCasterCellNum,nImpactCellNum);
      var _loc11_ = 0;
      while(_loc11_ < _loc3_)
      {
         var _loc12_ = _loc8_ + _loc11_ * ank.battlefieldutils.["\x1a\x04\b"].getTranslation1(_loc10_);
         var _loc13_ = _loc9_ + _loc11_ * ank.battlefieldutils.["\x1a\x04\b"].getTranslation2(_loc10_);
         var _loc14_ = -1;
         while(_loc14_ <= 1)
         {
            var _loc15_ = _loc2_["\x17\x14\x1b"](_loc12_ + _loc14_ * ank.battlefieldutils.["\x1a\x04\b"].getTranslation2(_loc10_),_loc13_ + _loc14_ * ank.battlefieldutils.["\x1a\x04\b"].getTranslation1(_loc10_));
            _loc6_.push(_loc15_);
            _loc14_ = _loc14_ + 1;
         }
         _loc11_ = _loc11_ + 1;
      }
      return _loc6_;
   }
   static function getCellsSpike(§\x18\x18\x15§, §\x19\r\x01§, nCasterCellNum, nImpactCellNum)
   {
      var _loc6_ = new Array();
      var _loc7_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc2_,nImpactCellNum);
      var _loc8_ = _loc7_.x;
      var _loc9_ = _loc7_.y;
      var _loc10_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x16\x15"](_loc2_,nCasterCellNum,nImpactCellNum);
      var _loc11_ = 0;
      while(_loc11_ <= _loc3_)
      {
         var _loc12_ = _loc8_ + _loc11_ * ank.battlefieldutils.["\x1a\x04\b"].getTranslation1(_loc10_);
         var _loc13_ = _loc9_ + _loc11_ * ank.battlefieldutils.["\x1a\x04\b"].getTranslation2(_loc10_);
         var _loc14_ = 0 - _loc3_ + _loc11_;
         while(_loc14_ <= _loc3_ - _loc11_)
         {
            var _loc15_ = _loc2_["\x17\x14\x1b"](_loc12_ + _loc14_ * ank.battlefieldutils.["\x1a\x04\b"].getTranslation2(_loc10_),_loc13_ + _loc14_ * ank.battlefieldutils.["\x1a\x04\b"].getTranslation1(_loc10_));
            _loc6_.push(_loc15_);
            _loc14_ = _loc14_ + 1;
         }
         _loc11_ = _loc11_ + 1;
      }
      return _loc6_;
   }
   function §\x17\t\x1b§(§\x19\r\x01§, §\x19\x05\x06§, §\x19\x04\x14§, §\x18\x1b\f§)
   {
      var _loc6_ = _loc5_ != undefined ? _loc5_ : this["\x1d\x12\x01"];
      _loc6_.beginFill(_loc3_,ank.battlefield.mc["\x1b\x1b\b"].ALPHA);
      this["\x17\t\x1c"](_loc2_,_loc3_,_loc4_,_loc5_);
      _loc6_.endFill();
   }
   function §\x17\n\x0e§(§\x19\r\x02§, §\x19\r\x03§, §\x19\x05\x06§, §\x19\x04\x14§)
   {
      var _loc6_ = this["\x1d\x12\x01"];
      _loc6_.beginFill(_loc4_,ank.battlefield.mc["\x1b\x1b\b"].ALPHA);
      this["\x17\t\x1c"](_loc3_,_loc4_,_loc5_);
      this["\x17\t\x1c"](_loc2_,_loc4_,_loc5_);
      _loc6_.endFill();
   }
   function §\x17\n\f§(§\x19\x10\x18§, §\x19\b\x03§, §\x19\x05\x06§, §\x19\x04\x14§)
   {
      var _loc6_ = this["\x1d\x12\x01"];
      _loc6_.beginFill(_loc4_,ank.battlefield.mc["\x1b\x1b\b"].ALPHA);
      this["\x17\n\r"](_loc2_,_loc3_,_loc4_,_loc5_);
      _loc6_.endFill();
   }
   function §\x17\n\x02§(§\x19\r\x01§, §\x19\x05\x06§, §\x19\x04\x14§)
   {
      var _loc5_ = ank.battlefield.Constants["\x16\x17\x1b"];
      var _loc6_ = this["\x1e\x04\x0e"]["\x18\x02\r"]();
      var _loc7_ = _loc4_;
      var _loc10_ = this["\x1d\x12\x01"];
      _loc10_.beginFill(_loc3_,ank.battlefield.mc["\x1b\x1b\b"].ALPHA);
      _loc10_.lineStyle(1,_loc3_,100);
      var _loc9_ = this["\x17\x18\n"](_loc7_);
      _loc10_.moveTo(_loc5_[_loc9_.gf][0][0],_loc5_[_loc9_.gf][0][1] - _loc9_.gl * 20);
      var _loc8_ = 1;
      while(_loc8_ <= _loc2_)
      {
         _loc7_ -= _loc6_;
         _loc9_ = this["\x17\x18\n"](_loc7_);
         _loc10_.lineTo(_loc5_[_loc9_.gf][0][0] - _loc8_ * ank.battlefield.Constants["\x16\x17\x1d"],_loc5_[_loc9_.gf][0][1] - _loc9_.gl * 20 - _loc8_ * ank.battlefield.Constants["\x16\x17\x1c"]);
         _loc8_ = _loc8_ + 1;
      }
      _loc8_ = _loc2_;
      while(_loc8_ >= 0)
      {
         if(_loc8_ != _loc2_)
         {
            _loc7_ += _loc6_;
         }
         _loc9_ = this["\x17\x18\n"](_loc7_);
         _loc10_.lineTo(_loc5_[_loc9_.gf][1][0] - _loc8_ * ank.battlefield.Constants["\x16\x17\x1d"],_loc5_[_loc9_.gf][1][1] - _loc9_.gl * 20 - _loc8_ * ank.battlefield.Constants["\x16\x17\x1c"]);
         _loc8_ = _loc8_ - 1;
      }
      _loc8_ = 1;
      while(_loc8_ <= _loc2_)
      {
         _loc7_ -= _loc6_ - 1;
         _loc9_ = this["\x17\x18\n"](_loc7_);
         _loc10_.lineTo(_loc5_[_loc9_.gf][1][0] + _loc8_ * ank.battlefield.Constants["\x16\x17\x1d"],_loc5_[_loc9_.gf][1][1] - _loc9_.gl * 20 - _loc8_ * ank.battlefield.Constants["\x16\x17\x1c"]);
         _loc8_ = _loc8_ + 1;
      }
      _loc8_ = _loc2_;
      while(_loc8_ >= 0)
      {
         if(_loc8_ != _loc2_)
         {
            _loc7_ += _loc6_ - 1;
         }
         _loc9_ = this["\x17\x18\n"](_loc7_);
         _loc10_.lineTo(_loc5_[_loc9_.gf][2][0] + _loc8_ * ank.battlefield.Constants["\x16\x17\x1d"],_loc5_[_loc9_.gf][2][1] - _loc9_.gl * 20 - _loc8_ * ank.battlefield.Constants["\x16\x17\x1c"]);
         _loc8_ = _loc8_ - 1;
      }
      _loc8_ = 1;
      while(_loc8_ <= _loc2_)
      {
         _loc7_ += _loc6_;
         _loc9_ = this["\x17\x18\n"](_loc7_);
         _loc10_.lineTo(_loc5_[_loc9_.gf][2][0] + _loc8_ * ank.battlefield.Constants["\x16\x17\x1d"],_loc5_[_loc9_.gf][2][1] - _loc9_.gl * 20 + _loc8_ * ank.battlefield.Constants["\x16\x17\x1c"]);
         _loc8_ = _loc8_ + 1;
      }
      _loc8_ = _loc2_;
      while(_loc8_ >= 0)
      {
         if(_loc8_ != _loc2_)
         {
            _loc7_ -= _loc6_;
         }
         _loc9_ = this["\x17\x18\n"](_loc7_);
         _loc10_.lineTo(_loc5_[_loc9_.gf][3][0] + _loc8_ * ank.battlefield.Constants["\x16\x17\x1d"],_loc5_[_loc9_.gf][3][1] - _loc9_.gl * 20 + _loc8_ * ank.battlefield.Constants["\x16\x17\x1c"]);
         _loc8_ = _loc8_ - 1;
      }
      _loc8_ = 1;
      while(_loc8_ <= _loc2_)
      {
         _loc7_ += _loc6_ - 1;
         _loc9_ = this["\x17\x18\n"](_loc7_);
         _loc10_.lineTo(_loc5_[_loc9_.gf][3][0] - _loc8_ * ank.battlefield.Constants["\x16\x17\x1d"],_loc5_[_loc9_.gf][3][1] - _loc9_.gl * 20 + _loc8_ * ank.battlefield.Constants["\x16\x17\x1c"]);
         _loc8_ = _loc8_ + 1;
      }
      _loc8_ = _loc2_;
      while(_loc8_ > 0)
      {
         if(_loc8_ != _loc2_)
         {
            _loc7_ -= _loc6_ - 1;
         }
         _loc9_ = this["\x17\x18\n"](_loc7_);
         _loc10_.lineTo(_loc5_[_loc9_.gf][0][0] - _loc8_ * ank.battlefield.Constants["\x16\x17\x1d"],_loc5_[_loc9_.gf][0][1] - _loc9_.gl * 20 + _loc8_ * ank.battlefield.Constants["\x16\x17\x1c"]);
         _loc8_ = _loc8_ - 1;
      }
      _loc10_.endFill();
   }
   function §\x17\n\b§(§\x18\x14\x06§, §\x19\x05\x06§, §\x17\x0f\x01§, §\x1a\n\x14§, §\x16\t\x1d§, §\x16\x10\r§)
   {
      var _loc8_ = 0;
      var _loc9_ = 0;
      if(_loc6_ == true)
      {
         var _loc10_ = this["\x1e\x04\x0e"]["\x17\x14\x1d"](_loc4_);
         var _loc11_ = this["\x1e\x04\x0e"]["\x17\x14\x1d"](_loc5_);
         _loc8_ = _loc10_.x - _loc11_.x;
         _loc9_ = _loc10_["\x1a\x0e\x17"] - _loc11_["\x1a\x0e\x17"];
      }
      var _loc12_ = ank.battlefield.Constants["\x16\x17\x1b"];
      var _loc13_ = this["\x1e\x04\x0e"]["\x18\x02\r"]();
      var _loc14_ = _loc4_;
      var _loc19_ = [0,0,0,0,0,0,0,0];
      if(_loc5_ != _loc4_)
      {
         var _loc20_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x16\x15"](this["\x1e\x04\x0e"],_loc5_,_loc4_);
         if(_loc7_ == true)
         {
            _loc19_[(_loc20_ + 6) % 8] = _loc2_;
            _loc19_[(_loc20_ + 10) % 8] = _loc2_;
         }
         else
         {
            _loc19_[_loc20_] = _loc2_;
         }
      }
      var _loc18_ = this["\x1d\x12\x01"];
      _loc18_.beginFill(_loc3_,ank.battlefield.mc["\x1b\x1b\b"].ALPHA);
      _loc18_.lineStyle(1,_loc3_,100);
      var _loc17_ = this["\x17\x18\n"](_loc14_);
      _loc18_.moveTo(_loc12_[_loc17_.gf][0][0] + _loc8_,_loc12_[_loc17_.gf][0][1] - _loc17_.gl * 20 + _loc9_);
      var _loc15_ = 1;
      while(_loc15_ <= _loc19_[5])
      {
         _loc14_ -= _loc13_;
         _loc17_ = this["\x17\x18\n"](_loc14_);
         _loc18_.lineTo(_loc12_[_loc17_.gf][0][0] - _loc15_ * ank.battlefield.Constants["\x16\x17\x1d"] + _loc8_,_loc12_[_loc17_.gf][0][1] - _loc17_.gl * 20 - _loc15_ * ank.battlefield.Constants["\x16\x17\x1c"] + _loc9_);
         _loc15_ = _loc15_ + 1;
      }
      _loc15_ = _loc19_[5];
      while(_loc15_ >= 0)
      {
         if(_loc15_ != _loc19_[5])
         {
            _loc14_ += _loc13_;
         }
         _loc17_ = this["\x17\x18\n"](_loc14_);
         _loc18_.lineTo(_loc12_[_loc17_.gf][1][0] - _loc15_ * ank.battlefield.Constants["\x16\x17\x1d"] + _loc8_,_loc12_[_loc17_.gf][1][1] - _loc17_.gl * 20 - _loc15_ * ank.battlefield.Constants["\x16\x17\x1c"] + _loc9_);
         _loc15_ = _loc15_ - 1;
      }
      _loc15_ = 1;
      while(_loc15_ <= _loc19_[7])
      {
         _loc14_ -= _loc13_ - 1;
         _loc17_ = this["\x17\x18\n"](_loc14_);
         _loc18_.lineTo(_loc12_[_loc17_.gf][1][0] + _loc15_ * ank.battlefield.Constants["\x16\x17\x1d"] + _loc8_,_loc12_[_loc17_.gf][1][1] - _loc17_.gl * 20 - _loc15_ * ank.battlefield.Constants["\x16\x17\x1c"] + _loc9_);
         _loc15_ = _loc15_ + 1;
      }
      _loc15_ = _loc19_[7];
      while(_loc15_ >= 0)
      {
         if(_loc15_ != _loc19_[7])
         {
            _loc14_ += _loc13_ - 1;
         }
         _loc17_ = this["\x17\x18\n"](_loc14_);
         _loc18_.lineTo(_loc12_[_loc17_.gf][2][0] + _loc15_ * ank.battlefield.Constants["\x16\x17\x1d"] + _loc8_,_loc12_[_loc17_.gf][2][1] - _loc17_.gl * 20 - _loc15_ * ank.battlefield.Constants["\x16\x17\x1c"] + _loc9_);
         _loc15_ = _loc15_ - 1;
      }
      _loc15_ = 1;
      while(_loc15_ <= _loc19_[1])
      {
         _loc14_ += _loc13_;
         _loc17_ = this["\x17\x18\n"](_loc14_);
         _loc18_.lineTo(_loc12_[_loc17_.gf][2][0] + _loc15_ * ank.battlefield.Constants["\x16\x17\x1d"] + _loc8_,_loc12_[_loc17_.gf][2][1] - _loc17_.gl * 20 + _loc15_ * ank.battlefield.Constants["\x16\x17\x1c"] + _loc9_);
         _loc15_ = _loc15_ + 1;
      }
      _loc15_ = _loc19_[1];
      while(_loc15_ >= 0)
      {
         if(_loc15_ != _loc19_[1])
         {
            _loc14_ -= _loc13_;
         }
         _loc17_ = this["\x17\x18\n"](_loc14_);
         _loc18_.lineTo(_loc12_[_loc17_.gf][3][0] + _loc15_ * ank.battlefield.Constants["\x16\x17\x1d"] + _loc8_,_loc12_[_loc17_.gf][3][1] - _loc17_.gl * 20 + _loc15_ * ank.battlefield.Constants["\x16\x17\x1c"] + _loc9_);
         _loc15_ = _loc15_ - 1;
      }
      _loc15_ = 1;
      while(_loc15_ <= _loc19_[3])
      {
         _loc14_ += _loc13_ - 1;
         _loc17_ = this["\x17\x18\n"](_loc14_);
         _loc18_.lineTo(_loc12_[_loc17_.gf][3][0] - _loc15_ * ank.battlefield.Constants["\x16\x17\x1d"] + _loc8_,_loc12_[_loc17_.gf][3][1] - _loc17_.gl * 20 + _loc15_ * ank.battlefield.Constants["\x16\x17\x1c"] + _loc9_);
         _loc15_ = _loc15_ + 1;
      }
      _loc15_ = _loc19_[3];
      while(_loc15_ > 0)
      {
         if(_loc15_ != _loc19_[3])
         {
            _loc14_ -= _loc13_ - 1;
         }
         _loc17_ = this["\x17\x18\n"](_loc14_);
         _loc18_.lineTo(_loc12_[_loc17_.gf][0][0] - _loc15_ * ank.battlefield.Constants["\x16\x17\x1d"] + _loc8_,_loc12_[_loc17_.gf][0][1] - _loc17_.gl * 20 + _loc15_ * ank.battlefield.Constants["\x16\x17\x1c"] + _loc9_);
         _loc15_ = _loc15_ - 1;
      }
      _loc18_.endFill();
   }
   function §\x17\x18\n§(§\x19\x04\x12§)
   {
      var _loc3_ = this["\x1e\x04\x0e"]["\x17\x14\x1d"](_loc2_);
      var _loc4_ = _loc3_["\x18\x03\x1a"] != undefined ? _loc3_["\x18\x03\x1a"] : 1;
      var _loc5_ = _loc3_["\x18\x03\x18"] != undefined ? _loc3_["\x18\x03\x18"] - 7 : 0;
      return {gf:_loc4_,gl:_loc5_};
   }
   function §\x17\t\x1c§(§\x19\r\x01§, §\x19\x05\x06§, §\x19\x04\x14§, §\x18\x1b\f§)
   {
      var _loc6_ = ank.battlefield.Constants["\x16\x17\x1b"];
      var _loc7_ = this["\x1e\x04\x0e"]["\x18\x02\r"]();
      var _loc8_ = _loc7_ * 2 - 1;
      var _loc9_ = _loc4_ - _loc2_ * _loc7_;
      var _loc14_ = (0 - _loc2_) * ank.battlefield.Constants["\x16\x17\x1d"];
      var _loc15_ = (0 - _loc2_) * ank.battlefield.Constants["\x16\x17\x1c"];
      var _loc13_ = _loc5_ != undefined ? _loc5_ : this["\x1d\x12\x01"];
      _loc13_.lineStyle(1,_loc3_,100);
      var _loc12_ = this["\x17\x18\n"](_loc9_);
      _loc13_.moveTo(_loc14_ + _loc6_[_loc12_.gf][0][0],_loc15_ + _loc6_[_loc12_.gf][0][1] - _loc12_.gl * 20);
      var _loc10_ = 0;
      while(_loc10_ < _loc2_ + 1)
      {
         if(_loc10_ != 0)
         {
            _loc9_ = _loc9_ + 1;
         }
         _loc12_ = this["\x17\x18\n"](_loc9_);
         _loc13_.lineTo(_loc14_ + _loc6_[_loc12_.gf][1][0] + _loc10_ * ank.battlefield.Constants["\x16\x18\t"],_loc15_ + _loc6_[_loc12_.gf][1][1] - _loc12_.gl * 20);
         _loc13_.lineTo(_loc14_ + _loc6_[_loc12_.gf][2][0] + _loc10_ * ank.battlefield.Constants["\x16\x18\t"],_loc15_ + _loc6_[_loc12_.gf][2][1] - _loc12_.gl * 20);
         _loc10_ = _loc10_ + 1;
      }
      _loc10_ -= 1;
      var _loc11_ = 0;
      while(_loc11_ < _loc2_)
      {
         _loc9_ += _loc8_;
         _loc12_ = this["\x17\x18\n"](_loc9_);
         _loc13_.lineTo(_loc14_ + _loc6_[_loc12_.gf][1][0] + _loc10_ * ank.battlefield.Constants["\x16\x18\t"],_loc15_ + _loc6_[_loc12_.gf][1][1] + (_loc11_ + 1) * ank.battlefield.Constants["\x16\x18\x01"] - _loc12_.gl * 20);
         _loc13_.lineTo(_loc14_ + _loc6_[_loc12_.gf][2][0] + _loc10_ * ank.battlefield.Constants["\x16\x18\t"],_loc15_ + _loc6_[_loc12_.gf][2][1] + (_loc11_ + 1) * ank.battlefield.Constants["\x16\x18\x01"] - _loc12_.gl * 20);
         _loc11_ = _loc11_ + 1;
      }
      _loc10_ = _loc2_;
      while(_loc10_ >= 0)
      {
         if(_loc10_ != _loc2_)
         {
            _loc9_ = _loc9_ - 1;
         }
         _loc12_ = this["\x17\x18\n"](_loc9_);
         _loc13_.lineTo(_loc14_ + _loc6_[_loc12_.gf][3][0] + _loc10_ * ank.battlefield.Constants["\x16\x18\t"],_loc15_ + _loc6_[_loc12_.gf][3][1] + _loc11_ * ank.battlefield.Constants["\x16\x18\x01"] - _loc12_.gl * 20);
         _loc13_.lineTo(_loc14_ + _loc6_[_loc12_.gf][0][0] + _loc10_ * ank.battlefield.Constants["\x16\x18\t"],_loc15_ + _loc6_[_loc12_.gf][0][1] + _loc11_ * ank.battlefield.Constants["\x16\x18\x01"] - _loc12_.gl * 20);
         _loc10_ = _loc10_ - 1;
      }
      _loc10_ += 1;
      _loc11_ = _loc2_ - 1;
      while(_loc11_ >= 0)
      {
         _loc9_ -= _loc8_;
         _loc12_ = this["\x17\x18\n"](_loc9_);
         _loc13_.lineTo(_loc14_ + _loc6_[_loc12_.gf][3][0] + _loc10_ * ank.battlefield.Constants["\x16\x18\t"],_loc15_ + _loc6_[_loc12_.gf][3][1] + _loc11_ * ank.battlefield.Constants["\x16\x18\x01"] - _loc12_.gl * 20);
         _loc13_.lineTo(_loc14_ + _loc6_[_loc12_.gf][0][0] + _loc10_ * ank.battlefield.Constants["\x16\x18\t"],_loc15_ + _loc6_[_loc12_.gf][0][1] + _loc11_ * ank.battlefield.Constants["\x16\x18\x01"] - _loc12_.gl * 20);
         _loc11_ = _loc11_ - 1;
      }
   }
   function §\x17\n\r§(§\x19\x10\x18§, §\x19\b\x03§, §\x19\x05\x06§, §\x19\x04\x14§)
   {
      var _loc6_ = ank.battlefield.Constants["\x16\x17\x1b"];
      var _loc7_ = this["\x1e\x04\x0e"]["\x18\x02\r"]() * 2 - 1;
      var _loc8_ = Number(_loc5_);
      var _loc13_ = 0;
      var _loc14_ = 0;
      var _loc12_ = this["\x1d\x12\x01"];
      _loc12_.lineStyle(1,_loc4_,100);
      var _loc11_ = this["\x17\x18\n"](_loc8_);
      _loc12_.moveTo(_loc13_ + _loc6_[_loc11_.gf][0][0],_loc14_ + _loc6_[_loc11_.gf][0][1] - _loc11_.gl * 20);
      var _loc9_ = 0;
      while(_loc9_ < _loc2_)
      {
         if(_loc9_ != 0)
         {
            _loc8_ = _loc8_ + 1;
         }
         _loc11_ = this["\x17\x18\n"](_loc8_);
         _loc12_.lineTo(_loc13_ + _loc6_[_loc11_.gf][1][0] + _loc9_ * ank.battlefield.Constants["\x16\x18\t"],_loc14_ + _loc6_[_loc11_.gf][1][1] - _loc11_.gl * 20);
         _loc12_.lineTo(_loc13_ + _loc6_[_loc11_.gf][2][0] + _loc9_ * ank.battlefield.Constants["\x16\x18\t"],_loc14_ + _loc6_[_loc11_.gf][2][1] - _loc11_.gl * 20);
         _loc9_ = _loc9_ + 1;
      }
      _loc9_ -= 1;
      var _loc10_ = 0;
      while(_loc10_ < _loc3_ - 1)
      {
         _loc8_ += _loc7_;
         _loc11_ = this["\x17\x18\n"](_loc8_);
         _loc12_.lineTo(_loc13_ + _loc6_[_loc11_.gf][1][0] + _loc9_ * ank.battlefield.Constants["\x16\x18\t"],_loc14_ + _loc6_[_loc11_.gf][1][1] + (_loc10_ + 1) * ank.battlefield.Constants["\x16\x18\x01"] - _loc11_.gl * 20);
         _loc12_.lineTo(_loc13_ + _loc6_[_loc11_.gf][2][0] + _loc9_ * ank.battlefield.Constants["\x16\x18\t"],_loc14_ + _loc6_[_loc11_.gf][2][1] + (_loc10_ + 1) * ank.battlefield.Constants["\x16\x18\x01"] - _loc11_.gl * 20);
         _loc10_ = _loc10_ + 1;
      }
      _loc9_ = _loc2_ - 1;
      while(_loc9_ >= 0)
      {
         if(_loc9_ != _loc2_ - 1)
         {
            _loc8_ = _loc8_ - 1;
         }
         _loc11_ = this["\x17\x18\n"](_loc8_);
         _loc12_.lineTo(_loc13_ + _loc6_[_loc11_.gf][3][0] + _loc9_ * ank.battlefield.Constants["\x16\x18\t"],_loc14_ + _loc6_[_loc11_.gf][3][1] + _loc10_ * ank.battlefield.Constants["\x16\x18\x01"] - _loc11_.gl * 20);
         _loc12_.lineTo(_loc13_ + _loc6_[_loc11_.gf][0][0] + _loc9_ * ank.battlefield.Constants["\x16\x18\t"],_loc14_ + _loc6_[_loc11_.gf][0][1] + _loc10_ * ank.battlefield.Constants["\x16\x18\x01"] - _loc11_.gl * 20);
         _loc9_ = _loc9_ - 1;
      }
      _loc9_ += 1;
      _loc10_ = _loc3_ - 2;
      while(_loc10_ >= 0)
      {
         _loc8_ -= _loc7_;
         _loc11_ = this["\x17\x18\n"](_loc8_);
         _loc12_.lineTo(_loc13_ + _loc6_[_loc11_.gf][3][0] + _loc9_ * ank.battlefield.Constants["\x16\x18\t"],_loc14_ + _loc6_[_loc11_.gf][3][1] + _loc10_ * ank.battlefield.Constants["\x16\x18\x01"] - _loc11_.gl * 20);
         _loc12_.lineTo(_loc13_ + _loc6_[_loc11_.gf][0][0] + _loc9_ * ank.battlefield.Constants["\x16\x18\t"],_loc14_ + _loc6_[_loc11_.gf][0][1] + _loc10_ * ank.battlefield.Constants["\x16\x18\x01"] - _loc11_.gl * 20);
         _loc10_ = _loc10_ - 1;
      }
   }
}
