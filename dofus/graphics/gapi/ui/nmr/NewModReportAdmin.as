class dofus.graphics.gapi.ui.nmr.NewModReportAdmin extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "NewModReportAdmin";
   var _nCurrentCaseIndex = 0;
   var _bMinimized = false;
   function NewModReportAdmin()
   {
      super();
   }
   function get isUIMinimized()
   {
      return this._bMinimized;
   }
   function §\x1e\x15\x01§()
   {
      return this._aCases;
   }
   function __set__cases(§\x15\x1b\x0e§)
   {
      this._aCases = _loc2_;
      return this["\x1e\x15\x01"]();
   }
   function get casesBookCurrentPageID()
   {
      return this._nCurrentCaseIndex + 1;
   }
   function get casesBookLastPageID()
   {
      return this._aCases.length;
   }
   function get currentTargetCase()
   {
      return this._aCases[this._nCurrentCaseIndex];
   }
   function get nextTargetCase()
   {
      if(this._nCurrentCaseIndex + 1 >= this._aCases.length)
      {
         return undefined;
      }
      return this._aCases[this._nCurrentCaseIndex + 1];
   }
   function get previousTargetCase()
   {
      if(this._nCurrentCaseIndex == 0)
      {
         return undefined;
      }
      return this._aCases[this._nCurrentCaseIndex - 1];
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.nmr.NewModReportAdmin.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      if(!this._bMinimized)
      {
         this._bMinimized = true;
         this.refreshElementsVisibility();
      }
      return true;
   }
   function closeUI()
   {
      this.api.network.ModReport.sendNMRAdminDestroyed();
      this["\x1b\x13\x13"]();
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.initData});
   }
   function addListeners()
   {
      this._btnActionMarkAllReports.addEventListener("click",this);
      this._btnActionMarkAllReports.addEventListener("over",this);
      this._btnActionMarkAllReports.addEventListener("out",this);
      this._btnActionOpenPlayerPopupMenu.addEventListener("click",this);
      this._btnActionOpenPlayerPopupMenu.addEventListener("over",this);
      this._btnActionOpenPlayerPopupMenu.addEventListener("out",this);
      this._btnExitReportView.addEventListener("click",this);
      this._btnExitReportView.addEventListener("over",this);
      this._btnExitReportView.addEventListener("out",this);
      this._btnNext.addEventListener("click",this);
      this._btnNext.addEventListener("over",this);
      this._btnNext.addEventListener("out",this);
      this._btnOpenReporterPopupMenu.addEventListener("click",this);
      this._btnOpenReporterPopupMenu.addEventListener("over",this);
      this._btnOpenReporterPopupMenu.addEventListener("out",this);
      this._btnPrevious.addEventListener("click",this);
      this._btnPrevious.addEventListener("over",this);
      this._btnPrevious.addEventListener("out",this);
      this._btnAddReportToMakeReport.addEventListener("click",this);
      this._btnClose.addEventListener("click",this);
      this._btnMinimize.addEventListener("click",this);
      this._btnMinimizeSmall.addEventListener("click",this);
      this._dgCategories.addEventListener("itemSelected",this);
      this._dgReportsProcessed.addEventListener("itemSelected",this);
      this._dgReportsProcessed.addEventListener("itemRollOver",this);
      this._dgReportsProcessed.addEventListener("itemRollOut",this);
      this._dgReportsToProcess.addEventListener("itemSelected",this);
      this._dgReportsToProcess.addEventListener("itemRollOver",this);
      this._dgReportsToProcess.addEventListener("itemRollOut",this);
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
   }
   function initTexts()
   {
      this._winBackground.title = "N.M.R Admin";
      this._winBackgroundSmall.title = "N.M.R Admin";
      this._winBackgroundSmall._visible = false;
      this._btnMinimizeSmall._visible = false;
      this._lblContext.text = this.api.lang.getText("NMR_ADMIN_CASE_TARGET_CONTEXT") + " :";
      this._lblSelectedPlayerReport.text = this.api.lang.getText("NMR_ADMIN_SELECTED_PLAYER_REPORT") + " :";
      this._btnPrevious.label = this.api.lang.getText("NMR_ADMIN_PREVIOUS_CASE");
      this._btnNext.label = this.api.lang.getText("NMR_ADMIN_NEXT_CASE");
      this._lblReportsToProcess.text = this.api.lang.getText("NMR_ADMIN_REPORTS_TO_PROCESS") + " :";
      this._lblReportsProcessed.text = this.api.lang.getText("NMR_ADMIN_REPORTS_ALREADY_PROCESSED") + " :";
      this._lblReporterCustomNote.text = this.api.lang.getText("NMR_ADMIN_REPORTER_CUSTOM_NOTE") + " :";
      this._lblReporterContext.text = this.api.lang.getText("NMR_ADMIN_REPORTER_CONTEXT") + " :";
      this._lblReporterLinkedChatConversation.text = this.api.lang.getText("NMR_ADMIN_LINKED_CHAT_CONVERSATION") + " :";
      this._btnExitReportView.label = this.api.lang.getText("NMR_ADMIN_EXIT_REPORT_VIEW");
      this._btnAddReportToMakeReport.label = this.api.lang.getText("NMR_ADMIN_ADD_TO_MOD_REPORT");
   }
   function initData()
   {
      if(this._aCases == undefined || this._aCases.length == 0)
      {
         this.api.kernel.showMessage(undefined,"*pense* le pouvoir des Six Atouts de Napo n\'immunise pas contre les étourderies, prends garde !","ERROR_CHAT");
         this.closeUI();
         return undefined;
      }
      this._dgCategories["\x16\x1d\x12"] = [this.api.lang.getText("NMR_ADMIN_REPORTS_CATEGORY_NAME"),this.api.lang.getText("NMR_ADMIN_REPORTS_COUNT"),this.api.lang.getText("NMR_ADMIN_TOTAL_SCORE")];
      this._dgReportsProcessed["\x16\x1d\x12"] = [this.api.lang.getText("NMR_ADMIN_REPORTER_NAME"),"Score","Note","Chat",this.api.lang.getText("STATE")];
      this._dgReportsToProcess["\x16\x1d\x12"] = [this.api.lang.getText("NMR_ADMIN_REPORTER_NAME"),"Score","Note","Chat",this.api.lang.getText("STATE")];
      this.initCurrentCase();
      this.initCurrentSelectedCategory();
      this.refreshElementsVisibility();
   }
   function initCurrentCase()
   {
      var _loc2_ = this.currentTargetCase;
      var _loc3_ = this.currentTargetCase.targetPlayerEntityInfos;
      this._winBackground.title = "N.M.R Admin - " + _loc3_.characterName + " (" + this.casesBookCurrentPageID + "/" + this.casesBookLastPageID + ")";
      var _loc4_ = new ank.utils.ExtendedArray();
      var _loc5_ = new ank.utils.ExtendedObject();
      var _loc6_ = _loc2_.reports;
      var _loc7_ = 0;
      while(_loc7_ < _loc6_.length)
      {
         var _loc8_ = _loc6_[_loc7_];
         var _loc9_ = dofus.datacenter.modreport.ModReportCategory(this.api.datacenter.Player.modReportSessionData.ModReportCategories.getItemAt(_loc8_["\x16\x17\r"]));
         if(_loc9_ != undefined)
         {
            var _loc10_ = _loc8_.score;
            var _loc11_ = _loc10_ <= 0 ? 0 : 1;
            var _loc12_ = _loc5_.getItemAt(_loc8_["\x16\x17\r"]);
            if(_loc12_ != undefined)
            {
               _loc12_.totalScore += _loc10_;
               _loc12_.totalReportsCount += _loc11_;
            }
            else
            {
               _loc5_.addItemAt(_loc8_["\x16\x17\r"],{id:_loc8_["\x16\x17\r"],categoryName:_loc9_.name,totalScore:_loc10_,totalReportsCount:_loc11_});
            }
         }
         _loc7_ = _loc7_ + 1;
      }
      if(this._selectedModReportCategory != undefined && _loc5_.getItemAt(this._selectedModReportCategory["\x16\x17\r"]) == undefined)
      {
         this._selectedModReportCategory = undefined;
      }
      var _loc13_ = _loc5_.getItems();
      for(var k in _loc13_)
      {
         _loc4_.push(_loc13_[k]);
      }
      _loc4_.sortOn("categoryName");
      this._dgCategories.dataProvider = _loc4_;
      this._btnNext.enabled = this.casesBookCanGoNextPage();
      this._btnPrevious.enabled = this.casesBookCanGoPreviousPage();
      this._btnActionOpenPlayerPopupMenu.label = this.api.lang.getText("NMR_ADMIN_OPEN_ADMIN_MENU_ON_CASE_TARGET") + " (" + (!_loc2_.targetPlayerEntityInfos.isOnline ? "offline" : "online") + ")";
      this._taContext.text = _loc3_.context;
   }
   function initCurrentSelectedCategory()
   {
      var _loc2_ = this._selectedModReportCategory != undefined;
      this._lblSelectedCategory.text = !_loc2_ ? this.api.lang.getText("NMR_ADMIN_PLEASE_SELECT_A_CATEGORY") : this._selectedModReportCategory.name;
      var _loc3_ = new ank.utils.ExtendedArray();
      var _loc4_ = new ank.utils.ExtendedArray();
      if(_loc2_)
      {
         _loc3_ = this.currentTargetCase.getReportsToProcessByCategoryIDForUX(this._selectedModReportCategory["\x16\x17\r"]);
         _loc4_ = this.currentTargetCase.getReportsAlreadyProcessedByCategoryIDForUX(this._selectedModReportCategory["\x16\x17\r"]);
      }
      else
      {
         _loc3_ = new ank.utils.ExtendedArray();
         _loc4_ = new ank.utils.ExtendedArray();
      }
      this._dgReportsToProcess.dataProvider = _loc3_;
      this._dgReportsProcessed.dataProvider = _loc4_;
   }
   function initCurrentSelectedModReportObject()
   {
      var _loc2_ = this._selectedModReportCategory != undefined;
      if(!_loc2_)
      {
         this._selectedModReportObject = undefined;
      }
      var _loc3_ = this._selectedModReportObject != undefined;
      if(_loc3_)
      {
         this._taReporterContext.text = this._selectedModReportObject.reporterPlayerEntityInfos.context;
         this._taReporterCustomNote.text = this._selectedModReportObject.reporterCustomNote;
         this._taReporterLinkedChatConversation.text = this._selectedModReportObject.chatConversation;
         this._btnOpenReporterPopupMenu.label = this.api.lang.getText("NMR_ADMIN_OPEN_ADMIN_MENU_ON_REPORTER") + " (" + (!this._selectedModReportObject.reporterPlayerEntityInfos.isOnline ? "offline" : "online") + ")";
      }
   }
   function refreshElementsVisibility()
   {
      var _loc2_ = this._selectedModReportCategory != undefined;
      var _loc3_ = this._selectedModReportObject != undefined;
      this._btnActionOpenPlayerPopupMenu._visible = !this._bMinimized;
      this._bhReport._visible = !this._bMinimized;
      this._dgCategories._visible = !this._bMinimized && !_loc3_;
      this._lblSelectedCategory._visible = !this._bMinimized;
      this._lblReportsToProcess._visible = !this._bMinimized && _loc2_;
      this._dgReportsToProcess._visible = !this._bMinimized && _loc2_;
      this._lblReportsProcessed._visible = !this._bMinimized && _loc2_;
      this._dgReportsProcessed._visible = !this._bMinimized && _loc2_;
      this._btnActionMarkAllReports._visible = !this._bMinimized && _loc2_;
      this._lblContext._visible = !this._bMinimized && !_loc3_;
      this._taContext._visible = !this._bMinimized && !_loc3_;
      this._btnPrevious._visible = !this._bMinimized;
      this._btnNext._visible = !this._bMinimized;
      this._lblReporterCustomNote._visible = !this._bMinimized && _loc3_;
      this._lblReporterLinkedChatConversation._visible = !this._bMinimized && _loc3_;
      this._taReporterCustomNote._visible = !this._bMinimized && _loc3_;
      this._taReporterLinkedChatConversation._visible = !this._bMinimized && _loc3_;
      this._btnExitReportView._visible = !this._bMinimized && _loc3_;
      this._btnOpenReporterPopupMenu._visible = !this._bMinimized && _loc3_;
      this._btnAddReportToMakeReport._visible = !this._bMinimized && _loc3_;
      this._lblSelectedPlayerReport._visible = !this._bMinimized && _loc3_;
      this._lblReporterContext._visible = !this._bMinimized && _loc3_;
      this._taReporterContext._visible = !this._bMinimized && _loc3_;
      this._btnClose._visible = !this._bMinimized;
      this._btnMinimize._visible = !this._bMinimized;
      this._btnMinimizeSmall._visible = this._bMinimized;
      this._winBackground._visible = !this._bMinimized;
      this._winBackgroundSmall._visible = this._bMinimized;
      if(_loc3_)
      {
         this._btnActionMarkAllReports.label = this.api.lang.getText("NMR_ADMIN_MARK_SELECTED_REPORT");
      }
      else
      {
         this._btnActionMarkAllReports.label = this.api.lang.getText("NMR_ADMIN_MARK_ALL_CATEGORY_REPORTS");
      }
   }
   function casesBookCanGoNextPage()
   {
      return this.nextTargetCase != undefined;
   }
   function casesBookCanGoPreviousPage()
   {
      return this.previousTargetCase != undefined;
   }
   function selectCaseAtIndex(nNewIndex)
   {
      if(this._nCurrentCaseIndex == nNewIndex)
      {
         return undefined;
      }
      this._nCurrentCaseIndex = nNewIndex;
      this._selectedModReportCategory = undefined;
      this._selectedModReportObject = undefined;
      this.initCurrentCase();
      this.initCurrentSelectedCategory();
      this.refreshElementsVisibility();
   }
   function onCasesUpdate(§\x15\x1b\x0e§)
   {
      var _loc3_ = false;
      var _loc4_ = false;
      var _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         var _loc6_ = _loc2_[_loc5_];
         var _loc7_ = false;
         var _loc8_ = 0;
         while(_loc8_ < this._aCases.length)
         {
            var _loc9_ = this._aCases[_loc8_];
            if(_loc9_.targetPlayerEntityInfos.characterID == _loc6_.targetPlayerEntityInfos.characterID)
            {
               if(!_loc4_)
               {
                  _loc4_ = _loc8_ == this._nCurrentCaseIndex;
               }
               this._aCases[_loc8_] = _loc6_;
               _loc7_ = true;
               _loc3_ = true;
               break;
            }
            _loc8_ = _loc8_ + 1;
         }
         if(!_loc7_)
         {
            this._aCases.push(_loc6_);
            _loc3_ = true;
         }
         _loc5_ = _loc5_ + 1;
      }
      if(_loc3_)
      {
         if(_loc4_)
         {
            this._selectedModReportObject = undefined;
         }
         this.initCurrentCase();
         this.initCurrentSelectedCategory();
         this.refreshElementsVisibility();
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnClose:
            this.closeUI();
            break;
         case this._btnMinimize:
         case this._btnMinimizeSmall:
            this._bMinimized = !this._bMinimized;
            this.refreshElementsVisibility();
            break;
         case this._btnActionOpenPlayerPopupMenu:
            var _loc3_ = this.currentTargetCase.targetPlayerEntityInfos;
            this.api.kernel.GameManager["\x1a\x1e\x14"](undefined,{sPlayerID:_loc3_.characterID,sPlayerName:_loc3_.characterName});
            break;
         case this._btnExitReportView:
            this._selectedModReportObject = undefined;
            this.refreshElementsVisibility();
            break;
         case this._btnOpenReporterPopupMenu:
            if(this._selectedModReportObject != undefined)
            {
               var _loc4_ = this._selectedModReportObject.reporterPlayerEntityInfos;
               this.api.kernel.GameManager["\x1a\x1e\x14"](undefined,{sPlayerID:_loc4_.characterID,sPlayerName:_loc4_.characterName});
            }
            break;
         case this._btnNext:
            var _loc5_ = this.nextTargetCase;
            if(_loc5_ == undefined)
            {
               break;
            }
            if(Key.isDown(Key.SHIFT))
            {
               var _loc6_ = this.api.ui["\x17\x02\x19"]();
               var _loc7_ = this._nCurrentCaseIndex + 1;
               while(_loc7_ < this._aCases.length)
               {
                  _loc5_ = this._aCases[_loc7_];
                  _loc6_["\x15\x1d\x12"](_loc5_.targetPlayerEntityInfos.characterName + " (" + (_loc7_ + 1) + "/" + this.casesBookLastPageID + ")",this,this.selectCaseAtIndex,[_loc7_]);
                  _loc7_ = _loc7_ + 1;
               }
               _loc6_.show(_root._xmouse,_root._ymouse);
            }
            else
            {
               this.selectCaseAtIndex(this._nCurrentCaseIndex + 1);
            }
            break;
         case this._btnPrevious:
            var _loc8_ = this.previousTargetCase;
            if(_loc8_ == undefined)
            {
               break;
            }
            if(Key.isDown(Key.SHIFT))
            {
               var _loc9_ = this.api.ui["\x17\x02\x19"]();
               var _loc10_ = this._nCurrentCaseIndex - 1;
               while(_loc10_ >= 0)
               {
                  _loc8_ = this._aCases[_loc10_];
                  _loc9_["\x15\x1d\x12"](_loc8_.targetPlayerEntityInfos.characterName + " (" + (_loc10_ + 1) + "/" + this.casesBookLastPageID + ")",this,this.selectCaseAtIndex,[_loc10_]);
                  _loc10_ = _loc10_ - 1;
               }
               _loc9_.show(_root._xmouse,_root._ymouse);
            }
            else
            {
               this.selectCaseAtIndex(this._nCurrentCaseIndex - 1);
            }
            break;
         case this._btnActionMarkAllReports:
            if(this._selectedModReportCategory != undefined)
            {
               var _loc11_ = this._selectedModReportCategory["\x16\x17\r"];
               var _loc12_ = this.api.ui["\x17\x02\x19"]();
               _loc12_["\x15\x1e\x18"](this._selectedModReportObject == undefined ? this.api.lang.getText("MARK_MASS") : this.api.lang.getText("MARK_INDIVIDUAL"));
               var _loc13_ = 0;
               while(_loc13_ < dofus.datacenter.modreport.ModReportStates.STATES_ARRAY.length)
               {
                  var _loc14_ = dofus.datacenter.modreport.ModReportStates.STATES_ARRAY[_loc13_];
                  if(this._selectedModReportObject != undefined)
                  {
                     var _loc15_ = !this._selectedModReportObject.isArchived && this._selectedModReportObject.lastStateChange.state != _loc14_;
                     _loc12_["\x15\x1d\x12"](_loc14_,this,this.askNMRAdminNonArchivedReportChangeState,[_loc14_],_loc15_);
                  }
                  else
                  {
                     _loc12_["\x15\x1d\x12"](_loc14_,this,this.askNMRAdminNonArchivedReportsChangeState,[_loc14_],this.currentTargetCase.getMassMarkableReportsCount(_loc11_,_loc14_) > 0);
                  }
                  _loc13_ = _loc13_ + 1;
               }
               _loc12_.show(_root._xmouse,_root._ymouse);
            }
            break;
         case this._btnAddReportToMakeReport:
            if(this._selectedModReportCategory != undefined && this._selectedModReportObject != undefined)
            {
               dofus.graphics.gapi.ui.MakeReport.updateDescription(this.api,this._selectedModReportObject.getTextForMakeReportUI(this._selectedModReportCategory));
               break;
            }
      }
   }
   function askNMRAdminNonArchivedReportsChangeState(§\x1b\b\x15§)
   {
      var _loc3_ = this.gapi.loadUIComponent("AskYesNoWithString","AskYesNoWithStringChangeCategoryState",{title:this.api.lang.getText("NMR_ADMIN_ACTION_CHANGE_STATE"),help:this.api.lang.getText("NMR_ADMIN_ACTION_CHANGE_STATE_HELP") + " : " + _loc2_,params:{state:_loc2_}});
      _loc3_.addEventListener("yes",this);
   }
   function askNMRAdminNonArchivedReportChangeState(§\x1b\b\x15§)
   {
      var _loc3_ = this.gapi.loadUIComponent("AskYesNoWithString","AskYesNoWithStringChangeReportState",{title:this.api.lang.getText("NMR_ADMIN_ACTION_CHANGE_STATE"),help:this.api.lang.getText("NMR_ADMIN_ACTION_CHANGE_STATE_HELP") + " : " + _loc2_,params:{state:_loc2_}});
      _loc3_.addEventListener("yes",this);
   }
   function over(oEvent)
   {
      var _loc3_ = "";
      var _loc4_ = -20;
      switch(_loc2_.target)
      {
         case this._btnActionMarkAllReports:
            if(this._selectedModReportObject == undefined)
            {
               _loc4_ -= 10;
               _loc3_ += this.api.lang.getText("NMR_ADMIN_MARK_ALL_CATEGORY_REPORTS");
            }
            break;
         case this._btnExitReportView:
            if(this._selectedModReportCategory == undefined)
            {
               break;
            }
            _loc3_ += this.api.lang.getText("NMR_ADMIN_BACK_TO_CATEGORIES_VIEW");
            break;
         case this._btnNext:
            var _loc5_ = this.nextTargetCase;
            if(_loc5_ == undefined)
            {
               break;
            }
            _loc3_ += this.api.lang.getText("NMR_ADMIN_NEXT_CASE") + " : " + _loc5_.targetPlayerEntityInfos.characterName;
            break;
         case this._btnPrevious:
            var _loc6_ = this.previousTargetCase;
            if(_loc6_ == undefined)
            {
               break;
            }
            _loc3_ += this.api.lang.getText("NMR_ADMIN_PREVIOUS_CASE") + " : " + _loc6_.targetPlayerEntityInfos.characterName;
            break;
         case this._btnActionOpenPlayerPopupMenu:
            var _loc7_ = this.currentTargetCase.targetPlayerEntityInfos;
            _loc3_ += this.api.lang.getText("NMR_ADMIN_ADMIN_MENU_ON") + " : " + _loc7_.characterName;
            break;
         case this._btnOpenReporterPopupMenu:
            if(this._selectedModReportObject != undefined)
            {
               var _loc8_ = this._selectedModReportObject.reporterPlayerEntityInfos;
               _loc3_ += this.api.lang.getText("NMR_ADMIN_ADMIN_MENU_ON") + " : " + _loc8_.characterName;
               break;
            }
      }
      if(_loc3_.length > 0)
      {
         this.gapi.showTooltip(_loc3_,_loc2_.target,_loc4_);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function onShortcut(sShortcut)
   {
      if(_loc2_ == "CODE_NEXT" && this._btnNext.enabled)
      {
         this.click({target:this._btnNext});
         return false;
      }
      if(_loc2_ == "CODE_PREVIOUS" && this._btnPrevious.enabled)
      {
         this.click({target:this._btnPrevious});
         return false;
      }
      return true;
   }
   function yes(oEvent)
   {
      var _loc3_ = _loc2_.inputText;
      switch(_loc2_.target._name)
      {
         case "AskYesNoWithStringChangeCategoryState":
            if(this._selectedModReportCategory == undefined)
            {
               break;
            }
            var _loc4_ = this.currentTargetCase.targetPlayerEntityInfos.characterID;
            var _loc5_ = this._selectedModReportCategory["\x16\x17\r"];
            var _loc6_ = _loc2_.params.state;
            this.api.network.ModReport.sendNMRAdminNonArchivedReportsChangeState(_loc4_,_loc5_,_loc6_,_loc3_);
            break;
         case "AskYesNoWithStringChangeReportState":
            if(this._selectedModReportObject == undefined)
            {
               break;
            }
            var _loc7_ = this.currentTargetCase.targetPlayerEntityInfos.characterID;
            var _loc8_ = _loc2_.params.state;
            this.api.network.ModReport.sendNMRAdminNonArchivedReportChangeState(_loc7_,this._selectedModReportObject.UUID,_loc8_,_loc3_);
            break;
      }
   }
   function itemSelected(oEvent)
   {
      var _loc3_ = _loc2_.row.item;
      switch(_loc2_.target)
      {
         case this._dgCategories:
            this.onModReportCategorySelected(_loc3_.id);
            break;
         case this._dgReportsToProcess:
         case this._dgReportsProcessed:
            this.onModReportObjectSelected(_loc3_.UUID);
      }
   }
   function itemRollOver(oEvent)
   {
      var _loc3_ = "";
      var _loc4_ = -20;
      var _loc5_ = _loc2_.row.item;
      switch(_loc2_.owner)
      {
         case this._dgReportsToProcess:
         case this._dgReportsProcessed:
            var _loc6_ = _loc5_.UUID;
            var _loc7_ = this.currentTargetCase.findReportByUUID(_loc6_);
            if(_loc7_ == undefined)
            {
               break;
            }
            if(_loc7_.isArchived)
            {
               _loc4_ += -10;
               _loc3_ += "ARCHIVED\n";
            }
            var _loc8_ = 0;
            while(_loc8_ < _loc7_.statesChanges.length)
            {
               var _loc9_ = _loc7_.statesChanges[_loc8_];
               if(_loc8_ > 0)
               {
                  _loc4_ += -10;
               }
               _loc3_ += "- " + _loc9_.creationInstantString + " " + _loc9_.state;
               if(_loc9_.issuerAccountPseudo != undefined)
               {
                  _loc3_ += " by " + _loc9_.issuerAccountPseudo;
                  if(_loc9_.issuerCustomNote != undefined && _loc9_.issuerCustomNote.length > 0)
                  {
                     _loc4_ += -10;
                     _loc3_ += " : " + _loc9_.issuerCustomNote;
                  }
               }
               _loc3_ += "\n";
               _loc8_ = _loc8_ + 1;
            }
            _loc3_ = _loc3_.substring(0,_loc3_.length - 1);
            break;
      }
      if(_loc3_.length > 0)
      {
         this.gapi.showTooltip(_loc3_,_loc2_.row,_loc4_);
      }
   }
   function itemRollOut(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function onModReportCategorySelected(§\x19\x04\x0b§)
   {
      var _loc3_ = dofus.datacenter.modreport.ModReportCategory(this.api.datacenter.Player.modReportSessionData.ModReportCategories.getItemAt(_loc2_));
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      this._selectedModReportCategory = _loc3_;
      this._selectedModReportObject = undefined;
      this.initCurrentSelectedCategory();
      this.refreshElementsVisibility();
   }
   function onModReportObjectSelected(sUUID)
   {
      var _loc3_ = this.currentTargetCase.findReportByUUID(sUUID);
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      this._selectedModReportObject = _loc3_;
      this.initCurrentSelectedModReportObject();
      this.refreshElementsVisibility();
   }
}
