class dofus.§\x17\x04\x19§.modreport.ModReportCaseCharacterTarget
{
   function ModReportCaseCharacterTarget(aReports, targetPlayerEntityInfos)
   {
      this._aReports = aReports;
      this._targetPlayerEntityInfos = targetPlayerEntityInfos;
   }
   function findReportByUUID(sUUID)
   {
      var _loc3_ = undefined;
      if(this._aReports != undefined)
      {
         var _loc4_ = 0;
         while(_loc4_ < this._aReports.length)
         {
            var _loc5_ = this._aReports[_loc4_];
            if(_loc5_.UUID == sUUID)
            {
               _loc3_ = _loc5_;
               break;
            }
            _loc4_ = _loc4_ + 1;
         }
      }
      return _loc3_;
   }
   function get reports()
   {
      return this._aReports;
   }
   function getReportsToProcessByCategoryIDForUX(§\x19\x04\x0b§)
   {
      var _loc3_ = new ank.utils.ExtendedArray();
      if(this._aReports != undefined)
      {
         var _loc4_ = 0;
         while(_loc4_ < this._aReports.length)
         {
            var _loc5_ = this._aReports[_loc4_];
            if(_loc5_["\x16\x17\r"] == _loc2_)
            {
               var _loc6_ = _loc5_.lastStateChange;
               if(_loc6_.isToProcessState && !_loc5_.isArchived)
               {
                  _loc3_.push(_loc5_.dataGridObject);
               }
            }
            _loc4_ = _loc4_ + 1;
         }
      }
      _loc3_.reverse();
      return _loc3_;
   }
   function getReportsAlreadyProcessedByCategoryIDForUX(§\x19\x04\x0b§)
   {
      var _loc3_ = new ank.utils.ExtendedArray();
      if(this._aReports != undefined)
      {
         var _loc4_ = 0;
         while(_loc4_ < this._aReports.length)
         {
            var _loc5_ = this._aReports[_loc4_];
            if(_loc5_["\x16\x17\r"] == _loc2_)
            {
               var _loc6_ = _loc5_.lastStateChange;
               if(_loc6_.isAlreadyProcessedState || _loc5_.isArchived)
               {
                  _loc3_.push(_loc5_.dataGridObject);
               }
            }
            _loc4_ = _loc4_ + 1;
         }
      }
      _loc3_.reverse();
      return _loc3_;
   }
   function getMassMarkableReportsCount(§\x19\x04\x0b§, sNewState)
   {
      var _loc4_ = 0;
      if(this._aReports != undefined)
      {
         var _loc5_ = 0;
         while(_loc5_ < this._aReports.length)
         {
            var _loc6_ = this._aReports[_loc5_];
            if(_loc6_["\x16\x17\r"] == _loc2_)
            {
               if(!_loc6_.isArchived)
               {
                  var _loc7_ = _loc6_.lastStateChange;
                  var _loc8_ = _loc7_.state;
                  if(!(_loc8_ == dofus.datacenter..modreport.ModReportStates.STATE_INVALID || (_loc8_ == dofus.datacenter..modreport.ModReportStates.STATE_CONFIRMED || _loc8_ == dofus.datacenter..modreport.ModReportStates.STATE_IGNORED)))
                  {
                     if(_loc8_ != sNewState)
                     {
                        _loc4_ = _loc4_ + 1;
                     }
                  }
               }
            }
            _loc5_ = _loc5_ + 1;
         }
      }
      return _loc4_;
   }
   function set reports(aReports)
   {
      this._aReports = aReports;
   }
   function get targetPlayerEntityInfos()
   {
      return this._targetPlayerEntityInfos;
   }
}
