class dofus.datacenter.HuntMatchmakingStatus
{
   function HuntMatchmakingStatus(§\x16\b\x0f§, sCurrentStatus)
   {
      this._bActive = _loc2_;
      this._sCurrentStatus = sCurrentStatus;
   }
   function get isActive()
   {
      return this._bActive;
   }
   function get currentStatus()
   {
      return this._sCurrentStatus;
   }
}
