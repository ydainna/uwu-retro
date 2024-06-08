class dofus.§\x18\x03\x10§.gapi.ui.ItemFound extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ItemFound";
   var §\x1d\x1e\r§ = 0;
   function ItemFound()
   {
      super();
   }
   function §\x16\f§(§\x19\b\n§)
   {
      this["\x1d\x17\n"] = _loc2_;
      return this.itemId;
   }
   function §\x1a\x18§(§\x19\f\x15§)
   {
      this["\x1d\x1b\x11"] = _loc2_;
      return this.qty;
   }
   function §\x1b\x12§(§\x19\r\x10§)
   {
      this["\x1d\x1c\x02"] = _loc2_;
      return this.ressourceId;
   }
   function §\x1e\n§(§\x19\x0f\x1a§)
   {
      this["\x1d\x1e\r"] = _loc2_;
      return this.timer;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.ItemFound.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      if(this["\x1d\x1e\r"] != 0)
      {
         ank.utils.Timer.setTimer(this,"itemFound",this,this.hide,this["\x1d\x1e\r"]);
      }
   }
   function initTexts()
   {
      var _loc2_ = new dofus.datacenter.["\x18\x10\x15"](0,this["\x1d\x17\n"],this["\x1d\x1b\x11"]);
      var _loc3_ = new dofus.datacenter.["\x18\x10\x15"](0,this["\x1d\x1c\x02"],1);
      this._ldrItem.contentPath = _loc2_.iconFile;
      this["\x1e\x0f\n"].text = this.api.lang.getText("ITEM_FOUND",[this["\x1d\x1b\x11"],_loc2_.name,_loc3_.name]);
   }
   function hide()
   {
      this._alpha -= 5;
      if(this._alpha < 1)
      {
         this["\x1b\x13\x13"]();
         return undefined;
      }
      this.addToQueue({object:this,method:this.hide});
   }
}
