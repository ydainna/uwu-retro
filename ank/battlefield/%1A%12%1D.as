class ank.battlefield.§\x1a\x12\x1d§
{
   function §\x1a\x12\x1d§(§\x16\b\b§, c, §\x17\x04\x0e§)
   {
      this.initialize(_loc2_,c,_loc4_);
   }
   function initialize(§\x16\b\b§, c, §\x17\x04\x0e§)
   {
      this["\x1d\b\x12"] = _loc2_;
      this["\x1e\x03\b"] = _loc4_;
      this["\x1d\n\x06"] = c;
      this.clear();
   }
   function clear(§\x1b\x18\n§)
   {
      for(var k in this["\x1d\n\x06"].Select)
      {
         var _loc3_ = this["\x1d\n\x06"].Select[k];
         if(_loc3_ != undefined)
         {
            var _loc4_ = _loc3_.inObjectClips;
            for(var l in _loc4_)
            {
               _loc4_[l].removeMovieClip();
            }
         }
         _loc3_.removeMovieClip();
      }
   }
   function §\x16\x1c\x06§(§\x1b\x02\x17§)
   {
      if(_loc2_ == undefined)
      {
         _loc2_ = "default";
      }
      var _loc3_ = this["\x1d\n\x06"].Select[_loc2_];
      if(_loc3_ != undefined)
      {
         var _loc4_ = _loc3_.inObjectClips;
         for(var k in _loc4_)
         {
            _loc4_[k].removeMovieClip();
         }
      }
      _loc3_.removeMovieClip();
   }
   function select(§\x16\x12\x06§, §\x19\x04\x12§, §\x19\x05\x06§, §\x1b\x02\x17§, §\x19\x03\x07§, bAnimate)
   {
      var _loc8_ = this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](_loc3_);
      if(_loc5_ == undefined)
      {
         _loc5_ = "default";
      }
      var _loc9_ = this["\x1d\n\x06"].Select[_loc5_];
      if(_loc9_ == undefined)
      {
         _loc9_ = this["\x1d\n\x06"].Select.createEmptyMovieClip(_loc5_,this["\x1d\n\x06"].Select.getNextHighestDepth());
         _loc9_.inObjectClips = new Array();
      }
      if(_loc8_ != undefined && _loc8_.x != undefined)
      {
         var _loc10_ = _loc8_.movement > 1 && _loc8_["\x18\x13\x12"] != 0;
         var _loc11_ = "cell" + String(_loc3_);
         if(_loc2_)
         {
            if(_loc10_)
            {
               var _loc13_ = this["\x1d\n\x06"].Object2["select" + _loc3_];
               if(_loc13_ == undefined)
               {
                  _loc13_ = this["\x1d\n\x06"].Object2.createEmptyMovieClip("select" + _loc3_,_loc3_ * 100 + 2);
               }
               var _loc12_ = _loc13_[_loc5_];
               if(_loc12_ == undefined)
               {
                  _loc12_ = _loc13_.attachMovie("s" + _loc8_["\x18\x03\x1a"],_loc5_,_loc13_.getNextHighestDepth());
               }
               _loc9_.inObjectClips.push(_loc12_);
            }
            else
            {
               _loc12_ = _loc9_.attachMovie("s" + _loc8_["\x18\x03\x1a"],_loc11_,_loc3_ * 100);
               new org.flashdevelop.utils.FlashConnect.trace("mcLayer : " + _loc9_,"ank.battlefield.SelectionHandler::select","C:\\Users\\ddallinge\\Git\\client\\src\\ank-common\\classes/ank/battlefield/SelectionHandler.as",132);
            }
            _loc12_._x = _loc8_.x;
            _loc12_._y = _loc8_.y;
            var _loc14_ = new Color(_loc12_);
            _loc14_.setRGB(Number(_loc4_));
            _loc12_._alpha = _loc6_ == undefined ? 100 : _loc6_;
            if(bAnimate)
            {
               ank.utils.TweenAnimation.scale(_loc12_,eval("\x19\x02\x19").transitions.easing.Back.easeOut,30,100,0.1,true);
            }
         }
         else if(_loc10_)
         {
            this["\x1d\n\x06"].Object2["select" + _loc3_][_loc5_].unloadMovie();
            this["\x1d\n\x06"].Object2["select" + _loc3_][_loc5_].removeMovieClip();
         }
         else
         {
            _loc9_[_loc11_].unloadMovie();
            _loc9_[_loc11_].removeMovieClip();
         }
      }
   }
   function §\x1a\x13\x03§(§\x16\x12\x04§, §\x15\x1b\x18§, §\x19\x05\x06§, §\x1b\x02\x17§, §\x19\x03\x07§, bAnimate)
   {
      for(var i in _loc3_)
      {
         this.select(_loc2_,_loc3_[i],_loc4_,_loc5_,_loc6_,bAnimate);
      }
   }
   function §\x17\x1a\x16§()
   {
      var _loc2_ = new Array();
      for(var k in this["\x1d\n\x06"].Select)
      {
         var _loc3_ = this["\x1d\n\x06"].Select[k];
         if(_loc3_ != undefined)
         {
            _loc2_.push(_loc3_._name);
         }
      }
      return _loc2_;
   }
}
