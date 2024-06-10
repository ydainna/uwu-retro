class ank.gapi.§\x17\x01\x06§.ColorPicker extends ank.gapi.core.UIBasicComponent
{
   static var §\x16\x1b\x10§ = "ColorPicker";
   static var §\x18\x19\x0b§ = {matrixType:"box",x:0,y:0,w:1,h:1,r:0};
   static var §\x18\x19\n§ = {matrixType:"box",x:0,y:0,w:1,h:1,r:Math.PI / 2};
   static var §\x16\x1d\r§ = [16711680,16776960,65280,65535,255,16711935,16711680];
   static var §\x16\x03\x0f§ = [100,100,100,100,100,100,100];
   static var §\x1a\t\x1c§ = [0,42.5,85,127.5,170,212.5,255];
   static var §\x16\x1d\x0b§ = [8421504,8421504];
   static var §\x16\x03\r§ = [0,100];
   static var §\x1a\t\x1a§ = [0,255];
   static var §\x16\x1d\f§ = [16711680,16711680,16711680];
   static var §\x16\x03\x0e§ = [0,100,0];
   static var §\x1a\t\x1b§ = [0,127.5,255];
   var §\x1d\x1d\x03§ = 30;
   var §\x1d\x1d\x02§ = 10;
   var §\x1c\x06\x15§ = false;
   var §\x1c\x06\x16§ = false;
   function ColorPicker()
   {
      super();
   }
   function §\x1d\x05§(§\x19\x0e\x0f§)
   {
      this["\x1d\x1d\x03"] = Number(_loc2_);
      return this["\t\x0f"]();
   }
   function §\t\x0f§()
   {
      return this["\x1d\x1d\x03"];
   }
   function §\x1d\x04§(§\x19\x0e\x0e§)
   {
      this["\x1d\x1d\x02"] = Number(_loc2_);
      return this["\t\x0e"]();
   }
   function §\t\x0e§()
   {
      return this["\x1d\x1d\x02"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.ColorPicker.CLASS_NAME);
   }
   function createChildren()
   {
      this.createEmptyMovieClip("\x1d\n\x03",10);
      this.createEmptyMovieClip("\x1d\n\x02",20);
      this.createEmptyMovieClip("\x1d\x10\x04",30);
      this.createEmptyMovieClip("\x1d\x10\x05",40);
      this["\x1c\r\x18"] = new Color(this["\x1d\x10\x05"]);
      this.attachMovie("ColorPickerColorsCross","_mcColorsCross",50);
      this.attachMovie("ColorPickerSliderCross","_mcSliderCross",60);
      this["\x1d\n\x03"].onPress = function()
      {
         this._parent["\x19\x1d\b"]();
      };
      this["\x1d\n\x03"].onRelease = this["\x1d\n\x03"].onReleaseOutside = function()
      {
         this._parent["\x19\x1d\x0e"]();
      };
      this["\x1d\x10\x04"].onPress = function()
      {
         this._parent["\x19\x1d\t"]();
      };
      this["\x1d\x10\x04"].onRelease = this["\x1d\x10\x04"].onReleaseOutside = function()
      {
         this._parent["\x19\x1d\x0f"]();
      };
   }
   function §\x16\x05\f§()
   {
      this["\x1d\n\x03"]._width = this["\x1d\n\x02"]._width = this["\x1d"] - this["\x1d\x1d\x03"];
      this["\x1d\n\x03"]._height = this["\x1d\n\x02"]._height = this["\x0e\x06"];
      this["\x1d\x10\x04"]._x = this["\x1d\x10\x05"]._x = this["\x1d"] - (this["\x1d\x1d\x03"] + this["\x1d\x1d\x02"]) / 2;
      this["\x1d\x10\x04"]._width = this["\x1d\x10\x05"]._width = this["\x1d\x1d\x02"];
      this["\x1d\x10\x04"]._height = this["\x1d\x10\x05"]._height = this["\x0e\x06"];
      this["\x1d\x14\x05"] = this["\x1d"] - 30;
      this["\x1d\x1d\x01"] = this["\x1d"] - this["\x1d\x1d\x03"] / 2;
      this["\x1a\x05\x06"](this["\x1d\x1d\x01"],this["\x0e\x06"] / 2);
   }
   function draw()
   {
      this["\x17\n\x0f"](this["\x1d\n\x03"],0,0,1,1,0,ank.gapi.controls.ColorPicker["\x16\x1d\r"],ank.gapi.controls.ColorPicker["\x16\x03\x0f"],ank.gapi.controls.ColorPicker["\x18\x19\x0b"],"linear",ank.gapi.controls.ColorPicker["\x1a\t\x1c"]);
      this["\x17\n\x0f"](this["\x1d\n\x02"],0,0,1,1,0,ank.gapi.controls.ColorPicker["\x16\x1d\x0b"],ank.gapi.controls.ColorPicker["\x16\x03\r"],ank.gapi.controls.ColorPicker["\x18\x19\n"],"linear",ank.gapi.controls.ColorPicker["\x1a\t\x1a"]);
      this["\x17\n\x0f"](this["\x1d\x10\x04"],0,0,1,0.5,0,16777215);
      this["\x17\n\x0f"](this["\x1d\x10\x04"],0,0.5,1,0.5,0,0);
      this["\x17\n\x0f"](this["\x1d\x10\x05"],0,0,1,1,0,ank.gapi.controls.ColorPicker["\x16\x1d\f"],ank.gapi.controls.ColorPicker["\x16\x03\x0e"],ank.gapi.controls.ColorPicker["\x18\x19\n"],"linear",ank.gapi.controls.ColorPicker["\x1a\t\x1b"]);
   }
   function §\x17\x18\t§()
   {
      var _loc2_ = this._mcColorsCross._x / Math.floor(this["\x1d\x14\x05"]);
      var _loc3_ = Math.floor(_loc2_ * (ank.gapi.controls.ColorPicker["\x1a\t\x1c"].length - 1));
      _loc2_ *= 255;
      var _loc4_ = 255 * (1 - (ank.gapi.controls.ColorPicker["\x1a\t\x1c"][_loc3_ + 1] - _loc2_) / (ank.gapi.controls.ColorPicker["\x1a\t\x1c"][_loc3_ + 1] - ank.gapi.controls.ColorPicker["\x1a\t\x1c"][_loc3_]));
      var _loc5_ = ank.gapi.controls.ColorPicker["\x16\x1d\r"][_loc3_];
      var _loc6_ = ank.gapi.controls.ColorPicker["\x16\x1d\r"][_loc3_ + 1];
      var _loc7_ = _loc5_ & 16711680;
      var _loc8_ = _loc5_ & 65280;
      var _loc9_ = _loc5_ & 255;
      var _loc10_ = _loc6_ & 16711680;
      var _loc11_ = _loc6_ & 65280;
      var _loc12_ = _loc6_ & 255;
      if(_loc7_ != _loc10_)
      {
         var _loc13_ = Math.round(_loc7_ <= _loc10_ ? _loc4_ : 255 - _loc4_);
      }
      else
      {
         _loc13_ = _loc7_ >> 16;
      }
      if(_loc8_ != _loc11_)
      {
         var _loc14_ = Math.round(_loc8_ <= _loc11_ ? _loc4_ : 255 - _loc4_);
      }
      else
      {
         _loc14_ = _loc8_ >> 8;
      }
      if(_loc9_ != _loc12_)
      {
         var _loc15_ = Math.round(_loc9_ <= _loc12_ ? _loc4_ : 255 - _loc4_);
      }
      else
      {
         _loc15_ = _loc9_;
      }
      var _loc16_ = this._mcColorsCross._y / this["\x0e\x06"] * 255;
      _loc13_ += (127 - _loc13_) * _loc16_ / 255;
      _loc14_ += (127 - _loc14_) * _loc16_ / 255;
      _loc15_ += (127 - _loc15_) * _loc16_ / 255;
      return (_loc13_ << 16) + (_loc14_ << 8) + _loc15_;
   }
   function §\x1a\x05\x02§(§\x19\x10\x1a§, §\x19\x11\x05§)
   {
      this._mcColorsCross._x = _loc2_;
      this._mcColorsCross._y = _loc3_;
   }
   function §\x1a\x05\x06§(§\x19\x10\x1a§, §\x19\x11\x05§)
   {
      this._mcSliderCross._x = _loc2_;
      this._mcSliderCross._y = _loc3_;
   }
   function §\x1a\x15\x11§(§\x19\x05\x06§)
   {
      var _loc3_ = ((_loc2_ & 16711680) >> 16) / 255;
      var _loc4_ = ((_loc2_ & 65280) >> 8) / 255;
      var _loc5_ = (_loc2_ & 255) / 255;
      var _loc6_ = Math.min(Math.min(_loc3_,_loc4_),_loc5_);
      var _loc7_ = Math.max(Math.max(_loc3_,_loc4_),_loc5_);
      var _loc8_ = _loc7_ - _loc6_;
      var _loc9_ = Math.acos((_loc3_ - _loc4_ + (_loc3_ - _loc5_)) / 2 / Math.sqrt(Math.pow(_loc3_ - _loc4_,2) + (_loc3_ - _loc5_) * (_loc4_ - _loc5_)));
      var _loc10_ = (_loc7_ + _loc6_) / 2;
      var _loc11_ = _loc10_ >= 0.5 ? _loc8_ / (2 - _loc7_ - _loc6_) : _loc8_ / (_loc7_ + _loc6_);
      if(_loc5_ > _loc4_)
      {
         _loc9_ = 2 * Math.PI - _loc9_;
      }
      var _loc12_ = Math.floor(_loc9_ / (2 * Math.PI) * this["\x1d\x14\x05"]);
      var _loc13_ = Math.floor((1 - Math.abs(_loc11_)) * this["\x0e\x06"]);
      var _loc14_ = Math.floor((1 - _loc10_) * this["\x0e\x06"]);
      if(_global.isNaN(_loc12_))
      {
         _loc12_ = 0;
      }
      this["\x1a\x05\x02"](_loc12_,_loc13_);
      this["\x1a\x05\x06"](this["\x1d\x1d\x01"],_loc14_);
      var _loc15_ = this["\x17\x18\t"]();
      this["\x1c\r\x18"].setRGB(_loc15_);
      this["\x1d\x17\x1d"] = _loc15_;
   }
   function §\x17\x15\r§()
   {
      var _loc2_ = 255 * (1 - this._mcSliderCross._y / Math.floor(this["\x0e\x06"]) * 2);
      var _loc3_ = (this["\x1d\x17\x1d"] & 16711680) >> 16;
      var _loc4_ = (this["\x1d\x17\x1d"] & 65280) >> 8;
      var _loc5_ = this["\x1d\x17\x1d"] & 255;
      if(_loc2_ >= 0)
      {
         var _loc6_ = _loc2_ * (255 - _loc3_) / 255 + _loc3_;
         var _loc7_ = _loc2_ * (255 - _loc4_) / 255 + _loc4_;
         var _loc8_ = _loc2_ * (255 - _loc5_) / 255 + _loc5_;
      }
      else
      {
         _loc2_ *= -1;
         _loc6_ = Math.round(_loc3_ - _loc3_ * _loc2_ / 255);
         _loc7_ = Math.round(_loc4_ - _loc4_ * _loc2_ / 255);
         _loc8_ = Math.round(_loc5_ - _loc5_ * _loc2_ / 255);
      }
      return Math.round((_loc6_ << 16) + (_loc7_ << 8) + _loc8_);
   }
   function §\x19\x1d\b§()
   {
      this["\x1c\x06\x15"] = true;
      this["\x1a\x05\x02"](this._xmouse,this._ymouse);
      this._mcColorsCross.startDrag(true,0,0,this["\x1d\x14\x05"] - 1,this["\x0e\x06"]);
      this["\x1d\x17\x1d"] = this["\x17\x18\t"]();
      this["\x1c\r\x18"].setRGB(this["\x1d\x17\x1d"]);
      this["\x17\x07\x19"]({type:"change",value:this["\x17\x15\r"]()});
   }
   function §\x19\x1d\x0e§()
   {
      this["\x1c\x06\x15"] = false;
      this._mcColorsCross.stopDrag();
   }
   function §\x19\x1d\t§()
   {
      this["\x1c\x06\x16"] = true;
      this["\x1a\x05\x06"](this["\x1d\x1d\x01"],this._ymouse);
      this._mcSliderCross.startDrag(true,this["\x1d\x1d\x01"],0,this["\x1d\x1d\x01"],this["\x0e\x06"]);
      this["\x1d\x17\x1d"] = this["\x17\x18\t"]();
      this["\x17\x07\x19"]({type:"change",value:this["\x17\x15\r"]()});
   }
   function §\x19\x1d\x0f§()
   {
      this["\x1c\x06\x16"] = false;
      this._mcSliderCross.stopDrag();
   }
   function onMouseMove()
   {
      if(this["\x1c\x06\x15"])
      {
         var _loc2_ = this["\x17\x18\t"]();
         this["\x1c\r\x18"].setRGB(_loc2_);
         this["\x1d\x17\x1d"] = _loc2_;
         this["\x17\x07\x19"]({type:"change",value:this["\x17\x15\r"]()});
      }
      if(this["\x1c\x06\x16"])
      {
         this["\x17\x07\x19"]({type:"change",value:this["\x17\x15\r"]()});
      }
   }
}
