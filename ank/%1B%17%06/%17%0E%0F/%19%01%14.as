class ank.utils.§\x17\x0e\x0f§.§\x19\x01\x14§ extends MovieClip
{
   function §\x19\x01\x14§()
   {
      super();
   }
   function §\x16\x06\x16§(§\x16\x1b\x0f§, §\x18\x0b\x02§, §\x17\x07\x04§, §\x16\x05\x0b§)
   {
      var _loc6_ = this.createEmptyMovieClip(_loc3_,_loc4_);
      _loc6_.__proto__ = _loc2_.prototype;
      _loc2_.apply(_loc6_,_loc5_);
      return _loc6_;
   }
   function §\x16\x03\x02§()
   {
      var _loc2_ = new Object({x:0,y:0});
      this.localToGlobal(_loc2_);
      _loc2_.x = Math.floor(_loc2_.x);
      _loc2_.y = Math.floor(_loc2_.y);
      this.globalToLocal(_loc2_);
      this._x -= _loc2_.x;
      this._y -= _loc2_.y;
   }
   function §\x1a\x05\x18§()
   {
      for(var a in this)
      {
         if(this[a].__proto__ == MovieClip.prototype)
         {
            this[a].gotoAndPlay(1);
         }
      }
   }
   function end(§\x1a\x14\x01§)
   {
      var _loc3_ = this["\x17\x17\x1a"]("_ACTION");
      if(_loc2_ == undefined)
      {
         _loc2_ = _loc3_.sequencer;
      }
      _loc2_.onActionEnd();
   }
   function §\x17\x17\x1a§(§\x1a\x07\x1b§)
   {
      var _loc3_ = 20;
      var _loc4_ = this;
      while(_loc3_ >= 0)
      {
         if(_loc4_[_loc2_] != undefined)
         {
            return _loc4_[_loc2_];
         }
         _loc4_ = _loc4_._parent;
         _loc3_ = _loc3_ - 1;
      }
   }
   function §\x17\x13\x14§(§\x1b\x18\n§)
   {
      return this["\x17\x17\x1a"]("_ACTION");
   }
   function §\x1a\x05\n§(§\x18\x1b\f§)
   {
      if(_loc2_ == undefined)
      {
         _loc2_ = this;
      }
      _loc2_.gotoAndPlay(1);
      for(var a in _loc2_)
      {
         if(_loc2_[a] instanceof MovieClip)
         {
            this["\x1a\x05\n"](_loc2_[a]);
         }
      }
   }
   function §\x1b\n\x1a§(§\x18\x1b\f§)
   {
      if(_loc2_ == undefined)
      {
         _loc2_ = this;
      }
      _loc2_.gotoAndStop(1);
      for(var a in _loc2_)
      {
         if(_loc2_[a] instanceof MovieClip)
         {
            this["\x1b\n\x1a"](_loc2_[a]);
         }
      }
   }
}
