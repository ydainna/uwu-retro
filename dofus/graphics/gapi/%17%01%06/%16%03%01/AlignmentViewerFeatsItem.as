class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.§\x16\x03\x01§.AlignmentViewerFeatsItem extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   function AlignmentViewerFeatsItem()
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
         this._ldrIcon.contentPath = _loc4_.iconFile;
         this["\x1c\x1b\x0f"].text = _loc4_.name + (_loc4_.level != undefined ? " (" + this["\x1d\r\t"].gapi.api.lang.getText("LEVEL_SMALL") + " " + _loc4_.level + ")" : "");
         this["\x1c\x17\r"].text = _loc4_.effect.description != undefined ? _loc4_.effect.description : "";
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this._ldrIcon.contentPath = "";
         this["\x1c\x1b\x0f"].text = "";
         this["\x1c\x17\r"].text = "";
      }
   }
}
