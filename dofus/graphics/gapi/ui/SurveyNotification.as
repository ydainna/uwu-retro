class dofus.graphics.gapi.ui.SurveyNotification extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "SurveyNotification";
   function SurveyNotification()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.SurveyNotification.CLASS_NAME);
   }
   function hide()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._btn.addEventListener("click",this);
      this._btn.addEventListener("over",this);
   }
   function click(oEvent)
   {
      this.api.network.Survey.getSurvey();
   }
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._btn)
      {
         this.api.ui.showTooltip(this.api.lang.getText("SURVEY"),_loc2_.target,20,{bXLimit:true,bYLimit:true});
      }
   }
}
