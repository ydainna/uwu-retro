class dofus.datacenter.Craft extends Object
{
   function Craft(§\x19\b\x0b§, §\x1a\x02\x04§)
   {
      super();
      this.initialize(_loc3_,_loc4_);
   }
   function §\t\t§()
   {
      return this["\x1e\x05\r"];
   }
   function §\x1e\x17\x01§()
   {
      return this["\x1e\x02\x1a"];
   }
   function §\x01\x0b§()
   {
      return this["\x1b\x1d\n"];
   }
   function §\x01\f§()
   {
      return this["\x1b\x1d\n"].length;
   }
   function §\x1e\x17\x02§()
   {
      return this["\x17\x01\x19"].level;
   }
   function §\x1e\x18\x15§()
   {
      return this["\x1d\x15\x10"];
   }
   function initialize(§\x19\b\x0b§, §\x1a\x02\x04§)
   {
      this.api = _global.api;
      this["\x1e\x05\r"] = _loc3_;
      this["\x1e\x02\x1a"] = new dofus.datacenter.Item(0,_loc2_,1);
      this.name = this["\x1e\x02\x1a"].name;
      var _loc4_ = this.api.lang["\x17\x15\x19"](_loc2_);
      this["\x1b\x1d\n"] = new Array();
      if(!_global.isNaN(_loc4_.length))
      {
         var _loc5_ = 0;
         while(_loc5_ < _loc4_.length)
         {
            var _loc6_ = new dofus.datacenter.Item(0,_loc4_[_loc5_][0],_loc4_[_loc5_][1]);
            this["\x1b\x1d\n"].push(_loc6_);
            _loc5_ = _loc5_ + 1;
         }
      }
      if(this["\x1b\x1d\n"].length < Number(this["\x1e\x05\r"]["\x1a\x03\r"]) - 4)
      {
         this["\x1d\x15\x10"] = 1;
      }
      else if(this["\x1b\x1d\n"].length < Number(this["\x1e\x05\r"]["\x1a\x03\r"]) - 2)
      {
         this["\x1d\x15\x10"] = 2;
      }
      else
      {
         this["\x1d\x15\x10"] = 3;
      }
   }
}
