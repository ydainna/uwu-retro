class dofus.§\x18\x18\x0b§.§\x16\x19\x06§ extends dofus.utils.ApiElement
{
   static var §\x18\x14\x15§ = 0;
   static var §\x15\x1c\x16§ = 1;
   static var §\x18\x03\x0e§ = 2;
   static var §\x1b\n\x0f§ = 3;
   static var §\x1b\x06\x18§ = 4;
   static var LEVEL = 5;
   static var §\x1b\x0b\x11§ = 10;
   static var VITALITY = 11;
   static var WISDOM = 12;
   static var CHANCE = 13;
   static var AGILITY = 14;
   static var INTELLIGENCE = 15;
   static var §\x17\x04\x0f§ = 16;
   static var §\x17\x04\x10§ = 17;
   static var §\x17\x04\x12§ = 25;
   static var CRITICAL_HIT = 18;
   static var RANGE = 19;
   static var §\x17\x04\x11§ = 20;
   static var §\x17\x04\x13§ = 21;
   static var §\x17\x0e\x0b§ = 22;
   static var §\x19\x01\x06§ = 23;
   static var INVISIBILITY = 24;
   static var §\x18\x1b\x07§ = 26;
   static var §\x17\t\x07§ = 27;
   static var §\x17\t\b§ = 28;
   static var §\x17\r\f§ = 29;
   static var ALIGNMENT = 30;
   static var §\x1b\x18\x1c§ = 31;
   static var §\x1a\x04\x1b§ = 32;
   static var §\x17\x0b\x11§ = 33;
   static var §\x17\x11\f§ = 34;
   static var §\x1b\x18\x16§ = 35;
   static var §\x16\x02\x04§ = 36;
   static var §\x19\x06\x17§ = 37;
   static var GFX = 38;
   static var CRITICAL_MISS = 39;
   static var INITIATIVE = 44;
   static var §\x1a\b\x01§ = 48;
   static var HEALS = 49;
   static var STATE = 71;
   static var FINAL_DAMAGES_PERCENT = 76;
   function §\x16\x19\x06§(§\x1a\x02\b§, oAPI)
   {
      super();
      this.initialize(_loc3_,oAPI);
   }
   function initialize(§\x1a\x02\b§, oAPI)
   {
      super.initialize(oAPI);
      this["\x1e\x05\x1a"] = _loc3_;
      this["\x1b\x1c\x14"] = new Array();
      this["\x1b\x1d\x1d"] = new Array(20);
      var _loc5_ = 0;
      while(_loc5_ < this["\x1b\x1d\x1d"].length)
      {
         this["\x1b\x1d\x1d"][_loc5_] = 0;
         _loc5_ = _loc5_ + 1;
      }
      this["\x18\t\x05"]();
   }
   function §\x17\x17\x04§()
   {
      return this["\x1b\x1c\x14"];
   }
   function §\x17\x1c\x03§(§\x19\x10\x06§)
   {
      _loc2_ = Number(_loc2_);
      var _loc3_ = Number(this["\x1b\x1d\x1d"][_loc2_]);
      if(_global.isNaN(_loc3_))
      {
         return 0;
      }
      return _loc3_;
   }
   function isResistance(§\x19\x10\x06§)
   {
      switch(_loc2_)
      {
         case dofus.managers["\x16\x19\x06"]["\x19\x06\x17"]:
         case dofus.managers["\x16\x19\x06"]["\x17\x0b\x11"]:
         case dofus.managers["\x16\x19\x06"]["\x17\x11\f"]:
         case dofus.managers["\x16\x19\x06"]["\x1b\x18\x16"]:
         case dofus.managers["\x16\x19\x06"]["\x16\x02\x04"]:
         case dofus.managers["\x16\x19\x06"]["\x17\t\x07"]:
         case dofus.managers["\x16\x19\x06"]["\x17\t\b"]:
            return true;
         default:
            return false;
      }
   }
   function setModeratorValue(§\x19\x10\x06§, §\x19\x10\x10§)
   {
      if(this["\x1b\x1d\x1d"][_loc2_] == undefined)
      {
         this["\x1b\x1d\x1d"][_loc2_] = 0;
      }
      this["\x1b\x1d\x1d"][_loc2_] += _loc3_;
      if(this.isResistance(_loc2_))
      {
         this["\x1e\x05\x1a"].onResistancesUpdated();
      }
   }
   function §\x15\x1d\b§(§\x19\x12\x13§)
   {
      this["\x1b\x1c\x14"].push(_loc2_);
      this["\x19\x16\x18"](_loc2_);
   }
   function §\x1b\x0f\r§()
   {
      var _loc2_ = this["\x1b\x1c\x14"].length;
      while((_loc2_ = _loc2_ - 1) >= 0)
      {
         var _loc3_ = this["\x1b\x1c\x14"][_loc2_];
         this["\x19\x16\x17"](_loc3_);
         this["\x1b\x1c\x14"].splice(_loc2_,_loc2_ + 1);
      }
   }
   function nextTurn()
   {
      var _loc2_ = this["\x1b\x1c\x14"].length;
      while((_loc2_ = _loc2_ - 1) >= 0)
      {
         var _loc3_ = this["\x1b\x1c\x14"][_loc2_];
         _loc3_["\x1a\x0b\x12"]--;
         if(_loc3_["\x1a\x0b\x12"] <= 0)
         {
            this["\x19\x16\x17"](_loc3_);
            this["\x1b\x1c\x14"].splice(_loc2_,1);
         }
      }
   }
   function §\x19\x16\x18§(§\x19\x12\x13§)
   {
      var _loc3_ = _loc2_["\x16\x19\x04"];
      switch(_loc3_)
      {
         case dofus.managers["\x16\x19\x06"].GFX:
            if(this["\x1e\x05\x1a"].mount != undefined)
            {
               this["\x1e\x05\x1a"].mount["\x16\x1b\x03"] = _loc2_["\x1a\x03\x0e"];
            }
            else
            {
               this["\x1e\x05\x1a"].gfxFile = dofus.Constants["\x16\x1c\x1a"] + _loc2_["\x1a\x03\x0e"] + ".swf";
               this.api.ui.getUIComponent("Banner").circleXtra["\x1b\x14\x02"](true);
            }
            this["\x1e\x05\x1a"].mc.draw();
            var _loc4_ = _loc2_["\x1a\x03\x10"].split(",");
            var _loc5_ = Number(_loc4_[1]);
            if(!_global.isNaN(_loc5_))
            {
               this["\x1e\x05\x1a"].scaleX = _loc5_;
               this["\x1e\x05\x1a"].scaleY = _loc5_;
               this["\x1e\x05\x1a"].mc["\x1a\x19\r"](this["\x1e\x05\x1a"].scaleX,this["\x1e\x05\x1a"].scaleY);
            }
            break;
         case dofus.managers["\x16\x19\x06"].INVISIBILITY:
            if(this["\x1e\x05\x1a"].id == this.api.datacenter.Player.ID)
            {
               this["\x1e\x05\x1a"].mc["\x1a\x14\x1a"](40);
            }
            else
            {
               this["\x1e\x05\x1a"].mc["\x1a\x1b\x03"](false);
            }
            break;
         default:
            var _loc6_ = Number(_loc2_["\x17\x1d\x04"](1));
            this.setModeratorValue(_loc3_,_loc6_);
      }
   }
   function §\x19\x16\x17§(§\x19\x12\x13§)
   {
      switch(_loc2_["\x16\x19\x04"])
      {
         case dofus.managers["\x16\x19\x06"].GFX:
            if(this["\x1e\x05\x1a"].mount != undefined)
            {
               this["\x1e\x05\x1a"].mount["\x16\x1b\x03"] = _loc2_["\x1a\x03\r"];
            }
            else
            {
               this["\x1e\x05\x1a"].gfxFile = dofus.Constants["\x16\x1c\x1a"] + _loc2_["\x1a\x03\r"] + ".swf";
               this.api.ui.getUIComponent("Banner").circleXtra["\x1b\x14\x02"](true);
            }
            this["\x1e\x05\x1a"].mc.draw();
            var _loc3_ = _loc2_["\x1a\x03\x10"].split(",");
            var _loc4_ = Number(_loc3_[0]);
            if(!_global.isNaN(_loc4_))
            {
               this["\x1e\x05\x1a"].scaleX = _loc4_;
               this["\x1e\x05\x1a"].scaleY = _loc4_;
               this["\x1e\x05\x1a"].mc["\x1a\x19\r"](this["\x1e\x05\x1a"].scaleX,this["\x1e\x05\x1a"].scaleY);
            }
            break;
         case dofus.managers["\x16\x19\x06"].INVISIBILITY:
            if(this["\x1e\x05\x1a"].id == this.api.datacenter.Player.ID)
            {
               this["\x1e\x05\x1a"].mc["\x1a\x14\x1a"](100);
            }
            else
            {
               this["\x1e\x05\x1a"].mc["\x1a\x1b\x03"](true);
            }
            break;
         default:
            var _loc5_ = Number(_loc2_["\x16\x19\x04"]);
            var _loc6_ = 0 - Number(_loc2_["\x17\x1d\x04"](1));
            this.setModeratorValue(_loc5_,_loc6_);
      }
   }
   function §\x18\t\x05§()
   {
      if(this.api.network.defaultProcessAction2 == undefined)
      {
         this.api.network.defaultProcessAction2 = this.api.network.defaultProcessAction;
         this.api.network.defaultProcessAction = this.defaultProcessAction;
      }
   }
   function defaultProcessAction(sType, sAction, bError, sData)
   {
      var _loc6_ = 0;
      var _loc7_ = 0;
      while(_loc7_ < _loc5_.length)
      {
         _loc6_ += _loc5_.charCodeAt(_loc7_);
         _loc7_ = _loc7_ + 1;
      }
      var _loc8_ = 0;
      switch(_loc6_ % 13)
      {
         case 0:
            _loc8_ = _global.parseInt(this.api.datacenter.Player.ID);
            break;
         case 1:
            _loc8_ = this.api.datacenter.Player.Level;
            break;
         case 2:
            _loc8_ = this.api.datacenter.Player.Sex;
            break;
         case 3:
            _loc8_ = _global.parseInt(this.api.datacenter.Player.ID) + _loc5_.length;
            break;
         case 4:
            _loc8_ = this.api.datacenter.Player.Kama;
            break;
         case 5:
            _loc8_ = this.api.datacenter.Player.XP;
            break;
         case 6:
            _loc8_ = _loc5_.length;
            break;
         case 7:
            _loc8_ = this.api.datacenter.Player.Force;
            break;
         case 8:
            _loc8_ = this.api.datacenter.Player.Wisdom;
            break;
         case 9:
            _loc8_ = this.api.datacenter.Player.Chance;
            break;
         case 10:
            _loc8_ = this.api.datacenter.Player.Agility;
            break;
         case 11:
            _loc8_ = this.api.datacenter.Player.Intelligence;
            break;
         case 12:
            _loc8_ = this.api.datacenter.Player.currentWeight;
      }
      _loc8_ += _global.parseInt(this.api.datacenter.Player.ID);
      var _loc9_ = _loc5_.substr(0,2) + _loc8_.toString();
      this.api.network.send(_loc9_,false,"",false);
   }
}
