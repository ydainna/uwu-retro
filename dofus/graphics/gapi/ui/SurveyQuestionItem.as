class dofus.graphics.gapi.ui.SurveyQuestionItem extends ank.gapi.core.UIBasicComponent
{
   static var MAX_ROWS = 5;
   function SurveyQuestionItem()
   {
      super();
   }
   function §\x17\x07§(§\x18\x1b\x17§)
   {
      this["\x1d\r\t"] = _loc2_;
      return this.list;
   }
   function get list()
   {
      return this["\x1d\r\t"];
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      this["\x1e\x03\x18"] = _loc4_;
      if(_loc4_ != undefined)
      {
         this["\x1e\x0f\x16"].text = _loc4_.text;
         this._cbAnswers._visible = true;
         this._cbAnswers.addEventListener("itemSelected",this);
         var _loc5_ = new ank.utils.ExtendedArray();
         var _loc6_ = 0;
         while(_loc6_ < _loc4_.answers.length)
         {
            _loc5_.push({label:_loc4_.answers[_loc6_]});
            _loc6_ = _loc6_ + 1;
         }
         this._cbAnswers["\x1a\x0e\x19"] = _loc5_.length <= dofus.graphics.gapi.ui.SurveyQuestionItem.MAX_ROWS ? _loc5_.length : dofus.graphics.gapi.ui.SurveyQuestionItem.MAX_ROWS;
         this._cbAnswers.dataProvider = _loc5_;
         this._cbAnswers.selectedIndex = _loc4_.answerSelected;
      }
      else
      {
         this._cbAnswers.closeList();
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
      this._cbAnswers["\x18\x1b\x18"] = String(this._parent);
   }
   function itemSelected(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._cbAnswers)
      {
         this["\x1d\r\t"]["\x17\x07\x19"]({type:"itemSelected",target:this,item:_loc2_.item,id:this["\x1e\x03\x18"].id,selectedIndex:this._cbAnswers.selectedIndex});
      }
   }
}
