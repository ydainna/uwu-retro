class ank.gapi.§\x17\x01\x06§.CircleBar extends ank.gapi.core.UIBasicComponent
{
   static var §\x16\x1b\x10§ = "CircleBar";
   var §\x1e\x01\x03§ = 0;
   var §\x1d\x1a\x02§ = 0;
   var §\x1d\x19\x0e§ = 100;
   function CircleBar()
   {
      super();
   }
   function §\x0f\x0b§(§\x1a\x10\x02§)
   {
      this["\x1e\x07\x18"] = _loc2_;
      return this["\x1e\x12\x19"]();
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
      if(_loc2_ > this["\x1d\x19\x0e"])
      {
         _loc2_ = this["\x1d\x19\x0e"];
      }
      if(_loc2_ < this["\x1d\x1a\x02"])
      {
         _loc2_ = this["\x1d\x1a\x02"];
      }
      this["\x1e\x01\x03"] = Number(_loc2_);
      this.addToQueue({object:this,method:this["\x16\x04\x15"]});
      return this["\f\x1c"]();
   }
   function §\f\x1c§()
   {
      return this["\x1e\x01\x03"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.CircleBar.CLASS_NAME);
   }
   function createChildren()
   {
      this.attachMovie(this["\x1e\x07\x18"],"_mcCircle",10);
   }
   function size()
   {
      this._mcCircle["\x1a\x19\x18"](this["\x1d"],this["\x0e\x06"]);
   }
   function draw()
   {
      this["\x1a\x18\x03"](this._mcCircle,this.getStyle().bgcolor);
   }
   function §\x16\x04\x15§()
   {
      var _loc2_ = this["\x1e\x01\x03"] - this["\x1d\x1a\x02"];
      if(_loc2_ == 0)
      {
         return undefined;
      }
      var _loc3_ = this["\x1d\x19\x0e"] - this["\x1d\x1a\x02"];
      this._mcCircle.gotoAndStop(Math.floor(_loc2_ / _loc3_ * 101));
   }
}
