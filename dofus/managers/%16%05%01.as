class dofus.§\x18\x18\x0b§.AreasManager extends dofus.utils.ApiElement
{
   static var §\x1e\f\x10§ = null;
   function AreasManager()
   {
      super();
      dofus.managers.AreasManager["\x1e\f\x10"] = this;
   }
   static function getInstance()
   {
      return dofus.managers.AreasManager["\x1e\f\x10"];
   }
   function initialize(oAPI)
   {
      super.initialize(oAPI);
      this["\x1e\x02\n"] = new Object();
      this["\x1e\x06\x01"] = new Object();
      var _loc4_ = this.api.lang["\x17\x14\x0b"]();
      for(var k in _loc4_)
      {
         var _loc5_ = _loc4_[k];
         var _loc6_ = this.api.lang["\x17\x1b\x0f"](_loc5_.sa).a;
         var _loc7_ = this.api.lang["\x17\x1b\x06"](_loc6_).sua;
         var _loc8_ = _loc7_ + "_" + _loc5_.x + "_" + _loc5_.y;
         if(this["\x1e\x02\n"][_loc8_] == undefined)
         {
            this["\x1e\x02\n"][_loc8_] = _loc6_;
            this["\x1e\x06\x01"][_loc8_] = _loc5_.sa;
         }
      }
   }
   function §\x17\x14\f§(§\x19\x10\x1a§, §\x19\x11\x05§, §\x19\x0f\x05§)
   {
      if(_loc4_ == undefined)
      {
         _loc4_ = 0;
      }
      return this["\x1e\x02\n"][_loc4_ + "_" + _loc2_ + "_" + _loc3_];
   }
   function §\x18\x01\x12§(§\x19\x10\x1a§, §\x19\x11\x05§, §\x19\x0f\x05§)
   {
      if(_loc4_ == undefined)
      {
         _loc4_ = 0;
      }
      return this["\x1e\x06\x01"][_loc4_ + "_" + _loc2_ + "_" + _loc3_];
   }
}
