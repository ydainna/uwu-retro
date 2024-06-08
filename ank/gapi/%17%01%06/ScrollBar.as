class ank.gapi.§\x17\x01\x06§.ScrollBar extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   static var §\x16\x1b\x10§ = "ScrollBar";
   static var §\x1a\x11\x16§ = 40;
   function ScrollBar()
   {
      super();
   }
   function §\x18\x12§(§\x19\n\x0e§)
   {
      this["\x1d\x19\x1d"] = _loc2_;
      return this["\x03\x1a"]();
   }
   function §\x03\x1a§()
   {
      return this["\x1d\x19\x1d"];
   }
   function §\x17\x17§(§\x19\t\x19§)
   {
      this["\x1d\x19\t"] = _loc2_;
      return this["\x03\x06"]();
   }
   function §\x03\x06§()
   {
      return this["\x1d\x19\t"];
   }
   function §\x19\x1b§(§\x19\x0b\x16§)
   {
      this["\x1d\x1a\x1a"] = _loc2_;
      return this["\x05\x19"]();
   }
   function §\x05\x19§()
   {
      return this["\x1d\x1a\x1a"];
   }
   function §\x1c\x07§(§\x1b\x11\x14§)
   {
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      this._tTarget = typeof _loc2_ != "string" ? _loc2_ : this._parent[_loc2_];
      if(this.addEventListener != undefined)
      {
         this["\x15\x1e\x1c"]();
      }
      this._tTarget.removeListener(this);
      this._tTarget.addListener(this);
      this.addToQueue({object:this,method:this["\x15\x1e\x1c"]});
      if(this["\x1e\f\x16"] != undefined && this["\x1e\f\x16"] != "none")
      {
         this.addToQueue({object:this,method:this["\x1b\x04\x04"]});
      }
      return this["\b\x11"]();
   }
   function §\b\x11§()
   {
      return this._tTarget;
   }
   function §\x1d\b§(§\x1b\b\r§)
   {
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      this["\x1e\f\x16"] = _loc2_;
      if(this._tTarget != undefined)
      {
         if(this.addEventListener != undefined)
         {
            this["\x1b\x04\x04"]();
         }
         else
         {
            this.addToQueue({object:this,method:this["\x1b\x04\x04"]});
         }
      }
      return this.snapTo;
   }
   function §\x1c\x06§(§\x19\x0e\x03§)
   {
      if(_loc2_ > this["\x1d\x19\t"])
      {
         _loc2_ = this["\x1d\x19\t"];
      }
      if(_loc2_ < this["\x1d\x19\x1d"])
      {
         _loc2_ = this["\x1d\x19\x1d"];
      }
      var _loc3_ = _loc2_ * (this["\x1d\f\x05"].track_mc._height - this["\x1d\f\x05"].thumb_mc._height) / (this["\x1d\x19\t"] - this["\x1d\x19\x1d"]) + this["\x1d\f\x05"].track_mc._y;
      this["\x19\x01\f"](_loc3_);
      return this["\b\x10"]();
   }
   function §\b\x10§()
   {
      return Math.round((this["\x1d\f\x05"].thumb_mc._y - this["\x1d\f\x05"].track_mc._y) / (this["\x1d\f\x05"].track_mc._height - this["\x1d\f\x05"].thumb_mc._height) * (this["\x1d\x19\t"] - this["\x1d\x19\x1d"]));
   }
   function §\x14\x12§(§\x16\f\x16§)
   {
      this["\x1c\x05\x01"] = _loc2_;
      this["\x16\x05\f"]();
      return this.horizontal;
   }
   function §\x1a\x19\x18§(§\x19\b\x03§)
   {
      super["\x1a\x19\x18"](null,_loc3_);
   }
   function §\x1a\x19\x11§(§\x19\x0b\x16§, §\x19\n\x0e§, §\x19\t\x19§)
   {
      this["\x1d\x1a\x1a"] = _loc2_;
      this["\x1d\x19\x1d"] = Math.max(_loc3_,0);
      this["\x1d\x19\t"] = Math.max(_loc4_,0);
      this["\x1a\x0e\x03"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.ScrollBar.CLASS_NAME);
      if(this["\x1d\x19\x1d"] == undefined)
      {
         this["\x1d\x19\x1d"] = 0;
      }
      if(this["\x1d\x19\t"] == undefined)
      {
         this["\x1d\x19\t"] = 100;
      }
      if(this["\x1d\x1a\x1a"] == undefined)
      {
         this["\x1d\x1a\x1a"] = 10;
      }
   }
   function createChildren()
   {
      this.createEmptyMovieClip("\x1d\f\x05",10);
      var _loc2_ = this["\x1d\f\x05"].attachMovie("ScrollBarTrack","track_mc",10);
      var _loc3_ = this["\x1d\f\x05"].attachMovie("ScrollBarUpArrow","upArrow_mc",20);
      var _loc4_ = this["\x1d\f\x05"].attachMovie("ScrollBarDownArrow","downArrow_mc",30);
      var _loc5_ = this["\x1d\f\x05"].attachMovie("ScrollBarThumb","thumb_mc",40);
      _loc3_.onRollOver = _loc4_.onRollOver = function()
      {
         this.up_mc._visible = false;
         this.over_mc._visible = true;
         this.down_mc._visible = false;
      };
      _loc3_.onRollOut = _loc4_.onRollOut = function()
      {
         this.up_mc._visible = true;
         this.over_mc._visible = false;
         this.down_mc._visible = false;
      };
      _loc3_.onPress = function()
      {
         this.up_mc._visible = false;
         this.over_mc._visible = false;
         this.down_mc._visible = true;
         this["\x18\f\x05"] = _global.setInterval(this._parent._parent,"addToScrollPosition",ank.gapi.controls.ScrollBar["\x1a\x11\x16"],-1);
      };
      _loc4_.onPress = function()
      {
         this.up_mc._visible = false;
         this.over_mc._visible = false;
         this.down_mc._visible = true;
         this["\x18\f\x05"] = _global.setInterval(this._parent._parent,"addToScrollPosition",ank.gapi.controls.ScrollBar["\x1a\x11\x16"],1);
      };
      _loc3_.onRelease = _loc4_.onRelease = function()
      {
         this.onRollOver();
         _global.clearInterval(this["\x18\f\x05"]);
      };
      _loc3_.onReleaseOutside = _loc4_.onReleaseOutside = function()
      {
         this.onRelease();
         this.onRollOut();
      };
      _loc5_.onRollOver = function()
      {
      };
      _loc5_.onRollOut = function()
      {
      };
      _loc5_.onPress = function()
      {
         this._parent._parent._nDragOffset = 0 - this._ymouse;
         this["\x17\x07\x1a"] = _global.setInterval(this._parent._parent,"dispatchScrollEvent",ank.gapi.controls.ScrollBar["\x1a\x11\x16"]);
         this["\x1a\x11\x11"] = _global.setInterval(this._parent._parent,"scrollThumb",ank.gapi.controls.ScrollBar["\x1a\x11\x16"],null,true);
      };
      _loc5_.onRelease = function()
      {
         _global.clearInterval(this["\x1a\x11\x11"]);
         _global.clearInterval(this["\x17\x07\x1a"]);
      };
      _loc5_.onReleaseOutside = function()
      {
         this.onRelease();
         this.onRollOut();
      };
      _loc2_.onPress = function()
      {
         var _loc2_ = this._parent._ymouse;
         var _loc3_ = this._parent._parent["\x1d\x1a\x1a"];
         if(_loc2_ < this._parent.thumb_mc._y)
         {
            _loc3_ = 0 - _loc3_;
         }
         this._parent._parent.addToScrollPosition(_loc3_);
      };
   }
   function draw()
   {
      var _loc2_ = this.getStyle();
      var _loc3_ = this["\x1d\f\x05"].downArrow_mc;
      this["\x1a\x18\x03"](_loc3_.up_mc.bg_mc,_loc2_.sbarrowbgcolor);
      this["\x1a\x18\x03"](_loc3_.up_mc.arrow_mc,_loc2_.sbarrowcolor);
      this["\x1a\x18\x03"](_loc3_.down_mc.bg_mc,_loc2_.sbarrowbgcolor);
      this["\x1a\x18\x03"](_loc3_.down_mc.arrow_mc,_loc2_.sbarrowcolor);
      this["\x1a\x18\x03"](_loc3_.over_mc.bg_mc,_loc2_.sbarrowbgcolor);
      this["\x1a\x18\x03"](_loc3_.over_mc.arrow_mc,_loc2_.sbarrowcolor);
      _loc3_ = this["\x1d\f\x05"].upArrow_mc;
      this["\x1a\x18\x03"](_loc3_.up_mc.bg_mc,_loc2_.sbarrowbgcolor);
      this["\x1a\x18\x03"](_loc3_.up_mc.arrow_mc,_loc2_.sbarrowcolor);
      this["\x1a\x18\x03"](_loc3_.down_mc.bg_mc,_loc2_.sbarrowbgcolor);
      this["\x1a\x18\x03"](_loc3_.down_mc.arrow_mc,_loc2_.sbarrowcolor);
      this["\x1a\x18\x03"](_loc3_.over_mc.bg_mc,_loc2_.sbarrowbgcolor);
      this["\x1a\x18\x03"](_loc3_.over_mc.arrow_mc,_loc2_.sbarrowcolor);
      for(var k in this["\x1d\f\x05"].thumb_mc)
      {
         this["\x1a\x18\x03"](this["\x1d\f\x05"].thumb_mc[k],_loc2_.sbthumbcolor);
      }
      this["\x1a\x18\x03"](this["\x1d\f\x05"].track_mc,_loc2_.sbtrackcolor);
   }
   function size()
   {
      super.size();
      this["\x1d\x1c\x1b"] = this["\x0e\x06"];
      this["\x16\x05\f"]();
      if(this["\x1a\x11\x13"] != undefined)
      {
         this["\x1a\x19\x12"]();
      }
   }
   function §\x16\x05\f§()
   {
      if(this["\x1d\x1c\x1b"] == undefined)
      {
         return undefined;
      }
      if(this["\x1c\x05\x01"])
      {
         this._rotation = -90;
      }
      this["\x1d\f\x05"].track_mc._height = Math.max(this["\x1d\x1c\x1b"] - this["\x1d\f\x05"].upArrow_mc._height - this["\x1d\f\x05"].downArrow_mc._height,0);
      this["\x1d\f\x05"].track_mc._y = this["\x1d\f\x05"].upArrow_mc._height;
      this["\x1d\f\x05"].downArrow_mc._y = this["\x1d\f\x05"].track_mc._y + this["\x1d\f\x05"].track_mc._height;
      this["\x1d\f\x05"].thumb_mc._y = this["\x1d\f\x05"].track_mc._y;
      this["\x1a\x19\x11"](this["\x1d\x1a\x1a"],this["\x1d\x19\x1d"],this["\x1d\x19\t"]);
   }
   function §\x1a\x0e\x03§()
   {
      if(this["\x1d\x19\t"] != this["\x1d\x19\x1d"] && this["\x1d\x1a\x1a"] != 0)
      {
         this["\x1d\f\x05"].thumb_mc.height = Math.min(Math.abs(this["\x1d\x1a\x1a"] / (this["\x1d\x19\t"] - this["\x1d\x19\x1d"])),1) * this["\x1d\f\x05"].track_mc._height;
         this["\x1d\f\x05"].thumb_mc._y = this["\x1d\f\x05"].upArrow_mc._height;
         if(this["\x1d\f\x05"].thumb_mc._height > this["\x1d\f\x05"].track_mc._height)
         {
            this["\x1d\f\x05"].thumb_mc._visible = false;
         }
         else
         {
            this["\x1d\f\x05"].thumb_mc._visible = true;
         }
      }
      else
      {
         this["\x1d\f\x05"].thumb_mc._visible = false;
      }
   }
   function addToScrollPosition(§\x19\x03\x0f§)
   {
      this["\x1a\x11\x12"] += _loc2_;
   }
   function scrollThumb(§\x19\x03\x0f§, §\x16\x0b\x01§)
   {
      if(_loc3_)
      {
         this["\x19\x01\f"](this["\x1d\f\x05"]._ymouse + this._nDragOffset);
      }
      else
      {
         this["\x19\x01\f"](this["\x1d\f\x05"].thumb_mc._y + _loc2_);
      }
      _global.updateAfterEvent();
   }
   function §\x19\x01\f§(§\x19\x11\x05§)
   {
      this["\x1d\f\x05"].thumb_mc._y = _loc2_;
      if(this["\x1d\f\x05"].thumb_mc._y < this["\x1d\f\x05"].upArrow_mc._height)
      {
         this["\x1d\f\x05"].thumb_mc._y = this["\x1d\f\x05"].upArrow_mc._height;
      }
      else if(this["\x1d\f\x05"].thumb_mc._y > this["\x1d\f\x05"].downArrow_mc._y - this["\x1d\f\x05"].thumb_mc._height)
      {
         this["\x1d\f\x05"].thumb_mc._y = this["\x1d\f\x05"].downArrow_mc._y - this["\x1d\f\x05"].thumb_mc._height;
      }
      this.dispatchScrollEvent();
   }
   function dispatchScrollEvent()
   {
      if(this["\x1d\f\x05"].thumb_mc._y != this["\x1d\x1b\t"])
      {
         this["\x1d\x1b\t"] = Math.max(this["\x1d\f\x05"].upArrow_mc._height,this["\x1d\f\x05"].thumb_mc._y);
         this["\x17\x07\x19"]({type:"scroll",target:this});
      }
   }
   function §\x1b\x04\x04§()
   {
      if(this["\x1e\f\x16"] == "right")
      {
         this._x = this._tTarget._x + this._tTarget._width - this._width;
         this._y = this._tTarget._y;
         this._tTarget._width -= this._width;
         this.height = this._tTarget._height;
         this["\x1a\x19\x12"]();
      }
   }
   function §\x15\x1e\x1c§()
   {
      this.removeEventListener("scroll",this["\x1e\x04\n"]);
      this["\x1e\x04\n"] = new Object();
      this["\x1e\x04\n"].target = this._tTarget;
      this["\x1e\x04\n"]["\x1a\x03\x12"] = this;
      this["\x1e\x04\n"].scroll = function(oEvent)
      {
         this.target.scroll = this.target.maxscroll * (this["\x1a\x03\x12"]["\x1a\x11\x12"] / Math.abs(this["\x1a\x03\x12"]["\x1d\x19\t"] - this["\x1a\x03\x12"]["\x1d\x19\x1d"]));
      };
      this.addEventListener("scroll",this["\x1e\x04\n"]);
      this["\x1a\x19\x12"]();
   }
   function §\x1a\x19\x12§()
   {
      if(this._tTarget == undefined)
      {
         this["\x1a\x19\x11"](this["\x1d\x1a\x1a"],this["\x1d\x19\x1d"],this["\x1d\x19\t"]);
      }
      else
      {
         var _loc2_ = !_global.isNaN(Number(this._tTarget.maxscroll)) ? this._tTarget.maxscroll : 1;
         var _loc3_ = !_global.isNaN(Number(this._tTarget._height)) ? this._tTarget._height : 0;
         var _loc4_ = !_global.isNaN(Number(this._tTarget.textHeight)) ? this._tTarget.textHeight : 1;
         var _loc5_ = 0.9 * _loc3_ / _loc4_ * _loc2_;
         this["\x1a\x19\x11"](_loc5_,0,_loc2_);
      }
   }
   function onChanged()
   {
      this["\x1a\x19\x12"]();
      this["\x1a\x11\x12"] = this._tTarget.scroll;
   }
   function onScroller()
   {
      this["\x1a\x11\x12"] = this._tTarget.scroll;
   }
}
