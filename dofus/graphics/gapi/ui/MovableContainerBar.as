class dofus.§\x18\x03\x10§.gapi.ui.MovableContainerBar extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "MovableContainerBar";
   static var FORCE_HORIZONTAL_BAR_CONTAINERS_COUNT = 15;
   function MovableContainerBar()
   {
      super();
   }
   function §\x1e\x16\x11§()
   {
      return this["\x1b\x1c\t"];
   }
   function §\t\b§()
   {
      return this["\x1d\x14\x07"];
   }
   function §\x1c\x1b§(§\x19\x03\x01§)
   {
      if(_loc2_ < 0)
      {
         _loc2_ = 0;
      }
      if(_loc2_ > this["\x1d\x19\x0b"])
      {
         _loc2_ = this["\x1d\x19\x0b"];
      }
      if(_loc2_ != this["\x1d\x14\x07"])
      {
         this["\x1d\x14\x07"] = _loc2_;
         this["\x16\x07\x14"](this._x,this._y);
         this.move(this._x,this._y,true);
      }
      return this["\t\b"]();
   }
   function §\x03\t§()
   {
      return this["\x1d\x19\x0b"];
   }
   function §\x17\x1a§(§\x19\x03\x01§)
   {
      this["\x1d\x19\x0b"] = _loc2_;
      if(this["\x1d\x14\x07"] > _loc2_)
      {
         this.size = _loc2_;
      }
      return this["\x03\t"]();
   }
   function §\x1e\x13\x06§()
   {
      return this["\x1e\x02\x0e"];
   }
   function §\x0f\x15§(§\x19\x11\f§)
   {
      this["\x1e\x02\x0e"] = _loc2_;
      return this["\x1e\x13\x06"]();
   }
   function §\t\x10§()
   {
      return this["\x1d\x1d\x05"];
   }
   function §\x1d\x07§(§\x19\x03\x01§)
   {
      this["\x1d\x1d\x05"] = _loc2_;
      return this["\t\x10"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.MovableContainerBar.CLASS_NAME);
      this["\x1d\x14\x07"] = 1;
      this["\x1d\x19\x0b"] = 5;
      this["\x1c\f\x06"] = false;
      this["\x1e\x02\x0e"] = {left:0,top:0,right:800,bottom:600};
      this["\x1d\x1d\x05"] = 20;
      this["\x1d\x1a\x14"] = 0;
      this["\x1d\x1a\x15"] = 0;
   }
   function createChildren()
   {
      Mouse.addListener(this);
      this["\x1d\n\x1d"].onPress = this["\x1d\x0b\x01"].onPress = function()
      {
         if(this._parent["\x1c\b\x16"] != true)
         {
            this._parent.onMouseMove = this._parent["\x1e\x04\x15"];
            this._parent["\x1d\x1a\x14"] = _root._xmouse - this._parent._x;
            this._parent["\x1d\x1a\x15"] = _root._ymouse - this._parent._y;
         }
      };
      this["\x1d\n\x1d"].onRelease = this["\x1d\n\x1d"].onReleaseOutside = this["\x1d\x0b\x01"].onRelease = this["\x1d\x0b\x01"].onReleaseOutside = function()
      {
         if(this._parent["\x1c\b\x16"] != true)
         {
            this._parent.onMouseMove = undefined;
            this._parent["\x1d\x1a\x14"] = 0;
            this._parent["\x1d\x1a\x15"] = 0;
            this._parent["\x17\x07\x19"]({type:"drop"});
            this._parent["\x1c\b\x16"] = true;
            ank.utils.Timer.setTimer(this._parent,"movablecontainerbar",this._parent,this._parent["\x19\x15\x15"],ank.gapi["\x17\x13\n"]["\x17\x05\x0f"]);
         }
         else
         {
            this._parent["\x19\x15\x15"]();
            this._parent["\x17\x07\x19"]({type:"dblClick"});
         }
      };
      this["\x1d\b\n"].onRelease = function()
      {
      };
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
   }
   function drawBar()
   {
      this["\x1b\x1c\t"] = new Array();
      this["\x1d\n\x07"] = this.createEmptyMovieClip("\x1d\n\x07",1);
      var _loc2_ = new Object();
      _loc2_.backgroundRenderer = "UI_BannerContainerBackground";
      _loc2_["\x16\x10\t"] = "UI_BannerContainerBorder";
      _loc2_.dragAndDrop = true;
      _loc2_.enabled = true;
      _loc2_["\x18\x07\x07"] = true;
      _loc2_.highlightRenderer = "UI_BannerContainerHighLight";
      _loc2_.margin = 1;
      _loc2_["\x1a\x1e\x05"] = false;
      _loc2_.styleName = "InventoryGridContainer";
      switch(this["\x1c\f\x06"])
      {
         case true:
            this["\x1d\n\x1d"]._x = 3;
            this["\x1d\n\x1d"]._y = 3;
            this["\x1d\x0b\x01"]._x = 3;
            this["\x1d\x0b\x01"]._y = 18 + this["\x1d\x14\x07"] * 28;
            this["\x1d\x0b\x01"]._width = _loc0_ = 25;
            this["\x1d\n\x1d"]._width = _loc0_;
            this["\x1d\x0b\x01"]._height = _loc0_ = 12;
            this["\x1d\n\x1d"]._height = _loc0_;
            this["\x1d\n\x1d"].styleName = "VerticalDragOneMovableBarStylizedRectangle";
            this["\x1d\x0b\x01"].styleName = "VerticalDragTwoMovableBarStylizedRectangle";
            this["\x1d\n\x07"]._x = 3;
            this["\x1d\n\x07"]._y = 18;
            var _loc3_ = 0;
            while(_loc3_ < this["\x1d\x14\x07"])
            {
               _loc2_._y = 28 * _loc3_;
               var _loc4_ = this["\x1d\n\x07"].attachMovie("Container","_ctr" + _loc3_,_loc3_,_loc2_);
               _loc4_["\x1a\x19\x18"](25,25);
               this["\x1b\x1c\t"].push(_loc4_);
               _loc3_ = _loc3_ + 1;
            }
            this["\x1d\b\n"]["\x1a\x19\x18"](31,33 + this["\x1d\x14\x07"] * 28);
            break;
         case false:
            this["\x1d\n\x1d"]._x = 3;
            this["\x1d\n\x1d"]._y = 3;
            this["\x1d\x0b\x01"]._x = 18 + this["\x1d\x14\x07"] * 28;
            this["\x1d\x0b\x01"]._y = 3;
            this["\x1d\x0b\x01"]._width = _loc0_ = 12;
            this["\x1d\n\x1d"]._width = _loc0_;
            this["\x1d\x0b\x01"]._height = _loc0_ = 25;
            this["\x1d\n\x1d"]._height = _loc0_;
            this["\x1d\n\x1d"].styleName = "HorizontalDragOneMovableBarStylizedRectangle";
            this["\x1d\x0b\x01"].styleName = "HorizontalDragTwoMovableBarStylizedRectangle";
            this["\x1d\n\x07"]._x = 18;
            this["\x1d\n\x07"]._y = 3;
            var _loc5_ = 0;
            while(_loc5_ < this["\x1d\x14\x07"])
            {
               _loc2_._x = 28 * _loc5_;
               var _loc6_ = this["\x1d\n\x07"].attachMovie("Container","_ctr" + _loc5_,_loc5_,_loc2_);
               _loc6_["\x1a\x19\x18"](25,25);
               this["\x1b\x1c\t"].push(_loc6_);
               _loc5_ = _loc5_ + 1;
            }
            this["\x1d\b\n"]["\x1a\x19\x18"](33 + this["\x1d\x14\x07"] * 28,31);
      }
      this["\x17\x07\x19"]({type:"drawBar"});
   }
   function §\x16\x07\x14§(§\x1b\x19\x14§, §\x1b\x1a\x14§)
   {
      var _loc4_ = _loc3_ - this["\x1e\x02\x0e"].top;
      var _loc5_ = this["\x1e\x02\x0e"].bottom - _loc3_;
      var _loc6_ = _loc2_ - this["\x1e\x02\x0e"].left;
      var _loc7_ = this["\x1e\x02\x0e"].right - _loc2_;
      var _loc8_ = this["\x1c\f\x06"];
      var _loc9_ = 1000000;
      if(_loc4_ < this["\x1d\x1d\x05"])
      {
         if(_loc4_ < _loc9_)
         {
            _loc9_ = _loc4_;
            _loc8_ = false;
         }
      }
      if(_loc5_ < this["\x1d\x1d\x05"])
      {
         if(_loc5_ < _loc9_)
         {
            _loc9_ = _loc5_;
            _loc8_ = false;
         }
      }
      if(_loc6_ < this["\x1d\x1d\x05"])
      {
         if(_loc6_ < _loc9_)
         {
            _loc9_ = _loc6_;
            _loc8_ = true;
         }
      }
      if(_loc7_ < this["\x1d\x1d\x05"])
      {
         if(_loc7_ < _loc9_)
         {
            _loc9_ = _loc7_;
            _loc8_ = true;
         }
      }
      if(this["\x1d\x14\x07"] >= dofus.graphics.gapi.ui.MovableContainerBar.FORCE_HORIZONTAL_BAR_CONTAINERS_COUNT)
      {
         _loc8_ = false;
      }
      if(_loc8_ != undefined && this["\x1c\f\x06"] != _loc8_)
      {
         this["\x1c\f\x06"] = _loc8_;
         return true;
      }
      return false;
   }
   function §\x1b\x04\x02§()
   {
      var _loc2_ = this._x;
      var _loc3_ = this._y;
      var _loc4_ = this.getBounds();
      var _loc5_ = _loc3_ + _loc4_.yMin - this["\x1e\x02\x0e"].top;
      var _loc6_ = this["\x1e\x02\x0e"].bottom - _loc3_ - _loc4_.yMax;
      var _loc7_ = _loc2_ + _loc4_.xMin - this["\x1e\x02\x0e"].left;
      var _loc8_ = this["\x1e\x02\x0e"].right - _loc2_ - _loc4_.xMax;
      if(_loc5_ < this["\x1d\x1d\x05"])
      {
         _loc3_ = this["\x1e\x02\x0e"].top - _loc4_.yMin;
      }
      if(_loc6_ < this["\x1d\x1d\x05"])
      {
         _loc3_ = this["\x1e\x02\x0e"].bottom - _loc4_.yMax;
      }
      if(_loc7_ < this["\x1d\x1d\x05"])
      {
         _loc2_ = this["\x1e\x02\x0e"].left - _loc4_.xMin;
      }
      if(_loc8_ < this["\x1d\x1d\x05"])
      {
         _loc2_ = this["\x1e\x02\x0e"].right - _loc4_.xMax;
      }
      this._y = _loc3_;
      this._x = _loc2_;
   }
   function destroy()
   {
      Mouse.removeListener(this);
   }
   function move(§\x1b\x19\x14§, §\x1b\x1a\x14§, §\x16\x0b\x1d§)
   {
      if(_loc4_ || this["\x16\x07\x14"](_loc2_,_loc3_))
      {
         this.drawBar();
      }
      this._x = _loc2_;
      this._y = _loc3_;
      this["\x1b\x04\x02"]();
   }
   function §\x1a\x18\x13§(§\x18\x18\x02§, s, §\x16\b\b§, §\x1b\x01\x14§, c)
   {
      this["\x1d\x19\x0b"] = _loc2_;
      this["\x1d\x1d\x05"] = _loc3_;
      this["\x1e\x02\x0e"] = _loc4_;
      this["\x1d\x14\x07"] = _loc5_;
      if(c.v != undefined)
      {
         this["\x1c\f\x06"] = this["\x1d\x14\x07"] < dofus.graphics.gapi.ui.MovableContainerBar.FORCE_HORIZONTAL_BAR_CONTAINERS_COUNT ? c.v : false;
      }
      this.move(c.x,c.y,true);
   }
   function §\x1e\x04\x15§()
   {
      this.move(_root._xmouse - this["\x1d\x1a\x14"],_root._ymouse - this["\x1d\x1a\x15"]);
   }
   function §\x19\x15\x15§()
   {
      ank.utils.Timer.removeTimer(this,"movablecontainerbar");
      this["\x1c\b\x16"] = false;
   }
   function onShortcut(§\x1a\x1c\x0f§)
   {
      var _loc3_ = 0;
      while(_loc3_ < this["\x1d\x14\x07"])
      {
         if(_loc2_ == "MOVABLEBAR_SH" + _loc3_)
         {
            this["\x1b\x1c\t"][_loc3_].notInChat = true;
            this["\x1b\x1c\t"][_loc3_]["\x17\r\x01"]();
            return false;
         }
         _loc3_ = _loc3_ + 1;
      }
      return true;
   }
}
