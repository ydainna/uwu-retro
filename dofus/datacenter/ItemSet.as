class dofus.§\x17\x04\x19§.ItemSet extends Object
{
   function ItemSet(§\x19\b\x0b§, §\x1a\x12\x0f§, §\x16\x02\x05§)
   {
      super();
      this.initialize(_loc3_,_loc4_,_loc5_);
   }
   function §\x1e\x1c\x05§()
   {
      return this["\x1d\x17\x01"];
   }
   function §\x04\x1b§()
   {
      var _loc2_ = this.api.lang["\x17\x19\x17"](this["\x1d\x17\x01"]).n;
      if(dofus.Constants.DEBUG)
      {
         _loc2_ += " (" + this.id + ")";
      }
      return _loc2_;
   }
   function §\x1e\x18\r§()
   {
      return this.api.lang["\x17\x19\x17"](this["\x1d\x17\x01"]).d;
   }
   function §\x01\b§()
   {
      return this["\x1b\x1d\n"].length;
   }
   function §\x01\x0b§()
   {
      return this["\x1b\x1d\n"];
   }
   function §\x1e\x19\n§()
   {
      return dofus.datacenter.["\x18\x10\x15"]["\x17\x19\x11"](this["\x1b\x1c\x14"],undefined,true,false);
   }
   function initialize(§\x19\b\x0b§, §\x1a\x12\x0f§, §\x16\x02\x05§)
   {
      if(_loc3_ == undefined)
      {
         _loc3_ = "";
      }
      if(_loc4_ == undefined)
      {
         _loc4_ = [];
      }
      this.api = _global.api;
      this["\x1d\x17\x01"] = _loc2_;
      this["\x1a\x16\x06"](_loc3_);
      this["\x1a\x17\f"](_loc4_);
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
         _loc5_[1] = _loc5_[1] != "0" ? _global.parseInt(_loc5_[1],16) : undefined;
         _loc5_[2] = _loc5_[2] != "0" ? _global.parseInt(_loc5_[2],16) : undefined;
         _loc5_[3] = _loc5_[3] != "0" ? _global.parseInt(_loc5_[3],16) : undefined;
         this["\x1b\x1c\x14"].push(_loc5_);
         _loc4_ = _loc4_ + 1;
      }
   }
   function §\x1a\x17\f§(§\x16\x02\x05§)
   {
      var _loc3_ = this.api.lang["\x17\x19\x17"](this["\x1d\x17\x01"]).i;
      this["\x1b\x1d\n"] = new Array();
      var _loc4_ = new Object();
      for(var k in _loc2_)
      {
         _loc4_[_loc2_[k]] = true;
      }
      var _loc5_ = 0;
      while(_loc5_ < _loc3_.length)
      {
         var _loc6_ = Number(_loc3_[_loc5_]);
         if(!_global.isNaN(_loc6_))
         {
            var _loc7_ = new dofus.datacenter.["\x18\x10\x15"](0,_loc6_,1);
            var _loc8_ = _loc4_[_loc6_] == true;
            this["\x1b\x1d\n"].push({isEquiped:_loc8_,item:_loc7_});
         }
         _loc5_ = _loc5_ + 1;
      }
   }
}
