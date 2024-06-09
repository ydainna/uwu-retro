class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.MountViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "MountViewer";
   var §\x1e\b\x19§ = "General";
   function MountViewer()
   {
      super();
   }
   function §\x18\x19§(§\x19\x13\x13§)
   {
      this["\x1e\x04\x11"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1b\x14\x14"]();
      }
      return this["\x04\t"]();
   }
   function §\x04\t§()
   {
      return this["\x1e\x04\x11"];
   }
   function §\x1e\x1e\x07§()
   {
      return this["\x1e\x04\x11"].ID == this.api.datacenter.Player.mount.ID && this["\x1e\x04\x11"].ID != undefined;
   }
   function §\x1e\x17\x17§()
   {
      return this["\x1e\b\x19"];
   }
   function §\x11\x14§(§\x1b\b\x1b§)
   {
      this["\x1e\b\x19"] = _loc2_;
      return this["\x1e\x17\x17"]();
   }
   function setCurrentTab(§\x1b\x04\x07§)
   {
      if(_loc2_ != undefined)
      {
         var _loc3_ = this["_btnTab" + this["\x1e\b\x19"]];
         var _loc4_ = this["_btnTab" + _loc2_];
         _loc3_.selected = true;
         _loc3_.enabled = true;
         _loc4_.selected = false;
         _loc4_.enabled = false;
         this["\x1e\b\x19"] = _loc2_;
         this["\x1a\x13\x10"](this["_btnTab" + _loc2_]);
      }
      else
      {
         var _loc5_ = this["_btnTab" + this["\x1e\b\x19"]];
         _loc5_.selected = false;
         _loc5_.enabled = false;
         this["\x1a\x13\x10"](_loc5_);
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.MountViewer.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
   }
   function addListeners()
   {
      this["\x1d\x06\x01"].addEventListener("initialization",this);
      this["\x1c\n\x0f"].addEventListener("over",this);
      this["\x1c\n\x0f"].addEventListener("out",this);
      this._btnTabGeneral.addEventListener("click",this);
      this._btnTabStats.addEventListener("click",this);
      this._btnTabCapacities.addEventListener("click",this);
      this._btnTabEffects.addEventListener("click",this);
      this["\x1c\b\x1b"].addEventListener("click",this);
      this["\x1c\b\x1b"].addEventListener("over",this);
      this["\x1c\b\x1b"].addEventListener("out",this);
      this["\x1d\x11\x1b"].onRollOver = function()
      {
         this._parent.gapi.showTooltip(new ank.utils.ExtendedString(this._parent["\x1e\x04\x11"].xp)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + " / " + new ank.utils.ExtendedString(this._parent["\x1e\x04\x11"]["\x1b\x1a\t"])["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3),this,-10);
      };
      this["\x1d\x11\x1b"].onRollOut = function()
      {
         this._parent.gapi.hideTooltip();
      };
      this["\x1d\x0b\x04"].onRollOver = function()
      {
         this._parent.gapi.showTooltip(new ank.utils.ExtendedString(this._parent["\x1e\x04\x11"].energy)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + " / " + new ank.utils.ExtendedString(this._parent["\x1e\x04\x11"].energyMax)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3),this,-10);
      };
      this["\x1d\x0b\x04"].onRollOut = function()
      {
         this._parent.gapi.hideTooltip();
      };
      this["\x1d\x10\x1a"].onRollOver = function()
      {
         this._parent.gapi.showTooltip(new ank.utils.ExtendedString(this._parent["\x1e\x04\x11"].tired)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + " / " + new ank.utils.ExtendedString(this._parent["\x1e\x04\x11"].tiredMax)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3),this,-10);
      };
      this["\x1d\x10\x1a"].onRollOut = function()
      {
         this._parent.gapi.hideTooltip();
      };
      this["\x1d\x0f\x0f"].onRollOver = function()
      {
         if(this._parent["\x1e\x04\x11"].reprodMax > -1)
         {
            this._parent.gapi.showTooltip(this._parent.api.lang.getText("REPRODUCTIONS") + ": " + new ank.utils.ExtendedString(this._parent["\x1e\x04\x11"].reprod)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + " / " + new ank.utils.ExtendedString(this._parent["\x1e\x04\x11"].reprodMax)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3),this,-10);
         }
         else
         {
            this._parent.gapi.showTooltip(this._parent.api.lang.getText("REPRODUCTIONS") + ": " + this._parent.api.lang.getText("UNLIMITED_WORD"),this,-10);
         }
      };
      this["\x1d\x0f\x0f"].onRollOut = function()
      {
         this._parent.gapi.hideTooltip();
      };
   }
   function initTexts()
   {
      this["\x1d\x04\x18"].text = this.api.lang.getText("EXPERIMENT");
      this._lblModel.text = this.api.lang.getText("TYPE");
      this["\x1c\x17\x12"].text = this.api.lang.getText("ENERGY");
      this["\x1d\x03\b"].text = this.api.lang.getText("TIRE");
      this._btnTabGeneral.label = this.api.lang.getText("OPTIONS_GENERAL");
      this._btnTabStats.label = this.api.lang.getText("STATS");
      this._btnTabCapacities.label = this.api.lang.getText("CAPACITIES");
      this._btnTabEffects.label = this.api.lang.getText("EFFECTS");
   }
   function §\x1b\x14\x14§()
   {
      if(this["\x1e\x04\x11"] != undefined)
      {
         this["\x1e\x04\x11"].addEventListener("nameChanged",this);
         this["\x1d\x06\x01"]["\x17\x12\x07"]();
         this["\x1d\x06\x01"].contentPath = this["\x1e\x04\x11"].gfxFile;
         var _loc2_ = new ank.battlefield.datacenter..Sprite("-1",undefined,"",0,0);
         _loc2_.mount = this["\x1e\x04\x11"];
         this.api.colors.addSprite(this["\x1d\x06\x01"],_loc2_);
         this["\x1e\x04\x11"].level = this["\x1e\x04\x11"].level;
         this["\x1c\x1a\x07"].text = this.api.lang.getText("LEVEL") + " " + this["\x1e\x04\x11"].level.toString();
         this._pbXP["\x18\x1d\x03"] = this["\x1e\x04\x11"]["\x1b\x1a\x0b"];
         this._pbXP["\x18\x19\x12"] = this["\x1e\x04\x11"]["\x1b\x1a\t"];
         this._pbXP.value = this["\x1e\x04\x11"].xp;
         this["\x1e\x06\x0f"]["\x18\x19\x12"] = this["\x1e\x04\x11"].energyMax;
         this["\x1e\x06\x0f"].value = this["\x1e\x04\x11"].energy;
         this["\x1e\x06\x17"]["\x18\x19\x12"] = this["\x1e\x04\x11"].tiredMax;
         this["\x1e\x06\x17"].value = this["\x1e\x04\x11"].tired;
         this["\x1e\x06\x14"]["\x18\x19\x12"] = this["\x1e\x04\x11"].reprodMax <= -1 ? 0 : this["\x1e\x04\x11"].reprodMax;
         this["\x1e\x06\x14"].value = this["\x1e\x04\x11"].reprodMax <= -1 ? 0 : this["\x1e\x04\x11"].reprod;
         this["\x1d\x05\t"].contentPath = dofus.Constants["\x1b\x03\x16"] + "94.swf";
         this["\x1c\x1b\x01"].text = this["\x1e\x04\x11"].modelName;
         var _loc3_ = this["\x1e\x04\x11"].fecondation > 0;
         if(_loc3_)
         {
            this["\x1c\x1d\x02"]._visible = true;
            this["\x1c\n\x0f"]._visible = true;
            this["\x1c\n\x0f"].icon = "Oeuf";
            this["\x1c\x1d\x02"].styleName = "RedLeftMediumBoldLabel";
            this["\x1c\x1d\x02"].text = this.api.lang.getText("PREGNANT_SINCE",[this["\x1e\x04\x11"].fecondation]);
            this["\x1c\x1d\x02"]._x = 110;
            this["\x1d\x0f\x0f"]._visible = false;
            this["\x1e\x06\x14"]._visible = false;
         }
         else if(this["\x1e\x04\x11"].fecondable)
         {
            this["\x1c\x1d\x02"]._visible = true;
            this["\x1c\n\x0f"]._visible = false;
            this["\x1c\x1d\x02"].styleName = "GreenLeftMediumBoldLabel";
            this["\x1c\x1d\x02"].text = this.api.lang.getText("FECONDABLE");
            this["\x1c\x1d\x02"]._x = 90;
            this["\x1d\x0f\x0f"]._visible = true;
            this["\x1e\x06\x14"]._visible = true;
         }
         else if(this["\x1e\x04\x11"].reprodMax == this["\x1e\x04\x11"].reprod)
         {
            this["\x1c\n\x0f"]._visible = false;
            this["\x1c\x1d\x02"]._visible = true;
            this["\x1c\x1d\x02"].styleName = "RedLeftMediumBoldLabel";
            this["\x1c\x1d\x02"].text = this.api.lang.getText("STERILE");
            this["\x1c\x1d\x02"]._x = 90;
            this["\x1d\x0f\x0f"]._visible = false;
            this["\x1e\x06\x14"]._visible = false;
         }
         else if(this["\x1e\x04\x11"].reprod == -1)
         {
            this["\x1c\n\x0f"]._visible = false;
            this["\x1c\x1d\x02"]._visible = true;
            this["\x1c\x1d\x02"].styleName = "RedLeftMediumBoldLabel";
            this["\x1c\x1d\x02"].text = this.api.lang.getText("CASTRATED");
            this["\x1c\x1d\x02"]._x = 90;
            this["\x1d\x0f\x0f"]._visible = false;
            this["\x1e\x06\x14"]._visible = false;
         }
         else
         {
            this["\x1c\n\x0f"]._visible = false;
            this["\x1c\x1d\x02"]._visible = true;
            this["\x1c\x1d\x02"].styleName = "BrownLeftMediumBoldLabel";
            this["\x1c\x1d\x02"].text = this.api.lang.getText("REPRODUCTIONS");
            this["\x1c\x1d\x02"]._x = 90;
            this["\x1d\x0f\x0f"]._visible = true;
            this["\x1e\x06\x14"]._visible = true;
         }
         this.addToQueue({object:this,method:this.setCurrentTab});
      }
   }
   function §\x1a\x13\x10§(§\x16\x13\r§, §\x16\x0f\x11§)
   {
      switch(_loc2_)
      {
         case this._btnTabGeneral:
            this.gotoAndStop("general");
            this.addToQueue({object:this,method:this["\x1b\r\x07"]});
            break;
         case this._btnTabStats:
            this.gotoAndStop("\x1b\n\r");
            this.addToQueue({object:this,method:this["\x1b\r\f"]});
            break;
         case this._btnTabCapacities:
            this.gotoAndStop("\x16\x17\x01");
            this.addToQueue({object:this,method:this["\x1b\r\x03"]});
            break;
         case this._btnTabEffects:
            this.gotoAndStop("effects");
            this.addToQueue({object:this,method:this["\x1b\r\x05"]});
      }
   }
   function §\x1b\r\x07§()
   {
      this["\x1c\x1b\x0f"].text = this.api.lang.getText("NAME_BIG");
      this["\x1c\x1b\x10"].text = this["\x1e\x04\x11"].name;
      this["\x1d\x01\r"].text = this.api.lang.getText("CREATE_SEX");
      this["\x1d\x01\x0e"].text = !this["\x1e\x04\x11"].sex ? this.api.lang.getText("ANIMAL_MEN") : this.api.lang.getText("ANIMAL_WOMEN");
      this["\x1c\x1b\x03"].text = this.api.lang.getText("MOUNTABLE");
      this["\x1c\x1b\x04"].text = !this["\x1e\x04\x11"].mountable ? this.api.lang.getText("NO") : this.api.lang.getText("YES");
      this["\x1d\x04\x0e"].text = this.api.lang.getText("WILD");
      this["\x1d\x04\x0f"].text = !this["\x1e\x04\x11"].wild ? this.api.lang.getText("NO") : this.api.lang.getText("YES");
   }
   function §\x1b\r\f§()
   {
      this["\x1d\x05\x1a"].contentPath = dofus.Constants["\x1b\x03\x16"] + "98.swf";
      this["\x1d\x04\x1d"].contentPath = dofus.Constants["\x1b\x03\x16"] + "99.swf";
      this["\x1d\x05\x14"].contentPath = dofus.Constants["\x1b\x03\x16"] + "97.swf";
      this["\x1d\x05\x15"].contentPath = dofus.Constants["\x1b\x03\x16"] + "97.swf";
      this["\x1d\x06\x02"].contentPath = dofus.Constants["\x1b\x03\x16"] + "96.swf";
      this["\x1d\x06\x03"].contentPath = dofus.Constants["\x1b\x03\x16"] + "96.swf";
      this["\x1d\x05\x16"].contentPath = dofus.Constants["\x1b\x03\x16"] + "95.swf";
      this["\x1d\x05\x17"].contentPath = dofus.Constants["\x1b\x03\x16"] + "95.swf";
      this["\x1c\x12\b"].text = this.api.lang.getText("AGRESSIVITY");
      this["\x1d\x01\t"].text = this.api.lang.getText("SERENITY");
      this["\x1c\x1a\x18"].text = this.api.lang.getText("MATURITY");
      this["\x1d\x02\x05"].text = this.api.lang.getText("STAMINA");
      this["\x1c\x1a\x11"].text = this.api.lang.getText("LOVE");
      this["\x1e\x06\x15"]["\x18\x1d\x03"] = this["\x1e\x04\x11"].serenityMin;
      this["\x1e\x06\x15"]["\x18\x19\x12"] = this["\x1e\x04\x11"].serenityMax;
      this["\x1e\x06\x15"].value = this["\x1e\x04\x11"].serenity;
      this["\x1e\x06\x11"]["\x18\x19\x12"] = this["\x1e\x04\x11"].loveMax;
      this["\x1e\x06\x11"].value = this["\x1e\x04\x11"].love;
      this["\x1e\x06\x12"]["\x18\x19\x12"] = this["\x1e\x04\x11"].maturityMax;
      this["\x1e\x06\x12"].value = this["\x1e\x04\x11"].maturity;
      this["\x1e\x06\x16"]["\x18\x19\x12"] = this["\x1e\x04\x11"].staminaMax;
      this["\x1e\x06\x16"].value = this["\x1e\x04\x11"].stamina;
      this["\x1d\x0f\x19"].onRollOver = function()
      {
         this._parent.gapi.showTooltip(new ank.utils.ExtendedString(this._parent["\x1e\x04\x11"].serenityMin)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + " / " + new ank.utils.ExtendedString(this._parent["\x1e\x04\x11"].serenity)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + " / " + new ank.utils.ExtendedString(this._parent["\x1e\x04\x11"].serenityMax)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3),this,-10);
      };
      this["\x1d\x0f\x19"].onRollOut = function()
      {
         this._parent.gapi.hideTooltip();
      };
      this["\x1d\r\x11"].onRollOver = function()
      {
         this._parent.gapi.showTooltip(new ank.utils.ExtendedString(this._parent["\x1e\x04\x11"].love)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + " / " + new ank.utils.ExtendedString(this._parent["\x1e\x04\x11"].loveMax)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3),this,-10);
      };
      this["\x1d\r\x11"].onRollOut = function()
      {
         this._parent.gapi.hideTooltip();
      };
      this["\x1d\r\x18"].onRollOver = function()
      {
         this._parent.gapi.showTooltip(new ank.utils.ExtendedString(this._parent["\x1e\x04\x11"].maturity)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + " / " + new ank.utils.ExtendedString(this._parent["\x1e\x04\x11"].maturityMax)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3),this,-10);
      };
      this["\x1d\r\x18"].onRollOut = function()
      {
         this._parent.gapi.hideTooltip();
      };
      this["\x1d\x10\x13"].onRollOver = function()
      {
         this._parent.gapi.showTooltip(new ank.utils.ExtendedString(this._parent["\x1e\x04\x11"].stamina)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + " / " + new ank.utils.ExtendedString(this._parent["\x1e\x04\x11"].staminaMax)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3),this,-10);
      };
      this["\x1d\x10\x13"].onRollOut = function()
      {
         this._parent.gapi.hideTooltip();
      };
      this["\x1d\x12\x02"].onRollOver = function()
      {
         this._alpha = 100;
         this._parent.gapi.showTooltip(this._parent.api.lang.getText("MOUNT_VIEWER_TOOLTIP_ZONE1"),this,-30);
      };
      this["\x1d\x12\x02"].onRollOut = function()
      {
         this._alpha = 0;
         this._parent.gapi.hideTooltip();
      };
      this["\x1d\x12\x03"].onRollOver = function()
      {
         this._alpha = 100;
         this._parent.gapi.showTooltip(this._parent.api.lang.getText("MOUNT_VIEWER_TOOLTIP_ZONE2"),this,-30);
      };
      this["\x1d\x12\x03"].onRollOut = function()
      {
         this._alpha = 0;
         this._parent.gapi.hideTooltip();
      };
      this["\x1d\x12\x04"].onRollOver = function()
      {
         this._alpha = 100;
         this._parent.gapi.showTooltip(this._parent.api.lang.getText("MOUNT_VIEWER_TOOLTIP_ZONE3"),this,-30);
      };
      this["\x1d\x12\x04"].onRollOut = function()
      {
         this._alpha = 0;
         this._parent.gapi.hideTooltip();
      };
      this["\x1d\x12\x02"]._alpha = 0;
      this["\x1d\x12\x03"]._alpha = 0;
      this["\x1d\x12\x04"]._alpha = 0;
      this["\x1c\x1a\x18"].onRollOver = function()
      {
         this._parent.gapi.showTooltip(this._parent.api.lang.getText("MOUNT_VIEWER_TOOLTIP_MATURITY"),this,-10);
      };
      this["\x1c\x1a\x18"].onRollOut = function()
      {
         this._parent.gapi.hideTooltip();
      };
      this["\x1d\x02\x05"].onRollOver = function()
      {
         this._parent.gapi.showTooltip(this._parent.api.lang.getText("MOUNT_VIEWER_TOOLTIP_STAMINA"),this,-10);
      };
      this["\x1d\x02\x05"].onRollOut = function()
      {
         this._parent.gapi.hideTooltip();
      };
      this["\x1c\x1a\x11"].onRollOver = function()
      {
         this._parent.gapi.showTooltip(this._parent.api.lang.getText("MOUNT_VIEWER_TOOLTIP_LOVE"),this,-10);
      };
      this["\x1c\x1a\x11"].onRollOut = function()
      {
         this._parent.gapi.hideTooltip();
      };
   }
   function §\x1b\r\x03§()
   {
      this._lstList.addEventListener("itemRollOver",this);
      this._lstList.addEventListener("itemRollOut",this);
      if(this["\x1e\x04\x11"]["\x16\x17\x01"].length > 0)
      {
         this._lstList.dataProvider = this["\x1e\x04\x11"]["\x16\x17\x01"];
      }
      else
      {
         var _loc2_ = new ank.utils.ExtendedArray();
         _loc2_.push({label:this.api.lang.getText("NO_CONDITIONS")});
         this._lstList.dataProvider = _loc2_;
      }
   }
   function §\x1b\r\x05§()
   {
      this._lstList.removeEventListener("itemRollOver",this);
      this._lstList.removeEventListener("itemRollOut",this);
      if(this["\x1e\x04\x11"].effects.length > 0)
      {
         var _loc2_ = new ank.utils.ExtendedArray();
         var _loc3_ = this["\x1e\x04\x11"].effects;
         var _loc4_ = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc2_.push({label:_loc3_[_loc4_].description});
            _loc4_ = _loc4_ + 1;
         }
         this._lstList.dataProvider = _loc2_;
      }
      else
      {
         var _loc5_ = new ank.utils.ExtendedArray();
         _loc5_.push({label:this.api.lang.getText("NONE")});
         this._lstList.dataProvider = _loc5_;
      }
   }
   function initialization(oEvent)
   {
      var _loc3_ = _loc2_.target.content;
      _loc3_.attachMovie("staticR_front","anim_front",11);
      _loc3_.attachMovie("staticR_back","anim_back",10);
   }
   function click(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) !== this["\x1c\b\x1b"])
      {
         this.setCurrentTab(_loc2_.target._name.substr(7));
      }
      else
      {
         this.gapi.loadUIComponent("MountAncestorsViewer","MountAncestorsViewer",{mount:this["\x1e\x04\x11"]});
      }
   }
   function nameChanged(oEvent)
   {
      var _loc3_ = this.api.datacenter.Player.mount;
      this["\x1c\x1b\x10"].text = _loc3_.name;
   }
   function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\b\x1b"]:
            this.gapi.showTooltip(this.api.lang.getText("MOUNT_ANCESTORS"),_loc2_.target,-30,{bXLimit:true,bYLimit:false});
            break;
         case this["\x1c\n\x0f"]:
            var _loc3_ = this.api.lang.getText(this["\x1e\x04\x11"].fecondation <= 0 ? "FECONDABLE" : "PREGNANT_SINCE",[this["\x1e\x04\x11"].fecondation]);
            this.gapi.showTooltip(_loc3_,_loc2_.target,-30,{bXLimit:true,bYLimit:false});
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function itemRollOver(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._lstList)
      {
         if(this._btnTabCapacities.selected == false)
         {
            var _loc3_ = this.api.lang["\x17\x1c\n"](_loc2_.row.item.data).d;
            if(_loc3_ != undefined && _loc3_.length > 0)
            {
               this.gapi.showTooltip(_loc3_,_loc2_.target,20,{bXLimit:true,bYLimit:false});
            }
         }
      }
   }
   function itemRollOut(oEvent)
   {
      this.out();
   }
}
