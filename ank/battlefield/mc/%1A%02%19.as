class ank.battlefield.mc.§\x1a\x02\x19§ extends MovieClip
{
   static var §\x1b\x11\x02§ = -50;
   static var §\x16\x10\x0f§ = 10;
   static var §\x18\x1d\x0f§ = 15;
   function §\x1a\x02\x19§(§\x18\x1c\x03§, §\x19\x11\x0b§, mcBattlefield)
   {
      super();
      this["\x1d\b\x12"] = mcBattlefield;
      this["\x1d\x10\x0e"] = _loc3_;
      this["\x1e\x02\x05"] = _loc4_ != undefined ? _loc4_ : 100;
      this.initialize();
   }
   function §\f\x06§()
   {
      return ank.battlefield.mc["\x1a\x02\x19"]["\x1b\x11\x02"] * this["\x1e\x02\x05"] / 100;
   }
   function §\x1e\x13\x05§()
   {
      return ank.battlefield.mc["\x1a\x02\x19"]["\x16\x10\x0f"] * this["\x1e\x02\x05"] / 100;
   }
   function §\x04\x05§()
   {
      return ank.battlefield.mc["\x1a\x02\x19"]["\x18\x1d\x0f"] * this["\x1e\x02\x05"] / 100;
   }
   function initialize()
   {
      this["\x1d\x14\x14"] = 0;
      this.clear();
   }
   function clear()
   {
      this["\x1e\x04\x07"] = new Object();
      this["\x16\x1c\x11"]();
   }
   function §\x16\x1c\x11§()
   {
      this.createEmptyMovieClip("\x1d\f\x0f",10);
   }
   function §\x1a\x18\x18§(§\x19\b\x1b§, §\x19\n\x0b§)
   {
      var _loc4_ = {x:this._parent._parent._x,y:this._parent._parent._y};
      this._parent._parent.localToGlobal(_loc4_);
      this._x = this["\x1d\x10\x0e"]._x;
      this._y = this["\x1d\x10\x0e"]._y;
      var _loc5_ = 100 / this["\x1e\x02\x05"];
      var _loc6_ = this.top;
      var _loc7_ = this["\x18\x1d\x0e"];
      _loc2_ *= _loc5_;
      if(this["\x1d\x10\x0e"]._y < 0 - _loc6_ + _loc2_ - _loc4_.y + _loc7_)
      {
         this["\x1d\f\x0f"]._y += this.bottom + _loc2_;
         var _loc8_ = 0;
         for(var k in this["\x1e\x04\x07"])
         {
            var _loc9_ = this["\x1d\f\x0f"]["item" + _loc8_];
            _loc9_["\x1a\x0e\x0b"]();
            _loc8_ = _loc8_ + 1;
         }
      }
      else
      {
         var _loc10_ = Math.abs(_loc6_);
         if(this["\x1d\x10\x0e"]._height > _loc10_ + _loc7_)
         {
            this["\x1d\f\x0f"]._y += _loc6_ - _loc7_;
         }
         else if(this["\x1d\x10\x0e"]._height < _loc10_ - _loc7_)
         {
            this["\x1d\f\x0f"]._y += _loc6_ + _loc7_;
         }
         else
         {
            this["\x1d\f\x0f"]._y += _loc6_;
         }
      }
      var _loc11_ = _loc3_ * _loc5_ / 2;
      if(this["\x1d\x10\x0e"]._x < _loc11_ - _loc4_.x)
      {
         this._x = _loc11_;
      }
      if(this["\x1d\x10\x0e"]._x > this["\x1d\b\x12"]["\x1a\x11\t"] * _loc5_ - _loc11_ + _loc4_.x)
      {
         this._x = this["\x1d\b\x12"]["\x1a\x11\t"] * _loc5_ - _loc11_;
      }
   }
   function §\x15\x1d\x12§(§\x1b\x02\x18§, §\x16\x1b\x0f§, §\x16\x05\n§, §\x17\x06\x12§)
   {
      var _loc6_ = new Object();
      _loc6_.id = this["\x1d\x14\x14"];
      _loc6_["\x16\x1b\x0f"] = _loc3_;
      _loc6_.args = _loc4_;
      if(_loc5_ != undefined)
      {
         ank.utils.Timer.setTimer(_loc6_,"battlefield",this,this["\x1a\f\t"],_loc5_,[this["\x1d\x14\x14"]]);
      }
      this["\x1e\x04\x07"][_loc2_] = _loc6_;
      this["\x1d\x14\x14"]++;
      this.aks_a_logs();
   }
   function remove(§\x1b\x18\n§)
   {
      this.swapDepths(1);
      this.removeMovieClip();
   }
   function §\x1a\n\x15§()
   {
      this["\x16\x1c\x11"]();
      var _loc2_ = 0;
      var _loc3_ = 0;
      var _loc4_ = 0;
      for(var k in this["\x1e\x04\x07"])
      {
         var _loc5_ = this["\x1e\x04\x07"][k];
         var _loc6_ = this["\x1d\f\x0f"]["\x16\x06\x16"](_loc5_["\x16\x1b\x0f"],"item" + _loc2_,_loc2_,_loc5_.args);
         _loc3_ -= _loc6_.height;
         _loc4_ = Math.max(_loc4_,_loc6_.width);
         _loc6_._y = _loc3_;
         _loc2_ = _loc2_ + 1;
      }
      this["\x1a\x18\x18"](Math.abs(_loc3_),_loc4_);
   }
   function §\x1a\f\r§(§\x18\x13\f§)
   {
      delete this["\x1e\x04\x07"][_loc2_];
      this.aks_a_logs();
   }
   function §\x1a\f\t§(§\x19\b\x18§)
   {
      for(var _loc3_ in this["\x1e\x04\x07"])
      {
         if(this["\x1e\x04\x07"][_loc3_].id == _loc2_)
         {
            delete this["\x1e\x04\x07"][_loc3_];
            this.aks_a_logs();
            break;
         }
      }
   }
}
