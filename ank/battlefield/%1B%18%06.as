class ank.battlefield.§\x1b\x18\x06§
{
   static var §\x18\x1a\x0f§ = 21;
   function §\x1b\x18\x06§(§\x16\b\b§, c)
   {
      this.initialize(_loc2_,c);
   }
   function initialize(§\x16\b\b§, c)
   {
      this["\x1d\b\x12"] = _loc2_;
      this["\x1d\n\x06"] = c;
      this.clear();
   }
   function clear(§\x1b\x18\n§)
   {
      this["\x1c\x11\b"] = 0;
   }
   function §\x15\x1d\b§(§\x1b\x07\x03§, §\x1a\x03\x03§, §\x19\x04\x12§, §\x17\b\x10§, §\x1b\x0e\x01§, §\x16\x14\x17§)
   {
      if(_loc5_ < 10)
      {
         return undefined;
      }
      var _loc8_ = !_loc3_.bInFrontOfSprite ? -1 : 1;
      var _loc9_ = this["\x17\x1c\x12"]() + ank.battlefield.Constants["\x18\x1b\x05"] / 2 + 1;
      this["\x1d\n\x06"]["eff" + _loc9_].removeMovieClip();
      this["\x1d\n\x06"].createEmptyMovieClip("eff" + _loc9_,_loc4_ * 100 + 50 + _loc8_ * _loc9_);
      var _loc10_ = this["\x1d\n\x06"]["eff" + _loc9_];
      _loc10_.createEmptyMovieClip("mc",10);
      _loc10_._visible = _loc7_ != undefined ? _loc7_ : true;
      var _loc11_ = new MovieClipLoader();
      _loc11_.addListener(this);
      _loc10_.sprite = _loc2_;
      _loc10_.targetSprite = _loc6_;
      _loc10_.cellNum = _loc4_;
      _loc10_["\x17\b\x10"] = _loc5_;
      _loc10_.level = _loc3_.level;
      _loc10_.params = _loc3_.params;
      if(_loc3_.bTryToBypassContainerColor == true)
      {
         var _loc12_ = new Color(_loc10_);
         _loc12_.setTransform({ra:200,rb:0,ga:200,gb:0,ba:200,bb:0});
      }
      _loc11_.loadClip(_loc3_.file,_loc10_.mc);
      ank.utils.Timer.setTimer(_loc10_,"battlefield",_loc10_,_loc10_.removeMovieClip,ank.battlefield.Constants["\x1b\x18\x07"]);
   }
   function onLoadInit(§\x18\x1b\f§)
   {
      var _loc3_ = _loc2_._parent.sprite;
      var _loc4_ = _loc2_._parent.targetSprite;
      var _loc5_ = _loc2_._parent.cellNum;
      var §\x17\b\x10§ = _loc2_._parent["\x17\b\x10"];
      var _loc6_ = _loc2_._parent.level;
      var _loc7_ = _loc2_._parent.params;
      var _loc8_ = _loc2_._parent.ignoreTargetInHeight;
      var _loc9_ = _loc3_.cellNum;
      var _loc10_ = this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](_loc9_);
      var _loc11_ = this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](_loc5_);
      var _loc12_ = !!_loc3_ ? {x:_loc3_.mc._x,y:_loc3_.mc._y} : {x:_loc10_.x,y:_loc10_.y};
      var _loc13_ = !!_loc4_ ? {x:_loc4_.mc._x,y:_loc4_.mc._y} : {x:_loc11_.x,y:_loc11_.y};
      _loc2_.level = _loc6_;
      _loc2_.angle = Math.atan2(_loc13_.y - _loc12_.y,_loc13_.x - _loc12_.x) * 180 / Math.PI;
      _loc2_.params = _loc7_;
      switch(eval("\x17\b\x10"))
      {
         case 10:
         case 12:
            _loc2_._ACTION = _loc3_;
            _loc2_._x = _loc12_.x;
            _loc2_._y = _loc12_.y;
            break;
         case 11:
            _loc2_._ACTION = _loc3_;
            _loc2_._x = _loc13_.x;
            _loc2_._y = _loc13_.y;
            break;
         case 20:
         case 21:
            _loc2_._x = _loc12_.x;
            _loc2_._y = _loc12_.y;
            var _loc14_ = Math.PI / 2;
            var _loc15_ = _loc13_.x - _loc12_.x;
            var _loc16_ = _loc13_.y - _loc12_.y;
            _loc2_.rotate._rotation = _loc2_.angle;
            var _loc17_ = _loc2_.attachMovie("shoot","shoot",10);
            _loc17_._x = _loc15_;
            _loc17_._y = _loc16_;
            break;
         case 30:
         case 31:
            _loc2_._ACTION = _loc3_;
            _loc2_._x = _loc12_.x;
            §§push(_loc2_);
            §§push("_y");
            §§push(_loc12_.y - 10);
         default:
            §§pop()[§§pop()] = §§pop();
            _loc2_.level = _loc6_;
            var _loc18_ = !(eval("\x17\b\x10") == 31 || eval("\x17\b\x10") == 33) ? 0.5 : 0.9;
            var §\x1b\x06\x04§ = !(eval("\x17\b\x10") == 31 || eval("\x17\b\x10") == 33) ? 0.675 : 0.5;
            if(dofus.Constants.TRIPLEFRAMERATE)
            {
               set("\x1b\x06\x04",eval("\x1b\x06\x04") / 3);
            }
            var _loc19_ = Math.PI / 2;
            var _loc20_ = _loc13_.x - _loc12_.x;
            var _loc21_ = _loc13_.y - _loc12_.y;
            var _loc22_ = (Math.atan2(_loc21_,Math.abs(_loc20_)) + _loc19_) * _loc18_;
            var _loc23_ = _loc22_ - _loc19_;
            var §\x1b\x19\x18§ = Math.abs(_loc20_);
            var §\x1b\x1a\x17§ = _loc21_;
            _loc2_.startangle = _loc23_;
            if(_loc20_ <= 0)
            {
               if(_loc20_ == 0 && _loc21_ < 0)
               {
                  _loc2_._yscale = 0 - _loc2_._yscale;
                  set("\x1b\x1a\x17",0 - eval("\x1b\x1a\x17"));
               }
               _loc2_._xscale = 0 - _loc2_._xscale;
            }
            _loc2_.attachMovie("move","move",2);
            var §\x1b\x18\x0f§;
            var x;
            var y;
            var g = 9.81;
            var §\x18\x04\x1c§ = g / 2;
            var t = 0;
            var §\x1b\x18\r§ = Math.sqrt(Math.abs(eval("\x18\x04\x1c") * Math.pow(eval("\x1b\x19\x18"),2) / Math.abs(eval("\x1b\x1a\x17") - Math.tan(_loc23_) * eval("\x1b\x19\x18"))));
            var §\x1b\x18\x0e§ = Math.tan(_loc23_) * eval("\x1b\x18\r");
            _loc2_.onEnterFrame = function()
            {
               set("\x1b\x18\x0f",eval("\x1b\x18\x0e") + g * t);
               x = t * eval("\x1b\x18\r");
               y = eval("\x18\x04\x1c") * Math.pow(t,2) + eval("\x1b\x18\x0e") * t;
               t += eval("\x1b\x06\x04");
               if(Math.abs(y) >= Math.abs(eval("\x1b\x1a\x17")) && x >= eval("\x1b\x19\x18") || x > eval("\x1b\x19\x18"))
               {
                  this.attachMovie("shoot","shoot",2);
                  this.shoot._x = eval("\x1b\x19\x18");
                  this.shoot._y = eval("\x1b\x1a\x17");
                  this.shoot._rotation = Math.atan(eval("\x1b\x18\x0f") / eval("\x1b\x18\r")) * 180 / Math.PI;
                  this.end();
                  delete this.onEnterFrame;
               }
               else
               {
                  this.move._x = x;
                  this.move._y = y;
                  this.move._rotation = Math.atan(eval("\x1b\x18\x0f") / eval("\x1b\x18\r")) * 180 / Math.PI;
               }
            };
            break;
         case 40:
         case 41:
            _loc2_._ACTION = _loc3_;
            _loc2_._x = _loc12_.x;
            _loc2_._y = _loc12_.y;
            var _loc24_ = 20;
            if(dofus.Constants.TRIPLEFRAMERATE)
            {
               _loc24_ /= 3;
            }
            var §\x1b\x1a\x0f§ = _loc12_.x;
            var §\x1b\x1a\x1c§ = _loc12_.y;
            var §\x1b\x19\x18§ = _loc13_.x;
            var §\x1b\x1a\x17§ = _loc13_.y;
            var §\x1a\x0e\x18§ = Math.atan2(eval("\x1b\x1a\x17") - eval("\x1b\x1a\x1c"),eval("\x1b\x19\x18") - eval("\x1b\x1a\x0f"));
            var §\x17\x12\x1c§ = Math.sqrt(Math.pow(eval("\x1b\x1a\x0f") - eval("\x1b\x19\x18"),2) + Math.pow(eval("\x1b\x1a\x1c") - eval("\x1b\x1a\x17"),2));
            var §\x18\f\x05§ = eval("\x17\x12\x1c") / Math.floor(eval("\x17\x12\x1c") / _loc24_);
            var §\x17\b\x1a§ = 0;
            var §\x18\b\x18§ = 1;
            var _loc25_ = false;
            var nFramesToIgnore = !dofus.Constants.TRIPLEFRAMERATE ? 0 : 2;
            var nCurrentFrameState = 0;
            _loc2_.onEnterFrame = function()
            {
               set("\x17\b\x1a",eval("\x17\b\x1a") + eval("\x18\f\x05"));
               if(!dofus.Constants.TRIPLEFRAMERATE || nCurrentFrameState == 0)
               {
                  if(eval("\x17\b\x1a") > eval("\x17\x12\x1c"))
                  {
                     this.end();
                     if(eval("\x17\b\x10") == 41)
                     {
                        this.attachMovie("shoot","shoot",10);
                        this.shoot._x = eval("\x1b\x19\x18") - eval("\x1b\x1a\x0f");
                        this.shoot._y = eval("\x1b\x1a\x17") - eval("\x1b\x1a\x1c");
                     }
                     delete this.onEnterFrame;
                  }
                  else
                  {
                     var _loc2_ = this.attachMovie("duplicate","duplicate" + eval("\x18\b\x18"),eval("\x18\b\x18"));
                     _loc2_._x = eval("\x17\b\x1a") * Math.cos(eval("\x1a\x0e\x18"));
                     _loc2_._y = eval("\x17\b\x1a") * Math.sin(eval("\x1a\x0e\x18"));
                     §\x18\b\x18§++;
                  }
                  nCurrentFrameState = nFramesToIgnore;
               }
               else
               {
                  nCurrentFrameState--;
               }
            };
            break;
         case 50:
         case 51:
            _loc2_._ACTION = _loc3_;
            _loc2_.cellFrom = _loc12_;
            _loc2_.cellTo = _loc13_;
      }
   }
   function §\x17\x1c\x12§(§\x1b\x18\n§)
   {
      this["\x1c\x11\b"]++;
      if(this["\x1c\x11\b"] > ank.battlefield["\x1b\x18\x06"]["\x18\x1a\x0f"])
      {
         this["\x1c\x11\b"] = 0;
      }
      return this["\x1c\x11\b"];
   }
}
