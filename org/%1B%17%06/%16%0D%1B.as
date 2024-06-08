class §\x1a\x01\x1a§.utils.§\x16\r\x1b§
{
   function §\x16\r\x1b§()
   {
   }
   static function §\x18\x15\x15§(§\x1b\x16\x10§, §\x1b\r\x19§)
   {
      var _loc4_ = _loc3_.createEmptyMovieClip("\x16\x0e\x1a",_loc3_.getNextHighestDepth());
      var _loc5_ = new Object();
      _loc5_.tmc = _loc3_;
      _loc5_.onLoadInit = function(§\x18\x1b\f§)
      {
         _loc2_._visible = false;
         _loc2_.forceSmoothing = true;
         var _loc3_ = new flash.display.BitmapData(_loc2_._width,_loc2_._height,true);
         this.tmc.attachBitmap(_loc3_,this.tmc.getNextHighestDepth(),"auto",true);
         _loc3_.draw(_loc2_);
      };
      var _loc6_ = new MovieClipLoader();
      _loc6_.addListener(_loc5_);
      _loc6_.loadClip(_loc2_,_loc4_);
   }
}
