class dofus.§\x18\x18\x0b§.§\x19\b\x11§
{
   static var §\x1b\t\x1a§ = [undefined,dofus.Constants["\x19\b\x12"]];
   static var §\x1e\f\x10§ = null;
   function §\x19\b\x11§(§\x19\x11\x11§)
   {
      dofus["\x18\x18\x0b"]["\x19\b\x11"]["\x1e\f\x10"] = this;
      this["\x1e\x02\b"] = _loc2_;
   }
   function §\x0b\x1a§()
   {
      var _loc2_ = this["\x17\x16\x06"]();
      if(new ank.utils.ExtendedString(_loc2_[1])["\x15\x1d\x18"]("0",2) == "undefined")
      {
         return "";
      }
      return new ank.utils.ExtendedString(_loc2_[0])["\x15\x1d\x18"]("0",2) + ":" + new ank.utils.ExtendedString(_loc2_[1])["\x15\x1d\x18"]("0",2);
   }
   function §\x1e\x18\x05§()
   {
      return this["\x17\x15\x1c"]();
   }
   function initialize(§\x1b\x13\x02§, §\x16\x03\x10§, §\x19\x11\x07§, §\x16\b\b§)
   {
      this["\x1b\x1e\x1a"] = _loc2_;
      this["\x1b\x1e\x01"] = _loc3_;
      this["\x1e\x02\x02"] = _loc4_;
      this["\x1d\b\x12"] = _loc5_;
   }
   function §\x1a\x19\t§(§\x19\x0f\x17§, bUseDayNightSystem, currentMap)
   {
      this["\x1c\r\x01"] = new ank.utils.["\x17\x04\t"](_loc2_,this["\x1b\x1e\x01"],this["\x1e\x02\x02"]);
      if(bUseDayNightSystem && (currentMap && currentMap.bOutdoor))
      {
         this.clear();
         this.setState();
      }
      else
      {
         this["\x19\x0b\x02"]();
      }
   }
   function §\x1a\x19\b§(§\x19\x11\x06§, §\x19\n\x15§, §\x19\x05\x16§)
   {
      this["\x1e\x02\x01"] = _loc2_;
      this["\x1d\x1a\x06"] = _loc3_;
      this["\x1d\x15\x0b"] = _loc4_;
   }
   function clear()
   {
      _global.clearInterval(this["\x1d\x17\t"]);
   }
   function §\x19\x0b\x02§()
   {
      this.clear();
      this["\x1d\b\x12"]["\x1a\x15\x11"]();
   }
   function §\x17\x16\x06§()
   {
      return this["\x1c\r\x01"]["\x17\x16\x06"]();
   }
   function §\x17\x15\x1c§()
   {
      var _loc2_ = this["\x1c\r\x01"].getCurrentDate();
      if(9722 - this["\x1e\x02\b"].datacenter.Basics.lastDateUpdate > 60000)
      {
         this["\x1e\x02\b"].networkBasics.getDate();
      }
      var _loc3_ = this["\x1e\x02\x01"] == undefined ? _loc2_[2] + " " + _loc2_[1] + " " + _loc2_[0] : this["\x1d\x15\x0b"] + " " + this["\x1b\x1e\x01"][11 - this["\x1d\x1a\x06"]][1] + " " + this["\x1e\x02\x01"];
      return _loc3_;
   }
   function §\x17\x16\x14§(§\x19\x0f\x17§)
   {
      return this["\x1c\r\x01"]["\x17\x16\x14"](_loc2_);
   }
   static function §\x17\x19\t§()
   {
      return dofus["\x18\x18\x0b"]["\x19\b\x11"]["\x1e\f\x10"];
   }
   function setState()
   {
      var _loc2_ = this["\x1c\r\x01"]["\x17\x16\x02"]();
      var _loc3_ = 0;
      while(_loc3_ < this["\x1b\x1e\x1a"].length)
      {
         var _loc4_ = this["\x1b\x1e\x1a"][_loc3_][1];
         if(_loc2_ < _loc4_)
         {
            var _loc5_ = this["\x1b\x1e\x1a"][_loc3_][2];
            this["\x16\x04\x13"](_loc5_,_loc4_ - _loc2_,_loc4_);
            return undefined;
         }
         _loc3_ = _loc3_ + 1;
      }
      ank.utils.Logger.err("[setState] ... heu la date " + _loc2_ + " n\'est pas dans la séquence");
   }
   function §\x16\x04\x13§(§\x1a\x02\f§, §\x19\x05\x1a§, §\x19\x06\x14§)
   {
      this["\x1d\b\x12"]["\x1a\x15\x11"](_loc2_);
      this.clear();
      this["\x1d\x17\t"] = _global.setInterval(this,"setState",_loc3_,_loc4_);
   }
}
