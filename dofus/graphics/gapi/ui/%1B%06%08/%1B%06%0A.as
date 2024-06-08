class dofus.§\x18\x03\x10§.gapi.ui.§\x1b\x06\b§.§\x1b\x06\n§ extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function §\x1b\x06\n§()
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
         this["\x1e\x03\x18"] = dofus.datacenter.["\x1b\x06\x06"](_loc4_);
         this["\x1c\x1b\x0f"].text = this["\x1e\x03\x18"].name;
         this["\x1c\x1a\x07"].text = String(this["\x1e\x03\x18"].level);
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1c\x1b\x0f"].text = "";
         this["\x1c\x1a\x07"].text = "";
      }
   }
}
