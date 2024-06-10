class dofus.datacenter.ModReportSessionData
{
   static var DEFAULT_DISABLED_REASON_LANG_KEY = "ERROR_226";
   function ModReportSessionData()
   {
   }
   function initialize()
   {
      this._bEnabled = false;
      this._sDisabledReasonLangKey = undefined;
      this._eoModReportCategories = undefined;
   }
   function __get__isEnabled()
   {
      return this._bEnabled && (this._eoModReportCategories != undefined && this._eoModReportCategories["\x17\x1a\x17"]() > 0);
   }
   function __set__isEnabled(§\x16\x0b\t§)
   {
      this._bEnabled = _loc2_;
      return this.isEnabled;
   }
   function get disabledReasonLangKey()
   {
      return this._sDisabledReasonLangKey;
   }
   function get disabledReasonLangKeyWithFallback()
   {
      if(this._sDisabledReasonLangKey == undefined || this._sDisabledReasonLangKey.length == 0)
      {
         return dofus.datacenter.ModReportSessionData.DEFAULT_DISABLED_REASON_LANG_KEY;
      }
      return this._sDisabledReasonLangKey;
   }
   function set disabledReasonLangKey(sDisabledReasonLangKey)
   {
      this._sDisabledReasonLangKey = sDisabledReasonLangKey;
   }
   function get ModReportCategories()
   {
      return this._eoModReportCategories;
   }
   function set ModReportCategories(eoModReportCategories)
   {
      this._eoModReportCategories = eoModReportCategories;
   }
}
