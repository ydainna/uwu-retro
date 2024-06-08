class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.BuffViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "BuffViewer";
   function BuffViewer()
   {
      super();
   }
   function §\x16\x0b§(§\x19\x13\x07§)
   {
      this["\x1e\x03\x18"] = _loc2_;
      this.addToQueue({object:this,method:this["\x1a\x1e\x01"],params:[_loc2_]});
      return this["\x01\t"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.BuffViewer.CLASS_NAME);
   }
   function createChildren()
   {
   }
   function §\x1a\x1e\x01§(§\x19\x13\x07§)
   {
      if(_loc2_ != undefined)
      {
         this["\x1c\x1b\x0f"].text = _loc2_.name;
         this["\x1e\x0f\n"].text = _loc2_.description;
         this._ldrIcon.contentPath = _loc2_.iconFile;
         this["\x1d\x06\x17"].dataProvider = _loc2_.effects;
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1c\x1b\x0f"].text = "";
         this["\x1e\x0f\n"].text = "";
         this._ldrIcon.contentPath = "";
         this["\x1d\x06\x17"]["\x1a\x0b\x16"]();
      }
   }
}
