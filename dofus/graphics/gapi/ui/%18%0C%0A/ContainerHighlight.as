class dofus.§\x18\x03\x10§.gapi.ui.§\x18\f\n§.ContainerHighlight extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   static var §\x16\x1b\x10§ = "ContainerHighlight";
   function ContainerHighlight()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui["\x18\f\n"].ContainerHighlight.CLASS_NAME);
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
      this._mcBg._width = this["\x1d"];
      this._mcBg._height = this["\x0e\x06"];
      this["\x1d\f\x1a"]._height = this["\x1d\x0f\n"]._height = this["\x0e\x06"];
      this["\x1d\x10\x16"]._width = this._mcB._width = this["\x1d"];
      this["\x1d\f\x1a"]._x = this["\x1d\x10\x16"]._x = this["\x1d\f\x1a"]._y = this["\x1d\x10\x16"]._y = this._mcB._x = this["\x1d\x0f\n"]._y = 0;
      this._mcB._y = this["\x0e\x06"] - this["\x1d\f\x1a"]._width;
      this["\x1d\x0f\n"]._x = this["\x1d"] - this["\x1d\x0f\n"]._width;
   }
}
