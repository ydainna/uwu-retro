class ank.utils.§\x1b\x10\x05§ extends Object
{
   static var §\x1d\x1e\x0e§ = 0;
   static var §\x1e\x03\x17§ = new Object();
   static var §\x1e\x0e\x1d§ = new ank.utils.Timer();
   function §\x1b\x10\x05§()
   {
      super();
   }
   static function §\x1a\x1a\x17§(§\x19\x01\x1c§, §\x1b\x02\x17§, §\x18\x1c\x18§, §\x17\x0f\x13§, §\x19\b\x17§, §\x16\x03\x1d§, §\x16\x11\x07§)
   {
      ank.utils.Timer.garbageCollector();
      var _loc9_ = ank.utils.Timer["\x17\x1c\x15"]();
      var _loc10_ = _global.setInterval(ank.utils.Timer.getInstance(),"onTimer",_loc6_,_loc9_,_loc2_,_loc3_,_loc4_,_loc5_,_loc7_);
      _loc2_.__ANKTIMERID__ = _loc10_;
      _loc2_.__ANKTIMERREPEAT__ = _loc8_;
      if(ank.utils.Timer["\x1e\x03\x17"][_loc3_] == undefined)
      {
         ank.utils.Timer["\x1e\x03\x17"][_loc3_] = new Object();
      }
      ank.utils.Timer["\x1e\x03\x17"][_loc3_][_loc9_] = new Array(_loc2_,_loc10_,_loc3_);
   }
   static function clear(§\x1b\x02\x17§)
   {
      if(_loc2_ != undefined)
      {
         var _loc3_ = ank.utils.Timer["\x1e\x03\x17"][_loc2_];
         for(var k in _loc3_)
         {
            ank.utils.Timer.removeTimer(_loc3_[k][0],_loc2_,_loc3_[k][1]);
         }
      }
      else
      {
         for(var k in ank.utils.Timer["\x1e\x03\x17"])
         {
            var _loc4_ = ank.utils.Timer["\x1e\x03\x17"][k];
            for(var kk in _loc4_)
            {
               ank.utils.Timer.removeTimer(_loc4_[kk][0],_loc4_[kk][2],_loc4_[kk][1]);
            }
         }
      }
      ank.utils.Timer.garbageCollector();
   }
   static function §\x16\x1b\x11§()
   {
      ank.utils.Timer.garbageCollector();
   }
   static function §\x1a\r\x03§(§\x19\x01\x1c§, §\x1b\x02\x17§, §\x19\x0f\x1b§)
   {
      if(_loc4_ == undefined)
      {
         if(_loc2_ == undefined)
         {
            return undefined;
         }
         if(_loc2_.__ANKTIMERID__ == undefined)
         {
            return undefined;
         }
         var _loc5_ = _loc2_.__ANKTIMERID__;
      }
      else
      {
         _loc5_ = ank.utils.Timer["\x1e\x03\x17"][_loc3_][_loc4_][1];
      }
      _global.clearInterval(_loc5_);
      delete _loc2_.__ANKTIMERID__;
      delete ank.utils.Timer["\x1e\x03\x17"][_loc3_][_loc4_];
   }
   static function getInstance()
   {
      return ank.utils.Timer["\x1e\x0e\x1d"];
   }
   static function garbageCollector()
   {
      for(var k in ank.utils.Timer["\x1e\x03\x17"])
      {
         var _loc2_ = ank.utils.Timer["\x1e\x03\x17"][k];
         for(var kk in _loc2_)
         {
            var _loc3_ = _loc2_[kk];
            if(_loc3_[0] == undefined || (typeof _loc3_[0] == "movieclip" && _loc3_[0]._name == undefined || _loc3_[0].__ANKTIMERID__ != _loc3_[1]))
            {
               _global.clearInterval(_loc3_[1]);
               delete _loc2_[kk];
            }
         }
      }
   }
   static function §\x18\x01\x16§()
   {
      var _loc2_ = 0;
      for(var k in ank.utils.Timer["\x1e\x03\x17"])
      {
         var _loc3_ = ank.utils.Timer["\x1e\x03\x17"][k];
         for(var kk in _loc3_)
         {
            _loc2_ = _loc2_ + 1;
         }
      }
      return _loc2_;
   }
   static function §\x17\x1c\x15§()
   {
      return ank.utils.Timer["\x1d\x1e\x0e"]++;
   }
   function onTimer(§\x19\x0f\x1b§, §\x19\x01\x1c§, §\x1b\x02\x17§, §\x18\x1c\x18§, §\x17\x0f\x13§, §\x16\x03\x1d§)
   {
      if(_loc3_ == undefined)
      {
         ank.utils.Timer.removeTimer(undefined,_loc4_,_loc2_);
         return undefined;
      }
      if(_loc3_.__ANKTIMERID__ == undefined)
      {
         ank.utils.Timer.removeTimer(undefined,_loc4_,_loc2_);
         return undefined;
      }
      if(!_loc3_.__ANKTIMERREPEAT__)
      {
         ank.utils.Timer.removeTimer(_loc3_,_loc4_,_loc2_);
         delete _loc3_.__ANKTIMERID__;
      }
      _loc6_.apply(_loc5_,_loc7_);
      ank.utils.Timer.garbageCollector();
   }
}
