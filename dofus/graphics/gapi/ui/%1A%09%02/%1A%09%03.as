class dofus.graphics.gapi.ui.§\x1a\t\x02§.§\x1a\t\x03§ extends ank.gapi.core.UIBasicComponent
{
   function §\x1a\t\x03§()
   {
      super();
   }
   function §\x17\x07§(§\x18\x1b\x17§)
   {
      this["\x1d\r\t"] = _loc2_;
      return this.list;
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      if(_loc2_)
      {
         this["\x1e\x03\x18"] = _loc4_;
         this["\x1e\x0f\n"].text = _loc4_.description;
         this["\x1e\x0f\n"].styleName = !_loc4_["\x18\r\x17"] ? "BrownLeftSmallTextArea" : "GreyLeftSmallTextArea";
         this["\x1d\t\x13"]._visible = _loc4_["\x18\r\x17"];
         this["\x1d\n\x05"]._visible = _loc4_.x != undefined && _loc4_.y != undefined && !_loc4_["\x18\r\x17"];
      }
      else if(this["\x1e\x0f\n"].text != undefined)
      {
         this["\x1e\x0f\n"].text = "";
         this["\x1d\t\x13"]._visible = false;
         this["\x1d\n\x05"]._visible = false;
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
      this["\x1d\t\x13"]._visible = false;
      this["\x1d\n\x05"]._visible = false;
   }
}
