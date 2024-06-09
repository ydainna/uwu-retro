class ank.gapi.§\x17\x01\x06§.Loader extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   static var §\x16\x1b\x10§ = "Loader";
   var §\x1c\x03\x1a§ = false;
   var §\x1c\x02\x06§ = true;
   var §\x1c\x07\x18§ = false;
   var §\x1c\x02\x13§ = false;
   var §\x1e\r\r§ = "";
   var §\x1e\r\x0e§ = "";
   var §\x1c\x04\x0b§ = false;
   function Loader()
   {
      super();
   }
   function get tempVars()
   {
      return this._oTempVars;
   }
   function set tempVars(oTempVars)
   {
      this._oTempVars = oTempVars;
   }
   function §\x13\x02§(§\x16\x0b\t§)
   {
      super["\x13\x02"](_loc3_);
      return this["\x1e\x19\x17"]();
   }
   function §\x1b\x1c§(§\x16\x12\x01§)
   {
      this["\x1c\x07\x18"] = _loc2_;
      return this["\b\b"]();
   }
   function §\b\b§()
   {
      return this["\x1c\x07\x18"];
   }
   function §\x0f\x07§(§\x16\t\r§)
   {
      this["\x1c\x02\x06"] = _loc2_;
      return this["\x1e\x12\x16"]();
   }
   function §\x1e\x12\x16§()
   {
      return this["\x1c\x02\x06"];
   }
   function §\x10\t§(§\x16\t\x1c§)
   {
      this["\x1c\x02\x13"] = _loc2_;
      return this["\x1e\x15\x07"]();
   }
   function §\x1e\x15\x07§()
   {
      return this["\x1c\x02\x13"];
   }
   function §\x11\x07§(oParams)
   {
      this["\x1e\x04\x1c"] = _loc2_;
      if(this["\x1e\x04\x1c"].frame)
      {
         this.frame = this["\x1e\x04\x1c"].frame;
      }
      return this["\x1e\x16\x15"]();
   }
   function §\x1e\x16\x15§()
   {
      return this["\x1e\x04\x1c"];
   }
   function §\x11\b§(§\x1b\f\x12§)
   {
      this["\x1e\r\r"] = _loc2_;
      if(this["\x1c\x02\x06"])
      {
         this.load();
      }
      return this["\x1e\x16\x16"]();
   }
   function §\x1e\x16\x16§()
   {
      return this["\x1e\r\r"];
   }
   function §\x13\x0b§(§\x1b\f\x14§)
   {
      this["\x1e\r\x0e"] = _loc2_;
      return this["\x1e\x1a\x06"]();
   }
   function §\x1e\x1a\x06§()
   {
      return this["\x1e\r\x0e"];
   }
   function §\x13\x15§(bForce)
   {
      this["\x1c\x04\x0b"] = _loc2_;
      return this["\x1e\x1a\x14"]();
   }
   function §\x1e\x1a\x14§()
   {
      return this["\x1c\x04\x0b"];
   }
   function §\x1e\x13\x0e§()
   {
      return this["\x1d\x13\x11"];
   }
   function §\x1e\x13\x0f§()
   {
      return this["\x1d\x13\x12"];
   }
   function §\x06\n§()
   {
      var _loc2_ = Math.round(this.bytesLoaded / this.bytesTotal * 100);
      _loc2_ = !_global.isNaN(_loc2_) ? _loc2_ : 0;
      return _loc2_;
   }
   function §\x1e\x16\x12§()
   {
      return this["\x18\x07\f"].content_mc;
   }
   function §\x11\x05§(§\x18\x1b\x13§)
   {
      this["\x18\x07\f"].content_mc = _loc2_;
      return this["\x1e\x16\x12"]();
   }
   function §\x1e\x1b\x16§()
   {
      return this["\x18\x07\f"];
   }
   function §\x02\x11§()
   {
      return this._bLoaded;
   }
   function §\x13\x19§(§\x1a\x1b\x17§)
   {
      this["\x1e\t\x16"] = _loc2_;
      this.content.gotoAndStop(_loc2_);
      this.size();
      return this["\x1e\x1a\x18"]();
   }
   function §\x10\x01§(§\x16\x0b\t§)
   {
      this["\x18\x07\f"].content_mc["\x16\x15\x06"] = _loc2_;
      return this["\x1e\x13\x10"]();
   }
   function §\x17\x12\x07§()
   {
      delete this["\x1e\x0b\x1a"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.Loader.CLASS_NAME);
      if(this["\x1c\x07\x18"] == undefined)
      {
         this["\x1c\x07\x18"] = true;
      }
      this["\x1c\x05\x06"] = true;
      this["\x1d\x13\x11"] = 0;
      this["\x1d\x13\x12"] = 0;
      this._bLoaded = false;
      this["\x1d\x12\x11"] = new MovieClipLoader();
      this["\x1d\x12\x11"].addListener(this);
   }
   function createChildren()
   {
      this.createEmptyMovieClip("\x18\x07\f",10);
      if(this["\x1c\x02\x06"] && this["\x1e\r\r"] != undefined)
      {
         this.load();
      }
   }
   function size()
   {
      super.size();
      if(this["\x18\x07\f"].content_mc != undefined)
      {
         if(this["\x1e\t\x16"] != undefined && this["\x1e\t\x16"] != "")
         {
            this.frame = this["\x1e\t\x16"];
         }
         if(this["\x1c\x07\x18"])
         {
            var _loc3_ = this["\x18\x07\f"].content_mc._width;
            var _loc4_ = this["\x18\x07\f"].content_mc._height;
            var _loc5_ = _loc3_ / _loc4_;
            var _loc6_ = this["\x1d"] / this["\x0e\x06"];
            if(_loc5_ == _loc6_)
            {
               this["\x18\x07\f"]._width = this["\x1d"];
               this["\x18\x07\f"]._height = this["\x0e\x06"];
            }
            else if(_loc5_ > _loc6_)
            {
               this["\x18\x07\f"]._width = this["\x1d"];
               this["\x18\x07\f"]._height = this["\x1d"] / _loc5_;
            }
            else
            {
               this["\x18\x07\f"]._width = this["\x0e\x06"] * _loc5_;
               this["\x18\x07\f"]._height = this["\x0e\x06"];
            }
            var _loc7_ = this["\x18\x07\f"].content_mc.getBounds();
            this["\x18\x07\f"].content_mc._x = 0 - _loc7_.xMin;
            this["\x18\x07\f"].content_mc._y = 0 - _loc7_.yMin;
            this["\x18\x07\f"]._x = (this["\x1d"] - this["\x18\x07\f"]._width) / 2;
            this["\x18\x07\f"]._y = (this["\x0e\x06"] - this["\x18\x07\f"]._height) / 2;
         }
         if(this["\x1c\x02\x13"])
         {
            this["\x18\x07\f"]._x = this["\x1d"] / 2;
            this["\x18\x07\f"]._y = this["\x0e\x06"] / 2;
         }
      }
   }
   function §\x1a\x16\x07§()
   {
      if(this._bEnabled)
      {
         this.onRelease = function()
         {
            this["\x17\x07\x19"]({type:"click"});
         };
         this.onRollOut = function()
         {
            this["\x17\x07\x19"]({type:"out"});
         };
         this.onRollOver = function()
         {
            this["\x17\x07\x19"]({type:"over"});
         };
      }
      else
      {
         delete this.onRelease;
         delete this.onRollOut;
         delete this.onRollOver;
      }
   }
   function load()
   {
      if(this["\x1e\x0b\x1a"] == undefined && this["\x1e\r\r"] == "")
      {
         return undefined;
      }
      if(!this["\x1c\x04\x0b"] && (this["\x1e\x0b\x1a"] == this["\x1e\r\r"] || this["\x1e\r\r"] == undefined || this["\x18\x07\f"] == undefined))
      {
         return undefined;
      }
      this._visible = false;
      this._bLoaded = false;
      this["\x1e\x0b\x1a"] = this["\x1e\r\r"];
      this["\x18\x07\f"].content_mc.removeMovieClip();
      if(this["\x1e\r\r"].toLowerCase().indexOf(".swf") != -1)
      {
         if(this["\x18\x07\f"].content_mc == undefined)
         {
            this["\x18\x07\f"].createEmptyMovieClip("content_mc",1);
            this["\x18\x07\f"].content_mc["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["Controls/Loader"];
         }
         this["\x1d\x12\x11"].loadClip(this["\x1e\r\r"],this["\x18\x07\f"].content_mc);
      }
      else
      {
         this["\x18\x07\f"].attachMovie(this["\x1e\r\r"],"content_mc",1,this["\x1e\x04\x1c"]);
         this["\x18\x07\f"].content_mc["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["Controls/Loader"];
         this.onLoadComplete(this["\x18\x07\f"].content_mc);
         this.onLoadInit(this["\x18\x07\f"].content_mc);
      }
   }
   function onLoadError(§\x18\x1b\f§)
   {
      if(this["\x1e\r\x0e"] != "")
      {
         this["\x1e\r\r"] = this["\x1e\r\x0e"];
         this["\x1e\r\x0e"] = "";
         this.load();
      }
      else
      {
         this["\x17\x07\x19"]({type:"error",target:this,clip:_loc2_});
      }
   }
   function onLoadProgress(§\x18\x1b\f§, §\x16\x0e\x05§, §\x16\x13\x06§)
   {
      this["\x1d\x13\x11"] = _loc3_;
      this["\x1d\x13\x12"] = _loc4_;
      this["\x17\x07\x19"]({type:"progress",target:this,clip:_loc2_});
   }
   function onLoadComplete(§\x18\x1b\f§)
   {
      this._bLoaded = true;
      this["\x17\x07\x19"]({type:"complete",clip:_loc2_});
   }
   function onLoadInit(§\x18\x1b\f§)
   {
      this.size();
      this._visible = true;
      this["\x17\x07\x19"]({type:"initialization",clip:(!_loc2_.clip ? _loc2_ : _loc2_.clip)});
   }
}
