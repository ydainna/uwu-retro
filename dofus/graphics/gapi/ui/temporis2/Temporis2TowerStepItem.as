class dofus.graphics.gapi.ui.temporis2.Temporis2TowerStepItem extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Temporis2TowerStepItem";
   function Temporis2TowerStepItem()
   {
      super();
      this.initialize();
   }
   function get stepObject()
   {
      return this._oStepObject;
   }
   function set stepObject(oStepObject)
   {
      this._oStepObject = oStepObject;
   }
   function initialize()
   {
      this.api = _global.api;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.temporis2.Temporis2TowerStepItem.CLASS_NAME);
   }
   function createChildren()
   {
      this._mcStepToDo._visible = false;
      this._mcStepDone._visible = false;
      this._mcKey._visible = false;
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.initTexts});
   }
   function addListeners()
   {
      var ref = this;
      this._mcStepDone.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._mcStepDone.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._mcStepToDo.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._mcStepToDo.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._mcKey.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._mcKey.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._mcChallengeIDBg.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._mcChallengeIDBg.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._mcIlluBg.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._mcIlluBg.onRollOut = function()
      {
         ref.out({target:this});
      };
   }
   function initData()
   {
      this["\x1d\x05\x11"].contentPath = this._oStepObject.challengeIlluFile;
      if(this._oStepObject.isCompletedByPlayer)
      {
         this._mcStepDone._visible = true;
      }
      else
      {
         this._mcStepToDo._visible = true;
      }
      this._mcKey._visible = true;
      this._mcKey._alpha = !this._oStepObject.isKeyFound ? 20 : 100;
   }
   function initTexts()
   {
      this._lblFloor.text = String(this._oStepObject.id);
   }
   function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._mcKey:
            if(this._oStepObject.isKeyFound)
            {
               this.api.ui.showTooltip(this.api.lang.getText("T2_TOWER_KEY_FOUND"),_loc2_.target,-10);
            }
            else
            {
               this.api.ui.showTooltip(this.api.lang.getText("T2_TOWER_KEY_NOT_FOUND_YET"),_loc2_.target,-10);
            }
            break;
         case this._mcStepToDo:
            this.api.ui.showTooltip(this.api.lang.getText("T2_TOWER_STEP_NOT_COMPLETED_YET"),_loc2_.target,-20);
            break;
         case this._mcStepDone:
            this.api.ui.showTooltip(this.api.lang.getText("T2_TOWER_STEP_COMPLETED"),_loc2_.target,-20);
            break;
         case this._mcChallengeIDBg:
         case this._mcIlluBg:
            this._oStepObject["\x17\x07\x19"]({type:"onStepObjectIlluOver"});
            break;
         default:
            this.api.ui.hideTooltip();
      }
   }
   function out(oEvent)
   {
      this.api.ui.hideTooltip();
   }
}
