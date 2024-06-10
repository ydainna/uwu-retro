class dofus.graphics.gapi.ui.nmr.ModReportCategoryItem extends ank.gapi.core.UIBasicComponent
{
   function ModReportCategoryItem()
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
         this["\x1e\x03\x18"] = _loc4_;
         this["\x1c\x1b\x0f"].text = _loc4_.categoryName;
         this._lblTotalReportsCount.text = String(_loc4_.totalReportsCount);
         this._lblTotalScore.text = String(_loc4_.totalScore);
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1c\x1b\x0f"].text = "";
         this._lblTotalReportsCount.text = "";
         this._lblTotalScore.text = "";
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
   }
}
