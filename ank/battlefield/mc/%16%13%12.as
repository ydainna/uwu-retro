class ank.battlefield.mc.§\x16\x13\x12§ extends ank.battlefield.mc.§\x16\x13\x10§
{
   function §\x16\x13\x12§(§\x1b\x0f\x11§, §\x1b\x19\x14§, §\x1b\x1a\x14§, §\x18\x1a\x04§)
   {
      super(_loc3_,_loc4_,_loc5_,_loc6_);
   }
   function §\x17\t\x1b§(§\x18\x1b\f§, §\x1b\x19\x14§, §\x1b\x1a\x14§, §\x1a\t\x1d§, §\x16\x1d\x06§)
   {
      var _loc7_ = _loc3_ + Math.sin(0 * Math.PI / 180) * _loc5_;
      var _loc8_ = _loc4_ + Math.cos(0 * Math.PI / 180) * _loc5_;
      _loc2_.moveTo(_loc7_,_loc8_);
      _loc2_.beginFill(_loc6_,100);
      var _loc9_ = 0;
      while(_loc9_ <= 15)
      {
         var _loc10_ = _loc3_ + Math.sin(24 * _loc9_ * Math.PI / 180) * _loc5_;
         var _loc11_ = _loc4_ + Math.cos(24 * _loc9_ * Math.PI / 180) * _loc5_;
         _loc2_.lineTo(_loc10_,_loc11_);
         _loc9_ = _loc9_ + 1;
      }
      _loc2_.endFill();
   }
   function §\x17\t\x18§(§\x1b\x18\x10§, §\x18\x04\x1a§)
   {
      var _loc4_ = ank.battlefield.Constants["\x16\x13\x15"] * 2;
      this.createEmptyMovieClip("\x1c\x04\x0f",10);
      var _loc5_ = 0 - _loc3_ - _loc4_ - ank.battlefield.Constants["\x16\x13\x16"];
      var _loc6_ = 0 - ank.battlefield.Constants["\x16\x13\x16"];
      var _loc7_ = 0;
      var _loc8_ = _loc2_ + _loc4_;
      this["\x1c\x04\x0f"].moveTo(_loc7_,_loc5_);
      this["\x1c\x04\x0f"].lineStyle(0,16777215);
      this["\x1c\x04\x0f"].beginFill(16777215,100);
      this["\x1c\x04\x0f"].lineTo(_loc8_,_loc5_);
      this["\x1c\x04\x0f"].lineTo(_loc8_,_loc6_);
      this["\x1c\x04\x0f"].lineTo(_loc7_,_loc6_);
      this["\x1c\x04\x0f"].lineTo(_loc7_,_loc5_);
      this["\x1c\x04\x0f"].endFill();
      var _loc9_ = _loc7_;
      while(_loc9_ <= _loc8_)
      {
         this["\x17\t\x1b"](this["\x1c\x04\x0f"],_loc9_,_loc5_,7,16777215);
         _loc9_ += 14;
      }
      var _loc10_ = _loc7_;
      while(_loc10_ <= _loc8_)
      {
         this["\x17\t\x1b"](this["\x1c\x04\x0f"],_loc10_,_loc6_,7,16777215);
         _loc10_ += 14;
      }
      var _loc11_ = _loc5_;
      while(_loc11_ <= _loc6_)
      {
         this["\x17\t\x1b"](this["\x1c\x04\x0f"],_loc8_,_loc11_,7,16777215);
         _loc11_ += 14;
      }
      var _loc12_ = _loc5_;
      while(_loc12_ <= _loc6_)
      {
         this["\x17\t\x1b"](this["\x1c\x04\x0f"],_loc7_,_loc12_,7,16777215);
         _loc12_ += 14;
      }
      this["\x17\t\x1b"](this["\x1c\x04\x0f"],_loc7_,_loc6_ + 5,8,16777215);
      this["\x17\t\x1b"](this["\x1c\x04\x0f"],-5,5,4,16777215);
      var _loc13_ = new Array();
      _loc13_.push(new flash.filters.GlowFilter(0,30,2,2,3,3,false,false));
      this["\x1c\x04\x0f"].filters = _loc13_;
      this["\x1c\x04\x0f"]._alpha = 90;
   }
}
