class dofus.§\x18\x03\x10§.gapi.ui.AskGameBegin extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "AskGameBegin";
   function AskGameBegin()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.AskGameBegin.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
   }
   function addListeners()
   {
      this._btnOk.addEventListener("click",this);
   }
   function initTexts()
   {
      this._btnOk.label = this.api.lang.getText("OK");
      this._winBackground.title = this.api.lang.getText("POPUP_GAME_BEGINNING_TITLE");
      this._lblTitle.text = this.api.lang.getText("POPUP_GAME_BEGINNING_SUBTITLE");
      this["\x1c\x19\x06"].text = this.api.lang.getText("POPUP_GAME_BEGINNING_PARAGRAPH1");
      this["\x1d\x03\x03"].text = this.api.lang.getText("POPUP_GAME_BEGINNING_PARAGRAPH2");
      this["\x1c\x13\x1d"].text = this.api.lang.getText("POPUP_GAME_BEGINNING_PARAGRAPH3");
   }
   function click(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "_btnOk")
      {
         this.api.kernel["\x1b\x10\x0b"]["\x1a\x1e\x10"](dofus.managers["\x1b\x10\x0b"]["\x1b\x10\x14"]);
         this["\x17\x07\x19"]({type:"ok",params:this.params});
         this["\x1b\x13\x13"]();
      }
   }
}
