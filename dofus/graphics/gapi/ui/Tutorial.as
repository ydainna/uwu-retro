class dofus.graphics.gapi.ui.Tutorial extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Tutorial";
   function Tutorial()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Tutorial.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._btnCancel.addEventListener("click",this);
      this._btnCancel.addEventListener("over",this);
      this._btnCancel.addEventListener("out",this);
   }
   function click(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "_btnCancel")
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("LEAVE_TUTORIAL"),"CAUTION_YESNO",{name:"Tutorial",listener:this});
      }
   }
   function over(oEvent)
   {
      this.gapi.showTooltip(this.api.lang.getText("CANCEL_TUTORIAL"),_loc2_.target,-20);
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function yes(oEvent)
   {
      this.api.kernel.TutorialManager.cancel();
   }
}
