class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.JobViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "JobViewer";
   var §\x1e\b\x19§ = "Characteristics";
   function JobViewer()
   {
      super();
   }
   function §\x16\x11§(§\x19\x13\t§)
   {
      this["\x1e\x03\x1d"] = _loc2_;
      this.addToQueue({object:this,method:this["\x18\x13\x14"]});
      return this["\x01\x10"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.JobViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this["\x1c\x1c\x02"]._visible = false;
      this["\x1d\x0e\x12"]._visible = false;
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
   }
   function initTexts()
   {
      this["\x1d\x04\x18"].text = this.api.lang.getText("EXPERIMENT");
      this["\x1d\x01\x14"].text = this.api.lang.getText("SKILLS");
      this["\x1d\x03\x14"].text = this.api.lang.getText("TOOL");
      this["\x1c\x1c\x02"].text = this.api.lang.getText("NO_TOOL_JOB");
      this._btnTabCharacteristics.label = this.api.lang.getText("CHARACTERISTICS");
      this._btnTabCrafts.label = this.api.lang.getText("RECEIPTS");
      this._btnTabOptions.label = this.api.lang.getText("OPTIONS");
   }
   function addListeners()
   {
      this._btnTabCharacteristics.addEventListener("click",this);
      this._btnTabCrafts.addEventListener("click",this);
      this._btnTabOptions.addEventListener("click",this);
   }
   function §\x18\x13\x14§()
   {
      if(this["\x1e\x03\x1d"] == undefined)
      {
         return undefined;
      }
      this.setCurrentTab(this["\x1e\b\x19"]);
      this["\x1d\x07\x03"].removeMovieClip();
      var _loc2_ = this.api.datacenter.Player.currentJobID == this["\x1e\x03\x1d"].id;
      this._ldrIcon.contentPath = this["\x1e\x03\x1d"].iconFile;
      this["\x1c\x1b\x0f"].text = this["\x1e\x03\x1d"].name;
      this["\x1c\x1a\x07"].text = this.api.lang.getText("LEVEL") + " " + this["\x1e\x03\x1d"].level;
      this._pbXP["\x18\x1d\x03"] = this["\x1e\x03\x1d"]["\x1b\x1a\x0b"];
      this._pbXP["\x18\x19\x12"] = this["\x1e\x03\x1d"]["\x1b\x1a\t"];
      this._pbXP.value = this["\x1e\x03\x1d"].xp;
      this["\x1d\x11\x1b"].onRollOver = function()
      {
         this._parent._parent.gapi.showTooltip(new ank.utils.ExtendedString(this._parent["\x1e\x03\x1d"].xp)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + " / " + new ank.utils.ExtendedString(this._parent["\x1e\x03\x1d"]["\x1b\x1a\t"])["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3),this,-10);
      };
      this["\x1d\x11\x1b"].onRollOut = function()
      {
         this._parent._parent.gapi.hideTooltip();
      };
      var _loc3_ = this["\x1e\x03\x1d"].skills;
      if(_loc3_.length != 0)
      {
         _loc3_.sortOn("skillName");
         this["\x1d\x07\x03"].dataProvider = _loc3_;
      }
      if(_loc2_)
      {
         this["\x1c\x1c\x02"]._visible = false;
         this["\x1c\x11\x13"]._visible = true;
         var _loc4_ = dofus.datacenter.Item(this.api.datacenter.Player.Inventory.findFirstItem("position",1).item);
         this["\x1c\x11\x13"]["\x18\x10\x17"] = _loc4_;
      }
      else
      {
         this["\x1c\x1c\x02"]._visible = true;
         this["\x1c\x11\x13"]._visible = false;
      }
   }
   function §\x1a\x1d\b§(bShow)
   {
      if(_loc2_)
      {
         var _loc3_ = this.attachMovie("CraftViewer","_cvCraftViewer",20);
         _loc3_._x = this["\x1d\x0e\x12"]._x;
         _loc3_._y = this["\x1d\x0e\x12"]._y;
         _loc3_["\x18\x11\f"] = this["\x1e\x03\x1d"];
      }
      else
      {
         this._cvCraftViewer.removeMovieClip();
      }
   }
   function §\x1a\x1e\x13§(bShow)
   {
      if(_loc2_)
      {
         var _loc3_ = this.attachMovie("JobOptionsViewer","_jovJobOptionsViewer",20);
         _loc3_._x = this["\x1d\x0e\x12"]._x;
         _loc3_._y = this["\x1d\x0e\x12"]._y;
         _loc3_["\x18\x11\f"] = this["\x1e\x03\x1d"];
      }
      else
      {
         this._jovJobOptionsViewer.removeMovieClip();
      }
   }
   function §\x1b\x14\x13§()
   {
      switch(this["\x1e\b\x19"])
      {
         case "Characteristics":
            this["\x1a\x1e\x13"](false);
            this["\x1a\x1d\b"](false);
            break;
         case "Crafts":
            this["\x1a\x1e\x13"](false);
            this["\x1a\x1d\b"](true);
            break;
         case "Options":
            this["\x1a\x1d\b"](false);
            this["\x1a\x1e\x13"](true);
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
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnTabCharacteristics":
            this.setCurrentTab("Characteristics");
            break;
         case "_btnTabCrafts":
            this.setCurrentTab("Crafts");
            break;
         case "_btnTabOptions":
            this.setCurrentTab("Options");
      }
   }
}
