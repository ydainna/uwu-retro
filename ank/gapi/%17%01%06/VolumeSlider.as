class ank.gapi.§\x17\x01\x06§.VolumeSlider extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   static var §\x16\x1b\x10§ = "VolumeSlider";
   var §\x1d\x19\x1d§ = 0;
   var §\x1d\x19\t§ = 100;
   var §\x1e\x01\x03§ = 0;
   var §\x1d\x19\x07§ = 5;
   var §\x1d\x19\b§ = 0.7;
   var §\x1e\n\x1d§ = "VolumeSliderMarkerDefault";
   function VolumeSlider()
   {
      super();
   }
   function §\x18\x12§(§\x19\n\x0e§)
   {
      this["\x1d\x19\x1d"] = Number(_loc2_);
      return this["\x03\x1a"]();
   }
   function §\x03\x1a§()
   {
      return this["\x1d\x19\x1d"];
   }
   function §\x17\x17§(§\x19\t\x19§)
   {
      this["\x1d\x19\t"] = Number(_loc2_);
      return this["\x03\x06"]();
   }
   function §\x03\x06§()
   {
      return this["\x1d\x19\t"];
   }
   function §\x04§(§\x19\x10\x10§)
   {
      _loc2_ = Number(_loc2_);
      if(_global.isNaN(_loc2_))
      {
         return undefined;
      }
      if(_loc2_ > this.max)
      {
         _loc2_ = this.max;
      }
      if(_loc2_ < this.min)
      {
         _loc2_ = this.min;
      }
      this["\x1e\x01\x03"] = _loc2_;
      if(this["\x1c\x05\x07"])
      {
         var _loc3_ = Math.floor((this["\x1d\x19\x07"] - 1) * (_loc2_ - this["\x1d\x19\x1d"]) / (this["\x1d\x19\t"] - this["\x1d\x19\x1d"]));
         this["\x1a\x1b\x02"](_loc3_);
      }
      return this["\f\x1c"]();
   }
   function §\f\x1c§()
   {
      return this["\x1e\x01\x03"];
   }
   function §\x17\x14§(§\x19\t\x17§)
   {
      if(Number(_loc2_) > 0)
      {
         this["\x1d\x19\x07"] = Number(_loc2_);
      }
      else
      {
         ank.utils.Logger.err("[markerCount] ne peut être < à 0");
      }
      return this.markerCount;
   }
   function §\x03\x03§()
   {
      return this["\x1d\x19\x07"];
   }
   function §\x17\x16§(§\x19\t\x18§)
   {
      if(Number(_loc2_) >= 0 && Number(_loc2_) <= 1)
      {
         this["\x1d\x19\b"] = Number(_loc2_);
      }
      else
      {
         ank.utils.Logger.err("[markerCount] ne peut être < à 0 et > 1");
      }
      return this["\x03\x04"]();
   }
   function §\x03\x04§()
   {
      return this["\x1d\x19\b"];
   }
   function §\x17\x15§(§\x1b\x03\x0b§)
   {
      this["\x1e\n\x1d"] = _loc2_;
      return this["\x03\x02"]();
   }
   function §\x03\x02§()
   {
      return this["\x1e\n\x1d"];
   }
   function §\x1a\n\x12§()
   {
      this["\x17\x02\x11"]();
      this["\x16\x05\f"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.VolumeSlider.CLASS_NAME);
   }
   function createChildren()
   {
      this["\x17\x02\x11"]();
   }
   function §\x16\x05\f§()
   {
      var _loc2_ = this["\x0e\x06"];
      var _loc3_ = this["\x0e\x06"] / 2;
      var _loc4_ = this["\x1d"] / this["\x1d\x19\x07"];
      var _loc5_ = (this["\x1d"] + _loc4_ * (1 - this["\x1d\x19\b"])) / this["\x1d\x19\x07"];
      var _loc6_ = 0;
      while(_loc6_ < this["\x1d\x19\x07"])
      {
         var _loc7_ = this["\x1d\r\x16"]["mcMarker" + _loc6_];
         var _loc8_ = this["\x1d\x0e\n"]["mcOver" + _loc6_];
         var _loc9_ = _loc8_.index;
         var _loc10_ = _loc9_ / this["\x1d\x19\x07"];
         _loc7_._width = _loc5_ * this["\x1d\x19\b"];
         _loc8_._width = _loc5_;
         _loc7_._height = _loc3_ + _loc10_ * (_loc2_ - _loc3_);
         _loc8_._height = this["\x0e\x06"];
         _loc7_._x = _loc9_ * _loc5_;
         _loc7_._y = this["\x0e\x06"];
         _loc8_._x = _loc9_ * _loc5_;
         _loc8_._y = 0;
         _loc6_ = _loc6_ + 1;
      }
   }
   function draw()
   {
      this.addToQueue({object:this,method:function()
      {
         this.value = this["\x1e\x01\x03"];
      }});
   }
   function §\x17\x02\x11§()
   {
      this["\x1d\r\x16"].removeMovieClip();
      this.createEmptyMovieClip("\x1d\x0e\n",10);
      this.createEmptyMovieClip("\x1d\r\x16",20);
      var _loc2_ = 0;
      while(_loc2_ < this["\x1d\x19\x07"])
      {
         var _loc3_ = this["\x1d\r\x16"].attachMovie(this["\x1e\n\x1d"],"mcMarker" + _loc2_,_loc2_);
         var _loc4_ = this["\x1d\x0e\n"].createEmptyMovieClip("mcOver" + _loc2_,_loc2_);
         this["\x17\n\x0f"](_loc4_,0,0,1,1,0,16711935,0);
         _loc4_.index = _loc2_;
         this["\x1a\x18\x03"](_loc3_,this.getStyle().offcolor);
         _loc4_.trackAsMenu = true;
         _loc4_.onDragOver = function()
         {
            this._parent._parent["\x17\t\x16"]({target:this});
         };
         _loc4_.onPress = function()
         {
            this._parent._parent["\x1a\x06\x1a"]({target:this});
         };
         _loc2_ = _loc2_ + 1;
      }
   }
   function §\x1a\x1b\x02§(§\x19\b\x14§)
   {
      if(_loc2_ > this["\x1d\x19\x07"] - 1)
      {
         return undefined;
      }
      if(_loc2_ < 0)
      {
         return undefined;
      }
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      var _loc3_ = this.getStyle().oncolor;
      var _loc4_ = this.getStyle().offcolor;
      var _loc5_ = 0;
      while(_loc5_ <= _loc2_)
      {
         this["\x1a\x18\x03"](this["\x1d\r\x16"]["mcMarker" + _loc5_],_loc3_);
         _loc5_ = _loc5_ + 1;
      }
      var _loc6_ = _loc2_ + 1;
      while(_loc6_ < this["\x1d\x19\x07"])
      {
         this["\x1a\x18\x03"](this["\x1d\r\x16"]["mcMarker" + _loc6_],_loc4_);
         _loc6_ = _loc6_ + 1;
      }
   }
   function §\x18\x02\x07§(§\x19\b\x14§)
   {
      return _loc2_ * (this["\x1d\x19\t"] - this["\x1d\x19\x1d"]) / (this["\x1d\x19\x07"] - 1) + this["\x1d\x19\x1d"];
   }
   function §\x17\t\x16§(oEvent)
   {
      this.value = this["\x18\x02\x07"](_loc2_.target.index);
      this["\x17\x07\x19"]({type:"change"});
   }
   function §\x1a\x06\x1a§(oEvent)
   {
      this.value = this["\x18\x02\x07"](_loc2_.target.index);
      this["\x17\x07\x19"]({type:"change"});
   }
}
