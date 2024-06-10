class ank.battlefield.§\x18\x0b\x06§
{
   function §\x18\x0b\x06§(c, d)
   {
      this.initialize(c,_loc3_);
   }
   function initialize(c, d)
   {
      this["\x1d\n\x06"] = c;
      this["\x1e\x03\b"] = _loc3_;
      this["\x1c\x10\x1a"] = new Object();
      this["\x1a\x16\x07"](ank.battlefield.Constants["\x18\x0b\x0e"]);
      this._bIs8 = Number(System.capabilities.version.substr(0,1)) >= 8;
   }
   function §\x1a\x16\x07§(§\x19\x0e\x1d§)
   {
      switch(_loc2_)
      {
         case ank.battlefield.Constants["\x18\x0b\x0e"]:
            this["\x1a\x16\x0f"]();
            this["\x1a\x16\x10"](ank.battlefield.mc["\x16\x17\x13"].prototype,false);
            this["\x1a\x16\x10"](ank.battlefield.mc["\x18\f\x01"].prototype,false);
            this["\x1a\x16\x10"](ank.battlefield.mc.Sprite.prototype,false);
            break;
         case ank.battlefield.Constants["\x18\x0b\n"]:
            this["\x1a\x16\x0f"]();
            this["\x1a\x16\x10"](ank.battlefield.mc["\x16\x17\x13"].prototype,false);
            break;
         case ank.battlefield.Constants["\x18\x0b\f"]:
            this["\x1a\x16\x12"](ank.battlefield.mc["\x16\x17\x13"].prototype,true);
            this["\x1a\x16\x11"](ank.battlefield.mc["\x16\x17\x13"].prototype,false);
            break;
         case ank.battlefield.Constants["\x18\x0b\x0b"]:
            this["\x1a\x16\x12"](ank.battlefield.mc["\x16\x17\x13"].prototype,false);
            this["\x1a\x16\x11"](ank.battlefield.mc["\x16\x17\x13"].prototype,true);
            break;
         case ank.battlefield.Constants["\x18\x0b\r"]:
            this["\x1a\x16\x10"](ank.battlefield.mc["\x16\x17\x13"].prototype,true);
            break;
         case ank.battlefield.Constants["\x18\x0b\x0f"]:
            this["\x1a\x16\x12"](ank.battlefield.mc["\x18\f\x01"].prototype,false);
            this["\x1a\x16\x11"](ank.battlefield.mc["\x18\f\x01"].prototype,false);
            if(this._bIs8)
            {
               this["\x1a\x16\x0e"](false);
               this["\x1a\x16\r"](false);
            }
            break;
         case ank.battlefield.Constants["\x18\x0b\x11"]:
            this["\x1a\x16\x12"](ank.battlefield.mc["\x18\f\x01"].prototype,true);
            this["\x1a\x16\x11"](ank.battlefield.mc["\x18\f\x01"].prototype,false);
            if(this._bIs8)
            {
               this["\x1a\x16\x0e"](true);
               this["\x1a\x16\r"](false);
            }
            break;
         case ank.battlefield.Constants["\x18\x0b\x10"]:
            this["\x1a\x16\x12"](ank.battlefield.mc["\x18\f\x01"].prototype,false);
            this["\x1a\x16\x11"](ank.battlefield.mc["\x18\f\x01"].prototype,true);
            if(this._bIs8)
            {
               this["\x1a\x16\x0e"](false);
               this["\x1a\x16\r"](true);
            }
            break;
         case ank.battlefield.Constants["\x18\x0b\x12"]:
            this["\x1a\x16\x10"](ank.battlefield.mc["\x18\f\x01"].prototype,true);
            if(this._bIs8)
            {
               this["\x1a\x16\f"](true);
            }
            break;
         case ank.battlefield.Constants["\x18\x0b\x13"]:
            this["\x1a\x16\x12"](ank.battlefield.mc.Sprite.prototype,false);
            this["\x1a\x16\x11"](ank.battlefield.mc.Sprite.prototype,false);
            break;
         case ank.battlefield.Constants["\x18\x0b\x15"]:
            this["\x1a\x16\x12"](ank.battlefield.mc.Sprite.prototype,true);
            this["\x1a\x16\x11"](ank.battlefield.mc.Sprite.prototype,false);
            break;
         case ank.battlefield.Constants["\x18\x0b\x14"]:
            this["\x1a\x16\x12"](ank.battlefield.mc.Sprite.prototype,false);
            this["\x1a\x16\x11"](ank.battlefield.mc.Sprite.prototype,true);
            break;
         case ank.battlefield.Constants["\x18\x0b\x16"]:
            this["\x1a\x16\x10"](ank.battlefield.mc.Sprite.prototype,true);
      }
   }
   function §\x1a\x16\n§(§\x19\x04\x12§, §\x19\x0e\x1d§)
   {
      var _loc4_ = this["\x1d\n\x06"]["cell" + _loc2_];
      if(_loc4_ == undefined)
      {
         ank.utils.Logger.err("[setEnabledCell] Cell inexistante");
         return undefined;
      }
      this["\x1c\x10\x1a"][_loc4_._name] = _loc4_;
      switch(_loc3_)
      {
         case ank.battlefield.Constants["\x18\x0b\x0e"]:
            this["\x1a\x16\x10"](_loc4_,false);
            break;
         case ank.battlefield.Constants["\x18\x0b\f"]:
            this["\x1a\x16\x12"](_loc4_,true);
            this["\x1a\x16\x11"](_loc4_,false);
            break;
         case ank.battlefield.Constants["\x18\x0b\x0b"]:
            this["\x1a\x16\x12"](_loc4_,false);
            this["\x1a\x16\x11"](_loc4_,true);
            break;
         case ank.battlefield.Constants["\x18\x0b\r"]:
            this["\x1a\x16\x10"](_loc4_,true);
      }
   }
   function §\x1a\x16\x0f§(§\x1b\x18\n§)
   {
      for(var p in this["\x1c\x10\x1a"])
      {
         var _loc3_ = this["\x1c\x10\x1a"][p];
         this["\x1a\x16\x10"](_loc3_,false);
      }
      this["\x1c\x10\x1a"] = new Array();
   }
   function §\x1a\x16\x10§(§\x1a\b\x02§, §\x16\x10\x02§)
   {
      if(_loc3_)
      {
         _loc2_.onRelease = _loc2_["\x1e\x07\x06"];
      }
      else
      {
         delete _loc2_.onRelease;
      }
      this["\x1a\x16\x11"](_loc2_,_loc3_);
   }
   function §\x1a\x16\x12§(§\x1a\b\x02§, §\x16\x10\x02§)
   {
      if(_loc3_)
      {
         _loc2_.onRelease = _loc2_["\x1e\x07\x06"];
      }
      else
      {
         delete _loc2_.onRelease;
      }
   }
   function §\x1a\x16\x11§(§\x1a\b\x02§, §\x16\x10\x02§)
   {
      if(_loc3_)
      {
         _loc2_.onRollOver = _loc2_["\x1e\x07\n"];
         _loc2_.onRollOut = _loc2_["\x1e\x07\t"];
         _loc2_.onRollOut = _loc2_.onReleaseOutside = _loc2_["\x1e\x07\t"];
      }
      else
      {
         delete _loc2_.onRollOver;
         delete _loc2_.onRollOut;
         delete _loc2_.onReleaseOutside;
         var _loc4_ = _global.api;
         if(_loc4_.gfx["\x1a\x0e\x15"] == _loc2_ || _loc4_.gfx["\x1a\x0e\x16"] == _loc2_)
         {
            _loc2_["\x1e\x07\t"]();
         }
      }
   }
   function §\x1a\x16\f§(§\x16\x10\x02§)
   {
      var _loc3_ = this["\x1e\x03\b"].Map.data;
      for(var k in _loc3_)
      {
         var _loc4_ = _loc3_[k].mcObject2;
         if(_loc3_[k]["\x18\x13\x11"])
         {
            if(_loc4_ != undefined)
            {
               if(_loc2_)
               {
                  _loc4_.onRelease = _loc4_["\x1e\x07\x06"];
               }
               else
               {
                  delete _loc4_.onRelease;
               }
               this["\x1a\x16\x11"](_loc4_,_loc2_);
            }
         }
      }
   }
   function §\x1a\x16\x0e§(§\x16\x10\x02§)
   {
      var _loc3_ = this["\x1e\x03\b"].Map.data;
      for(var k in _loc3_)
      {
         var _loc4_ = _loc3_[k].mcObject2;
         if(_loc3_[k]["\x18\x13\x11"])
         {
            if(_loc4_ != undefined)
            {
               if(_loc2_)
               {
                  _loc4_.onRelease = _loc4_["\x1e\x07\x06"];
               }
               else
               {
                  delete _loc4_.onRelease;
               }
            }
         }
      }
   }
   function §\x1a\x16\r§(§\x16\x10\x02§)
   {
      var _loc3_ = this["\x1e\x03\b"].Map.data;
      for(var k in _loc3_)
      {
         var _loc4_ = _loc3_[k].mcObject2;
         if(_loc3_[k]["\x18\x13\x11"])
         {
            if(_loc4_ != undefined)
            {
               this["\x1a\x16\x11"](_loc4_,_loc2_);
            }
         }
      }
   }
}
