class dofus.§\x18\x18\x0b§.SpellsBoostsManager extends dofus.utils.ApiElement
{
   static var §\x15\x1c\x13§ = 281;
   static var §\x15\x1c\x14§ = 282;
   static var §\x15\x1c\x0e§ = 283;
   static var §\x15\x1c\x0f§ = 284;
   static var §\x15\x1c\n§ = 285;
   static var §\x15\x1c\f§ = 286;
   static var §\x15\x1c\r§ = 287;
   static var §\x15\x1c\x0b§ = 288;
   static var §\x15\x1c\x12§ = 289;
   static var §\x15\x1c\x11§ = 290;
   static var §\x15\x1c\x10§ = 291;
   static var §\x15\x1c\x15§ = 292;
   static var ACTION_BOOST_ITEM_AP_COST = 2123;
   static var ACTION_BOOST_SPELL_RANGE_NO_RANGEABLE_TRIGGER = 2124;
   static var ACTION_BOOST_SPELL_DMG_PERCENT = 2138;
   static var §\x1e\f\x10§ = null;
   function SpellsBoostsManager(oAPI)
   {
      super();
      dofus.managers.SpellsBoostsManager["\x1e\f\x10"] = this;
      this.initialize(oAPI);
   }
   static function getInstance()
   {
      return dofus.managers.SpellsBoostsManager["\x1e\f\x10"];
   }
   function initialize(oAPI)
   {
      super.initialize(oAPI);
      this.clear();
   }
   function clear()
   {
      this["\x1e\x05\x17"] = new Object();
      delete dofus.managers.SpellsBoostsManager._aBoostedEffects;
      delete dofus.managers.SpellsBoostsManager._aDamagingEffects;
      delete dofus.managers.SpellsBoostsManager._aHealingEffects;
   }
   function §\x18\x01\x04§(§\x15\x1c\t§, §\x1b\x06\r§)
   {
      if(_global.isNaN(this["\x1e\x05\x17"][_loc2_][_loc3_]) || this["\x1e\x05\x17"][_loc2_][_loc3_] == undefined)
      {
         return -1;
      }
      return Number(this["\x1e\x05\x17"][_loc2_][_loc3_]);
   }
   function §\x1a\x19\x1a§(§\x15\x1c\t§, §\x1b\x06\r§, §\x18\x1d\x10§)
   {
      if(typeof this["\x1e\x05\x17"][_loc2_] != "object" && this["\x1e\x05\x17"][_loc2_] == undefined)
      {
         this["\x1e\x05\x17"][_loc2_] = new Object();
      }
      this["\x1e\x05\x17"][_loc2_][_loc3_] = _loc4_;
   }
   function §\x18\f\x17§(§\x17\f\x03§)
   {
      if(dofus.managers.SpellsBoostsManager._aDamagingEffects == undefined)
      {
         this["\x16\x1e\x0b"]();
      }
      var _loc3_ = 0;
      while(_loc3_ < dofus.managers.SpellsBoostsManager._aDamagingEffects.length)
      {
         if(dofus.managers.SpellsBoostsManager._aDamagingEffects[_loc3_] == _loc2_)
         {
            return true;
         }
         _loc3_ = _loc3_ + 1;
      }
      return false;
   }
   function §\x18\f\x18§(§\x17\f\x03§)
   {
      if(dofus.managers.SpellsBoostsManager._aHealingEffects == undefined)
      {
         this["\x16\x1e\x0b"]();
      }
      var _loc3_ = 0;
      while(_loc3_ < dofus.managers.SpellsBoostsManager._aHealingEffects.length)
      {
         if(dofus.managers.SpellsBoostsManager._aHealingEffects[_loc3_] == _loc2_)
         {
            return true;
         }
         _loc3_ = _loc3_ + 1;
      }
      return false;
   }
   function §\x18\f\x19§(§\x17\f\x03§)
   {
      if(dofus.managers.SpellsBoostsManager._aBoostedEffects == undefined)
      {
         this["\x16\x1e\x0b"]();
      }
      var _loc3_ = 0;
      while(_loc3_ < dofus.managers.SpellsBoostsManager._aBoostedEffects.length)
      {
         if(dofus.managers.SpellsBoostsManager._aBoostedEffects[_loc3_] == _loc2_)
         {
            return true;
         }
         _loc3_ = _loc3_ + 1;
      }
      return false;
   }
   function §\x16\x1e\x0b§()
   {
      dofus.managers.SpellsBoostsManager._aBoostedEffects = new Array();
      dofus.managers.SpellsBoostsManager._aDamagingEffects = this.api.lang["\x17\x14\x17"]();
      dofus.managers.SpellsBoostsManager._aHealingEffects = this.api.lang["\x17\x14\x18"]();
      var _loc2_ = 0;
      while(_loc2_ < dofus.managers.SpellsBoostsManager._aDamagingEffects.length)
      {
         dofus.managers.SpellsBoostsManager._aBoostedEffects.push(dofus.managers.SpellsBoostsManager._aDamagingEffects[_loc2_]);
         _loc2_ = _loc2_ + 1;
      }
      var _loc3_ = 0;
      while(_loc3_ < dofus.managers.SpellsBoostsManager._aHealingEffects.length)
      {
         dofus.managers.SpellsBoostsManager._aBoostedEffects.push(dofus.managers.SpellsBoostsManager._aHealingEffects[_loc3_]);
         _loc3_ = _loc3_ + 1;
      }
   }
}
