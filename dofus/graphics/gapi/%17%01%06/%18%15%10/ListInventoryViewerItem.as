class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.§\x18\x15\x10§.ListInventoryViewerItem extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function ListInventoryViewerItem()
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
         this["\x1c\x1d\x03"].text = !_loc2_ ? "" : new ank.utils.ExtendedString(_loc4_.price)["\x15\x1e\x01"](this["\x1d\r\t"].gapi.api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
         var _loc5_ = this["\x1c\x1d\x03"].textWidth;
         this["\x1c\x1b\x0f"].text = !_loc2_ ? "" : (_loc4_.Quantity <= 1 ? "" : "x" + _loc4_.label + " ") + _loc4_.name;
         this["\x1c\x1b\x0f"]["\x1a\x19\x18"](this["\x1d"] - _loc5_ - 30,this["\x0e\x06"]);
         this["\x1c\x1b\x0f"].styleName = _loc4_.style != "" ? _loc4_.style + "LeftSmallLabel" : "BrownLeftSmallLabel";
         this._ldrIcon.contentPath = !_loc2_ ? "" : _loc4_.iconFile;
         this._ldrIcon.contentParams = _loc4_.params;
      }
      else if(this["\x1c\x1d\x03"].text != undefined)
      {
         this["\x1c\x1d\x03"].text = "";
         this["\x1c\x1b\x0f"].text = "";
         this._ldrIcon.contentPath = "";
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
   }
   function createChildren()
   {
      this["\x16\x05\f"]();
   }
   function size()
   {
      super.size();
      this.addToQueue({object:this,method:this["\x16\x05\f"]});
   }
   function §\x16\x05\f§()
   {
      this["\x1c\x1b\x0f"]["\x1a\x19\x18"](this["\x1d"] - 50,this["\x0e\x06"]);
      this["\x1c\x1d\x03"]["\x1a\x19\x18"](this["\x1d"] - 20,this["\x0e\x06"]);
   }
}
