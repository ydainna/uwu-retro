class dofus.graphics.gapi.§\x17\x01\x06§.BookPageIndex extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "BookPageIndex";
   function BookPageIndex()
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
      super.init(false,dofus.graphics.gapi.controls.BookPageIndex.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
   }
   function addListeners()
   {
      this["\x1d\x06\x0f"].addEventListener("itemSelected",this);
   }
   function initTexts()
   {
      this["\x1c\x19\x07"].text = this.api.lang.getText("TABLE_OF_CONTENTS");
   }
   function §\x1b\x14\x14§()
   {
      this["\x1d\x06\x0f"].dataProvider = this["\x1e\x04\x1b"].chapters;
   }
   function itemSelected(oEvent)
   {
      var _loc3_ = _loc2_.row.item[4];
      this["\x17\x07\x19"]({type:"chapterChange",pageNum:_loc3_});
   }
}
