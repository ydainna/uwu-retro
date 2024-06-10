class dofus.graphics.gapi.§\x17\x01\x06§.DeathCounter extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "DeathCounter";
   static var §\x18\x1a\x0e§ = 11;
   function DeathCounter()
   {
      super();
   }
   function §\x11\x1d§(§\x19\x05\x17§)
   {
      this["\x1d\x15\f"] = _loc2_;
      this.draw();
      return this.death;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.DeathCounter.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.draw});
   }
   function draw()
   {
      if(this["\x1d\x15\f"] == undefined || this["\x1d\x15\f"] == 0)
      {
         return undefined;
      }
      var _loc2_ = this["\x1d\x15\f"] <= dofus.graphics.gapi.controls.DeathCounter["\x18\x1a\x0e"] ? this["\x1d\x15\f"] : dofus.graphics.gapi.controls.DeathCounter["\x18\x1a\x0e"];
      var _loc3_ = Math.PI / _loc2_;
      var _loc4_ = (0 - _loc3_) / 2;
      var _loc5_ = this["\x1d\x0e\x12"]._width / 2;
      var _loc6_ = this["\x1d\x0e\x12"]._height;
      var _loc7_ = this["\x1d\x0e\x12"]._width / 2;
      var _loc8_ = this["\x1d\x0e\x12"]._height;
      var _loc9_ = this.createEmptyMovieClip("\x1d\x0b\x1d",100);
      _loc9_._x = this["\x1d\x0e\x12"]._x;
      _loc9_._y = this["\x1d\x0e\x12"]._y;
      var _loc10_ = 0;
      while(_loc10_ < _loc2_)
      {
         var _loc11_ = _loc4_ - _loc10_ * _loc3_;
         var _loc12_ = Math.cos(_loc11_) * _loc5_ + _loc7_;
         var _loc13_ = Math.sin(_loc11_) * _loc6_ + _loc8_;
         if(_loc10_ == 0 && this["\x1d\x15\f"] > dofus.graphics.gapi.controls.DeathCounter["\x18\x1a\x0e"])
         {
            var _loc14_ = "_mcDeathCounterHeadMore";
         }
         else
         {
            _loc14_ = "_mcDeathCounterHead";
         }
         _loc9_.attachMovie(_loc14_,"head" + _loc10_,_loc10_,{_x:_loc12_,_y:_loc13_,_rotation:_loc11_ * 180 / Math.PI});
         _loc10_ = _loc10_ + 1;
      }
   }
}
