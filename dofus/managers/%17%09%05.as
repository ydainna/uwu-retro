class dofus.§\x18\x18\x0b§.§\x17\t\x05§ extends dofus.§\x18\x18\x0b§.§\x1a\x14\f§
{
   static var §\x1e\f\x10§ = null;
   function §\x17\t\x05§()
   {
      super();
      dofus.managers["\x17\t\x05"]["\x1e\f\x10"] = this;
   }
   static function §\x17\x19\t§()
   {
      return dofus.managers["\x17\t\x05"]["\x1e\f\x10"];
   }
   function initialize(oAPI)
   {
      super.initialize(oAPI,"docs","docs/");
   }
   function §\x18\x15\x1a§(sID)
   {
      this["\x18\x15\x18"](sID + ".swf");
   }
   function §\x17\x16\x1c§(§\x18\x1b\f§)
   {
      return new dofus.datacenter..Document(_loc2_);
   }
   function §\x19\x15\x18§(§\x18\x1b\f§)
   {
      var _loc3_ = this["\x17\x16\x1c"](_loc2_);
      this.addToQueue({object:this.api.ui,method:this.api.ui.loadUIComponent,params:[_loc3_["\x1b\x13\x07"],"Document",{document:_loc3_}]});
   }
   function §\x19\x17\b§()
   {
      this.addToQueue({object:this.api.kernel,method:this.api.kernel.showMessage,params:[undefined,this.api.lang.getText("NO_DOCUMENTDATA_FILE"),"ERROR_BOX",{name:"NoMapData"}]});
      this.api.network.Documents["\x18\x13\x1d"]();
   }
}
