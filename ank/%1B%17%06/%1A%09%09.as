class ank.utils.§\x1a\t\t§ extends MovieClip
{
   static var §\x1b\x1e\x10§ = new Array();
   static var §\x1d\x0b\x06§ = _root.createEmptyMovieClip("\x1d\x0f\t",_root.getNextHighestDepth());
   function §\x1a\t\t§()
   {
      super();
   }
   function §\x16\x01\x04§(§\x19\x12\x03§)
   {
      ank.utils.["\x1a\t\t"]["\x1b\x1e\x10"].push(_loc2_);
      if(ank.utils.["\x1a\t\t"]["\x1d\x0b\x06"].onEnterFrame == undefined)
      {
         ank.utils.["\x1a\t\t"]["\x1d\x0b\x06"].onEnterFrame = this["\x1a\x0f\x04"];
      }
   }
   function §\x1a\x0f\x04§()
   {
      for(var k in ank.utils.["\x1a\t\t"]["\x1b\x1e\x10"])
      {
         var _loc2_ = ank.utils.["\x1a\t\t"]["\x1b\x1e\x10"].shift();
         _loc2_.method.apply(_loc2_.object,_loc2_.params);
         if(ank.utils.["\x1a\t\t"]["\x1b\x1e\x10"].length == 0)
         {
            delete ank.utils.["\x1a\t\t"]["\x1d\x0b\x06"].onEnterFrame;
         }
      }
   }
}
