class ank.gapi.§\x17\x01\x06§.StylizedRectangle extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   static var §\x16\x1b\x10§ = "StylizedRectangle";
   function StylizedRectangle()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.StylizedRectangle.CLASS_NAME);
   }
   function createChildren()
   {
      this.createEmptyMovieClip("\x1d\b\n",10);
   }
   function size()
   {
      super.size();
      this["\x16\x05\f"]();
   }
   function §\x16\x05\f§()
   {
      if(this["\x1c\x05\x07"])
      {
         this.draw();
      }
   }
   function draw()
   {
      var _loc2_ = this.getStyle();
      var _loc3_ = _loc2_.cornerradius;
      var _loc4_ = _loc2_.bgcolor;
      var _loc5_ = _loc2_.alpha;
      this["\x1d\b\n"].clear();
      this["\x17\n\x0f"](this["\x1d\b\n"],0,0,this["\x1d"],this["\x0e\x06"],_loc3_,_loc4_,_loc5_);
   }
}
