class ank.utils.§\x1b\f\x1a§ extends MovieClip
{
   function §\x1b\f\x1a§()
   {
      super();
      AsBroadcaster.initialize(this);
      this.initialize(0);
   }
   function initialize(§\x17\x12\x0f§, §\x16\x05\n§)
   {
      this.clear();
      this["\x1c\x10\x1c"] = _loc2_;
      this["\x1b\x1b\x16"] = _loc3_;
   }
   function clear()
   {
      this.createEmptyMovieClip("\x1b\f\x1b",10);
   }
   function remove()
   {
      this["\x1b\f\x1b"].__proto__ = MovieClip.prototype;
      this["\x1b\f\x1b"].removeMovieClip();
   }
   function §\x18\x16\x15§(§\x17\x10\x0b§, §\x17\x12\x0f§, §\x16\x05\n§)
   {
      this.initialize(_loc3_,_loc4_);
      var _loc5_ = new MovieClipLoader();
      _loc5_.addListener(this);
      _loc5_.loadClip(_loc2_,this["\x1b\f\x1b"]);
   }
   function onLoadComplete(§\x18\x1b\f§)
   {
      this.broadcastMessage("onLoadComplete",_loc2_,this["\x1b\x1b\x16"]);
   }
   function onLoadInit(§\x18\x1b\f§)
   {
      if(this["\x1c\x10\x1c"] != undefined)
      {
         _loc2_.gotoAndStop(this["\x1c\x10\x1c"]);
      }
      this.broadcastMessage("onLoadInit",_loc2_,this["\x1b\x1b\x16"]);
   }
}
