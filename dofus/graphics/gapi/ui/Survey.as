class dofus.graphics.gapi.ui.Survey extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Survey";
   function Survey()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Survey.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this.api.datacenter.Survey.questions = new ank.utils.ExtendedArray();
      this.refreshQuestions();
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
   }
   function initTexts()
   {
      this._winBackground.title = this.api.lang.getText("SURVEY");
      this._btnSave.label = this.api.lang.getText("SAVE_SURVEY");
      this._btnReset.label = this.api.lang.getText("RESET_SURVEY");
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._btnReset.addEventListener("click",this);
      this._btnSave.addEventListener("click",this);
      this.api.datacenter.Survey.questions.addEventListener("modelChanged",this);
      this._lstQuestions.addEventListener("itemSelected",this);
      ank.utils.["\x18\x1e\x13"].addListener(this);
   }
   function initData()
   {
      var _loc2_ = this.api.datacenter.Survey;
      this._lblTitle.text = _loc2_.title;
      this["\x1e\x0f\n"].text = _loc2_.desc;
      this["\x1c\x16\x10"].text = _loc2_.date;
      this.refreshQuestions();
   }
   function refreshQuestions()
   {
      var _loc2_ = this.api.datacenter.Survey;
      this._lstQuestions.dataProvider = _loc2_.questions;
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnClose:
            this["\x16\x15\n"]();
            break;
         case this._btnReset:
            this.api.datacenter.Survey.resetAllAnswers();
            break;
         case this._btnSave:
            var _loc3_ = this.api.datacenter.Survey.getAnswersPacket();
            this.api.network.Survey.saveSurvey(_loc3_);
            this["\x16\x15\n"]();
      }
   }
   function modelChanged(oEvent)
   {
      this.refreshQuestions();
   }
   function itemSelected(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target.list) === this._lstQuestions)
      {
         this.api.datacenter.Survey.setAnswer(_loc2_.id,_loc2_.selectedIndex);
      }
   }
}
