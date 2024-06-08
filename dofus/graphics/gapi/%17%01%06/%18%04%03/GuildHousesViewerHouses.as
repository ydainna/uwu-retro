class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.§\x18\x04\x03§.GuildHousesViewerHouses extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function GuildHousesViewerHouses()
   {
      super();
      this._mcIcon._visible = false;
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      if(_loc2_)
      {
         this["\x1e\x03\x18"] = dofus.datacenter.["\x18\x07\x11"](_loc4_);
         this["\x1c\x1b\x0f"].text = this["\x1e\x03\x18"].name;
         this["\x1c\x1c\r"].text = this["\x1e\x03\x18"]["\x1a\x03\x06"];
         this._mcIcon._visible = true;
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1c\x1b\x0f"].text = "";
         this["\x1c\x1c\r"].text = "";
         this._mcIcon._visible = false;
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
   }
}
