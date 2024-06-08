class dofus.§\x18\x18\x0b§.FightPointAnimManager
{
   static var LIFE_POINT = 0;
   static var ACTION_POINT = 1;
   static var MOVEMENT_POINT = 2;
   function FightPointAnimManager(§\x16\x04\x05§)
   {
      this._api = _loc2_;
      this._oPlayersBuffer = new Object();
   }
   function addLifePointAnim(§\x18\b\f§, §\x19\x10\x10§)
   {
      this.addPointAnim(_loc2_,_loc3_,dofus.managers.FightPointAnimManager.LIFE_POINT);
   }
   function addActionPointAnim(§\x18\b\f§, §\x19\x10\x10§)
   {
      this.addPointAnim(_loc2_,_loc3_,dofus.managers.FightPointAnimManager.ACTION_POINT);
   }
   function addMovePointAnim(§\x18\b\f§, §\x19\x10\x10§)
   {
      this.addPointAnim(_loc2_,_loc3_,dofus.managers.FightPointAnimManager.MOVEMENT_POINT);
   }
   function playPointAnim(§\x18\b\f§, §\x19\x10\x10§, §\x19\x10\x06§)
   {
      if(_loc3_ == 0)
      {
         return undefined;
      }
      var _loc5_ = _loc3_ > 0;
      var _loc6_ = this.getAnimType(_loc5_,_loc4_);
      var _loc7_ = (!_loc5_ ? " " : "+") + String(_loc3_);
      this._api.gfx["\x15\x1e\x16"](_loc2_,_loc7_,_loc6_);
   }
   function getAnimType(bPositive, §\x19\x10\x06§)
   {
      switch(_loc3_)
      {
         case dofus.managers.FightPointAnimManager.LIFE_POINT:
            if(bPositive)
            {
               return dofus.Constants.CLIP_POINT_TYPE_HEALTH;
            }
            return dofus.Constants.CLIP_POINT_TYPE_DAMAGE;
            break;
         case dofus.managers.FightPointAnimManager.ACTION_POINT:
            return dofus.Constants.CLIP_POINT_TYPE_ACTION;
         case dofus.managers.FightPointAnimManager.MOVEMENT_POINT:
            return dofus.Constants.CLIP_POINT_TYPE_MOVEMENT;
         default:
      }
   }
   function addPointAnim(§\x18\b\f§, §\x19\x10\x10§, §\x19\x10\x06§)
   {
      if(_loc3_ == 0)
      {
         return undefined;
      }
      if(this._api.kernel.OptionsManager.getOption("RegroupDamage"))
      {
         if(this._oPlayersBuffer[_loc2_] == undefined)
         {
            this._oPlayersBuffer[_loc2_] = new Object();
         }
         var _loc5_ = this._oPlayersBuffer[_loc2_];
         if(_loc5_[_loc4_] == undefined)
         {
            _loc5_[_loc4_] = 0;
         }
         _loc5_[_loc4_] += _loc3_;
         if(this._nPrintAllTimeout != undefined)
         {
            _global.clearTimeout(this._nPrintAllTimeout);
         }
         var _loc6_ = _global.setTimeout(this,"playAllPointAnim",50);
         this._nPrintAllTimeout = _loc6_;
      }
      else
      {
         this.playPointAnim(_loc2_,_loc3_,_loc4_);
      }
   }
   function playAllPointAnim()
   {
      for(var sId in this._oPlayersBuffer)
      {
         var _loc2_ = this._oPlayersBuffer[sId];
         var _loc3_ = dofus.managers.FightPointAnimManager.LIFE_POINT;
         while(_loc3_ <= dofus.managers.FightPointAnimManager.MOVEMENT_POINT)
         {
            if(_loc2_[_loc3_] != undefined && _loc2_[_loc3_] != 0)
            {
               this.playPointAnim(sId,_loc2_[_loc3_],_loc3_);
            }
            _loc3_ = _loc3_ + 1;
         }
      }
      this._oPlayersBuffer = new Object();
   }
}
