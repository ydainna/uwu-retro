class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.§\x16\x0f\x1d§.BookPageIndexChapterItem extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function BookPageIndexChapterItem()
   {
      super();
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      if(_loc2_)
      {
         this["\x1c\x1c\x0f"].text = !_loc2_ ? "" : _loc4_[4];
         var _loc5_ = this["\x1c\x1c\x0f"].textWidth;
         this["\x1c\x14\x1a"].text = !_loc2_ ? "" : _loc4_[0];
         this["\x1c\x14\x1a"]["\x1a\x19\x18"](this["\x1d"] - _loc5_ - 30,this["\x0e\x06"]);
      }
      else if(this["\x1c\x1c\x0f"].text != undefined)
      {
         this["\x1c\x1c\x0f"].text = "";
         this["\x1c\x14\x1a"].text = "";
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
      this["\x1c\x14\x1a"]["\x1a\x19\x18"](this["\x1d"] - 50,this["\x0e\x06"]);
      this["\x1c\x1c\x0f"]["\x1a\x19\x18"](this["\x1d"] - 20,this["\x0e\x06"]);
   }
}
