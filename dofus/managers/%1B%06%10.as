class dofus.§\x18\x18\x0b§.§\x1b\x06\x10§ extends dofus.utils.§\x16\x04\x07§
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
   function §\x1b\x06\x10§(oAPI)
   {
      super();
      dofus["\x18\x18\x0b"]["\x1b\x06\x10"]["\x1e\f\x10"] = this;
      this.initialize(oAPI);
   }
   static function §\x17\x19\t§()
   {
      return dofus["\x18\x18\x0b"]["\x1b\x06\x10"]["\x1e\f\x10"];
   }
   function initialize(oAPI)
   {
      super.initialize(oAPI);
      this.clear();
   }
   function clear()
   {
      this["\x1e\x05\x17"] = new Object();
      delete dofus["\x18\x18\x0b"]["\x1b\x06\x10"]._aBoostedEffects;
      delete dofus["\x18\x18\x0b"]["\x1b\x06\x10"]._aDamagingEffects;
      delete dofus["\x18\x18\x0b"]["\x1b\x06\x10"]._aHealingEffects;
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
      if(dofus["\x18\x18\x0b"]["\x1b\x06\x10"]._aDamagingEffects == undefined)
      {
         this["\x16\x1e\x0b"]();
      }
      var _loc3_ = 0;
      while(_loc3_ < dofus["\x18\x18\x0b"]["\x1b\x06\x10"]._aDamagingEffects.length)
      {
         if(dofus["\x18\x18\x0b"]["\x1b\x06\x10"]._aDamagingEffects[_loc3_] == _loc2_)
         {
            return true;
         }
         _loc3_ = _loc3_ + 1;
      }
      return false;
   }
   function §\x18\f\x18§(§\x17\f\x03§)
   {
      if(dofus["\x18\x18\x0b"]["\x1b\x06\x10"]._aHealingEffects == undefined)
      {
         this["\x16\x1e\x0b"]();
      }
      var _loc3_ = 0;
      while(_loc3_ < dofus["\x18\x18\x0b"]["\x1b\x06\x10"]._aHealingEffects.length)
      {
         if(dofus["\x18\x18\x0b"]["\x1b\x06\x10"]._aHealingEffects[_loc3_] == _loc2_)
         {
            return true;
         }
         _loc3_ = _loc3_ + 1;
      }
      return false;
   }
   function §\x18\f\x19§(§\x17\f\x03§)
   {
      if(dofus["\x18\x18\x0b"]["\x1b\x06\x10"]._aBoostedEffects == undefined)
      {
         this["\x16\x1e\x0b"]();
      }
      var _loc3_ = 0;
      while(_loc3_ < dofus["\x18\x18\x0b"]["\x1b\x06\x10"]._aBoostedEffects.length)
      {
         if(dofus["\x18\x18\x0b"]["\x1b\x06\x10"]._aBoostedEffects[_loc3_] == _loc2_)
         {
            return true;
         }
         _loc3_ = _loc3_ + 1;
      }
      return false;
   }
   function §\x16\x1e\x0b§()
   {
      dofus["\x18\x18\x0b"]["\x1b\x06\x10"]._aBoostedEffects = new Array();
      dofus["\x18\x18\x0b"]["\x1b\x06\x10"]._aDamagingEffects = this.api.lang["\x17\x14\x17"]();
      dofus["\x18\x18\x0b"]["\x1b\x06\x10"]._aHealingEffects = this.api.lang["\x17\x14\x18"]();
      var _loc2_ = 0;
      while(_loc2_ < dofus["\x18\x18\x0b"]["\x1b\x06\x10"]._aDamagingEffects.length)
      {
         dofus["\x18\x18\x0b"]["\x1b\x06\x10"]._aBoostedEffects.push(dofus["\x18\x18\x0b"]["\x1b\x06\x10"]._aDamagingEffects[_loc2_]);
         _loc2_ = _loc2_ + 1;
      }
      var _loc3_ = 0;
      while(_loc3_ < dofus["\x18\x18\x0b"]["\x1b\x06\x10"]._aHealingEffects.length)
      {
         dofus["\x18\x18\x0b"]["\x1b\x06\x10"]._aBoostedEffects.push(dofus["\x18\x18\x0b"]["\x1b\x06\x10"]._aHealingEffects[_loc3_]);
         _loc3_ = _loc3_ + 1;
      }
   }
}
