class ank.gapi.§\x17\x01\x06§.ProgressBar extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   static var §\x16\x1b\x10§ = "ProgressBar";
   var §\x1e\f\b§ = "ProgressBarDefaultRenderer";
   var §\x1e\x01\x03§ = 0;
   var §\x1d\x1a\x02§ = 0;
   var §\x1d\x19\x0e§ = 100;
   var _nUberValue = 0;
   var _nUberMinimum = 0;
   var _nUberMaximum = 100;
   function ProgressBar()
   {
      super();
   }
   function §\x1b\x10§(§\x1b\x07\x19§)
   {
      if(this["\x1c\x05\x07"])
      {
         return undefined;
      }
      this["\x1e\f\b"] = _loc2_;
      return this.renderer;
   }
   function §\x18\x14§(§\x19\n\x0f§)
   {
      this["\x1d\x1a\x02"] = Number(_loc2_);
      return this["\x03\x1c"]();
   }
   function §\x03\x1c§()
   {
      return this["\x1d\x1a\x02"];
   }
   function §\x17\x1b§(§\x19\t\x1d§)
   {
      this["\x1d\x19\x0e"] = Number(_loc2_);
      return this["\x03\n"]();
   }
   function §\x03\n§()
   {
      return this["\x1d\x19\x0e"];
   }
   function §\x04§(§\x19\x10\x10§)
   {
      if(_loc2_ >= this["\x1d\x19\x0e"])
      {
         _loc2_ = this["\x1d\x19\x0e"];
      }
      if(_loc2_ <= this["\x1d\x1a\x02"])
      {
         _loc2_ = this["\x1d\x1a\x02"];
      }
      this["\x1e\x01\x03"] = Number(_loc2_);
      this.addToQueue({object:this,method:this["\x16\x04\x15"]});
      return this["\f\x1c"]();
   }
   function set showGradient(bShow)
   {
      this._bShowGradient = _loc2_;
   }
   function set showAnimOnLoad(bShow)
   {
      this._bShowAnimOnLoad = _loc2_;
   }
   function §\f\x1c§()
   {
      return this["\x1e\x01\x03"];
   }
   function set uberValue(nUberValue)
   {
      if(nUberValue >= this._nUberMaximum)
      {
         nUberValue = this._nUberMaximum;
      }
      if(nUberValue <= this._nUberMinimum)
      {
         nUberValue = this._nUberMinimum;
      }
      this._nUberValue = Number(nUberValue);
      this.addToQueue({object:this,method:this.applyValueUber});
   }
   function get uberValue()
   {
      return this._nUberValue;
   }
   function set uberMinimum(§\x19\n\x0f§)
   {
      this._nUberMinimum = Number(_loc2_);
   }
   function get uberMinimum()
   {
      return this._nUberMinimum;
   }
   function set uberMaximum(§\x19\t\x1d§)
   {
      this._nUberMaximum = Number(_loc2_);
   }
   function get uberMaximum()
   {
      return this._nUberMaximum;
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.ProgressBar.CLASS_NAME);
   }
   function createChildren()
   {
      this.attachMovie(this["\x1e\f\b"],"_mcRenderer",10);
      this.attachMovie(this["\x1e\f\b"],"_mcRendererUber",20);
      this._mcRendererUber["\x1d\b\x17"]._visible = false;
      this._mcRendererUber["\x1d\b\x1a"]._visible = false;
      this._mcRendererUber["\x1d\b\x19"]._visible = false;
      this["\x18\x07\x04"](true);
      this.uberHideUp(true);
      this.hideGradient(true);
      this.uberHideGradient(true);
   }
   function size()
   {
      super.size();
   }
   function §\x16\x05\f§()
   {
      var _loc2_ = [this._mcRenderer,this._mcRendererUber];
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         var _loc4_ = _loc2_[_loc3_];
         _loc4_["\x1d\b\x17"]._height = _loc4_["\x1d\b\x19"]._height = _loc4_["\x1d\b\x1a"]._height = this["\x0e\x06"];
         var _loc5_ = _loc4_["\x1d\b\x17"]._yscale;
         _loc4_["\x1d\b\x17"]._xscale = _loc4_["\x1d\x11\x13"]._xscale = _loc4_["\x1d\x11\x13"]._yscale = _loc5_;
         _loc4_["\x1d\b\x1a"]._xscale = _loc4_["\x1d\x11\x15"]._xscale = _loc4_["\x1d\x11\x15"]._yscale = _loc5_;
         _loc4_["\x1d\x11\x14"]._yscale = _loc5_;
         var _loc6_ = _loc4_["\x1d\b\x17"]._width;
         var _loc7_ = _loc4_["\x1d\b\x17"]._width;
         _loc4_["\x1d\b\x17"]._x = _loc4_["\x1d\b\x17"]._y = _loc4_["\x1d\b\x19"]._y = _loc4_["\x1d\b\x1a"]._y = 0;
         _loc4_["\x1d\x11\x13"]._x = _loc4_["\x1d\x11\x13"]._y = _loc4_["\x1d\x11\x14"]._y = _loc4_["\x1d\x11\x15"]._y = 0;
         _loc4_["\x1d\b\x19"]._x = _loc4_["\x1d\x11\x14"]._x = _loc6_;
         _loc4_["\x1d\b\x1a"]._x = this["\x1d"] - _loc7_;
         _loc4_["\x1d\b\x19"]._width = this["\x1d"] - _loc6_ - _loc7_ + 0.5;
         _loc4_["\x1d\x11\x13"]._width += 0.5;
         if(this._bShowGradient)
         {
            _loc4_._mcGradientLeft._xscale = _loc4_._mcGradientLeft._yscale = _loc5_;
            _loc4_._mcGradientRight._xscale = _loc4_._mcGradientRight._yscale = _loc5_;
            _loc4_._mcGradientMiddle._yscale = _loc5_;
            _loc4_._mcGradientLeft._x = _loc4_._mcGradientLeft._y = _loc4_._mcGradientMiddle._y = _loc4_._mcGradientRight._y = 0;
            _loc4_._mcGradientMiddle._x = _loc6_;
            _loc4_._mcGradientLeft._width = _loc4_._mcGradientLeft._width;
         }
         _loc3_ = _loc3_ + 1;
      }
   }
   function draw()
   {
      var _loc3_ = this.getStyle();
      var _loc4_ = [this._mcRenderer,this._mcRendererUber];
      var _loc5_ = 0;
      while(_loc5_ < _loc4_.length)
      {
         var _loc6_ = _loc4_[_loc5_];
         var _loc7_ = _loc6_ != this._mcRendererUber ? "" : "uber";
         var _loc2_ = _loc6_["\x1d\b\x17"];
         for(var k in _loc2_)
         {
            var _loc8_ = k.split("_")[0];
            this["\x1a\x18\x03"](_loc2_[k],_loc3_[_loc7_ + _loc8_ + "color"]);
         }
         _loc2_ = _loc6_["\x1d\b\x19"];
         for(var k in _loc2_)
         {
            var _loc9_ = k.split("_")[0];
            this["\x1a\x18\x03"](_loc2_[k],_loc3_[_loc7_ + _loc9_ + "color"]);
         }
         _loc2_ = _loc6_["\x1d\b\x1a"];
         for(var k in _loc2_)
         {
            var _loc10_ = k.split("_")[0];
            this["\x1a\x18\x03"](_loc2_[k],_loc3_[_loc7_ + _loc10_ + "color"]);
         }
         _loc2_ = _loc6_["\x1d\x11\x13"];
         for(var k in _loc2_)
         {
            var _loc11_ = k.split("_")[0];
            this["\x1a\x18\x03"](_loc2_[k],_loc3_[_loc7_ + _loc11_ + "color"]);
         }
         _loc2_ = _loc6_["\x1d\x11\x14"];
         for(var k in _loc2_)
         {
            var _loc12_ = k.split("_")[0];
            this["\x1a\x18\x03"](_loc2_[k],_loc3_[_loc7_ + _loc12_ + "color"]);
         }
         _loc2_ = _loc6_["\x1d\x11\x15"];
         for(var k in _loc2_)
         {
            var _loc13_ = k.split("_")[0];
            this["\x1a\x18\x03"](_loc2_[k],_loc3_[_loc7_ + _loc13_ + "color"]);
         }
         _loc5_ = _loc5_ + 1;
      }
   }
   function §\x18\x07\x04§(§\x16\f\x12§)
   {
      this._mcRenderer["\x1d\x11\x13"]._visible = !_loc2_;
      this._mcRenderer["\x1d\x11\x14"]._visible = !_loc2_;
      this._mcRenderer["\x1d\x11\x15"]._visible = !_loc2_;
   }
   function uberHideUp(§\x16\f\x12§)
   {
      this._mcRendererUber["\x1d\x11\x13"]._visible = !_loc2_;
      this._mcRendererUber["\x1d\x11\x14"]._visible = !_loc2_;
      this._mcRendererUber["\x1d\x11\x15"]._visible = !_loc2_;
   }
   function hideGradient(§\x16\f\x12§)
   {
      this._mcRenderer._mcGradientLeft._visible = !_loc2_;
      this._mcRenderer._mcGradientMiddle._visible = !_loc2_;
      this._mcRenderer._mcGradientRight._visible = !_loc2_;
   }
   function uberHideGradient(§\x16\f\x12§)
   {
      this._mcRendererUber._mcGradientLeft._visible = !_loc2_;
      this._mcRendererUber._mcGradientMiddle._visible = !_loc2_;
      this._mcRendererUber._mcGradientRight._visible = !_loc2_;
   }
   function §\x16\x04\x15§()
   {
      var _loc2_ = this._mcRenderer["\x1d\b\x17"]._width;
      var _loc3_ = this._mcRenderer["\x1d\b\x17"]._width;
      var _loc4_ = this["\x1e\x01\x03"] - this["\x1d\x1a\x02"];
      if(_loc4_ == 0)
      {
         this["\x18\x07\x04"](true);
         this.hideGradient(true);
      }
      else
      {
         this["\x18\x07\x04"](false);
         var _loc5_ = this["\x1d\x19\x0e"] - this["\x1d\x1a\x02"];
         var _loc6_ = this["\x1d"] - _loc2_ - _loc3_;
         var _loc7_ = Math.floor(_loc4_ / _loc5_ * _loc6_);
         this._mcRenderer["\x1d\x11\x14"]._width = _loc7_ + 0.5;
         this._mcRenderer["\x1d\x11\x15"]._x = _loc7_ + _loc2_;
         if(this._bShowGradient)
         {
            this.hideGradient(false);
            this._mcRenderer._mcGradientMiddle._width = _loc7_;
            this._mcRenderer._mcGradientRight._x = _loc7_ + _loc2_;
         }
      }
   }
   function applyValueUber()
   {
      if(this._nUberValue == undefined)
      {
         return undefined;
      }
      var _loc2_ = this._mcRendererUber["\x1d\b\x17"]._width;
      var _loc3_ = this._mcRendererUber["\x1d\b\x17"]._width;
      var _loc4_ = this._nUberValue - this._nUberMinimum;
      if(_loc4_ == 0)
      {
         this.uberHideUp(true);
         this.uberHideGradient(true);
      }
      else
      {
         this.uberHideUp(false);
         var _loc5_ = this._nUberMaximum - this._nUberMinimum;
         var _loc6_ = this["\x1d"] - _loc2_ - _loc3_;
         var _loc7_ = Math.floor(_loc4_ / _loc5_ * _loc6_);
         this._mcRendererUber["\x1d\x11\x14"]._width = _loc7_ + 0.5;
         this._mcRendererUber["\x1d\x11\x15"]._x = _loc7_ + _loc2_;
         if(this._bShowGradient)
         {
            this.uberHideGradient(false);
            this._mcRendererUber._mcGradientMiddle._width = _loc7_;
            this._mcRendererUber._mcGradientRight._x = _loc7_ + _loc2_;
         }
      }
   }
   function §\x1a\x16\x07§()
   {
      if(this._bEnabled)
      {
         this.onRollOver = function()
         {
            this["\x17\x07\x19"]({type:"over"});
         };
         this.onRollOut = function()
         {
            this["\x17\x07\x19"]({type:"out"});
         };
      }
      else
      {
         this.onRollOver = undefined;
         this.onRollOut = undefined;
      }
   }
}
