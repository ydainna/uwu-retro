class ank.gapi.§\x17\x01\x06§.BackgroundHidder extends ank.gapi.core.UIBasicComponent
{
   static var §\x16\x1b\x10§ = "BackgroundHidder";
   function BackgroundHidder()
   {
      super();
   }
   function §\x14\n§(§\x16\f\x11§)
   {
      this.useHandCursor = _loc2_;
      return this.handCursor;
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.BackgroundHidder.CLASS_NAME);
   }
   function createChildren()
   {
      this.createEmptyMovieClip("\x18\x05\x1a",10);
      this.onRelease = function()
      {
         this["\x17\x07\x19"]({type:"click"});
      };
   }
   function §\x16\x05\f§()
   {
      this["\x18\x05\x1a"]._width = this["\x1d"];
      this["\x18\x05\x1a"]._height = this["\x0e\x06"];
   }
   function draw()
   {
      var _loc2_ = this.getStyle();
      var _loc3_ = _loc2_.backgroundcolor != undefined ? _loc2_.backgroundcolor : 0;
      var _loc4_ = _loc2_.backgroundalpha != undefined ? _loc2_.backgroundalpha : 10;
      this["\x18\x05\x1a"].clear();
      this["\x17\n\x0f"](this["\x18\x05\x1a"],0,0,1,1,0,_loc3_,_loc4_);
   }
}
