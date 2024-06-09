class §\x19\x02\x19§.transitions.easing.Strong
{
   function Strong()
   {
   }
   static function easeIn(§\x1b\r\x11§, §\x16\b\b§, c, d)
   {
      return c * (_loc2_ /= _loc5_) * _loc2_ * _loc2_ * _loc2_ * _loc2_ + _loc3_;
   }
   static function easeOut(§\x1b\r\x11§, §\x16\b\b§, c, d)
   {
      return c * ((_loc2_ = _loc2_ / _loc5_ - 1) * _loc2_ * _loc2_ * _loc2_ * _loc2_ + 1) + _loc3_;
   }
   static function easeInOut(§\x1b\r\x11§, §\x16\b\b§, c, d)
   {
      if((_loc2_ /= _loc5_ / 2) < 1)
      {
         return c / 2 * _loc2_ * _loc2_ * _loc2_ * _loc2_ * _loc2_ + _loc3_;
      }
      return c / 2 * ((_loc2_ -= 2) * _loc2_ * _loc2_ * _loc2_ * _loc2_ + 2) + _loc3_;
   }
}
