class ank.battlefield.mc.Container extends MovieClip
{
   function Container(§\x16\b\b§, §\x17\x04\x0e§, §\x19\x13\x01§)
   {
      super();
      if(_loc3_ != undefined)
      {
         this.initialize(_loc3_,_loc4_,_loc5_);
      }
   }
   function initialize(§\x16\b\b§, §\x17\x04\x0e§, §\x19\x13\x01§)
   {
      if(_loc3_ == undefined)
      {
         ank.utils.Logger.err("pas de _oDatacenter !");
      }
      this["\x1d\b\x12"] = _loc2_;
      this["\x1e\x03\b"] = _loc3_;
      this["\x1e\x0b\x0b"] = _loc4_;
      this.clear(true);
   }
   function clear(§\x16\f\x06§)
   {
      this["\x18\x19\x10"] = 0;
      this["\x18\x1c\x1c"] = -1000;
      this.zoom(100);
      if(this["\x17\x0e\x12"] == undefined || _loc2_)
      {
         this.createEmptyMovieClip("\x17\x0e\x12",100);
         var _loc3_ = new MovieClipLoader();
         _loc3_.addListener(this._parent);
         if(_loc2_)
         {
            this["\x17\x0e\x12"].clear();
         }
         new org.flashdevelop.utils.FlashConnect.trace("LOAD " + this["\x1e\x0b\x0b"],"ank.battlefield.mc.Container::clear","C:\\Users\\ddallinge\\Git\\client\\src\\ank-common\\classes/ank/battlefield/mc/Container.as",89);
         _loc3_.loadClip(this["\x1e\x0b\x0b"],this["\x17\x0e\x12"]);
      }
      else
      {
         this["\x17\x0e\x12"].clear();
      }
      this.SpriteInfos.removeMovieClip();
      this.createEmptyMovieClip("SpriteInfos",200);
      this["\x1a\x06\n"].removeMovieClip();
      this.createEmptyMovieClip("\x1a\x06\n",300);
      this["\x1b\x0f\x10"].removeMovieClip();
      this.createEmptyMovieClip("\x1b\x0f\x10",400);
      this["\x1a\x02\x19"].removeMovieClip();
      this.createEmptyMovieClip("\x1a\x02\x19",500);
      if(!this["\x18\x16\x0b"])
      {
         this.createEmptyMovieClip("\x18\x16\x0b",600);
      }
   }
   function §\x16\x04\x0f§(§\x16\x0b\x12§)
   {
      var _loc3_ = this["\x1e\x03\b"]["\x18\x18\x0e"].width - 1;
      var _loc4_ = this["\x1e\x03\b"]["\x18\x18\x0e"].height - 1;
      if(_loc2_ == undefined)
      {
         _loc2_ = true;
      }
      this.createEmptyMovieClip("_mcMask",10);
      if(_loc2_)
      {
         this._mcMask.beginFill(0);
         this._mcMask.moveTo(0,0);
         this._mcMask.lineTo(_loc3_ * ank.battlefield.Constants["\x16\x18\t"],0);
         this._mcMask.lineTo(_loc3_ * ank.battlefield.Constants["\x16\x18\t"],_loc4_ * ank.battlefield.Constants["\x16\x18\x01"]);
         this._mcMask.lineTo(0,_loc4_ * ank.battlefield.Constants["\x16\x18\x01"]);
         this._mcMask.lineTo(0,0);
         this._mcMask.endFill();
      }
      else
      {
         this._mcMask.beginFill(0);
         this._mcMask.moveTo(-1000,-1000);
         this._mcMask.lineTo(-1000,-999);
         this._mcMask.lineTo(-999,-999);
         this._mcMask.lineTo(-999,-1000);
         this._mcMask.lineTo(-1000,-1000);
         this._mcMask.endFill();
      }
      this.setMask(this._mcMask);
   }
   function §\x16\x01\f§(§\x1b\x18\n§)
   {
      this["\x1b\x1b\x0e"]();
      this.center();
   }
   function §\x1a\x15\x11§(§\x1a\x02\x11§)
   {
      if(_loc2_ == undefined)
      {
         _loc2_ = new Object();
         _loc2_.ra = 100;
         _loc2_.rb = 0;
         _loc2_.ga = 100;
         _loc2_.gb = 0;
         _loc2_.ba = 100;
         _loc2_.bb = 0;
      }
      var _loc3_ = new Color(this);
      _loc3_.setTransform(_loc2_);
   }
   function zoom(§\x1b\x1b\x04§)
   {
      this._xscale = _loc2_;
      this._yscale = _loc2_;
   }
   function §\x18\x02\x12§()
   {
      return this._xscale;
   }
   function §\x1a\x1b\t§(§\x1b\x19\x14§, §\x1b\x1a\x14§)
   {
      this._x = _loc2_;
      this._y = _loc3_;
   }
   function center(§\x1b\x18\n§)
   {
      var _loc3_ = this._xscale / 100;
      var _loc4_ = this._yscale / 100;
      var _loc5_ = (this["\x1d\b\x12"]["\x1a\x11\t"] - ank.battlefield.Constants["\x16\x18\t"] * _loc3_ * (this["\x1e\x03\b"]["\x18\x18\x0e"].width - 1)) / 2;
      var _loc6_ = (this["\x1d\b\x12"]["\x1a\x11\x07"] - ank.battlefield.Constants["\x16\x18\x01"] * _loc4_ * (this["\x1e\x03\b"]["\x18\x18\x0e"].height - 1)) / 2;
      this["\x1a\x1b\t"](_loc5_,_loc6_);
   }
   function §\x1b\x1b\x0e§(§\x1b\x18\n§)
   {
      var _loc3_ = this["\x18\x02\x13"]();
      if(_loc3_ == 100)
      {
         return false;
      }
      this.zoom(_loc3_,false);
      return true;
   }
   function §\x18\x02\x13§(§\x1b\x18\n§)
   {
      var _loc3_ = this["\x1e\x03\b"]["\x18\x18\x0e"].width;
      var _loc4_ = this["\x1e\x03\b"]["\x18\x18\x0e"].height;
      var _loc5_ = 0;
      if(_loc3_ <= ank.battlefield.Constants["\x17\x06\f"])
      {
         return 100;
      }
      if(_loc4_ <= ank.battlefield.Constants["\x17\x06\x0b"])
      {
         return 100;
      }
      if(_loc4_ > _loc3_)
      {
         _loc5_ = this["\x1d\b\x12"]["\x1a\x11\t"] / (ank.battlefield.Constants["\x16\x18\t"] * (_loc3_ - 1)) * 100;
      }
      else
      {
         _loc5_ = this["\x1d\b\x12"]["\x1a\x11\x07"] / (ank.battlefield.Constants["\x16\x18\x01"] * (_loc4_ - 1)) * 100;
      }
      return _loc5_;
   }
}
