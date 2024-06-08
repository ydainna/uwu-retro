class dofus.§\x18\x03\x10§.gapi.ui.AskReportMessage extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "AskReportMessage";
   function AskReportMessage()
   {
      super();
   }
   function §\x03\x18§()
   {
      return this["\x1e\x0b\x02"];
   }
   function §\x18\x10§(§\x19\x02\x01§)
   {
      this["\x1e\x0b\x02"] = _loc2_;
      return this["\x03\x18"]();
   }
   function §\x03\x19§()
   {
      return this["\x1e\x0b\x03"];
   }
   function §\x18\x11§(§\x18\b\f§)
   {
      this["\x1e\x0b\x03"] = _loc2_;
      return this["\x03\x19"]();
   }
   function §\x1e\x15\x0e§()
   {
      return this["\x1e\b\x05"];
   }
   function §\x10\x0e§(§\x18\b\f§)
   {
      this["\x1e\b\x05"] = _loc2_;
      return this["\x1e\x15\x0e"]();
   }
   function §\x1e\x12\x13§()
   {
      return this["\x1e\b\x06"];
   }
   function §\x0f\x03§(§\x18\b\f§)
   {
      this["\x1e\b\x06"] = _loc2_;
      return this["\x1e\x12\x13"]();
   }
   function §\x1e\x12\x14§()
   {
      return this["\x1e\b\x07"];
   }
   function §\x0f\x04§(§\x19\x03\t§)
   {
      this["\x1e\b\x07"] = _loc2_;
      return this["\x1e\x12\x14"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.AskReportMessage.CLASS_NAME);
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
      this._btnOk.addEventListener("click",this);
   }
   function initTexts()
   {
      this._winBackground.title = this.api.lang.getText("REPORT_A_SENTANCE");
      this["\x1c\x18\t"].text = this.api.lang.getText("GONNA_REPORT_THIS_MESSAGE");
      this["\x1c\x1d\x1c"].text = this.api.lang.getText("REASON_WORD") + ":";
      this["\x1c\x19\x05"].text = this.api.lang.getText("BLACKLIST_MESSAGE_AUTHOR");
      this._btnOk.label = this.api.lang.getText("VALIDATE");
      this._btnCancel.label = this.api.lang.getText("CANCEL_SMALL");
   }
   function §\x18\t\x14§()
   {
      this["\x1e\r\x18"].text = this["\x1e\x0b\x02"].split("<br/>").join("");
      this["\x1c\t\x1d"].selected = true;
      var _loc2_ = new ank.utils.ExtendedArray();
      var _loc3_ = this.api.lang["\x17\x13\x13"]();
      _loc2_.push({id:-1,label:"(" + this.api.lang.getText("PLEASE_SELECT") + ")"});
      for(var i in _loc3_)
      {
         _loc2_.push({id:_loc3_[i].i,label:_loc3_[i].t});
      }
      this["\x1c\f\x19"].dataProvider = _loc2_;
      this["\x1c\f\x19"].selectedIndex = 0;
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnOk:
            if(this["\x1c\f\x19"].selectedItem.id > 0)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("REPORT_MESSAGE_CONFIRMATION"),"CAUTION_YESNO",{name:"ReportMessage",listener:this});
            }
            else
            {
               this.api.kernel.showMessage(this.api.lang.getText("ERROR_WORD"),this.api.lang.getText("ERROR_MUST_SELECT_A_REASON"),"ERROR_BOX");
            }
            break;
         case this._btnCancel:
            this["\x1b\x13\x13"]();
      }
   }
   function yes(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "AskYesNoReportMessage")
      {
         var _loc3_ = this["\x1e\x0b\x02"].substring(this["\x1e\x0b\x02"].indexOf(": ") + 7,this["\x1e\x0b\x02"].indexOf("</font>"));
         this.api.network.Chat["\x1a\r\x11"](this["\x1e\b\x07"],this["\x1e\x0b\x03"],_loc3_,this["\x1c\f\x19"].selectedItem.id);
         if(this["\x1c\t\x1d"].selected)
         {
            this.api.kernel.ChatManager["\x16\x01\x03"](this["\x1e\b\x07"]);
            this.api.kernel.showMessage(undefined,this.api.lang.getText("TEMPORARY_BLACKLISTED_AND_REPORTED",[this["\x1e\b\x07"]]),"INFO_CHAT");
         }
         else
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("REPORTED",[this["\x1e\b\x07"]]),"INFO_CHAT");
         }
         this["\x1b\x13\x13"]();
      }
   }
   function no(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "AskYesNoReportMessage")
      {
         this["\x1b\x13\x13"]();
      }
   }
}
