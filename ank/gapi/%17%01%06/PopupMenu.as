class ank.gapi.§\x17\x01\x06§.PopupMenu extends ank.gapi.core.UIBasicComponent
{
   static var §\x16\x1b\x10§ = "PopupMenu";
   static var §\x18\x1a\x12§ = 150;
   static var §\x18\x11\x07§ = 18;
   var §\x1c\x07\b§ = false;
   var §\x1c\x07\x13§ = false;
   var §\x1c\x02\x1a§ = true;
   var §\x1c\x04\x10§ = false;
   var §\x1d\x16\x13§ = -1;
   function PopupMenu()
   {
      super();
   }
   function §\x1e\x1d\x14§()
   {
      return this["\x1c\x04\x10"];
   }
   function §\x15\x16§(§\x16\f\x0e§)
   {
      this["\x1c\x04\x10"] = _loc2_;
      return this["\x1e\x1d\x14"]();
   }
   function §\x1e\x1a\x1d§()
   {
      return this["\x1d\x16\x13"];
   }
   function §\x14\x01§(§\x19\x07\x1c§)
   {
      this["\x1d\x16\x13"] = _loc2_;
      return this["\x1e\x1a\x1d"]();
   }
   function §\r\x14§()
   {
      return this["\x1e\x01\x10"];
   }
   function §\x0e\x02§()
   {
      return this["\x1e\x01\x1c"];
   }
   function §\x07\x15§()
   {
      return this["\x1c\x07\x13"];
   }
   function §\x1e\x11\x11§()
   {
      return this["\x1c\x01\x17"];
   }
   function §\x0e\b§(§\x16\b\x12§)
   {
      this["\x1c\x01\x17"] = _loc2_;
      return this["\x1e\x11\x11"]();
   }
   function addNewColumn()
   {
      var _loc2_ = new Object();
      _loc2_.addNewColumn = true;
      this["\x1b\x1d\n"].push(_loc2_);
   }
   function §\x15\x1e\x18§(§\x1b\x0f\x11§)
   {
      var _loc3_ = new Object();
      _loc3_.text = _loc2_;
      _loc3_.bStatic = true;
      _loc3_.bEnabled = false;
      this["\x1b\x1d\n"].push(_loc3_);
   }
   function §\x15\x1d\x12§(§\x1b\x0f\x11§, §\x19\x11\x13§, §\x17\x11\x17§, §\x16\x05\n§, bEnabled)
   {
      if(_loc6_ == undefined)
      {
         _loc6_ = true;
      }
      var _loc7_ = new Object();
      _loc7_.text = _loc2_;
      _loc7_.bStatic = false;
      _loc7_.bEnabled = _loc6_;
      _loc7_.obj = _loc3_;
      _loc7_.fn = _loc4_;
      _loc7_.args = _loc5_;
      this["\x1b\x1d\n"].push(_loc7_);
   }
   function §\x01\x0b§()
   {
      return this["\x1b\x1d\n"];
   }
   function show(§\x19\x10\x1a§, §\x19\x11\x05§, §\x16\x0e\x19§, §\x16\x14\x0e§, §\x19\x0f\x1a§)
   {
      ank.utils.Timer.removeTimer(this._name);
      if(_loc2_ == undefined)
      {
         _loc2_ = _root._xmouse;
      }
      if(_loc3_ == undefined)
      {
         _loc3_ = _root._ymouse;
      }
      this["\x1e\x01\x10"] = _loc2_;
      this["\x1e\x01\x1c"] = _loc3_;
      this["\x18\x13\x14"](_loc2_,_loc3_,_loc4_,_loc5_);
      if(!_global.isNaN(Number(_loc6_)))
      {
         ank.utils.Timer.setTimer(this,this._name,this,this.remove,_loc6_);
         this["\x1c\x02\x1a"] = false;
      }
      ank.gapi.controls.PopupMenu["\x17\x03\x1b"] = this;
      this.addToQueue({object:Mouse,method:Mouse.addListener,params:[this]});
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.PopupMenu.CLASS_NAME);
      this["\x1b\x1d\n"] = new Array();
      this._aColumnsMaxSize = new Array();
   }
   function createChildren()
   {
      this.createEmptyMovieClip("_mcBorder",10);
      this.createEmptyMovieClip("\x1d\b\n",20);
      this.createEmptyMovieClip("\x1d\x0b\x13",30);
      this.createEmptyMovieClip("\x1d\f\x0f",40);
   }
   function size()
   {
      this["\x16\x05\f"]();
   }
   function §\x16\x05\f§()
   {
      if(this["\x1c\x05\x07"] && (this["\x1d"] != undefined && this["\x0e\x06"] != undefined))
      {
         this["\x1d\f\x0f"]._x = this["\x1d\f\x0f"]._y = 2;
         this._mcBorder._width = this["\x1d"];
         this._mcBorder._height = this["\x0e\x06"];
         this["\x1d\b\n"]._x = this["\x1d\b\n"]._y = 1;
         this["\x1d\b\n"]._width = this["\x1d"] - 2;
         this["\x1d\b\n"]._height = this["\x0e\x06"] - 2;
         this["\x1d\x0b\x13"]._x = this["\x1d\x0b\x13"]._y = 2;
         this["\x1d\x0b\x13"]._width = this["\x1d"] - 4;
         this["\x1d\x0b\x13"]._height = this["\x0e\x06"] - 4;
         var _loc2_ = this["\x1b\x1d\n"].length;
         while(true)
         {
            _loc2_;
            if(_loc2_-- <= 0)
            {
               break;
            }
            this["\x16\x05\r"](_loc2_,this["\x1d"] - 4);
         }
      }
   }
   function draw()
   {
      var _loc2_ = this.getStyle();
      this._mcBorder.clear();
      this["\x1d\b\n"].clear();
      this["\x1d\x0b\x13"].clear();
      this["\x17\n\x0f"](this._mcBorder,0,0,1,1,0,_loc2_.bordercolor);
      this["\x17\n\x0f"](this["\x1d\b\n"],0,0,1,1,0,_loc2_.backgroundcolor);
      this["\x17\n\x0f"](this["\x1d\x0b\x13"],0,0,1,1,0,_loc2_.foregroundcolor);
   }
   function §\x17\n\x07§(i, §\x18\b\x19§, §\x19\x11\x05§, nXStart)
   {
      var _loc5_ = this["\x1d\f\x0f"].createEmptyMovieClip("item" + _loc2_,_loc2_);
      var _loc6_ = ank.gapi.controls.Label(_loc5_.attachMovie("Label","_lbl",20,{_width:ank.gapi.controls.PopupMenu["\x18\x1a\x12"],styleName:this.getStyle().labelenabledstyle,wordWrap:true,text:i.text}));
      _loc6_["\x1a\x18\x1a"]("left");
      var _loc7_ = Math.max(ank.gapi.controls.PopupMenu["\x18\x11\x07"],_loc6_.textHeight + 6);
      if(i.bStatic)
      {
         _loc6_.styleName = this.getStyle().labelstaticstyle;
      }
      else if(!i.bEnabled)
      {
         _loc6_.styleName = this.getStyle().labeldisabledstyle;
      }
      _loc5_.createEmptyMovieClip("\x16\f\r",10);
      this["\x17\n\x0f"](_loc5_["\x16\f\r"],0,0,1,_loc7_,0,this.getStyle().itembgcolor);
      _loc5_["\x16\f\r"].over = false;
      _loc5_._y = _loc3_;
      _loc5_._x = nXStart;
      if(i.bEnabled)
      {
         _loc5_["\x16\f\r"].onRelease = function()
         {
            i.fn.apply(i.obj,i.args);
            this._parent._parent._parent.remove();
         };
         _loc5_["\x16\f\r"].onRollOver = function()
         {
            this._parent._parent._parent["\x19\x19\x0b"](this,true);
         };
         _loc5_["\x16\f\r"].onRollOut = _loc5_["\x16\f\r"].onReleaseOutside = function()
         {
            this._parent._parent._parent["\x19\x19\n"](this,true);
         };
      }
      else
      {
         _loc5_["\x16\f\r"].onPress = function()
         {
         };
         _loc5_["\x16\f\r"].useHandCursor = false;
         var _loc8_ = new Color(_loc5_["\x16\f\r"]);
         if(i.bStatic)
         {
            _loc8_.setRGB(this.getStyle().itemstaticbgcolor);
         }
         else
         {
            _loc8_.setRGB(this.getStyle().itembgcolor);
         }
      }
      return {w:_loc6_.textWidth,h:_loc7_};
   }
   function §\x16\x05\r§(§\x19\b\x14§, §\x19\x10\x18§)
   {
      var _loc4_ = this["\x1d\f\x0f"]["item" + _loc2_];
      var _loc5_ = this["\x1b\x1d\n"][_loc2_];
      if(_loc5_.column == this._aColumnsMaxSize.length - 1)
      {
         var _loc6_ = _loc3_;
         var _loc7_ = 0;
         while(_loc7_ < this._aColumnsMaxSize.length - 1)
         {
            _loc6_ = _loc6_ - this._aColumnsMaxSize[_loc7_] - 16;
            _loc7_ = _loc7_ + 1;
         }
      }
      else
      {
         _loc6_ = this._aColumnsMaxSize[_loc5_.column];
      }
      _loc4_._lbl["\x1a\x19\x18"](_loc6_,ank.gapi.controls.PopupMenu["\x18\x11\x07"]);
      _loc4_["\x16\f\r"]._width = _loc6_;
   }
   function §\x18\x13\x14§(§\x1b\x19\x14§, §\x1b\x1a\x14§, §\x16\x0e\x19§, §\x16\x14\x0e§)
   {
      var _loc6_ = this["\x1b\x1d\n"].length;
      var _loc7_ = 0;
      var _loc8_ = 0;
      var _loc9_ = 0;
      var _loc10_ = 0;
      var _loc11_ = 0;
      var _loc12_ = 0;
      while(_loc12_ < this["\x1b\x1d\n"].length)
      {
         var _loc13_ = this["\x1b\x1d\n"][_loc12_];
         _loc13_.column = _loc11_;
         if(_loc13_.addNewColumn)
         {
            if(_loc12_ + 1 < this["\x1b\x1d\n"].length)
            {
               if(_loc7_ > _loc10_)
               {
                  _loc10_ = _loc7_;
               }
               _loc8_ += 16;
               _loc9_ += _loc8_ + 16;
               this._aColumnsMaxSize[_loc11_] = _loc8_;
               _loc7_ = 0;
               _loc8_ = 0;
               _loc11_ = _loc11_ + 1;
            }
         }
         else
         {
            var _loc14_ = this["\x17\n\x07"](_loc13_,_loc12_,_loc7_,_loc9_);
            _loc7_ += _loc14_.h;
            _loc8_ = Math.max(_loc8_,_loc14_.w);
         }
         _loc12_ = _loc12_ + 1;
      }
      _loc8_ += 16;
      this._aColumnsMaxSize[_loc11_] = _loc8_;
      if(_loc7_ > _loc10_)
      {
         _loc10_ = _loc7_;
      }
      _loc9_ += _loc8_;
      this["\x1a\x19\x18"](_loc9_,_loc10_ + 4);
      var _loc15_ = !_loc4_ ? this.gapi["\x1a\x11\t"] : Stage.width;
      var _loc16_ = !_loc4_ ? this.gapi["\x1a\x11\x07"] : Stage.height;
      if(_loc5_ == true)
      {
         _loc2_ -= this["\x1d"];
      }
      if(_loc2_ > _loc15_ - this["\x1d"])
      {
         this._x = _loc15_ - this["\x1d"];
      }
      else if(_loc2_ < 0)
      {
         this._x = 0;
      }
      else
      {
         this._x = _loc2_;
      }
      if(_loc3_ > _loc16_ - this["\x0e\x06"])
      {
         this._y = _loc16_ - this["\x0e\x06"];
      }
      else if(_loc3_ < 0)
      {
         this._y = 0;
      }
      else
      {
         this._y = _loc3_;
      }
   }
   function §\x1a\f\x15§()
   {
      this.remove();
   }
   function remove()
   {
      if(this["\x1c\x04\x10"])
      {
         var _loc2_ = _global.api;
         this.addToQueue({object:_loc2_["\x18\x1e\x11"],method:_loc2_["\x18\x1e\x11"]["\x1a\r\x1c"]});
      }
      ank.gapi.controls.PopupMenu["\x17\x03\x1b"] = undefined;
      this["\x1c\x07\x13"] = true;
      Mouse.removeListener(this);
      this.removeMovieClip();
   }
   function §\x17\x17\f§()
   {
      var _loc2_ = new Array();
      var _loc3_ = 0;
      while(_loc3_ < this["\x1b\x1d\n"].length)
      {
         var _loc4_ = this["\x1b\x1d\n"][_loc3_];
         if(_loc4_.bStatic || !_loc4_.bEnabled)
         {
            _loc2_.push(undefined);
         }
         else
         {
            _loc2_.push(_loc4_);
         }
         _loc3_ = _loc3_ + 1;
      }
      return _loc2_;
   }
   function §\x1a\x12\x1b§(§\x16\x01\x15§)
   {
      if(_loc2_ == undefined)
      {
         _loc2_ = this["\x17\x17\f"]();
      }
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         var _loc4_ = _loc2_[_loc3_];
         if(_loc4_ != undefined)
         {
            var _loc5_ = this["\x1d\f\x0f"]["item" + _loc3_];
            this["\x19\x19\x0b"](_loc5_["\x16\f\r"]);
            break;
         }
         _loc3_ = _loc3_ + 1;
      }
   }
   function §\x1a\x13\x02§(§\x16\x01\x15§)
   {
      if(_loc2_ == undefined)
      {
         _loc2_ = this["\x17\x17\f"]();
      }
      var _loc3_ = _loc2_.length - 1;
      while(_loc3_ >= 0)
      {
         var _loc4_ = _loc2_[_loc3_];
         if(_loc4_ != undefined)
         {
            var _loc5_ = this["\x1d\f\x0f"]["item" + _loc3_];
            this["\x19\x19\x0b"](_loc5_["\x16\f\r"]);
            break;
         }
         _loc3_ = _loc3_ - 1;
      }
   }
   function §\x1b\x13\x19§()
   {
      var _loc2_ = 0;
      while(_loc2_ < this["\x1b\x1d\n"].length)
      {
         var _loc3_ = this["\x1d\f\x0f"]["item" + _loc2_];
         this["\x19\x19\n"](_loc3_["\x16\f\r"]);
         _loc2_ = _loc2_ + 1;
      }
   }
   function §\x17\x0e\t§()
   {
      var _loc2_ = 0;
      while(_loc2_ < this["\x1b\x1d\n"].length)
      {
         var _loc3_ = this["\x1b\x1d\n"][_loc2_];
         var _loc4_ = this["\x1d\f\x0f"]["item" + _loc2_];
         if(_loc4_["\x16\f\r"].over)
         {
            _loc3_.fn.apply(_loc3_.obj,_loc3_.args);
            this.remove();
            return true;
         }
         _loc2_ = _loc2_ + 1;
      }
      return false;
   }
   function §\x1a\x13\x04§()
   {
      var _loc2_ = this["\x17\x17\f"]();
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         var _loc4_ = _loc2_[_loc3_];
         if(_loc4_ != undefined)
         {
            var _loc5_ = this["\x1d\f\x0f"]["item" + _loc3_];
            if(_loc5_["\x16\f\r"].over)
            {
               var _loc6_ = _loc3_ + 1;
               while(_loc6_ < _loc2_.length)
               {
                  var _loc7_ = _loc2_[_loc6_];
                  if(_loc7_ != undefined)
                  {
                     var _loc8_ = this["\x1d\f\x0f"]["item" + _loc6_];
                     this["\x19\x19\x0b"](_loc8_["\x16\f\r"]);
                     return undefined;
                  }
                  _loc6_ = _loc6_ + 1;
               }
               break;
            }
         }
         _loc3_ = _loc3_ + 1;
      }
      this["\x1a\x12\x1b"](_loc2_);
   }
   function §\x1a\x13\x06§()
   {
      var _loc2_ = this["\x17\x17\f"]();
      var _loc3_ = _loc2_.length - 1;
      loop0:
      while(_loc3_ >= 0)
      {
         var _loc4_ = _loc2_[_loc3_];
         if(_loc4_ != undefined)
         {
            var _loc5_ = this["\x1d\f\x0f"]["item" + _loc3_];
            if(_loc5_["\x16\f\r"].over)
            {
               var _loc6_ = _loc3_ - 1;
               while(true)
               {
                  if(_loc6_ < 0)
                  {
                     break loop0;
                  }
                  var _loc7_ = _loc2_[_loc6_];
                  if(_loc7_ != undefined)
                  {
                     break;
                  }
                  _loc6_ = _loc6_ - 1;
               }
               var _loc8_ = this["\x1d\f\x0f"]["item" + _loc6_];
               this["\x19\x19\x0b"](_loc8_["\x16\f\r"]);
               return undefined;
            }
         }
         _loc3_ = _loc3_ - 1;
      }
      this["\x1a\x13\x02"](_loc2_);
   }
   function §\x19\x19\x0b§(§\x18\x1b\x0e§, §\x16\x10\x19§)
   {
      if(_loc3_)
      {
         this["\x1c\x07\b"] = true;
      }
      if(_loc2_.over)
      {
         return undefined;
      }
      this["\x1b\x13\x19"]();
      _loc2_.over = true;
      var _loc4_ = new Color(_loc2_);
      _loc4_.setRGB(this.getStyle().itemovercolor);
   }
   function §\x19\x19\n§(§\x18\x1b\x0e§, §\x16\x10\x19§)
   {
      if(_loc3_)
      {
         this["\x1c\x07\b"] = false;
      }
      if(!_loc2_.over)
      {
         return undefined;
      }
      _loc2_.over = false;
      var _loc4_ = new Color(_loc2_);
      _loc4_.setRGB(this.getStyle().itembgcolor);
   }
   function onMouseUp()
   {
      if(!this["\x1c\x07\b"] && this["\x1c\x02\x1a"])
      {
         this.remove();
      }
   }
}
