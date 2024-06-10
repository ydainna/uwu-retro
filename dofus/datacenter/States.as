class dofus.datacenter.States
{
   static var STATE_TEMPORIS_1_NEW_SRAM = 1073;
   static var STATE_TEMPORIS_1_NEW_SRAM_MASS = 1074;
   static var STATE_TEMPORIS_1_NEW_PANDAWA = 1075;
   function States()
   {
   }
   static function onStateAdded(§\x16\x04\x05§, §\x1a\x02\b§, nStateId)
   {
      switch(nStateId)
      {
         case dofus.datacenter.States.STATE_TEMPORIS_1_NEW_SRAM:
            var _loc5_ = _loc3_["\x16\x19\x06"];
            if(_loc5_ != null)
            {
               var _loc6_ = 0 - _loc2_.kernel.TemporisConfigManager.getIntegerValue(dofus.datacenter.TemporisConfigKeys.NEW_SRAM_1_STATE_RESISTANCES_MODIFICATOR);
               _loc5_.setModeratorValue(dofus.managers["\x16\x19\x06"]["\x17\x0b\x11"],_loc6_);
               _loc5_.setModeratorValue(dofus.managers["\x16\x19\x06"]["\x17\x11\f"],_loc6_);
               _loc5_.setModeratorValue(dofus.managers["\x16\x19\x06"]["\x1b\x18\x16"],_loc6_);
               _loc5_.setModeratorValue(dofus.managers["\x16\x19\x06"]["\x16\x02\x04"],_loc6_);
               _loc5_.setModeratorValue(dofus.managers["\x16\x19\x06"]["\x19\x06\x17"],_loc6_);
            }
            break;
         case dofus.datacenter.States.STATE_TEMPORIS_1_NEW_SRAM_MASS:
            var _loc7_ = _loc3_["\x16\x19\x06"];
            if(_loc7_ != null)
            {
               var _loc8_ = 0 - _loc2_.kernel.TemporisConfigManager.getIntegerValue(dofus.datacenter.TemporisConfigKeys.NEW_SRAM_1_STATE_RESISTANCES_MODIFICATOR_MASS);
               _loc7_.setModeratorValue(dofus.managers["\x16\x19\x06"]["\x17\x0b\x11"],_loc8_);
               _loc7_.setModeratorValue(dofus.managers["\x16\x19\x06"]["\x17\x11\f"],_loc8_);
               _loc7_.setModeratorValue(dofus.managers["\x16\x19\x06"]["\x1b\x18\x16"],_loc8_);
               _loc7_.setModeratorValue(dofus.managers["\x16\x19\x06"]["\x16\x02\x04"],_loc8_);
               _loc7_.setModeratorValue(dofus.managers["\x16\x19\x06"]["\x19\x06\x17"],_loc8_);
            }
            break;
         case dofus.datacenter.States.STATE_TEMPORIS_1_NEW_PANDAWA:
            var _loc9_ = _loc3_["\x16\x19\x06"];
            if(_loc9_ != null)
            {
               var _loc10_ = 0 - _loc2_.kernel.TemporisConfigManager.getIntegerValue(dofus.datacenter.TemporisConfigKeys.NEW_PANDAWA_1_FINAL_DAMAGES_BONUSES_PERCENT);
               _loc9_.setModeratorValue(dofus.managers["\x16\x19\x06"].FINAL_DAMAGES_PERCENT,_loc10_);
               break;
            }
      }
   }
   static function onStateRemoved(§\x16\x04\x05§, §\x1a\x02\b§, nStateId)
   {
      switch(nStateId)
      {
         case dofus.datacenter.States.STATE_TEMPORIS_1_NEW_SRAM:
            var _loc5_ = _loc3_["\x16\x19\x06"];
            if(_loc5_ != null)
            {
               var _loc6_ = _loc2_.kernel.TemporisConfigManager.getIntegerValue(dofus.datacenter.TemporisConfigKeys.NEW_SRAM_1_STATE_RESISTANCES_MODIFICATOR);
               _loc5_.setModeratorValue(dofus.managers["\x16\x19\x06"]["\x17\x0b\x11"],_loc6_);
               _loc5_.setModeratorValue(dofus.managers["\x16\x19\x06"]["\x17\x11\f"],_loc6_);
               _loc5_.setModeratorValue(dofus.managers["\x16\x19\x06"]["\x1b\x18\x16"],_loc6_);
               _loc5_.setModeratorValue(dofus.managers["\x16\x19\x06"]["\x16\x02\x04"],_loc6_);
               _loc5_.setModeratorValue(dofus.managers["\x16\x19\x06"]["\x19\x06\x17"],_loc6_);
            }
            break;
         case dofus.datacenter.States.STATE_TEMPORIS_1_NEW_SRAM_MASS:
            var _loc7_ = _loc3_["\x16\x19\x06"];
            if(_loc7_ != null)
            {
               var _loc8_ = _loc2_.kernel.TemporisConfigManager.getIntegerValue(dofus.datacenter.TemporisConfigKeys.NEW_SRAM_1_STATE_RESISTANCES_MODIFICATOR_MASS);
               _loc7_.setModeratorValue(dofus.managers["\x16\x19\x06"]["\x17\x0b\x11"],_loc8_);
               _loc7_.setModeratorValue(dofus.managers["\x16\x19\x06"]["\x17\x11\f"],_loc8_);
               _loc7_.setModeratorValue(dofus.managers["\x16\x19\x06"]["\x1b\x18\x16"],_loc8_);
               _loc7_.setModeratorValue(dofus.managers["\x16\x19\x06"]["\x16\x02\x04"],_loc8_);
               _loc7_.setModeratorValue(dofus.managers["\x16\x19\x06"]["\x19\x06\x17"],_loc8_);
            }
            break;
         case dofus.datacenter.States.STATE_TEMPORIS_1_NEW_PANDAWA:
            var _loc9_ = _loc3_["\x16\x19\x06"];
            if(_loc9_ != null)
            {
               var _loc10_ = _loc2_.kernel.TemporisConfigManager.getIntegerValue(dofus.datacenter.TemporisConfigKeys.NEW_PANDAWA_1_FINAL_DAMAGES_BONUSES_PERCENT);
               _loc9_.setModeratorValue(dofus.managers["\x16\x19\x06"].FINAL_DAMAGES_PERCENT,_loc10_);
               break;
            }
      }
   }
}
