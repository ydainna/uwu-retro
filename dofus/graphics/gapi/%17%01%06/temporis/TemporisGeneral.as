class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.temporis.TemporisGeneral extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "TemporisGeneral";
   static var SPELLS_EXCEPTIONS_QTY = 3;
   function TemporisGeneral()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.temporis.TemporisGeneral.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
   }
   function addListeners()
   {
      this.api.datacenter.Basics.addEventListener("worldUniqueDropsStatesRefresh",this);
      var ref = this;
      this._circleGeneralProgression.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._circleGeneralProgression.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._cbDungeonRelicsProgression.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._cbDungeonRelicsProgression.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._circleParchomanciaSpellsCount.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._circleParchomanciaSpellsCount.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._circleKeysDrop.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._circleKeysDrop.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._circleTowerProgression.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._circleTowerProgression.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._circleDungeonRelicsProgression.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._circleDungeonRelicsProgression.onRollOut = function()
      {
         ref.out({target:this});
      };
   }
   function §\x18\t\x14§()
   {
      var _loc2_ = this.api.lang.getConfigText("TEMPORIS_2_TOWER_COMPLETION_QUEST_ID");
      this.api.network.Quests["\x17\x1b\x01"]();
      this.api.network.Quests["\x18\x01\x0f"](_loc2_);
      var _loc3_ = this.api.lang.getConfigText("TR2_DUNGEON_RELICS_QUESTS");
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         var _loc5_ = _loc3_[_loc4_];
         this.api.network.Quests["\x18\x01\x0f"](_loc5_);
         _loc4_ = _loc4_ + 1;
      }
      this.api.network.Evenemential.sendAskWorldUniqueDropsStates();
      this._lblProgressionTitle.text = this.api.lang.getText("PROGRESSION_FOLLOWUP");
      this._lblKeysDrop.text = this.api.lang.getText("DROP_OF_KEYS");
      this._lblTowerProgression.text = this.api.lang.getText("PROGRESSION_IN_TOWER");
      this._lblParchomanciaSpellsCount.text = this.api.lang.getText("PARCHOMANCIA_SPELLS_EARN_WAY");
      this._lblDungeonRelicsProgression.text = this.api.lang.getText("PROGRESS_DUNGEON_RELICS");
      this._lblGeneralProgression.text = this.api.lang.getText("GLOBAL_PROGRESSION");
      this["\x1c\x1e\r"].text = this.api.lang.getText("THE_REWARDS");
      var _loc6_ = false;
      if(this._cbGeneralProgression.value == this._cbGeneralProgression["\x18\x19\x12"] || _loc6_)
      {
         this["\x1c\x1e\r"].text = this.api.lang.getText("PARCHOMANCIA_MASTERED_TEXT");
         this._ldrRewards.width += 200;
         this._ldrRewards.height += 200;
         this._ldrRewards.contentPath = dofus.Constants["\x16\x05\x10"] + 9313 + ".swf";
         this._ldrRewards._x -= 105;
         this._ldrRewards._y -= 20;
      }
   }
   function initProgressBars()
   {
      var _loc2_ = this.api.lang.getConfigText("TEMPORIS_2_TOWER_STEPS_COUNT");
      var _loc3_ = this.api.lang.getConfigText("TEMPORIS_2_TOWER_COMPLETION_QUEST_ID");
      var _loc4_ = this.getQuestById(_loc3_);
      var _loc5_ = this.api.lang.getConfigText("TEMPORIS_2_TOWER_COMPLETION_QUEST_STEPS_OFFSET");
      var _loc6_ = this.api.lang.getConfigText("TEMPORIS_2_TOWER_UNLOCK_ITEMS_OFFSET");
      var _loc7_ = 0;
      var _loc8_ = 0;
      var _loc9_ = this.isQuestFinished(_loc3_);
      var _loc10_ = 1;
      while(_loc10_ <= _loc2_)
      {
         var _loc11_ = _loc5_ + _loc10_;
         var _loc12_ = _loc6_ + _loc10_;
         var _loc13_ = this.api.datacenter.Basics.isWorldUniqueItemAlreadyDropped(_loc12_);
         var _loc14_ = _loc9_ || this.isQuestStepFinished(_loc4_,_loc11_);
         if(_loc13_)
         {
            _loc7_ = _loc7_ + 1;
         }
         if(_loc14_)
         {
            _loc8_ = _loc8_ + 1;
         }
         _loc10_ = _loc10_ + 1;
      }
      var _loc15_ = 0;
      var _loc16_ = 0;
      var _loc17_ = dofus.graphics.gapi.ui.SpellsCollection.getAvailableSpells();
      var _loc18_ = 0;
      while(_loc18_ < _loc17_.length)
      {
         var _loc19_ = _loc17_[_loc18_];
         if(this.api.datacenter.Player.isSpellOwned(_loc19_.ID))
         {
            _loc15_ = _loc15_ + 1;
         }
         _loc16_ = _loc16_ + 1;
         _loc18_ = _loc18_ + 1;
      }
      var _loc20_ = 0;
      var _loc21_ = 0;
      var _loc22_ = this.api.lang.getConfigText("TR2_DUNGEON_RELICS_QUESTS");
      var _loc23_ = 0;
      while(_loc23_ < _loc22_.length)
      {
         var _loc24_ = _loc22_[_loc23_];
         var _loc25_ = this.getQuestById(_loc24_);
         if(_loc25_ != undefined)
         {
            var _loc26_ = _loc25_["\x18\r\x17"];
            if(_loc26_)
            {
               _loc20_ = 48;
               _loc21_ = 48;
            }
            else
            {
               var _loc27_ = _loc25_["\x17\x03\x1c"]["\x19\x11\x16"];
               if(_loc27_ != undefined)
               {
                  _loc20_ += _loc27_.length;
                  var _loc28_ = 0;
                  while(_loc28_ < _loc27_.length)
                  {
                     var _loc29_ = _loc27_[_loc28_];
                     if(_loc29_["\x18\r\x17"])
                     {
                        _loc21_ = _loc21_ + 1;
                     }
                     _loc28_ = _loc28_ + 1;
                  }
               }
            }
         }
         _loc23_ = _loc23_ + 1;
      }
      this._cbKeysDrop["\x18\x19\x12"] = _loc2_ - 1;
      this._cbKeysDrop.value = _loc7_;
      this._cbTowerProgression["\x18\x19\x12"] = _loc2_;
      this._cbTowerProgression.value = _loc8_;
      this._cbParchomanciaSpellsCount["\x18\x19\x12"] = _loc16_ - dofus.graphics.gapi.controls.temporis.TemporisGeneral.SPELLS_EXCEPTIONS_QTY;
      this._cbParchomanciaSpellsCount.value = _loc15_;
      this._cbDungeonRelicsProgression["\x18\x19\x12"] = _loc20_;
      this._cbDungeonRelicsProgression.value = _loc21_;
      this._cbGeneralProgression["\x18\x19\x12"] = this._cbKeysDrop["\x18\x19\x12"] + this._cbParchomanciaSpellsCount["\x18\x19\x12"] + this._cbDungeonRelicsProgression["\x18\x19\x12"] + this._cbTowerProgression["\x18\x19\x12"];
      this._cbGeneralProgression.value = this._cbKeysDrop.value + this._cbParchomanciaSpellsCount.value + this._cbDungeonRelicsProgression.value + this._cbTowerProgression.value;
   }
   function worldUniqueDropsStatesRefresh(oEvent)
   {
      this.initProgressBars();
   }
   function setQuests(aQuests)
   {
      this._aQuests = aQuests;
   }
   function isQuestFinished(nQuestId)
   {
      var _loc3_ = this.getQuestById(nQuestId);
      if(_loc3_ == undefined)
      {
         return false;
      }
      return _loc3_["\x18\r\x17"];
   }
   function getQuestById(nQuestId)
   {
      var _loc3_ = this._aQuests;
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         var _loc5_ = _loc3_[_loc4_];
         if(_loc5_.id == nQuestId)
         {
            return _loc5_;
         }
         _loc4_ = _loc4_ + 1;
      }
      return undefined;
   }
   function isQuestStepFinished(oQuest, nQuestStepID)
   {
      if(oQuest == undefined)
      {
         return false;
      }
      var _loc4_ = oQuest["\x18\x01\x0f"](nQuestStepID);
      if(_loc4_ == undefined || _loc4_ == null)
      {
         return false;
      }
      return _loc4_["\x18\r\x17"];
   }
   function circleBarFormattedToolTip(label, §\x16\x17\x0e§)
   {
      this.gapi.showTooltip(this.api.lang.getText(label) + " - " + Math.floor(100 * _loc3_.value / _loc3_["\x18\x19\x12"]) + "%",_loc3_,-20);
   }
   function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._circleGeneralProgression:
            this.circleBarFormattedToolTip("GLOBAL_PROGRESSION",this._cbGeneralProgression);
            break;
         case this._circleTowerProgression:
            this.circleBarFormattedToolTip("PROGRESSION_IN_TOWER",this._cbTowerProgression);
            break;
         case this._circleKeysDrop:
            this.circleBarFormattedToolTip("DROP_OF_KEYS",this._cbKeysDrop);
            break;
         case this._circleParchomanciaSpellsCount:
            this.circleBarFormattedToolTip("PARCHOMANCIA_SPELLS_EARN_WAY",this._cbParchomanciaSpellsCount);
            break;
         case this._circleDungeonRelicsProgression:
            this.circleBarFormattedToolTip("PROGRESS_DUNGEON_RELICS",this._cbDungeonRelicsProgression);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
