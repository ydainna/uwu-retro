class ank.battlefield.§\x18\x18\x16§
{
   static var §\x19\x11\x1b§ = 1;
   static var §\x19\x11\x1c§ = 2;
   static var §\x19\x11\x1d§ = 3;
   static var §\x19\x12\x01§ = 4;
   static var §\x1b\x10\x07§ = 500;
   var §\x1e\x04\f§ = new Object();
   var §\x1e\x05\f§ = new Object();
   var §\x1d\r\n§ = new MovieClipLoader();
   var §\x1d\x19\x13§ = 1;
   var §\x1c\b\t§ = false;
   var §\x1c\b\x14§ = false;
   function §\x18\x18\x16§(§\x16\b\b§, c, d)
   {
      if(_loc2_ != undefined)
      {
         this.initialize(_loc2_,c,_loc4_);
      }
      this["\x1d\r\n"].addListener(this);
   }
   function §\t\x04§()
   {
      return this["\x1c\b\t"];
   }
   function §\x1c\x17§(§\x16\x12\x10§)
   {
      this["\x1c\b\t"] = _loc2_;
      return this["\t\x04"]();
   }
   function §\x02\x13§()
   {
      return this["\x1d\x18\x19"];
   }
   function get validCellsData()
   {
      return this["\x1e\x03\b"].Map.validCells;
   }
   function initialize(§\x16\b\b§, c, d)
   {
      this["\x1d\b\x12"] = _loc2_;
      this["\x1e\x03\b"] = _loc4_;
      this["\x1d\n\x06"] = c;
      this.api = _global.api;
   }
   function §\x16\x14\x01§(§\x19\x13\x10§, §\x19\x04\x12§, §\x16\t\x15§)
   {
      this["\x1e\x03\b"].Map = _loc2_;
      var _loc5_ = ank.battlefield.Constants["\x16\x18\t"];
      var _loc6_ = ank.battlefield.Constants["\x16\x17\x1d"];
      var _loc7_ = ank.battlefield.Constants["\x16\x17\x1c"];
      var _loc8_ = ank.battlefield.Constants["\x18\x14\x0e"];
      var _loc9_ = -1;
      var _loc10_ = 0;
      var _loc11_ = 0;
      var _loc12_ = _loc2_.data;
      var _loc13_ = _loc12_.length;
      var _loc14_ = _loc2_.width - 1;
      var _loc15_ = this["\x1d\n\x06"]["\x17\x0e\x12"];
      var _loc16_ = _loc3_ != undefined;
      var _loc17_ = false;
      var _loc18_ = this._nLastCellCount == _loc13_;
      this["\x1d\x18\x19"] = 0;
      if(!_loc16_ && (ank.battlefield.Constants["\x1b\x17\x02"] && ank.battlefield.Constants["\x1b\x0b\x0f"] == "explod"))
      {
         this["\x1d\n\x06"]["\x16\x04\x0f"](false);
      }
      if(_loc2_.backgroundNum != 0)
      {
         if(ank.battlefield.Constants["\x1b\x17\x02"] && (ank.battlefield.Constants["\x1b\x0b\x0f"] == "explod" && !_loc16_))
         {
            var _loc19_ = _loc15_.Ground.createEmptyMovieClip("background",-1);
            _loc19_["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["mapHandler/BACKGROUND"];
            this["\x1d\r\n"].loadClip(ank.battlefield.Constants["\x1b\x0b\x0e"] + _loc2_.backgroundNum + ".swf",_loc19_);
            this["\x1d\x18\x19"]++;
         }
         else if(ank.battlefield.Constants["\x1b\x0b\x0f"] != "")
         {
            _loc15_.Ground.attachMovie(_loc2_.backgroundNum,"background",-1)["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["mapHandler/BACKGROUND"];
         }
         else
         {
            _loc15_.Ground.attach(_loc2_.backgroundNum,"background",-1)["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["mapHandler/BACKGROUND"];
         }
      }
      var _loc20_ = -1;
      while((_loc20_ = _loc20_ + 1) < _loc13_)
      {
         if(_loc9_ == _loc14_)
         {
            _loc9_ = 0;
            _loc10_ += 1;
            if(_loc11_ == 0)
            {
               _loc11_ = _loc6_;
               _loc14_ -= 1;
            }
            else
            {
               _loc11_ = 0;
               _loc14_ += 1;
            }
         }
         else
         {
            _loc9_ = _loc9_ + 1;
         }
         if(_loc16_)
         {
            if(_loc20_ < _loc3_)
            {
               continue;
            }
            if(_loc20_ > _loc3_)
            {
               return undefined;
            }
         }
         var _loc21_ = _loc12_[_loc20_];
         if(_loc21_["\x15\x1c\x1a"])
         {
            var _loc22_ = _loc9_ * _loc5_ + _loc11_;
            var _loc23_ = _loc10_ * _loc7_ - _loc8_ * (_loc21_["\x18\x03\x18"] - 7);
            _loc21_.x = _loc22_;
            _loc21_.y = _loc23_;
            if(_loc21_.movement || _loc4_)
            {
               if(!_loc18_ && !_loc15_.InteractionCell["cell" + _loc20_])
               {
                  if(!_loc17_)
                  {
                     if(ank.battlefield.Constants["\x1b\x0b\x0f"] != "")
                     {
                        var _loc24_ = _loc15_.InteractionCell.attachMovie("i" + _loc21_["\x18\x03\x1a"],"cell" + _loc20_,_loc20_,{_x:_loc22_,_y:_loc23_});
                     }
                     else
                     {
                        _loc24_ = _loc15_.InteractionCell.attachMovie("i" + _loc21_["\x18\x03\x1a"],"cell" + _loc20_,_loc20_,{_x:_loc22_,_y:_loc23_});
                     }
                  }
                  else
                  {
                     _loc24_ = _loc15_.InteractionCell.createEmptyMovieClip("cell" + _loc20_,_loc20_,{_x:_loc22_,_y:_loc23_});
                  }
                  _loc24_.__proto__ = ank.battlefield.mc["\x16\x17\x13"].prototype;
                  _loc24_.initialize(this["\x1d\b\x12"]);
               }
               else
               {
                  _loc24_ = _loc15_.InteractionCell["cell" + _loc20_];
               }
               _loc21_.mc = _loc24_;
               _loc24_.data = _loc21_;
            }
            else
            {
               _loc15_.InteractionCell["cell" + _loc20_].removeMovieClip();
            }
            if(_loc21_["\x18\x13\n"] != 0)
            {
               if(ank.battlefield.Constants["\x1b\x17\x02"] && ank.battlefield.Constants["\x1b\x0b\x0f"] == "explod")
               {
                  var _loc26_ = true;
                  if(_loc16_)
                  {
                     var _loc25_ = _loc15_.Ground["cell" + _loc20_];
                     if(_loc25_ != undefined && _loc25_.lastGroundID == _loc21_["\x18\x13\n"])
                     {
                        _loc25_.fullLoaded = _loc26_ = false;
                        this["\x1e\x04\f"][_loc25_] = _loc21_;
                        this.onLoadInit(_loc25_);
                     }
                  }
                  if(_loc26_)
                  {
                     _loc25_ = _loc15_.Ground.createEmptyMovieClip("cell" + _loc20_,_loc20_);
                     _loc25_.fullLoaded = false;
                     this["\x1e\x04\f"][_loc25_] = _loc21_;
                     this["\x1d\r\n"].loadClip(ank.battlefield.Constants["\x1b\x0b\x0e"] + _loc21_["\x18\x13\n"] + ".swf",_loc25_);
                     this["\x1d\x18\x19"]++;
                  }
               }
               else
               {
                  if(!_loc17_)
                  {
                     if(ank.battlefield.Constants["\x1b\x0b\x0f"] != "")
                     {
                        _loc25_ = _loc15_.Ground.attachMovie(_loc21_["\x18\x13\n"],"cell" + _loc20_,_loc20_);
                     }
                     else
                     {
                        _loc25_ = _loc15_.Ground.attach(_loc21_["\x18\x13\n"],"cell" + _loc20_,_loc20_);
                     }
                  }
                  else
                  {
                     _loc25_ = new MovieClip();
                  }
                  _loc25_["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["mapHandler/Cell/Ground"];
                  _loc25_._x = _loc22_;
                  _loc25_._y = _loc23_;
                  if(_loc21_["\x18\x03\x1a"] != 1)
                  {
                     _loc25_.gotoAndStop(_loc21_["\x18\x03\x1a"]);
                  }
                  else if(_loc21_["\x18\x13\x0b"] != 0)
                  {
                     _loc25_._rotation = _loc21_["\x18\x13\x0b"] * 90;
                     if(_loc25_._rotation % 180)
                     {
                        _loc25_._yscale = 192.86;
                        _loc25_._xscale = 51.85;
                     }
                  }
                  if(_loc21_["\x18\x13\t"])
                  {
                     _loc25_._xscale *= -1;
                  }
               }
            }
            else
            {
               _loc15_.Ground["cell" + _loc20_].removeMovieClip();
            }
            if(_loc21_["\x18\x13\x0e"] != 0)
            {
               if(ank.battlefield.Constants["\x1b\x17\x02"] && ank.battlefield.Constants["\x1b\x0b\x0f"] == "explod")
               {
                  var _loc28_ = true;
                  if(_loc16_)
                  {
                     var _loc27_ = _loc15_.Object1["cell" + _loc20_];
                     if(_loc27_ != undefined && _loc27_.lastObject1ID == _loc21_["\x18\x13\x0e"])
                     {
                        _loc27_.fullLoaded = _loc28_ = false;
                        this["\x1e\x04\f"][_loc27_] = _loc21_;
                        this.onLoadInit(_loc27_);
                     }
                  }
                  if(_loc28_)
                  {
                     _loc27_ = _loc15_.Object1.createEmptyMovieClip("cell" + _loc20_,_loc20_);
                     _loc27_.fullLoaded = false;
                     this["\x1e\x04\f"][_loc27_] = _loc21_;
                     this["\x1d\r\n"].loadClip(ank.battlefield.Constants["\x1b\x0b\x10"] + _loc21_["\x18\x13\x0e"] + ".swf",_loc27_);
                     this["\x1d\x18\x19"]++;
                  }
               }
               else
               {
                  if(!_loc17_)
                  {
                     _loc27_ = _loc15_.Object1.attachMovie(_loc21_["\x18\x13\x0e"],"cell" + _loc20_,_loc20_);
                  }
                  else
                  {
                     _loc27_ = new MovieClip();
                  }
                  _loc27_["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["mapHandler/Cell/Object1"];
                  _loc27_._x = _loc22_;
                  _loc27_._y = _loc23_;
                  if(_loc21_["\x18\x03\x1a"] == 1 && _loc21_["\x18\x13\x0f"] != 0)
                  {
                     _loc27_._rotation = _loc21_["\x18\x13\x0f"] * 90;
                     if(_loc27_._rotation % 180)
                     {
                        _loc27_._yscale = 192.86;
                        _loc27_._xscale = 51.85;
                     }
                  }
                  if(_loc21_["\x18\x13\r"])
                  {
                     _loc27_._xscale *= -1;
                  }
               }
               _loc21_.mcObject1 = _loc27_;
            }
            else
            {
               _loc15_.Object1["cell" + _loc20_].removeMovieClip();
            }
            if(_loc21_.layerObjectExternal != "")
            {
               if(!_loc17_)
               {
                  var _loc29_ = _loc15_.Object2["\x16\x06\x16"](ank.battlefield.mc["\x18\f\x01"],"cellExt" + _loc20_,_loc20_ * 100 + 1);
               }
               _loc29_["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["mapHandler/Cell/ObjectExternal"];
               _loc29_.initialize(this["\x1d\b\x12"],_loc21_,_loc21_.layerObjectExternalInteractive);
               _loc29_["\x18\x16\x01"](_loc21_.layerObjectExternal,_loc21_.layerObjectExternalAutoSize);
               _loc29_._x = _loc22_;
               _loc29_._y = _loc23_;
               _loc21_.mcObjectExternal = _loc29_;
            }
            else
            {
               _loc15_.Object2["cellExt" + _loc20_].removeMovieClip();
               delete _loc21_.mcObjectExternal;
            }
            if(_loc21_["\x18\x13\x12"] != 0)
            {
               if(ank.battlefield.Constants["\x1b\x17\x02"] && ank.battlefield.Constants["\x1b\x0b\x0f"] == "explod")
               {
                  var _loc31_ = true;
                  if(_loc16_)
                  {
                     var _loc30_ = _loc15_.Object2["cell" + _loc20_];
                     if(_loc30_ != undefined && _loc30_.lastObject2ID == _loc21_["\x18\x13\x12"])
                     {
                        _loc30_.fullLoaded = _loc31_ = false;
                        this["\x1e\x04\f"][_loc30_] = _loc21_;
                        this.onLoadInit(_loc30_);
                     }
                  }
                  if(_loc31_)
                  {
                     _loc30_ = _loc15_.Object2.createEmptyMovieClip("cell" + _loc20_,_loc20_ * 100);
                     _loc30_.fullLoaded = false;
                     this["\x1e\x04\f"][_loc30_] = _loc21_;
                     this["\x1d\r\n"].loadClip(ank.battlefield.Constants["\x1b\x0b\x10"] + _loc21_["\x18\x13\x12"] + ".swf",_loc30_);
                     this["\x1d\x18\x19"]++;
                  }
               }
               else
               {
                  if(!_loc17_)
                  {
                     _loc30_ = _loc15_.Object2.attachMovie(_loc21_["\x18\x13\x12"],"cell" + _loc20_,_loc20_ * 100);
                  }
                  else
                  {
                     _loc30_ = new MovieClip();
                  }
                  if(_loc30_)
                  {
                     _loc30_["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["mapHandler/Cell/Object2"];
                     if(_loc21_["\x18\x13\x11"])
                     {
                        _loc30_.__proto__ = ank.battlefield.mc["\x18\f\x01"].prototype;
                        _loc30_.initialize(this["\x1d\b\x12"],_loc21_,true);
                     }
                     _loc30_._x = _loc22_;
                     _loc30_._y = _loc23_;
                     if(_loc21_["\x18\x13\x10"])
                     {
                        _loc30_._xscale = -100;
                     }
                  }
               }
               if(_loc30_)
               {
                  _loc21_.mcObject2 = _loc30_;
               }
               else
               {
                  _loc21_["\x18\x13\x12"] = 0;
                  _loc15_.Object2["cell" + _loc20_].removeMovieClip();
                  delete _loc21_.mcObject2;
               }
            }
            else
            {
               _loc15_.Object2["cell" + _loc20_].removeMovieClip();
               delete _loc21_.mcObject2;
            }
         }
         else if(_loc4_)
         {
            var _loc32_ = _loc9_ * _loc5_ + _loc11_;
            var _loc33_ = _loc10_ * _loc7_;
            _loc21_.x = _loc32_;
            _loc21_.y = _loc33_;
            var _loc34_ = _loc15_.InteractionCell.attachMovie("i1","cell" + _loc20_,_loc20_,{_x:_loc32_,_y:_loc33_});
            _loc34_.__proto__ = ank.battlefield.mc["\x16\x17\x13"].prototype;
            _loc34_.initialize(this["\x1d\b\x12"]);
            _loc21_.mc = _loc34_;
            _loc34_.data = _loc21_;
         }
      }
      if(!_loc16_)
      {
         if(ank.battlefield.Constants["\x1b\x17\x02"] && ank.battlefield.Constants["\x1b\x0b\x0f"] == "explod")
         {
            if(this["\x1d\x12\x14"] != undefined)
            {
               return undefined;
            }
            this["\x1d\x12\x14"] = _global.setInterval(this,"adjustAndMaskMap",ank.battlefield["\x18\x18\x16"]["\x1b\x10\x07"]);
         }
         else
         {
            this.adjustAndMaskMap();
         }
      }
   }
   function §\x1b\r\x17§(§\x16\x10\f§)
   {
      var _loc3_ = this["\x1c\b\x14"] != _loc2_;
      if(!_loc3_)
      {
         return undefined;
      }
      var _loc4_ = this["\x1e\x03\b"].Map;
      var _loc5_ = _loc4_.data;
      if(_loc2_)
      {
         this["\x1d\n\x06"]["\x17\x0e\x12"]["\x16\x1c\x05"]();
         if(_loc4_.savedBackgroundNum == undefined && _loc4_.backgroundNum != 631)
         {
            _loc4_.savedBackgroundNum = _loc4_.backgroundNum;
         }
         _loc4_.backgroundNum = 631;
      }
      else if(_loc4_.savedBackgroundNum != undefined)
      {
         if(_loc4_.savedBackgroundNum == 0)
         {
            _loc4_.backgroundNum = 632;
         }
         else
         {
            _loc4_.backgroundNum = _loc4_.savedBackgroundNum;
         }
      }
      for(var §\x18\x18\x10§ in _loc5_)
      {
         this["\x1b\r\x18"](Number(eval("\x18\x18\x10")),_loc2_);
      }
      this["\x1c\b\x14"] = _loc2_;
   }
   function §\x1b\r\x18§(§\x19\x04\x12§, §\x16\x10\f§)
   {
      if(_loc2_ > this["\x17\x14\x1c"]())
      {
         ank.utils.Logger.err("[updateCell] Cellule " + _loc2_ + " inexistante");
         return undefined;
      }
      var _loc4_ = this["\x1e\x03\b"].Map;
      var _loc5_ = _loc4_.data[_loc2_];
      if(!_loc5_["\x15\x1c\x1a"])
      {
         return undefined;
      }
      if(!_loc3_)
      {
         var _loc6_ = ank.battlefield.datacenter.["\x16\x17\x13"](_loc4_["\x1a\x01\x1b"].getItemAt(String(_loc2_)));
         if(_loc6_ == undefined)
         {
            ank.utils.Logger.err("La case est déjà dans son état init");
            return undefined;
         }
         _loc5_["\x18\x13\n"] = _loc6_["\x18\x13\n"];
         _loc5_["\x18\x03\x1a"] = _loc6_["\x18\x03\x1a"];
         _loc5_["\x18\x13\x0f"] = _loc6_["\x18\x13\x0f"];
         _loc5_["\x18\x13\x0e"] = _loc6_["\x18\x13\x0e"];
         if(_loc5_["\x18\x13\x12"] != 25)
         {
            _loc5_["\x18\x13\x12"] = _loc6_["\x18\x13\x12"];
         }
      }
      else
      {
         if(_loc5_["\x19\f\x05"] == 0)
         {
            var _loc7_ = new ank.battlefield.datacenter.["\x16\x17\x13"]();
            for(var §\x16\x17\x16§ in _loc5_)
            {
               _loc7_[eval("\x16\x17\x16")] = _loc5_[eval("\x16\x17\x16")];
            }
            _loc4_["\x1a\x01\x1b"]["\x15\x1d\x13"](String(_loc2_),_loc7_);
         }
         _loc5_["\x1b\x11\x1a"](this,_loc4_);
      }
      this["\x16\x14\x01"](_loc4_,_loc2_);
   }
   function §\x1b\x14\b§(§\x19\x04\x12§, §\x19\x17\x05§, §\x1b\x03\f§, §\x19\f\x05§)
   {
      if(_loc2_ > this["\x17\x14\x1c"]())
      {
         ank.utils.Logger.err("[updateCell] Cellule " + _loc2_ + " inexistante");
         return undefined;
      }
      if(_loc5_ == undefined || _global.isNaN(_loc5_))
      {
         _loc5_ = 0;
      }
      else
      {
         _loc5_ = Number(_loc5_);
      }
      var _loc6_ = _global.parseInt(_loc4_,16);
      var _loc7_ = (_loc6_ & 65536) != 0;
      var _loc8_ = (_loc6_ & 32768) != 0;
      var _loc9_ = (_loc6_ & 16384) != 0;
      var _loc10_ = (_loc6_ & 8192) != 0;
      var _loc11_ = (_loc6_ & 4096) != 0;
      var _loc12_ = (_loc6_ & 2048) != 0;
      var _loc13_ = (_loc6_ & 1024) != 0;
      var _loc14_ = (_loc6_ & 512) != 0;
      var _loc15_ = (_loc6_ & 256) != 0;
      var _loc16_ = (_loc6_ & 128) != 0;
      var _loc17_ = (_loc6_ & 64) != 0;
      var _loc18_ = (_loc6_ & 32) != 0;
      var _loc19_ = (_loc6_ & 16) != 0;
      var _loc20_ = (_loc6_ & 8) != 0;
      var _loc21_ = (_loc6_ & 4) != 0;
      var _loc22_ = (_loc6_ & 2) != 0;
      var _loc23_ = (_loc6_ & 1) != 0;
      var _loc24_ = this["\x1e\x03\b"].Map.data[_loc2_];
      if(_loc5_ > 0)
      {
         if(_loc24_["\x19\f\x05"] == 0)
         {
            var _loc25_ = new ank.battlefield.datacenter.["\x16\x17\x13"]();
            for(var k in _loc24_)
            {
               _loc25_[k] = _loc24_[k];
            }
            this["\x1e\x03\b"].Map["\x1a\x01\x1b"]["\x15\x1d\x13"](_loc2_,_loc25_);
            _loc24_["\x19\f\x05"] = _loc5_;
         }
      }
      if(_loc10_)
      {
         _loc24_["\x15\x1c\x1a"] = _loc3_["\x15\x1c\x1a"];
      }
      if(_loc11_)
      {
         _loc24_["\x18\x15\x05"] = _loc3_["\x18\x15\x05"];
      }
      if(_loc12_)
      {
         _loc24_.movement = _loc3_.movement;
      }
      if(_loc13_)
      {
         _loc24_["\x18\x03\x18"] = _loc3_["\x18\x03\x18"];
      }
      if(_loc14_)
      {
         _loc24_["\x18\x03\x1a"] = _loc3_["\x18\x03\x1a"];
      }
      if(_loc15_)
      {
         _loc24_["\x18\x13\n"] = _loc3_["\x18\x13\n"];
      }
      if(_loc16_)
      {
         _loc24_["\x18\x13\t"] = _loc3_["\x18\x13\t"];
      }
      if(_loc17_)
      {
         _loc24_["\x18\x13\x0b"] = _loc3_["\x18\x13\x0b"];
      }
      if(_loc18_)
      {
         _loc24_["\x18\x13\x0e"] = _loc3_["\x18\x13\x0e"];
      }
      if(_loc20_)
      {
         _loc24_["\x18\x13\x0f"] = _loc3_["\x18\x13\x0f"];
      }
      if(_loc19_)
      {
         _loc24_["\x18\x13\r"] = _loc3_["\x18\x13\r"];
      }
      if(_loc22_)
      {
         _loc24_["\x18\x13\x10"] = _loc3_["\x18\x13\x10"];
      }
      if(_loc23_)
      {
         _loc24_["\x18\x13\x11"] = _loc3_["\x18\x13\x11"];
      }
      if(_loc21_)
      {
         _loc24_["\x18\x13\x12"] = _loc3_["\x18\x13\x12"];
      }
      if(_loc9_)
      {
         _loc24_.layerObjectExternal = _loc3_.layerObjectExternal;
      }
      if(_loc8_)
      {
         _loc24_.layerObjectExternalInteractive = _loc3_.layerObjectExternalInteractive;
      }
      if(_loc7_)
      {
         _loc24_.layerObjectExternalAutoSize = _loc3_.layerObjectExternalAutoSize;
      }
      _loc24_.layerObjectExternalData = _loc3_.layerObjectExternalData;
      this["\x16\x14\x01"](this["\x1e\x03\b"].Map,_loc2_);
   }
   function §\x18\n\x01§(§\x19\f\x05§)
   {
      if(_loc2_ == undefined)
      {
         _loc2_ = Number.POSITIVE_INFINITY;
      }
      else
      {
         _loc2_ = Number(_loc2_);
      }
      var _loc3_ = this["\x1e\x03\b"].Map;
      if(_loc3_.savedBackgroundNum != undefined)
      {
         if(_loc3_.savedBackgroundNum == 0)
         {
            _loc3_.backgroundNum = 632;
         }
         else
         {
            _loc3_.backgroundNum = _loc3_.savedBackgroundNum;
         }
      }
      var _loc4_ = _loc3_.data;
      var _loc5_ = _loc3_["\x1a\x01\x1b"].getItems();
      for(var k in _loc5_)
      {
         this["\x18\t\x1b"](Number(k),_loc2_);
      }
      this["\x1c\b\x14"] = false;
   }
   function §\x18\t\x1b§(§\x19\x04\x12§, §\x19\f\x05§, §\x16\x11\x1d§)
   {
      if(_loc3_ == undefined)
      {
         _loc3_ = Number.POSITIVE_INFINITY;
      }
      else
      {
         _loc3_ = Number(_loc3_);
      }
      var _loc5_ = this["\x1e\x03\b"].Map;
      var _loc6_ = _loc5_.data;
      var _loc7_ = _loc5_["\x1a\x01\x1b"].getItemAt(String(_loc2_));
      if(_loc7_ == undefined)
      {
         ank.utils.Logger.err("La case est déjà dans son état init");
         return undefined;
      }
      if(_loc6_[_loc2_]["\x19\f\x05"] <= _loc3_)
      {
         if(_loc4_ == true)
         {
            var _loc8_ = _loc6_[_loc2_]["\x18\x10\x01"](_loc5_);
            var _loc9_ = new ank.battlefield.datacenter.["\x16\x17\x13"]();
            for(var §\x16\x17\x16§ in _loc7_)
            {
               _loc9_[eval("\x16\x17\x16")] = _loc7_[eval("\x16\x17\x16")];
            }
            if(_loc8_)
            {
               _loc9_["\x1b\x11\x1a"](this,_loc5_);
            }
            _loc6_[_loc2_] = _loc9_;
            this["\x16\x14\x01"](_loc5_,_loc2_);
            if(!_loc8_)
            {
               _loc5_["\x1a\x01\x1b"]["\x1a\f\n"](String(_loc2_));
            }
         }
         else
         {
            _loc6_[_loc2_] = _loc7_;
            this["\x16\x14\x01"](_loc5_,_loc2_);
            _loc5_["\x1a\x01\x1b"]["\x1a\f\n"](String(_loc2_));
         }
      }
   }
   function §\x1a\x18\x0e§(§\x19\x04\x12§, §\x17\x12\x0f§)
   {
      if(typeof _loc3_ == "number" && _loc3_ < 1)
      {
         ank.utils.Logger.err("[setObject2Frame] frame " + _loc3_ + " incorecte");
         return undefined;
      }
      if(_loc2_ > this["\x17\x14\x1c"]())
      {
         ank.utils.Logger.err("[setObject2Frame] Cellule " + _loc2_ + " inexistante");
         return undefined;
      }
      var _loc4_ = this["\x1e\x03\b"].Map.data[_loc2_];
      var _loc5_ = _loc4_.mcObject2;
      if(ank.battlefield.Constants["\x1b\x17\x02"] && (ank.battlefield.Constants["\x1b\x0b\x0f"] == "explod" && !_loc5_.fullLoaded))
      {
         this["\x1e\x05\f"][_loc2_] = _loc3_;
      }
      else if(ank.battlefield.Constants["\x1b\x17\x02"] && ank.battlefield.Constants["\x1b\x0b\x0f"] == "explod")
      {
         for(var s in _loc5_)
         {
            if(_loc5_[s] instanceof MovieClip)
            {
               _loc5_[s].gotoAndStop(_loc3_);
            }
         }
      }
      else
      {
         _loc5_.gotoAndStop(_loc3_);
      }
   }
   function §\x1a\x18\x10§(§\x19\x04\x12§, §\x17\x12\x0f§)
   {
      if(typeof _loc3_ == "number" && _loc3_ < 1)
      {
         ank.utils.Logger.err("[setObject2Frame] frame " + _loc3_ + " incorecte");
         return undefined;
      }
      if(_loc2_ > this["\x17\x14\x1c"]())
      {
         ank.utils.Logger.err("[setObject2Frame] Cellule " + _loc2_ + " inexistante");
         return undefined;
      }
      var _loc4_ = this["\x1e\x03\b"].Map.data[_loc2_];
      var _loc5_ = _loc4_.mcObjectExternal["\x1d\x0b\b"];
      _loc5_.gotoAndStop(_loc3_);
   }
   function §\x1a\x18\x0f§(§\x19\x04\x12§, §\x16\r\r§, §\x19\f\x05§)
   {
      if(_loc2_ > this["\x17\x14\x1c"]())
      {
         ank.utils.Logger.err("[setObject2State] Cellule " + _loc2_ + " inexistante");
         return undefined;
      }
      var _loc5_ = this["\x1e\x03\b"].Map.data[_loc2_];
      if(_loc5_.mcObject2 == this.api.gfx["\x1a\x0e\x15"])
      {
         this.api.gfx["\x19\x1a\x1b"](_loc5_.mcObject2);
      }
      var _loc6_ = new ank.battlefield.datacenter.["\x16\x17\x13"]();
      _loc6_["\x18\x13\x11"] = _loc3_;
      this["\x1b\x14\b"](_loc2_,_loc6_,"1",_loc4_);
   }
   function §\x17\x14\x1c§(§\x1b\x18\n§)
   {
      return this["\x1e\x03\b"].Map.data.length;
   }
   function §\x17\x14\x1d§(§\x19\x04\x12§)
   {
      return this["\x1e\x03\b"].Map.data[_loc2_];
   }
   function §\x17\x15\x02§(§\x1b\x18\n§)
   {
      return this["\x1e\x03\b"].Map.data;
   }
   function §\x18\x02\r§(§\x1b\x18\n§)
   {
      return this["\x1e\x03\b"].Map.width;
   }
   function §\x17\x18\x0f§(§\x1b\x18\n§)
   {
      return this["\x1e\x03\b"].Map.height;
   }
   function §\x17\x14\x1b§(§\x19\x10\x1a§, §\x19\x11\x05§)
   {
      var _loc4_ = this["\x18\x02\r"]();
      return _loc2_ * _loc4_ + _loc3_ * (_loc4_ - 1);
   }
   function §\x17\x15\x01§(§\x19\x04\x12§)
   {
      var _loc3_ = this["\x17\x14\x1d"](_loc2_);
      var _loc4_ = !(_loc3_["\x18\x03\x1a"] == undefined || _loc3_["\x18\x03\x1a"] == 1) ? 0.5 : 0;
      var _loc5_ = _loc3_["\x18\x03\x18"] != undefined ? _loc3_["\x18\x03\x18"] - 7 : 0;
      return _loc5_ + _loc4_;
   }
   function §\x17\x1a\x15§(§\x19\x12\x06§)
   {
      var _loc3_ = new Array();
      for(var i in this["\x1e\x03\b"].Map.data)
      {
         _loc3_.push(this["\x1e\x03\b"].Map.data[i][_loc2_]);
      }
      return _loc3_;
   }
   function §\x1a\r\x1b§()
   {
      var _loc2_ = this["\x1d\b\x12"].spriteHandler.getSprites().getItems();
      var _loc3_ = new Array();
      for(var k in _loc2_)
      {
         var _loc4_ = _loc2_[k];
         if(!(_loc4_["\x18\x0f\x0b"] || (_loc4_["\x18\r\x04"] || _loc4_.mc.gfx._width == 0 && 1417 - _loc4_.creationInstant > 1000)))
         {
            _loc3_[_loc4_.cellNum] = true;
         }
      }
      var _loc5_ = this["\x17\x14\x1c"]();
      var _loc6_ = 0;
      var _loc7_ = 0;
      while(_loc7_ < _loc5_)
      {
         if(_loc3_[_loc7_] != true)
         {
            var _loc8_ = this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](_loc7_);
            var _loc9_ = _loc8_["\x1b\x07\f"];
            if(_loc9_ != 0)
            {
               _loc6_ += _loc9_;
               _loc8_["\x1a\x0b\x18"]();
            }
         }
         _loc7_ = _loc7_ + 1;
      }
      if(_loc6_ > 0)
      {
         new org.flashdevelop.utils.FlashConnect.trace("[resetEmptyCells] " + _loc6_ + " dead cells cleaned...","ank.battlefield.MapHandler::resetEmptyCells","C:\\Users\\ddallinge\\Git\\client\\src\\ank-common\\classes/ank/battlefield/MapHandler.as",1035);
      }
   }
   function adjustAndMaskMap()
   {
      if(this["\x1d\x12\x14"] != undefined)
      {
         _global.clearInterval(this["\x1d\x12\x14"]);
         this["\x1d\x12\x14"] = undefined;
      }
      this["\x1d\n\x06"]["\x16\x04\x0f"](true);
      this["\x1d\n\x06"]["\x16\x01\f"]();
   }
   function onLoadInit(§\x18\x1b\f§)
   {
      this["\x1d\x18\x19"]--;
      if(this["\x1e\x04\f"][_loc2_] == undefined)
      {
         return undefined;
      }
      var _loc3_ = String(_loc2_).split(".");
      var _loc4_ = _loc3_[_loc3_.length - 2];
      var _loc5_ = this["\x1e\x04\f"][_loc2_];
      switch(_loc4_)
      {
         case "Ground":
            _loc2_["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["mapHandler/Cell/Ground"];
            _loc2_._x = Number(_loc5_.x);
            _loc2_._y = Number(_loc5_.y);
            if(_loc5_["\x18\x03\x1a"] == 1 && _loc5_["\x18\x13\x0b"] != 0)
            {
               _loc2_._rotation = _loc5_["\x18\x13\x0b"] * 90;
               if(_loc2_._rotation % 180)
               {
                  _loc2_._yscale = 192.86;
                  _loc2_._xscale = 51.85;
               }
               else
               {
                  _loc2_._xscale = _loc0_ = 100;
                  _loc2_._yscale = _loc0_;
               }
            }
            else
            {
               _loc2_._rotation = 0;
               _loc2_._xscale = _loc0_ = 100;
               _loc2_._yscale = _loc0_;
            }
            if(_loc5_["\x18\x13\t"])
            {
               _loc2_._xscale *= -1;
            }
            else
            {
               _loc2_._xscale *= 1;
            }
            if(_loc5_["\x18\x03\x1a"] != 1)
            {
               _loc2_.gotoAndStop(_loc5_["\x18\x03\x1a"]);
            }
            _loc2_.lastGroundID = _loc5_["\x18\x13\n"];
            break;
         case "Object1":
            _loc2_["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["mapHandler/Cell/Object1"];
            _loc2_._x = Number(_loc5_.x);
            _loc2_._y = Number(_loc5_.y);
            if(_loc5_["\x18\x03\x1a"] == 1 && _loc5_["\x18\x13\x0f"] != 0)
            {
               _loc2_._rotation = _loc5_["\x18\x13\x0f"] * 90;
               if(_loc2_._rotation % 180)
               {
                  _loc2_._yscale = 192.86;
                  _loc2_._xscale = 51.85;
               }
               else
               {
                  _loc2_._xscale = _loc0_ = 100;
                  _loc2_._yscale = _loc0_;
               }
            }
            else
            {
               _loc2_._rotation = 0;
               _loc2_._xscale = _loc0_ = 100;
               _loc2_._yscale = _loc0_;
            }
            if(_loc5_["\x18\x13\r"])
            {
               _loc2_._xscale *= -1;
            }
            else
            {
               _loc2_._xscale *= 1;
            }
            _loc2_.lastObject1ID = _loc5_["\x18\x13\x0e"];
            break;
         case "Object2":
            _loc2_["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["mapHandler/Cell/Object2"];
            _loc2_._x = Number(_loc5_.x);
            _loc2_._y = Number(_loc5_.y);
            if(_loc5_["\x18\x13\x11"])
            {
               _loc2_.__proto__ = ank.battlefield.mc["\x18\f\x01"].prototype;
               _loc2_.initialize(this["\x1d\b\x12"],_loc5_,true);
            }
            else
            {
               _loc2_.__proto__ = MovieClip.prototype;
            }
            if(_loc5_["\x18\x13\x10"])
            {
               _loc2_._xscale = -100;
            }
            else
            {
               _loc2_._xscale = 100;
            }
            _loc2_.lastObject2ID = _loc5_["\x18\x13\x12"];
      }
      if(this["\x1e\x05\f"][_loc5_.num] != undefined)
      {
         var _loc6_ = this["\x1e\x03\b"].Map.data[_loc5_.num].mcObject2;
         for(var s in _loc6_)
         {
            if(_loc6_[s] instanceof MovieClip)
            {
               _loc6_[s].gotoAndStop(this["\x1e\x05\f"][_loc5_.num]);
            }
         }
         delete this["\x1e\x05\f"][_loc5_.num];
      }
      _loc2_.fullLoaded = true;
      delete this["\x1e\x04\f"][_loc2_];
   }
   function §\x1b\x01\x10§()
   {
      var _loc2_ = this["\x17\x15\x02"]();
      for(var i in _loc2_)
      {
         var _loc3_ = _loc2_[i];
         var _loc4_ = _loc3_["\x18\x10\x06"];
         if(_loc4_)
         {
            this["\x17\x11\x11"](_loc3_.num);
         }
      }
   }
   function §\x1a\x1d\r§(§\x1b\n\x12§, §\x1b\n\x13§)
   {
      if(_loc2_ == undefined || _loc3_ == undefined)
      {
         var _loc4_ = this.api.lang["\x17\x1b\x11"](this["\x1e\x03\b"].Map.id);
         if(_loc4_.p1 == undefined || _loc4_.p2 == undefined)
         {
            return undefined;
         }
         _loc2_ = _loc4_.p1;
         _loc3_ = _loc4_.p2;
      }
      this["\x1c\b\t"] = true;
      var _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         var _loc6_ = ank.utils.Compressor.decode64(_loc2_.charAt(_loc5_)) << 6;
         _loc6_ += ank.utils.Compressor.decode64(_loc2_.charAt(_loc5_ + 1));
         this.api.gfx.select(_loc6_,dofus.Constants["\x1b\x0f\x03"][0],"startPosition");
         _loc5_ += 2;
      }
      var _loc7_ = 0;
      while(_loc7_ < _loc3_.length)
      {
         var _loc8_ = ank.utils.Compressor.decode64(_loc3_.charAt(_loc7_)) << 6;
         _loc8_ += ank.utils.Compressor.decode64(_loc3_.charAt(_loc7_ + 1));
         this.api.gfx.select(_loc8_,dofus.Constants["\x1b\x0f\x03"][1],"startPosition");
         _loc7_ += 2;
      }
   }
   function §\x17\x11\x11§(§\x19\x04\x12§, sSprite)
   {
      if(sSprite == undefined)
      {
         sSprite = this.api.datacenter.Player.ID;
      }
      var _loc4_ = new ank.battlefield.datacenter.["\x1b\x18\x04"]();
      _loc4_.file = dofus.Constants["\x16\x1c\x19"] + "flag.swf";
      _loc4_.bInFrontOfSprite = true;
      _loc4_.bTryToBypassContainerColor = true;
      this.api.gfx["\x1b\x07\x0b"](sSprite,_loc4_,_loc2_,11,undefined,undefined,undefined,true,false);
   }
   function drawCellIds()
   {
      var _loc2_ = this["\x1d\n\x06"].createEmptyMovieClip("mcCellIds",this["\x1d\n\x06"].getNextHighestDepth());
      _loc2_["\x16\x15\x06"] = true;
      var _loc3_ = this.validCellsData;
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         var _loc5_ = _loc3_[_loc4_];
         var _loc6_ = _loc2_.createTextField("cell" + _loc5_.num,_loc2_.getNextHighestDepth(),_loc5_.x,_loc5_.y,0,0);
         _loc6_.selectable = false;
         _loc6_.mouseWheelEnabled = false;
         _loc6_.autoSize = true;
         var _loc7_ = new TextFormat();
         _loc7_.align = "center";
         _loc7_.size = 8;
         if(_loc5_["\x18\x10\x06"])
         {
            _loc7_.color = 16773939;
         }
         else
         {
            _loc7_.color = 16777215;
         }
         _loc7_.bold = true;
         _loc6_.setNewTextFormat(_loc7_);
         _loc6_._alpha = 70;
         _loc6_.text = String(_loc5_.num);
         _loc6_._x -= _loc6_._width / 2;
         _loc6_._y -= _loc6_._height / 2;
         var _loc8_ = new Array();
         _loc8_.push(new flash.filters.GlowFilter(0,40,2,2,4,1,false,false));
         _loc6_.filters = _loc8_;
         _loc4_ = _loc4_ + 1;
      }
      return _loc2_;
   }
}
