class dofus.§\x17\x04\x19§.temporis2.T2TowerStepObject
{
   function T2TowerStepObject(§\x19\b\x0b§, bIsUnlocked, bIsKeyFound, bIsCompletedByPlayer, bIsHintVisible)
   {
      this.api = _global.api;
      this["\x1d\x17\x01"] = _loc2_;
      this._bIsUnlocked = bIsUnlocked;
      this._bIsKeyFound = bIsKeyFound;
      this._bIsCompletedByPlayer = bIsCompletedByPlayer;
      this._bIsHintVisible = bIsHintVisible;
      eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
   }
   function §\x1e\x1c\x05§()
   {
      return this["\x1d\x17\x01"];
   }
   function get isUnlocked()
   {
      return this._bIsUnlocked;
   }
   function get isKeyFound()
   {
      return this._bIsKeyFound;
   }
   function get isCompletedByPlayer()
   {
      return this._bIsCompletedByPlayer;
   }
   function get isHintVisible()
   {
      return this._bIsHintVisible;
   }
   function get challengeName()
   {
      if(!this._bIsHintVisible)
      {
         return this.api.lang.getText("T2_TOWER_STEP_NOT_UNLOCKED");
      }
      return this.api.lang.getText("T2_TOWER_STEP_" + this["\x1d\x17\x01"] + "_NAME");
   }
   function get challengeHint()
   {
      if(!this._bIsHintVisible)
      {
         return this.api.lang.getText("T2_TOWER_STEP_NOT_UNLOCKED_GUIDE");
      }
      return this.api.lang.getText("T2_TOWER_STEP_" + this["\x1d\x17\x01"] + "_HINT");
   }
   function §\x1e\x1c\x03§()
   {
      return "Temporis2TowerStepItem";
   }
   function get challengeIlluFile()
   {
      if(!this._bIsUnlocked)
      {
         return dofus.Constants.EVENEMENTIALS_TEMPORIS_2_TOWER_ILLUS_PATH + "unknown.swf";
      }
      return dofus.Constants.EVENEMENTIALS_TEMPORIS_2_TOWER_ILLUS_PATH + this["\x1d\x17\x01"] + ".swf";
   }
   function get forceReloadOnContainer()
   {
      return true;
   }
   function §\x06\x02§()
   {
      return {stepObject:this};
   }
}
