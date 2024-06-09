class dofus.§\x18\x03\x10§.gapi.ui.Quests extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Quests";
   function Quests()
   {
      super();
   }
   function §\x1a\x18\x16§(§\x19\x05\f§)
   {
      this["\x1c\x1d\x0b"].text = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("PENDING_QUEST",[_loc2_]),"m",_loc2_ < 2);
   }
   function §\x1a\x1a\f§(§\x1a\x02\r§)
   {
      this["\x1b\x01\t"](true);
      this["\x1e\x03\x02"] = _loc2_;
      if(this["\x1e\b\x19"] == "Current")
      {
         this._mcTab.step = _loc2_;
      }
      else
      {
         this.setCurrentTab("Current");
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Quests.CLASS_NAME);
   }
   function destroy()
   {
      this.gapi.hideTooltip();
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.addListeners});
      this["\x1b\x01\t"](false);
   }
   function initTexts()
   {
      this["\x1e\x10\t"].title = this.api.lang.getText("QUESTS_LIST");
      this["\x1e\x10\x0b"].title = this.api.lang.getText("STEPS");
      this._btnTabCurrent.label = this.api.lang.getText("QUESTS_CURRENT_STEP");
      this._btnTabAll.label = this.api.lang.getText("QUESTS_STEPS_LIST");
      this._dgQuests["\x16\x1d\x12"] = [this.api.lang.getText("STATE"),this.api.lang.getText("NAME_BIG")];
      this["\x1c\x17\x1c"].text = this.api.lang.getText("DISPLAY_FINISHED_QUESTS");
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._btnCloseStep.addEventListener("click",this);
      this._btnTabCurrent.addEventListener("click",this);
      this._btnTabAll.addEventListener("click",this);
      this._btnFinished.addEventListener("click",this);
      this._dgQuests.addEventListener("itemSelected",this);
      this.api.datacenter.Player.questBook["\x1a\t\x02"].addEventListener("modelChanged",this);
   }
   function initData()
   {
      this.api.network.Quests["\x17\x1b\x01"]();
   }
   function §\x1b\x01\t§(bShow)
   {
      if(_loc2_)
      {
         this.api.kernel.TipsManager.showNewTip(dofus.managers.TipsManager["\x1b\x10\x13"]);
      }
      this._btnCloseStep._visible = _loc2_;
      this["\x1e\x10\x0b"]._visible = _loc2_;
      this._mcTab._visible = _loc2_;
      this._btnTabCurrent._visible = _loc2_;
      this._btnTabAll._visible = _loc2_;
      this["\x1d\b\t"]._visible = _loc2_;
   }
   function §\x1b\x14\x13§()
   {
      this._mcTab.removeMovieClip();
      switch(this["\x1e\b\x19"])
      {
         case "Current":
            this.attachMovie("QuestStepViewer","_mcTab",this.getNextHighestDepth(),{_x:this["\x1d\x10\x17"]._x,_y:this["\x1d\x10\x17"]._y,step:this["\x1e\x03\x02"]});
            break;
         case "All":
            this.attachMovie("QuestStepListViewer","_mcTab",this.getNextHighestDepth(),{_x:this["\x1d\x10\x17"]._x,_y:this["\x1d\x10\x17"]._y,steps:this["\x1e\x03\x02"]["\x16\x03\n"]});
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
         case "_btnClose":
            this["\x16\x15\n"]();
            break;
         case "_btnTabCurrent":
            this.setCurrentTab("Current");
            break;
         case "_btnTabAll":
            this.setCurrentTab("All");
            break;
         case "_btnFinished":
            this.modelChanged();
            break;
         case "_btnCloseStep":
            this._dgQuests.selectedIndex = -1;
            this["\x1b\x01\t"](false);
      }
   }
   function itemSelected(oEvent)
   {
      var _loc3_ = _loc2_.row.item;
      if(_loc3_["\x18\r\x17"])
      {
         this["\x1b\x01\t"](false);
      }
      else
      {
         var _loc4_ = _loc3_["\x17\x03\x1c"];
         this["\x1e\x10\x0b"].title = _loc3_.name;
         if(_loc4_ != undefined)
         {
            this["\x1a\x1a\f"](_loc4_);
         }
         else
         {
            this.api.network.Quests["\x18\x01\x0f"](_loc3_.id);
         }
         this.api.datacenter.Basics.quests_lastID = _loc3_.id;
      }
   }
   function modelChanged(oEvent)
   {
      var _loc3_ = this.api.datacenter.Player.questBook["\x1a\t\x02"];
      if(this._btnFinished.selected)
      {
         var _loc4_ = _loc3_.clone();
      }
      else
      {
         _loc4_ = new ank.utils.ExtendedArray();
         var _loc5_ = 0;
         while(_loc5_ < _loc3_.length)
         {
            if(!_loc3_[_loc5_]["\x18\r\x17"])
            {
               _loc4_.push(_loc3_[_loc5_]);
            }
            _loc5_ = _loc5_ + 1;
         }
      }
      _loc4_.sortOn("sortOrder",Array.NUMERIC);
      this._dgQuests.dataProvider = _loc4_;
      this._dgQuests.selectedIndex = -1;
      if(this.api.datacenter.Basics.quests_lastID != undefined)
      {
         var _loc6_ = 0;
         while(_loc6_ < this._dgQuests.dataProvider.length)
         {
            var _loc7_ = this._dgQuests.dataProvider[_loc6_];
            if(_loc7_.id == this.api.datacenter.Basics.quests_lastID)
            {
               this._dgQuests.selectedIndex = _loc6_;
               this.api.network.Quests["\x18\x01\x0f"](_loc7_.id);
               break;
            }
            _loc6_ = _loc6_ + 1;
         }
      }
   }
}
