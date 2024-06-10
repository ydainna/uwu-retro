class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.QuestStepViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "QuestStepViewer";
   function QuestStepViewer()
   {
      super();
   }
   function §\x1d\x15§(§\x1a\x02\r§)
   {
      this["\x1e\x05\x1d"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1b\x14\x14"]();
      }
      return this.step;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.QuestStepViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
      this["\x1c\t\x13"]._visible = false;
   }
   function addListeners()
   {
      this["\x1c\t\x13"].addEventListener("click",this);
      this["\x1c\t\x13"].addEventListener("over",this);
      this["\x1c\t\x13"].addEventListener("out",this);
      this._ldrAccountQuest.addEventListener("over",this);
      this._ldrAccountQuest.addEventListener("out",this);
      this._ldrRepeatableQuest.addEventListener("over",this);
      this._ldrRepeatableQuest.addEventListener("out",this);
      this._lstObjectives.addEventListener("itemSelected",this);
   }
   function initTexts()
   {
      this["\x1c\x1c\x05"].text = this.api.lang.getText("QUESTS_OBJECTIVES");
      this["\x1d\x02\x0b"].text = this.api.lang.getText("STEP");
      this["\x1c\x1e\r"].text = this.api.lang.getText("QUESTS_REWARDS");
   }
   function §\x1b\x14\x14§()
   {
      if(this["\x1e\x05\x1d"] != undefined)
      {
         this["\x1d\x02\x0b"].text = this.api.lang.getText("STEP") + " : " + this["\x1e\x05\x1d"].name;
         this["\x1e\x0f\n"].text = this["\x1e\x05\x1d"].description;
         this._lstObjectives.dataProvider = this["\x1e\x05\x1d"]["\x19\x11\x16"];
         this["\x1d\x06\x1c"].dataProvider["\x1a\x0b\x16"]();
         this["\x1d\x06\x1c"].dataProvider = this["\x1e\x05\x1d"]["\x1a\x0e\f"];
         this["\x1c\t\x13"]._visible = this["\x1e\x05\x1d"].dialogID != undefined;
         this._ldrAccountQuest._visible = !this["\x1e\x05\x1d"].isAccountQuest ? false : true;
         this._ldrRepeatableQuest._visible = !this["\x1e\x05\x1d"].isRepeatableQuest ? false : true;
      }
   }
   function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\t\x13"]:
            var _loc3_ = this["\x1e\x05\x1d"].dialogID;
            var _loc4_ = this["\x1e\x05\x1d"]["\x17\x07\r"];
            var _loc5_ = new dofus.datacenter.Question(_loc3_,undefined,_loc4_);
            this.gapi.showTooltip(this.api.lang.getText("STEP_DIALOG") + " :\n\n" + _loc5_.label,_loc2_.target,20);
            break;
         case this._ldrAccountQuest:
            this.gapi.showTooltip(this.api.lang.getText("STEP_ACCOUNT_INFO"),_loc2_.target,20);
            break;
         case this._ldrRepeatableQuest:
            this.gapi.showTooltip(this.api.lang.getText("STEP_REPEATABLE_INFO"),_loc2_.target,20);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function click(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this["\x1c\t\x13"])
      {
         var _loc3_ = this["\x1e\x05\x1d"].dialogID;
         var _loc4_ = this["\x1e\x05\x1d"]["\x17\x07\r"];
         var _loc5_ = new dofus.datacenter.Question(_loc3_,undefined,_loc4_);
         this.api.kernel.showMessage(this.api.lang.getText("STEP_DIALOG"),_loc5_.label,"ERROR_BOX");
      }
   }
   function itemSelected(oEvent)
   {
      var _loc3_ = _loc2_.row.item;
      if(_loc3_.x != undefined && _loc3_.y != undefined)
      {
         this.api.kernel.GameManager.updateCompass(_loc3_.x,_loc3_.y);
      }
   }
}
