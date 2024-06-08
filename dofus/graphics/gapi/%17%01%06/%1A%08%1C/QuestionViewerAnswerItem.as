class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.§\x1a\b\x1c§.QuestionViewerAnswerItem extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function QuestionViewerAnswerItem()
   {
      super();
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      if(_loc2_)
      {
         this["\x1d\x0f\x14"]._visible = true;
         var _loc5_ = _loc4_.label;
         if(dofus.Constants.DEBUG)
         {
            _loc5_ = _loc5_ + " (" + _loc4_.id + ")";
         }
         this["\x1e\x0f\x17"].text = _loc5_;
      }
      else if(this["\x1e\x0f\x17"].text != undefined)
      {
         this["\x1d\x0f\x14"]._visible = false;
         this["\x1e\x0f\x17"].text = "";
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
      this["\x1d\x0f\x14"]._visible = false;
   }
   function size()
   {
      super.size();
   }
}
