class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.§\x16\x03\x01§.AlignmentViewerOrder extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "AlignmentViewerOrder";
   function AlignmentViewerOrder()
   {
      super();
   }
   function §\x1d\x0b§(§\x1a\x02\x05§)
   {
      this["\x1e\x05\x11"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this.initData();
      }
      return this["\t\x14"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls["\x16\x03\x01"].AlignmentViewerOrder.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.initData});
   }
   function initTexts()
   {
      this["\x1c\x19\t"].text = this.api.lang.getText("PLAYER_SPECIALIZATION");
   }
   function initData()
   {
      if(this["\x1e\x05\x11"] != undefined)
      {
         this["\x1d\x01\x19"].text = this["\x1e\x05\x11"].name;
         this["\x1c\x1c\x0b"].text = this["\x1e\x05\x11"].order.name;
         this._ldrIcon.contentPath = this["\x1e\x05\x11"].order.iconFile;
         this["\x1e\x0f\x1a"].text = this["\x1e\x05\x11"].description;
      }
   }
}
