class §\x19\x02\x19§.§\x17\x0e\x06§.§\x17\x0e\x04§
{
   static var §\x1c\x10\x1b§ = undefined;
   function §\x17\x0e\x04§()
   {
   }
   static function §\x1e\x07\x07§(§\x1a\t\b§, §\x17\x0e\x03§, §\x18\x05\x02§)
   {
      if(_loc2_ != undefined)
      {
         var _loc5_ = _loc2_.length;
         var _loc6_ = 0;
         while(_loc6_ < _loc5_)
         {
            var _loc7_ = _loc2_[_loc6_];
            if(_loc7_ == _loc4_)
            {
               _loc2_.splice(_loc6_,1);
               return undefined;
            }
            _loc6_ = _loc6_ + 1;
         }
      }
   }
   static function initialize(§\x19\x11\x15§)
   {
      if(eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"]["\x1c\x10\x1b"] == undefined)
      {
         eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"]["\x1c\x10\x1b"] = new eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"]();
      }
      _loc2_.__proto__.addEventListener = eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"]["\x1c\x10\x1b"].addEventListener;
      _loc2_.__proto__.removeEventListener = eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"]["\x1c\x10\x1b"].removeEventListener;
      _loc2_.__proto__["\x17\x07\x19"] = eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"]["\x1c\x10\x1b"]["\x17\x07\x19"];
      _loc2_.__proto__["\x17\x07\x1d"] = eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"]["\x1c\x10\x1b"]["\x17\x07\x1d"];
   }
   function §\x17\x07\x1d§(§\x1a\t\n§, §\x17\x0e\x05§)
   {
      var _loc4_ = "__q_" + _loc3_.type;
      var _loc5_ = _loc2_[_loc4_];
      if(_loc5_ != undefined)
      {
         for(var _loc6_ in _loc5_)
         {
            var _loc7_ = _loc5_[_loc6_];
            var _loc8_ = typeof _loc7_;
            if(_loc8_ == "object" || _loc8_ == "movieclip")
            {
               if(_loc7_.handleEvent == undefined)
               {
                  _loc7_[_loc3_.type](_loc3_);
               }
               else
               {
                  _loc7_.handleEvent(_loc3_);
               }
            }
            else
            {
               _loc7_.apply(_loc2_,[_loc3_]);
            }
         }
      }
   }
   function §\x17\x07\x19§(§\x17\x0e\x05§)
   {
      if(_loc2_.target == undefined)
      {
         _loc2_.target = this;
      }
      this[_loc2_.type + "Handler"](_loc2_);
      this["\x17\x07\x1d"](this,_loc2_);
   }
   function addEventListener(§\x17\x0e\x03§, §\x18\x05\x02§)
   {
      var _loc4_ = "__q_" + _loc2_;
      if(this[_loc4_] == undefined)
      {
         this[_loc4_] = new Array();
      }
      _global.ASSetPropFlags(this,_loc4_,1);
      eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"]["\x1e\x07\x07"](this[_loc4_],_loc2_,_loc3_);
      this[_loc4_].push(_loc3_);
   }
   function §\x1a\f\x03§(§\x17\x0e\x03§, §\x18\x05\x02§)
   {
      var _loc4_ = "__q_" + _loc2_;
      eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"]["\x1e\x07\x07"](this[_loc4_],_loc2_,_loc3_);
   }
}
