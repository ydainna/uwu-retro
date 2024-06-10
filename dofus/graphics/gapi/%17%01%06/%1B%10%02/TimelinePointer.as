class dofus.graphics.gapi.§\x17\x01\x06§.§\x1b\x10\x02§.TimelinePointer extends ank.gapi.core.UIBasicComponent
{
   static var §\x16\x1b\x10§ = "Timeline";
   function TimelinePointer()
   {
      super();
   }
   function §\x19\x01\x11§(§\x17\x07\x0b§, destScale)
   {
      var nDir = _loc2_ <= this._x ? -1 : 1;
      var i = 0;
      this["\x1c\x0e\r"] = _loc2_;
      this.onEnterFrame = function()
      {
         i++;
         this._x += i * i * nDir;
         this._xscale += (destScale - this._xscale) / 2;
         this._yscale += (destScale - this._yscale) / 2;
         if(this._x * nDir > this["\x1c\x0e\r"] * nDir)
         {
            this._x = this["\x1c\x0e\r"];
            this._xscale = destScale;
            this._yscale = destScale;
            delete this.onEnterFrame;
         }
      };
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls["\x1b\x10\x02"].TimelinePointer.CLASS_NAME);
   }
}
