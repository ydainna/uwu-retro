class ank.gapi.§\x17\x01\x06§.§\x16\x1d\x1a§.DefaultHighlight extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   static var §\x16\x1b\x10§ = "DefaultHighlight";
   function DefaultHighlight()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls["\x16\x1d\x1a"].DefaultHighlight.CLASS_NAME);
   }
   function createChildren()
   {
      this.createEmptyMovieClip("_mcHighlight",10);
   }
   function size()
   {
      super.size();
      this["\x16\x05\f"]();
   }
   function §\x16\x05\f§()
   {
      this._mcHighlight._width = this["\x1d"];
      this._mcHighlight._height = this["\x0e\x06"];
   }
   function draw()
   {
      this["\x17\n\x0f"](this._mcHighlight,0,0,1,1,0,0,50);
   }
}
