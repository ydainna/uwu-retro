class dofus.§\x18\x03\x10§.gapi.ui.PayZoneDialog extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "PayZoneDialog";
   static var PAYZONE_INFOS = 1;
   static var PAYZONE_DETAILS = 2;
   static var §\x1a\x04\x11§ = 0;
   static var §\x1a\x04\x10§ = 1;
   static var PAYZONE_BE_MEMBER = 2;
   static var PAYZONE_MORE_INFOS = 4;
   function PayZoneDialog()
   {
      super();
   }
   function §\x14\x1a§(§\x19\n\x1a§)
   {
      this["\x1d\x1a\x11"] = _loc2_;
      return this["\x1e\x1c\x05"]();
   }
   function §\x19\f§(sName)
   {
      this["\x1e\x0b\x06"] = _loc2_;
      return this["\x04\x1b"]();
   }
   function §\x14\x02§(§\x1a\x1b\x1a§)
   {
      this["\x1e\t\x1a"] = _loc2_;
      return this["\x1e\x1b\x01"]();
   }
   function §\x12\t§(§\x19\x05\x1c§)
   {
      this["\x1d\x15\x0f"] = _loc2_;
      this.addToQueue({object:this,method:this["\x1a\x16\x03"],params:[_loc2_]});
      return this["\x1e\x18\x12"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.PayZoneDialog.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this.api.network.Dialog.leave();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this["\x1a\x18\r"]});
      this.gapi["\x1b\x13\x12"]();
   }
   function draw()
   {
      var _loc2_ = this.getStyle();
   }
   function §\x1a\x18\r§()
   {
      this._ldrArtwork.contentPath = dofus.Constants["\x16\x05\x10"] + this["\x1e\t\x1a"] + ".swf";
      this._winBackgroundUp.title = this["\x1e\x0b\x06"];
   }
   function §\x1a\x16\x03§(§\x19\b\x14§)
   {
      var _loc3_ = new Object();
      _loc3_["\x1a\x0e\x04"] = new ank.utils.ExtendedArray();
      switch(_loc2_)
      {
         case dofus.graphics.gapi.ui.PayZoneDialog.PAYZONE_INFOS:
            _loc3_.label = this.api.lang.getText("PAYZONE_INFOS");
            _loc3_["\x1a\x0e\x04"].push({label:this.api.lang.getText("YES"),id:dofus.graphics.gapi.ui.PayZoneDialog["\x1a\x04\x11"]});
            _loc3_["\x1a\x0e\x04"].push({label:this.api.lang.getText("NO"),id:dofus.graphics.gapi.ui.PayZoneDialog["\x1a\x04\x10"]});
            break;
         case dofus.graphics.gapi.ui.PayZoneDialog.PAYZONE_DETAILS:
            _loc3_.label = this.api.lang.getText("PAYZONE_DETAILS");
            _loc3_["\x1a\x0e\x04"].push({label:this.api.lang.getText("PAYZONE_BE_MEMBER"),id:dofus.graphics.gapi.ui.PayZoneDialog.PAYZONE_BE_MEMBER});
            break;
         default:
            _loc3_.label = this.api.lang.getText("PAYZONE_MSG_" + this["\x1d\x15\x0f"]) + "\n\n" + this.api.lang.getText("PAYZONE_BASE");
            _loc3_["\x1a\x0e\x04"].push({label:this.api.lang.getText("PAYZONE_MORE_INFOS"),id:dofus.graphics.gapi.ui.PayZoneDialog.PAYZONE_MORE_INFOS});
      }
      this.setQuestion(_loc3_);
   }
   function setQuestion(§\x1a\x01\x10§)
   {
      if(this._qvQuestionViewer == undefined)
      {
         this.attachMovie("QuestionViewer","_qvQuestionViewer",10,{_x:this["\x1d\x0f\b"]._x,_y:this["\x1d\x0f\b"]._y,question:_loc2_,isFirstQuestion:true});
         this._qvQuestionViewer.addEventListener("response",this);
         this._qvQuestionViewer.addEventListener("resize",this);
      }
      else
      {
         this._qvQuestionViewer.isFirstQuestion = true;
         this._qvQuestionViewer.question = _loc2_;
      }
   }
   function §\x16\x1d\x01§()
   {
      this["\x16\x15\n"]();
   }
   function response(oEvent)
   {
      switch(_loc2_.response.id)
      {
         case dofus.graphics.gapi.ui.PayZoneDialog["\x1a\x04\x11"]:
            this["\x1a\x16\x03"](dofus.graphics.gapi.ui.PayZoneDialog.PAYZONE_DETAILS);
            break;
         case dofus.graphics.gapi.ui.PayZoneDialog["\x1a\x04\x10"]:
            this["\x1b\x13\x13"]();
            break;
         case dofus.graphics.gapi.ui.PayZoneDialog.PAYZONE_BE_MEMBER:
            this.getURL(this.api.lang.getConfigText("PAY_LINK"),"_blank");
            this["\x1b\x13\x13"]();
            break;
         case dofus.graphics.gapi.ui.PayZoneDialog.PAYZONE_MORE_INFOS:
            this.getURL(this.api.lang.getConfigText("MEMBERS_LINK"),"_blank");
            this["\x1b\x13\x13"]();
      }
   }
   function resize(oEvent)
   {
      this._winBackground["\x1a\x19\x18"](undefined,_loc2_.target.height + (_loc2_.target._y - this._winBackground._y) + 12);
      this._winBackgroundUp["\x1a\x19\x18"](undefined,_loc2_.target.height + (_loc2_.target._y - this._winBackground._y) + 10);
   }
}
