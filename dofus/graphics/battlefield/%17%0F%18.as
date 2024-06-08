class dofus.§\x18\x03\x10§.battlefield.§\x17\x0f\x18§ extends MovieClip
{
   static var §\x18\b\n§ = 20;
   function §\x17\x0f\x18§(§\x1b\x11\x15§)
   {
      super();
      this.initialize(_loc3_);
      this.drawClip();
   }
   function §\x1e\x1b\x11§()
   {
      return 20;
   }
   function initialize(§\x1b\x11\x15§)
   {
      this._mc.removeMovieClip();
      this.createEmptyMovieClip("_mc",10);
      this["\x1e\x0e\x1c"] = _loc2_;
   }
   function drawClip()
   {
      for(var a in this._mc)
      {
         this._mc[a].removeMovieClip();
      }
      var _loc2_ = 0;
      for(var a in this["\x1e\x0e\x1c"]["\x1a\x01\b"])
      {
         var _loc3_ = this["\x1e\x0e\x1c"]["\x1a\x01\b"][a];
         if(_loc3_ == true)
         {
            var _loc4_ = "UI_FightOption" + a + "Up";
            if(dofus.Constants.TRIPLEFRAMERATE && a == dofus.datacenter.["\x1b\x0e\x15"]["\x1a\x01\x0f"])
            {
               _loc4_ += "_TripleFramerate";
            }
            var _loc5_ = this._mc.attachMovie(_loc4_,"mcOption" + _loc2_,_loc2_);
            _loc5_._x = _loc2_ * dofus.graphics.battlefield["\x17\x0f\x18"]["\x18\b\n"];
            _loc5_.onEnterFrame = function()
            {
               this.play();
               delete this.onEnterFrame;
            };
            _loc2_ = _loc2_ + 1;
         }
      }
      this._x = (0 - _loc2_ * dofus.graphics.battlefield["\x17\x0f\x18"]["\x18\b\n"]) / 2;
   }
}
