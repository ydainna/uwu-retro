class ank.gapi.§\x17\x01\x06§.§\x1a\x11\r§.§\x1a\x11\x14§ extends MovieClip
{
   function §\x1a\x11\x14§()
   {
      super();
   }
   function §\x14\x0b§(§\x19\b\x03§)
   {
      this.top_mc._y = 0;
      this.middle_mc._y = this.top_mc._height;
      this.middle_mc._height = _loc2_ - this.top_mc._height - this.bottom_mc._height;
      this.bottom_mc._y = this.middle_mc._y + this.middle_mc._height;
      return this["\x1e\x1b\x11"]();
   }
}
