class dofus.§\x17\x04\x19§.Alignment implements com.ankamagames.§\x18\f\x03§.§\x18\b\x07§
{
   var §\x17\x0f\x05§ = false;
   function Alignment(§\x19\b\x14§, §\x19\x10\x10§)
   {
      this.api = _global.api;
      this.initialize(_loc2_,_loc3_);
   }
   function §\x1e\x1c\b§()
   {
      return this["\x1d\x17\x03"];
   }
   function §\x14\x1b§(§\x19\b\x14§)
   {
      this["\x1d\x17\x03"] = !(_global.isNaN(_loc2_) || _loc2_ == undefined) ? _loc2_ : 0;
      return this["\x1e\x1c\b"]();
   }
   function §\x04\x1b§()
   {
      if(this["\x1d\x17\x03"] == -1)
      {
         return "";
      }
      return this.api.lang["\x17\x13\x19"](this["\x1d\x17\x03"]).n;
   }
   function §\f\x1c§()
   {
      return this["\x1e\x01\x03"];
   }
   function §\x04§(§\x19\x10\x10§)
   {
      this["\x1e\x01\x03"] = !(_global.isNaN(_loc2_) || _loc2_ == undefined) ? _loc2_ : 0;
      return this["\f\x1c"]();
   }
   function §\x1e\x1a\x18§()
   {
      if(this["\x1e\x01\x03"] <= 20)
      {
         return 1;
      }
      if(this["\x1e\x01\x03"] <= 40)
      {
         return 2;
      }
      if(this["\x1e\x01\x03"] <= 60)
      {
         return 3;
      }
      if(this["\x1e\x01\x03"] <= 80)
      {
         return 4;
      }
      return 5;
   }
   function §\x1e\x1c\x03§()
   {
      return dofus.Constants["\x16\x02\x1d"] + this["\x1d\x17\x03"] + ".swf";
   }
   function initialize(§\x19\b\x14§, §\x19\x10\x10§)
   {
      this["\x1d\x17\x03"] = !(_global.isNaN(_loc2_) || _loc2_ == undefined) ? _loc2_ : 0;
      this["\x1e\x01\x03"] = !(_global.isNaN(_loc3_) || _loc3_ == undefined) ? _loc3_ : 0;
   }
   function clone()
   {
      return new dofus.datacenter.Alignment(this["\x1d\x17\x03"],this["\x1e\x01\x03"]);
   }
   function §\x16\x1e\x01§(§\x19\x11\x13§)
   {
      var _loc3_ = dofus.datacenter.Alignment(_loc2_);
      if(_loc3_.index == this["\x1d\x17\x03"])
      {
         return 0;
      }
      return -1;
   }
}
