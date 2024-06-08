class dofus.§\x18\x03\x10§.gapi.ui.CrafterCard extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "CrafterCard";
   function CrafterCard()
   {
      super();
      this["\x1c\x05\x05"] = false;
   }
   function §\x11\f§(§\x19\x12\x0f§)
   {
      this["\x1e\x02\x19"] = _loc2_;
      if(this["\x1c\x05\x05"])
      {
         this["\x1b\x14\x14"]();
      }
      return this.crafter;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.CrafterCard.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function initTexts()
   {
      this["\x1e\x10\t"].title = this.api.lang.getText("CRAFTER");
      this._btnClose2.label = this.api.lang.getText("CLOSE");
      this._btnPrivateMessage.label = this.api.lang.getText("WISPER_MESSAGE");
      this._btnLocate.label = this.api.lang.getText("LOCATE");
      this["\x1c\x1a\x0e"].text = this.api.lang.getText("LOCALISATION");
      this["\x1d\x02\x0f"].text = this.api.lang.getText("SUBAREA");
      this["\x1d\x04\x16"].text = this.api.lang.getText("IN_WORKSHOP");
      this["\x1c\x15\x11"].text = this.api.lang.getText("COORDINATES");
      this._lblJobOptions.text = this.api.lang.getText("JOB_OPTIONS");
      this["\x1d\x04\x1b"].text = this.api.lang.getText("NOT_FREE");
      this["\x1c\x18\x06"].text = this.api.lang.getText("FREE_IF_FAILED");
      this["\x1c\x1e\f"].text = this.api.lang.getText("CRAFT_RESSOURCES_NEEDED");
      this["\x1c\x1a\x1c"].text = this.api.lang.getText("MIN_ITEM_IN_RECEIPT");
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._btnClose2.addEventListener("click",this);
      this._btnLocate.addEventListener("click",this);
      this._btnPrivateMessage.addEventListener("click",this);
      this["\x1d\x06\x01"].addEventListener("initialization",this);
   }
   function §\x1b\x14\x14§()
   {
      this["\x1c\x05\x05"] = true;
      var _loc2_ = true;
      if(this["\x1e\x02\x19"] != undefined)
      {
         this["\x1d\x06\x01"]["\x17\x12\x07"]();
         this["\x1d\x06\x01"].contentPath = this["\x1e\x02\x19"].gfxFile != undefined ? this["\x1e\x02\x19"].gfxFile : "";
         this.api.colors.addSprite(this["\x1d\x06\x01"],this["\x1e\x02\x19"]);
         this["\x1c\x1b\x0f"].text = this["\x1e\x02\x19"].name;
         this._lblJob.text = this["\x1e\x02\x19"]["\x18\x11\f"].name;
         this["\x1c\x19\x17"].text = this.api.lang.getText("LEVEL_SMALL") + " " + this.api.lang.getText("JOB") + " : " + this["\x1e\x02\x19"]["\x18\x11\f"].level;
         this["\x1d\x02\x10"].text = this["\x1e\x02\x19"]["\x1b\x0b\x17"] != undefined ? this["\x1e\x02\x19"]["\x1b\x0b\x17"] : this.api.lang.getText("OUTSIDE_WORKSHOP");
         this["\x1d\x04\x17"].text = !this["\x1e\x02\x19"].inWorkshop ? this.api.lang.getText("NO") : this.api.lang.getText("YES");
         var _loc3_ = this["\x1e\x02\x19"]["\x17\x01\f"];
         this["\x1c\x15\x16"].text = _loc3_ != undefined ? _loc3_.x + "," + _loc3_.y : "-";
         var _loc4_ = this["\x1e\x02\x19"]["\x18\x11\f"]["\x1a\x01\b"];
         this._btnNotFree.selected = _loc4_["\x18\x0f\x07"];
         this._btnFreeIfFailed.selected = _loc4_["\x18\r\x1c"];
         this._btnRessourcesNeeded.selected = _loc4_["\x1a\x0e\x07"];
         this["\x1c\x1a\x1d"].text = _loc4_["\x18\x1d\b"].toString();
         _loc2_ = this["\x1e\x02\x19"]["\x1b\x0b\x17"] != undefined;
      }
      else
      {
         this["\x1d\x06\x01"].contentPath = "";
         this["\x1c\x1b\x0f"].text = "-";
         this._lblJob.text = "-";
         this["\x1c\x19\x17"].text = "-";
         this["\x1d\x02\x10"].text = "-";
         this["\x1d\x04\x17"].text = "-";
         this["\x1c\x15\x16"].text = "-";
         this["\x1c\x1a\x1d"].text = "-";
         this._btnNotFree.selected = false;
         this._btnFreeIfFailed.selected = false;
         this._btnRessourcesNeeded.selected = false;
         this["\x1c\x1a\x1d"].text = "-";
         _loc2_ = false;
      }
      this._btnLocate._visible = _loc2_;
   }
   function initialization(oEvent)
   {
      var _loc3_ = _loc2_.target.content;
      _loc3_.attachMovie("staticF","anim",10);
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnClose2":
         case "_btnClose":
            this["\x1b\x13\x13"]();
            break;
         case "_btnPrivateMessage":
            this.api.kernel.GameManager["\x16\x06\x07"](this["\x1e\x02\x19"].name);
            break;
         case "_btnLocate":
            var _loc3_ = this["\x1e\x02\x19"]["\x17\x01\f"];
            this.api.kernel.GameManager.updateCompass(_loc3_.x,_loc3_.y,true);
      }
   }
}
