class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.temporis.TemporisTower extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "TemporisTower";
   function TemporisTower()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.temporis.TemporisTower.CLASS_NAME);
   }
   function createChildren()
   {
      this._mcBouneStatic._visible = false;
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
   }
   function addListeners()
   {
      this._cgSteps.addEventListener("selectItem",this);
      this.api.datacenter.Basics.addEventListener("worldUniqueDropsStatesRefresh",this);
      this._ldrBackground.contentPath = dofus.Constants.EVENEMENTIALS_TEMPORIS_2_TOWER_ILLUS_PATH + "floors.swf";
      this._ldrTower.contentPath = dofus.Constants.EVENEMENTIALS_TEMPORIS_2_TOWER_ILLUS_PATH + "tower.swf";
      var ref = this;
      this._mcBouneStatic.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._mcBouneStatic.onRollOut = function()
      {
         ref.out({target:this});
      };
   }
   function initData()
   {
      var _loc2_ = this.api.lang.getConfigText("TEMPORIS_2_TOWER_COMPLETION_QUEST_ID");
      this.api.network.Quests["\x17\x1b\x01"]();
      this.api.network.Quests["\x18\x01\x0f"](_loc2_);
      this.api.network.Evenemential.sendAskWorldUniqueDropsStates();
   }
   function initGrid()
   {
      var _loc2_ = new ank.utils.ExtendedArray();
      var _loc3_ = this.api.lang.getConfigText("TEMPORIS_2_TOWER_STEPS_COUNT");
      var _loc4_ = this.api.lang.getConfigText("TEMPORIS_2_TOWER_COMPLETION_QUEST_ID");
      var _loc5_ = this.getQuestById(_loc4_);
      var _loc6_ = this.api.lang.getConfigText("TEMPORIS_2_TOWER_COMPLETION_QUEST_STEPS_OFFSET");
      var _loc7_ = this.api.lang.getConfigText("TEMPORIS_2_TOWER_UNLOCK_ITEMS_OFFSET");
      var _loc8_ = true;
      var _loc9_ = true;
      var _loc10_ = this.isQuestFinished(_loc4_);
      var _loc11_ = 1;
      while(_loc11_ <= _loc3_)
      {
         var _loc12_ = _loc6_ + _loc11_;
         var _loc13_ = _loc7_ + _loc11_;
         var _loc14_ = _loc11_ == 1 || this.api.datacenter.Basics.isWorldUniqueItemAlreadyDropped(_loc13_);
         var _loc15_ = _loc10_ || this.isQuestStepFinished(_loc5_,_loc12_);
         var _loc16_ = new dofus.datacenter..temporis2.T2TowerStepObject(_loc11_,_loc8_,_loc14_,_loc15_,_loc9_);
         _loc16_.addEventListener("onStepObjectIlluOver",this);
         _loc2_.push(_loc16_);
         if(!_loc15_)
         {
            _loc8_ = false;
         }
         if(!_loc14_)
         {
            _loc9_ = false;
         }
         _loc11_ = _loc11_ + 1;
      }
      this._cgSteps.dataProvider = _loc2_;
   }
   function initSelectedTowerStepObject()
   {
      if(this._selectedTowerStepObject == undefined)
      {
         return undefined;
      }
      this._lblChallengeName.text = this._selectedTowerStepObject.challengeName;
      this._txtChallengeHint.text = this._selectedTowerStepObject.challengeHint;
      this["\x1d\x05\x11"].contentPath = this._selectedTowerStepObject.challengeIlluFile;
   }
   function worldUniqueDropsStatesRefresh(oEvent)
   {
      this.initGrid();
   }
   function selectItem(oEvent)
   {
      var _loc3_ = _loc2_.target.contentData;
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      var _loc0_ = null;
      if((_loc0_ = _loc2_.owner) === this._cgSteps)
      {
         var _loc4_ = dofus.datacenter..temporis2.T2TowerStepObject(_loc3_);
         this.selectStepObject(_loc4_);
      }
   }
   function onStepObjectIlluOver(oEvent)
   {
      this.selectStepObject(_loc2_.target);
   }
   function selectStepObject(§\x19\x13\x07§)
   {
      this._ldrTower._visible = false;
      this._mcBouneStatic._visible = true;
      this._selectedTowerStepObject = _loc2_;
      this.initSelectedTowerStepObject();
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
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) !== this._mcBouneStatic)
      {
         this.api.ui.hideTooltip();
      }
      else
      {
         this.api.ui.showTooltip(this.api.lang.getText("HINT_TO_FIND_KEY"),_loc2_.target,-15);
      }
   }
   function out(oEvent)
   {
      this.api.ui.hideTooltip();
   }
}
