class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.SpellFullInfosViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "SpellFullInfosViewer";
   var §\x1e\b\x19§ = "Normal";
   function SpellFullInfosViewer()
   {
      super();
   }
   function §\x1d\r§(§\x1a\x02\x06§)
   {
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      if(_loc2_ == this["\x1e\x05\x14"])
      {
         return undefined;
      }
      if(!_loc2_["\x18\x10\n"])
      {
         this["\x1e\x05\x14"] = new dofus.datacenter.["\x1b\x06\x06"](_loc2_.ID,1);
      }
      else
      {
         this["\x1e\x05\x14"] = _loc2_;
      }
      if(this["\x18\t\x1c"])
      {
         this["\x1b\x14\x14"]();
      }
      return this["\t\x17"]();
   }
   function §\t\x17§()
   {
      return this["\x1e\x05\x14"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.SpellFullInfosViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.initTexts});
      this["\x18\x05\x1d"]();
      this._btnTabCreature._visible = false;
      this._btnTabGlyph._visible = false;
      this._btnTabTrap._visible = false;
   }
   function addListeners()
   {
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
      this._ldrIcon.addEventListener("complete",this);
      this._btnTabNormal.addEventListener("click",this);
      this._btnTabCritical.addEventListener("click",this);
      this._btnTabCreature.addEventListener("click",this);
      this._btnTabGlyph.addEventListener("click",this);
      this._btnTabTrap.addEventListener("click",this);
      this._btnLevel1.addEventListener("click",this);
      this._btnLevel2.addEventListener("click",this);
      this._btnLevel3.addEventListener("click",this);
      this._btnLevel4.addEventListener("click",this);
      this._btnLevel5.addEventListener("click",this);
      this._btnLevel6.addEventListener("click",this);
      this._btnClose.addEventListener("click",this);
   }
   function onShortcut(sShortcut)
   {
      var _loc3_ = true;
      var _loc0_ = null;
      if((_loc0_ = _loc2_) === "ESCAPE")
      {
         this["\x17\x07\x19"]({type:"close"});
         this["\x1b\x13\x13"]();
         _loc3_ = false;
      }
      return _loc3_;
   }
   function initData()
   {
      this["\x1b\x14\x14"]();
   }
   function initTexts()
   {
      this["\x1c\x17\x0f"].text = this.api.lang.getText("EFFECTS");
      this["\x1c\x1c\f"].text = this.api.lang.getText("OTHER_CHARACTERISTICS");
      this["\x1c\x16\x0b"].text = this.api.lang.getText("CRITICAL_HIT_PROBABILITY");
      this["\x1c\x16\x0e"].text = this.api.lang.getText("CRITICAL_MISS_PROBABILITY");
      this["\x1c\x15\x1b"].text = this.api.lang.getText("COUNT_BY_TURN");
      this["\x1c\x15\x1c"].text = this.api.lang.getText("COUNT_BY_TURN_BY_PLAYER");
      this["\x1c\x1d\x0f"].text = this.api.lang.getText("RANGE_BOOST");
      this["\x1c\x1a\x0b"].text = this.api.lang.getText("LINE_OF_SIGHT");
      this["\x1c\x1a\f"].text = this.api.lang.getText("LINE_ONLY");
      this["\x1c\x18\x05"].text = this.api.lang.getText("FREE_CELL");
      this["\x1c\x1d\x1a"].text = this.api.lang.getText("ACTUAL_CRITICAL_CHANCE");
      this["\x1c\x17\x15"].text = this.api.lang.getText("FAILURE_ENDS_THE_TURN");
      this._btnTabNormal.label = this.api.lang.getText("NORMAL_EFFECTS");
      this._btnTabCritical.label = this.api.lang.getText("CRITICAL_EFECTS");
      this._btnTabCreature.label = this.api.lang.getText("SUMMONED_CREATURE");
      this._btnTabGlyph.label = this.api.lang.getText("GLYPH");
      this._btnTabTrap.label = this.api.lang.getText("TRAP");
   }
   function §\x1b\x14\x14§()
   {
      if(this["\x1e\x05\x14"] != undefined && this["\x1e\x0f\n"].text != undefined)
      {
         this._ldrIcon.forceReload = true;
         this._ldrIcon.contentParams = this["\x1e\x05\x14"].params;
         this._ldrIcon.contentPath = this["\x1e\x05\x14"].iconFile;
         if(this._ldrIcon.loaded)
         {
            this._ldrIcon.content.applyColors();
         }
         this["\x1c\x16\x13"].text = !this["\x1e\x05\x14"].isCastGlobalInterval ? this.api.lang.getText("DELAY_RELAUNCH") : this.api.lang.getText("DELAY_RELAUNCH_GLOBAL");
         this["\x1c\x1b\x0f"].text = this["\x1e\x05\x14"].name;
         this["\x1c\x1a\x07"].text = this.api.lang.getText("ACTUAL_SPELL_LEVEL") + ":";
         this["\x1c\x1e\b"].text = this["\x1e\x05\x14"]["\x18\x1d\x06"] == undefined ? "" : this.api.lang.getText("REQUIRED_SPELL_LEVEL") + ": " + this["\x1e\x05\x14"]["\x18\x1d\x06"];
         this["\x1c\x1d\f"].text = this["\x1e\x05\x14"]["\x1a\t\x17"] + " " + this.api.lang.getText("RANGE");
         this["\x1c\x12\x11"].text = (!(this["\x1e\x05\x14"]["\x16\x04\x03"] < 1 && !this["\x1e\x05\x14"].isPassive) ? this["\x1e\x05\x14"]["\x16\x04\x03"] : "1") + " " + this.api.lang.getText("AP");
         this["\x1e\x0f\n"].text = this["\x1e\x05\x14"].description;
         this._btnTabCreature._visible = this["\x1e\x05\x14"]["\x1b\f\f"];
         this._btnTabGlyph._visible = this["\x1e\x05\x14"]["\x18\x03\x0b"];
         this._btnTabTrap._visible = this["\x1e\x05\x14"]["\x1b\x11\r"];
         if(this["\x1e\x05\x14"]["\x17\f\x06"][0] == undefined)
         {
            if(this["\x1e\b\x19"] == "Critical")
            {
               this.setCurrentTab("Normal");
            }
            this._btnTabCritical._alpha = 70;
            this._btnTabCritical.enabled = false;
         }
         else
         {
            this._btnTabCritical._alpha = 100;
            this._btnTabCritical.enabled = true;
         }
         if(!this["\x1e\x05\x14"]["\x1b\f\f"] && this["\x1e\b\x19"] == "Creature")
         {
            this.setCurrentTab("Normal");
         }
         else if(!this["\x1e\x05\x14"]["\x18\x03\x0b"] && this["\x1e\b\x19"] == "Glyph")
         {
            this.setCurrentTab("Normal");
         }
         else if(!this["\x1e\x05\x14"]["\x1b\x11\r"] && this["\x1e\b\x19"] == "Trap")
         {
            this.setCurrentTab("Normal");
         }
         else
         {
            this["\x1b\x14\x13"]();
         }
         var _loc2_ = this.api.kernel.GameManager["\x17\x15\x1a"](this["\x1e\x05\x14"]["\x17\x03\b"]);
         this["\x1c\x1d\x1b"].text = _loc2_ != 0 ? "1/" + _loc2_ : "-";
         this["\x1c\x16\r"].text = this["\x1e\x05\x14"]["\x17\x03\b"] != 0 ? "1/" + this["\x1e\x05\x14"]["\x17\x03\b"] : "-";
         this["\x1c\x16\x0f"].text = this["\x1e\x05\x14"]["\x17\x03\x06"] != 0 ? "1/" + this["\x1e\x05\x14"]["\x17\x03\x06"] : "-";
         this["\x1c\x16\x01"].text = this["\x1e\x05\x14"]["\x18\x13\x05"] != 0 ? String(this["\x1e\x05\x14"]["\x18\x13\x05"]) : "-";
         this["\x1c\x15\x1d"].text = this["\x1e\x05\x14"]["\x18\x13\x04"] != 0 ? String(this["\x1e\x05\x14"]["\x18\x13\x04"]) : "-";
         this["\x1c\x16\x14"].text = this["\x1e\x05\x14"]["\x17\x06\x13"] < 63 ? (this["\x1e\x05\x14"]["\x17\x06\x13"] != 0 ? String(this["\x1e\x05\x14"]["\x17\x06\x13"]) : "-") : "inf.";
         this["\x1d\n\r"]._visible = !this["\x1e\x05\x14"]["\x16\x15\x1a"];
         this["\x1d\t\x17"]._visible = this["\x1e\x05\x14"]["\x16\x15\x1a"];
         this["\x1d\n\x0b"]._visible = !this["\x1e\x05\x14"]["\x18\x15\x05"];
         this["\x1d\t\x15"]._visible = this["\x1e\x05\x14"]["\x18\x15\x05"];
         this["\x1d\n\f"]._visible = !this["\x1e\x05\x14"]["\x18\x15\x06"];
         this["\x1d\t\x16"]._visible = this["\x1e\x05\x14"]["\x18\x15\x06"];
         this["\x1d\n\n"]._visible = !this["\x1e\x05\x14"]["\x17\x12\x11"];
         this["\x1d\t\x14"]._visible = this["\x1e\x05\x14"]["\x17\x12\x11"];
         this["\x1d\n\t"]._visible = !this["\x1e\x05\x14"]["\x17\x03\x07"];
         this["\x1d\t\x12"]._visible = this["\x1e\x05\x14"]["\x17\x03\x07"];
         if(this["\x1e\x05\x14"].level != undefined)
         {
            var _loc3_ = 1;
            while(_loc3_ <= 6)
            {
               var _loc4_ = this["_btnLevel" + _loc3_];
               var _loc5_ = _loc3_ == this["\x1e\x05\x14"].level;
               _loc4_.selected = _loc5_;
               _loc4_.enabled = !_loc5_;
               if(_loc3_ <= this["\x1e\x05\x14"]["\x18\x19\x19"])
               {
                  _loc4_._alpha = 100;
               }
               else
               {
                  _loc4_.enabled = false;
                  _loc4_._alpha = 20;
               }
               _loc3_ = _loc3_ + 1;
            }
         }
         else
         {
            var _loc6_ = 1;
            while(_loc6_ <= 6)
            {
               var _loc7_ = this["_btnLevel" + _loc6_];
               _loc7_.selected = false;
               _loc7_.enabled = false;
               _loc7_._alpha = 20;
               _loc6_ = _loc6_ + 1;
            }
         }
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1c\x16\x13"].text = this.api.lang.getText("DELAY_RELAUNCH");
         this._ldrIcon.contentPath = "";
         this["\x1c\x1b\x0f"].text = "";
         this["\x1c\x1a\x07"].text = "";
         this["\x1c\x1d\f"].text = "";
         this["\x1c\x12\x11"].text = "";
         this["\x1e\x0f\n"].text = "";
         this["\x1c\x16\r"].text = "";
         this["\x1c\x16\x0f"].text = "";
         this["\x1c\x16\x01"].text = "";
         this["\x1c\x15\x1d"].text = "";
         this["\x1c\x16\x14"].text = "";
         this["\x18\x05\x1d"]();
         this["\x1d\x06\x14"].dataProvider = null;
      }
   }
   function §\x1b\x14\x13§()
   {
      switch(this["\x1e\b\x19"])
      {
         case "Normal":
            this["\x1d\x06\x14"].dataProvider = this["\x1e\x05\x14"]["\x17\f\x0b"];
            break;
         case "Critical":
            this["\x1d\x06\x14"].dataProvider = this["\x1e\x05\x14"]["\x17\f\x07"];
            break;
         case "Creature":
            var _loc2_ = this["\x1e\x05\x14"]["\x17\f\n"];
            var _loc4_ = 0;
            while(_loc4_ < _loc2_.length)
            {
               var _loc3_ = _loc2_[_loc4_];
               if(_loc3_.type == 181)
               {
                  break;
               }
               _loc3_.type = _loc0_ = 180;
               if(_loc0_)
               {
                  var _loc5_ = new ank.utils.ExtendedArray();
                  var _loc6_ = this.api.datacenter.Player.data;
                  _loc5_.push(_loc6_.name + " (" + this.api.lang.getText("LEVEL") + " " + this.api.datacenter.Player.Level + ")");
                  _loc5_.push(this.api.lang.getText("LP") + " : " + this.api.datacenter.Player.LP);
                  _loc5_.push(this.api.lang.getText("AP") + " : " + _loc6_.AP);
                  _loc5_.push(this.api.lang.getText("MP") + " : " + _loc6_.MP);
                  this["\x1d\x06\x14"].dataProvider = _loc5_;
                  return undefined;
               }
               _loc4_ = _loc4_ + 1;
            }
            var _loc7_ = new ank.utils.ExtendedArray();
            if(_loc3_ != undefined)
            {
               var _loc8_ = _loc3_["\x1a\x03\r"];
               var _loc9_ = _loc3_["\x1a\x03\x0e"];
               var _loc10_ = this.api.lang["\x17\x1c\t"](_loc8_);
               var _loc11_ = _loc10_["g" + _loc9_];
               _loc7_.push(_loc10_.n + " (" + this.api.lang.getText("LEVEL") + " " + _loc11_.l + ")");
               var _loc12_ = !dofus.datacenter.Gladiatrool.isIncarnation(this.api.datacenter.Player["\x1b\x18\x1b"].unicID) ? this.api.datacenter.Player.Level : 200;
               var _loc13_ = Math.floor(_loc11_.lp * (1 + _loc12_ / 100));
               _loc7_.push(this.api.lang.getText("LP") + " : " + _loc13_ + " (" + _loc11_.lp + " + " + (_loc13_ - _loc11_.lp) + ")");
               _loc7_.push(this.api.lang.getText("AP") + " : " + _loc11_.ap);
               _loc7_.push(this.api.lang.getText("MP") + " : " + _loc11_.mp);
            }
            this["\x1d\x06\x14"].dataProvider = _loc7_;
            break;
         case "Glyph":
         case "Trap":
            var _loc14_ = 400;
            if(this["\x1e\b\x19"] == "Glyph")
            {
               _loc14_ = 401;
            }
            var _loc15_ = this["\x1e\x05\x14"]["\x17\f\n"];
            var _loc17_ = 0;
            while(_loc17_ < _loc15_.length)
            {
               var _loc16_ = _loc15_[_loc17_];
               if(_loc16_.type == _loc14_)
               {
                  break;
               }
               _loc17_ = _loc17_ + 1;
            }
            var _loc18_ = new ank.utils.ExtendedArray();
            if(_loc16_ != undefined)
            {
               var _loc19_ = _loc16_["\x1a\x03\r"];
               var _loc20_ = _loc16_["\x1a\x03\x0e"];
               var _loc21_ = this.api.kernel.CharactersManager["\x18\x01\x05"](_loc19_ + "~" + _loc20_ + "~");
               _loc18_ = _loc21_["\x17\f\n"];
            }
            this["\x1d\x06\x14"].dataProvider = _loc18_;
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
   function §\x18\x05\x1d§()
   {
      this["\x1d\n\r"]._visible = true;
      this["\x1d\t\x17"]._visible = false;
      this["\x1d\n\x0b"]._visible = true;
      this["\x1d\t\x15"]._visible = false;
      this["\x1d\n\f"]._visible = true;
      this["\x1d\t\x16"]._visible = false;
      this["\x1d\n\n"]._visible = true;
      this["\x1d\t\x14"]._visible = false;
   }
   function §\x1a\x17\x15§(§\x19\t\x0f§)
   {
      var _loc3_ = this.api.kernel.CharactersManager["\x18\x01\x05"](this["\x1e\x05\x14"].ID + "~" + _loc2_);
      if(_loc3_["\x18\x10\n"])
      {
         this.spell = _loc3_;
      }
      else
      {
         this["_btnLevel" + _loc2_].selected = false;
      }
   }
   function complete(oEvent)
   {
      var _loc3_ = _loc2_.clip;
      _loc3_.applyColors();
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnTabNormal":
            this.setCurrentTab("Normal");
            break;
         case "_btnTabCritical":
            this.setCurrentTab("Critical");
            break;
         case "_btnTabCreature":
            this.setCurrentTab("Creature");
            break;
         case "_btnTabGlyph":
            this.setCurrentTab("Glyph");
            break;
         case "_btnTabTrap":
            this.setCurrentTab("Trap");
            break;
         case "_btnLevel1":
         case "_btnLevel2":
         case "_btnLevel3":
         case "_btnLevel4":
         case "_btnLevel5":
         case "_btnLevel6":
            var _loc3_ = _loc2_.target._name.substr(9);
            this["\x1a\x17\x15"](Number(_loc3_));
            break;
         case "_btnClose":
            this["\x17\x07\x19"]({type:"close"});
            this["\x1b\x13\x13"]();
      }
   }
}
