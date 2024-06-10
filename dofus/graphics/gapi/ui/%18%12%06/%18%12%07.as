class dofus.graphics.gapi.ui.§\x18\x12\x06§.§\x18\x12\x07§ extends ank.gapi.core.UIBasicComponent
{
   function §\x18\x12\x07§()
   {
      super();
      this["\x1d\x0e\x11"]._visible = false;
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      if(_loc2_)
      {
         this["\x1c\x14\x13"].text = _loc4_.n;
         this["\x1d\x0e\x11"]._visible = true;
      }
      else if(this["\x1c\x14\x13"].text != undefined)
      {
         this["\x1c\x14\x13"].text = "";
         this["\x1d\x0e\x11"]._visible = false;
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
   }
}
