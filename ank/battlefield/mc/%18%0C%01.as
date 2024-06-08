class ank.battlefield.mc.§\x18\f\x01§ extends MovieClip
{
   function §\x18\f\x01§()
   {
      super();
   }
   function initialize(§\x16\b\b§, §\x19\x12\x05§, §\x16\r\r§)
   {
      this["\x1c\x02\x02"] = _loc2_;
      this["\x1e\x02\x12"] = _loc3_;
      this._bInteractive = _loc4_ != undefined ? _loc4_ : true;
   }
   function select(§\x16\x10\x02§)
   {
      var _loc3_ = new Color(this);
      var _loc4_ = new Object();
      if(_loc2_)
      {
         _loc4_ = {ra:60,rb:80,ga:60,gb:80,ba:60,bb:80};
      }
      else
      {
         _loc4_ = {ra:100,rb:0,ga:100,gb:0,ba:100,bb:0};
      }
      _loc3_.setTransform(_loc4_);
   }
   function §\x18\x16\x01§(§\x1a\x1b\x0f§, §\x16\t\x0f§)
   {
      _loc3_ = _loc3_ != undefined ? _loc3_ : true;
      this.createEmptyMovieClip("\x1d\x0b\b",10);
      this["\x1d\r\n"] = new MovieClipLoader();
      if(_loc3_)
      {
         this["\x1d\r\n"].addListener(this);
      }
      this["\x1d\r\n"].loadClip(_loc2_,this["\x1d\x0b\b"]);
   }
   function §\x1e\x15\x04§()
   {
      return this["\x1e\x02\x12"];
   }
   function §\x1e\x07\x06§(§\x1b\x18\n§)
   {
      if(this._bInteractive)
      {
         this["\x1c\x02\x02"]["\x19\x1a\x1a"](this);
      }
   }
   function §\x1e\x07\n§(§\x1b\x18\n§)
   {
      if(this._bInteractive)
      {
         this["\x1c\x02\x02"]["\x19\x1a\x1c"](this);
      }
   }
   function §\x1e\x07\t§(§\x1b\x18\n§)
   {
      if(this._bInteractive)
      {
         this["\x1c\x02\x02"]["\x19\x1a\x1b"](this);
      }
   }
   function onLoadInit(§\x18\x1b\f§)
   {
      var _loc3_ = _loc2_._width;
      var _loc4_ = _loc2_._height;
      var _loc5_ = _loc3_ / _loc4_;
      var _loc6_ = ank.battlefield.Constants["\x17\x0e\x13"] / ank.battlefield.Constants["\x17\x0e\x13"];
      if(_loc5_ == _loc6_)
      {
         _loc2_._width = ank.battlefield.Constants["\x17\x0e\x13"];
         _loc2_._height = ank.battlefield.Constants["\x17\x0e\x13"];
      }
      else if(_loc5_ > _loc6_)
      {
         _loc2_._width = ank.battlefield.Constants["\x17\x0e\x13"];
         _loc2_._height = ank.battlefield.Constants["\x17\x0e\x13"] / _loc5_;
      }
      else
      {
         _loc2_._width = ank.battlefield.Constants["\x17\x0e\x13"] * _loc5_;
         _loc2_._height = ank.battlefield.Constants["\x17\x0e\x13"];
      }
      var _loc7_ = _loc2_.getBounds(_loc2_._parent);
      _loc2_._x = 0 - _loc7_.xMin - _loc2_._width / 2;
      _loc2_._y = 0 - _loc7_.yMin - _loc2_._height;
   }
}
