class dofus.datacenter.SurveyManager
{
   function SurveyManager()
   {
   }
   function §\x14\x1a§(nSurveyId)
   {
      this.nId = nSurveyId;
      return this["\x1e\x1c\x05"]();
   }
   function §\x1e\r§(sText)
   {
      this.sTitle = _loc2_;
      return this["\f\x02"]();
   }
   function set desc(sText)
   {
      this.sDesc = _loc2_;
   }
   function __set__date(sText)
   {
      this.sDate = _loc2_;
      return this["\x1e\x18\x05"]();
   }
   function §\x1e\x1c\x05§()
   {
      return this.nId;
   }
   function §\f\x02§()
   {
      return this.sTitle;
   }
   function get desc()
   {
      return this.sDesc;
   }
   function §\x1e\x18\x05§()
   {
      return this.sDate;
   }
   function set questions(§\x17\n\x1b§)
   {
      this.eaQuestions = _loc2_;
   }
   function get questions()
   {
      return this.eaQuestions;
   }
   function resetAllAnswers()
   {
      var _loc2_ = 0;
      while(_loc2_ < this.eaQuestions.length)
      {
         this.eaQuestions[_loc2_].answerSelected = 0;
         _loc2_ = _loc2_ + 1;
      }
      this.eaQuestions["\x17\x07\x19"]({type:"modelChanged"});
   }
   function setAnswer(questionId, answerId)
   {
      this.eaQuestions[questionId].answerSelected = answerId;
      this.eaQuestions["\x17\x07\x19"]({type:"modelChanged"});
   }
   function getAnswersPacket()
   {
      var _loc2_ = "" + this.nId;
      var _loc3_ = 0;
      while(_loc3_ < this.eaQuestions.length)
      {
         _loc2_ += "|" + _loc3_ + ";" + this.eaQuestions[_loc3_].answerSelected;
         _loc3_ = _loc3_ + 1;
      }
      return _loc2_;
   }
}
