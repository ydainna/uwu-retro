class ank.battlefield.mc.§\x1b\x07\x04§ extends MovieClip
{
   var §\x1d\x17\x1a§ = 100;
   var §\x1c\x04\x11§ = false;
   var §\x1c\x02\x18§ = false;
   static var WALK_SPEEDS = [0.07,0.06,0.06,0.06,0.07,0.06,0.06,0.06];
   static var §\x18\x1e\x0f§ = [0.23,0.2,0.2,0.2,0.23,0.2,0.2,0.2];
   static var §\x1a\x0f\x05§ = [0.17,0.15,0.15,0.15,0.17,0.15,0.15,0.15];
   function §\x1b\x07\x04§(§\x16\b\b§, §\x1a\x11\x1b§, §\x17\x04\x0e§)
   {
      super();
      eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
      this.initialize(_loc3_,_loc4_,_loc5_);
   }
   function set forcedXScale(nForcedXScale)
   {
      this._nForcedXScale = nForcedXScale;
      this._xscale = nForcedXScale;
   }
   function §\x1e\x1b\x01§()
   {
      return this["\x1d\x0b\x17"];
   }
   function §\x1e\x18\x01§()
   {
      return this._oData;
   }
   function §\x18\t§(§\x18\x1b\f§)
   {
      this["\x1d\t\f"] = _loc2_;
      return this.mcCarried;
   }
   function §\x18\n§(§\x18\x1b\f§)
   {
      this["\x1d\t\x19"] = _loc2_;
      return this.mcChevauchorPos;
   }
   function §\x15\x17§(§\x16\b\b§)
   {
      this["\x1a\x17\x04"](_loc2_);
      return this["\x1e\x1d\x15"]();
   }
   function §\x1e\x1d\x15§()
   {
      return this["\x1c\x04\x1a"];
   }
   function initialize(§\x16\b\b§, §\x1a\x11\x1b§, §\x17\x04\x0e§)
   {
      _global.GAC.addSprite(this,_loc4_);
      this["\x1d\b\x12"] = _loc2_;
      this["\x1e\x05\x1c"] = _loc3_;
      this._oData = _loc4_;
      this["\x1d\x12\x11"] = new MovieClipLoader();
      this["\x1d\x12\x11"].addListener(this);
      this["\x1a\x18\x18"](this._oData.cellNum);
      this.draw();
      this._ACTION = _loc4_;
      this.api = _global.api;
   }
   function draw()
   {
      this["\x1d\x0b\x17"].removeMovieClip();
      this.createEmptyMovieClip("\x1d\x0b\x17",20);
      this["\x1a\x17\x04"](this["\x1c\x04\x1a"]);
      this["\x1c\x04\x11"] = false;
      this["\x1c\x02\x18"] = false;
      this["\x1d\x12\x11"].loadClip(!!this._oData["\x18\x0f\x02"] ? this._oData.mount.gfxFile : this._oData.gfxFile,this["\x1d\x0b\x17"]);
   }
   function clear()
   {
      this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](this._oData.cellNum)["\x1a\f\x1c"](this._oData.id);
      this["\x1d\x0b\x17"].removeMovieClip();
      this._oData.direction = 1;
      this["\x1a\f\x04"]();
      this._oData["\x18\r\x04"] = true;
   }
   function select(§\x16\x10\x02§)
   {
      var _loc3_ = new Object();
      if(_loc2_)
      {
         _loc3_ = {ra:60,rb:102,ga:60,gb:102,ba:60,bb:102};
      }
      else
      {
         _loc3_ = {ra:100,rb:0,ga:100,gb:0,ba:100,bb:0};
      }
      this["\x1a\x15\x13"](_loc3_);
   }
   function §\x15\x1d\r§(§\x1a\x1b\x0f§, §\x19\x05\x06§, §\x16\x13\x0f§)
   {
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      if(_loc4_ == undefined)
      {
         _loc4_ = false;
      }
      this["\x1a\f\x04"](_loc4_);
      if(_loc4_)
      {
         var _loc5_ = new Object();
         _loc5_.file = _loc2_;
         _loc5_.color = _loc3_;
         this._oData.xtraClipTopParams = _loc5_;
         if(!this["\x1c\x04\x11"])
         {
            return undefined;
         }
      }
      var _loc6_ = !_loc4_ ? this["\x1d\x11\x1c"] : this["\x1d\x11\x1d"];
      if(_loc3_ != undefined)
      {
         var _loc7_ = new Color(_loc6_);
         _loc7_.setRGB(_loc3_);
      }
      _loc6_.loadMovie(_loc2_);
   }
   function §\x1a\f\x04§(§\x16\x13\x0f§)
   {
      switch(_loc2_)
      {
         case true:
            this["\x1d\x11\x1d"].removeMovieClip();
            this.createEmptyMovieClip("\x1d\x11\x1d",30);
            break;
         case false:
            this["\x1d\x11\x1c"].removeMovieClip();
            this.createEmptyMovieClip("\x1d\x11\x1c",10);
            break;
         default:
            this["\x1d\x11\x1d"].removeMovieClip();
            this["\x1d\x11\x1c"].removeMovieClip();
            this.createEmptyMovieClip("\x1d\x11\x1d",30);
            this.createEmptyMovieClip("\x1d\x11\x1c",10);
      }
   }
   function §\x1a\x15\x13§(§\x1b\r\x11§)
   {
      var _loc3_ = new Color(this);
      _loc3_.setTransform(_loc2_);
   }
   function §\x1a\x18\x05§(§\x19\x04\x12§)
   {
      this._oData.cellNum = Number(_loc2_);
   }
   function §\x1a\x16\x04§(§\x19\x06\x01§)
   {
      if(_loc2_ == undefined)
      {
         _loc2_ = this._oData.direction;
      }
      this._oData.direction = _loc2_;
      this.setAnim(this._oData["\x16\x03\x17"]);
   }
   function §\x1a\x18\x18§(§\x19\x04\x12§)
   {
      this["\x1b\x15\x11"](_loc2_,this._oData["\x18\x10\x0e"]);
      this["\x1a\x16\x02"](_loc2_);
      if(_loc2_ == undefined)
      {
         _loc2_ = this._oData.cellNum;
      }
      else
      {
         this["\x1a\x18\x05"](_loc2_);
      }
      var _loc3_ = this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](_loc2_);
      var _loc4_ = this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x15\x01"](_loc2_);
      var _loc5_ = _loc4_ - Math.floor(_loc4_);
      this._x = _loc3_.x;
      this._y = _loc3_.y - _loc5_ * ank.battlefield.Constants["\x18\x14\x0e"];
   }
   function §\x1a\x16\x02§(§\x19\x04\x12§)
   {
      if(_loc2_ == undefined)
      {
         _loc2_ = this._oData.cellNum;
      }
      var _loc3_ = ank.battlefieldutils.["\x1b\x07\x07"]["\x17\x18\x01"](this["\x1d\b\x12"]["\x18\x18\x15"],this["\x1e\x05\x1c"],_loc2_,this["\x1d\b\x12"]["\x16\f\x0f"]);
      this.swapDepths(_loc3_);
      if(this._oData["\x18\x05\x04"]())
      {
         this._oData["\x16\x17\x03"].mc["\x1a\x16\x02"](_loc2_);
      }
   }
   function §\x1a\x1b\x03§(§\x16\x10\x02§)
   {
      this._oData["\x18\x10\x0e"] = _loc2_;
      this._visible = _loc2_;
      this["\x1b\x15\x11"](this._oData.cellNum,_loc2_);
   }
   function §\x1a\x14\x1a§(§\x1b\x17\x16§)
   {
      this["\x1d\x0b\x17"]._alpha = _loc2_;
   }
   function §\x1a\x17\x04§(§\x16\b\b§)
   {
      this["\x1c\x04\x1a"] = _loc2_;
      if(this["\x1c\x04\x1a"])
      {
         this["\x1d\x0b\x17"]._x = this["\x1d\x0b\x17"]._y = -5000;
         this["\x1d\x0b\x17"]._visible = false;
      }
      else
      {
         this["\x1d\x0b\x17"]._x = this["\x1d\x0b\x17"]._y = 0;
         this["\x1d\x0b\x17"]._visible = true;
      }
   }
   function §\x1a\x16\x1d§(§\x16\x10\x02§)
   {
      this["\x1a\x16\x02"]();
      if(_loc2_)
      {
         this["\x1d\x17\x1a"] = this["\x1d\x0b\x17"]._alpha;
         this["\x1a\x14\x1a"](ank.battlefield.Constants["\x18\x02\x1a"]);
      }
      else
      {
         this["\x1a\x14\x1a"](this["\x1d\x17\x1a"]);
      }
   }
   function §\x19\x01\x0e§(§\x1a\x14\x01§, §\x16\x17\x18§, §\x16\x13\x01§, §\x1b\b\x0f§, §\x1a\x0f\x10§, §\x16\x0b\x1b§)
   {
      if(_loc3_ != this._oData.cellNum)
      {
         var _loc8_ = this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](this._oData.cellNum);
         var _loc9_ = this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](_loc3_);
         var _loc10_ = _loc9_.x;
         var _loc11_ = _loc9_.y;
         var _loc12_ = 0.01;
         if(_loc9_["\x18\x03\x1a"] != 1)
         {
            _loc11_ -= ank.battlefield.Constants["\x18\x04\x1d"];
         }
         if(_loc6_.toLowerCase() != "static")
         {
            this._oData.direction = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x16\x16"](_loc8_.x,_loc8_["\x1a\x0e\x17"],_loc10_,_loc9_["\x1a\x0e\x17"],true);
         }
         var _loc13_ = this.api.electron["\x18\x10\x11"];
         switch(_loc5_)
         {
            case "slide":
               var _loc14_ = 0.25;
               if(_loc13_)
               {
                  this.setAnim(_loc6_);
               }
               else
               {
                  this.setAnim("static");
               }
               break;
            case "walk":
            default:
               _loc14_ = ank.battlefield.mc.Sprite.WALK_SPEEDS[this._oData.direction];
               if(_loc13_)
               {
                  this.setAnim(_loc6_ != undefined ? _loc6_ : "walk",undefined,_loc7_);
               }
               else
               {
                  this.setAnim("static");
               }
               break;
            case "run":
               _loc14_ = !!this._oData["\x18\x0f\x02"] ? ank.battlefield.mc.Sprite["\x18\x1e\x0f"][this._oData.direction] : ank.battlefield.mc.Sprite["\x1a\x0f\x05"][this._oData.direction];
               if(_loc13_)
               {
                  this.setAnim(_loc6_ != undefined ? _loc6_ : "run",undefined,_loc7_);
                  break;
               }
               this.setAnim("static");
               break;
         }
         _loc14_ *= this._oData["\x1b\x06\x05"];
         if(_loc9_["\x18\x03\x18"] < _loc8_["\x18\x03\x18"])
         {
            _loc14_ += _loc12_;
         }
         else if(_loc9_["\x18\x03\x18"] > _loc8_["\x18\x03\x18"])
         {
            _loc14_ -= _loc12_;
         }
         else if(_loc8_["\x18\x03\x1a"] != _loc9_["\x18\x03\x1a"])
         {
            if(_loc9_["\x18\x03\x1a"] == 1)
            {
               _loc14_ += _loc12_;
            }
            else if(_loc8_["\x18\x03\x1a"] == 1)
            {
               _loc14_ -= _loc12_;
            }
         }
         this["\x1d\x15\x16"] = Math.sqrt(Math.pow(this._x - _loc10_,2) + Math.pow(this._y - _loc11_,2));
         var _loc15_ = Math.atan2(_loc11_ - this._y,_loc10_ - this._x);
         var _loc16_ = Math.cos(_loc15_);
         var _loc17_ = Math.sin(_loc15_);
         this._nLastTimer = 7359;
         var _loc18_ = Number(_loc3_) > this._oData.cellNum;
         this["\x1b\x15\x11"](_loc3_,this._oData["\x18\x10\x0e"],true);
         this["\x1a\x18\x05"](_loc3_);
         this._oData.isInMove = true;
         this._oData["\x19\x01\t"] = _loc5_;
         this._oData["\x18\x1e\x15"] = _loc6_;
         if(this._oData["\x18\x05\x04"]())
         {
            var _loc19_ = this._oData["\x16\x17\x03"];
            var _loc20_ = _loc19_.mc;
            _loc20_["\x1a\x16\x04"](this._oData.direction);
            _loc20_["\x1b\x15\x11"](_loc3_,_loc19_["\x18\x10\x0e"]);
            _loc20_["\x1a\x18\x05"](_loc3_);
         }
         if(_loc18_)
         {
            this["\x1a\x16\x02"](_loc3_);
         }
         ank.utils.["\x17\x04\f"].getInstance()["\x15\x1d\x11"](this,this,this["\x16\t\x04"],[_loc14_,_loc16_,_loc17_],this,this["\x16\t\x05"],[_loc2_,_loc10_,_loc11_,_loc3_,_loc4_,_loc5_ == "slide",!_loc18_]);
      }
      else
      {
         _loc2_.onActionEnd();
      }
   }
   function §\x16\t\x04§(§\x1b\x06\x04§, §\x17\x01\x13§, §\x1b\x01\x1d§)
   {
      var _loc5_ = 4067 - this._nLastTimer;
      var _loc6_ = _loc2_ * (_loc5_ <= 125 ? _loc5_ : 125);
      this._x += _loc6_ * _loc3_;
      this._y += _loc6_ * _loc4_;
      this["\x1d\x15\x16"] -= _loc6_;
      this._nLastTimer = 3833;
      if(this["\x1d\x15\x16"] <= _loc6_)
      {
         return false;
      }
      return true;
   }
   function §\x16\t\x05§(§\x1a\x14\x01§, §\x1b\x19\x18§, §\x1b\x1a\x17§, §\x16\x17\x18§, §\x16\x13\x01§, §\x16\x12\x16§, §\x16\x12\b§)
   {
      if(this["\x1d\x1a\x16"] != undefined)
      {
         this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](this["\x1d\x1a\x16"])["\x1a\f\x1c"](this._oData.id);
         this["\x1d\x1a\x16"] = undefined;
      }
      if(_loc6_)
      {
         this._x = _loc3_;
         this._y = _loc4_;
         this._oData.isInMove = false;
         this.setAnim(this._oData["\x17\x06\x03"]);
         if(this.api.gfx.spriteHandler["\x18\x0f\x15"] && this.data instanceof dofus.datacenter.["\x18\x1d\x19"])
         {
            this["\x1e\x07\n"](true);
         }
      }
      if(_loc8_)
      {
         this["\x1a\x16\x02"](_loc5_);
      }
      _loc2_.onActionEnd();
   }
   function §\x1a\x0f\x19§(§\x1a\x0f\x0f§)
   {
      if(!this._oData["\x18\x0f\x02"])
      {
         this["\x1d\x0b\x17"].mcAnim.lastAnimation = _loc2_;
      }
      else
      {
         this["\x1d\t\x18"].mcAnim.lastAnimation = _loc2_;
         this["\x1d\x0b\x17"].mcAnimFront.lastAnimation = _loc2_;
         this["\x1d\x0b\x17"].mcAnimBack.lastAnimation = _loc2_;
      }
   }
   function §\x1a\x14\x1c§(§\x16\x03\x15§, §\x16\x0e\x13§, §\x16\x0b\x1c§, §\x19\x0f\x1a§)
   {
      this.setAnim(_loc2_,_loc3_,_loc4_);
      if(_global.isNaN(Number(_loc5_)))
      {
         return undefined;
      }
      if(_loc5_ < 1)
      {
         return undefined;
      }
      ank.utils.Timer.setTimer(this,"battlefield",this,this.setAnim,_loc5_,[this._oData["\x17\x06\x03"]]);
   }
   static function §\x17\x16\x18§(§\x1a\x12\x03§)
   {
      switch(_loc2_)
      {
         case "S":
            var _loc3_ = 0;
            break;
         case "R":
            _loc3_ = 1;
            break;
         case "F":
            _loc3_ = 2;
            break;
         case "L":
            _loc3_ = 5;
            break;
         case "B":
            _loc3_ = 6;
            break;
         default:
            _loc3_ = -1;
      }
      return _loc3_;
   }
   function §\x1a\x14\x1b§(§\x16\x03\x15§, §\x16\x0e\x13§, §\x16\x0b\x1c§)
   {
      if(this.api.datacenter.Game["\x18\x0f\x12"])
      {
         var _loc5_ = this._oData.sequencer.getCurrentAction();
         if(_loc5_ != undefined && (_loc5_.object == this && (_loc5_.fn == this.setAnim && (_loc5_.waitEnd && (!_loc5_.forceTimeout && _loc5_.functionApplied)))))
         {
            return undefined;
         }
      }
      if(_loc2_ == undefined)
      {
         _loc2_ = this._oData["\x17\x06\x03"];
      }
      _loc2_ = String(_loc2_).toLowerCase();
      if(_loc3_ == undefined)
      {
         _loc3_ = false;
      }
      if(_loc4_ == undefined)
      {
         _loc4_ = false;
      }
      var _loc6_ = this._oData["\x19\x0b\x04"];
      this._oData["\x16\b\x18"] = _loc3_;
      var mc = this["\x1d\x0b\x17"];
      var _loc7_ = "";
      if(this._oData["\x18\x05\x04"]())
      {
         _loc7_ += "_C";
      }
      var sFullAnim;
      var sDir;
      var nScale;
      switch(this._oData.direction)
      {
         case 0:
            sDir = "S";
            sFullAnim = _loc2_ + _loc7_ + sDir;
            var _loc8_ = "staticR";
            nScale = 100;
            break;
         case 1:
            sDir = "R";
            sFullAnim = _loc2_ + _loc7_ + sDir;
            _loc8_ = "staticR";
            nScale = 100;
            break;
         case 2:
            sDir = "F";
            sFullAnim = _loc2_ + _loc7_ + sDir;
            _loc8_ = "staticR";
            nScale = 100;
            break;
         case 3:
            sDir = "R";
            sFullAnim = _loc2_ + _loc7_ + sDir;
            _loc8_ = "staticR";
            if(!_loc6_)
            {
               nScale = -100;
            }
            break;
         case 4:
            sDir = "S";
            sFullAnim = _loc2_ + _loc7_ + sDir;
            _loc8_ = "staticL";
            if(!_loc6_)
            {
               nScale = -100;
            }
            break;
         case 5:
            sDir = "L";
            sFullAnim = _loc2_ + _loc7_ + sDir;
            _loc8_ = "staticL";
            nScale = 100;
            break;
         case 6:
            sDir = "B";
            sFullAnim = _loc2_ + _loc7_ + sDir;
            _loc8_ = "staticL";
            nScale = 100;
            break;
         case 7:
            sDir = "L";
            sFullAnim = _loc2_ + _loc7_ + sDir;
            _loc8_ = "staticL";
            if(!_loc6_)
            {
               nScale = -100;
               break;
            }
      }
      if(this._nForcedXScale != undefined)
      {
         nScale = this._nForcedXScale;
      }
      var _loc9_ = this._oData.fullAnimation;
      var sOldAnim = this._oData["\x16\x03\x17"];
      this._oData["\x16\x03\x17"] = _loc2_;
      this._oData.fullAnimation = sFullAnim;
      if(this._oData["\x1b\x1a\x10"] != undefined)
      {
         if(this._oData["\x1b\x1a\x10"][sFullAnim])
         {
            this["\x15\x1d\r"](this._oData.xtraClipTopParams.file,this._oData.xtraClipTopParams.color,true);
         }
         else if(this["\x1d\x11\x1d"] != undefined)
         {
            this["\x1a\f\x04"](true);
         }
      }
      if(_loc4_ || sFullAnim != _loc9_)
      {
         var ref = this;
         var _loc10_ = mc.createEmptyMovieClip("mcAnimLoad",31);
         _loc10_._visible = false;
         if(!this._oData["\x18\x0f\x02"])
         {
            _loc10_.onEnterFrame = function()
            {
               ref._xscale = nScale;
               var _loc2_ = mc.attachMovie(sFullAnim,"mcAnim",10,{lastAnimation:sOldAnim});
               if(_loc2_ == undefined)
               {
                  _loc2_ = mc.attachMovie("static" + sDir,"mcAnim",10,{lastAnimation:sOldAnim});
               }
               if(_loc2_ != undefined && ank.battlefield["\x16\t\t"].useCacheAsBitmapOnStaticAnim)
               {
                  _loc2_["\x16\x15\x06"] = _loc2_._totalframes == 1;
               }
               this.removeMovieClip();
               delete this.onEnterFrame;
            };
         }
         else
         {
            _loc10_._visible = false;
            _loc10_.onEnterFrame = function()
            {
               ref._xscale = nScale;
               var _loc2_ = ref["\x1d\t\x18"].attachMovie(sFullAnim,"mcAnim",1,{lastAnimation:sOldAnim});
               if(_loc2_ == undefined)
               {
                  _loc2_ = ref["\x1d\t\x18"].attachMovie("static" + sDir,"mcAnim",1,{lastAnimation:sOldAnim});
               }
               if(_loc2_ == undefined)
               {
                  ref["\x1d\t\x18"].mcAnim.removeMovieClip();
               }
               else if(ank.battlefield["\x16\t\t"].useCacheAsBitmapOnStaticAnim)
               {
                  _loc2_["\x16\x15\x06"] = _loc2_._totalframes == 1;
               }
               _loc2_ = mc.attachMovie(sFullAnim + "_Front","mcAnimFront",30,{lastAnimation:sOldAnim});
               if(_loc2_ == undefined)
               {
                  _loc2_ = mc.attachMovie("static" + sDir + "_Front","mcAnimFront",30,{lastAnimation:sOldAnim});
               }
               if(_loc2_ == undefined)
               {
                  mc.mcAnimFront.removeMovieClip();
               }
               else if(ank.battlefield["\x16\t\t"].useCacheAsBitmapOnStaticAnim)
               {
                  _loc2_["\x16\x15\x06"] = _loc2_._totalframes == 1;
               }
               _loc2_ = mc.attachMovie(sFullAnim + "_Back","mcAnimBack",10,{lastAnimation:sOldAnim});
               if(_loc2_ == undefined)
               {
                  _loc2_ = mc.attachMovie("static" + sDir + "_Back","mcAnimBack",10,{lastAnimation:sOldAnim});
               }
               if(_loc2_ == undefined)
               {
                  mc.mcAnimBack.removeMovieClip();
               }
               else if(ank.battlefield["\x16\t\t"].useCacheAsBitmapOnStaticAnim)
               {
                  _loc2_["\x16\x15\x06"] = _loc2_._totalframes == 1;
               }
               if(ref._oData["\x18\x0f\x02"])
               {
                  ank.utils.["\x17\x04\f"].getInstance()["\x15\x1d\x11"](ref,ref,ref["\x1b\x14\x0e"]);
               }
               this.removeMovieClip();
               delete this.onEnterFrame;
            };
         }
      }
      else
      {
         this._xscale = nScale;
         if(this._oData["\x18\x0f\x02"])
         {
            ank.utils.["\x17\x04\f"].getInstance()["\x15\x1d\x11"](this,this,this["\x1b\x14\x0e"]);
         }
      }
      if(this._oData["\x18\x05\x04"]())
      {
         ank.utils.["\x17\x04\f"].getInstance()["\x15\x1d\x11"](this,this,this["\x1b\x14\x07"]);
      }
   }
   function §\x1b\x14\x07§()
   {
      if(this._oData["\x18\x05\x04"]())
      {
         if(this["\x1d\t\f"] != undefined)
         {
            var _loc2_ = {x:this["\x1d\t\f"]._x,y:this["\x1d\t\f"]._y};
            this["\x1d\t\f"]._parent.localToGlobal(_loc2_);
            this["\x1d\b\x12"].container.globalToLocal(_loc2_);
            this._oData["\x16\x17\x03"].mc._x = _loc2_.x;
            this._oData["\x16\x17\x03"].mc._y = _loc2_.y;
         }
      }
      return this._oData["\x16\x03\x17"] != "static" || this._oData.isInMove;
   }
   function §\x1b\x14\x0e§()
   {
      if(this._oData["\x18\x0f\x02"])
      {
         if(this["\x1d\t\x19"] != undefined)
         {
            var _loc2_ = {x:this["\x1d\t\x19"]._x,y:this["\x1d\t\x19"]._y};
            this["\x1d\t\x19"]._parent.localToGlobal(_loc2_);
            this["\x1d\x0b\x17"].globalToLocal(_loc2_);
            this["\x1d\t\x18"]._x = _loc2_.x;
            this["\x1d\t\x18"]._y = _loc2_.y;
            this["\x1d\t\x18"]._rotation = this["\x1d\t\x19"]._rotation;
            this["\x1d\t\x18"]._xscale = this["\x1d\t\x19"]._xscale;
            this["\x1d\t\x18"]._yscale = this["\x1d\t\x19"]._yscale;
         }
      }
      return this._oData["\x16\x03\x17"] != "static" || this._oData.isInMove;
   }
   function §\x1b\x15\x11§(§\x19\x04\x12§, §\x16\x14\x17§, §\x16\n\x1b§)
   {
      var _loc5_ = this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](_loc2_);
      if(_loc5_ == undefined)
      {
         if(_loc3_)
         {
            this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](this._oData.cellNum)["\x15\x1e\x14"](this._oData.id);
         }
         else
         {
            this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](this._oData.cellNum)["\x1a\f\x1c"](this._oData.id);
         }
         return undefined;
      }
      if(_loc4_ != true)
      {
         this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](this._oData.cellNum)["\x1a\f\x1c"](this._oData.id);
      }
      else
      {
         this["\x1d\x1a\x16"] = this._oData.cellNum;
      }
      if(_loc3_)
      {
         _loc5_["\x15\x1e\x14"](this._oData.id);
      }
   }
   function §\x1a\x19\r§(§\x19\r\x1b§, §\x19\r\x1c§)
   {
      this["\x1d\x0b\x17"]._xscale = _loc2_;
      this["\x1d\x0b\x17"]._yscale = _loc3_ == undefined ? _loc2_ : _loc3_;
   }
   function onLoadInit(§\x18\x1b\f§)
   {
      this.onEnterFrame = function()
      {
         if(!this["\x1c\x04\x11"])
         {
            this["\x1c\x04\x11"] = true;
            if(this._oData["\x18\x0f\x02"])
            {
               this["\x1d\t\x18"] = this["\x1d\x0b\x17"].createEmptyMovieClip("chevauchor",20);
               this["\x1d\x12\x11"].loadClip(this._oData.mount["\x16\x1b\x02"],this["\x1d\t\x18"]);
            }
         }
         else
         {
            this["\x1c\x02\x18"] = true;
         }
         if(this["\x1c\x04\x11"] && (!this._oData["\x18\x0f\x02"] || this["\x1c\x02\x18"]))
         {
            if(_global.isNaN(Number(this._oData["\x1b\t\n"])))
            {
               this.setAnim(this._oData["\x1b\t\t"],undefined,true);
            }
            else
            {
               this["\x1a\x14\x1c"](this._oData["\x1b\t\t"],false,false,this._oData["\x1b\t\n"]);
            }
            delete this.onEnterFrame;
         }
      };
      this["\x17\x07\x19"]({type:"onLoadInit",clip:this});
   }
   function §\x1e\x07\x06§(§\x1b\x18\n§)
   {
      this["\x1d\b\x12"]["\x19\x1d\x05"](this);
   }
   function §\x1e\x07\n§(§\x16\x0b\x10§)
   {
      this["\x1d\b\x12"]["\x19\x1d\x07"](this,_loc2_);
   }
   function §\x1e\x07\t§(§\x16\x0b\x10§)
   {
      this["\x1d\b\x12"]["\x19\x1d\x06"](this,_loc2_);
   }
}
