class ank.gapi.§\x17\x01\x06§.List extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   static var §\x16\x1b\x10§ = "List";
   var §\x1b\x1e\x17§ = new Array();
   var §\x1d\x1c\x06§ = 20;
   var §\x1c\x05\x0f§ = true;
   var §\x1c\x05\x11§ = true;
   var §\x1d\x1c\r§ = 0;
   var §\x1e\b\x04§ = "DefaultCellRenderer";
   var §\x1c\x06\x1a§ = false;
   var §\x1c\x02\x07§ = false;
   var §\x1c\x03\b§ = false;
   var _bScrollFromEverywhere = false;
   function List()
   {
      super();
   }
   function get scrollFromEverywhere()
   {
      return this._bScrollFromEverywhere;
   }
   function set scrollFromEverywhere(bScrollFromEverywhere)
   {
      this._bScrollFromEverywhere = bScrollFromEverywhere;
   }
   function §\x19\x07§(§\x16\x0f\x05§)
   {
      this["\x1c\x06\x1a"] = _loc2_;
      return this["\x04\x15"]();
   }
   function §\x04\x15§()
   {
      return this["\x1c\x06\x1a"];
   }
   function §\x1b\x1a§(§\x19\r\x15§)
   {
      if(_loc2_ == 0)
      {
         return undefined;
      }
      this["\x1d\x1c\x06"] = _loc2_;
      return this["\b\x07"]();
   }
   function §\b\x07§()
   {
      return this["\x1d\x1c\x06"];
   }
   function §\x10\b§(§\x1a\x10\x0e§)
   {
      if(_loc2_ != undefined)
      {
         this["\x1e\b\x04"] = _loc2_;
      }
      return this["\x1e\x15\x06"]();
   }
   function §\x1e\x15\x06§()
   {
      return this["\x1e\b\x04"];
   }
   function §\x11\x1a§(§\x17\n\x17§)
   {
      delete this["\x1d\x1c\x10"];
      this["\x1c\x0f\x06"] = _loc2_;
      this["\x1c\x0f\x06"].addEventListener("modelChanged",this);
      var _loc3_ = Math.ceil(this["\x0e\x06"] / this["\x1d\x1c\x06"]);
      if(_loc2_.length <= _loc3_)
      {
         this["\x1a\x1b\x04"](0);
      }
      this.modelChanged();
      return this["\x1e\x18\x03"]();
   }
   function §\x1e\x18\x03§()
   {
      return this["\x1c\x0f\x06"];
   }
   function §\x1c\n§(§\x19\b\x14§)
   {
      var _loc3_ = this["\x1d\n\b"]["row" + _loc2_];
      this["\x1d\x1c\x10"] = _loc2_;
      this["\x18\x13\x15"](_loc2_,_loc3_);
      return this["\b\x14"]();
   }
   function §\b\x14§()
   {
      return this["\x1d\x1c\x10"];
   }
   function §\b\x15§()
   {
      return this["\x1c\x0f\x06"][this["\x1d\x1c\x10"]];
   }
   function §\x0f\b§(§\x16\t\x0e§)
   {
      this["\x1c\x02\x07"] = _loc2_;
      return this["\x1e\x12\x17"]();
   }
   function §\x1e\x12\x17§()
   {
      return this["\x1c\x02\x07"];
   }
   function §\x11\x1c§(§\x16\n\x0b§)
   {
      this["\x1c\x03\b"] = _loc2_;
      return this["\x1e\x18\x07"]();
   }
   function §\x1e\x18\x07§()
   {
      return this["\x1c\x03\b"];
   }
   function §\x15\x1d\x12§(§\x19\x13\x07§)
   {
      this["\x1b\x1e\x17"].push({item:_loc2_,selected:false});
      this["\x1a\x19\x10"](true);
      this["\x18\x13\x14"]();
   }
   function §\x15\x1d\x13§(§\x19\x13\x07§, §\x19\b\x14§)
   {
      this["\x1b\x1e\x17"].splice(_loc3_,0,{item:_loc2_,selected:false});
      this["\x1a\x19\x10"](true);
      this["\x18\x13\x14"]();
   }
   function §\x1a\f\n§(§\x19\x13\x07§, §\x19\b\x14§)
   {
      this["\x1b\x1e\x17"].splice(_loc3_,1);
      this["\x1a\x19\x10"](true);
      this["\x18\x13\x14"]();
   }
   function §\x1a\x0b\x16§()
   {
      this["\x1b\x1e\x17"] = new Array();
      this["\x1a\x19\x10"](true);
      this["\x18\x13\x14"]();
   }
   function §\x1a\x1b\x04§(§\x19\f\r§, §\x16\x0b\x1c§)
   {
      var _loc4_ = this["\x1c\x0f\x06"].length - Math.floor(this["\x0e\x06"] / this["\x1d\x1c\x06"]);
      if(_loc2_ > _loc4_)
      {
         _loc2_ = _loc4_;
      }
      if(_loc2_ < 0)
      {
         _loc2_ = 0;
      }
      if(this["\x1d\x1c\r"] != _loc2_ || _loc3_)
      {
         this["\x1d\x1c\r"] = _loc2_;
         this["\x1a\x19\x10"](_loc3_ == true);
         this["\x18\x13\x14"]();
         var _loc5_ = this.getRolledOverRows();
         if(_loc5_.length == 1)
         {
            var _loc6_ = _loc5_[0];
            this["\x17\x07\x19"]({type:"itemRollOver",row:_loc6_,item:_loc6_.item,targets:this["\x17\x1e\x07"]()});
         }
      }
   }
   function sortOn(§\x1b\x07\x14§, §\x19\x0b\n§)
   {
      this["\x1c\x0f\x06"].sortOn(_loc2_,_loc3_);
      this.modelChanged();
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.List.CLASS_NAME);
   }
   function createChildren()
   {
      this.attachMovie("ScrollBar","_sbVertical",10,{styleName:this.styleName});
      this._sbVertical.addEventListener("scroll",this);
      this.createEmptyMovieClip("\x1d\n\b",20);
      this.createEmptyMovieClip("_mcMask",30);
      this["\x17\n\x0f"](this._mcMask,0,0,100,100,0,16711680);
      this["\x1d\n\b"].setMask(this._mcMask);
      ank.utils.["\x18\x1e\x13"].addListener(this);
   }
   function size()
   {
      super.size();
      this["\x1c\x05\x11"] = true;
      this["\x16\x05\f"]();
      if(this["\x18\t\x1c"])
      {
         this["\x1a\x1b\x04"](this["\x1d\x1c\r"],true);
      }
   }
   function draw()
   {
      if(this.styleName == "none")
      {
         return undefined;
      }
      var _loc2_ = this.getStyle();
      for(var k in this["\x1d\n\b"])
      {
         this["\x1d\n\b"][k].styleName = this.styleName;
      }
      this._sbVertical.styleName = _loc2_.scrollbarstyle;
   }
   function §\x16\x05\f§()
   {
      if(this["\x1c\x05\x11"])
      {
         this["\x1a\x19\x10"](false);
      }
      if(this._sbVertical._visible)
      {
         this._sbVertical["\x1a\x19\x18"](this["\x0e\x06"]);
         this._sbVertical._x = this["\x1d"] - this._sbVertical.width;
         this._sbVertical._y = 0;
      }
      this._nMaskWidth = !this._sbVertical._visible ? this["\x1d"] : this["\x1d"] - this._sbVertical.width;
      this._mcMask._width = this._nMaskWidth;
      this._mcMask._height = this["\x0e\x06"];
      this["\x1c\x05\x0f"] = true;
      this["\x18\x13\x14"]();
   }
   function §\x18\x13\x14§()
   {
      var _loc2_ = Math.ceil(this["\x0e\x06"] / this["\x1d\x1c\x06"]);
      var _loc3_ = 0;
      while(_loc3_ < _loc2_)
      {
         var _loc4_ = this["\x1d\n\b"]["row" + _loc3_];
         if(_loc4_ == undefined)
         {
            _loc4_ = ank.gapi.controls.list.SelectableRow(this["\x1d\n\b"].attachMovie("SelectableRow","row" + _loc3_,_loc3_,{_x:0,_y:_loc3_ * this["\x1d\x1c\x06"],index:_loc3_,styleName:this.styleName,enabled:this._bEnabled,gapi:this.gapi}));
            _loc4_["\x1a\x15\b"](this["\x1e\b\x04"]);
            _loc4_.addEventListener("itemSelected",this);
            _loc4_.addEventListener("itemdblClick",this);
            _loc4_.addEventListener("itemRollOver",this);
            _loc4_.addEventListener("itemRollOut",this);
            _loc4_.addEventListener("itemDrag",this);
            _loc4_.addEventListener("itemDrop",this);
         }
         var _loc5_ = _loc3_ + this["\x1d\x1c\r"];
         if(this["\x1c\x05\x0f"])
         {
            _loc4_["\x1a\x19\x18"](this._nMaskWidth,this["\x1d\x1c\x06"]);
         }
         var _loc6_ = this["\x1b\x1e\x17"][_loc5_];
         var _loc7_ = _loc6_.item;
         var _loc8_ = typeof _loc7_ != "string" ? _loc7_.label : _loc7_;
         var _loc9_ = !((_loc6_.selected || _loc5_ == this["\x1d\x1c\x10"]) && _loc7_ != undefined) ? "normal" : "selected";
         _loc4_["\x1a\x1b\x01"](_loc8_,_loc7_,_loc9_);
         _loc4_["\x18\x10\x19"] = _loc5_;
         _loc3_ = _loc3_ + 1;
      }
      this["\x1c\x05\x0f"] = false;
   }
   function §\x15\x1e\r§(§\x16\b\x1d§)
   {
      if(!this._sbVertical._visible)
      {
         this._sbVertical._visible = true;
         if(_loc2_)
         {
            this["\x16\x05\f"]();
         }
      }
   }
   function §\x1a\f\x16§(§\x16\b\x1d§)
   {
      if(this._sbVertical._visible)
      {
         this._sbVertical._visible = false;
         if(_loc2_)
         {
            this["\x16\x05\f"]();
         }
      }
   }
   function §\x1a\x19\x10§(§\x16\b\x1d§)
   {
      this["\x1c\x05\x11"] = false;
      var _loc3_ = Math.floor(this["\x0e\x06"] / this["\x1d\x1c\x06"]);
      var _loc4_ = this["\x1b\x1e\x17"].length - _loc3_;
      var _loc5_ = _loc3_ * (_loc4_ / this["\x1b\x1e\x17"].length);
      if(_loc3_ >= this["\x1b\x1e\x17"].length || this["\x1b\x1e\x17"].length == 0)
      {
         this["\x1a\f\x16"](_loc2_);
      }
      else
      {
         this["\x15\x1e\r"](_loc2_);
         this._sbVertical["\x1a\x19\x11"](_loc5_,0,_loc4_);
         this._sbVertical["\x1a\x11\x12"] = this["\x1d\x1c\r"];
      }
   }
   function §\x18\x13\x15§(§\x19\b\x14§, §\x1b\x07\x1d§, §\x16\x11\x0b§)
   {
      if(_loc4_ == undefined)
      {
         _loc4_ = false;
      }
      if(_loc2_ == undefined)
      {
         _loc2_ = this["\x1d\x1c\x10"];
      }
      var _loc5_ = this["\x1b\x1e\x17"][_loc2_];
      var _loc6_ = this["\x1c\x06\x1a"] && Key.isDown(dofus.Constants["\x1a\x13\x11"]);
      if(!_loc6_)
      {
         this["\x1b\x13\x1a"]();
      }
      if(_loc5_.selected && (_loc6_ && !_loc4_))
      {
         _loc5_.selected = false;
         _loc3_.setState("normal");
      }
      else if(!_loc5_.selected)
      {
         _loc5_.selected = true;
         _loc3_.setState("selected");
      }
   }
   function §\x17\x1e\x07§()
   {
      var _loc2_ = new Array();
      var _loc3_ = 0;
      while(_loc3_ < this["\x1b\x1e\x17"].length)
      {
         if(this["\x1b\x1e\x17"][_loc3_].selected)
         {
            var _loc4_ = this["\x1b\x1e\x17"][_loc3_].item;
            _loc2_.push(_loc4_);
         }
         _loc3_ = _loc3_ + 1;
      }
      _loc2_.reverse();
      return _loc2_;
   }
   function getRolledOverRows()
   {
      var _loc2_ = new Array();
      var _loc3_ = Math.ceil(this["\x0e\x06"] / this["\x1d\x1c\x06"]);
      var _loc4_ = 0;
      while(_loc4_ < _loc3_)
      {
         var _loc5_ = this["\x1d\n\b"]["row" + _loc4_];
         if(_loc5_ != undefined && _loc5_.isRolledOver)
         {
            _loc2_.push(_loc5_);
         }
         _loc4_ = _loc4_ + 1;
      }
      _loc2_.reverse();
      return _loc2_;
   }
   function §\x1b\x13\x1a§()
   {
      var _loc2_ = 0;
      while(_loc2_ < this["\x1b\x1e\x17"].length)
      {
         if(this["\x1b\x1e\x17"][_loc2_].selected)
         {
            this["\x1b\x1e\x17"][_loc2_].selected = false;
            this["\x1d\n\b"]["row" + (_loc2_ - this["\x1d\x1c\r"])].setState("normal");
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   function modelChanged()
   {
      this.selectedIndex = -1;
      this["\x1b\x1e\x17"] = new Array();
      var _loc2_ = this["\x1c\x0f\x06"].length;
      var _loc3_ = 0;
      while(_loc3_ < _loc2_)
      {
         this["\x1b\x1e\x17"][_loc3_] = {item:this["\x1c\x0f\x06"][_loc3_],selected:false};
         _loc3_ = _loc3_ + 1;
      }
      if(this["\x1c\x02\x07"])
      {
         this["\x1a\x1b\x04"](_loc2_,true);
      }
      else
      {
         this["\x1a\x19\x10"](true);
         this["\x18\x13\x14"]();
      }
   }
   function scroll(oEvent)
   {
      this["\x1a\x1b\x04"](_loc2_.target["\x1a\x11\x12"]);
   }
   function itemSelected(oEvent)
   {
      var _loc3_ = _loc2_.target["\x18\x10\x19"];
      var _loc4_ = _loc2_.target;
      this["\x1d\x1c\x10"] = _loc3_;
      this["\x18\x13\x15"](_loc3_,_loc4_);
      this["\x17\x07\x19"]({type:"itemSelected",row:_loc4_,item:_loc4_.item,targets:this["\x17\x1e\x07"]()});
   }
   function itemdblClick(oEvent)
   {
      var _loc3_ = _loc2_.target["\x18\x10\x19"];
      var _loc4_ = _loc2_.target;
      this["\x1d\x1c\x10"] = _loc3_;
      this["\x18\x13\x15"](_loc3_,_loc4_);
      this["\x17\x07\x19"]({type:"itemdblClick",row:_loc2_.target,targets:this["\x17\x1e\x07"]()});
   }
   function itemRollOver(oEvent)
   {
      var _loc3_ = this["\x1c\x06\x1a"] && (Key.isDown(dofus.Constants["\x1a\x13\x11"]) && Key.isDown(Key.SHIFT));
      if(_loc3_)
      {
         var _loc4_ = _loc2_.target["\x18\x10\x19"];
         var _loc5_ = _loc2_.target;
         this["\x18\x13\x15"](_loc4_,_loc5_,true);
      }
      this["\x17\x07\x19"]({type:"itemRollOver",row:_loc2_.target,item:this["\x1c\x0f\x06"][_loc2_.target["\x18\x10\x19"]],targets:this["\x17\x1e\x07"]()});
   }
   function itemRollOut(oEvent)
   {
      this["\x17\x07\x19"]({type:"itemRollOut",row:_loc2_.target,item:this["\x1c\x0f\x06"][_loc2_.target["\x18\x10\x19"]],targets:this["\x17\x1e\x07"]()});
   }
   function itemDrag(oEvent)
   {
      this["\x17\x07\x19"]({type:"itemDrag",row:_loc2_.target});
   }
   function itemDrop(oEvent)
   {
      this["\x17\x07\x19"]({type:"itemDrop",row:_loc2_.target});
   }
   function onMouseWheel(§\x19\x05\x1b§, §\x18\x1b\f§)
   {
      if(dofus.graphics.gapi.ui.Zoom["\x18\x10\x13"]())
      {
         return undefined;
      }
      if(this._bScrollFromEverywhere || String(_loc3_._target).indexOf(this._target) != -1)
      {
         this["\x1a\x1b\x04"](this["\x1d\x1c\r"] - _loc2_);
      }
   }
}
