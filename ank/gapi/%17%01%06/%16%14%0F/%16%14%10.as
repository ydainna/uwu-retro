class ank.gapi.§\x17\x01\x06§.§\x16\x14\x0f§.§\x16\x14\x10§ extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function §\x16\x14\x10§()
   {
      super();
   }
   function §\x1a\x19\x18§(§\x19\x10\x18§, §\x19\b\x03§, §\x16\t\x14§)
   {
      this.left_mc._x = this.left_mc._y = this.middle_mc._y = this.right_mc._y = 0;
      this.left_mc._height = this.middle_mc._height = this.right_mc._height = _loc3_;
      if(_loc4_)
      {
         this.left_mc._xscale = this.left_mc._yscale;
         this.right_mc._xscale = this.right_mc._yscale;
      }
      this.middle_mc._x = this.left_mc != undefined ? this.left_mc._width : 0;
      this.middle_mc._width = _loc2_ - (this.left_mc != undefined ? this.left_mc._width : 0) - (this.right_mc != undefined ? this.right_mc._width : 0);
      this.right_mc._x = _loc2_ - this.right_mc._width;
      this.middle_mc._width += 0.5;
      this.left_mc._width += 0.5;
   }
   function §\x1a\x1a\x0f§(§\x1a\x02\x0e§, §\x1b\b\x19§)
   {
      var _loc4_ = this.left_mc;
      for(var k in _loc4_)
      {
         var _loc5_ = k.split("_")[0];
         var _loc6_ = _loc2_[_loc5_ + _loc3_];
         if(_loc6_ != undefined)
         {
            this["\x1a\x18\x03"](_loc4_[k],_loc6_);
         }
      }
      _loc4_ = this.middle_mc;
      for(var k in _loc4_)
      {
         var _loc7_ = k.split("_")[0];
         var _loc8_ = _loc2_[_loc7_ + _loc3_];
         if(_loc8_ != undefined)
         {
            this["\x1a\x18\x03"](_loc4_[k],_loc8_);
         }
      }
      _loc4_ = this.right_mc;
      for(var k in _loc4_)
      {
         var _loc9_ = k.split("_")[0];
         var _loc10_ = _loc2_[_loc9_ + _loc3_];
         if(_loc10_ != undefined)
         {
            this["\x1a\x18\x03"](_loc4_[k],_loc10_);
         }
      }
   }
}
