class §\x19\x02\x19§.transitions.easing.Back
{
   function Back()
   {
   }
   static function easeIn(§\x1b\r\x11§, §\x16\b\b§, c, §\x17\x04\x0e§, §\x1a\x0f\x06§)
   {
      if(_loc6_ == undefined)
      {
         _loc6_ = 1.70158;
      }
      return c * (_loc2_ /= _loc5_) * _loc2_ * ((_loc6_ + 1) * _loc2_ - _loc6_) + _loc3_;
   }
   static function easeOut(§\x1b\r\x11§, §\x16\b\b§, c, §\x17\x04\x0e§, §\x1a\x0f\x06§)
   {
      if(_loc6_ == undefined)
      {
         _loc6_ = 1.70158;
      }
      return c * ((_loc2_ = _loc2_ / _loc5_ - 1) * _loc2_ * ((_loc6_ + 1) * _loc2_ + _loc6_) + 1) + _loc3_;
   }
   static function easeInOut(§\x1b\r\x11§, §\x16\b\b§, c, §\x17\x04\x0e§, §\x1a\x0f\x06§)
   {
      if(_loc6_ == undefined)
      {
         _loc6_ = 1.70158;
      }
      if((_loc2_ /= _loc5_ / 2) < 1)
      {
         return c / 2 * (_loc2_ * _loc2_ * (((_loc6_ *= 1.525) + 1) * _loc2_ - _loc6_)) + _loc3_;
      }
      return c / 2 * ((_loc2_ -= 2) * _loc2_ * (((_loc6_ *= 1.525) + 1) * _loc2_ + _loc6_) + 2) + _loc3_;
   }
}
