class dofus.§\x18\x03\x10§.gapi.ui.§\x16\b\x1a§.BannerCircleXtra
{
   function BannerCircleXtra(§\x16\x04\x05§, uiBanner)
   {
      this._api = _loc2_;
      this._banner = uiBanner;
   }
   function §\x1e\x12\x05§()
   {
      return this._api;
   }
   function §\x1a\x17\x1c§(§\x19\r\x1a§)
   {
      if(this._banner["\x1e\b\x11"] != "map")
      {
         return undefined;
      }
      this._banner._mcXtra["\x1a\x19\r"](_loc2_,true);
   }
   function checkMouseOnMiniMap()
   {
      if(this._banner["\x1e\b\x11"] != "map")
      {
         return undefined;
      }
      if(this._banner._mcXtra["\x18\x0e\x05"]())
      {
         return undefined;
      }
      if(!this._banner["\x1c\x04\x19"])
      {
         return undefined;
      }
      this._banner["\x18\x1e\x18"](false);
      if(!this.api.datacenter.Game["\x18\r\x15"] && this.api.kernel.OptionsManager.getOption("BannerGaugeMode") == "none")
      {
         this["\x1a\x1b\b"](this._banner["\x1d\t\x1c"]);
      }
      else
      {
         this["\x1a\x1b\b"](this._banner["\x1d\t\x1b"]);
      }
      dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"]["\x1a\x1d\x12"](this._banner);
   }
   function §\x1a\x1b\x07§(§\x16\r\b§)
   {
      this._banner["\x1d\t\x1a"]._visible = _loc2_;
      if(!_loc2_)
      {
         this["\x1a\x1b\b"](this._banner["\x1d\t\x1c"]);
         if(this._banner["\x1d\n\x10"] == this._banner["\x1d\t\x1c"])
         {
            this._banner["\x1c\f\x1d"]["\x1a\x16\x19"](100,2109246);
         }
      }
      else
      {
         this["\x1a\x1b\b"](this._banner["\x1d\t\x1b"]);
      }
      if(this._banner["\x1d\n\x10"] == this._banner["\x1d\t\x1c"])
      {
         if(this._banner["\x1c\x04\x19"])
         {
            this["\x1a\x17\x1c"](dofus.graphics.gapi.controls.MiniMap["\x1a\x10\n"]);
         }
         else
         {
            this["\x1a\x17\x1c"](dofus.graphics.gapi.controls.MiniMap["\x1a\x10\x0b"]);
         }
      }
      else
      {
         this["\x1a\x17\x1c"](dofus.graphics.gapi.controls.MiniMap["\x1a\x10\f"]);
      }
      this._banner["\x17\b\x0b"](this.api.kernel.OptionsManager.getOption("MovableBar") && (!this.api.kernel.OptionsManager.getOption("HideSpellBar") || this.api.datacenter.Game["\x18\r\x15"]));
   }
   function §\x1a\x1b\b§(§\x18\x1b\x1a§)
   {
      this._banner["\x1d\n\x10"] = _loc2_;
      this._banner._mcXtra.setMask(_loc2_);
   }
   function §\x1a\x15\x0f§(§\x19\x1e\x1d§)
   {
      for(var k in _loc2_)
      {
         this._banner._mcXtra[k] = _loc2_[k];
      }
   }
   function §\x1b\x14\x02§(§\x16\f\x06§)
   {
      if(this._banner["\x1e\b\x11"] == "artwork")
      {
         if(_loc2_)
         {
            this["\x1a\x1c\x1d"](this._banner["\x1e\b\x11"],false);
            this["\x1a\x1c\x1d"]("artwork",true,{bMask:true});
         }
         else
         {
            var _loc3_ = dofus.Constants["\x18\x04\x15"] + this.api.datacenter.Player.Guild + this.api.datacenter.Player.Sex + ".swf";
            this._banner._mcXtra.fallbackContentPath = _loc3_;
            this._banner._mcXtra.contentPath = dofus.Constants["\x18\x04\x15"] + this._banner._oData.data["\x18\x02\x15"] + ".swf";
         }
      }
   }
   function §\x1a\x1c\x1d§(§\x1b\r\x0f§, bShow, §\x19\x1e\x1d§, §\x19\x12\x0b§)
   {
      if(_loc2_ == undefined)
      {
         return null;
      }
      if(_loc2_ == this._banner["\x1e\b\x11"] && _loc3_)
      {
         return null;
      }
      if(_loc2_ != this._banner["\x1e\b\x11"] && !_loc3_)
      {
         return null;
      }
      if(this._banner["\x1e\b\x11"] != undefined && _loc3_)
      {
         this["\x1a\x1c\x1d"](this._banner["\x1e\b\x11"],false);
      }
      var _loc8_ = new Object();
      var _loc9_ = new Array();
      if(_loc5_ == undefined)
      {
         _loc5_ = new Object();
      }
      this.api.kernel.OptionsManager.setOption("BannerIllustrationMode",_loc2_);
      if(this._banner["\x1d\x1a\x01"] != undefined)
      {
         _global.clearInterval(this._banner["\x1d\x1a\x01"]);
      }
      switch(_loc2_)
      {
         case "artwork":
            var _loc10_ = dofus.Constants["\x18\x04\x15"] + this.api.datacenter.Player.Guild + this.api.datacenter.Player.Sex + ".swf";
            var _loc6_ = "GAPILoader";
            _loc8_ = {_x:this._banner["\x1d\t\x1b"]._x,_y:this._banner["\x1d\t\x1b"]._y,fallbackContentPath:_loc10_,contentPath:dofus.Constants["\x18\x04\x15"] + this._banner._oData.data["\x18\x02\x15"] + ".swf",enabled:true};
            _loc9_ = ["complete","click","over","out"];
            break;
         case "compass":
            var _loc11_ = this.api.datacenter.["\x18\x18\x0e"];
            _loc6_ = "Compass";
            _loc8_ = {_x:this._banner._mcCircleXtraPlacer._x,_y:this._banner._mcCircleXtraPlacer._y,_width:this._banner._mcCircleXtraPlacer._width,_height:this._banner._mcCircleXtraPlacer._height,arrow:"UI_BannerCompassArrow",noArrow:"UI_BannerCompassNoArrow",background:"UI_BannerCompassBack",targetCoords:this.api.datacenter.Basics["\x16\b\x1c"],currentCoords:[_loc11_.x,_loc11_.y]};
            _loc9_ = ["click","over","out"];
            break;
         case "clock":
            _loc6_ = "Clock";
            _loc8_ = {_x:this._banner._mcCircleXtraPlacer._x,_y:this._banner._mcCircleXtraPlacer._y,_width:this._banner._mcCircleXtraPlacer._width,_height:this._banner._mcCircleXtraPlacer._height,arrowHours:"UI_BannerClockArrowHours",arrowMinutes:"UI_BannerClockArrowMinutes",background:"UI_BannerClockBack",updateFunction:{object:this.api.kernel["\x19\b\x11"],method:this.api.kernel["\x19\b\x11"]["\x17\x16\x06"]}};
            _loc9_ = ["click","over","out"];
            break;
         case "helper":
            _loc6_ = "GAPILoader";
            if(dofus.Constants.TRIPLEFRAMERATE)
            {
               _loc8_ = {_x:this._banner._mcCircleXtraPlacer._x,_y:this._banner._mcCircleXtraPlacer._y,contentPath:"Helper_TripleFramerate",enabled:true};
            }
            else
            {
               _loc8_ = {_x:this._banner._mcCircleXtraPlacer._x,_y:this._banner._mcCircleXtraPlacer._y,contentPath:"Helper",enabled:true};
            }
            _loc9_ = ["click","over","out"];
            break;
         case "map":
            this._banner["\x1d\x1a\x01"] = _global.setInterval(this,"checkMouseOnMiniMap",dofus.graphics.gapi.ui.Banner["\x16\x1b\x01"]);
            _loc6_ = "MiniMap";
            _loc8_ = {_x:this._banner._mcCircleXtraPlacer._x,_y:this._banner._mcCircleXtraPlacer._y,contentPath:"\x18\x18\x0e",enabled:true};
            _loc9_ = ["over","click"];
            break;
         default:
            _loc6_ = "GAPILoader";
            _loc8_ = {_x:this._banner._mcCircleXtraPlacer._x,_y:this._banner._mcCircleXtraPlacer._y,_width:this._banner._mcCircleXtraPlacer._width,_height:this._banner._mcCircleXtraPlacer._height};
      }
      var _loc12_ = null;
      if(_loc3_)
      {
         new org.flashdevelop.utils.FlashConnect.trace("show","dofus.graphics.gapi.ui.banner.BannerCircleXtra::showCircleXtra","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/graphics/gapi/ui/banner/BannerCircleXtra.as",222);
         for(var k in _loc8_)
         {
            _loc5_[k] = _loc8_[k];
         }
         _loc12_ = this._banner.attachMovie(_loc6_,"_mcXtra",this._banner.getNextHighestDepth(),_loc5_);
         this._banner["\x1e\b\x11"] = _loc2_;
         if(_loc4_.bMask)
         {
            this._banner["\x1e\t\x01"] = _loc4_.sMaskSize;
            if(!this.api.datacenter.Game["\x18\r\x15"] && this.api.kernel.OptionsManager.getOption("BannerGaugeMode") == "none")
            {
               this["\x1a\x1b\b"](this._banner["\x1d\t\x1c"]);
            }
            else
            {
               this["\x1a\x1b\b"](this._banner["\x1d\t\x1b"]);
            }
         }
         for(var k in _loc9_)
         {
            this._banner._mcXtra.addEventListener(_loc9_[k],this._banner);
         }
         this._banner._mcXtra.swapDepths(this._banner._mcCircleXtraPlacer);
      }
      else if(this._banner._mcXtra != undefined)
      {
         for(var k in _loc9_)
         {
            this._banner._mcXtra.removeEventListener(_loc9_[k],this._banner);
         }
         this._banner._mcCircleXtraPlacer.swapDepths(this._banner._mcXtra);
         this._banner._mcXtra.removeMovieClip();
         delete this._banner["\x1e\b\x11"];
      }
      if(_loc4_.bUpdateGauge)
      {
         dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"]["\x1a\x1d\x12"](this._banner);
      }
      return _loc12_;
   }
}
