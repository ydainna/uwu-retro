class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.Timeline extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Timeline";
   static var §\x18\x11\x0b§ = 34;
   static var §\x18\x11\t§ = 2;
   static var §\x18\x11\n§ = 28;
   static var §\x18\x07\x06§ = 4473924;
   var §\x1c\x0e\x06§ = 0;
   var §\x1c\x11\x11§ = new Array();
   var §\x1e\x07\x02§ = new Array();
   var §\x1c\x0e\f§ = 0;
   var §\x1c\x07\x07§ = true;
   function Timeline()
   {
      super();
   }
   function §\x19\x15§(§\x16\x10\b§)
   {
      this["\x1c\x07\x07"] = _loc2_;
      this["\x18\x13\x17"]._visible = _loc2_;
      return this["\x05\x12"]();
   }
   function §\x05\x12§()
   {
      return this["\x1c\x07\x07"];
   }
   function §\x1b\x14\x01§()
   {
      this["\x17\x13\r"]();
   }
   function nextTurn(§\x18\b\f§, §\x16\x15\x02§)
   {
      if(_loc3_ = undefined)
      {
         _loc3_ = false;
      }
      var _loc4_ = this["\x18\x13\x17"]["\x18\x11\x03"]["item" + _loc2_];
      if(_loc4_ == undefined)
      {
         return undefined;
      }
      this["\x18\x13\x17"].pointer_mc._visible = true;
      this["\x1b\n\x1c"]();
      this["\x1e\x10\x05"] = _loc4_["\x16\x1b\t"];
      if(_loc3_)
      {
         this["\x18\x13\x17"].pointer_mc.move(_loc4_._x,0);
         this["\x18\x13\x17"].pointer_mc._xscale = _loc4_._xscale;
         this["\x18\x13\x17"].pointer_mc._yscale = _loc4_._yscale;
      }
      else
      {
         this["\x18\x13\x17"].pointer_mc["\x19\x01\x11"](_loc4_._x,_loc4_._xscale);
      }
      this["\x18\x13\x17"].pointer_mc._y = !_loc4_._oData["\x18\x0f\x1d"] ? 0 : dofus.graphics.gapi.controls.Timeline["\x18\x11\t"];
      this["\x1c\x0e\x06"] = _loc2_;
   }
   function §\x18\x06\r§(§\x18\b\f§)
   {
      var _loc3_ = this["\x18\x13\x17"]["\x18\x11\x03"]["item" + _loc2_];
      _loc3_["\x18\x0e\x04"] = true;
      this["\x17\x13\r"]();
   }
   function §\x1a\x1d\x1d§(§\x18\b\f§)
   {
      var _loc3_ = this["\x18\x13\x17"]["\x18\x11\x03"]["item" + _loc2_];
      _loc3_["\x18\x0e\x04"] = false;
      this["\x17\x13\r"]();
   }
   function §\x1b\t\x0b§(§\x19\x06\f§)
   {
      this["\x1e\x10\x05"].startTimer(_loc2_);
   }
   function §\x1b\n\x1c§()
   {
      this["\x1e\x10\x05"].stopTimer();
   }
   function §\x1b\x14\f§()
   {
      var _loc2_ = this.api.datacenter.;
      var _loc3_ = new Array();
      var _loc4_ = 0;
      while(_loc4_ < this["\x1c\x01\f"].length)
      {
         _loc3_.push(_loc2_["\x1b\x07\x0e"].getItemAt(this["\x1c\x01\f"][_loc4_]));
         _loc4_ = _loc4_ + 1;
      }
      var _loc5_ = _loc3_.length;
      _loc4_ = 0;
      while(_loc4_ < _loc5_)
      {
         var _loc7_ = _loc3_[_loc4_];
         var _loc6_ = _loc7_.id;
         this["\x18\x13\x17"]["\x18\x11\x03"]["item" + _loc6_].data = _loc7_;
         _loc4_ = _loc4_ + 1;
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.Timeline.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.createEmptyMovieClip("\x18\x13\x17",10);
      this["\x18\x13\x17"].createEmptyMovieClip("\x1b\f\n",9);
      var _loc2_ = this["\x18\x13\x17"].attachMovie("TimelinePointer","pointer_mc",10);
      _loc2_._visible = false;
      this["\x17\x13\r"]();
   }
   function addListeners()
   {
      this._btnOpenClose.onRelease = function()
      {
         this._parent["\x1a\x01\x04"] = !this._parent["\x1a\x01\x04"];
      };
   }
   function §\x17\x13\r§(§\x17\x03\x0f§)
   {
      var _loc3_ = this.api.datacenter.;
      if(_loc2_ == undefined)
      {
         _loc2_ = _loc3_.Game["\x1b\x11\x19"];
      }
      this["\x1c\x01\f"] = _loc2_;
      var _loc4_ = new Array();
      var _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         var _loc6_ = _loc3_["\x1b\x07\x0e"].getItemAt(_loc2_[_loc5_]);
         if(_loc6_ != undefined)
         {
            _loc4_.push(_loc6_);
         }
         _loc5_ = _loc5_ + 1;
      }
      var _loc7_ = _loc4_.length;
      if(this["\x18\x13\x17"]["\x18\x11\x03"] == undefined)
      {
         this["\x18\x13\x17"].createEmptyMovieClip("\x18\x11\x03",20);
      }
      var _loc8_ = 20;
      _loc5_ = 0;
      while(_loc5_ < _loc7_)
      {
         var _loc9_ = _loc4_[_loc5_];
         var _loc10_ = this["\x18\x13\x17"]["\x18\x11\x03"]["item" + _loc9_.id];
         if(!(_loc10_ != undefined && _loc10_["\x18\x0e\x04"]))
         {
            var _loc11_ = _loc4_[_loc5_];
            _loc8_ += !_loc11_["\x18\x0f\x1d"] ? dofus.graphics.gapi.controls.Timeline["\x18\x11\x0b"] : dofus.graphics.gapi.controls.Timeline["\x18\x11\n"];
         }
         _loc5_ = _loc5_ + 1;
      }
      for(var k in this["\x1e\x07\x02"])
      {
         var _loc12_ = this["\x1e\x07\x02"][k].id;
         var _loc13_ = false;
         for(var kk in _loc4_)
         {
            var _loc14_ = _loc4_[kk].id;
            if(_loc12_ == _loc14_)
            {
               _loc13_ = true;
               break;
            }
         }
         if(!_loc13_)
         {
            this["\x18\x13\x17"]["\x18\x11\x03"]["item" + _loc12_].removeMovieClip();
         }
      }
      var _loc16_ = 0 - _loc8_;
      _loc5_ = 0;
      for(; _loc5_ < _loc7_; _loc5_ = _loc5_ + 1)
      {
         var _loc19_ = _loc4_[_loc5_];
         var _loc15_ = _loc19_.id;
         var _loc20_ = this["\x18\x13\x17"]["\x18\x11\x03"]["item" + _loc15_];
         if(_loc20_ == undefined)
         {
            _loc20_ = this["\x18\x13\x17"]["\x18\x11\x03"].attachMovie("TimelineItem","item" + _loc15_,this["\x1c\x0e\f"]++,{index:_loc5_,data:_loc19_,api:this.api,gapi:this.gapi});
         }
         else
         {
            _loc20_._visible = !_loc20_["\x18\x0e\x04"];
            if(_loc20_["\x18\x0e\x04"])
            {
               if(!_loc19_["\x18\x0f\x1d"])
               {
                  this["\x18\x13\x17"]["\x1b\f\n"]["TISB" + _loc20_.index].removeMovieClip();
               }
               continue;
            }
         }
         if(_loc19_["\x18\x0f\x1d"])
         {
            _loc20_._xscale = 80;
            _loc20_._yscale = 80;
         }
         _loc20_._x = _loc16_;
         _loc20_._y = !_loc19_["\x18\x0f\x1d"] ? 0 : dofus.graphics.gapi.controls.Timeline["\x18\x11\t"];
         if(!_loc19_["\x18\x0f\x1d"])
         {
            var _loc17_ = _loc20_;
            this["\x18\x13\x17"]["\x1b\f\n"]["TISB" + _loc20_.index].removeMovieClip();
         }
         else
         {
            var _loc21_ = this["\x18\x13\x17"]["\x1b\f\n"]["TISB" + _loc17_.index];
            if(_loc21_ == undefined)
            {
               _loc21_ = this["\x18\x13\x17"]["\x1b\f\n"].attachMovie("TimelineItemSummonedBg","TISB" + _loc17_.index,_loc17_.index);
            }
            _loc21_._x = _loc17_._x;
            _loc21_["\x1d\t\x07"]._width = _loc20_._x - _loc17_._x + _loc20_._width + 1;
            _loc21_["\x1d\x0b\x03"]._x = _loc21_["\x1d\t\x07"]._width;
         }
         _loc16_ += !_loc19_["\x18\x0f\x1d"] ? dofus.graphics.gapi.controls.Timeline["\x18\x11\x0b"] : dofus.graphics.gapi.controls.Timeline["\x18\x11\n"];
         var _loc18_ = _loc20_;
      }
      this.nextTurn(this["\x1c\x0e\x06"],true);
      this["\x1e\x07\x02"] = _loc4_;
   }
}
