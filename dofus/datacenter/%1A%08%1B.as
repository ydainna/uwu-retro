class dofus.§\x17\x04\x19§.Question extends Object
{
   function Question(nQuestionID, §\x16\x05\x07§, §\x16\x04\x19§)
   {
      super();
      this.initialize(_loc3_,_loc4_,_loc5_);
   }
   function §\x1e\x1c\x05§()
   {
      return this["\x1d\x1b\x13"];
   }
   function §\x01\x15§()
   {
      return this.api.lang["\x17\x0f\x12"](this["\x1e\x0b\x1c"]);
   }
   function §\x07\x18§()
   {
      return this["\x1c\x10\n"];
   }
   function initialize(nQuestionID, §\x16\x05\x07§, §\x16\x04\x19§)
   {
      this.api = _global.api;
      this["\x1d\x1b\x13"] = _loc2_;
      var _loc5_ = ank.utils.PatternDecoder.getDescription(this.api.lang["\x17\x16\x12"](_loc2_),_loc4_);
      if(dofus.Constants.DEBUG)
      {
         _loc5_ = _loc5_ + " (" + _loc2_ + ")";
      }
      this["\x1e\x0b\x1c"] = _loc5_;
      this["\x1c\x10\n"] = new ank.utils.ExtendedArray();
      var _loc6_ = 0;
      while(_loc6_ < _loc3_.length)
      {
         var _loc7_ = Number(_loc3_[_loc6_]);
         this["\x1c\x10\n"].push({label:this.api.lang["\x17\x0f\x12"](this.api.lang["\x17\x16\x13"](_loc7_)),id:_loc7_});
         _loc6_ = _loc6_ + 1;
      }
   }
}
