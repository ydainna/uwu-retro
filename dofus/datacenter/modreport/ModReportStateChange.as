class dofus.§\x17\x04\x19§.modreport.ModReportStateChange
{
   function ModReportStateChange(nCreationInstant, sIssuerAccountPseudo, §\x1b\b\x15§, sIssuerCustomNote)
   {
      this._nCreationInstant = nCreationInstant;
      this._sIssuerAccountPseudo = sIssuerAccountPseudo;
      this._sState = _loc4_;
      this._sIssuerCustomNote = sIssuerCustomNote;
   }
   function get creationInstant()
   {
      return this._nCreationInstant;
   }
   function get creationInstantString()
   {
      return new ank.utils.ExtendedDate(this.creationInstant).getFullDateTimeString();
   }
   function get issuerAccountPseudo()
   {
      return this._sIssuerAccountPseudo;
   }
   function §\n\x06§()
   {
      return this._sState;
   }
   function get issuerCustomNote()
   {
      return this._sIssuerCustomNote;
   }
   function get isToProcessState()
   {
      return this.state == dofus.datacenter.modreport.ModReportStates.STATE_PENDING || this.state == dofus.datacenter.modreport.ModReportStates.STATE_STUDYING;
   }
   function get isAlreadyProcessedState()
   {
      return this.state == dofus.datacenter.modreport.ModReportStates.STATE_INVALID || (this.state == dofus.datacenter.modreport.ModReportStates.STATE_CONFIRMED || this.state == dofus.datacenter.modreport.ModReportStates.STATE_IGNORED);
   }
}
