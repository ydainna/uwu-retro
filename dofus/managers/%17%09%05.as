class dofus.§\x18\x18\x0b§.DocumentsServersManager extends dofus.§\x18\x18\x0b§.§\x1a\x14\f§
{
   static var §\x1e\f\x10§ = null;
   function DocumentsServersManager()
   {
      super();
      dofus.managers.DocumentsServersManager["\x1e\f\x10"] = this;
   }
   static function getInstance()
   {
      return dofus.managers.DocumentsServersManager["\x1e\f\x10"];
   }
   function initialize(oAPI)
   {
      super.initialize(oAPI,"docs","docs/");
   }
   function loadDocument(sID)
   {
      this["\x18\x15\x18"](sID + ".swf");
   }
   function §\x17\x16\x1c§(§\x18\x1b\f§)
   {
      return new dofus.datacenter.Document(_loc2_);
   }
   function §\x19\x15\x18§(§\x18\x1b\f§)
   {
      var _loc3_ = this["\x17\x16\x1c"](_loc2_);
      this.addToQueue({object:this.api.ui,method:this.api.ui.loadUIComponent,params:[_loc3_["\x1b\x13\x07"],"Document",{document:_loc3_}]});
   }
   function §\x19\x17\b§()
   {
      this.addToQueue({object:this.api.kernel,method:this.api.kernel.showMessage,params:[undefined,this.api.lang.getText("NO_DOCUMENTDATA_FILE"),"ERROR_BOX",{name:"NoMapData"}]});
      this.api.network.Documents.leave();
   }
}
