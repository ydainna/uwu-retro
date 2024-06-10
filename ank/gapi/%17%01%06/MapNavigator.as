class ank.gapi.§\x17\x01\x06§.MapNavigator extends ank.gapi.core.§\x1b\x13\x03§
{
   static var §\x16\x1b\x10§ = "MapNavigator";
   var §\x1d\x13\x0f§ = 5;
   var §\x1c\b\b§ = true;
   var §\x1e\x02\x05§ = 50;
   var §\x1e\x01\x0f§ = 10;
   var §\x1d\x16\x1b§ = 10;
   var §\x1e\n\b§ = "move";
   var _nDepthCount = 0;
   var §\x1e\x01\x11§ = 0;
   var §\x1e\x01\x1d§ = 0;
   function MapNavigator()
   {
      super();
   }
   function §\x0f\x1c§(§\x19\x04\x07§)
   {
      this["\x1d\x13\x0f"] = Number(_loc2_);
      return this["\x1e\x13\f"]();
   }
   function §\x1e\x13\f§()
   {
      return this["\x1d\x13\x0f"];
   }
   function §\x1c\x16§(§\x16\x12\x0f§)
   {
      this["\x1c\b\b"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x17\n\x04"]();
      }
      return this["\t\x03"]();
   }
   function §\t\x03§()
   {
      return this["\x1c\b\b"];
   }
   function §\x11\b§(§\x1b\f\x12§)
   {
      this["\x1e\r\r"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this._ldrMap.contentPath = this["\x1e\r\r"];
      }
      return this["\x1e\x16\x16"]();
   }
   function §\x1e\x16\x16§()
   {
      return this["\x1e\r\r"];
   }
   function §\x10§(§\x19\x10\x1c§)
   {
      this["\x1e\x01\x0f"] = _loc2_;
      return this["\r\x13"]();
   }
   function §\r\x13§()
   {
      return this["\x1e\x01\x0f"];
   }
   function §\x14\x16§(§\x19\x11\b§)
   {
      this["\x1d\x16\x1b"] = _loc2_;
      return this["\x1e\x1b\x1b"]();
   }
   function §\x1e\x1b\x1b§()
   {
      return this["\x1d\x16\x1b"];
   }
   function §\x1c§(§\x19\x11\x0b§)
   {
      if(_global.isNaN(_loc2_))
      {
         return undefined;
      }
      if(_loc2_ > 100)
      {
         _loc2_ = 100;
      }
      if(_loc2_ < 10)
      {
         _loc2_ = 10;
      }
      this["\x1e\x02\x05"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1a\x1b\n"]();
      }
      return this["\x0e\x05"]();
   }
   function §\x0e\x05§()
   {
      return this["\x1e\x02\x05"];
   }
   function §\x15\x05§(§\x1b\x02\x02§)
   {
      this["\x1e\n\b"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x16\x04\x0e"]();
      }
      return this["\x1e\x1c\x10"]();
   }
   function §\x1e\x1c\x10§()
   {
      return this["\x1e\n\b"];
   }
   function §\r\x03§()
   {
      return this["\x1e\x01\x0f"] * this["\x1e\x02\x05"] / 100;
   }
   function §\r\x02§()
   {
      return this["\x1d\x16\x1b"] * this["\x1e\x02\x05"] / 100;
   }
   function §\x1e\x17\x1a§()
   {
      return this["\x1e\x01\x11"];
   }
   function §\x1e\x17\x1b§()
   {
      return this["\x1e\x01\x1d"];
   }
   function §\x02\x12§()
   {
      return this._ldrMap;
   }
   function §\x1a\x17\x18§(§\x19\x10\x1a§, §\x19\x11\x05§)
   {
      this._mcXtra._xscale = this._mcXtra._yscale = this["\x1e\x02\x05"];
      if(_loc2_ == undefined || _loc3_ == undefined)
      {
         return undefined;
      }
      this["\x1a\x0b\x1a"]();
      this["\x1e\x01\x11"] = _loc2_;
      this["\x1e\x01\x1d"] = _loc3_;
      var _loc4_ = this._ldrMap.content;
      _loc4_._x = this._mcXtra._x = (0 - this["\x1b\x17\x1d"]) * (0.5 + _loc2_);
      _loc4_._y = this._mcXtra._y = (0 - this["\x1b\x17\x1c"]) * (0.5 + _loc3_);
      var _loc5_ = 15;
      var _loc6_ = 15;
      var _loc7_ = Math.floor(_loc2_ - this["\x1d\x19\x05"] / (2 * this["\x1b\x17\x1d"]) + 0.5);
      var _loc8_ = Math.floor(_loc3_ - this["\x1d\x19\x02"] / (2 * this["\x1b\x17\x1c"]) + 0.5);
      var _loc9_ = Math.floor(_loc7_ / _loc5_);
      var _loc10_ = Math.floor(_loc8_ / _loc6_);
      var _loc11_ = _loc9_ + Math.ceil(Math.floor(this["\x1d\x19\x05"] / this["\x1b\x17\x1d"]) / _loc5_);
      var _loc12_ = _loc10_ + Math.ceil(Math.floor(this["\x1d\x19\x02"] / this["\x1b\x17\x1c"]) / _loc6_);
      for(var k in this._ldrMap.content)
      {
         this._ldrMap.content[k].removeMovieClip();
      }
      var _loc13_ = _loc9_;
      while(_loc13_ <= _loc11_)
      {
         var _loc14_ = _loc10_;
         while(_loc14_ <= _loc12_)
         {
            this._ldrMap.content.attachMovie(_loc13_ + "_" + _loc14_,_loc13_ + "_" + _loc14_,this._ldrMap.content.getNextHighestDepth(),{_yscale:this["\x1e\x02\x05"],_xscale:this["\x1e\x02\x05"],_x:_loc13_ * _loc5_ * this["\x1b\x17\x1d"],_y:_loc14_ * _loc6_ * this["\x1b\x17\x1c"]});
            _loc14_ = _loc14_ + 1;
         }
         _loc13_ = _loc13_ + 1;
      }
   }
   function §\x15\x1e\x1a§(§\x19\x0f\x03§, §\x19\x05\x06§, §\x19\x03\x07§)
   {
      if(_loc2_ == this["\x1d\x18\b"])
      {
         return undefined;
      }
      this["\x1a\x0b\x1a"]();
      var _loc5_ = this._ldrMap.content.attachMovie("subarea_" + _loc2_,"_mcSubarea",this._ldrMap.content.getNextHighestDepth());
      var _loc6_ = new Color(_loc5_);
      _loc6_.setRGB(_loc3_);
      _loc5_._alpha = _loc4_;
      _loc5_._xscale = _loc5_._yscale = this["\x1e\x02\x05"];
      this["\x1d\x18\b"] = _loc2_;
   }
   function §\x1a\x0b\x1a§()
   {
      this._ldrMap.content._mcSubarea.removeMovieClip();
      delete this["\x1d\x18\b"];
   }
   function §\x16\x01\t§(§\x1b\x03\x03§, §\x1b\x02\x17§, sID, §\x19\x10\x1a§, §\x19\x11\x05§, §\x19\x05\x06§, §\x19\x03\x07§, §\x16\n\r§, §\x16\n\x18§)
   {
      var _loc11_ = this._mcXtra[_loc3_][sID];
      if(_loc10_ == true && _loc11_ != undefined)
      {
         return _loc11_;
      }
      var _loc12_ = this["\x1e\x01\x0f"] * (0.5 + _loc5_);
      var _loc13_ = this["\x1d\x16\x1b"] * (0.5 + _loc6_);
      var _loc14_ = this["\x17\x03\x01"](_loc3_);
      var _loc15_ = _loc14_.getNextHighestDepth();
      var _loc16_ = _loc14_.attachMovie(_loc2_,sID,_loc15_,{_x:_loc12_,_y:_loc13_});
      this._mcXtra[_loc3_]["clipByCoord_" + _loc5_ + "_" + _loc6_] = _loc16_;
      if(_loc7_ != undefined)
      {
         var _loc17_ = new Color(_loc16_["\x1d\n\x01"]);
         _loc17_.setRGB(_loc7_);
      }
      if(_loc9_)
      {
         _loc16_.mn = this;
         _loc16_.onRelease = function()
         {
            this.mn.click({target:this.mn._btnLocateClick});
         };
      }
      _loc16_._alpha = _loc8_ != undefined ? _loc8_ : 100;
      return _loc16_;
   }
   function removeXtraClip(§\x1b\x02\x17§, sID, §\x19\x10\x1a§, §\x19\x11\x05§)
   {
      if(sID != undefined)
      {
         var _loc6_ = this._mcXtra[_loc2_][sID];
      }
      else
      {
         _loc6_ = this._mcXtra[_loc2_]["clipByCoord_" + _loc4_ + "_" + _loc5_];
      }
      _loc6_.removeMovieClip();
   }
   function §\x18\x17\x03§(§\x1a\x1b\x0f§, §\x1b\x02\x17§)
   {
      var _loc4_ = this["\x17\x03\x01"](_loc3_);
      var _loc5_ = new MovieClipLoader();
      _loc5_.addListener(this);
      _loc5_.loadClip(_loc2_,_loc4_);
   }
   function §\x17\x03\x01§(§\x1b\x02\x17§)
   {
      var _loc3_ = this.getLayerDepth(_loc2_) + this._nDepthCount;
      var _loc4_ = this._mcXtra[_loc2_];
      if(_loc4_ == undefined)
      {
         _loc4_ = this._mcXtra.createEmptyMovieClip(_loc2_,_loc3_);
         this._nDepthCount++;
      }
      return _loc4_;
   }
   function §\x18\x02\x0e§(§\x1b\x02\x17§)
   {
      return this._mcXtra[_loc2_];
   }
   function clear(§\x1b\x02\x17§)
   {
      if(_loc2_ != undefined)
      {
         this._mcXtra[_loc2_].removeMovieClip();
      }
      else
      {
         for(var k in this._mcXtra)
         {
            this._mcXtra[k].removeMovieClip();
         }
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.MapNavigator.CLASS_NAME);
   }
   function createChildren()
   {
      var _loc2_ = {styleName:"none",backgroundDown:"ButtonSimpleRectangleUpDown",backgroundUp:"ButtonSimpleRectangleUpDown"};
      this.attachMovie("Rectangle","_mcBorder",0);
      this.attachMovie("Button","_btnNW",10,_loc2_);
      this.attachMovie("Button","_btnN",20,_loc2_);
      this.attachMovie("Button","_btnNE",30,_loc2_);
      this.attachMovie("Button","_btnW",40,_loc2_);
      this.attachMovie("Button","_btnE",50,_loc2_);
      this.attachMovie("Button","_btnSW",60,_loc2_);
      this.attachMovie("Button","_btnS",70,_loc2_);
      this.attachMovie("Button","_btnSE",80,_loc2_);
      this.attachMovie("Button","_btnLocateClick",90,_loc2_);
      this.attachMovie("Rectangle","_mcMapBorder",100);
      this.attachMovie("Rectangle","_mcMapBackground",110);
      this.createEmptyMovieClip("\x1d\r\x15",120);
      this._ldrMap = ank.gapi.controls.Loader(this["\x1d\r\x15"].attachMovie("GAPILoader","_ldrMap",10,{centerContent:false,scaleContent:false,autoLoad:true,contentPath:this["\x1e\r\r"]}));
      this.attachMovie("Rectangle","_mcMask",130);
      this["\x1d\r\x15"].setMask(this._mcMask);
      this["\x1d\r\x15"].createEmptyMovieClip("\x1d\x0b\x1b",140);
      this["\x1d\x0b\x1b"] = this["\x1d\r\x15"]["\x1d\x0b\x1b"];
      this["\x1d\r\x15"].createEmptyMovieClip("_mcXtra",200);
      this._mcXtra = this["\x1d\r\x15"]._mcXtra;
      this._ldrMap.addEventListener("initialization",this);
      this._btnNW.addEventListener("click",this);
      this._btnN.addEventListener("click",this);
      this._btnNE.addEventListener("click",this);
      this._btnW.addEventListener("click",this);
      this._btnE.addEventListener("click",this);
      this._btnSW.addEventListener("click",this);
      this._btnS.addEventListener("click",this);
      this._btnSE.addEventListener("click",this);
      this._btnLocateClick.addEventListener("click",this);
      this._btnNW.addEventListener("over",this);
      this._btnN.addEventListener("over",this);
      this._btnNE.addEventListener("over",this);
      this._btnW.addEventListener("over",this);
      this._btnE.addEventListener("over",this);
      this._btnSW.addEventListener("over",this);
      this._btnS.addEventListener("over",this);
      this._btnSE.addEventListener("over",this);
      this._btnNW.addEventListener("out",this);
      this._btnN.addEventListener("out",this);
      this._btnNE.addEventListener("out",this);
      this._btnW.addEventListener("out",this);
      this._btnE.addEventListener("out",this);
      this._btnSW.addEventListener("out",this);
      this._btnS.addEventListener("out",this);
      this._btnSE.addEventListener("out",this);
      this["\x16\x04\x0e"]();
   }
   function §\x16\x05\f§()
   {
      var _loc2_ = this["\x1d"] - 2;
      var _loc3_ = this["\x0e\x06"] - 2;
      var _loc4_ = _loc2_ / 3;
      var _loc5_ = _loc3_ / 3;
      var _loc6_ = _loc2_ - this["\x1d\x13\x0f"] * 2 - 2;
      var _loc7_ = _loc3_ - this["\x1d\x13\x0f"] * 2 - 2;
      this._mcBorder._width = this["\x1d"];
      this._mcBorder._height = this["\x0e\x06"];
      this._btnNW["\x1a\x19\x18"](_loc4_,_loc5_);
      this._btnN["\x1a\x19\x18"](_loc4_ - 2,_loc5_);
      this._btnNE["\x1a\x19\x18"](_loc4_,_loc5_);
      this._btnW["\x1a\x19\x18"](_loc4_,_loc5_ - 2);
      this._btnE["\x1a\x19\x18"](_loc4_,_loc5_ - 2);
      this._btnSW["\x1a\x19\x18"](_loc4_,_loc5_);
      this._btnS["\x1a\x19\x18"](_loc4_ - 2,_loc5_);
      this._btnSE["\x1a\x19\x18"](_loc4_,_loc5_);
      this._btnNW._x = this._btnW._x = this._btnSW._x = 1;
      this._btnN._x = this._btnS._x = _loc4_ + 2;
      this._btnNE._x = this._btnE._x = this._btnSE._x = _loc4_ * 2 + 1;
      this._btnNW._y = this._btnN._y = this._btnNE._y = 1;
      this._btnW._y = this._btnE._y = _loc5_ + 2;
      this._btnSW._y = this._btnS._y = this._btnSE._y = _loc5_ * 2 + 1;
      this._mcMapBorder._width = _loc6_ + 2;
      this._mcMapBorder._height = _loc7_ + 2;
      this._mcMapBorder._x = this._mcMapBorder._y = this["\x1d\x13\x0f"] + 1;
      this._mcMask._width = this._mcMapBackground._width = _loc6_;
      this._mcMask._height = this._mcMapBackground._height = _loc7_;
      this._btnLocateClick._x = this._btnLocateClick._y = this._mcMask._x = this._mcMask._y = this._mcMapBackground._x = this._mcMapBackground._y = this["\x1d\x13\x0f"] + 2;
      this["\x1d\r\x15"]._x = this["\x1d"] / 2;
      this["\x1d\r\x15"]._y = this["\x0e\x06"] / 2;
      this["\x1d\x0b\x1b"]._x = (0 - this["\x1d"]) / 2 + this["\x1d\x13\x0f"] + 2;
      this["\x1d\x0b\x1b"]._y = (0 - this["\x0e\x06"]) / 2 + this["\x1d\x13\x0f"] + 2;
      this._btnLocateClick["\x1a\x19\x18"](_loc6_,_loc7_);
      this["\x1d\x19\x05"] = this["\x1d"] - this["\x1d\x13\x0f"] * 2 - 4;
      this["\x1d\x19\x02"] = this["\x0e\x06"] - this["\x1d\x13\x0f"] * 2 - 4;
      this["\x1a\x1b\n"]();
      this["\x1a\x17\x18"](0,0);
   }
   function draw()
   {
      var _loc2_ = this.getStyle();
      this._btnNW.styleName = this._btnN.styleName = this._btnNE.styleName = this._btnW.styleName = this._btnE.styleName = this._btnSW.styleName = this._btnS.styleName = this._btnSE.styleName = _loc2_.buttonstyle;
      this["\x1a\x18\x03"](this._mcBorder,_loc2_.bordercolor);
      this["\x1a\x18\x03"](this._mcMapBorder,_loc2_.bordercolor);
      this["\x1a\x18\x03"](this["\x1d\x0b\x1b"],_loc2_.gridcolor);
      this["\x1a\x18\x03"](this._mcMapBackground,_loc2_.bgcolor);
   }
   function §\x17\n\x04§(§\x16\x15\x05§)
   {
      if(_loc2_ == undefined)
      {
         _loc2_ = true;
      }
      this["\x1d\x0b\x1b"].clear();
      if(this["\x1c\b\b"] && _loc2_)
      {
         var _loc3_ = (this["\x1d\x19\x05"] - this["\x1b\x17\x1d"]) / 2;
         while(_loc3_ > 0)
         {
            this["\x17\n\x0f"](this["\x1d\x0b\x1b"],_loc3_,0,1,this["\x1d\x19\x02"],0,0);
            _loc3_ -= this["\x1b\x17\x1d"];
         }
         _loc3_ = (this["\x1d\x19\x05"] + this["\x1b\x17\x1d"]) / 2;
         while(_loc3_ < this["\x1d\x19\x05"])
         {
            this["\x17\n\x0f"](this["\x1d\x0b\x1b"],_loc3_,0,1,this["\x1d\x19\x02"],0,0);
            _loc3_ += this["\x1b\x17\x1d"];
         }
         var _loc4_ = (this["\x1d\x19\x02"] - this["\x1b\x17\x1c"]) / 2;
         while(_loc4_ > 0)
         {
            this["\x17\n\x0f"](this["\x1d\x0b\x1b"],0,_loc4_,this["\x1d\x19\x05"],1,0,0);
            _loc4_ -= this["\x1b\x17\x1c"];
         }
         _loc4_ = (this["\x1d\x19\x02"] + this["\x1b\x17\x1c"]) / 2;
         while(_loc4_ < this["\x1d\x19\x02"])
         {
            this["\x17\n\x0f"](this["\x1d\x0b\x1b"],0,_loc4_,this["\x1d\x19\x05"],1,0,0);
            _loc4_ += this["\x1b\x17\x1c"];
         }
      }
   }
   function §\x1a\x1b\n§()
   {
      this["\x1a\x17\x18"](this["\x1e\x01\x11"],this["\x1e\x01\x1d"]);
      this["\x17\n\x04"](true);
      this["\x17\x07\x19"]({type:"zoom"});
   }
   function §\x18\x1e\x1c§(§\x19\x11\x04§, §\x19\x11\t§)
   {
      this["\x1a\x17\x18"](this["\x1e\x01\x11"] + _loc2_,this["\x1e\x01\x1d"] + _loc3_);
   }
   function §\x16\x04\x0e§()
   {
      delete this["\x1e\x04\x05"];
      switch(this["\x1e\n\b"])
      {
         case "move":
            this._btnNW.enabled = true;
            this._btnN.enabled = true;
            this._btnNE.enabled = true;
            this._btnW.enabled = true;
            this._btnE.enabled = true;
            this._btnSW.enabled = true;
            this._btnS.enabled = true;
            this._btnSE.enabled = true;
            break;
         case "zoom+":
         case "zoom-":
         case "select":
            this._btnNW.enabled = false;
            this._btnN.enabled = false;
            this._btnNE.enabled = false;
            this._btnW.enabled = false;
            this._btnE.enabled = false;
            this._btnSW.enabled = false;
            this._btnS.enabled = false;
            this._btnSE.enabled = false;
      }
   }
   function §\x17\x1d\x1d§(§\x19\x10\x1a§, §\x19\x11\x05§)
   {
      var _loc4_ = this["\x1b\x17\x1d"] * (_loc2_ - this["\x1e\x01\x11"] - 0.5);
      var _loc5_ = this["\x1b\x17\x1c"] * (_loc3_ - this["\x1e\x01\x1d"] - 0.5);
      return {x:_loc4_,y:_loc5_};
   }
   function §\x17\x15\x15§(§\x19\r\b§, §\x19\r\t§)
   {
      var _loc4_ = Math.floor((_loc2_ + this["\x1b\x17\x1d"] * 0.5) / this["\x1b\x17\x1d"]) + this["\x1e\x01\x11"];
      var _loc5_ = Math.floor((_loc3_ + this["\x1b\x17\x1c"] * 0.5) / this["\x1b\x17\x1c"]) + this["\x1e\x01\x1d"];
      return {x:_loc4_,y:_loc5_};
   }
   function §\x17\x15\x16§(§\x19\r\b§, §\x19\r\t§)
   {
      var _loc4_ = Math.floor((_loc2_ + this["\x1b\x17\x1d"] * 0.5) / this["\x1b\x17\x1d"]) - this["\x1e\x01\x1a"];
      var _loc5_ = Math.floor((_loc3_ + this["\x1b\x17\x1c"] * 0.5) / this["\x1b\x17\x1c"]) - this["\x1e\x02\x03"];
      return {x:_loc4_,y:_loc5_};
   }
   function getLayerDepth(§\x1b\x02\x17§)
   {
      switch(_loc2_.toLowerCase())
      {
         case "highlight":
            var _loc3_ = 400;
            break;
         case "flag":
            _loc3_ = 800;
            break;
         default:
            _loc3_ = 0;
      }
      return _loc3_;
   }
   function onMouseDown()
   {
      if(this["\x1e\n\b"] == "move")
      {
         if(this._mcMapBackground.hitTest(_root._xmouse,_root._ymouse,true))
         {
            delete this["\x1e\x04\x05"];
            var _loc2_ = this["\x17\x15\x15"](this._ldrMap._xmouse,this._ldrMap._ymouse);
            this["\x1e\x01\x1a"] = _loc2_.x;
            this["\x1e\x02\x03"] = _loc2_.y;
            this.gapi.hideTooltip();
            this.gapi["\x1a\x15\x19"]({iconFile:"MapNavigatorMoveCursor"});
         }
      }
   }
   function onMouseUp()
   {
      delete this["\x1e\x01\x1a"];
      delete this["\x1e\x02\x03"];
      this.gapi.removeCursor();
      if(this._mcMapBackground.hitTest(_root._xmouse,_root._ymouse,true))
      {
         if(this["\x1c\b\x16"] != true)
         {
            this["\x1c\b\x16"] = true;
            ank.utils.Timer.setTimer(this,"mapnavigator",this,this["\x19\x15\x15"],ank.gapi["\x17\x13\n"]["\x17\x05\x0f"]);
         }
         else
         {
            this["\x19\x15\x15"]();
            var _loc2_ = this._ldrMap._xmouse;
            var _loc3_ = this._ldrMap._ymouse;
            var _loc4_ = this["\x17\x15\x15"](_loc2_,_loc3_);
            this["\x17\x07\x19"]({type:"doubleClick",coordinates:_loc4_});
         }
      }
   }
   function onMouseMove()
   {
      if(this._mcMapBackground.hitTest(_root._xmouse,_root._ymouse,true))
      {
         var _loc2_ = this._ldrMap._xmouse;
         var _loc3_ = this._ldrMap._ymouse;
         if(this["\x1e\x01\x1a"] == undefined)
         {
            var _loc4_ = this["\x17\x15\x15"](_loc2_,_loc3_);
            if(this["\x1e\x04\x05"].x != _loc4_.x || this["\x1e\x04\x05"].y != _loc4_.y)
            {
               var _loc5_ = this["\x17\x1d\x1d"](_loc4_.x,_loc4_.y);
               this._ldrMap.localToGlobal(_loc5_);
               this.gapi.showTooltip(_loc4_.x + ", " + _loc4_.y,_loc5_.x,_loc5_.y - 20);
               this["\x17\x07\x19"]({type:"overMap",coordinates:_loc4_});
               this["\x1e\n\x15"] = "overMap";
               this["\x1e\x04\x05"] = _loc4_;
            }
         }
         else
         {
            var _loc6_ = this["\x17\x15\x16"](_loc2_,_loc3_);
            this["\x1a\x17\x18"](0 - _loc6_.x,0 - _loc6_.y);
         }
      }
      else if(this["\x1e\n\x15"] != "outMap")
      {
         this["\x17\x07\x19"]({type:"outMap"});
         this["\x1e\n\x15"] = "outMap";
         this.gapi.hideTooltip();
      }
   }
   function click(oEvent)
   {
      loop0:
      switch(_loc2_.target._name)
      {
         case "_btnNW":
            this["\x18\x1e\x1c"](-1,-1);
            break;
         case "_btnN":
            this["\x18\x1e\x1c"](0,-1);
            break;
         case "_btnNE":
            this["\x18\x1e\x1c"](1,-1);
            break;
         case "_btnW":
            this["\x18\x1e\x1c"](-1,0);
            break;
         case "_btnE":
            this["\x18\x1e\x1c"](1,0);
            break;
         case "_btnSW":
            this["\x18\x1e\x1c"](-1,1);
            break;
         case "_btnS":
            this["\x18\x1e\x1c"](0,1);
            break;
         case "_btnSE":
            this["\x18\x1e\x1c"](1,1);
            break;
         case "_btnLocateClick":
            var _loc3_ = this._ldrMap._xmouse;
            var _loc4_ = this._ldrMap._ymouse;
            var _loc5_ = this["\x17\x15\x15"](_loc3_,_loc4_);
            switch(this["\x1e\n\b"])
            {
               case "zoom+":
               case "zoom-":
                  var _loc6_ = this["\x1e\x02\x05"] + (this["\x1e\n\b"] == "zoom+" ? 5 : -5);
                  if(_loc6_ == 0)
                  {
                     _loc6_ = 5;
                  }
                  this["\x1e\x02\x05"] = _loc6_;
                  this["\x1a\x1b\n"]();
                  break loop0;
               case "select":
                  this["\x17\x07\x19"]({type:"select",coordinates:_loc5_});
            }
      }
      this.gapi.hideTooltip();
   }
   function over(oEvent)
   {
      this["\x17\x07\x19"](_loc2_);
   }
   function out(oEvent)
   {
      this["\x17\x07\x19"](_loc2_);
   }
   function initialization(oEvent)
   {
      this["\x1a\x1b\n"]();
   }
   function onLoadInit(§\x18\x18\x02§)
   {
      this["\x17\x07\x19"]({type:"xtraLayerLoad",mc:_loc2_});
   }
   function §\x19\x15\x15§()
   {
      ank.utils.Timer.removeTimer(this,"mapnavigator");
      this["\x1c\b\x16"] = false;
   }
}
