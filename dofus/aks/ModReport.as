class dofus.aks.ModReport extends dofus.aks.Handler
{
   function ModReport(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function sendCreateReportToModeration(sCharacterID, §\x19\x04\x0b§, bLinkChatConversation, sNote)
   {
      if(sNote == undefined)
      {
         sNote = "";
      }
      this.aks.send("mC" + super.getSerializedArgs([_loc3_,_loc4_,bLinkChatConversation,sNote]),true,undefined,true);
   }
   function sendNMRAdminNonArchivedReportsChangeState(sCharacterID, §\x19\x04\x0b§, §\x1b\b\x15§, sNote)
   {
      if(sNote == undefined)
      {
         sNote = "";
      }
      this.aks.send("mS" + super.getSerializedArgs([_loc3_,_loc4_,_loc5_,sNote]),true,undefined,true);
   }
   function sendNMRAdminNonArchivedReportChangeState(sCharacterID, sReportUUID, §\x1b\b\x15§, sNote)
   {
      if(sNote == undefined)
      {
         sNote = "";
      }
      this.aks.send("ms" + super.getSerializedArgs([_loc3_,sReportUUID,_loc5_,sNote]),true,undefined,true);
   }
   function sendNMRAdminDestroyed()
   {
      this.aks.send("mD");
   }
   function onCreationSuccess(sExtraData)
   {
      this.api.kernel.showMessage(undefined,this.api.lang.getText("REPORT_TO_MODERATION_CREATION_SUCCESS"),"INFO_CHAT");
   }
   function onCreationError(sExtraData)
   {
      this.api.kernel.showMessage(undefined,this.api.lang.getText("REPORT_TO_MODERATION_CREATION_ERROR_" + _loc2_),"ERROR_CHAT");
   }
   function onCasesList(sExtraData)
   {
      var _loc3_ = new Array();
      var _loc4_ = _loc2_.split(dofus.aks.Handler.CONSOLE_ARGS_SAFE_SPLIT);
      var _loc5_ = 0;
      while(_loc5_ < _loc4_.length)
      {
         var _loc6_ = _loc4_[_loc5_].split(dofus.aks.Handler.CONSOLE_DEPTH_ONE_ARGS_SAFE_SPLIT);
         var _loc7_ = new Array();
         var _loc8_ = new dofus.datacenter..modreport.ModReportPlayerEntityInfos(_loc6_[0],_loc6_[1],_loc6_[2],_loc6_[3] == "1",_loc6_[4]);
         var _loc9_ = _loc6_[5].length <= 0 ? undefined : _loc6_[5];
         if(_loc9_ != undefined)
         {
            var _loc10_ = _loc9_.split(dofus.aks.Handler.CONSOLE_DEPTH_TWO_ARGS_SAFE_SPLIT);
            var _loc11_ = 0;
            while(_loc11_ < _loc10_.length)
            {
               var _loc12_ = _loc10_[_loc11_].split(dofus.aks.Handler.CONSOLE_DEPTH_THREE_ARGS_SAFE_SPLIT);
               var _loc13_ = new dofus.datacenter..modreport.ModReportPlayerEntityInfos(_loc12_[0],_loc12_[1],_loc12_[2],_loc12_[3] == "1",_loc12_[4]);
               var _loc14_ = new Array();
               _loc14_.push(new dofus.datacenter..modreport.ModReportStateChange(Number(_loc12_[7]),undefined,dofus.datacenter..modreport.ModReportStates.STATE_PENDING));
               var _loc15_ = _loc12_[12].length <= 0 ? undefined : _loc12_[12];
               if(_loc15_ != undefined)
               {
                  var _loc16_ = _loc15_.split(dofus.aks.Handler.CONSOLE_DEPTH_FOUR_ARGS_SAFE_SPLIT);
                  var _loc17_ = 0;
                  while(_loc17_ < _loc16_.length)
                  {
                     var _loc18_ = _loc16_[_loc17_].split(dofus.aks.Handler.CONSOLE_DEPTH_FIVE_ARGS_SAFE_SPLIT);
                     var _loc19_ = _loc18_.length <= 3 ? undefined : _loc18_[3];
                     var _loc20_ = new dofus.datacenter..modreport.ModReportStateChange(Number(_loc18_[0]),_loc18_[1],_loc18_[2],_loc19_);
                     _loc14_.push(_loc20_);
                     _loc17_ = _loc17_ + 1;
                  }
               }
               var _loc21_ = new dofus.datacenter..modreport.ModReportObject(_loc12_[5],Number(_loc12_[6]),_loc13_,_loc12_[8],_loc12_[9],Number(_loc12_[10]),_loc12_[11] == "1",_loc14_);
               _loc7_.push(_loc21_);
               _loc11_ = _loc11_ + 1;
            }
         }
         var _loc22_ = new dofus.datacenter..modreport.ModReportCaseCharacterTarget(_loc7_,_loc8_);
         _loc3_.push(_loc22_);
         _loc5_ = _loc5_ + 1;
      }
      if(_loc3_.length > 0)
      {
         var _loc23_ = dofus.graphics.gapi.ui.nmr.NewModReportAdmin(this.api.ui.getUIComponent("NewModReportAdmin"));
         if(_loc23_ == undefined)
         {
            this.api.ui.loadUIComponent("NewModReportAdmin","NewModReportAdmin",{§\x16\x17\x07§:_loc3_});
         }
         else
         {
            _loc23_.onCasesUpdate(_loc3_);
         }
      }
   }
   function onInfos(sExtraData)
   {
      this.api.ui.unloadUIComponent("ReportPlayerToModeration");
      var _loc3_ = this.api.datacenter.Player.modReportSessionData;
      var _loc4_ = new ank.utils.["\x17\x0e\r"]();
      var _loc5_ = _loc2_.split(dofus.aks.Handler.CONSOLE_ARGS_SAFE_SPLIT);
      var _loc6_ = _loc5_[0];
      var _loc7_ = _loc6_.split(dofus.aks.Handler.CONSOLE_DEPTH_ONE_ARGS_SAFE_SPLIT);
      var _loc8_ = _loc7_[0] == "1";
      var _loc9_ = undefined;
      if(_loc8_)
      {
         var _loc10_ = 1;
         while(_loc10_ < _loc5_.length)
         {
            var _loc11_ = _loc5_[_loc10_].split(dofus.aks.Handler.CONSOLE_DEPTH_ONE_ARGS_SAFE_SPLIT);
            var _loc12_ = Number(_loc11_[0]);
            var _loc13_ = _loc11_[1];
            var _loc14_ = _loc11_[2];
            var _loc15_ = _loc11_[3] == "1";
            var _loc16_ = _loc11_[4] == "1";
            var _loc17_ = _loc11_[5] == "1";
            var _loc18_ = _loc11_[6] == "1";
            var _loc19_ = _loc11_[7] == "1";
            var _loc20_ = _loc11_[8] == "1";
            var _loc21_ = _loc11_[9];
            var _loc22_ = new dofus.datacenter..modreport.ModReportCategory(_loc12_,_loc13_,_loc14_,_loc15_,_loc16_,_loc17_,_loc18_,_loc19_,_loc20_,_loc21_);
            _loc4_["\x15\x1d\x13"](_loc12_,_loc22_);
            _loc10_ = _loc10_ + 1;
         }
      }
      else if(_loc7_.length > 1)
      {
         _loc9_ = _loc7_[1];
      }
      _loc3_.isEnabled = _loc8_;
      _loc3_.disabledReasonLangKey = _loc9_;
      if(_loc4_["\x17\x1a\x17"]() == 0)
      {
         _loc3_.ModReportCategories = undefined;
      }
      else
      {
         _loc3_.ModReportCategories = _loc4_;
      }
   }
}
