class dofus.graphics.gapi.§\x17\x01\x06§.§\x16\x19\x0b§.FighterEffectsReplacementPanel extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "FighterEffectsReplacementPanel";
   function FighterEffectsReplacementPanel()
   {
      super();
   }
   function §\x1d\x10§(§\x1a\x02\t§)
   {
      this["\x1e\x05\x1b"] = _loc2_;
      return this["\n\x01"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.chat.FighterEffectsReplacementPanel.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
   }
   function §\x1b\x14\x01§(§\x1a\x02\t§)
   {
      this.api.ui.hideTooltip();
      this["\x1e\x05\x1b"] = _loc2_;
      this.addToQueue({object:this,method:this.initData});
   }
   function initData()
   {
      this["\x1d\x06\x14"].scrollFromEverywhere = true;
      if(this["\x1e\x05\x1b"] == undefined)
      {
         return undefined;
      }
      this["\x1c\x1b\x0f"].text = this.api.lang.getText("EFFECTS") + " " + this["\x1e\x05\x1b"].name + " (" + this.api.lang.getText("LEVEL_SMALL") + this["\x1e\x05\x1b"].Level + ")";
      this["\x1d\x06\x14"].dataProvider = this["\x1e\x05\x1b"]["\x17\f\t"]["\x17\x17\x04"]();
   }
   function initTexts()
   {
   }
   function addListeners()
   {
   }
}
