class ank.battlefield.mc.§\x16\x13\x10§ extends MovieClip
{
   function §\x16\x13\x10§(§\x1b\x0f\x11§, §\x1b\x19\x14§, §\x1b\x1a\x14§, §\x18\x1a\x04§)
   {
      super();
      this.initialize(_loc3_,_loc4_,_loc5_,_loc6_);
   }
   function initialize(§\x1b\x0f\x11§, §\x1b\x19\x14§, §\x1b\x1a\x14§, §\x18\x1a\x04§)
   {
      this["\x1d\x07\x12"] = _loc5_;
      this.createTextField("_txtf",20,0,0,150,100);
      this._txtf.autoSize = "left";
      this._txtf.wordWrap = true;
      this._txtf.embedFonts = true;
      this._txtf.multiline = true;
      this._txtf.selectable = false;
      this._txtf.html = true;
      this.draw(_loc2_,_loc3_,_loc4_);
   }
   function draw(§\x1b\x0f\x11§, §\x1b\x19\x14§, §\x1b\x1a\x14§)
   {
      this._txtf.htmlText = _loc2_;
      this._txtf.setTextFormat(ank.battlefield.Constants["\x16\x13\x1a"]);
      var _loc5_ = this._txtf.textHeight > 10 ? this._txtf.textHeight : 11;
      var _loc6_ = this._txtf.textWidth > 10 ? this._txtf.textWidth + 4 : 11;
      this["\x17\t\x18"](_loc6_,_loc5_);
      this["\x16\x01\x0b"](_loc6_ + ank.battlefield.Constants["\x16\x13\x15"] * 2,_loc5_ + ank.battlefield.Constants["\x16\x13\x15"] * 2 + ank.battlefield.Constants["\x16\x13\x16"],_loc3_,_loc4_);
      var _loc7_ = new ank.utils.ExtendedString(_loc2_).xmlUnescape().length;
      var _loc8_ = ank.battlefield.Constants["\x16\x13\x19"] + _loc7_ * ank.battlefield.Constants["\x16\x13\x18"];
      ank.utils.Timer.setTimer(this,"battlefield",this,this.remove,_loc8_);
   }
   function remove()
   {
      this.swapDepths(1);
      this.removeMovieClip();
   }
   function §\x17\t\x18§(§\x1b\x18\x10§, §\x18\x04\x1a§)
   {
      var _loc4_ = ank.battlefield.Constants["\x16\x13\x15"] * 2;
      this.createEmptyMovieClip("\x1c\x04\x0f",10);
      this["\x1c\x04\x0f"].lineStyle(1,ank.battlefield.Constants["\x16\x13\x14"],100);
      this["\x1c\x04\x0f"].beginFill(ank.battlefield.Constants["\x16\x13\x13"],100);
      this["\x1c\x04\x0f"].moveTo(0,0 - ank.battlefield.Constants["\x16\x13\x16"]);
      this["\x1c\x04\x0f"].lineTo(ank.battlefield.Constants["\x16\x13\x17"] / 2,0 - ank.battlefield.Constants["\x16\x13\x16"]);
      this["\x1c\x04\x0f"].lineTo(0,0);
      this["\x1c\x04\x0f"].lineTo(ank.battlefield.Constants["\x16\x13\x17"],0 - ank.battlefield.Constants["\x16\x13\x16"]);
      this["\x1c\x04\x0f"].lineTo(_loc2_ + _loc4_,0 - ank.battlefield.Constants["\x16\x13\x16"]);
      this["\x1c\x04\x0f"].lineTo(_loc2_ + _loc4_,0 - _loc3_ - _loc4_ - ank.battlefield.Constants["\x16\x13\x16"]);
      this["\x1c\x04\x0f"].lineTo(0,0 - _loc3_ - _loc4_ - ank.battlefield.Constants["\x16\x13\x16"]);
      this["\x1c\x04\x0f"].endFill();
   }
   function §\x16\x01\x0b§(§\x1b\x18\x10§, §\x18\x04\x1a§, §\x1b\x19\x14§, §\x1b\x1a\x14§)
   {
      var _loc6_ = this["\x1d\x07\x12"] - _loc2_;
      var _loc7_ = _loc3_ + ank.battlefield.Constants["\x16\x13\x1d"];
      if(_loc4_ > _loc6_)
      {
         this._txtf._x = 0 - _loc2_ + ank.battlefield.Constants["\x16\x13\x15"];
         this["\x1c\x04\x0f"]._xscale = -100;
      }
      else
      {
         this._txtf._x = ank.battlefield.Constants["\x16\x13\x15"];
      }
      if(_loc5_ < _loc7_)
      {
         this._txtf._y = ank.battlefield.Constants["\x16\x13\x16"] + ank.battlefield.Constants["\x16\x13\x15"] - 3;
         this["\x1c\x04\x0f"]._yscale = -100;
      }
      else
      {
         this._txtf._y = 0 - _loc3_ + ank.battlefield.Constants["\x16\x13\x15"] - 3 - ank.battlefield.Constants["\x16\x13\x1d"];
         this["\x1c\x04\x0f"]._y = 0 - ank.battlefield.Constants["\x16\x13\x1d"];
      }
      this._x = _loc4_;
      this._y = _loc5_;
   }
}
