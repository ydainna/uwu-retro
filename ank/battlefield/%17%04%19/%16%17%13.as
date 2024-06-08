class ank.battlefield.§\x17\x04\x19§.§\x16\x17\x13§ extends Object
{
   var §\x15\x1c\x1a§ = true;
   var §\x18\x15\x05§ = true;
   var §\x18\x13\x0b§ = 0;
   var §\x18\x03\x18§ = 7;
   var §\x18\x1e\x1d§ = 4;
   var §\x18\x13\n§ = 0;
   var §\x18\x03\x1a§ = 1;
   var §\x18\x13\t§ = false;
   var §\x18\x13\x0e§ = 0;
   var §\x18\x13\x0f§ = 0;
   var §\x18\x13\r§ = false;
   var §\x18\x13\x10§ = false;
   var §\x18\x13\x11§ = false;
   var §\x18\x13\x12§ = 0;
   function §\x16\x17\x13§()
   {
      super();
   }
   function §\b\x05§()
   {
      return this.y - (7 - this["\x18\x03\x18"]) * ank.battlefield.Constants["\x18\x14\x0e"];
   }
   function §\x1e\x1e\x1d§()
   {
      var _loc2_ = false;
      var _loc3_ = 0;
      while(_loc3_ < dofus.Constants["\x18\x19\x02"].length)
      {
         var _loc4_ = dofus.Constants["\x18\x19\x02"][_loc3_];
         if(this["\x18\x13\x0e"] == _loc4_ || this["\x18\x13\x12"] == _loc4_)
         {
            _loc2_ = true;
            break;
         }
         _loc3_ = _loc3_ + 1;
      }
      return _loc2_;
   }
   function §\x01\x02§()
   {
      var _loc2_ = false;
      var _loc3_ = 0;
      while(_loc3_ < dofus.Constants["\x18\x19\x03"].length)
      {
         var _loc4_ = dofus.Constants["\x18\x19\x03"][_loc3_];
         if(this["\x18\x13\x0e"] == _loc4_ || this["\x18\x13\x12"] == _loc4_)
         {
            _loc2_ = true;
            break;
         }
         _loc3_ = _loc3_ + 1;
      }
      return _loc2_;
   }
   function get isTargetable()
   {
      return this.movement != 0 && (this.movement != 1 && this["\x15\x1c\x1a"]);
   }
   function §\x18\x10\x01§(§\x18\x18\r§)
   {
      var _loc3_ = false;
      if(this["\x18\x13\n"] == 0 && (this["\x18\x03\x1a"] == 1 && (this["\x18\x13\x12"] == 0 || (this["\x18\x13\x12"] == dofus.Constants.getTacticLayerObject2(_loc2_["\x1b\x0b\x17"]) || (this["\x18\x13\x12"] == 25 || this["\x18\x13\x12"] == 1030)))))
      {
         if(!this["\x18\x15\x05"])
         {
            if(this["\x18\x13\x0e"] == dofus.Constants.getTacticGfx(_loc2_["\x1b\x0b\x17"],0))
            {
               _loc3_ = true;
            }
         }
         else if(this.movement == 0 || this.movement == 1)
         {
            if(this["\x18\x13\x0e"] == 10002)
            {
               _loc3_ = true;
            }
         }
         else if(this["\x18\x13\x0e"] == dofus.Constants.getTacticGfx(_loc2_["\x1b\x0b\x17"],1) || this["\x18\x13\x0e"] == dofus.Constants.getTacticGfx(_loc2_["\x1b\x0b\x17"],3))
         {
            _loc3_ = true;
         }
      }
      return _loc3_;
   }
   function §\x15\x1e\x14§(sID)
   {
      if(this["\x16\x03\b"] == undefined)
      {
         this["\x16\x03\b"] = new Object();
      }
      if(sID == undefined)
      {
         return undefined;
      }
      if(this["\x16\x03\b"][sID])
      {
         return undefined;
      }
      this["\x16\x03\b"][sID] = true;
      var _loc3_ = _global.api;
      var _loc4_ = _loc3_.datacenter.Basics.interactionsManager_path;
      if(_loc4_ != undefined)
      {
         var _loc5_ = _loc3_.gfx["\x18\x18\x15"]["\x17\x14\x1d"](_loc4_[_loc4_.length - 1].num);
         if(_loc5_ != undefined && _loc5_.mc.onRollOver)
         {
            _loc5_.mc.onRollOver();
         }
      }
   }
   function §\x1a\f\x1c§(sID)
   {
      this["\x16\x03\b"][sID] = undefined;
      delete this["\x16\x03\b"][sID];
   }
   function §\x1a\x0b\x18§()
   {
      for(var k in this["\x16\x03\b"])
      {
         this["\x16\x03\b"][k] = undefined;
         delete this["\x16\x03\b"][k];
      }
      delete this["\x16\x03\b"];
   }
   function §\n\x02§()
   {
      var _loc2_ = 0;
      for(var k in this["\x16\x03\b"])
      {
         _loc2_ = _loc2_ + 1;
      }
      return _loc2_;
   }
   function §\n\x03§()
   {
      if(this["\x16\x03\b"] == undefined)
      {
         return undefined;
      }
      for(var k in this["\x16\x03\b"])
      {
         if(this["\x16\x03\b"][k])
         {
            return String(k);
         }
      }
      return undefined;
   }
   function §\x1e\x14\x1d§()
   {
      if(this["\x16\x03\b"] == undefined)
      {
         return false;
      }
      for(var k in this["\x16\x03\b"])
      {
         if(this["\x16\x03\b"][k]["\x18\x05\x04"]())
         {
            return true;
         }
      }
      return false;
   }
   function §\x1b\x11\x1a§(§\x18\x18\x15§, §\x18\x18\r§)
   {
      var _loc4_ = this["\x18\x10\x06"];
      if(this["\x19\f\x05"] == 0)
      {
         this["\x19\f\x05"] = 1;
      }
      this["\x18\x13\n"] = 0;
      this["\x18\x03\x1a"] = 1;
      this["\x18\x13\x0f"] = 0;
      if(!this["\x18\x15\x05"])
      {
         this["\x18\x13\x0e"] = dofus.Constants.getTacticGfx(_loc3_["\x1b\x0b\x17"],0);
      }
      else if(this.movement == 0 || this.movement == 1)
      {
         this["\x18\x13\x0e"] = 10002;
      }
      else
      {
         var _loc5_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](_loc2_,this.num);
         var _loc6_ = Math.abs(_loc5_.x) % 2 == Math.abs(_loc5_.y) % 2;
         this["\x18\x13\x0e"] = !_loc6_ ? dofus.Constants.getTacticGfx(_loc3_["\x1b\x0b\x17"],3) : dofus.Constants.getTacticGfx(_loc3_["\x1b\x0b\x17"],1);
      }
      if(this["\x18\x13\x12"] != 25)
      {
         if(!this["\x18\x15\x05"])
         {
            this["\x18\x13\x12"] = dofus.Constants.getTacticLayerObject2(_loc3_["\x1b\x0b\x17"]);
         }
         else if(_loc4_)
         {
            this["\x18\x13\x12"] = 1030;
         }
         else
         {
            this["\x18\x13\x12"] = 0;
         }
      }
   }
}
