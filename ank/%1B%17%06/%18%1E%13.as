class ank.utils.§\x18\x1e\x13§
{
   function §\x18\x1e\x13§()
   {
   }
   static function addListener(§\x19\x13\x0e§)
   {
      Mouse.addListener(_loc2_);
      ank.utils.["\x18\x1e\x13"].garbageCollector();
   }
   static function garbageCollector()
   {
      var _loc2_ = Mouse._listeners;
      var _loc3_ = _loc2_.length;
      while(_loc3_ >= 0)
      {
         var _loc4_ = _loc2_[_loc3_];
         if(_loc4_ == undefined || _loc4_._target == undefined)
         {
            _loc2_.splice(_loc3_,1);
         }
         _loc3_ = _loc3_ - 1;
      }
   }
}
