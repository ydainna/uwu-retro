class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.JobOptionsViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "JobOptionsViewer";
   function JobOptionsViewer()
   {
      super();
   }
   function §\x16\x11§(§\x19\x13\t§)
   {
      this["\x1e\x03\x1d"].removeEventListener("optionsChanged",this);
      this["\x1e\x03\x1d"] = _loc2_;
      this["\x1e\x03\x1d"].addEventListener("optionsChanged",this);
      if(this["\x18\t\x1c"])
      {
         this.optionsChanged();
      }
      return this["\x01\x10"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.JobOptionsViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
   }
   function addListeners()
   {
      this.api.datacenter.Player.addEventListener("craftPublicModeChanged",this);
      this._vsCraftComplexity.addEventListener("change",this);
      this._btnEnabled.addEventListener("click",this);
      this._btnEnabled.addEventListener("over",this);
      this._btnEnabled.addEventListener("out",this);
      this._btnValidate.addEventListener("click",this);
      this._btnNotFree.addEventListener("click",this);
      this._btnFreeIfFailed.addEventListener("click",this);
      this._btnRessourcesNeeded.addEventListener("click",this);
   }
   function initTexts()
   {
      this._lblReferencingOptions.text = this.api.lang.getText("REFERENCING_OPTIONS");
      this["\x1d\x04\x1b"].text = this.api.lang.getText("NOT_FREE");
      this["\x1c\x18\x06"].text = this.api.lang.getText("FREE_IF_FAILED");
      this["\x1c\x1e\f"].text = this.api.lang.getText("CRAFT_RESSOURCES_NEEDED");
      this["\x1c\x16\x05"].text = this.api.lang.getText("MIN_ITEM_IN_RECEIPT");
      this["\x1e\x0f\x10"].text = this.api.lang.getText("PUBLIC_MODE_INFOS");
      this._btnValidate.label = this.api.lang.getText("SAVE");
      this._btnValidate.enabled = false;
      this.craftPublicModeChanged();
   }
   function initData()
   {
      this.optionsChanged();
   }
   function §\x1a\n\x19§()
   {
      this._btnEnabled.label = !this.api.datacenter.Player.craftPublicMode ? this.api.lang.getText("ENABLE") : this.api.lang.getText("DISABLE");
   }
   function §\x1a\n\x1a§(§\x19\n\x11§)
   {
      this["\x1c\x16\x06"].text = _loc2_.toString() + " " + ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("SLOT"),"m",_loc2_ < 2);
   }
   function change(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "_vsCraftComplexity")
      {
         this["\x1a\n\x1a"](this._vsCraftComplexity.value);
         this._btnValidate.enabled = true;
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnEnabled":
            this.api.network.Exchange["\x1a\x18\x1d"](!this.api.datacenter.Player.craftPublicMode);
            break;
         case "_btnValidate":
            var _loc3_ = this.api.datacenter.Player["\x18\x11\x0f"].findFirstItem("id",this["\x1e\x03\x1d"].id);
            if(_loc3_.index != -1)
            {
               var _loc4_ = (!this._btnNotFree.selected ? 0 : 1) + (!this._btnFreeIfFailed.selected ? 0 : 2) + (!this._btnRessourcesNeeded.selected ? 0 : 4);
               this.api.network.Job["\x16\x18\x19"](_loc3_.index,_loc4_,this._vsCraftComplexity._visible != false ? this._vsCraftComplexity.value : 2);
            }
            break;
         case "_btnNotFree":
            this._btnFreeIfFailed.enabled = !this._btnNotFree.selected ? false : true;
         case "_btnFreeIfFailed":
         case "_btnRessourcesNeeded":
            this._btnValidate.enabled = true;
      }
   }
   function optionsChanged(oEvent)
   {
      if(this["\x1e\x03\x1d"] != undefined && this._btnNotFree.selected != undefined)
      {
         var _loc3_ = this["\x1e\x03\x1d"]["\x1a\x01\b"];
         var _loc4_ = this["\x1e\x03\x1d"]["\x17\x1b\x16"]();
         _loc4_ = _loc4_ <= 8 ? _loc4_ : 8;
         if(_loc4_ > 2)
         {
            this._vsCraftComplexity._visible = true;
            this._vsCraftComplexity["\x18\x19\x05"] = _loc4_ - 1;
            this._vsCraftComplexity.min = 2;
            this._vsCraftComplexity.max = _loc4_;
            this._vsCraftComplexity["\x1a\n\x12"]();
            this._vsCraftComplexity.value = _loc3_["\x18\x1d\b"];
         }
         else
         {
            this._vsCraftComplexity._visible = false;
         }
         this["\x1a\n\x1a"](_loc3_["\x18\x1d\b"]);
         new org.flashdevelop.utils.FlashConnect.trace("Test " + this._btnNotFree.selected,"dofus.graphics.gapi.controls.JobOptionsViewer::optionsChanged","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/graphics/gapi/controls/JobOptionsViewer.as",233);
         this._btnNotFree.selected = _loc3_["\x18\x0f\x07"];
         this._btnFreeIfFailed.selected = _loc3_["\x18\r\x1c"];
         this._btnFreeIfFailed.enabled = !this._btnNotFree.selected ? false : true;
         this._btnRessourcesNeeded.selected = _loc3_["\x1a\x0e\x07"];
         this._btnValidate.enabled = false;
      }
   }
   function craftPublicModeChanged(oEvent)
   {
      this["\x1c\x1d\b"].text = this.api.lang.getText("PUBLIC_MODE") + " (" + this.api.lang.getText(!this.api.datacenter.Player.craftPublicMode ? "INACTIVE" : "ACTIVE") + ")";
      this["\x1a\n\x19"]();
      this["\x1d\x0f\x03"]._visible = !this.api.datacenter.Player.craftPublicMode;
      this["\x1d\x0f\x04"]._visible = this.api.datacenter.Player.craftPublicMode;
   }
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._btnEnabled)
      {
         var _loc3_ = !this.api.datacenter.Player.craftPublicMode ? this.api.lang.getText("ENABLE_PUBLIC_MODE") : this.api.lang.getText("DISABLE_PUBLIC_MODE");
         this.gapi.showTooltip(_loc3_,_loc2_.target,-20);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
