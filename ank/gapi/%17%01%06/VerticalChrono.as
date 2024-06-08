class ank.gapi.§\x17\x01\x06§.VerticalChrono extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   static var §\x16\x1b\x10§ = "VerticalChrono";
   function VerticalChrono()
   {
      super();
   }
   function startTimer(§\x19\x06\f§, §\x19\n\n§)
   {
      this["\x1d\x1e\x11"] = Math.ceil(_loc2_);
      this["\x1d\x19\x19"] = _loc3_ != undefined ? _loc3_ : this["\x1d\x1e\x11"];
      this.addToQueue({object:this,method:this.updateTimer});
      _global.clearInterval(this["\x1d\x17\t"]);
      this["\x1d\x17\t"] = _global.setInterval(this,"updateTimer",1000);
   }
   function stopTimer()
   {
      _global.clearInterval(this["\x1d\x17\t"]);
      this["\x1d\x0f\r"]._height = 0;
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.VerticalChrono.CLASS_NAME);
   }
   function createChildren()
   {
      this.createEmptyMovieClip("\x1d\x0f\r",10);
   }
   function §\x16\x05\f§()
   {
      this["\x1d\x0f\r"]._width = this["\x1d"];
      this["\x1d\x0f\r"]._height = 0;
      this["\x1d\x0f\r"]._x = 0;
      this["\x1d\x0f\r"]._y = this["\x0e\x06"];
   }
   function draw()
   {
      var _loc2_ = this.getStyle();
      var _loc3_ = _loc2_ == undefined ? 0 : _loc2_.bgcolor;
      var _loc4_ = _loc2_ == undefined ? 100 : _loc2_.bgalpha;
      this["\x1d\x0f\r"].clear();
      this["\x17\n\x0f"](this["\x1d\x0f\r"],0,0,100,100,0,_loc3_,_loc4_);
   }
   function updateTimer()
   {
      var _loc2_ = this["\x1d\x1e\x11"] / this["\x1d\x19\x19"];
      var _loc3_ = (this["\x1d\x19\x19"] - this["\x1d\x1e\x11"]) / this["\x1d\x19\x19"] * this["\x0e\x06"];
      var _loc4_ = _loc2_ * this["\x0e\x06"];
      this["\x1d\x0f\r"]._y = _loc4_;
      this["\x1d\x0f\r"]._height = _loc3_;
      if(this["\x1d\x1e\x11"] < 0)
      {
         this.stopTimer();
         this["\x17\x07\x19"]({type:"endTimer"});
      }
      this["\x1d\x1e\x11"]--;
   }
}
