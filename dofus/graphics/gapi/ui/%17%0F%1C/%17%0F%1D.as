class dofus.graphics.gapi.ui.§\x17\x0f\x1c§.§\x17\x0f\x1d§ extends ank.gapi.core.UIBasicComponent
{
   function §\x17\x0f\x1d§()
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
         this["\x1d\x05\x0f"].contentPath = _loc4_["\x1b\x0e\x17"];
         this["\x1d\x02\x1c"].text = _loc4_["\x1b\x0e\x16"];
         this["\x1d\x05\x10"].contentPath = _loc4_["\x1b\x0e\x1b"];
         this["\x1d\x03\x01"].text = _loc4_["\x1b\x0e\x1a"];
         this["\x1d\x03\x06"].text = _loc4_["\x17\n\x15"];
         this["\x1d\b\x04"]._visible = true;
      }
      else if(this["\x1d\x02\x1c"].text != undefined)
      {
         this["\x1d\x05\x0f"].contentPath = "";
         this["\x1d\x02\x1c"].text = "";
         this["\x1d\x05\x10"].contentPath = "";
         this["\x1d\x03\x01"].text = "";
         this["\x1d\x03\x06"].text = "";
         this["\x1d\b\x04"]._visible = false;
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
      this["\x1d\b\x04"]._visible = false;
      this["\x1d\r\t"].gapi.api.colors.addSprite(this["\x1d\x05\x0f"],{color1:dofus.Constants["\x1b\x0f\x03"][0]});
      this["\x1d\r\t"].gapi.api.colors.addSprite(this["\x1d\x05\x10"],{color1:dofus.Constants["\x1b\x0f\x03"][1]});
   }
}
