class dofus.graphics.gapi.§\x17\x01\x06§.ArtworkRotation extends ank.gapi.core.UIBasicComponent
{
   static var §\x16\x1b\x10§ = "ArtworkRotationItem";
   function ArtworkRotation()
   {
      super();
   }
   function §\x10\x18§(§\x19\x05\x05§)
   {
      this["\x1b\x1e\x15"]["\x18\x15\x14"](_loc2_);
      this["\x1b\x1e\x16"]["\x18\x15\x14"](_loc2_);
      return this["\x1e\x15\x1a"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.ArtworkRotation.CLASS_NAME);
   }
   function createChildren()
   {
      this._i = 2.02;
   }
   function §\x1a\x18\x18§(nSex)
   {
      if(this["\x1d\x15\x02"] == _loc2_)
      {
         return undefined;
      }
      this["\x1d\x15\x02"] = _loc2_;
      var _loc3_ = _loc2_ == 0;
      this["\x1b\x1e\x16"]["\x16\x1d\n"](_loc3_);
      this["\x1b\x1e\x15"]["\x16\x1d\n"](!_loc3_);
      if(!_loc3_)
      {
         this["\x1b\x1e\x15"].swapDepths(this["\x1b\x1e\x16"]);
      }
      this._i = !_loc3_ ? 5.13 : 2;
      var _loc4_ = -30.4 * (!_loc3_ ? 1 : -1);
      var _loc5_ = 28.7 * (!_loc3_ ? 1 : -1);
      var _loc6_ = -45.6 * (!_loc3_ ? 1 : -1);
      this["\x1b\x1e\x15"]._x = _loc5_;
      this["\x1b\x1e\x15"]._y = _loc6_;
      this["\x1b\x1e\x16"]._x = 0 - _loc5_;
      this["\x1b\x1e\x16"]._y = 0 - _loc6_;
      this["\x1b\x1e\x15"]._xscale = 100 + _loc4_;
      this["\x1b\x1e\x15"]._yscale = 100 + _loc4_;
      this["\x1b\x1e\x16"]._xscale = 100 - _loc4_;
      this["\x1b\x1e\x16"]._yscale = 100 - _loc4_;
   }
   function rotate(nSex)
   {
      if(this["\x1d\x15\x02"] == _loc2_)
      {
         return undefined;
      }
      this["\x1d\x15\x02"] = _loc2_;
      var §\x1a\x05\x01§ = 0;
      var §\x1a\b\x12§ = 0;
      var §\x1a\b\x13§ = 0;
      var t = 0;
      var §\x16\x13\x05§ = false;
      var _loc3_ = _loc2_ == 0;
      this["\x1b\x1e\x16"]["\x16\x1d\n"](_loc3_);
      this["\x1b\x1e\x15"]["\x16\x1d\n"](!_loc3_);
      this._di = !_loc3_ ? 2 + Math.PI : 2;
      this.onEnterFrame = function()
      {
         if(Math.abs(this._i - this._di) > 0.01)
         {
            this._i -= (this._i - this._di) / 3;
            set("\x1a\x05\x01",eval("\x1a\b\x13"));
            set("\x1a\b\x12",70 * Math.cos(this._i));
            set("\x1a\b\x13",50 * Math.sin(this._i));
            if(eval("\x1a\x05\x01") < 0 && eval("\x1a\b\x13") >= 0 || eval("\x1a\x05\x01") >= 0 && eval("\x1a\b\x13") < 0)
            {
               if(!eval("\x16\x13\x05"))
               {
                  this["\x1b\x1e\x15"].swapDepths(this["\x1b\x1e\x16"]);
                  set("\x16\x13\x05",true);
               }
            }
            t = eval("\x1a\b\x13") / 1.5;
            this["\x1b\x1e\x15"]._x = eval("\x1a\b\x12");
            this["\x1b\x1e\x15"]._y = eval("\x1a\b\x13");
            this["\x1b\x1e\x16"]._x = 0 - eval("\x1a\b\x12");
            this["\x1b\x1e\x16"]._y = 0 - eval("\x1a\b\x13");
            this["\x1b\x1e\x15"]._xscale = 100 + t;
            this["\x1b\x1e\x15"]._yscale = 100 + t;
            this["\x1b\x1e\x16"]._xscale = 100 - t;
            this["\x1b\x1e\x16"]._yscale = 100 - t;
         }
         else
         {
            delete this.onEnterFrame;
         }
      };
   }
}
