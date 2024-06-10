class dofus.graphics.gapi.ui.§\x18\x12\x06§.§\x18\x12\b§ extends ank.gapi.core.UIBasicComponent
{
   function §\x18\x12\b§()
   {
      super();
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      if(_loc2_)
      {
         this["\x1c\x19\x12"].text = _loc4_.n;
         var _loc5_ = _loc4_.c == undefined;
         this["\x1d\t\x0e"]._visible = _loc5_;
         this["\x1d\b\x07"]._visible = !_loc5_;
         if(!_loc5_ && !this["\x1c\f\b"])
         {
            this["\x1c\x19\x12"]._x += 10;
            this["\x1d\b\x07"]._x += 10;
            this["\x1c\f\b"] = true;
         }
      }
      else if(this["\x1c\x19\x12"].text != undefined)
      {
         this["\x1c\x19\x12"].text = "";
         this["\x1d\b\x07"]._visible = false;
         this["\x1d\t\x0e"]._visible = false;
         if(this["\x1c\f\b"])
         {
            this["\x1c\x19\x12"]._x -= 10;
            this["\x1d\b\x07"]._x -= 10;
            this["\x1c\f\b"] = false;
         }
      }
   }
   function §\x18\x12\x07§()
   {
      this["\x1d\b\x07"]._visible = false;
      this["\x1d\t\x0e"]._visible = false;
   }
   function §\x18\t\x04§()
   {
      super.init(false);
   }
}
