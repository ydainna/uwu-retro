class ank.utils.§\x17\x04\f§ extends Object
{
   static var §\x1c\x11\t§ = new ank.utils.["\x17\x04\f"]();
   var §\x1b\x1c\x1d§ = new Array();
   var §\x1c\x07\x0b§ = false;
   function §\x17\x04\f§()
   {
      super();
   }
   static function getInstance()
   {
      return ank.utils.["\x17\x04\f"]["\x1c\x11\t"];
   }
   function §\x15\x1d\x11§(§\x1a\x01\x17§, §\x19\x1e\x19§, §\x17\x0f\x13§, §\x16\x03\x1d§, §\x19\x1e\x1a§, §\x17\x0f\x14§, §\x16\x04\x01§)
   {
      var _loc9_ = new Object();
      _loc9_.objRef = _loc2_;
      _loc9_.objFn = _loc3_;
      _loc9_.fn = _loc4_;
      _loc9_.params = _loc5_;
      _loc9_.objFnEnd = _loc6_;
      _loc9_.fnEnd = _loc7_;
      _loc9_.paramsEnd = _loc8_;
      this["\x1b\x1c\x1d"].push(_loc9_);
      this.play();
   }
   function §\x1a\f\x06§(§\x1a\x01\x17§)
   {
      var _loc3_ = this["\x1b\x1c\x1d"].length - 1;
      while(_loc3_ >= 0)
      {
         var _loc4_ = this["\x1b\x1c\x1d"][_loc3_];
         if(_loc2_ == _loc4_.objRef)
         {
            this["\x1b\x1c\x1d"].splice(_loc3_,1);
         }
         _loc3_ = _loc3_ - 1;
      }
   }
   function clear()
   {
      this.stop();
      this["\x1b\x1c\x1d"] = new Array();
   }
   function play()
   {
      if(this["\x1c\x07\x0b"])
      {
         return undefined;
      }
      this["\x1c\x07\x0b"] = true;
      if(this["\x1d\n\x12"] == undefined)
      {
         this["\x1d\n\x12"] = _root.createEmptyMovieClip("\x1d\n\x12",_root.getNextHighestDepth());
      }
      if(this["\x1d\n\x12"].onEnterFrame == undefined)
      {
         var §\x1b\x10\x01§ = this;
         var api = _global.api;
         var FRAMES_TO_SKIP = !dofus.Constants.TRIPLEFRAMERATE ? 1 : 5;
         var §\x19\x05\x11§ = 0;
         this["\x1d\n\x12"].onEnterFrame = function()
         {
            if(!api.electron["\x18\x10\x11"])
            {
               if(eval("\x19\x05\x11") > 0)
               {
                  §\x19\x05\x11§--;
                  return undefined;
               }
               set("\x19\x05\x11",FRAMES_TO_SKIP);
            }
            eval("\x1b\x10\x01")["\x17\t\x06"]();
         };
      }
   }
   function stop()
   {
      delete this["\x1d\n\x12"].onEnterFrame;
      this["\x1c\x07\x0b"] = false;
   }
   function §\x17\t\x06§()
   {
      var _loc2_ = this["\x1b\x1c\x1d"].length - 1;
      while(_loc2_ >= 0)
      {
         var _loc3_ = this["\x1b\x1c\x1d"][_loc2_];
         if(!_loc3_.fn.apply(_loc3_.objFn,_loc3_.params))
         {
            this["\x19\x17\x1a"](_loc2_,_loc3_);
         }
         _loc2_ = _loc2_ - 1;
      }
      if(this["\x1b\x1c\x1d"].length == 0)
      {
         this.stop();
      }
   }
   function §\x19\x17\x1a§(§\x19\b\x14§, §\x19\x13\x02§)
   {
      _loc3_.fnEnd.apply(_loc3_.objFnEnd,_loc3_.paramsEnd);
      this["\x1b\x1c\x1d"].splice(_loc2_,1);
   }
}
