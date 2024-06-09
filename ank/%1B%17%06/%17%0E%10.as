class ank.utils.Extensions
{
   static var §\x16\x0b\x0f§ = false;
   function Extensions()
   {
   }
   static function addExtensions()
   {
      if(ank.utils.Extensions["\x16\x0b\x0f"] == true)
      {
         return true;
      }
      var _loc2_ = String.prototype;
      _loc2_["\x1a\x0b\x15"] = function()
      {
         var _loc2_ = "ÀÁÂÃÄÅàáâãäåßÒÓÔÕÕÖØòóôõöøÈÉÊËèéêëðÇçÐÌÍÎÏìíîïÙÚÛÜùúûüÑñŠšŸÿýŽž";
         var _loc3_ = "AAAAAAaaaaaaBOOOOOOOooooooEEEEeeeeeCcDIIIIiiiiUUUUuuuuNnSsYyyZz";
         var _loc4_ = this.split("");
         var _loc5_ = _loc4_.length;
         var _loc6_ = 0;
         while(_loc6_ < _loc5_)
         {
            var _loc7_ = _loc2_.indexOf(_loc4_[_loc6_]);
            if(_loc7_ != -1)
            {
               _loc4_[_loc6_] = _loc3_.charAt(_loc7_);
            }
            _loc6_ = _loc6_ + 1;
         }
         return _loc4_.join("");
      };
      var _loc3_ = ank.utils.["\x17\x0e\x0f"]["\x19\x01\x14"].prototype;
      var _loc4_ = MovieClip.prototype;
      _loc4_["\x16\x06\x16"] = _loc3_["\x16\x06\x16"];
      _loc4_["\x16\x03\x02"] = _loc3_["\x16\x03\x02"];
      _loc4_["\x1a\x05\x18"] = _loc3_["\x1a\x05\x18"];
      _loc4_["\x17\x17\x1a"] = _loc3_["\x17\x17\x1a"];
      _loc4_["\x17\x13\x14"] = _loc3_["\x17\x13\x14"];
      _loc4_.end = _loc3_.end;
      _loc4_["\x1a\x05\n"] = _loc3_["\x1a\x05\n"];
      _loc4_["\x1b\n\x1a"] = _loc3_["\x1b\n\x1a"];
      ank.utils.Extensions["\x16\x0b\x0f"] = true;
      return true;
   }
}
