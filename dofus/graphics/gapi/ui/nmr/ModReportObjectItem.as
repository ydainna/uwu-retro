class dofus.§\x18\x03\x10§.gapi.ui.nmr.ModReportObjectItem extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function ModReportObjectItem()
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
         this._lblReporterName.text = _loc4_.reporterName;
         this._lblScore.text = String(_loc4_.score);
         if(_loc4_.hasChatConversation)
         {
            this._ldrHasChatConversationIcon.contentPath = "UI_QuestsBubble";
         }
         else
         {
            this._ldrHasChatConversationIcon.contentPath = "";
         }
         if(_loc4_.hasCustomNote)
         {
            this._ldrHasCustomNoteIcon.contentPath = "Edit";
         }
         else
         {
            this._ldrHasCustomNoteIcon.contentPath = "";
         }
         switch(_loc4_.currentState)
         {
            case dofus.datacenter.modreport.ModReportStates.STATE_CONFIRMED:
               this._ldrCurrentState.contentPath = "NewValid";
               break;
            case dofus.datacenter.modreport.ModReportStates.STATE_INVALID:
               this._ldrCurrentState.contentPath = "NewCross";
               break;
            case dofus.datacenter.modreport.ModReportStates.STATE_STUDYING:
               this._ldrCurrentState.contentPath = "Loupe";
               break;
            case dofus.datacenter.modreport.ModReportStates.STATE_PENDING:
            case dofus.datacenter.modreport.ModReportStates.STATE_IGNORED:
               this._ldrCurrentState.contentPath = "";
         }
      }
      else if(this._lblReporterName.text != undefined)
      {
         this._lblReporterName.text = "";
         this._lblScore.text = "";
         this._ldrCurrentState.contentPath = "";
         this._ldrHasChatConversationIcon.contentPath = "";
         this._ldrHasCustomNoteIcon.contentPath = "";
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
   }
}
