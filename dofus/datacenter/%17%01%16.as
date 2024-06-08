class dofus.§\x17\x04\x19§.§\x17\x01\x16§ extends Object
{
   function §\x17\x01\x16§(sId, §\x1b\x03\x1d§)
   {
      super();
      this.api = _global.api;
      this.id = sId;
      this["\x1e\x0b\x06"] = _loc4_;
   }
   function §\x04\x1b§()
   {
      return this["\x1e\x0b\x06"];
   }
   function §\x19\f§(§\x1b\x03\x1d§)
   {
      this["\x1e\x0b\x06"] = _loc2_;
      return this["\x04\x1b"]();
   }
   function §\x01\x10§()
   {
      return this["\x1e\x03\x1d"];
   }
   function §\x16\x11§(§\x1b\x17\x16§)
   {
      this["\x1e\x03\x1d"] = _loc2_;
      return this["\x01\x10"]();
   }
   function §\x1e\x13\b§()
   {
      return this["\x1d\x13\x0e"];
   }
   function §\x0f\x17§(§\x19\x04\x05§)
   {
      this["\x1d\x13\x0e"] = _loc2_;
      return this["\x1e\x13\b"]();
   }
   function §\x1e\x1b\x03§()
   {
      var _loc2_ = this["\x1d\x13\x0e"] * 10 + this["\x1d\x1c\x1a"];
      return dofus.Constants["\x16\x1c\x1a"] + _loc2_ + ".swf";
   }
   function §\x1e\x1b\x02§()
   {
      return dofus.Constants["\x18\x04\x16"] + (this["\x1d\x13\x0e"] * 10 + this["\x1d\x1c\x1a"]) + ".swf";
   }
   function §\b\x1c§()
   {
      return this["\x1d\x1c\x1a"];
   }
   function §\x1c\x11§(§\x1b\x17\x16§)
   {
      this["\x1d\x1c\x1a"] = Number(_loc2_);
      return this["\b\x1c"]();
   }
   function §\x1e\x16\x04§()
   {
      return this["\x1d\x14\x02"];
   }
   function §\x10\x1a§(§\x1b\x17\x16§)
   {
      this["\x1d\x14\x02"] = Number(_loc2_);
      return this["\x1e\x16\x04"]();
   }
   function §\x1e\x16\x05§()
   {
      return this["\x1d\x14\x03"];
   }
   function §\x10\x1b§(§\x1b\x17\x16§)
   {
      this["\x1d\x14\x03"] = Number(_loc2_);
      return this["\x1e\x16\x05"]();
   }
   function §\x1e\x16\x06§()
   {
      return this["\x1d\x14\x04"];
   }
   function §\x10\x1c§(§\x1b\x17\x16§)
   {
      this["\x1d\x14\x04"] = Number(_loc2_);
      return this["\x1e\x16\x06"]();
   }
   function §\x1e\x11\r§()
   {
      return this["\x1b\x1b\x0f"];
   }
   function §\x0e\x07§(§\x1b\x17\x16§)
   {
      this["\x1b\x1b\x0f"] = _loc2_;
      return this["\x1e\x11\r"]();
   }
   function §\x17\x11§(§\x19\t\x15§)
   {
      this["\x1d\x19\x03"] = _loc2_;
      return this.mapId;
   }
   function §\n\x0f§()
   {
      if(this["\x1d\x19\x03"] == 0)
      {
         return undefined;
      }
      var _loc2_ = this.api.lang["\x17\x1b\x11"](this["\x1d\x19\x03"]);
      var _loc3_ = this.api.lang["\x17\x1b\x0f"](_loc2_.sa);
      var _loc4_ = this.api.lang["\x17\x1b\x06"](_loc3_.a);
      return !(_loc3_.n.charAt(0) == "/" && _loc3_.n.charAt(1) == "/") ? _loc4_.n + " (" + _loc3_.n + ")" : _loc4_.n;
   }
   function §\x1e\x16\x18§()
   {
      if(this["\x1d\x19\x03"] == 0)
      {
         return undefined;
      }
      var _loc2_ = this.api.lang["\x17\x1b\x11"](this["\x1d\x19\x03"]);
      return {x:_loc2_.x,y:_loc2_.y};
   }
}
