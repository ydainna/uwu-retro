class dofus.§\x17\x04\x19§.§\x18\x10\x15§ extends Object
{
   static var CLOSE_COMBAT_AS_ITEM_SPELL_ID = -2;
   static var §\x19\x11\x1a§ = 623;
   static var OBJECT_ACTION_SUMMON_RANDOM_GRADE = 628;
   static var OBJECT_ACTION_REPLACE = 2150;
   static var OBJECT_ACTION_LINK_CHARACTER = 2151;
   static var OBJECT_ACTION_CUSTOM_SKIN = 969;
   static var OBJECT_ACTION_GIVE_AURA = 723;
   static var OBJECT_ACTION_GIVE_TITLE = 724;
   static var OBJECT_ACTION_INCARNATION = 669;
   static var OBJECT_ACTION_LEARN_EMOTICON = 10;
   static var OBJECT_ACTION_LINK_ACCOUNT = 983;
   static var OBJECT_ACTION_LAST_MEAL = 808;
   static var OBJECT_ACTION_PET_LIFE = 800;
   static var OBJECT_ACTION_CRAFTED_BY_CHARACTER = 988;
   static var OBJECT_ACTION_FM_BY_CHARACTER = 985;
   static var OBJECT_ACTION_SPELL_BOOSTS = [292,291,290,289,288,287,286,285,284,283,282,281];
   static var ENHANCEABLE_SUPER_TYPE = [1,2,3,4,5,10,11];
   static var NO_ENHANCEABLE_TYPE = [20,21,22,102,114];
   static var §\x18\x14\x12§ = [0,10,21,33,46,60,75,91,108,126,145,165,186,208,231,255,280,306,333,361];
   static var §\x17\x05\x05§ = 0;
   static var TYPE_TTG_BOOSTER = 123;
   static var SUPERTYPE_TTG = 24;
   var _bRemovedFromInventory = false;
   static var TYPE_FULL_SOUL_STONE_NORMAL = 85;
   static var TYPE_FULL_SOUL_STONE_BOSS = 124;
   static var TYPE_FULL_SOUL_STONE_ARCHI = 125;
   static var TYPE_PET = 18;
   function §\x18\x10\x15§(§\x19\b\x0b§, §\x19\x10\n§, nQuantity, §\x19\f\r§, §\x1a\x12\x0f§, §\x19\f\x10§, §\x19\x0e\r§, §\x19\n\x16§)
   {
      super();
      this.initialize(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_);
   }
   static function isFullSoul(§\x19\x10\x06§)
   {
      return _loc2_ == dofus.datacenter.["\x18\x10\x15"].TYPE_FULL_SOUL_STONE_NORMAL || (_loc2_ == dofus.datacenter.["\x18\x10\x15"].TYPE_FULL_SOUL_STONE_ARCHI || _loc2_ == dofus.datacenter.["\x18\x10\x15"].TYPE_FULL_SOUL_STONE_BOSS);
   }
   function get isShortcut()
   {
      return false;
   }
   function §\x01\x15§()
   {
      if(this._nQuantity < 2)
      {
         return undefined;
      }
      var _loc2_ = String(this._nQuantity);
      if(_loc2_.length > 5)
      {
         if(_loc2_.length > 6)
         {
            _loc2_ = _loc2_.substring(0,4) + "k";
         }
         else
         {
            _loc2_ = _loc2_.substring(0,3) + "k";
         }
      }
      return _loc2_;
   }
   function §\x1e\x1c\x04§()
   {
      return this["\x1d\x17\x01"];
   }
   function §\f\x15§()
   {
      return this["\x1d\x1e\x1a"];
   }
   function §\x1e\x16\r§()
   {
      return this["\x1e\t\x0b"];
   }
   function §\x1a\x19§(§\x1b\x17\x16§)
   {
      if(_global.isNaN(Number(_loc2_)))
      {
         return undefined;
      }
      this._nQuantity = Number(_loc2_);
      return this["\x06\x1b"]();
   }
   function §\x06\x1b§()
   {
      return this._nQuantity;
   }
   function get isRemovedFromInventory()
   {
      return this._bRemovedFromInventory;
   }
   function set isRemovedFromInventory(bRemovedFromInventory)
   {
      this._bRemovedFromInventory = bRemovedFromInventory;
   }
   function §\x1b\r§(§\x19\r\f§)
   {
      this["\x1d\x1b\x1c"] = _loc2_;
      return this["\x07\x12"]();
   }
   function §\x07\x12§()
   {
      return this["\x1d\x1b\x1c"];
   }
   function §\x1a\x11§(§\x1b\x17\x16§)
   {
      if(_global.isNaN(Number(_loc2_)))
      {
         return undefined;
      }
      this["\x1d\x1b\x05"] = Number(_loc2_);
      return this["\x06\x13"]();
   }
   function §\x06\x13§()
   {
      return this["\x1d\x1b\x05"];
   }
   function get isEquiped()
   {
      return this["\x1d\x1b\x05"] > -1;
   }
   function §\x1a\x15§(§\x1b\x17\x16§)
   {
      if(_global.isNaN(Number(_loc2_)))
      {
         return undefined;
      }
      this["\x1d\x1b\x0b"] = Number(_loc2_);
      return this["\x06\x17"]();
   }
   function §\x06\x17§()
   {
      return this["\x1d\x1b\x0b"];
   }
   function get averagePrice()
   {
      return this._nAveragePrice;
   }
   function set averagePrice(nAveragePrice)
   {
      this._nAveragePrice = nAveragePrice;
   }
   function §\x04\x1b§()
   {
      var _loc2_ = ank.utils.["\x1a\x04\t"]["\x17\x16\x10"](dofus.datacenter.["\x18\x10\x15"].api.lang["\x17\x0f\x12"](this["\x1e\x06\x06"].n),dofus.datacenter.["\x18\x10\x15"].api.lang["\x17\x19\x1c"]());
      if(dofus.Constants.DEBUG)
      {
         var _loc3_ = " (" + this.unicID;
         if(this.ID > 0)
         {
            _loc3_ += ", " + this.ID;
         }
         _loc3_ += ")";
         _loc2_ += _loc3_;
      }
      return _loc2_;
   }
   function get nameUppercase()
   {
      var _loc2_ = ank.utils.["\x1a\x04\t"]["\x17\x16\x10"](dofus.datacenter.["\x18\x10\x15"].api.lang["\x17\x0f\x12"](this["\x1e\x06\x06"].nn),dofus.datacenter.["\x18\x10\x15"].api.lang["\x17\x19\x1c"]());
      if(dofus.Constants.DEBUG)
      {
         var _loc3_ = " (" + this.unicID;
         if(this.ID > 0)
         {
            _loc3_ += ", " + this.ID;
         }
         _loc3_ += ")";
         _loc2_ += _loc3_;
      }
      return _loc2_;
   }
   function §\x1e\x18\r§()
   {
      var _loc2_ = dofus.datacenter.["\x18\x10\x15"].api.lang["\x17\x19\x1a"](this.type).n;
      if(this.isCeremonial)
      {
         _loc2_ += " (" + dofus.datacenter.["\x18\x10\x15"].api.lang.getText("ITEM_TYPE_CEREMONIAL") + ")";
      }
      var _loc3_ = "";
      if(this["\x18\r\x1d"])
      {
         var _loc4_ = new dofus.datacenter..ItemSet(this["\x18\x10\x1c"]);
         _loc3_ = "<u>" + _loc4_.name + " (" + dofus.datacenter.["\x18\x10\x15"].api.lang.getText("ITEM_TYPE") + " : " + _loc2_ + ")</u>\n";
      }
      else
      {
         _loc3_ = "<u>" + dofus.datacenter.["\x18\x10\x15"].api.lang.getText("ITEM_TYPE") + " : " + _loc2_ + "</u>\n";
      }
      _loc3_ += ank.utils.["\x1a\x04\t"]["\x17\x16\x10"](dofus.datacenter.["\x18\x10\x15"].api.lang["\x17\x0f\x12"](this["\x1e\x06\x06"].d),dofus.datacenter.["\x18\x10\x15"].api.lang["\x17\x19\x1c"]());
      if(this.isCeremonial)
      {
         _loc3_ += " " + dofus.datacenter.["\x18\x10\x15"].api.lang.getText("SUPERTYPE_" + this.superType + "_CERMONIAL_DESCRIPTION");
      }
      return _loc3_;
   }
   function §\f\r§()
   {
      if(this["\x1d\x1b\x16"])
      {
         return this["\x1d\x1b\x16"];
      }
      return Number(this["\x1e\x06\x06"].t);
   }
   function get isCardType()
   {
      var _loc2_ = this.type;
      return _loc2_ >= 119 && _loc2_ <= 122;
   }
   function get displayCeremonial()
   {
      var _loc2_ = this.type;
      return _loc2_ != 90 && _loc2_ != 77;
   }
   function get isCeremonial()
   {
      return !!this["\x1e\x06\x06"].ce;
   }
   function §\x1e\x14§(§\x19\x10\x06§)
   {
      this["\x1d\x1b\x16"] = _loc2_;
      return this["\f\r"]();
   }
   function §\x07\f§()
   {
      return Number(this["\x1e\x06\x06"].t);
   }
   function §\x1e\x19\x1b§()
   {
      return !!this["\x1e\x06\x06"].fm;
   }
   function get isEnhanceableSuperType()
   {
      for(var idx in dofus.datacenter.["\x18\x10\x15"].ENHANCEABLE_SUPER_TYPE)
      {
         if(dofus.datacenter.["\x18\x10\x15"].ENHANCEABLE_SUPER_TYPE[idx] == this.superType)
         {
            return true;
         }
      }
      return false;
   }
   function get canBeEnhanceableType()
   {
      for(var idx in dofus.datacenter.["\x18\x10\x15"].NO_ENHANCEABLE_TYPE)
      {
         if(dofus.datacenter.["\x18\x10\x15"].NO_ENHANCEABLE_TYPE[idx] == this.type)
         {
            return false;
         }
      }
      return true;
   }
   function get isReallyEnhanceable()
   {
      return !this.isCeremonial && (this["\x17\r\r"] && (this.isEnhanceableSuperType && this.canBeEnhanceableType));
   }
   function §\n\r§()
   {
      if(this.isCeremonial)
      {
         return "Ceremonial";
      }
      if(this["\x18\r\x1d"])
      {
         return "ItemSet";
      }
      if(this["\x18\r\x12"])
      {
         return "Ethereal";
      }
      return "";
   }
   function §\x04\x1d§()
   {
      return this["\x1e\x06\x06"].tw == true;
   }
   function §\x1e\x1d\n§()
   {
      return this["\x1e\x06\x06"].et == true;
   }
   function §\x1e\x1d\x15§()
   {
      return this["\x1e\x06\x06"].h == true;
   }
   function get isUndestroyable()
   {
      return this._bUndestroyable || (this["\x1a\n\x06"] == 113 || this.skinItemInfos != undefined);
   }
   function get hasUnknownSkinsCount()
   {
      return this._bUnknownSkinsCount;
   }
   function §\x1e\x1d\x12§()
   {
      return this["\x1e\x06\x06"].s != undefined;
   }
   function §\x01\r§()
   {
      return this["\x1e\x06\x06"].s;
   }
   function §\f\x11§()
   {
      return dofus.datacenter.["\x18\x10\x15"].api.lang["\x17\x19\x1a"](this.type);
   }
   function §\n\x15§()
   {
      return this["\x1b\x12\r"].t;
   }
   function §\n\x16§()
   {
      return dofus.datacenter.["\x18\x10\x15"].api.lang["\x17\x19\x19"](this.superType);
   }
   function §\x1e\x1c\x03§()
   {
      return dofus.Constants["\x18\x11\x04"] + this.type + "/" + this.gfx + ".swf";
   }
   function §\x1e\x19\n§()
   {
      return dofus.datacenter.["\x18\x10\x15"]["\x17\x19\x11"](this["\x1b\x1c\x14"],dofus.datacenter.["\x18\x10\x15"].getBaseItemEffects(this.unicID),undefined,this.isReallyEnhanceable);
   }
   function §\r\x05§()
   {
      return dofus.datacenter.["\x18\x10\x15"]["\x17\x19\x11"](this["\x1b\x1c\x14"],dofus.datacenter.["\x18\x10\x15"].getBaseItemEffects(this.unicID),true,this.isReallyEnhanceable);
   }
   function §\x1e\x14\x17§()
   {
      return this["\x1e\x06\x06"].u != undefined ? true : false;
   }
   function §\x1e\x14\x13§()
   {
      return this["\x1e\x06\x06"].ut != undefined ? true : false;
   }
   function §\x1e\x14\x04§()
   {
      return this.superType != 14 && (!this["\x18\r\x0b"] && !this._bUndestroyable);
   }
   function get canBeReinitializedByPlayer()
   {
      return this["\x1e\x06\x06"].prp;
   }
   function §\x1e\x14\x05§()
   {
      return this.superType != 14 && (!this["\x18\r\x0b"] && !this._bUndestroyable);
   }
   function get isCaptureItem()
   {
      return this.superType == 8;
   }
   function §\x02\x06§()
   {
      return Number(this["\x1e\x06\x06"].l);
   }
   function §\x1e\x1b\x01§()
   {
      if(this["\x1e\t\x1a"])
      {
         return this["\x1e\t\x1a"];
      }
      if(this._oSkinItemInfos != undefined && this.displayCeremonial)
      {
         return this._oSkinItemInfos.g;
      }
      return this["\x1e\x06\x06"].g;
   }
   function §\x14\x02§(§\x1a\x1b\x1a§)
   {
      this["\x1e\t\x1a"] = _loc2_;
      return this["\x1e\x1b\x01"]();
   }
   function §\x07\x0b§()
   {
      if(this._oSkinItemInfos != undefined && this.displayCeremonial)
      {
         return this._oSkinItemInfos.g;
      }
      return this["\x1e\f\x05"];
   }
   function §\x06\x16§()
   {
      if(this["\x1d\x1b\n"] != undefined)
      {
         return this["\x1d\x1b\n"];
      }
      if(this._nResellCustomPrice != undefined)
      {
         return this._nResellCustomPrice;
      }
      if(this["\x1d\x1b\n"] == undefined)
      {
         return Math.max(0,Math.round(Number(this["\x1e\x06\x06"].p) * (this["\x1d\x1b\x0b"] != undefined ? this["\x1d\x1b\x0b"] : 0)));
      }
   }
   function §\x1a\x14§(§\x19\f\x10§)
   {
      this["\x1d\x1b\n"] = _loc2_;
      return this["\x06\x16"]();
   }
   function get hasCustomResellCustomPrice()
   {
      return !_global.isNaN(this._nResellCustomPrice);
   }
   function get resellCustomPrice()
   {
      return this._nResellCustomPrice;
   }
   function set resellCustomPrice(nResellCustomPrice)
   {
      this._nResellCustomPrice = nResellCustomPrice;
   }
   function get customMoneyItemId()
   {
      return this._nCustomMoneyItemId;
   }
   function set customMoneyItemId(nCustomMoneyItemId)
   {
      this._nCustomMoneyItemId = nCustomMoneyItemId;
   }
   function get hasCustomMoneyItemId()
   {
      return !_global.isNaN(this._nCustomMoneyItemId);
   }
   function §\r\r§()
   {
      return Number(this["\x1e\x06\x06"].w);
   }
   function §\x1e\x1d\b§()
   {
      return this["\x1e\x06\x06"].m;
   }
   function §\x05\t§()
   {
      return this["\x1b\x1c\x14"];
   }
   function §\x1e\x17\x0b§()
   {
      return this["\x17\x19\x12"](0);
   }
   function §\x1e\x12\x04§()
   {
      var _loc2_ = dofus.datacenter.["\x18\x10\x15"].api.kernel["\x1b\x06\x10"]["\x18\x01\x04"](dofus.managers["\x1b\x06\x10"].ACTION_BOOST_ITEM_AP_COST,dofus.datacenter.["\x18\x10\x15"].CLOSE_COMBAT_AS_ITEM_SPELL_ID);
      var _loc3_ = this["\x17\x19\x12"](1);
      if(_loc2_ > -1)
      {
         _loc3_ -= _loc2_;
      }
      return Math.max(1,_loc3_);
   }
   function §\x07\x05§()
   {
      return this["\x17\x19\x12"](2);
   }
   function §\x07\x04§()
   {
      return this["\x17\x19\x12"](3);
   }
   function §\x1e\x17\t§()
   {
      return this["\x17\x19\x12"](4);
   }
   function §\x1e\x17\x07§()
   {
      return this["\x17\x19\x12"](5);
   }
   function §\x02\t§()
   {
      return this["\x17\x19\x12"](6);
   }
   function §\x02\b§()
   {
      return this["\x17\x19\x12"](7);
   }
   function §\x1e\x19\x10§()
   {
      return this["\x1b\x1c\x16"];
   }
   function §\x1e\x15\x10§()
   {
      var _loc2_ = new Array();
      _loc2_.push(dofus.datacenter.["\x18\x10\x15"].api.lang.getText("ITEM_AP",[this["\x16\x04\x03"]]));
      _loc2_.push(dofus.datacenter.["\x18\x10\x15"].api.lang.getText("ITEM_RANGE",[(this["\x1a\t\x14"] == 0 ? "" : this["\x1a\t\x14"] + " " + dofus.datacenter.["\x18\x10\x15"].api.lang.getText("TO_RANGE") + " ") + this["\x1a\t\x13"]]));
      _loc2_.push(dofus.datacenter.["\x18\x10\x15"].api.lang.getText("ITEM_CRITICAL_BONUS",[this["\x17\x03\n"] <= 0 ? String(this["\x17\x03\n"]) : "+" + this["\x17\x03\n"]]));
      _loc2_.push((this["\x17\x03\b"] == 0 ? "" : dofus.datacenter.["\x18\x10\x15"].api.lang.getText("ITEM_CRITICAL",[this["\x17\x03\b"]])) + (!(this["\x17\x03\b"] != 0 && this["\x17\x03\x06"] != 0) ? "" : " - ") + (this["\x17\x03\x06"] == 0 ? "" : dofus.datacenter.["\x18\x10\x15"].api.lang.getText("ITEM_MISS",[this["\x17\x03\x06"]])));
      if(this["\x17\x03\b"] > 0 && this.ID == dofus.datacenter.["\x18\x10\x15"].api.datacenter.Player["\x1b\x18\x1b"].ID)
      {
         var _loc3_ = dofus.datacenter.["\x18\x10\x15"].api.kernel.GameManager["\x17\x15\x1a"](this["\x17\x03\b"]);
         _loc2_.push(dofus.datacenter.["\x18\x10\x15"].api.lang.getText("ITEM_CRITICAL_REAL",["1/" + _loc3_]));
      }
      return _loc2_;
   }
   function §\x1e\x16\x0e§()
   {
      var _loc2_ = dofus.managers["\x17\f\t"].parseConditionsString(this["\x1e\x06\x06"].c);
      if(this["\x1d\x1b\x17"] != undefined && dofus.datacenter.["\x18\x10\x15"].api.lang["\x17\x19\x1d"](this["\x1d\x1b\x17"]).c != undefined)
      {
         _loc2_ = _loc2_.concat(dofus.datacenter.["\x18\x10\x15"].api.lang.getText("INHERITED_FROM",[dofus.datacenter.["\x18\x10\x15"].api.lang["\x17\x19\x1d"](this["\x1d\x1b\x17"]).n]) + " :",dofus.managers["\x17\f\t"].parseConditionsString(dofus.datacenter.["\x18\x10\x15"].api.lang["\x17\x19\x1d"](this["\x1d\x1b\x17"]).c));
      }
      return _loc2_;
   }
   function §\x04\b§()
   {
      return this["\x1d\x1a\x07"];
   }
   function §\t\x0b§()
   {
      return this["\x1d\x1c\x1d"];
   }
   function §\x1d\x02§(§\x19\x0e\r§)
   {
      this["\x1d\x1c\x1d"] = _loc2_;
      return this["\t\x0b"]();
   }
   function §\x06\x02§()
   {
      if(!this["\x18\x0e\x11"])
      {
         return undefined;
      }
      var _loc3_ = this["\x1b\x02\f"];
      if(_loc3_ == undefined || _global.isNaN(_loc3_))
      {
         _loc3_ = 0;
      }
      switch(this["\x18\x1e\x07"])
      {
         case 1:
            var _loc2_ = "H";
            break;
         case 2:
         case 0:
            _loc2_ = "U";
            break;
         default:
            _loc2_ = "H";
      }
      return {frame:_loc2_ + _loc3_,forceReload:this["\x18\x0e\x11"]};
   }
   function §\t\f§()
   {
      return this["\x1c\x06\x02"];
   }
   function §\x1e\x1c\x19§()
   {
      return this["\x1b\x02\r"] && this["\x1a\n\x06"] != 113;
   }
   function §\x07\r§()
   {
      if(this["\x1d\x1b\x17"])
      {
         return this["\x1d\x1b\x17"];
      }
      return this["\x1d\x1e\x1a"];
   }
   function get nbSkin()
   {
      return this._nNbSkin;
   }
   function §\x03\x11§()
   {
      var _loc2_ = this.nbSkin;
      var _loc3_ = 1;
      while(_loc3_ < _loc2_)
      {
         if(this._nLivingXp < dofus.datacenter.["\x18\x10\x15"]["\x18\x14\x12"][_loc3_])
         {
            return _loc3_;
         }
         _loc3_ = _loc3_ + 1;
      }
      return _loc2_;
   }
   function §\x1e\x17\x12§()
   {
      return this._nLivingXp;
   }
   function §\x1e\x17\x10§()
   {
      var _loc2_ = this.nbSkin;
      var _loc3_ = 1;
      while(_loc3_ < _loc2_)
      {
         if(this._nLivingXp < dofus.datacenter.["\x18\x10\x15"]["\x18\x14\x12"][_loc3_])
         {
            return dofus.datacenter.["\x18\x10\x15"]["\x18\x14\x12"][_loc3_];
         }
         _loc3_ = _loc3_ + 1;
      }
      return -1;
   }
   function §\x1e\x17\x11§()
   {
      var _loc2_ = this.nbSkin;
      var _loc3_ = 1;
      while(_loc3_ < _loc2_)
      {
         if(this._nLivingXp < dofus.datacenter.["\x18\x10\x15"]["\x18\x14\x12"][_loc3_])
         {
            return dofus.datacenter.["\x18\x10\x15"]["\x18\x14\x12"][_loc3_ - 1];
         }
         _loc3_ = _loc3_ + 1;
      }
      return -1;
   }
   function §\x1e\x1e\x15§()
   {
      return this["\x18\f\x13"] || this["\x1a\n\x06"] == 113;
   }
   function §\x1e\x1d\x1a§()
   {
      return this["\x18\f\x13"] || this["\x1a\n\x06"] == 113;
   }
   function §\x1e\x13\x1a§()
   {
      return this["\x1c\x02\x10"];
   }
   function set rideItemDurability(nDurability)
   {
      this._rideItemDurability = nDurability;
   }
   function set rideItemDurabilityMax(nDurability)
   {
      this._rideItemDurabilityMax = nDurability;
   }
   function get rideItemDurability()
   {
      return this._rideItemDurability;
   }
   function get rideItemDurabilityMax()
   {
      return this._rideItemDurabilityMax;
   }
   function get durability()
   {
      return this._durability;
   }
   function get durabilityMax()
   {
      return this._durabilityMax;
   }
   function get skinDurability()
   {
      return this._skinDurability;
   }
   function get skinDurabilityMax()
   {
      return this._skinDurabilityMax;
   }
   function initialize(§\x19\b\x0b§, §\x19\x10\n§, nQuantity, §\x19\f\r§, §\x1a\x12\x0f§, §\x19\f\x10§, §\x19\x0e\r§, §\x19\n\x16§)
   {
      dofus.datacenter.["\x18\x10\x15"].api = _global.api;
      this._itemDateId = dofus.datacenter.["\x18\x10\x15"]["\x17\x05\x05"]--;
      this["\x1d\x17\x01"] = _loc2_;
      this["\x1d\x1e\x1a"] = _loc3_;
      this._nQuantity = _loc4_ != undefined ? _loc4_ : 1;
      this["\x1d\x1b\x05"] = _loc5_ != undefined ? _loc5_ : -1;
      if(_loc7_ != undefined)
      {
         this["\x1d\x1b\n"] = _loc7_;
      }
      this["\x1c\x02\x10"] = true;
      this["\x1e\x06\x06"] = dofus.datacenter.["\x18\x10\x15"].api.lang["\x17\x19\x1d"](_loc3_);
      this["\x1a\x16\x06"](_loc6_);
      this["\x1c\x06\x02"] = false;
      this["\x1b\x14\x15"]();
      var _loc10_ = this["\x1b\x12\r"].z;
      var _loc11_ = _loc10_.split("");
      this["\x1b\x1c\x16"] = new Array();
      var _loc12_ = 0;
      while(_loc12_ < _loc11_.length)
      {
         this["\x1b\x1c\x16"].push({shape:_loc11_[_loc12_],size:ank.utils.["\x16\x1e\t"]["\x17\x05\x1b"](_loc11_[_loc12_ + 1])});
         _loc12_ += 2;
      }
      this._itemLevel = this.level;
      this._itemType = this.type;
      this["\x1c\x11\x0f"] = this.price;
      this._itemName = this.name;
      this._itemWeight = this.weight;
      if(_loc8_ != undefined)
      {
         this["\x1d\x1c\x1d"] = _loc8_;
      }
      if(_loc9_ != undefined)
      {
         this["\x1d\x1a\x07"] = _loc9_;
      }
   }
   function get isSkinItemCeremonial()
   {
      return this._oSkinItemInfos != undefined && !!this._oSkinItemInfos.ce;
   }
   function get hasCustomSkinItem()
   {
      return this._oSkinItemInfos != undefined && !this._oSkinItemInfos.ce;
   }
   function get hasSkinItem()
   {
      return this._oSkinItemInfos != undefined && this._oSkinItemInfos.ce;
   }
   function get skinItemInfos()
   {
      return this._oSkinItemInfos;
   }
   function §\x1a\x16\x06§(§\x16\x1e\x04§)
   {
      this["\x1e\t\x0b"] = _loc2_;
      this["\x1b\x1c\x14"] = new Array();
      var _loc3_ = _loc2_.split(",");
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         var _loc5_ = _loc3_[_loc4_].split("#");
         _loc5_[0] = _global.parseInt(_loc5_[0],16);
         _loc5_[1] = _loc5_[1] != "" ? _global.parseInt(_loc5_[1],16) : undefined;
         _loc5_[2] = _loc5_[2] != "" ? _global.parseInt(_loc5_[2],16) : undefined;
         _loc5_[3] = _loc5_[3] != "" ? _global.parseInt(_loc5_[3],16) : undefined;
         _loc5_[4] = _loc5_[4];
         this["\x1b\x1c\x14"].push(_loc5_);
         _loc4_ = _loc4_ + 1;
      }
   }
   function §\x16\x1c\x1b§()
   {
      return new dofus.datacenter.["\x18\x10\x15"](this["\x1d\x17\x01"],this["\x1d\x1e\x1a"],this._nQuantity,this["\x1d\x1b\x05"],this["\x1e\t\x0b"]);
   }
   function §\x17\r\x15§(§\x18\x10\x14§)
   {
      return this.unicID == _loc2_.unicID;
   }
   function §\x1b\x01\b§(§\x18\x1b\f§, §\x1b\b\x16§)
   {
      var _loc4_ = "<b>" + this.name + "</b>" + " - " + dofus.datacenter.["\x18\x10\x15"].api.lang.getText("LEVEL_SMALL") + " " + this.level;
      var _loc5_ = "";
      var _loc6_ = this["\x1b\x18\x02"];
      for(var s in _loc6_)
      {
         var _loc7_ = _loc6_[s].description;
         if(_loc6_[s].isOver || _loc6_[s].isExo)
         {
            _loc7_ = "<b>" + _loc7_ + "</b>";
         }
         _loc5_ = "\n" + _loc7_ + _loc5_;
      }
      dofus.datacenter.["\x18\x10\x15"].api.ui.showTooltip(_loc4_ + "\n" + _loc5_,_loc2_,0,{bTopAlign:true},_loc3_ + "ToolTip");
   }
   function getMonsterList()
   {
      var _loc2_ = "";
      var _loc3_ = 0;
      while(_loc3_ < this["\x1b\x1c\x14"].length)
      {
         var _loc4_ = this["\x1b\x1c\x14"][_loc3_];
         var _loc5_ = _loc4_[0];
         new org.flashdevelop.utils.FlashConnect.trace(_loc5_ + " -> " + _loc4_[3],"dofus.datacenter.Item::getMonsterList","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/datacenter/Item.as",983);
         var _loc6_ = -1;
         if(_loc5_ == dofus.datacenter.["\x18\x10\x15"]["\x19\x11\x1a"])
         {
            _loc6_ = _global.parseInt(_loc4_[4],dofus.aks.Items["\x16\x1e\x07"]);
         }
         if(_loc5_ == dofus.datacenter.["\x18\x10\x15"].OBJECT_ACTION_SUMMON_RANDOM_GRADE)
         {
            _loc6_ = _global.parseInt(_loc4_[3]);
         }
         if(_loc6_ != -1)
         {
            if(_loc2_.length != 0)
            {
               _loc2_ += "|";
            }
            _loc2_ += _loc6_;
         }
         _loc3_ = _loc3_ + 1;
      }
      return _loc2_;
   }
   function §\x17\x19\x12§(§\x19\f\x12§)
   {
      return this["\x1e\x06\x06"].e[_loc2_];
   }
   function §\x1b\x14\x15§()
   {
      for(var k in this["\x1b\x1c\x14"])
      {
         var _loc2_ = this["\x1b\x1c\x14"][k];
         switch(_loc2_[0])
         {
            case 974:
               this._nLivingXp = !_loc2_[3] ? 0 : _loc2_[3];
               break;
            case 973:
               this["\x1d\x1b\x16"] = !_loc2_[3] ? 0 : _loc2_[3];
               break;
            case 972:
               this["\x1d\x1c\x1d"] = !_loc2_[3] ? 0 : _global.parseInt(_loc2_[3]) - 1;
               this["\x1c\x06\x02"] = true;
               break;
            case 971:
               this["\x1d\x1a\x07"] = !_loc2_[3] ? 0 : _loc2_[3];
               break;
            case 969:
               var _loc3_ = dofus.datacenter.["\x18\x10\x15"].api.lang["\x17\x19\x1d"](!_loc2_[3] ? 0 : _loc2_[3]);
               this._oSkinItemInfos = _loc3_;
               break;
            case 970:
               this["\x1e\f\x05"] = this["\x1e\x06\x06"].g;
               this["\x1e\t\x1a"] = dofus.datacenter.["\x18\x10\x15"].api.lang["\x17\x19\x1d"](!_loc2_[3] ? 0 : _loc2_[3]).g;
               this["\x1d\x1b\x17"] = _loc2_[3];
               break;
            case dofus.datacenter.["\x18\x10\x15"].OBJECT_ACTION_LINK_ACCOUNT:
               this["\x1c\x02\x10"] = false;
               break;
            case 975:
               this._nNbSkin = _loc2_[3];
               break;
            case 521:
               this._bUndestroyable = true;
               break;
            case 2149:
               this._skinDurability = !_loc2_[2] ? -1 : Number(_loc2_[2]);
               this._skinDurabilityMax = !_loc2_[3] ? -1 : Number(_loc2_[3]);
               break;
            case 812:
               this._durability = !_loc2_[2] ? -1 : Number(_loc2_[2]);
               this._durabilityMax = !_loc2_[3] ? -1 : Number(_loc2_[3]);
               break;
            case dofus.datacenter.["\x18\x10\x15"].OBJECT_ACTION_INCARNATION:
               this._bIsIncarnation = true;
         }
      }
      this._bUnknownSkinsCount = this._nNbSkin == undefined;
      if(this._bUnknownSkinsCount)
      {
         this._nNbSkin = dofus.datacenter.["\x18\x10\x15"]["\x18\x14\x12"].length;
      }
   }
   static function getBaseItemEffects(nItemId)
   {
      var _loc3_ = dofus.datacenter.["\x18\x10\x15"].api.lang["\x17\x19\x18"](nItemId);
      var _loc4_ = _loc3_.split(",");
      var _loc5_ = new Array();
      var _loc6_ = 0;
      while(_loc6_ < _loc4_.length)
      {
         var _loc7_ = _loc4_[_loc6_].split("#");
         _loc7_[0] = _global.parseInt(_loc7_[0],16);
         _loc7_[1] = _loc7_[1] != "0" ? _global.parseInt(_loc7_[1],16) : undefined;
         _loc7_[2] = _loc7_[2] != "0" ? _global.parseInt(_loc7_[2],16) : undefined;
         _loc7_[3] = _loc7_[3] != "0" ? _global.parseInt(_loc7_[3],16) : undefined;
         _loc5_.push(_loc7_);
         _loc6_ = _loc6_ + 1;
      }
      return _loc5_;
   }
   static function canBeExo(§\x19\x06\x11§)
   {
      return _loc2_ != dofus.datacenter.["\x18\x10\x15"].OBJECT_ACTION_LINK_CHARACTER && (_loc2_ != dofus.datacenter.["\x18\x10\x15"].OBJECT_ACTION_CUSTOM_SKIN && (_loc2_ != dofus.datacenter.["\x18\x10\x15"].OBJECT_ACTION_GIVE_AURA && (_loc2_ != dofus.datacenter.["\x18\x10\x15"].OBJECT_ACTION_GIVE_TITLE && (_loc2_ != dofus.datacenter.["\x18\x10\x15"].OBJECT_ACTION_LEARN_EMOTICON && (_loc2_ != dofus.datacenter.["\x18\x10\x15"].OBJECT_ACTION_LINK_ACCOUNT && (_loc2_ != dofus.datacenter.["\x18\x10\x15"].OBJECT_ACTION_LAST_MEAL && (_loc2_ != dofus.datacenter.["\x18\x10\x15"].OBJECT_ACTION_FM_BY_CHARACTER && _loc2_ != dofus.datacenter.["\x18\x10\x15"].OBJECT_ACTION_CRAFTED_BY_CHARACTER)))))));
   }
   static function isOver(§\x19\x12\x13§, nMinValue, §\x19\n\n§)
   {
      for(var idx in dofus.datacenter.["\x18\x10\x15"].OBJECT_ACTION_SPELL_BOOSTS)
      {
         if(dofus.datacenter.["\x18\x10\x15"].OBJECT_ACTION_SPELL_BOOSTS[idx] == _loc2_.type)
         {
            return false;
         }
      }
      if(_loc2_.type == dofus.datacenter.["\x18\x10\x15"].OBJECT_ACTION_LAST_MEAL || _loc2_.type == dofus.datacenter.["\x18\x10\x15"].OBJECT_ACTION_LINK_ACCOUNT)
      {
         return false;
      }
      if(_loc2_["\x1a\x03\r"] > _loc4_ && _loc2_.operator == "+")
      {
         return true;
      }
      if(_loc2_["\x1a\x03\r"] < nMinValue && _loc2_.operator == "-")
      {
         return true;
      }
      return false;
   }
   static function §\x17\x19\x11§(§\x16\x01\x13§, aBaseEffect, §\x16\x14\x18§, bCanBeExo)
   {
      var _loc6_ = new Array();
      var _loc7_ = _loc2_.length;
      var _loc8_ = new Object();
      var _loc9_ = new ank.utils.ExtendedArray();
      _loc9_.createFromArray(aBaseEffect);
      if(typeof _loc2_ == "object")
      {
         var _loc10_ = 0;
         while(_loc10_ < _loc7_)
         {
            var _loc11_ = _loc2_[_loc10_];
            var _loc12_ = _loc11_[0];
            var _loc13_ = new Array();
            switch(_loc12_)
            {
               case dofus.datacenter.["\x18\x10\x15"]["\x19\x11\x1a"]:
                  var _loc14_ = _loc11_[4].split(dofus.aks.Items["\x17\f\x0f"]);
                  var _loc15_ = 0;
                  while(_loc15_ < _loc14_.length)
                  {
                     var _loc16_ = _global.parseInt(_loc14_[_loc15_],dofus.aks.Items["\x16\x1e\x07"]);
                     var _loc17_ = new dofus.datacenter.["\x17\f\x02"](undefined,_loc12_,undefined,undefined,_loc16_);
                     _loc13_.push(_loc17_);
                     _loc15_ = _loc15_ + 1;
                  }
                  break;
               case dofus.datacenter.["\x18\x10\x15"].OBJECT_ACTION_REPLACE:
                  var _loc18_ = dofus.datacenter.["\x18\x10\x15"].getBaseItemEffects(_loc11_[3]);
                  var _loc19_ = 0;
                  while(_loc19_ < _loc18_.length)
                  {
                     var _loc20_ = _loc18_[_loc19_];
                     var _loc21_ = new dofus.datacenter.["\x17\f\x02"](undefined,_loc20_[0],_loc20_[1],_loc20_[2],_loc20_[3]);
                     _loc13_.push(_loc21_);
                     _loc19_ = _loc19_ + 1;
                  }
                  break;
               default:
                  var _loc22_ = new dofus.datacenter.["\x17\f\x02"](undefined,_loc12_,_loc11_[1],_loc11_[2],_loc11_[3],_loc11_[4]);
                  _loc8_[_loc12_] = _loc8_[_loc12_] != undefined ? _loc8_[_loc12_] + 1 : 0;
                  var _loc23_ = bCanBeExo && dofus.datacenter.["\x18\x10\x15"].canBeExo(_loc12_);
                  var _loc24_ = false;
                  if(_loc9_ != undefined && _loc9_.length > 0)
                  {
                     var _loc25_ = 0;
                     while(_loc25_ < _loc9_.length)
                     {
                        if(_loc9_[_loc25_][0] == _loc12_)
                        {
                           _loc23_ = false;
                           var _loc26_ = _loc9_[_loc25_][1];
                           var _loc27_ = _loc9_[_loc25_][2];
                           _loc24_ = dofus.datacenter.["\x18\x10\x15"].isOver(_loc22_,_loc26_,!_global.isNaN(_loc27_) ? _loc27_ : _loc26_);
                           _loc9_.splice(_loc25_,1);
                           break;
                        }
                        _loc25_ = _loc25_ + 1;
                     }
                  }
                  _loc22_.isOver = _loc24_;
                  _loc22_.isExo = _loc23_;
                  _loc13_.push(_loc22_);
                  break;
            }
            var _loc28_ = 0;
            while(_loc28_ < _loc13_.length)
            {
               var _loc29_ = _loc13_[_loc28_];
               if(_loc4_ == true)
               {
                  if(_loc29_["\x1a\x1d\x1b"])
                  {
                     _loc6_.push(_loc29_);
                  }
               }
               else
               {
                  _loc6_.push(_loc29_);
               }
               _loc28_ = _loc28_ + 1;
            }
            _loc10_ = _loc10_ + 1;
         }
         return _loc6_;
      }
      return null;
   }
}
