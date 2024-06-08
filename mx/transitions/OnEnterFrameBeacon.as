class §\x19\x02\x19§.transitions.OnEnterFrameBeacon
{
   function OnEnterFrameBeacon()
   {
   }
   static function §\x18\t\x04§()
   {
      var _loc2_ = _global.MovieClip;
      if(!_root.__OnEnterFrameBeacon)
      {
         eval("\x19\x02\x19").transitions.BroadcasterMX.initialize(_loc2_);
         var _loc3_ = _root.createEmptyMovieClip("__OnEnterFrameBeacon",9876);
         _loc3_.onEnterFrame = function()
         {
            _global.MovieClip.broadcastMessage("onEnterFrame");
         };
      }
   }
}
