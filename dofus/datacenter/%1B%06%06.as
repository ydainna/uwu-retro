class dofus.§\x17\x04\x19§.§\x1b\x06\x06§ extends Object
{
   var _nFlags = 0;
   function §\x1b\x06\x06§(§\x19\b\x0b§, §\x19\t\x0f§, §\x1a\x11\x03§)
   {
      super();
      this.initialize(_loc3_,_loc4_,_loc5_);
   }
   function §\x1e\x1c\x04§()
   {
      return this["\x1d\x17\x01"];
   }
   function get iconProperties()
   {
      return this._oIconProperties;
   }
   function get flags()
   {
      return this._nFlags;
   }
   function set flags(nFlags)
   {
      this._nFlags = nFlags;
   }
   function get isUndeletable()
   {
      return (this._nFlags & 1) == 1;
   }
   function §\x01\x03§()
   {
      return this["\x1e\x05\x18"]["l" + this["\x1d\x18\x10"]] != undefined;
   }
   function §\x03\r§()
   {
      return this["\x1d\x19\x12"];
   }
   function §\x17\x03§(§\x19\t\x0f§)
   {
      this["\x1d\x18\x10"] = _loc2_;
      return this["\x02\x06"]();
   }
   function §\x02\x06§()
   {
      return this["\x1d\x18\x10"];
   }
   function §\x1a\x11§(§\x19\f\r§)
   {
      this["\x1d\x1b\x05"] = _loc2_;
      return this["\x06\x13"]();
   }
   function §\x06\x13§()
   {
      return this["\x1d\x1b\x05"];
   }
   function §\x0e\x15§(§\x19\x03\x11§)
   {
      this["\x1d\x12\x1a"] = _loc2_;
      return this["\x1e\x12\x02"]();
   }
   function §\x1e\x12\x02§()
   {
      return this["\x1d\x12\x1a"];
   }
   function §\n\x12§()
   {
      return this._bSummonSpell;
   }
   function §\x1e\x1b\x06§()
   {
      return this["\x1a\x12\x06"](this["\x18\x01\x03"](0));
   }
   function §\f\x0b§()
   {
      return this["\x1a\x12\b"](this["\x18\x01\x03"](0));
   }
   function §\x14\x1c§(§\x16\r\t§)
   {
      this["\x1c\x05\x04"] = _loc2_;
      return this["\x1e\x1c\t"]();
   }
   function §\x1e\x1c\t§()
   {
      return this["\x1c\x05\x04"];
   }
   function §\x1e\x1c\x03§()
   {
      return "SpellFullIcon";
   }
   function §\x06\x02§()
   {
      return {spell:this,spellID:this.ID,breedID:this.api.datacenter.Player.Guild};
   }
   function get forceReloadOnContainer()
   {
      return true;
   }
   function §\x1e\x1a\f§()
   {
      return dofus.Constants["\x1b\x06\x15"] + this["\x1d\x12\x1a"] + ".swf";
   }
   function §\x04\x1b§()
   {
      var _loc2_ = this["\x1e\x05\x18"].n;
      if(dofus.Constants.DEBUG)
      {
         _loc2_ += " (" + this.ID + ")";
      }
      return _loc2_;
   }
   function §\x1e\x18\r§()
   {
      return this["\x1e\x05\x18"].d;
   }
   function get isOwnedByPlayer()
   {
      return this.api.datacenter.Player.isSpellOwned(this.ID);
   }
   function §\x1e\x12\x04§()
   {
      var _loc2_ = this.api.kernel["\x1b\x06\x10"]["\x18\x01\x04"](dofus.managers["\x1b\x06\x10"]["\x15\x1c\n"],this["\x1d\x17\x01"]);
      var _loc3_ = this["\x18\x01\x03"](2);
      if(_loc2_ > -1)
      {
         return _loc3_ - _loc2_;
      }
      return _loc3_;
   }
   function §\x07\x05§()
   {
      var _loc2_ = this["\x18\x01\x03"](3);
      if(_loc2_ == undefined)
      {
         _loc2_ = 0;
      }
      return _loc2_;
   }
   function §\x07\x04§()
   {
      var _loc2_ = this["\x18\x01\x03"](4);
      var _loc3_ = this.api.kernel["\x1b\x06\x10"]["\x18\x01\x04"](dofus.managers["\x1b\x06\x10"].ACTION_BOOST_SPELL_RANGE_NO_RANGEABLE_TRIGGER,this["\x1d\x17\x01"]);
      if(_loc3_ > -1)
      {
         _loc2_ += _loc3_;
      }
      var _loc4_ = this.api.kernel["\x1b\x06\x10"]["\x18\x01\x04"](dofus.managers["\x1b\x06\x10"]["\x15\x1c\x13"],this["\x1d\x17\x01"]);
      if(_loc4_ > -1)
      {
         _loc2_ += _loc4_;
      }
      return _loc2_;
   }
   function get rangeModerator()
   {
      return !this["\x16\x15\x1a"] ? 0 : this.api.datacenter.Player.data["\x16\x19\x06"]["\x17\x1c\x03"](19) + this.api.datacenter.Player.RangeModerator;
   }
   function §\x07\x07§()
   {
      return (this["\x1a\t\x14"] == 0 ? "" : this["\x1a\t\x14"] + " " + this.api.lang.getText("TO_RANGE") + " ") + this["\x1a\t\x13"];
   }
   function §\x1e\x17\t§()
   {
      var _loc2_ = this.api.kernel["\x1b\x06\x10"]["\x18\x01\x04"](dofus.managers["\x1b\x06\x10"]["\x15\x1c\r"],this["\x1d\x17\x01"]);
      var _loc3_ = this["\x18\x01\x03"](5);
      if(_loc2_ > -1)
      {
         return _loc3_ <= 0 ? 0 : Math.max(_loc3_ - _loc2_,2);
      }
      return _loc3_;
   }
   function §\x1e\x11\x10§()
   {
      return this.api.kernel.GameManager["\x17\x15\x1a"](this["\x17\x03\b"]);
   }
   function §\x1e\x17\x07§()
   {
      return this["\x18\x01\x03"](6);
   }
   function §\x02\t§()
   {
      var _loc2_ = this.api.kernel["\x1b\x06\x10"]["\x18\x01\x04"](dofus.managers["\x1b\x06\x10"]["\x15\x1c\x0b"],this["\x1d\x17\x01"]);
      var _loc3_ = this["\x18\x01\x03"](7);
      if(_loc2_ > 0)
      {
         return false;
      }
      return _loc3_;
   }
   function §\x02\b§()
   {
      var _loc2_ = this.api.kernel["\x1b\x06\x10"]["\x18\x01\x04"](dofus.managers["\x1b\x06\x10"]["\x15\x1c\x12"],this["\x1d\x17\x01"]);
      var _loc3_ = this["\x18\x01\x03"](8);
      if(_loc2_ > 0)
      {
         return false;
      }
      return _loc3_;
   }
   function §\x1e\x1a\x19§()
   {
      return this["\x18\x01\x03"](9);
   }
   function §\x1e\x13\x1c§()
   {
      var _loc2_ = this.api.kernel["\x1b\x06\x10"]["\x18\x01\x04"](dofus.managers["\x1b\x06\x10"]["\x15\x1c\x14"],this["\x1d\x17\x01"]);
      var _loc3_ = this["\x18\x01\x03"](10);
      if(_loc2_ > 0)
      {
         return true;
      }
      return _loc3_;
   }
   function §\x1e\x15\x1a§()
   {
      return this["\x18\x01\x03"](11);
   }
   function §\x02\x03§()
   {
      var _loc2_ = this.api.kernel["\x1b\x06\x10"]["\x18\x01\x04"](dofus.managers["\x1b\x06\x10"]["\x15\x1c\x11"],this["\x1d\x17\x01"]);
      var _loc3_ = this["\x18\x01\x03"](12);
      if(_loc3_ == undefined)
      {
         _loc3_ = 0;
      }
      if(_loc2_ > -1)
      {
         return _loc3_ + _loc2_;
      }
      return _loc3_;
   }
   function §\x02\x02§()
   {
      var _loc2_ = this.api.kernel["\x1b\x06\x10"]["\x18\x01\x04"](dofus.managers["\x1b\x06\x10"]["\x15\x1c\x10"],this["\x1d\x17\x01"]);
      var _loc3_ = this["\x18\x01\x03"](13);
      if(_loc3_ == undefined)
      {
         _loc3_ = 0;
      }
      if(_loc2_ > -1)
      {
         return _loc3_ + _loc2_;
      }
      return _loc3_;
   }
   function §\x1e\x18\x0b§()
   {
      var _loc2_ = this.api.kernel["\x1b\x06\x10"]["\x18\x01\x04"](dofus.managers["\x1b\x06\x10"]["\x15\x1c\f"],this["\x1d\x17\x01"]);
      var _loc3_ = this.api.kernel["\x1b\x06\x10"]["\x18\x01\x04"](dofus.managers["\x1b\x06\x10"]["\x15\x1c\x15"],this["\x1d\x17\x01"]);
      var _loc4_ = _loc3_ <= -1 ? this["\x18\x01\x03"](14) : _loc3_;
      if(_loc4_ == undefined)
      {
         _loc4_ = 0;
      }
      if(_loc2_ > -1)
      {
         return Math.max(0,_loc4_ - _loc2_);
      }
      return _loc4_;
   }
   function §\x1e\x18\x0f§()
   {
      return this.api.kernel.GameManager["\x18\x01\x01"](this["\x18\x01\x03"](0),false,this["\x1d\x17\x01"]);
   }
   function §\x1e\x18\x0e§()
   {
      return this.api.kernel.GameManager["\x18\x01\x01"](this["\x18\x01\x03"](1),false,this["\x1d\x17\x01"]);
   }
   function get hasInvocationConditionnedEffect()
   {
      if(this._hasInvocationConditionnedEffectCache != undefined)
      {
         return this._hasInvocationConditionnedEffectCache;
      }
      var _loc2_ = false;
      var _loc3_ = this["\x17\f\n"];
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         var _loc5_ = _loc3_[_loc4_];
         if(_loc5_.hasInvocationConditions)
         {
            _loc2_ = true;
            break;
         }
         _loc4_ = _loc4_ + 1;
      }
      if(!_loc2_)
      {
         var _loc6_ = this["\x17\f\x06"];
         var _loc7_ = 0;
         while(_loc7_ < _loc6_.length)
         {
            var _loc8_ = _loc6_[_loc7_];
            if(_loc8_.hasInvocationConditions)
            {
               _loc2_ = true;
               break;
            }
            _loc7_ = _loc7_ + 1;
         }
      }
      this._hasInvocationConditionnedEffectCache = _loc2_;
      return _loc2_;
   }
   function §\x1e\x19\r§()
   {
      return this.api.kernel.GameManager["\x18\x01\x02"](this["\x18\x01\x03"](0),this["\x1d\x17\x01"]);
   }
   function §\x1e\x19\x0b§()
   {
      return this.api.kernel.GameManager["\x18\x01\x02"](this["\x18\x01\x03"](1),this["\x1d\x17\x01"]);
   }
   function §\x1e\x19\x0e§()
   {
      var _loc2_ = this.api.kernel.GameManager["\x18\x01\x02"](this["\x18\x01\x03"](0),this["\x1d\x17\x01"]);
      var _loc3_ = new ank.utils.ExtendedArray();
      var _loc4_ = 0;
      var _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         var _loc6_ = new Object();
         _loc6_.fx = _loc2_[_loc5_];
         _loc6_.at = this["\x1b\x1c\x16"][_loc4_ + _loc5_].shape;
         _loc6_.ar = this["\x1b\x1c\x16"][_loc4_ + _loc5_].size;
         _loc3_.push(_loc6_);
         _loc5_ = _loc5_ + 1;
      }
      return _loc3_;
   }
   function §\x1e\x19\f§()
   {
      var _loc2_ = this.api.kernel.GameManager["\x18\x01\x02"](this["\x18\x01\x03"](1),this["\x1d\x17\x01"]);
      var _loc3_ = new ank.utils.ExtendedArray();
      var _loc4_ = this["\x17\f\n"].length;
      var _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         var _loc6_ = new Object();
         _loc6_.fx = _loc2_[_loc5_];
         _loc6_.at = this["\x1b\x1c\x16"][_loc4_ + _loc5_].shape;
         _loc6_.ar = this["\x1b\x1c\x16"][_loc4_ + _loc5_].size;
         _loc3_.push(_loc6_);
         _loc5_ = _loc5_ + 1;
      }
      return _loc3_;
   }
   function §\x07\x16§()
   {
      return this["\x1b\x1e\x13"];
   }
   function §\x1e\x1a\x12§()
   {
      return this["\x1b\x1c\x1a"];
   }
   function §\x04\x1c§()
   {
      return this["\x1b\x1e\x13"].length > 0 || this["\x1b\x1c\x1a"].length > 0;
   }
   function §\x03\x1d§()
   {
      return Number(this["\x18\x01\x03"](18));
   }
   function §\x05\n§()
   {
      return Number(this["\x18\x01\x03"](18,1));
   }
   function §\x1e\x17\b§()
   {
      return this["\x18\x01\x03"](19);
   }
   function get levelID()
   {
      return this["\x18\x01\x03"](20);
   }
   function get spellBreed()
   {
      return this["\x1e\x05\x18"].b;
   }
   function §\x1e\x15\x02§()
   {
      return this["\x1e\x05\x18"].c;
   }
   function get rarity()
   {
      return this.getRarityByCategory(this["\x16\x17\f"]);
   }
   function §\f\r§()
   {
      return this["\x1e\x05\x18"].t;
   }
   function get origin()
   {
      return this["\x1e\x05\x18"].o;
   }
   function get isPassive()
   {
      return this["\x1e\x05\x18"].p;
   }
   function get isCastGlobalInterval()
   {
      return this["\x1e\x05\x18"].g;
   }
   function getRarityByCategory(nCategory)
   {
      switch(nCategory)
      {
         case dofus.graphics.gapi.ui.SpellsCollection.SPELLS_CATEGORY_TR2_COMMON:
            return 1;
         case dofus.graphics.gapi.ui.SpellsCollection.SPELLS_CATEGORY_TR2_RARE:
            return 2;
         case dofus.graphics.gapi.ui.SpellsCollection.SPELLS_CATEGORY_TR2_EPIC:
            return 3;
         case dofus.graphics.gapi.ui.SpellsCollection.SPELLS_CATEGORY_TR2_LEGENDARY:
            return 4;
         default:
            return -1;
      }
   }
   function §\x1e\x19\x13§()
   {
      var _loc2_ = {none:false,neutral:false,earth:false,fire:false,water:false,air:false};
      var _loc3_ = this["\x17\f\n"];
      for(var k in _loc3_)
      {
         var _loc4_ = _loc3_[k]["\x17\f\x12"];
         switch(_loc4_)
         {
            case "N":
               _loc2_.neutral = true;
               break;
            case "E":
               _loc2_.earth = true;
               break;
            case "F":
               _loc2_.fire = true;
               break;
            case "W":
               _loc2_.water = true;
               break;
            case "A":
               _loc2_.air = true;
               break;
            default:
               _loc2_.none = true;
         }
      }
      return _loc2_;
   }
   function §\x1e\x19\x10§()
   {
      return this["\x1b\x1c\x16"];
   }
   function initialize(§\x19\b\x0b§, §\x19\t\x0f§, §\x1a\x11\x03§)
   {
      this.api = _global.api;
      this["\x1d\x17\x01"] = _loc2_;
      this["\x1d\x18\x10"] = _loc3_;
      var _loc5_ = _global.parseInt(_loc4_,16);
      if(_loc5_ > 31 || _loc5_ < 1)
      {
         _loc5_ = null;
      }
      this["\x1e\x05\x18"] = this.api.lang["\x18\x01\x07"](_loc2_);
      if(this.isPassive)
      {
         this["\x1d\x1b\x05"] = undefined;
         this._nPassivePosition = _loc5_;
      }
      else
      {
         this["\x1d\x1b\x05"] = _loc5_;
      }
      this._oIconProperties = dofus.datacenter..SpellIconProperties.buildFromSpellText(this["\x1e\x05\x18"]);
      var _loc6_ = this["\x18\x01\x03"](15);
      var _loc7_ = _loc6_.split("");
      this["\x1b\x1c\x16"] = new Array();
      var _loc8_ = 0;
      while(_loc8_ < _loc7_.length)
      {
         this["\x1b\x1c\x16"].push({shape:_loc7_[_loc8_],size:ank.utils.Compressor.decode64(_loc7_[_loc8_ + 1])});
         _loc8_ += 2;
      }
      this._bSummonSpell = this["\x1a\x12\x07"](this["\x18\x01\x03"](0)) || this["\x1a\x12\x07"](this["\x18\x01\x03"](1));
      this["\x1d\x19\x12"] = 1;
      var _loc9_ = 1;
      while(_loc9_ <= dofus.Constants["\x1b\x06\x17"])
      {
         if(this["\x1e\x05\x18"]["l" + _loc9_] == undefined)
         {
            break;
         }
         this["\x1d\x19\x12"] = _loc9_;
         _loc9_ = _loc9_ + 1;
      }
      this["\x1b\x1e\x13"] = this["\x18\x01\x03"](16);
      this["\x1b\x1c\x1a"] = this["\x18\x01\x03"](17);
      this._minPlayerLevel = this["\x19\x0b\r"];
   }
   function §\x18\x01\x03§(§\x19\f\x12§, §\x19\t\x0f§)
   {
      if(_loc3_ == undefined)
      {
         _loc3_ = this["\x1d\x18\x10"];
      }
      return this["\x1e\x05\x18"]["l" + _loc3_][_loc2_];
   }
   function §\x1a\x12\x07§(§\x16\x01\x13§)
   {
      var _loc3_ = _loc2_.length;
      if(typeof _loc2_ == "object")
      {
         var _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var _loc5_ = _loc2_[_loc4_][0];
            if(_loc5_ == 180 || _loc5_ == 181)
            {
               return true;
            }
            _loc4_ = _loc4_ + 1;
         }
      }
      return false;
   }
   function §\x1a\x12\x06§(§\x16\x01\x13§)
   {
      var _loc3_ = _loc2_.length;
      if(typeof _loc2_ == "object")
      {
         var _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var _loc5_ = _loc2_[_loc4_][0];
            if(_loc5_ == 401)
            {
               return true;
            }
            _loc4_ = _loc4_ + 1;
         }
      }
      return false;
   }
   function §\x1a\x12\b§(§\x16\x01\x13§)
   {
      var _loc3_ = _loc2_.length;
      if(typeof _loc2_ == "object")
      {
         var _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var _loc5_ = _loc2_[_loc4_][0];
            if(_loc5_ == 400)
            {
               return true;
            }
            _loc4_ = _loc4_ + 1;
         }
      }
      return false;
   }
}
