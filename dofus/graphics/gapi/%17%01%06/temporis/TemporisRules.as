class dofus.graphics.gapi.§\x17\x01\x06§.temporis.TemporisRules extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "TemporisRules";
   function TemporisRules()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.temporis.TemporisRules.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
   }
   function addListeners()
   {
   }
   function initData()
   {
      this._taRules.text = this.api.lang.getText("TEMPORIS_RULES_LONG");
   }
}
