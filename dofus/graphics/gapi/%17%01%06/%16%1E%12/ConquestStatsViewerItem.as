class dofus.graphics.gapi.§\x17\x01\x06§.§\x16\x1e\x12§.ConquestStatsViewerItem extends ank.gapi.core.UIBasicComponent
{
   function ConquestStatsViewerItem()
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
         this["\x1d\x03\x18"].text = this["\x1e\x03\x18"].type;
         this["\x1c\x13\x18"].text = this["\x1e\x03\x18"].bonus;
         this._lblMalus.text = this["\x1e\x03\x18"].malus;
      }
      else if(this["\x1d\x03\x18"].text != undefined)
      {
         this["\x1d\x03\x18"].text = "";
         this["\x1c\x13\x18"].text = "";
         this._lblMalus.text = "";
      }
   }
}
