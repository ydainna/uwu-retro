class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.§\x16\x03\x01§.AlignmentViewerTreeItem extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x17\x07\x05§ = 10;
   function AlignmentViewerTreeItem()
   {
      super();
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      if(_loc2_)
      {
         var _loc5_ = dofus.graphics.gapi.controls["\x16\x03\x01"].AlignmentViewerTreeItem["\x17\x07\x05"] * _loc4_.depth;
         if(_loc4_.data instanceof dofus.datacenter.Alignment)
         {
            this._ldrIcon._x = this["\x1d\x18\x0f"] + _loc5_;
            this["\x1c\x1b\x0f"]._x = this["\x1d\x18\x0f"] + _loc5_;
            this["\x1c\x1b\x0f"].width = this["\x1d"] - this["\x1c\x1b\x0f"]._x;
            this["\x1c\x1b\x0f"].styleName = "BrownLeftMediumBoldLabel";
            this["\x1d\b\r"]._visible = false;
            this["\x1d\b\x0b"]._visible = true;
            this._ldrIcon.contentPath = "";
            this["\x1c\x1b\x0f"].text = _loc4_.data.name;
            this["\x1c\x1a\x07"].text = "";
         }
         if(_loc4_.data instanceof dofus.datacenter.["\x1a\x01\x15"])
         {
            this._ldrIcon._x = this["\x1d\x18\x0f"] + _loc5_;
            this["\x1c\x1b\x0f"]._x = this["\x1d\x18\x0e"] + _loc5_;
            this["\x1c\x1b\x0f"].width = this["\x1d"] - this["\x1c\x1b\x0f"]._x;
            this["\x1c\x1b\x0f"].styleName = "BrownLeftSmallBoldLabel";
            this["\x1d\b\r"]._visible = false;
            this["\x1d\b\x0b"]._visible = false;
            this._ldrIcon.contentPath = _loc4_.data.iconFile;
            this["\x1c\x1b\x0f"].text = _loc4_.data.name;
            this["\x1c\x1a\x07"].text = "";
         }
         else if(_loc4_.data instanceof dofus.datacenter.Specialization)
         {
            this._ldrIcon._x = this["\x1d\x18\x0f"] + _loc5_;
            this["\x1c\x1b\x0f"]._x = this["\x1d\x18\x0e"] + _loc5_;
            this["\x1c\x1b\x0f"].width = this["\x1d"] - this["\x1c\x1b\x0f"]._x;
            this["\x1c\x1b\x0f"].styleName = "BrownLeftSmallLabel";
            this["\x1d\b\r"]._visible = false;
            this["\x1d\b\x0b"]._visible = false;
            this._ldrIcon.contentPath = "";
            this["\x1c\x1a\x07"].text = _loc4_.data.alignment.value <= 0 ? "- " : _loc4_.data.alignment.value + " ";
            this["\x1c\x1b\x0f"].text = _loc4_.data.name;
            this["\x1c\x1a\x07"]["\x1a\x19\x18"](this["\x1d"]);
            this["\x1c\x1b\x0f"]["\x1a\x19\x18"](this["\x1d"] - this["\x1c\x1b\x0f"]._x - this["\x1c\x1a\x07"].textWidth - 30);
         }
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this._ldrIcon._x = this["\x1d\x18\x0f"];
         this["\x1c\x1b\x0f"]._x = this["\x1d\x18\x0e"];
         this._ldrIcon.contentPath = "";
         this["\x1c\x1b\x0f"].text = "";
         this["\x1c\x1a\x07"].text = "";
         this["\x1d\b\r"]._visible = false;
         this["\x1d\b\x0b"]._visible = false;
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
      this["\x1d\x18\x0f"] = this._ldrIcon._x;
      this["\x1d\x18\x0e"] = this["\x1c\x1b\x0f"]._x;
   }
}
