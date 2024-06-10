class dofus.graphics.gapi.§\x17\x01\x06§.ClassSelector extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ClassSelector";
   static var §\x18\x19\x14§ = 3;
   var §\x1e\x11\x03§ = 330;
   var §\x1e\x11\x05§ = 95;
   var §\x1d\x12\b§ = -120;
   var §\x1d\x07\x11§ = 100;
   var §\x1d\x12\x07§ = -100;
   var §\x1d\x07\x10§ = 100;
   var §\x1c\x01\x1c§ = true;
   var §\x1d\x12\x19§ = 10;
   var §\x1b\x1c\x01§ = new Array();
   var §\x1c\x06\x17§ = false;
   var §\x1d\x14\x1a§ = 0;
   var §\x1d\x14\x13§ = 0;
   var §\x1b\x1c\x02§ = new Array();
   var §\x1b\x1d\x16§ = new Array();
   var §\x1d\x18\x18§ = 0;
   var §\x1b\x1e\x12§ = new Array();
   var §\x1c\x01\x0f§ = new Array();
   function ClassSelector()
   {
      super();
   }
   function §\x0e\x01§()
   {
      return this["\x1e\x11\x03"];
   }
   function §\x19§(§\x19\x03\x01§)
   {
      this["\x1e\x11\x03"] = _loc2_;
      return this["\x0e\x01"]();
   }
   function §\x0e\x03§()
   {
      return this["\x1e\x11\x05"];
   }
   function §\x1b§(§\x19\x03\x01§)
   {
      this["\x1e\x11\x05"] = _loc2_;
      return this["\x0e\x03"]();
   }
   function §\x04\x01§()
   {
      return this["\x1d\x12\b"];
   }
   function §\x18\x15§(§\x19\x03\x01§)
   {
      this["\x1d\x12\b"] = _loc2_;
      return this["\x04\x01"]();
   }
   function §\x03\x0f§()
   {
      return this["\x1d\x07\x11"];
   }
   function §\x18\x03§(§\x19\x03\x01§)
   {
      this["\x1d\x07\x11"] = _loc2_;
      return this["\x03\x0f"]();
   }
   function §\x03\x1b§()
   {
      return this["\x1d\x12\x07"];
   }
   function §\x18\x13§(§\x19\x03\x01§)
   {
      this["\x1d\x12\x07"] = _loc2_;
      return this["\x03\x1b"]();
   }
   function §\x03\x07§()
   {
      return this["\x1d\x07\x10"];
   }
   function §\x17\x18§(§\x19\x03\x01§)
   {
      this["\x1d\x07\x10"] = _loc2_;
      return this["\x03\x07"]();
   }
   function §\x1e\x16\x01§()
   {
      return this["\x1b\x1c\x01"];
   }
   function §\x10\x19§(§\x15\x1b\x04§)
   {
      if(this["\x1b\x1c\x01"].length == _loc2_.length)
      {
         this["\x1d\x18\x18"] = 0;
         var _loc3_ = 0;
         while(_loc3_ < _loc2_.length)
         {
            this["\x1b\x1d\x16"][_loc3_] = new MovieClipLoader();
            this["\x1b\x1d\x16"][_loc3_].addListener(this);
            this["\x1b\x1d\x16"][_loc3_].loadClip(_loc2_[_loc3_ != 0 ? _loc2_.length - _loc3_ : 0],this["\x1b\x1c\x02"][_loc3_]);
            this["\x1b\x1c\x02"][_loc3_]._visible = false;
            _loc3_ = _loc3_ + 1;
         }
      }
      this["\x1b\x1c\x01"] = _loc2_;
      return this["\x1e\x16\x01"]();
   }
   function §\x1e\x11\x1d§()
   {
      return this["\x1c\x01\x1c"];
   }
   function §\x0e\x13§(§\x16\b\b§)
   {
      this["\x1c\x01\x1c"] = _loc2_;
      return this["\x1e\x11\x1d"]();
   }
   function §\x1e\x12\x01§()
   {
      return this["\x1d\x12\x19"];
   }
   function §\x0e\x14§(§\x19\x03\x01§)
   {
      this["\x1d\x12\x19"] = _loc2_;
      return this["\x1e\x12\x01"]();
   }
   function §\x1e\x17\r§()
   {
      return this["\x1d\x14\x13"] != this["\x1b\x1c\x01"].length ? this["\x1d\x14\x13"] : 0;
   }
   function §\x11\x11§(§\x19\x03\x01§)
   {
      this["\x1b\f\x18"](_loc2_,true);
      return this["\x1e\x17\r"]();
   }
   function §\x1e\x15\x1d§()
   {
      return this["\x1b\x1c\x02"];
   }
   function initialize(§\x19\x06\x1d§)
   {
      this["\x1b\x1c\x01"] = _loc2_;
      this["\x17\n\x01"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.ClassSelector.CLASS_NAME);
   }
   function createChildren()
   {
   }
   function §\x17\n\x01§()
   {
      var _loc2_ = Math.PI / 180 * 90;
      this["\x1d\x18\x18"] = 0;
      var _loc3_ = 0;
      while(_loc3_ < this["\x1b\x1c\x01"].length)
      {
         this["\x1b\x1c\x02"][_loc3_] = this.createEmptyMovieClip("node" + (this["\x1b\x1c\x01"].length - _loc3_),this["\x1b\x1c\x01"].length - _loc3_);
         this["\x1b\x1d\x16"][_loc3_] = new MovieClipLoader();
         this["\x1b\x1d\x16"][_loc3_].addListener(this);
         this["\x1b\x1d\x16"][_loc3_].loadClip(this["\x1b\x1c\x01"][_loc3_ != 0 ? this["\x1b\x1c\x01"].length - _loc3_ : 0],this["\x1b\x1c\x02"][_loc3_]);
         this["\x1b\x1c\x02"][_loc3_]._visible = false;
         _loc3_ = _loc3_ + 1;
      }
   }
   function §\x1b\x14\x01§()
   {
      var _loc2_ = Math.PI / 180 * 90;
      var _loc3_ = 0;
      while(_loc3_ < this["\x1b\x1c\x02"].length)
      {
         this["\x1b\x1c\x02"][_loc3_]._x = Math.cos(_loc2_ + this["\x1d\x14\x1a"]) * this["\x1e\x11\x03"];
         this["\x1b\x1c\x02"][_loc3_]._y = Math.sin(_loc2_ + this["\x1d\x14\x1a"]) * this["\x1e\x11\x05"];
         var _loc4_ = (this["\x1b\x1c\x02"][_loc3_]._y + this["\x1e\x11\x05"]) / (this["\x1e\x11\x05"] * 2) * (this["\x1d\x07\x11"] - this["\x1d\x12\b"]) + this["\x1d\x12\b"];
         this["\x1b\x1c\x02"][_loc3_]._xscale = this["\x1b\x1c\x02"][_loc3_]._yscale = _loc4_ > 0 ? _loc4_ : 1;
         this["\x1b\x1c\x02"][_loc3_]._alpha = (this["\x1b\x1c\x02"][_loc3_]._y + this["\x1e\x11\x05"]) / (this["\x1e\x11\x05"] * 2) * (this["\x1d\x07\x10"] - this["\x1d\x12\x07"]) + this["\x1d\x12\x07"];
         this["\x1b\x1c\x02"][_loc3_]._visible = this["\x1b\x1c\x02"][_loc3_]._y > 0;
         if(this["\x1b\x1c\x02"][_loc3_]._visible)
         {
            var _loc5_ = Math.floor((_loc2_ + this["\x1d\x14\x1a"]) * 180 / Math.PI % 360);
            var _loc6_ = Math.floor(360 / this["\x1b\x1c\x02"].length);
            this["\x1b\x1c\x02"][_loc3_].slideIter = 0 - Math.ceil((_loc5_ - 90) / _loc6_);
            var ref = this;
            this["\x1b\x1c\x02"][_loc3_].onRelease = function()
            {
               ref.slide(this.slideIter);
            };
         }
         _loc2_ += Math.PI / 180 * (360 / this["\x1b\x1c\x02"].length);
         _loc3_ = _loc3_ + 1;
      }
   }
   function garbageCollector()
   {
      var _loc2_ = new Array();
      var _loc3_ = 0;
      while(_loc3_ < this["\x1b\x1e\x12"].length)
      {
         if(this["\x1b\x1e\x12"][_loc3_].mc != undefined)
         {
            _loc2_.push(this["\x1b\x1e\x12"][_loc3_]);
         }
         _loc3_ = _loc3_ + 1;
      }
      this["\x1b\x1e\x12"] = _loc2_;
   }
   function registerColor(§\x18\x1b\f§, c)
   {
      this["\x1b\x1e\x12"].push({mc:_loc2_,z:c});
      this.garbageCollector();
   }
   function §\x1b\x14\x10§(§\x1b\x1b\x07§, §\x16\x1d\x06§)
   {
      if(this["\x1d\x18\x18"] < this["\x1b\x1c\x01"].length)
      {
         this["\x1c\x01\x0f"][_loc2_] = _loc3_;
      }
      else
      {
         var _loc4_ = 0;
         while(_loc4_ < this["\x1b\x1e\x12"].length)
         {
            if(this["\x1b\x1e\x12"][_loc4_].z == _loc2_)
            {
               this.applyColor(this["\x1b\x1e\x12"][_loc4_].mc,this["\x1b\x1e\x12"][_loc4_].z,_loc3_);
            }
            _loc4_ = _loc4_ + 1;
         }
      }
   }
   function applyColor(§\x18\x1b\f§, §\x1b\x1b\x07§, §\x16\x1d\x06§)
   {
      if(_loc4_ == -1 || _loc4_ == undefined)
      {
         var _loc5_ = new Color(_loc2_);
         _loc5_.setTransform({ra:100,ga:100,ba:100,rb:0,gb:0,bb:0});
         return undefined;
      }
      var _loc6_ = (_loc4_ & 16711680) >> 16;
      var _loc7_ = (_loc4_ & 65280) >> 8;
      var _loc8_ = _loc4_ & 255;
      var _loc9_ = new Color(_loc2_);
      var _loc10_ = new Object();
      _loc10_ = {ra:0,ga:0,ba:0,rb:_loc6_,gb:_loc7_,bb:_loc8_};
      _loc9_.setTransform(_loc10_);
   }
   function §\x1b\f\x18§(§\x19\b\x14§, §\x16\x0f\x0b§)
   {
      if(_loc2_ > this["\x1b\x1c\x01"].length)
      {
         return undefined;
      }
      this["\x1c\x06\x17"] = false;
      delete this.onEnterFrame;
      var _loc4_ = Math.PI / 180 * 360 / this["\x1b\x1c\x01"].length;
      this["\x1d\x14\x13"] = _loc2_;
      this["\x1a\x18\x18"](_loc4_ * _loc2_);
      this["\x19\x1a\x0e"](_loc3_);
   }
   function slide(§\x19\b\x14§)
   {
      if(this["\x1c\x06\x17"])
      {
         return undefined;
      }
      if(this["\x1d\x14\x13"] + _loc2_ > this["\x1b\x1c\x01"].length)
      {
         this["\x1d\x14\x13"] = this["\x1d\x14\x13"] + _loc2_ - this["\x1b\x1c\x01"].length;
      }
      else if(this["\x1d\x14\x13"] + _loc2_ < 0)
      {
         this["\x1d\x14\x13"] = this["\x1d\x14\x13"] + _loc2_ + this["\x1b\x1c\x01"].length;
      }
      else
      {
         this["\x1d\x14\x13"] += _loc2_;
      }
      if(!this["\x1c\x01\x1c"])
      {
         this["\x1b\f\x18"](this["\x1d\x14\x13"]);
         return undefined;
      }
      this["\x1c\x06\x17"] = true;
      var _loc3_ = Math.PI / 180 * 360 / this["\x1b\x1c\x01"].length;
      var t = 0;
      var b = this["\x1d\x14\x1a"];
      var c = this["\x1d\x14\x1a"] + _loc3_ * _loc2_ - this["\x1d\x14\x1a"];
      var d = Math.abs(_loc2_) * this["\x1d\x12\x19"];
      var r = this;
      this.onEnterFrame = function()
      {
         r["\x1a\x18\x18"](r["\x17\x0b\x12"](t++,b,c,d));
         if(t > d)
         {
            delete this.onEnterFrame;
            r["\x19\x1a\x0e"]();
         }
      };
   }
   function §\x1a\x18\x18§(§\x19\x03\x01§)
   {
      this["\x1d\x14\x1a"] = _loc2_;
      this.update();
   }
   function §\x17\x0b\x12§(§\x1b\r\x11§, §\x16\b\b§, c, d)
   {
      return c * _loc2_ / _loc5_ + _loc3_;
   }
   function §\x19\x1a\x0e§(§\x16\x0f\x0b§)
   {
      this["\x1c\x06\x17"] = false;
      if(!_loc2_)
      {
         this["\x17\x07\x19"]({type:"change",value:this["\x17\x03\x13"]});
      }
   }
   function onLoadComplete(§\x18\x1b\f§)
   {
      this["\x19\x1d\x12"](_loc2_);
   }
   function onLoadError(§\x18\x1b\f§)
   {
      this["\x19\x1d\x12"](_loc2_);
   }
   function §\x19\x1d\x12§(§\x18\x1b\f§)
   {
      this["\x1d\x18\x18"]++;
      delete this["\x1b\x1d\x16"][Number(_loc2_._name.substr(4))];
      var ref = this;
      _loc2_.registerColor = function(§\x1b\x10\x18§, §\x19\x03\x01§)
      {
         ref.registerColor(_loc2_,_loc3_);
      };
      if(this["\x1d\x18\x18"] == this["\x1b\x1c\x01"].length)
      {
         var _loc3_ = 1;
         while(_loc3_ <= dofus.graphics.gapi.controls.ClassSelector["\x18\x19\x14"])
         {
            this.addToQueue({object:this,method:this["\x1b\x14\x10"],params:[_loc3_,this["\x1c\x01\x0f"][_loc3_]]});
            _loc3_ = _loc3_ + 1;
         }
         this.update();
      }
   }
}
