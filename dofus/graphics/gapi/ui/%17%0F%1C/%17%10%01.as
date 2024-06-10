class dofus.graphics.gapi.ui.§\x17\x0f\x1c§.§\x17\x10\x01§ extends ank.gapi.core.UIBasicComponent
{
   function §\x17\x10\x01§()
   {
      super();
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      if(_loc2_)
      {
         this["\x1c\x1b\x0f"].text = _loc4_.name;
         this["\x1c\x1a\x07"].text = _loc4_.level;
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1c\x1b\x0f"].text = "";
         this["\x1c\x1a\x07"].text = "";
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
   }
}
