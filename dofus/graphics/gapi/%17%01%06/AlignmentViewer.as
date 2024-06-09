class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.AlignmentViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "AlignmentViewer";
   var §\x1e\b\x19§ = "Specialization";
   function AlignmentViewer()
   {
      super();
   }
   function §\x12\x1d§(§\x16\b\b§)
   {
      this["\x1c\x12\x0b"]._visible = _loc2_;
      this["\x1e\x06\f"]._visible = _loc2_;
      this["\x1d\x07\x15"]._visible = _loc2_;
      return this["\x1e\x19\x15"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.AlignmentViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this["\x1e\x06\f"]._visible = false;
      this["\x1c\x12\x0b"]._visible = false;
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
   }
   function initTexts()
   {
      this._lblTitle.text = this.api.lang.getText("ALIGNMENT");
      this["\x1c\x12\x0b"].text = this.api.lang.getText("LEVEL");
   }
   function addListeners()
   {
      this.api.datacenter.Player.addEventListener("alignmentChanged",this);
   }
   function initData()
   {
      this["\x1e\b\x19"] = "Specialization";
      this.alignmentChanged({alignment:this.api.datacenter.Player.alignment});
   }
   function §\x1b\x14\x13§()
   {
      this._mcTab.removeMovieClip();
      switch(this["\x1e\b\x19"])
      {
         case "Specialization":
            this.attachMovie("SpecializationViewer","_mcTab",this.getNextHighestDepth(),{_x:this["\x1d\x10\x17"]._x,_y:this["\x1d\x10\x17"]._y});
            break;
         case "Rank":
            this.attachMovie("RankViewer","_mcTab",this.getNextHighestDepth(),{_x:this["\x1d\x10\x17"]._x,_y:this["\x1d\x10\x17"]._y});
      }
   }
   function setCurrentTab(§\x1b\x04\x07§)
   {
      var _loc3_ = this["_btnTab" + this["\x1e\b\x19"]];
      var _loc4_ = this["_btnTab" + _loc2_];
      _loc3_.selected = true;
      _loc3_.enabled = true;
      _loc4_.selected = false;
      _loc4_.enabled = false;
      this["\x1e\b\x19"] = _loc2_;
      this["\x1b\x14\x13"]();
   }
   function alignmentChanged(oEvent)
   {
      this._mcTab.removeMovieClip();
      this._ldrIcon.contentPath = oEvent.alignment.iconFile;
      this._lblTitle.text = this.api.lang.getText("ALIGNMENT") + " " + oEvent.alignment.name;
      if(this.api.datacenter.Player.alignment.index != 0)
      {
         this.enable = true;
         this["\x1c\x1b\x16"].text = "";
         this["\x1e\x06\f"].value = oEvent.alignment.value;
         this["\x1d\x07\x15"].onRollOver = function()
         {
            this._parent.gapi.showTooltip(new ank.utils.ExtendedString(oEvent.alignment.value)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + " / " + new ank.utils.ExtendedString(this._parent["\x1e\x06\f"]["\x18\x19\x12"])["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3),this,-10);
         };
         this["\x1d\x07\x15"].onRollOut = function()
         {
            this._parent.gapi.hideTooltip();
         };
         this.setCurrentTab(this["\x1e\b\x19"]);
      }
      else if(this["\x1c\x1b\x16"].text != undefined)
      {
         this.enable = false;
         this["\x1c\x1b\x16"].text = this.api.lang.getText("NO_ALIGNEMENT");
      }
   }
}
