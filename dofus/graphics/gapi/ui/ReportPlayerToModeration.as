class dofus.§\x18\x03\x10§.gapi.ui.ReportPlayerToModeration extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ReportPlayerToModeration";
   static var MAX_COMPLEMENTARY_CHARACTERS_COUNT = 280;
   function ReportPlayerToModeration()
   {
      super();
   }
   function get targetID()
   {
      return this._sTargetID;
   }
   function set targetID(§\x1b\t\x03§)
   {
      this._sTargetID = _loc2_;
   }
   function get targetName()
   {
      return this._sTargetName;
   }
   function set targetName(sTargetName)
   {
      this._sTargetName = sTargetName;
   }
   function get targetIsOffline()
   {
      return this._bTargetIsOffline;
   }
   function set targetIsOffline(bTargetIsOffline)
   {
      this._bTargetIsOffline = bTargetIsOffline;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.ReportPlayerToModeration.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.initData});
   }
   function addListeners()
   {
      this._btnCancel.addEventListener("click",this);
      this._btnClose.addEventListener("click",this);
      this._btnOk.addEventListener("click",this);
      this._btnLinkChatConversation.addEventListener("click",this);
      this["\x1c\t\x1d"].addEventListener("click",this);
      this["\x1e\r\x13"].addEventListener("change",this);
      this["\x1c\f\x19"].addEventListener("itemSelected",this);
      this["\x1c\f\x19"].addEventListener("itemRollOver",this);
      this["\x1c\f\x19"].addEventListener("itemRollOut",this);
      this._btnLinkChatConversation.addEventListener("over",this);
      this._btnLinkChatConversation.addEventListener("out",this);
   }
   function initTexts()
   {
      this._winBackground.title = this.api.lang.getText("REPORT_PLAYER");
      this["\x1d\x02\x14"].text = this.api.lang.getText("REPORTED_PLAYER") + " : " + this._sTargetName;
      this["\x1c\x1d\x1c"].text = this.api.lang.getText("REASON_WORD") + " :";
      this._lblLinkChatConversation.text = this.api.lang.getText("LINK_MY_CHAT_HISTORY");
      this["\x1c\x19\x05"].text = this.api.lang.getText("BLACKLIST_MESSAGE_AUTHOR") + " (" + this.api.lang.getText("BLACKLIST_TEMPORARLY") + ")";
      this["\x1c\x15\x0b"].text = this.api.lang.getText("COMPLEMENTARY_INFOS");
      this._btnOk.label = this.api.lang.getText("VALIDATE");
      this._btnCancel.label = this.api.lang.getText("CANCEL_SMALL");
   }
   function initData()
   {
      if(this._sTargetID == undefined || (this._sTargetName == undefined || this._bTargetIsOffline == undefined))
      {
         this.api.kernel.showMessage(undefined,"*se parle à soi même* faudrait peut être que tu te mettes au café, sis...","ERROR_CHAT");
         this["\x1b\x13\x13"]();
         return undefined;
      }
      this["\x1e\b\f"] = "";
      this["\x1e\r\x13"].maxChars = dofus.graphics.gapi.ui.ReportPlayerToModeration.MAX_COMPLEMENTARY_CHARACTERS_COUNT;
      var _loc2_ = new ank.utils.ExtendedArray();
      var _loc3_ = this.api.datacenter.Player.modReportSessionData.ModReportCategories.getItems();
      var _loc4_ = new ank.utils.ExtendedArray();
      for(var k in _loc3_)
      {
         var _loc5_ = _loc3_[k];
         if(_loc5_ instanceof dofus.datacenter..modreport.ModReportCategory)
         {
            if(_loc5_.isRequiringOfflineCharacter && !this._bTargetIsOffline)
            {
               continue;
            }
            if(_loc5_.isRequiringOnlineCharacter && this._bTargetIsOffline)
            {
               continue;
            }
            _loc4_.push({label:_loc5_.label,id:_loc5_["\x16\x17\r"],value:_loc5_});
         }
      }
      _loc4_.sortOn("label");
      _loc2_.push({id:dofus.datacenter..modreport.ModReportCategory.NOT_A_CATEGORY_ID,label:"(" + this.api.lang.getText("PLEASE_SELECT") + ")"});
      var _loc6_ = 0;
      while(_loc6_ < _loc4_.length)
      {
         _loc2_.push(_loc4_[_loc6_]);
         _loc6_ = _loc6_ + 1;
      }
      this["\x1c\f\x19"].dataProvider = _loc2_;
      this["\x1c\f\x19"].selectedIndex = 0;
      this.updateButtonsVisibilityByCategory(dofus.datacenter..modreport.ModReportCategory.NOT_A_CATEGORY_ID);
   }
   function updateButtonsVisibilityByCategory(§\x19\x04\x0b§, oCategory)
   {
      if(_loc2_ == dofus.datacenter..modreport.ModReportCategory.NOT_A_CATEGORY_ID)
      {
         this["\x1c\t\x1d"]._visible = false;
         this["\x1c\x19\x05"]._visible = false;
         this._btnLinkChatConversation._visible = false;
         this._lblLinkChatConversation._visible = false;
         this["\x1e\r\x13"]._visible = false;
         this["\x1c\x15\x0b"]._visible = false;
         this._btnOk.enabled = false;
         this._taFakeCategory._visible = false;
         this._oCurrentCategory = undefined;
      }
      else
      {
         if(oCategory.isFakeCategory)
         {
            this._taFakeCategory.text = oCategory.fakeCategoryRedirectionText;
         }
         this._taFakeCategory._visible = oCategory.isFakeCategory;
         this["\x1c\t\x1d"]._visible = !oCategory.isFakeCategory;
         this["\x1c\t\x1d"].selected = true;
         this["\x1c\x19\x05"]._visible = !oCategory.isFakeCategory;
         this._btnLinkChatConversation._visible = !oCategory.isFakeCategory && oCategory.isAllowIncludeChatConversation;
         if(this._btnLinkChatConversation._visible)
         {
            this._btnLinkChatConversation.selected = true;
            this._btnLinkChatConversation.disabledStyle = oCategory.isForceIncludeChatConversation;
            this._btnLinkChatConversation.disableClickEvents = this._btnLinkChatConversation.disabledStyle;
         }
         this._lblLinkChatConversation._visible = !oCategory.isFakeCategory && oCategory.isAllowIncludeChatConversation;
         this["\x1e\r\x13"]._visible = !oCategory.isFakeCategory && oCategory.isAllowIncludeCustomText;
         this["\x1c\x15\x0b"]._visible = !oCategory.isFakeCategory && oCategory.isAllowIncludeCustomText;
         this._btnOk.enabled = !oCategory.isFakeCategory;
         this._oCurrentCategory = oCategory;
      }
   }
   function itemSelected(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "\x1c\f\x19")
      {
         var _loc3_ = _loc2_.item;
         this.updateButtonsVisibilityByCategory(_loc3_.id,_loc3_.value);
      }
   }
   function itemRollOver(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.owner._name) === "\x1c\f\x19")
      {
         var _loc3_ = _loc2_.item;
         if(_loc3_.id == dofus.datacenter..modreport.ModReportCategory.NOT_A_CATEGORY_ID)
         {
            this.api.ui.hideTooltip();
         }
         else
         {
            var _loc4_ = _loc3_.value.description;
            if(_loc4_ == undefined || _loc4_.length == 0)
            {
               _loc4_ = this.api.lang.getText("NO_DESCRIPTION_FOR_THIS_CATEGORY");
            }
            this.api.ui.showTooltip(_loc4_,_loc2_.row,-80);
         }
      }
   }
   function itemRollOut(oEvent)
   {
      this.api.ui.hideTooltip();
   }
   function destroy()
   {
   }
   function change(oEvent)
   {
      var _loc3_ = _loc2_.target;
      var _loc0_ = null;
      if((_loc0_ = _loc3_) === this["\x1e\r\x13"])
      {
         this["\x1e\b\f"] = _loc3_.text;
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnOk:
            this.api.kernel.showMessage(undefined,this.api.lang.getText("REPORT_ANOTHER_PLAYER_CONFIRMATION_POPUP"),"CAUTION_YESNO",{name:"MakeReport",listener:this});
            break;
         case this._btnCancel:
         case this._btnClose:
            this["\x1b\x13\x13"]();
      }
   }
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._btnLinkChatConversation)
      {
         var _loc3_ = this.api.lang.getText("LINK_MY_CHAT_HISTORY_TOOLTIP");
         this.api.ui.showTooltip(_loc3_,_loc2_.target,-100);
      }
   }
   function out(oEvent)
   {
      this.api.ui.hideTooltip();
   }
   function yes(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "AskYesNoMakeReport")
      {
         if(this._oCurrentCategory != undefined)
         {
            if(this["\x1c\t\x1d"].selected)
            {
               this.api.kernel.ChatManager["\x16\x01\x03"](this._sTargetName);
               this.api.kernel.showMessage(undefined,this.api.lang.getText("TEMPORARY_BLACKLISTED",[this._sTargetName]),"INFO_CHAT");
            }
            var _loc3_ = this._oCurrentCategory.isAllowIncludeChatConversation && (this._oCurrentCategory.isForceIncludeChatConversation || this._btnLinkChatConversation.selected);
            var _loc4_ = !this._oCurrentCategory.isAllowIncludeCustomText ? "" : this["\x1e\b\f"];
            this.api.network.ModReport.sendCreateReportToModeration(this._sTargetID,this._oCurrentCategory["\x16\x17\r"],_loc3_,_loc4_);
            this["\x1b\x13\x13"]();
         }
      }
   }
}
