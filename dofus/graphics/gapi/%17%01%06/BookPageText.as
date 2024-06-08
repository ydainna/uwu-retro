class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.BookPageText extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "BookPageText";
   function BookPageText()
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
      super.init(false,dofus.graphics.gapi.controls.BookPageText.CLASS_NAME);
   }
   function createChildren()
   {
      this["\x1e\x0f\x13"].wordWrap = true;
      this["\x1e\x0f\x13"].multiline = true;
      this["\x1e\x0f\x13"].embedFonts = true;
      this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
   }
   function §\x1b\x14\x14§()
   {
      this["\x1a\x15\x18"](this["\x1e\x04\x1b"].cssFile);
   }
   function §\x1a\x15\x18§(§\x1a\x11\x18§)
   {
      var _loc3_ = new TextField.StyleSheet();
      _loc3_.owner = this;
      _loc3_.onLoad = function()
      {
         this.owner["\x18\x13\x14"](this);
      };
      _loc3_.load(_loc2_);
   }
   function §\x18\x13\x14§(§\x1b\b\x14§)
   {
      this["\x1e\x0f\x13"].styleSheet = _loc2_;
      this["\x1e\x0f\x13"].htmlText = this["\x1e\x04\x1b"].text;
   }
}
