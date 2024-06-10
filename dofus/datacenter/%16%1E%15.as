class dofus.datacenter.§\x16\x1e\x15§ extends dofus.utils.ApiElement
{
   function §\x16\x1e\x15§(§\x18\b\f§, alignment, fighting, prism, attackable)
   {
      super();
      this["\x1d\x1d\x11"] = _loc3_;
      this["\x1d\x12\x17"] = alignment;
      this["\x1c\x04\x01"] = fighting;
      this["\x1d\x1b\f"] = prism;
      this["\x1c\x02\x01"] = attackable;
      this.areaName = _global.api.lang["\x17\x1b\x06"](Number(_global.api.lang["\x17\x1b\x0f"](this["\x1d\x1d\x11"]).a)).n;
   }
   function §\x1e\x1c\x05§()
   {
      return this["\x1d\x1d\x11"];
   }
   function §\x1e\x12\b§()
   {
      return Number(_global.api.lang["\x17\x1b\x0f"](this["\x1d\x1d\x11"]).a);
   }
   function §\x1e\x11\x19§()
   {
      return this["\x1d\x12\x17"];
   }
   function §\x1e\x1a\b§()
   {
      return this["\x1c\x04\x01"];
   }
   function §\x06\x18§()
   {
      return this["\x1d\x1b\f"];
   }
   function §\x1e\x12\x0e§()
   {
      return this["\x1c\x02\x01"];
   }
   function §\x18\r\x01§()
   {
      if(!this["\x1c\x02\x01"])
      {
         return false;
      }
      if(this.alignment == this.api.datacenter.Player.alignment.index)
      {
         return false;
      }
      var _loc2_ = this["\x17\x1c\x11"]();
      var _loc3_ = this.api.datacenter.Conquest["\x1b\x19\x0f"];
      for(var s in _loc2_)
      {
         if(_loc3_["\x16\x04\x1d"].findFirstItem("id",_loc2_[s]).item.alignment == this.api.datacenter.Player.alignment.index)
         {
            while(§§pop() != null)
            {
            }
            return true;
         }
      }
      return false;
   }
   function §\x18\x10\x0f§()
   {
      if(!this["\x1c\x02\x01"])
      {
         return false;
      }
      if(this.alignment != this.api.datacenter.Player.alignment.index)
      {
         return false;
      }
      var _loc2_ = this["\x17\x1c\x11"]();
      var _loc3_ = this.api.datacenter.Conquest["\x1b\x19\x0f"];
      for(var s in _loc2_)
      {
         var _loc4_ = _loc3_["\x16\x04\x1d"].findFirstItem("id",_loc2_[s]).item.alignment;
         if(_loc4_ != this.api.datacenter.Player.alignment.index && _loc4_ > 0)
         {
            return true;
         }
      }
      return false;
   }
   function §\x17\x1c\x11§()
   {
      return this.api.lang["\x17\x1b\x0f"](this["\x1d\x1d\x11"]).v;
   }
   function toString()
   {
      return "N:" + this.areaName + "/A:" + this["\x16\x04\x1c"] + "/S:" + this.id;
   }
}
