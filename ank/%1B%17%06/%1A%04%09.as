class ank.utils.§\x1a\x04\t§
{
   function §\x1a\x04\t§()
   {
   }
   static function §\x17\x16\x10§(sText, §\x16\x03\x1d§)
   {
      ank.utils.["\x17\x0e\x10"]["\x15\x1d\f"]();
      var _loc4_ = _loc2_.split("");
      var _loc5_ = ank.utils.["\x1a\x04\t"]["\x17\x05\x1d"](_loc4_,_loc3_).join("");
      return _loc5_;
   }
   static function §\x16\x1d\x15§(§\x1b\x0b\t§, §\x17\x13\f§, §\x1b\x01\x1c§)
   {
      ank.utils.["\x17\x0e\x10"]["\x15\x1d\f"]();
      var _loc5_ = _loc2_.split("");
      var _loc6_ = new Object();
      _loc6_.m = _loc3_ == "m";
      _loc6_.f = _loc3_ == "f";
      _loc6_.n = _loc3_ == "n";
      _loc6_.p = !_loc4_;
      _loc6_.s = _loc4_;
      var _loc7_ = ank.utils.["\x1a\x04\t"]["\x17\x05\x1c"](_loc5_,_loc6_).join("");
      return _loc7_;
   }
   static function §\x1a\r\n§(§\x1b\b\x13§, §\x1b\x05\t§)
   {
      var _loc4_ = _loc2_.split("##");
      var _loc5_ = 1;
      while(_loc5_ < _loc4_.length)
      {
         var _loc6_ = _loc4_[_loc5_].split(",");
         _loc4_[_loc5_] = ank.utils.["\x1a\x04\t"]["\x17\x16\x10"](_loc3_,_loc6_);
         _loc5_ += 2;
      }
      return _loc4_.join("");
   }
   static function §\x1a\r\x0e§(§\x1b\b\x13§, §\x1b\b\x04§, §\x1b\x07\x1b§)
   {
      var _loc5_ = _loc2_.split(_loc3_);
      return _loc5_.join(_loc4_);
   }
   static function §\x17\x05\x1d§(§\x16\x06\x0f§, §\x16\x03\x1d§)
   {
      var _loc4_ = 0;
      var _loc5_ = new String();
      var _loc6_ = _loc2_.length;
      while(_loc4_ < _loc6_)
      {
         _loc5_ = _loc2_[_loc4_];
         switch(_loc5_)
         {
            case "#":
               var _loc7_ = _loc2_[_loc4_ + 1];
               if(!_global.isNaN(_loc7_))
               {
                  if(_loc3_[_loc7_ - 1] != undefined)
                  {
                     _loc2_.splice(_loc4_,2,_loc3_[_loc7_ - 1]);
                     _loc4_ = _loc4_ - 1;
                  }
                  else
                  {
                     _loc2_.splice(_loc4_,2);
                     _loc4_ -= 2;
                  }
               }
               break;
            case "~":
               var _loc8_ = _loc2_[_loc4_ + 1];
               if(!_global.isNaN(_loc8_))
               {
                  if(_loc3_[_loc8_ - 1] == undefined)
                  {
                     return _loc2_.slice(0,_loc4_);
                  }
                  _loc2_.splice(_loc4_,2);
                  _loc4_ -= 2;
               }
               break;
            case "{":
               var _loc9_ = ank.utils.["\x1a\x04\t"]["\x17\x11\x07"](_loc2_.slice(_loc4_),"}");
               var _loc10_ = ank.utils.["\x1a\x04\t"]["\x17\x05\x1d"](_loc2_.slice(_loc4_ + 1,_loc4_ + _loc9_),_loc3_).join("");
               _loc2_.splice(_loc4_,_loc9_ + 1,_loc10_);
               break;
            case "[":
               var _loc11_ = ank.utils.["\x1a\x04\t"]["\x17\x11\x07"](_loc2_.slice(_loc4_),"]");
               var _loc12_ = Number(_loc2_.slice(_loc4_ + 1,_loc4_ + _loc11_).join(""));
               if(!_global.isNaN(_loc12_))
               {
                  _loc2_.splice(_loc4_,_loc11_ + 1,_loc3_[_loc12_] + " ");
                  _loc4_ -= _loc11_;
               }
               break;
         }
         _loc4_ = _loc4_ + 1;
      }
      return _loc2_;
   }
   static function §\x17\x05\x1c§(§\x16\x06\x0f§, §\x19\x1e\x1d§)
   {
      var _loc4_ = 0;
      var _loc5_ = new String();
      var _loc6_ = _loc2_.length;
      while(_loc4_ < _loc6_)
      {
         _loc5_ = _loc2_[_loc4_];
         switch(_loc5_)
         {
            case "~":
               var _loc7_ = _loc2_[_loc4_ + 1];
               if(!_loc3_[_loc7_])
               {
                  return _loc2_.slice(0,_loc4_);
               }
               _loc2_.splice(_loc4_,2);
               _loc4_ -= 2;
               break;
            case "{":
               var _loc8_ = ank.utils.["\x1a\x04\t"]["\x17\x11\x07"](_loc2_.slice(_loc4_),"}");
               var _loc9_ = ank.utils.["\x1a\x04\t"]["\x17\x05\x1c"](_loc2_.slice(_loc4_ + 1,_loc4_ + _loc8_),_loc3_).join("");
               _loc2_.splice(_loc4_,_loc8_ + 1,_loc9_);
               break;
         }
         _loc4_ = _loc4_ + 1;
      }
      return _loc2_;
   }
   static function §\x17\x11\x07§(§\x15\x1b\x04§, §\x17\x0f\x02§)
   {
      var _loc4_ = _loc2_.length;
      var _loc5_ = 0;
      while(_loc5_ < _loc4_)
      {
         if(_loc2_[_loc5_] == _loc3_)
         {
            return _loc5_;
         }
         _loc5_ = _loc5_ + 1;
      }
      return -1;
   }
}
