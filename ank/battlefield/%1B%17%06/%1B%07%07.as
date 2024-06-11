class ank.battlefield.utils.§\x1b\x07\x07§
{
   function §\x1b\x07\x07§()
   {
   }
   static function §\x17\x18\x01§(§\x18\x18\x15§, §\x1a\x02\n§, nCellNum, §\x16\f\x0f§)
   {
      if(_loc4_ < 0)
      {
         ank.utils.Logger.err("[getFreeDepthOnCell] La cellule ne doit pas être < 0.");
         _loc4_ = 0;
      }
      if(_loc4_ > _loc2_["\x17\x14\x1c"]())
      {
         ank.utils.Logger.err("[getFreeDepthOnCell] La cellule ne doit pas être > " + _loc2_["\x17\x14\x1c"]());
         _loc4_ = 0;
      }
      var _loc6_ = _loc2_["\x17\x14\x1d"](_loc4_)["\x16\x03\b"];
      var _loc7_ = new Object();
      for(var k in _loc6_)
      {
         _loc7_[_loc3_.getItemAt(k).mc.getDepth()] = true;
      }
      var _loc8_ = _loc4_ * 100 + ank.battlefield.Constants["\x17\x11\x0f"] + (!_loc5_ ? 0 : ank.battlefield.Constants["\x18\x1a\r"]);
      var _loc9_ = 0;
      while(_loc9_ < ank.battlefield.Constants["\x18\x1b\x05"])
      {
         if(_loc7_[_loc8_ + _loc9_] != true)
         {
            break;
         }
         _loc9_ = _loc9_ + 1;
      }
      if(_loc9_ == ank.battlefield.Constants["\x18\x1b\x05"] - 1 && _loc7_[_loc8_ + _loc9_] == true)
      {
         ank.utils.Logger.err("[getFreeDepthOnCell] plus de place sur cette cellule");
      }
      return _loc8_ + _loc9_;
   }
}
