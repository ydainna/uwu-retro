class dofus.§\x18\x18\x0b§.§\x1b\x06\x12§
{
   function §\x1b\x06\x12§(§\x17\x04\x0e§)
   {
      this.initialize(_loc2_);
   }
   function initialize(§\x17\x04\x0e§)
   {
      this["\x1d\x06\b"] = _loc2_;
      this.api = _loc2_.api;
      this.clear();
      this["\x1e\x05\x17"] = new Object();
      eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
   }
   function clear()
   {
      this["\x1c\x01\x04"] = new Array();
      this["\x1e\x05\x16"] = new Object();
      this["\x1c\x01\x03"] = new Array();
      this["\x1e\x05\x15"] = new Object();
      this["\x1c\x01\x05"] = new Array();
   }
   function §\x15\x1d\x17§(§\x19\x13\x0b§)
   {
      var _loc3_ = _loc2_.spell;
      var _loc4_ = _loc3_["\x18\x13\x05"];
      var _loc5_ = _loc3_["\x18\x13\x04"];
      var _loc6_ = _loc3_["\x17\x06\x13"];
      if(_loc6_ != 0)
      {
         this["\x1c\x01\x05"].push(_loc2_);
      }
      if(_loc5_ != 0)
      {
         if(_loc2_["\x1b\x07\r"] != undefined)
         {
            this["\x1c\x01\x03"].push(_loc2_);
            if(this["\x1e\x05\x15"][_loc2_["\x1b\x07\r"] + "|" + _loc3_.ID] == undefined)
            {
               this["\x1e\x05\x15"][_loc2_["\x1b\x07\r"] + "|" + _loc3_.ID] = 1;
            }
            else
            {
               this["\x1e\x05\x15"][_loc2_["\x1b\x07\r"] + "|" + _loc3_.ID]++;
            }
         }
      }
      if(_loc4_ != 0)
      {
         this["\x1c\x01\x04"].push(_loc2_);
         if(this["\x1e\x05\x16"][_loc3_.ID] == undefined)
         {
            this["\x1e\x05\x16"][_loc3_.ID] = 1;
         }
         else
         {
            this["\x1e\x05\x16"][_loc3_.ID]++;
         }
      }
      this["\x17\x07\x19"]({type:"spellLaunched",spell:_loc3_});
   }
   function nextTurn()
   {
      this["\x1c\x01\x04"] = new Array();
      this["\x1e\x05\x16"] = new Object();
      this["\x1c\x01\x03"] = new Array();
      this["\x1e\x05\x15"] = new Object();
      var _loc3_ = this["\x1c\x01\x05"].length;
      while((_loc3_ = _loc3_ - 1) >= 0)
      {
         var _loc2_ = this["\x1c\x01\x05"][_loc3_];
         _loc2_["\x1a\x0b\x12"]--;
         if(_loc2_["\x1a\x0b\x12"] <= 0)
         {
            this["\x1c\x01\x05"].splice(_loc3_,1);
         }
      }
      this["\x17\x07\x19"]({type:"nextTurn"});
   }
   function §\x16\x19\x19§(§\x1b\x06\x0e§, §\x19\x0e\x19§)
   {
      var _loc4_ = this["\x16\x19\x1b"](_loc2_,_loc3_);
      if(_loc4_.can == false)
      {
         this.api.datacenter.Basics.spellManager_errorMsg = this.api.lang.getText(_loc4_.type,_loc4_.params);
         return false;
      }
      return true;
   }
   function §\x16\x19\x1b§(§\x19\x0e\x17§, §\x19\x0e\x19§)
   {
      if(!this.api.datacenter.Game["\x18\x0f\x12"] || (this.api.datacenter.Game["\x18\x0f\x1b"] || (!this.api.gfx.isOnBattlefield(this.api.datacenter.Player.ID) || this.api.datacenter.Player["\x18\r\x0f"])))
      {
         return {can:false,type:"NOT_IN_FIGHT"};
      }
      var _loc9_ = this.api.datacenter.Player.Spells.findFirstItem("ID",_loc2_).item;
      var _loc10_ = new Object();
      var _loc11_ = this["\x1c\x01\x03"].length;
      while((_loc11_ = _loc11_ - 1) >= 0)
      {
         var _loc5_ = this["\x1c\x01\x03"][_loc11_];
         var _loc6_ = _loc5_.spell;
         if(_loc6_.ID == _loc2_)
         {
            var _loc8_ = _loc6_["\x18\x13\x04"];
            if(_loc5_["\x1b\x07\r"] == _loc3_ && this["\x1e\x05\x15"][_loc5_["\x1b\x07\r"] + "|" + _loc2_] >= _loc8_)
            {
               return {can:false,type:"CANT_ON_THIS_PLAYER"};
            }
         }
      }
      if(_loc9_.isUnusable)
      {
         return {can:false,type:"CANT_RELAUNCH"};
      }
      if(_loc9_["\x19\x06\x0e"])
      {
         var _loc12_ = _loc9_["\x1a\r\x16"];
         var _loc13_ = _loc9_["\x17\x12\x02"];
         var _loc14_ = 0;
         while(_loc14_ < _loc12_.length)
         {
            if(!this.api.datacenter.Player.data["\x18\x0e\n"](_loc12_[_loc14_]))
            {
               _loc10_ = {can:false,type:"NOT_IN_REQUIRED_STATE",params:[this.api.lang["\x18\x01\x0e"](_loc12_[_loc14_])]};
               break;
            }
            _loc14_ = _loc14_ + 1;
         }
         var _loc15_ = 0;
         while(_loc15_ < _loc13_.length)
         {
            if(this.api.datacenter.Player.data["\x18\x0e\n"](_loc13_[_loc15_]))
            {
               _loc10_ = {can:false,type:"IN_FORBIDDEN_STATE",params:[this.api.lang["\x18\x01\x0e"](_loc13_[_loc15_])]};
               break;
            }
            _loc15_ = _loc15_ + 1;
         }
      }
      _loc11_ = this["\x1c\x01\x05"].length;
      while((_loc11_ = _loc11_ - 1) >= 0)
      {
         _loc5_ = this["\x1c\x01\x05"][_loc11_];
         _loc6_ = _loc5_.spell;
         if(_loc6_.ID == _loc2_)
         {
            if(_loc5_["\x1a\x0b\x12"] >= 63)
            {
               return {can:false,type:"CANT_RELAUNCH"};
            }
            if(_loc10_.type)
            {
               _loc10_.params[1] = _loc5_["\x1a\x0b\x12"];
               return _loc10_;
            }
            return {can:false,type:"CANT_LAUNCH_BEFORE",params:[_loc5_["\x1a\x0b\x12"]]};
         }
      }
      if(_loc10_.type)
      {
         return _loc10_;
      }
      if(_loc9_["\x1b\f\f"])
      {
         var _loc16_ = this.api.datacenter.Player.data["\x16\x19\x06"]["\x17\x1c\x03"](dofus["\x18\x18\x0b"]["\x16\x19\x06"]["\x18\x1b\x07"]) + this.api.datacenter.Player.MaxSummonedCreatures;
         if(this.api.datacenter.Player.SummonedCreatures >= _loc16_ && !_loc9_.hasInvocationConditionnedEffect)
         {
            return {can:false,type:"CANT_SUMMON_MORE_CREATURE",params:[_loc16_]};
         }
      }
      _loc11_ = this["\x1c\x01\x04"].length;
      while((_loc11_ = _loc11_ - 1) >= 0)
      {
         _loc5_ = this["\x1c\x01\x04"][_loc11_];
         _loc6_ = _loc5_.spell;
         if(_loc6_.ID == _loc2_)
         {
            var _loc7_ = _loc6_["\x18\x13\x05"];
            if(this["\x1e\x05\x16"][_loc2_] >= _loc7_)
            {
               return {can:false,type:"CANT_LAUNCH_MORE",params:[_loc7_]};
            }
         }
      }
      if(!this.api.datacenter.Player["\x18\x05\t"](_loc9_["\x16\x04\x03"]))
      {
         return {can:false,type:"NOT_ENOUGH_AP"};
      }
      return {can:true};
   }
   function §\x16\x19\x1a§(§\x18\x18\x15§, §\x1a\x02\x06§, §\x16\x17\x1a§, §\x1a\t\x16§, bSkipRangeCheck)
   {
      var _loc7_ = Number(this["\x1d\x06\b"].data.cellNum);
      var _loc8_ = Number(_loc4_.mc.num);
      if(_loc7_ == _loc8_ && _loc3_["\x1a\t\x14"] != 0)
      {
         return false;
      }
      if(!this.api.datacenter.Game["\x18\r\x15"])
      {
         return false;
      }
      if(bSkipRangeCheck || ank.battlefieldutils.["\x1a\x04\b"]["\x16\x1a\x18"](_loc2_,_loc7_,_loc8_,_loc3_["\x18\x15\x06"],_loc3_["\x1a\t\x14"],_loc3_["\x1a\t\x13"],_loc5_))
      {
         if(_loc3_["\x17\x12\x11"])
         {
            if(_loc4_.movement > 1 && _loc4_["\x1b\x07\r"] != undefined)
            {
               return false;
            }
            if(_loc4_.movement <= 1)
            {
               return false;
            }
         }
         if(_loc3_["\x18\x15\x05"])
         {
            if(ank.battlefieldutils.["\x1a\x04\b"]["\x16\x1a\x1d"](_loc2_,_loc7_,_loc8_))
            {
               return this["\x16\x19\x19"](_loc3_.ID,_loc4_["\x1b\x07\r"]);
            }
            return false;
         }
         return _loc4_.movement != 0 && this["\x16\x19\x19"](_loc3_.ID,_loc4_["\x1b\x07\r"]);
      }
      return false;
   }
   function getSpellLaunched(§\x19\x0e\x17§)
   {
      var _loc3_ = 0;
      while(_loc3_ < this["\x1c\x01\x05"].length)
      {
         if(this["\x1c\x01\x05"][_loc3_].spell.ID == _loc2_)
         {
            return this["\x1c\x01\x05"][_loc3_];
         }
         _loc3_ = _loc3_ + 1;
      }
      return undefined;
   }
   function hasSpellLaunched(§\x19\x0e\x17§)
   {
      return this.getSpellLaunched(_loc2_) != undefined;
   }
}
