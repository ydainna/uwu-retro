class ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§ extends ank.utils.§\x1a\t\t§
{
   static var §\x16\x10\x0b§ = 1;
   static var §\x16\x10\n§ = 50;
   var §\x1c\x05\x07§ = false;
   var §\x1e\f\x1c§ = "default";
   var §\x1c\x03\x1a§ = true;
   var _bDisabledStyle = false;
   var _bDisableClickEvents = false;
   function §\x1b\x13\x04§()
   {
      super();
      this.init();
      this.createChildren();
      this.draw();
      this["\x16\x05\f"]();
      this.size();
      this["\x1c\x05\x07"] = true;
   }
   function §\x13\x1d§(§\x18\x1b\x15§)
   {
      this["\x1d\x0b\x16"] = _loc2_;
      return this["\x1e\x1a\x1c"]();
   }
   function §\x1e\x1a\x1c§()
   {
      if(this["\x1d\x0b\x16"] == undefined)
      {
         return this._parent.gapi;
      }
      return this["\x1d\x0b\x16"];
   }
   function §\x1e\x15\x1b§()
   {
      return this["\x1e\b\t"];
   }
   function §\x13\x02§(§\x16\x0b\t§)
   {
      this._bEnabled = _loc2_;
      this.addToQueue({object:this,method:this["\x1a\x16\x07"]});
      return this["\x1e\x19\x17"]();
   }
   function §\x1e\x19\x17§()
   {
      return this._bEnabled;
   }
   function get disabledStyle()
   {
      return this._bDisabledStyle;
   }
   function set disabledStyle(bDisabledStyle)
   {
      this._bDisabledStyle = bDisabledStyle;
      this.addToQueue({object:this,method:this["\x1a\x16\x07"]});
   }
   function get disableClickEvents()
   {
      return this._bDisableClickEvents;
   }
   function set disableClickEvents(bDisableClickEvents)
   {
      this._bDisableClickEvents = bDisableClickEvents;
   }
   function §\x1d\x18§(§\x1b\b\x17§)
   {
      this["\x1e\f\x1c"] = _loc2_;
      if(this["\x1c\x05\x07"] && (_loc2_ != "none" && _loc2_ != undefined))
      {
         this.draw();
      }
      return this["\n\x0e"]();
   }
   function §\n\x0e§()
   {
      var _loc2_ = this["\x1e\f\x1c"];
      if(_loc2_.length == 0 || (_loc2_ == undefined || _loc2_ == "default"))
      {
         var _loc3_ = this._parent;
         while(!(_loc3_ instanceof ank.gapi["\x17\x01\x0f"]["\x1b\x13\x04"]) && _loc3_ != undefined)
         {
            _loc3_ = _loc3_._parent;
         }
         _loc2_ = _loc3_.styleName;
      }
      if(_loc2_ == undefined)
      {
         _loc2_ = this["\x1e\b\t"];
      }
      return _loc2_;
   }
   function §\x0b§(§\x19\x10\x18§)
   {
      this["\x1a\x19\x18"](_loc2_,null);
      return this["\r\x0e"]();
   }
   function §\r\x0e§()
   {
      return this["\x1d"];
   }
   function §\x14\x0b§(§\x19\b\x03§)
   {
      this["\x1a\x19\x18"](null,_loc2_);
      return this["\x1e\x1b\x11"]();
   }
   function §\x1e\x1b\x11§()
   {
      return this["\x0e\x06"];
   }
   function §\x1a\x03§(oParams)
   {
      this["\x1e\x04\x1c"] = _loc2_;
      return this["\x06\x02"]();
   }
   function §\x06\x02§()
   {
      return this["\x1e\x04\x1c"];
   }
   function §\x1e\x1c\n§()
   {
      return this["\x1c\x05\x07"];
   }
   function §\x1a\x19\x18§(§\x1b\x18\x10§, §\x18\x04\x1a§)
   {
      if(Math.abs(this._rotation) == 90)
      {
         var _loc4_ = _loc2_;
         _loc2_ = _loc3_;
         _loc3_ = _loc4_;
      }
      if(_loc2_ != undefined && _loc2_ != null)
      {
         this["\x1d"] = _loc2_;
      }
      if(_loc3_ != undefined && _loc3_ != null)
      {
         this["\x0e\x06"] = _loc3_;
      }
      this.size();
   }
   function move(§\x1b\x19\x14§, §\x1b\x1a\x14§)
   {
      if(_loc2_ != undefined)
      {
         this._x = _loc2_;
      }
      if(_loc2_ != undefined)
      {
         this._y = _loc3_;
      }
   }
   function §\x18\t\x04§(§\x16\n\x1a§, §\x1a\x10\x18§)
   {
      this["\x1e\b\t"] = _loc3_;
      if(Math.ceil(this._rotation % 180) > 45)
      {
         this["\x1d"] = this._height;
         this["\x0e\x06"] = this._width;
      }
      else
      {
         this["\x1d"] = this._width;
         this["\x0e\x06"] = this._height;
      }
      if(!_loc2_)
      {
         this.boundingBox_mc._visible = false;
         this.boundingBox_mc._width = this.boundingBox_mc._height = 0;
      }
      eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
   }
   function getStyle()
   {
      return ank.gapi.styles["\x1b\x0b\x14"].getStyle(this.styleName);
   }
   function size()
   {
      this["\x18\n\x10"]();
   }
   function §\x18\n\x10§()
   {
      this._xscale = this._yscale = 100;
   }
   function §\x17\t\x1a§()
   {
      if(this.border_mc == undefined)
      {
         this.createEmptyMovieClip("border_mc",0);
      }
      this.border_mc.clear();
      this.border_mc.lineStyle(ank.gapi["\x17\x01\x0f"]["\x1b\x13\x04"]["\x16\x10\x0b"],7305079,ank.gapi["\x17\x01\x0f"]["\x1b\x13\x04"]["\x16\x10\n"]);
      this.border_mc.lineTo(this["\x1d"],0);
      this.border_mc.lineStyle(ank.gapi["\x17\x01\x0f"]["\x1b\x13\x04"]["\x16\x10\x0b"],9542041,ank.gapi["\x17\x01\x0f"]["\x1b\x13\x04"]["\x16\x10\n"]);
      this.border_mc.lineTo(this["\x1d"],this["\x0e\x06"]);
      this.border_mc.lineStyle(ank.gapi["\x17\x01\x0f"]["\x1b\x13\x04"]["\x16\x10\x0b"],14015965,ank.gapi["\x17\x01\x0f"]["\x1b\x13\x04"]["\x16\x10\n"]);
      this.border_mc.lineTo(0,this["\x0e\x06"]);
      this.border_mc.lineStyle(ank.gapi["\x17\x01\x0f"]["\x1b\x13\x04"]["\x16\x10\x0b"],9542041,ank.gapi["\x17\x01\x0f"]["\x1b\x13\x04"]["\x16\x10\n"]);
      this.border_mc.lineTo(0,0);
      this.border_mc.moveTo(1,1);
      this.border_mc.lineStyle(ank.gapi["\x17\x01\x0f"]["\x1b\x13\x04"]["\x16\x10\x0b"],13290700,ank.gapi["\x17\x01\x0f"]["\x1b\x13\x04"]["\x16\x10\n"]);
      this.border_mc.lineTo(this["\x1d"] - 1,1);
      this.border_mc.lineStyle(ank.gapi["\x17\x01\x0f"]["\x1b\x13\x04"]["\x16\x10\x0b"],14015965,ank.gapi["\x17\x01\x0f"]["\x1b\x13\x04"]["\x16\x10\n"]);
      this.border_mc.lineTo(this["\x1d"] - 1,this["\x0e\x06"] - 1);
      this.border_mc.lineStyle(ank.gapi["\x17\x01\x0f"]["\x1b\x13\x04"]["\x16\x10\x0b"],15658734,ank.gapi["\x17\x01\x0f"]["\x1b\x13\x04"]["\x16\x10\n"]);
      this.border_mc.lineTo(1,this["\x0e\x06"] - 1);
      this.border_mc.lineStyle(ank.gapi["\x17\x01\x0f"]["\x1b\x13\x04"]["\x16\x10\x0b"],14015965,ank.gapi["\x17\x01\x0f"]["\x1b\x13\x04"]["\x16\x10\n"]);
      this.border_mc.lineTo(1,1);
   }
   function §\x17\n\x0f§(§\x18\x1b\f§, §\x1b\x19\x14§, §\x1b\x1a\x14§, §\x1b\x18\x10§, §\x18\x04\x1a§, §\x1a\t\r§, c, §\x16\x03\f§, §\x1a\x0e\x18§, §\x18\x03\x0f§, §\x1a\t\x19§)
   {
      if(typeof _loc7_ == "object")
      {
         var _loc13_ = _loc7_.br;
         var _loc14_ = _loc7_.bl;
         var _loc15_ = _loc7_.tl;
         var _loc16_ = _loc7_.tr;
      }
      else
      {
         _loc13_ = _loc14_ = _loc15_ = _loc16_ = _loc7_;
      }
      if(_loc9_ == undefined)
      {
         _loc9_ = 100;
      }
      if(typeof c == "object")
      {
         if(typeof _loc9_ != "object")
         {
            var _loc17_ = [_loc9_,_loc9_];
         }
         else
         {
            _loc17_ = _loc9_;
         }
         if(_loc12_ == undefined)
         {
            _loc12_ = [0,255];
         }
         var _loc18_ = _loc6_ * 0.7;
         if(typeof _loc10_ != "object")
         {
            var _loc19_ = {matrixType:"box",x:0 - _loc18_,y:_loc18_,w:_loc5_ * 2,h:_loc6_ * 4,r:_loc10_ * 0.0174532925199433};
         }
         else
         {
            _loc19_ = _loc10_;
            if(_loc19_.w == undefined)
            {
               _loc19_.w = _loc5_;
            }
            if(_loc19_.h == undefined)
            {
               _loc19_.h = _loc6_;
            }
         }
         if(_loc11_ == "radial")
         {
            _loc2_.beginGradientFill("radial",c,_loc17_,_loc12_,_loc19_);
         }
         else
         {
            _loc2_.beginGradientFill("linear",c,_loc17_,_loc12_,_loc19_);
         }
      }
      else if(c != undefined)
      {
         _loc2_.beginFill(c,_loc9_);
      }
      _loc7_ = _loc13_;
      if(_loc7_ != 0)
      {
         var _loc20_ = _loc7_ - _loc7_ * 0.707106781186547;
         var _loc21_ = _loc7_ - _loc7_ * 0.414213562373095;
         _loc2_.moveTo(_loc3_ + _loc5_,_loc4_ + _loc6_ - _loc7_);
         _loc2_.lineTo(_loc3_ + _loc5_,_loc4_ + _loc6_ - _loc7_);
         _loc2_.curveTo(_loc3_ + _loc5_,_loc4_ + _loc6_ - _loc21_,_loc3_ + _loc5_ - _loc20_,_loc4_ + _loc6_ - _loc20_);
         _loc2_.curveTo(_loc3_ + _loc5_ - _loc21_,_loc4_ + _loc6_,_loc3_ + _loc5_ - _loc7_,_loc4_ + _loc6_);
      }
      else
      {
         _loc2_.moveTo(_loc3_ + _loc5_,_loc4_ + _loc6_);
      }
      _loc7_ = _loc14_;
      if(_loc7_ != 0)
      {
         var _loc22_ = _loc7_ - _loc7_ * 0.707106781186547;
         var _loc23_ = _loc7_ - _loc7_ * 0.414213562373095;
         _loc2_.lineTo(_loc3_ + _loc7_,_loc4_ + _loc6_);
         _loc2_.curveTo(_loc3_ + _loc23_,_loc4_ + _loc6_,_loc3_ + _loc22_,_loc4_ + _loc6_ - _loc22_);
         _loc2_.curveTo(_loc3_,_loc4_ + _loc6_ - _loc23_,_loc3_,_loc4_ + _loc6_ - _loc7_);
      }
      else
      {
         _loc2_.lineTo(_loc3_,_loc4_ + _loc6_);
      }
      _loc7_ = _loc15_;
      if(_loc7_ != 0)
      {
         var _loc24_ = _loc7_ - _loc7_ * 0.707106781186547;
         var _loc25_ = _loc7_ - _loc7_ * 0.414213562373095;
         _loc2_.lineTo(_loc3_,_loc4_ + _loc7_);
         _loc2_.curveTo(_loc3_,_loc4_ + _loc25_,_loc3_ + _loc24_,_loc4_ + _loc24_);
         _loc2_.curveTo(_loc3_ + _loc25_,_loc4_,_loc3_ + _loc7_,_loc4_);
      }
      else
      {
         _loc2_.lineTo(_loc3_,_loc4_);
      }
      _loc7_ = _loc16_;
      if(_loc7_ != 0)
      {
         var _loc26_ = _loc7_ - _loc7_ * 0.707106781186547;
         var _loc27_ = _loc7_ - _loc7_ * 0.414213562373095;
         _loc2_.lineTo(_loc3_ + _loc5_ - _loc7_,_loc4_);
         _loc2_.curveTo(_loc3_ + _loc5_ - _loc27_,_loc4_,_loc3_ + _loc5_ - _loc26_,_loc4_ + _loc26_);
         _loc2_.curveTo(_loc3_ + _loc5_,_loc4_ + _loc27_,_loc3_ + _loc5_,_loc4_ + _loc7_);
         _loc2_.lineTo(_loc3_ + _loc5_,_loc4_ + _loc6_ - _loc7_);
      }
      else
      {
         _loc2_.lineTo(_loc3_ + _loc5_,_loc4_);
         _loc2_.lineTo(_loc3_ + _loc5_,_loc4_ + _loc6_);
      }
      if(c != undefined)
      {
         _loc2_.endFill();
      }
   }
   function §\x1a\x18\x03§(§\x18\x1b\f§, §\x19\x05\x06§)
   {
      var _loc4_ = new Color(_loc2_);
      _loc4_.setRGB(_loc3_);
      if(_loc3_ == -1)
      {
         _loc2_._alpha = 0;
      }
   }
   function §\x1a\x18\x04§(§\x18\x1b\f§, §\x1a\x02\x12§)
   {
      var _loc4_ = new Color(_loc2_);
      _loc4_.setTransform(_loc3_);
   }
}
