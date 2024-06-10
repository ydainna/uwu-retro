class dofus.graphics.gapi.ui.§\x1a\t\x02§.§\x1a\t\x04§ extends ank.gapi.core.UIBasicComponent
{
   function §\x1a\t\x04§()
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
      this.hideQuestState();
      if(_loc2_)
      {
         this["\x1e\x03\x18"] = _loc4_;
         this["\x1c\x1b\x0f"].text = _loc4_.name;
         if(_loc4_["\x18\r\x17"])
         {
            this["\x1d\t\x13"]._visible = true;
         }
         else if(_loc4_.isAccountQuest)
         {
            if(_loc4_.isRepeatableQuest)
            {
               this._mcCurrentRepeatableAccount._visible = true;
            }
            else
            {
               this._mcCurrentAccount._visible = true;
            }
         }
         else if(_loc4_.isRepeatableQuest)
         {
            this._mcCurrentRepeatable._visible = true;
         }
         else
         {
            this._mcCurrent._visible = true;
         }
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1c\x1b\x0f"].text = "";
         this.hideQuestState();
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
   }
   function hideQuestState()
   {
      this._mcCurrent._visible = false;
      this["\x1d\t\x13"]._visible = false;
      this._mcCurrentAccount._visible = false;
      this._mcCurrentRepeatable._visible = false;
      this._mcCurrentRepeatableAccount._visible = false;
   }
}
