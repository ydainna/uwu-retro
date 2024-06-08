class dofus.§\x18\x03\x10§.gapi.ui.MakeReport extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "MakeReport";
   static var §\x17\x11\x10§ = 0;
   static var §\x17\x0f\x07§ = 1;
   var _bIsDisplayed = true;
   function MakeReport()
   {
      super();
   }
   static function updateDescription(§\x16\x04\x05§, §\x1a\x11\x04§)
   {
      var _loc4_ = _loc2_.datacenter.["\x1b\x0f\b"].Report;
      _loc4_.description = _loc3_;
      var _loc5_ = dofus.graphics.gapi.ui.MakeReport(_loc2_.ui.getUIComponent("MakeReport"));
      if(_loc5_ == undefined)
      {
         _loc2_.kernel.showMessage(undefined,"MakeReport UI not found","COMMANDS_CHAT");
         return undefined;
      }
      _loc5_["\x1b\x14\x01"](true);
   }
   function §\x1e\x1c\x17§()
   {
      return this["\x1c\x01\x18"];
   }
   function §\x15\t§(§\x16\b\x14§)
   {
      this["\x1c\x01\x18"] = _loc2_;
      return this["\x1e\x1c\x17"]();
   }
   function §\n\x1c§()
   {
      return this["\x1e\r\x01"];
   }
   function §\x1e\x03§(§\x1b\r\x1d§)
   {
      this["\x1e\r\x01"] = _loc2_;
      return this["\n\x1c"]();
   }
   function §\x1e\x18\r§()
   {
      return this["\x1e\t\x05"];
   }
   function §\x12\x06§(§\x17\x07\x06§)
   {
      this["\x1e\t\x05"] = _loc2_;
      return this["\x1e\x18\r"]();
   }
   function get complementary()
   {
      return this["\x1e\b\f"];
   }
   function set complementary(§\x1a\x10\x1c§)
   {
      this["\x1e\b\f"] = _loc2_;
   }
   function §\x01\x0f§()
   {
      return this["\x1e\n\x0b"];
   }
   function §\x16\x10§(§\x1b\x02\x03§)
   {
      this["\x1e\n\x0b"] = _loc2_;
      return this["\x01\x0f"]();
   }
   function §\x06\t§()
   {
      return this["\x1e\x0b\x15"];
   }
   function §\x1a\n§(§\x1a\x04\x15§)
   {
      this["\x1e\x0b\x15"] = _loc2_;
      return this["\x06\t"]();
   }
   function §\x1e\x1a\x0f§()
   {
      return this["\x1e\t\x13"];
   }
   function §\x13\x12§(§\x17\x11\b§)
   {
      this["\x1e\t\x13"] = _loc2_;
      return this["\x1e\x1a\x0f"]();
   }
   function §\x07\x0e§()
   {
      return this["\x1e\f\x06"];
   }
   function §\x1b\t§(§\x1a\n\b§)
   {
      this["\x1e\f\x06"] = _loc2_;
      return this["\x07\x0e"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.MakeReport.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
   }
   function addListeners()
   {
      this._btnCancel.addEventListener("click",this);
      this._btnClose.addEventListener("click",this);
      this._btnOk.addEventListener("click",this);
      this._btnHide.addEventListener("click",this);
      this["\x1c\x0b\x05"].addEventListener("click",this);
      this["\x1e\r\x15"].addEventListener("change",this);
      this["\x1e\r\x13"].addEventListener("change",this);
      this["\x1e\r\x16"].addEventListener("change",this);
      this["\x1e\r\x17"].addEventListener("change",this);
      this["\x1e\r\x1a"].addEventListener("change",this);
      this["\x1e\x0e\x19"].addEventListener("change",this);
   }
   function initTexts()
   {
      this._winBackground.title = "Make Report";
      this._winBackgroundSmall.title = "Make Report";
      this._winBackgroundSmall._visible = false;
      this["\x1d\x02\x14"].text = "Target(s) :";
      this["\x1c\x1d\x1c"].text = "Reason :";
      this["\x1c\x16\x17"].text = "Description :";
      this["\x1c\x19\x16"].text = "Jail dialog :";
      this["\x1c\x15\x0b"].text = "Comments :";
      this["\x1c\x12\f"].text = "All Accounts : " + (!this["\x1c\x01\x18"] ? "No" : "Yes");
      this._btnOk.label = "Validate";
      this._btnCancel.label = "Cancel";
      this["\x1c\x0b\x05"].label = "Switch view";
      this["\x1c\x17\x1b"].text = "Find Accounts :";
      this["\x1c\x1c\x15"].text = "Penal :";
   }
   function §\x18\t\x14§()
   {
      this["\x1d\x02\x15"].text = this["\x1e\r\x01"];
      this["\x1e\r\x15"].text = this["\x1e\t\x05"];
      this["\x1e\r\x13"].text = this["\x1e\b\f"];
      this["\x1e\r\x16"].text = this["\x1e\t\x13"];
      this["\x1e\r\x17"].text = this["\x1e\n\x0b"];
      this["\x1e\r\x1a"].text = this["\x1e\x0b\x15"];
      this["\x1e\x0e\x19"].text = this["\x1e\f\x06"];
      this["\x1b\x01\x11"](dofus.graphics.gapi.ui.MakeReport["\x17\x11\x10"]);
      var _loc2_ = dofus.graphics.gapi.ui.nmr.NewModReportAdmin(this.api.ui.getUIComponent("NewModReportAdmin"));
      if(_loc2_ != undefined && !_loc2_.isUIMinimized)
      {
         this.windowHidder();
      }
   }
   function §\x1b\x01\x11§(§\x19\x10\x12§)
   {
      var _loc3_ = _loc2_ == dofus.graphics.gapi.ui.MakeReport["\x17\x11\x10"];
      this["\x1d\x02\x14"]._visible = _loc3_;
      this["\x1e\x0e\x19"]._visible = _loc3_;
      this["\x1c\x1d\x1c"]._visible = _loc3_;
      this["\x1c\x16\x17"]._visible = _loc3_;
      this["\x1e\r\x15"]._visible = _loc3_;
      this["\x1c\x15\x0b"]._visible = _loc3_;
      this["\x1e\r\x13"]._visible = _loc3_;
      this["\x1c\x12\f"]._visible = _loc3_;
      this["\x1d\x02\x15"]._visible = _loc3_;
      this["\x1d\x10\x18"]._visible = _loc3_;
      var _loc4_ = _loc2_ == dofus.graphics.gapi.ui.MakeReport["\x17\x0f\x07"];
      this["\x1c\x1c\x15"]._visible = _loc4_;
      this["\x1c\x17\x1b"]._visible = _loc4_;
      this["\x1c\x19\x16"]._visible = _loc4_;
      this["\x1e\r\x16"]._visible = _loc4_;
      this["\x1e\r\x17"]._visible = _loc4_;
      this["\x1e\r\x1a"]._visible = _loc4_;
      this["\x1d\x15\x07"] = _loc2_;
   }
   function makeReport()
   {
      if(!this.api.electron.enabled)
      {
         this.api.kernel.showMessage(undefined,"This feature is not compatible on a Flash Projector","ERROR_CHAT");
         return undefined;
      }
      if(this["\x1e\r\x01"] == undefined || this["\x1e\r\x01"].length < 1)
      {
         this.api.kernel.showMessage(undefined,"Target(s) cannot be empty","ERROR_CHAT");
         return undefined;
      }
      if(this["\x1e\f\x06"] == undefined || this["\x1e\f\x06"].length < 1)
      {
         this.api.kernel.showMessage(undefined,"Reason cannot be empty","ERROR_CHAT");
         return undefined;
      }
      if(this["\x1e\x0b\x15"] == undefined || this["\x1e\x0b\x15"].length < 1)
      {
         this.api.kernel.showMessage(undefined,"Penal cannot be empty","ERROR_CHAT");
         return undefined;
      }
      var _loc2_ = this.api.datacenter.["\x1b\x0f\b"].Report;
      var _loc3_ = _loc2_.targetAccountPseudo;
      var _loc4_ = _loc2_.targetAccountId;
      var _loc5_ = _loc2_.sanctionnatedAccounts;
      this.api.electron.makeReport(this["\x1e\f\x06"],_loc3_,_loc4_,_loc5_,this["\x1e\t\x05"],this["\x1e\t\x13"],this["\x1e\x0b\x15"],this["\x1e\n\x0b"],this["\x1e\b\f"]);
      this["\x1b\x13\x13"]();
   }
   function §\x1b\x14\x01§(bPrintFeedback)
   {
      if(this["\x1d\x1b\x19"] != undefined)
      {
         _global.clearTimeout(this["\x1d\x1b\x19"]);
      }
      var _loc3_ = _global.setTimeout(this,"updateVisually",500,bPrintFeedback);
      this["\x1d\x1b\x19"] = _loc3_;
   }
   function updateVisually(bPrintFeedback)
   {
      var _loc3_ = this.api.datacenter.["\x1b\x0f\b"].Report;
      this["\x1e\r\x01"] = _loc3_.targetPseudos;
      this["\x1d\x02\x15"].text = this["\x1e\r\x01"];
      if(_loc3_.description != undefined)
      {
         if(this["\x1e\r\x15"].text.length == 0)
         {
            this["\x1e\t\x05"] = this["\x1e\r\x15"]["\x1b\x0f\x1a"].htmlText + _loc3_.description;
         }
         else
         {
            this["\x1e\t\x05"] = this["\x1e\r\x15"]["\x1b\x0f\x1a"].htmlText + "\n" + _loc3_.description;
         }
         this["\x1e\r\x15"].text = this["\x1e\t\x05"];
         _loc3_.description = undefined;
      }
      if(_loc3_.complementary != undefined)
      {
         if(this["\x1e\r\x13"].text.length == 0)
         {
            this["\x1e\b\f"] = this["\x1e\r\x13"]["\x1b\x0f\x1a"].htmlText + _loc3_.complementary;
         }
         else
         {
            this["\x1e\b\f"] = this["\x1e\r\x13"]["\x1b\x0f\x1a"].htmlText + "\n" + _loc3_.complementary;
         }
         this["\x1e\r\x13"].text = this["\x1e\b\f"];
         _loc3_.complementary = undefined;
      }
      if(_loc3_.penal != undefined)
      {
         if(this["\x1e\r\x1a"].text.length == 0)
         {
            this["\x1e\x0b\x15"] = this["\x1e\r\x1a"]["\x1b\x0f\x1a"].htmlText + _loc3_.penal;
         }
         else
         {
            this["\x1e\x0b\x15"] = this["\x1e\r\x1a"]["\x1b\x0f\x1a"].htmlText + "\n" + _loc3_.penal;
         }
         this["\x1e\r\x1a"].text = this["\x1e\x0b\x15"];
         _loc3_.penal = undefined;
      }
      if(_loc3_.findAccounts != undefined)
      {
         this["\x1e\t\x13"] = this["\x1e\r\x16"]["\x1b\x0f\x1a"].htmlText + "\n" + _loc3_.findAccounts;
         this["\x1e\r\x16"].text = this["\x1e\t\x13"];
         _loc3_.findAccounts = undefined;
      }
      if(bPrintFeedback)
      {
         this.api.kernel.showMessage(undefined,"Report updated","COMMANDS_CHAT");
      }
   }
   function windowHidder()
   {
      if(this._bIsDisplayed)
      {
         this._bIsDisplayed = false;
         this._btnHide.backgroundDown = "ButtonMaximizeDown";
         this._btnHide.backgroundUp = "ButtonMaximizeUp";
         this._btnHide.styleName = "OrangeButton";
         this._btnHide._x = 122;
         this._btnHide._y = 418;
      }
      else
      {
         this._bIsDisplayed = true;
         this._btnHide.backgroundDown = "ButtonMinimizeDown";
         this._btnHide.backgroundUp = "ButtonMinimizeUp";
         this._btnHide.styleName = "OrangeButton";
         this._btnHide._x = 694;
         this._btnHide._y = 43.95;
      }
      this._bhReport._visible = this._bIsDisplayed;
      this._btnCancel._visible = this._bIsDisplayed;
      this._btnClose._visible = this._bIsDisplayed;
      this["\x1c\x0b\x05"]._visible = this._bIsDisplayed;
      this._btnOk._visible = this._bIsDisplayed;
      this._winBackground._visible = this._bIsDisplayed;
      this._winBackgroundSmall._visible = !this._bIsDisplayed;
      this._bhReport._visible = this._bIsDisplayed;
      if(this["\x1d\x15\x07"] == dofus.graphics.gapi.ui.MakeReport["\x17\x11\x10"])
      {
         this["\x1d\x02\x14"]._visible = this._bIsDisplayed;
         this["\x1d\x02\x15"]._visible = this._bIsDisplayed;
         this["\x1c\x1d\x1c"]._visible = this._bIsDisplayed;
         this["\x1c\x12\f"]._visible = this._bIsDisplayed;
         this["\x1c\x16\x17"]._visible = this._bIsDisplayed;
         this["\x1c\x15\x0b"]._visible = this._bIsDisplayed;
         this["\x1e\x0e\x19"]._visible = this._bIsDisplayed;
         this["\x1e\r\x15"]._visible = this._bIsDisplayed;
         this["\x1e\r\x13"]._visible = this._bIsDisplayed;
         this["\x1d\x10\x18"]._visible = this._bIsDisplayed;
      }
      else
      {
         this["\x1c\x1c\x15"]._visible = this._bIsDisplayed;
         this["\x1c\x19\x16"]._visible = this._bIsDisplayed;
         this["\x1c\x17\x1b"]._visible = this._bIsDisplayed;
         this["\x1e\r\x1a"]._visible = this._bIsDisplayed;
         this["\x1e\r\x17"]._visible = this._bIsDisplayed;
         this["\x1e\r\x16"]._visible = this._bIsDisplayed;
      }
   }
   function destroy()
   {
      this.api.datacenter.["\x1b\x0f\b"].Report = undefined;
   }
   function change(oEvent)
   {
      var _loc3_ = _loc2_.target;
      switch(_loc3_)
      {
         case this["\x1e\r\x13"]:
            this["\x1e\b\f"] = _loc3_.text;
            break;
         case this["\x1e\r\x15"]:
            this["\x1e\t\x05"] = _loc3_.text;
            break;
         case this["\x1e\r\x16"]:
            this["\x1e\t\x13"] = _loc3_.text;
            break;
         case this["\x1e\r\x1a"]:
            this["\x1e\x0b\x15"] = _loc3_.text;
            break;
         case this["\x1e\x0e\x19"]:
            this["\x1e\f\x06"] = _loc3_.text;
            break;
         case this["\x1e\r\x17"]:
            this["\x1e\n\x0b"] = _loc3_.text;
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnHide:
            this.windowHidder();
            break;
         case this._btnOk:
            this.api.kernel.showMessage(undefined,"Validate the current report ?","CAUTION_YESNO",{name:"MakeReport",listener:this});
            break;
         case this._btnCancel:
         case this._btnClose:
            this.api.kernel.showMessage(undefined,"Are you sure you want to close this window ? \n\n(Warning ! The current report will be deleted)","CAUTION_YESNO",{name:"CloseWindow",listener:this});
            break;
         case this["\x1c\x0b\x05"]:
            var _loc3_ = this["\x1d\x15\x07"] != dofus.graphics.gapi.ui.MakeReport["\x17\x11\x10"] ? dofus.graphics.gapi.ui.MakeReport["\x17\x11\x10"] : dofus.graphics.gapi.ui.MakeReport["\x17\x0f\x07"];
            this["\x1b\x01\x11"](_loc3_);
      }
   }
   function yes(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "AskYesNoMakeReport":
            this.makeReport();
            break;
         case "AskYesNoCloseWindow":
            this["\x1b\x13\x13"]();
      }
   }
}
