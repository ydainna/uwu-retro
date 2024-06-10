class ank.gapi.§\x17\x01\x06§.CircleChrono extends ank.gapi.core.UIBasicComponent
{
   static var §\x16\x1b\x10§ = "CircleChrono";
   var §\x1e\x07\x18§ = "CircleChronoHalfDefault";
   var §\x1d\x16\t§ = 5;
   var §\x1d\x13\x07§ = -1;
   function CircleChrono()
   {
      super();
   }
   function §\x0f\x0b§(§\x1a\x10\x02§)
   {
      this["\x1e\x07\x18"] = _loc2_;
      return this["\x1e\x12\x19"]();
   }
   function §\x13\x11§(§\x19\x07\x17§)
   {
      _loc2_ = Number(_loc2_);
      if(_global.isNaN(_loc2_))
      {
         return undefined;
      }
      if(_loc2_ < 0)
      {
         return undefined;
      }
      this["\x1d\x16\t"] = _loc2_;
      return this.finalCountDownTrigger;
   }
   function §\x1a\x16\x19§(§\x19\f\x03§, §\x19\x05\x15§)
   {
      _global.clearInterval(this["\x1d\x17\t"]);
      this["\x17\x07\x19"]({type:"finish"});
      if(_loc2_ > 100)
      {
         _loc2_ = 100;
      }
      else if(_loc2_ < 0)
      {
         _loc2_ = 0;
      }
      this["\x1d\x19\x19"] = 100;
      this["\x1d\x1e\x11"] = 100 - _loc2_;
      this.draw(_loc3_);
      this["\x16\x1b\n"]();
   }
   function startTimer(§\x19\x06\f§)
   {
      _global.clearInterval(this["\x1d\x17\t"]);
      _loc2_ = Number(_loc2_);
      if(_global.isNaN(_loc2_))
      {
         return undefined;
      }
      if(_loc2_ < 0)
      {
         return undefined;
      }
      this["\x1d\x19\x19"] = _loc2_;
      this["\x1d\x1e\x11"] = _loc2_;
      this.updateTimer();
      this["\x1d\x17\t"] = _global.setInterval(this,"updateTimer",1000);
   }
   function stopTimer()
   {
      _global.clearInterval(this["\x1d\x17\t"]);
      this["\x17\x07\x19"]({type:"finish"});
      this.addToQueue({object:this,method:this.initialize});
   }
   function §\x1a\n\x12§()
   {
      this.draw();
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.CircleChrono.CLASS_NAME);
   }
   function createChildren()
   {
      this.attachMovie(this["\x1e\x07\x18"],"_mcLeft",10);
      this.attachMovie(this["\x1e\x07\x18"],"_mcRight",20);
   }
   function §\x16\x05\f§()
   {
      this._mcLeft._width = this._mcRight._width = this["\x1d"];
      this._mcLeft._height = this._mcRight._height = this["\x0e\x06"];
      this._mcLeft._xscale *= -1;
      this._mcLeft._yscale *= -1;
      this._mcLeft._x = this._mcRight._x = this["\x1d"] / 2;
      this._mcLeft._y = this._mcRight._y = this["\x0e\x06"] / 2;
   }
   function draw(§\x19\x05\x15§)
   {
      var _loc3_ = _loc2_ == undefined ? this.getStyle().bgcolor : _loc2_;
      if(_loc3_ != undefined && this["\x1d\x13\x07"] != _loc2_)
      {
         this["\x1d\x13\x07"] = _loc3_;
         this["\x1a\x18\x03"](this._mcLeft.bg_mc,_loc3_);
         this["\x1a\x18\x03"](this._mcRight.bg_mc,_loc3_);
      }
   }
   function §\x16\x1b\n§()
   {
      var _loc2_ = this["\x1d\x1e\x11"] / this["\x1d\x19\x19"];
      var _loc3_ = 360 * (1 - this["\x1d\x1e\x11"] / this["\x1d\x19\x19"]);
      if(_loc3_ < 180)
      {
         this["\x1a\x19\f"](this._mcRight,_loc3_);
         this["\x1a\x19\f"](this._mcLeft,0);
      }
      else
      {
         this["\x1a\x19\f"](this._mcRight,180);
         this["\x1a\x19\f"](this._mcLeft,_loc3_ - 180);
      }
   }
   function updateTimer()
   {
      this["\x17\x07\x19"]({type:"tictac"});
      this["\x16\x1b\n"]();
      if(this["\x1d\x1e\x11"] - 5 <= this["\x1d\x16\t"])
      {
         this["\x17\x07\x19"]({type:"beforeFinalCountDown",value:Math.ceil(this["\x1d\x1e\x11"])});
      }
      if(this["\x1d\x1e\x11"] <= this["\x1d\x16\t"])
      {
         this["\x17\x07\x19"]({type:"finalCountDown",value:Math.ceil(this["\x1d\x1e\x11"])});
      }
      this["\x1d\x1e\x11"]--;
      if(this["\x1d\x1e\x11"] < 0)
      {
         this.stopTimer();
      }
   }
   function initialize()
   {
      this["\x1a\x19\f"](this._mcLeft,0);
      this["\x1a\x19\f"](this._mcRight,0);
   }
   function §\x1a\x19\f§(§\x18\x1b\f§, §\x19\x03\x10§)
   {
      _loc2_._mcMask._rotation = _loc3_;
   }
}
