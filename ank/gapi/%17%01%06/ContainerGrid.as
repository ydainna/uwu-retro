class ank.gapi.§\x17\x01\x06§.ContainerGrid extends ank.gapi.core.UIBasicComponent
{
   static var §\x16\x1b\x10§ = "ContainerGrid";
   var §\x1e\x01\x05§ = 3;
   var §\x1e\x01\x04§ = 3;
   var §\x1d\x1c\x05§ = 1;
   var §\x1c\x05\x0f§ = false;
   var §\x1c\x07\x19§ = true;
   var §\x1c\x07\x1b§ = true;
   var §\x1c\x06\x18§ = true;
   var §\x1d\x1c\r§ = 0;
   var §\x1d\x1d\x10§ = 0;
   function ContainerGrid()
   {
      super();
   }
   function §\x19\x06§(§\x16\x0f\x03§)
   {
      this["\x1c\x06\x18"] = _loc2_;
      return this["\x04\x14"]();
   }
   function §\x04\x14§()
   {
      return this["\x1c\x06\x18"];
   }
   function §\x1c\b§(§\x16\x12\x05§)
   {
      this["\x1c\x07\x1b"] = _loc2_;
      return this["\b\x12"]();
   }
   function §\b\x12§()
   {
      return this["\x1c\x07\x1b"];
   }
   function §\x07§(§\x19\x10\x14§)
   {
      this["\x1e\x01\x05"] = _loc2_;
      return this["\r\x06"]();
   }
   function §\r\x06§()
   {
      return this["\x1e\x01\x05"];
   }
   function get visibleContainers()
   {
      return this._eaVisibleContainers;
   }
   function §\x06§(§\x19\x10\x13§)
   {
      this["\x1e\x01\x04"] = _loc2_;
      return this["\r\x04"]();
   }
   function §\r\x04§()
   {
      return this["\x1e\x01\x04"];
   }
   function §\x11\x1a§(§\x17\n\x1c§)
   {
      this["\x1c\x0f\x06"] = _loc2_;
      this["\x1c\x0f\x06"].addEventListener("modelChanged",this);
      this.modelChanged();
      var _loc3_ = this["\x17\x1b\x15"]();
      if(this["\x1d\x1c\r"] > _loc3_)
      {
         this["\x1a\x1b\x04"](_loc3_);
      }
      return this["\x1e\x18\x03"]();
   }
   function §\x1e\x18\x03§()
   {
      return this["\x1c\x0f\x06"];
   }
   function §\x1c\n§(§\x19\x0e\x04§)
   {
      this["\x1a\x19\x15"](_loc2_);
      return this["\b\x14"]();
   }
   function §\b\x14§()
   {
      return this["\x1b\x1e\x18"][this["\x1b\x1e\x18"].length - 1].index;
   }
   function §\b\x15§()
   {
      return this["\x1d\x0f\x16"]["c" + this.selectedIndex];
   }
   function get selectedContentData()
   {
      return this["\x1b\x1e\x18"][this["\x1b\x1e\x18"].length - 1].item;
   }
   function §\x1c\x02§(§\x16\x12\x02§)
   {
      this["\x1c\x07\x19"] = _loc2_;
      return this["\b\f"]();
   }
   function §\b\f§()
   {
      return this["\x1c\x07\x19"];
   }
   function get lastLoadedContentIndex()
   {
      var _loc2_ = 0;
      var _loc3_ = 0;
      var _loc4_ = 0;
      while(_loc4_ < this["\x1e\x01\x05"])
      {
         var _loc5_ = 0;
         while(_loc5_ < this["\x1e\x01\x04"])
         {
            var _loc6_ = this["\x1d\x0f\x16"]["c" + _loc2_];
            if(_loc6_["\x17\x01\x05"])
            {
               _loc3_ = _loc6_.id;
            }
            _loc2_ = _loc2_ + 1;
            _loc5_ = _loc5_ + 1;
         }
         _loc4_ = _loc4_ + 1;
      }
      return _loc3_;
   }
   function §\x18\x0f\x13§(§\x19\b\x14§)
   {
      var _loc3_ = 0;
      while(_loc3_ < this["\x1b\x1e\x18"].length)
      {
         var _loc4_ = this["\x1b\x1e\x18"][_loc3_].index;
         if(_loc4_ == _loc2_)
         {
            return true;
         }
         _loc3_ = _loc3_ + 1;
      }
      return false;
   }
   function §\x1a\x1b\x04§(§\x19\f\r§)
   {
      var _loc3_ = this["\x17\x1b\x15"]();
      if(_loc2_ > _loc3_)
      {
         _loc2_ = _loc3_;
      }
      if(_loc2_ < 0)
      {
         _loc2_ = 0;
      }
      if(this["\x1d\x1c\r"] != _loc2_)
      {
         this["\x1d\x1c\r"] = _loc2_;
         this["\x1a\x19\x10"]();
         var _loc4_ = this["\x0e\x06"] / this["\x1e\x01\x05"];
         this["\x18\x13\x14"]();
      }
   }
   function §\x17\x15\x12§(§\x19\b\x14§)
   {
      return ank.gapi.controls.Container(this["\x1d\x0f\x16"]["c" + _loc2_]);
   }
   function §\x1b\x13\x1a§()
   {
      var _loc2_ = 0;
      var _loc3_ = 0;
      while(_loc3_ < this["\x1e\x01\x05"])
      {
         var _loc4_ = 0;
         while(_loc4_ < this["\x1e\x01\x04"])
         {
            var _loc5_ = this["\x1d\x0f\x16"]["c" + _loc2_];
            if(_loc5_.selected)
            {
               _loc5_.selected = false;
            }
            _loc2_ = _loc2_ + 1;
            _loc4_ = _loc4_ + 1;
         }
         _loc3_ = _loc3_ + 1;
      }
      this["\x1b\x1e\x18"] = new Array();
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.ContainerGrid.CLASS_NAME);
      this._eaVisibleContainers = new ank.utils.ExtendedArray();
   }
   function createChildren()
   {
      this.createEmptyMovieClip("\x1d\x0f\x16",10);
      this.createEmptyMovieClip("_mcMask",20);
      this["\x17\n\x0f"](this._mcMask,0,0,1,1,0,0);
      this["\x1d\x0f\x16"].setMask(this._mcMask);
      if(this["\x1c\x07\x19"])
      {
         this.attachMovie("ScrollBar","_sbVertical",30);
         this._sbVertical.addEventListener("scroll",this);
      }
      ank.utils.["\x18\x1e\x13"].addListener(this);
      this["\x1b\x1e\x18"] = new Array();
   }
   function size()
   {
      super.size();
      this["\x16\x05\f"]();
   }
   function §\x16\x05\f§()
   {
      if(this["\x1c\x07\x19"])
      {
         this._sbVertical["\x1a\x19\x18"](this["\x0e\x06"]);
         this._sbVertical.move(this["\x1d"] - this._sbVertical.width,0);
      }
      this._mcMask._width = this["\x1d"] - (!this["\x1c\x07\x19"] ? 0 : this._sbVertical.width);
      this._mcMask._height = this["\x0e\x06"];
      this["\x1a\x19\x10"]();
      this["\x1c\x05\x0f"] = this["\x1c\x05\x07"];
      this["\x18\x13\x14"]();
   }
   function §\x18\x13\x14§()
   {
      var _loc2_ = (this["\x1d"] - (!this["\x1c\x07\x19"] ? 0 : this._sbVertical.width)) / this["\x1e\x01\x04"];
      var _loc3_ = this["\x0e\x06"] / this["\x1e\x01\x05"];
      var _loc4_ = 0;
      if(!this["\x1c\x05\x0f"])
      {
         var _loc5_ = 0;
         while(_loc5_ < this["\x1e\x01\x05"])
         {
            var _loc6_ = 0;
            while(_loc6_ < this["\x1e\x01\x04"])
            {
               var _loc7_ = this["\x1d\x0f\x16"]["c" + _loc4_];
               if(_loc7_ == undefined)
               {
                  _loc7_ = ank.gapi.controls.Container(this["\x1d\x0f\x16"].attachMovie("Container","c" + _loc4_,_loc4_,{margin:this["\x1d\x1d\x10"]}));
                  _loc7_.addEventListener("drag",this);
                  _loc7_.addEventListener("drop",this);
                  _loc7_.addEventListener("over",this);
                  _loc7_.addEventListener("out",this);
                  _loc7_.addEventListener("click",this);
                  _loc7_.addEventListener("dblClick",this);
                  this._eaVisibleContainers.push(_loc7_);
               }
               _loc7_._x = _loc2_ * _loc6_;
               _loc7_._y = _loc3_ * _loc5_;
               _loc7_["\x1a\x19\x18"](_loc2_,_loc3_);
               _loc4_ = _loc4_ + 1;
               _loc6_ = _loc6_ + 1;
            }
            _loc5_ = _loc5_ + 1;
         }
      }
      var _loc8_ = 0;
      _loc4_ = this["\x1d\x1c\r"] * this["\x1e\x01\x04"];
      var _loc9_ = 0;
      while(_loc9_ < this["\x1e\x01\x05"])
      {
         var _loc10_ = 0;
         while(_loc10_ < this["\x1e\x01\x04"])
         {
            var _loc11_ = this["\x1d\x0f\x16"]["c" + _loc8_];
            var _loc12_ = this["\x1c\x0f\x06"][_loc4_];
            var _loc13_ = _loc12_.label;
            var _loc14_ = _loc12_.forceReloadOnContainer;
            _loc11_.forceReload = _loc14_ != undefined && _loc14_;
            _loc11_["\x1a\x1e\x05"] = _loc13_ != undefined;
            _loc11_.contentData = _loc12_;
            _loc11_.id = _loc4_;
            if(this["\x18\x0f\x13"](_loc4_))
            {
               _loc11_.selected = true;
            }
            else
            {
               _loc11_.selected = false;
            }
            _loc11_.enabled = this._bEnabled;
            _loc4_ = _loc4_ + 1;
            _loc8_ = _loc8_ + 1;
            _loc10_ = _loc10_ + 1;
         }
         _loc9_ = _loc9_ + 1;
      }
      if(this["\x1c\x05\x0f"])
      {
      }
      this["\x1c\x05\x0f"] = false;
   }
   function draw()
   {
      this["\x1c\x05\x0f"] = !this["\x1c\x05\x07"];
      this["\x18\x13\x14"]();
      var _loc2_ = this.getStyle();
      var _loc3_ = _loc2_.containerbackground;
      var _loc4_ = _loc2_.containerborder;
      var _loc5_ = _loc2_.containerhighlight;
      this["\x1d\x1d\x10"] = _loc2_.containermargin;
      for(var k in this["\x1d\x0f\x16"])
      {
         var _loc6_ = this["\x1d\x0f\x16"][k];
         _loc6_.backgroundRenderer = _loc3_;
         _loc6_["\x16\x10\t"] = _loc4_;
         _loc6_.highlightRenderer = _loc5_;
         _loc6_.margin = this["\x1d\x1d\x10"];
         _loc6_.styleName = _loc2_.containerstyle;
      }
      if(this["\x1c\x07\x19"])
      {
         this._sbVertical.styleName = _loc2_.scrollbarstyle;
      }
   }
   function §\x1a\x16\x07§()
   {
      for(var k in this["\x1d\x0f\x16"])
      {
         this["\x1d\x0f\x16"][k].enabled = this._bEnabled;
      }
      this.addToQueue({object:this,method:function()
      {
         this._sbVertical.enabled = this._bEnabled;
      }});
   }
   function §\x17\x1b\x15§()
   {
      return Math.ceil(this["\x1c\x0f\x06"].length / this["\x1e\x01\x04"]) - this["\x1e\x01\x05"];
   }
   function §\x1a\x19\x10§()
   {
      var _loc2_ = this["\x1d\x1c\x05"] - this["\x1e\x01\x05"];
      var _loc3_ = this["\x1e\x01\x05"] * (_loc2_ / this["\x1d\x1c\x05"]);
      this._sbVertical["\x1a\x19\x11"](_loc3_,0,_loc2_);
      this._sbVertical["\x1a\x11\x12"] = this["\x1d\x1c\r"];
   }
   function §\x17\x19\x10§(§\x19\b\x14§)
   {
      var _loc3_ = 0;
      var _loc4_ = 0;
      var _loc5_ = 0;
      while(_loc5_ < this["\x1e\x01\x05"])
      {
         var _loc6_ = 0;
         while(_loc6_ < this["\x1e\x01\x04"])
         {
            var _loc7_ = this["\x1d\x0f\x16"]["c" + _loc3_];
            if(_loc2_ == _loc7_.id)
            {
               return _loc7_;
            }
            _loc3_ = _loc3_ + 1;
            _loc6_ = _loc6_ + 1;
         }
         _loc5_ = _loc5_ + 1;
      }
   }
   function §\x17\x1e\x07§()
   {
      var _loc2_ = new Array();
      var _loc3_ = 0;
      while(_loc3_ < this["\x1b\x1e\x18"].length)
      {
         var _loc4_ = this["\x1b\x1e\x18"][_loc3_].item;
         _loc2_.push(_loc4_);
         _loc3_ = _loc3_ + 1;
      }
      _loc2_.reverse();
      return _loc2_;
   }
   function §\x1a\x12\x14§(§\x19\x12\r§)
   {
      _loc2_.selected = true;
      this["\x1b\x1e\x18"].push({index:_loc2_.id,item:_loc2_.contentData});
   }
   function §\x1b\x13\x1c§(§\x19\x12\r§)
   {
      _loc2_.selected = false;
      this.unSelectIndex(_loc2_.id);
   }
   function unSelectIndex(nIndexID)
   {
      if(nIndexID == undefined)
      {
         return undefined;
      }
      var _loc3_ = new Array();
      var _loc4_ = 0;
      while(_loc4_ < this["\x1b\x1e\x18"].length)
      {
         if(nIndexID != this["\x1b\x1e\x18"][_loc4_].index)
         {
            _loc3_.push(this["\x1b\x1e\x18"][_loc4_]);
         }
         _loc4_ = _loc4_ + 1;
      }
      this["\x1b\x1e\x18"] = _loc3_;
   }
   function §\x1a\x19\x15§(§\x19\b\x14§, §\x16\x11\x0b§)
   {
      if(_loc3_ == undefined)
      {
         _loc3_ = false;
      }
      var _loc4_ = 0;
      var _loc5_ = 0;
      var _loc6_ = 0;
      while(_loc6_ < this["\x1e\x01\x05"])
      {
         var _loc7_ = 0;
         while(_loc7_ < this["\x1e\x01\x04"])
         {
            var _loc8_ = this["\x1d\x0f\x16"]["c" + _loc4_];
            if(_loc2_ == _loc8_.id)
            {
               _loc2_ = _loc4_;
               _loc5_ = _loc8_.id;
            }
            _loc4_ = _loc4_ + 1;
            _loc7_ = _loc7_ + 1;
         }
         _loc6_ = _loc6_ + 1;
      }
      var _loc9_ = this.selectedIndex;
      var _loc10_ = this["\x17\x19\x10"](_loc9_);
      var _loc11_ = this["\x1d\x0f\x16"]["c" + _loc2_];
      if(this["\x1c\x06\x18"])
      {
         if(!Key.isDown(dofus.Constants["\x1a\x13\x11"]))
         {
            this["\x1b\x13\x1a"]();
         }
      }
      else if(_loc10_ == undefined)
      {
         this.unSelectIndex(_loc9_);
      }
      else
      {
         this["\x1b\x13\x1c"](_loc10_);
      }
      if(_loc11_.contentData == undefined)
      {
         return undefined;
      }
      if(_loc11_.selected)
      {
         if(_loc3_)
         {
            return undefined;
         }
         this["\x1b\x13\x1c"](_loc11_);
         return undefined;
      }
      this["\x1a\x12\x14"](_loc11_);
   }
   function modelChanged(oEvent)
   {
      this["\x1b\x13\x1a"]();
      var _loc3_ = this["\x1d\x1c\x05"];
      this["\x1d\x1c\x05"] = Math.ceil(this["\x1c\x0f\x06"].length / this["\x1e\x01\x04"]);
      this["\x1c\x05\x0f"] = true;
      this["\x18\x13\x14"]();
      this.draw();
      this["\x1a\x19\x10"]();
   }
   function scroll(oEvent)
   {
      this["\x1a\x1b\x04"](_loc2_.target["\x1a\x11\x12"]);
   }
   function drag(oEvent)
   {
      this["\x17\x07\x19"]({type:"dragItem",target:_loc2_.target,owner:this});
   }
   function drop(oEvent)
   {
      this["\x17\x07\x19"]({type:"dropItem",target:_loc2_.target,owner:this});
   }
   function over(oEvent)
   {
      if(this["\x1c\x07\x1b"] && (this["\x1c\x06\x18"] && (Key.isDown(dofus.Constants["\x1a\x13\x11"]) && Key.isDown(Key.SHIFT))))
      {
         this["\x1a\x19\x15"](_loc2_.target.id,true);
      }
      this["\x17\x07\x19"]({type:"overItem",target:_loc2_.target,owner:this});
   }
   function out(oEvent)
   {
      this["\x17\x07\x19"]({type:"outItem",target:_loc2_.target});
   }
   function click(oEvent)
   {
      if(this["\x1c\x07\x1b"])
      {
         this["\x1a\x19\x15"](_loc2_.target.id);
      }
      this["\x17\x07\x19"]({type:"selectItem",target:_loc2_.target,owner:this});
   }
   function dblClick(oEvent)
   {
      var _loc3_ = this["\x17\x1e\x07"]();
      this["\x17\x07\x19"]({type:"dblClickItem",target:_loc2_.target,targets:_loc3_,owner:this,item:_loc2_.target.contentData});
   }
   function onMouseWheel(§\x19\x05\x1b§, §\x18\x1b\f§)
   {
      if(dofus.graphics.gapi.ui.Zoom["\x18\x10\x13"]())
      {
         return undefined;
      }
      if(String(_loc3_._target).indexOf(this._target) != -1)
      {
         this._sbVertical["\x1a\x11\x12"] -= _loc2_ <= 0 ? -1 : 1;
      }
   }
}
