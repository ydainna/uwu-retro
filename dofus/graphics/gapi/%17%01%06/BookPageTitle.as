class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.BookPageTitle extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "BookPageTitle";
   function BookPageTitle()
   {
      super();
   }
   function §\x19\x1b§(§\x19\x1e\x1c§)
   {
      this["\x1e\x04\x1b"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1b\x14\x14"]();
      }
      return this["\x05\x19"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.BookPageTitle.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
   }
   function §\x1b\x14\x14§()
   {
      this._txtTitle.text = this["\x1e\x04\x1b"].title != undefined ? this["\x1e\x04\x1b"].title : "";
      this["\x1d\x02\x13"].text = this["\x1e\x04\x1b"].subtitle != undefined ? this["\x1e\x04\x1b"].subtitle : "";
      this["\x1c\x13\x02"].text = this["\x1e\x04\x1b"].author != undefined ? this["\x1e\x04\x1b"].author : "";
   }
}
