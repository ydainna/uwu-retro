class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.LivingItemsViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "LivingItemsViewer";
   function LivingItemsViewer()
   {
      super();
   }
   function §\x16\x0b§(§\x19\x11\f§)
   {
      this["\x1e\x03\x19"] = _loc2_;
      this["\x1b\x14\x14"]();
      return this["\x01\t"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.LivingItemsViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._pbXP.addEventListener("over",this);
      this._pbXP.addEventListener("out",this);
      this["\x1c\t\x18"].addEventListener("click",this);
      this["\x1c\t\x15"].addEventListener("click",this);
      this["\x1c\x0b\x04"].addEventListener("click",this);
   }
   function initTexts()
   {
      this["\x1d\x02\x07"].text = this.api.lang.getText("STATE");
      this._lblState.text = this.api.lang.getText(this["\x1e\x03\x19"]["\x18\x1e\x07"] != 1 ? (this["\x1e\x03\x19"]["\x18\x1e\x07"] != 0 ? "FAT" : "LEAN") : "SATISFIED_WORD");
      this["\x1c\x1a\n"].text = this.api.lang.getText("LEVEL");
      this["\x1c\x1a\x07"].text = String(this["\x1e\x03\x19"]["\x18\x19\x1c"]) + " / " + this["\x1e\x03\x19"].nbSkin;
      this["\x1d\x04\x19"].text = this.api.lang.getText("EXPERIMENT");
      this["\x1c\t\x15"].label = this.api.lang.getText("DISSOCIATE");
      this["\x1c\t\x18"].label = this.api.lang.getText("FEED_WORD");
      this["\x1c\x0b\x04"].label = this.api.lang.getText("CHOOSE_SKIN");
      var _loc2_ = this["\x1e\x03\x19"].effects;
      for(var i in _loc2_)
      {
         if(_loc2_[i].type == 808)
         {
            this["\x1c\x17\f"].text = _loc2_[i].description;
            break;
         }
      }
   }
   function §\x1b\x14\x14§()
   {
      this._ctrItem.contentPath = this["\x1e\x03\x19"].gfx;
      this._ctrItem.contentData = this["\x1e\x03\x19"];
      this._pbXP["\x18\x1d\x03"] = this["\x1e\x03\x19"]["\x17\x03\x17"];
      this._pbXP["\x18\x19\x12"] = this["\x1e\x03\x19"]["\x17\x03\x16"];
      this._pbXP.value = this["\x1e\x03\x19"]["\x17\x03\x18"];
      this["\x1c\t\x15"].enabled = this["\x1e\x03\x19"]["\x18\f\x13"];
      this["\x1c\t\x18"].enabled = this["\x1e\x03\x19"]["\x18\f\x13"];
      this.initTexts();
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\x0b\x04"]:
            this.api.ui.loadUIComponent("ChooseItemSkin","ChooseItemSkin",{item:this["\x1e\x03\x19"]});
            break;
         case this["\x1c\t\x18"]:
            this.api.ui.loadUIComponent("ChooseFeed","ChooseFeed",{itemsType:[this["\x1e\x03\x19"].type],item:this["\x1e\x03\x19"]});
            break;
         case this["\x1c\t\x15"]:
            this.api.kernel.SpeakingItemsManager["\x1b\x11\x10"](dofus["\x18\x18\x0b"].SpeakingItemsManager.SPEAK_TRIGGER_DISSOCIATE);
            this.api.network.Items["\x17\b\x19"](this["\x1e\x03\x19"].ID,this["\x1e\x03\x19"].position);
      }
   }
   function over(oEvent)
   {
      this.gapi.showTooltip(new ank.utils.ExtendedString(this._pbXP.value)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + " / " + new ank.utils.ExtendedString(this._pbXP["\x18\x19\x12"])["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3),this._pbXP,-20);
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
