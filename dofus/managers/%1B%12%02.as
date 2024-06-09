class dofus.§\x18\x18\x0b§.TutorialServersManager extends dofus.§\x18\x18\x0b§.§\x1a\x14\f§
{
   static var §\x1e\f\x10§ = null;
   function TutorialServersManager()
   {
      super();
      dofus.managers.TutorialServersManager["\x1e\f\x10"] = this;
   }
   static function §\x17\x19\t§()
   {
      return dofus.managers.TutorialServersManager["\x1e\f\x10"];
   }
   function initialize(oAPI)
   {
      super.initialize(oAPI,"tutorials","tutorials/");
   }
   function §\x18\x16\x18§(sID)
   {
      this["\x18\x15\x18"](sID + ".swf");
   }
   function §\x19\x15\x18§(§\x18\x1b\f§)
   {
      var _loc3_ = new dofus.datacenter..Tutorial(_loc2_);
      this.addToQueue({object:this.api.kernel.TutorialManager,method:this.api.kernel.TutorialManager.start,params:[_loc3_]});
   }
   function §\x19\x17\b§()
   {
      this.addToQueue({object:this.api.kernel,method:this.api.kernel.showMessage,params:[undefined,this.api.lang.getText("NO_TUTORIALDATA_FILE"),"ERROR_CHAT"]});
      this.api.kernel.TutorialManager["\x1b\x0f\f"](0);
   }
}
