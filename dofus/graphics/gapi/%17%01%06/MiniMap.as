class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.MiniMap extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "MiniMap";
   static var §\x18\x19\x01§ = 15;
   static var §\x18\x18\x1d§ = 15;
   static var §\x1a\x10\f§ = 0;
   static var §\x1a\x10\x0b§ = 1;
   static var §\x1a\x10\n§ = 2;
   static var SCALE_CUSTOM = 3;
   var §\x1b\x1c\x19§ = new Array();
   var §\x1d\x19\x04§ = 40;
   var §\x1d\x1e\t§ = 40;
   var §\x1d\x1e\b§ = 23;
   var §\x1d\x17\x1b§ = 0;
   var _nShowHintsMaxDistance = 6;
   function MiniMap()
   {
      super();
   }
   function §\x17\x1b\x17§()
   {
      switch(this["\x1d\x1c\t"])
      {
         case dofus.graphics.gapi.controls.MiniMap["\x1a\x10\n"]:
            return this["\x1d\b\x14"];
         case dofus.graphics.gapi.controls.MiniMap["\x1a\x10\x0b"]:
            return this._mcBg;
         case dofus.graphics.gapi.controls.MiniMap["\x1a\x10\f"]:
            return this["\x1d\b\x1c"];
         case dofus.graphics.gapi.controls.MiniMap.SCALE_CUSTOM:
            return this._mcBgCustom;
         default:
            return undefined;
      }
   }
   function §\x18\x0e\x05§()
   {
      return this["\x17\x1b\x17"]().hitTest(_root._xmouse,_root._ymouse,true);
   }
   function get showHintsMaxDistance()
   {
      return this._nShowHintsMaxDistance;
   }
   function set showHintsMaxDistance(nShowHintsMaxDistance)
   {
      this._nShowHintsMaxDistance = nShowHintsMaxDistance;
   }
   function get customBgScaleX()
   {
      return this._nCustomBgScaleX;
   }
   function set customBgScaleX(nCustomBgScaleX)
   {
      this._nCustomBgScaleX = nCustomBgScaleX;
   }
   function get customBgScaleY()
   {
      return this._nCustomBgScaleY;
   }
   function set customBgScaleY(nCustomBgScaleY)
   {
      this._nCustomBgScaleY = nCustomBgScaleY;
   }
   function get customBgScaleWidth()
   {
      return this._nCustomBgScaleWidth;
   }
   function set customBgScaleWidth(nCustomBgScaleWidth)
   {
      this._nCustomBgScaleWidth = nCustomBgScaleWidth;
   }
   function get customBgScaleHeight()
   {
      return this._nCustomBgScaleHeight;
   }
   function set customBgScaleHeight(nCustomBgScaleHeight)
   {
      this._nCustomBgScaleHeight = nCustomBgScaleHeight;
   }
   function get customBgColor()
   {
      return this._nCustomBgColor;
   }
   function set customBgColor(§\x19\x05\x15§)
   {
      this._nCustomBgColor = _loc2_;
   }
   function §\x1b\x14\x1a§()
   {
      this["\x1b\x14\x16"]();
      if(this["\x1c\x0e\x18"].x == undefined || this["\x1c\x0e\x18"].y == undefined)
      {
         this.addToQueue({object:this,method:this["\x1b\x14\x1a"]});
         return undefined;
      }
      this["\x16\x1c\x03"]();
      if(this.api.datacenter.Basics["\x16\b\x1c"])
      {
         this["\x15\x1d\x0f"](this.api.datacenter.Basics["\x16\b\x1c"][0],this.api.datacenter.Basics["\x16\b\x1c"][1],255);
      }
      if(this.api.datacenter.Basics["\x16\x02\x0f"].length <= 0)
      {
         return undefined;
      }
      var _loc2_ = this.api.datacenter.Basics["\x16\x02\x0f"];
      for(var i in _loc2_)
      {
         if(_loc2_[i])
         {
            if(_loc2_[i].miniMapTagId == undefined)
            {
               _loc2_[i].miniMapTagId = this["\x1d\x1b\x14"];
            }
            if(_loc2_[i].miniMapTagId != this["\x1d\x1b\x14"])
            {
               delete _loc2_[i];
            }
            else
            {
               switch(_loc2_[i].type)
               {
                  case 1:
                     if(!_loc3_)
                     {
                        var _loc3_ = _loc2_[i];
                     }
                     else
                     {
                        var _loc4_ = Math.sqrt(Math.pow(_loc3_.x - this["\x1c\x0e\x18"].x,2) + Math.pow(_loc3_.y - this["\x1c\x0e\x18"].y,2));
                        var _loc5_ = Math.sqrt(Math.pow(_loc2_[i].x - this["\x1c\x0e\x18"].x,2) + Math.pow(_loc2_[i].y - this["\x1c\x0e\x18"].y,2));
                        if(_loc5_ < _loc4_)
                        {
                           _loc3_ = _loc2_[i];
                           continue;
                        }
                     }
                     break;
                  case 2:
                     var _loc6_ = _global.api.ui.getUIComponent("Party")["\x17\x1b\x19"](_loc2_[i].playerID).name;
                     if(_loc6_ != undefined)
                     {
                        this["\x15\x1d\x0f"](_loc2_[i].x,_loc2_[i].y,dofus.Constants["\x17\x11\x13"],_loc6_);
                        break;
                     }
                     delete _loc2_[i];
                     continue;
                  case 3:
                     this["\x15\x1d\x0f"](_loc2_[i].x,_loc2_[i].y,dofus.Constants["\x17\x11\x16"],_loc2_[i].playerName);
               }
            }
         }
      }
      if(_loc3_)
      {
         this["\x15\x1d\x0f"](_loc3_.x,_loc3_.y,dofus.Constants["\x17\x11\x15"],this.api.lang.getText("BANNER_MAP_PHOENIX"));
      }
   }
   function §\x1a\x19\r§(§\x19\r\x1a§, §\x16\x14\x06§)
   {
      if(_loc2_ == dofus.graphics.gapi.controls.MiniMap.SCALE_CUSTOM && (this._nCustomBgScaleWidth == undefined || (this._nCustomBgScaleHeight == undefined || (this._nCustomBgScaleX == undefined || this._nCustomBgScaleY == undefined))))
      {
         _loc2_ = dofus.graphics.gapi.controls.MiniMap["\x1a\x10\x0b"];
      }
      this._mcBgCustom._visible = _loc2_ == dofus.graphics.gapi.controls.MiniMap.SCALE_CUSTOM;
      if(_loc2_ == dofus.graphics.gapi.controls.MiniMap.SCALE_CUSTOM)
      {
         this._mcBgCustom._width = this._nCustomBgScaleWidth;
         this._mcBgCustom._height = this._nCustomBgScaleHeight;
         this._mcBgCustom._x = this._nCustomBgScaleX;
         this._mcBgCustom._y = this._nCustomBgScaleY;
         if(this._nCustomBgColor != undefined)
         {
            var _loc4_ = new Color(this._mcBgCustom);
            _loc4_.setRGB(this._nCustomBgColor);
            this._nCustomBgColor = undefined;
         }
      }
      if(this["\x1d\x1c\t"] == _loc2_)
      {
         return undefined;
      }
      this["\x1d\x1c\t"] = _loc2_;
      this["\x1a\x1e\x18"]();
      this._nScaledHeight = this["\x1d\x19\x04"] / 100 * this["\x1d\x1e\b"];
      this._nScaledWidth = this["\x1d\x19\x04"] / 100 * this["\x1d\x1e\t"];
      switch(_loc2_)
      {
         case dofus.graphics.gapi.controls.MiniMap["\x1a\x10\f"]:
            dofus.graphics.gapi.controls.MiniMap.HIDE_FLAG_ZONE = [[1,1,1,1,1,1,1],[1,1,1,1,1,1,1],[1,1,1,1,1,1,1],[1,1,1,1,1,1,1],[1,1,0,0,0,1,1],[1,1,0,0,0,1,1],[1,1,0,0,0,1,1],[1,1,0,0,0,1,1],[1,1,0,0,0,1,1],[1,1,0,0,0,1,1],[1,1,0,0,0,1,1],[1,1,1,1,1,1,1],[1,1,1,1,1,1,1]];
            break;
         case dofus.graphics.gapi.controls.MiniMap["\x1a\x10\x0b"]:
            dofus.graphics.gapi.controls.MiniMap.HIDE_FLAG_ZONE = [[1,1,1,1,1,1,1],[1,1,1,1,1,1,1],[1,1,1,1,1,1,1],[1,0,1,1,0,0,1],[1,0,0,0,0,0,1],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,1],[1,0,0,0,0,0,1],[1,1,0,0,0,1,1]];
            break;
         case dofus.graphics.gapi.controls.MiniMap["\x1a\x10\n"]:
         case dofus.graphics.gapi.controls.MiniMap.SCALE_CUSTOM:
            dofus.graphics.gapi.controls.MiniMap.HIDE_FLAG_ZONE = [[1,1,1,1,1,1,1],[1,1,1,1,1,1,1],[1,0,0,0,0,0,1],[1,0,0,0,0,0,1],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[1,0,0,0,0,0,1],[1,0,0,0,0,0,1],[1,1,0,0,0,1,1]];
      }
      if(_loc3_)
      {
         this["\x1b\x14\x1b"]();
      }
   }
   function §\x16\x1c\x03§()
   {
      for(var i in this["\x1d\x0b\x11"])
      {
         this["\x1d\x0b\x11"][i].removeMovieClip();
      }
      for(var i in this["\x1d\x0b\x10"])
      {
         this["\x1d\x0b\x10"][i].removeMovieClip();
      }
      this["\x1b\x1c\x19"] = new Array();
   }
   function §\x15\x1d\x0f§(§\x19\x10\x1a§, §\x19\x11\x05§, §\x19\x05\x06§, §\x1b\x02\x10§)
   {
      if(_global.isNaN(_loc2_) || _global.isNaN(_loc3_))
      {
         return undefined;
      }
      var _loc6_ = (_loc4_ & 16711680) >> 16;
      var _loc7_ = (_loc4_ & 65280) >> 8;
      var _loc8_ = _loc4_ & 255;
      var _loc9_ = _loc2_ + ", " + _loc3_ + (!_loc5_.length ? "" : " (" + _loc5_ + ")");
      var _loc10_ = new Array();
      var §\x1b\x0f\x1d§ = this;
      var _loc11_ = function()
      {
         eval("\x1b\x0f\x1d")["\x17\x07\x19"]({type:"over"});
         this.gapi.showTooltip(this.tooltipText,this,-20,{bXLimit:false,bYLimit:false});
      };
      var _loc12_ = function()
      {
         this.gapi.hideTooltip();
      };
      var _loc13_ = 0;
      while(_loc13_ <= 2)
      {
         var _loc14_ = this["\x1d\x0b\x11"].getNextHighestDepth();
         var _loc15_ = this["\x1d\x0b\x11"].attachMovie(this["\x17\x16\x17"](_loc13_),"dir" + _loc14_,_loc14_);
         _loc15_.stop();
         var _loc16_ = new Color(_loc15_["\x1d\n\x11"]._mc["\x1d\n\x01"]);
         var _loc17_ = new Object();
         _loc17_ = {ra:0,ga:0,ba:0,rb:_loc6_,gb:_loc7_,bb:_loc8_};
         _loc16_.setTransform(_loc17_);
         _loc15_.tooltipText = _loc9_;
         _loc15_.gapi = this.gapi;
         _loc15_.mcTarget = _loc15_["\x1d\n\x11"];
         _loc15_.onRollOver = _loc11_;
         _loc15_.onRollOut = _loc12_;
         _loc15_._visible = false;
         this.addClickEvent(_loc15_);
         _loc10_.push(_loc15_);
         _loc13_ = _loc13_ + 1;
      }
      if(!this["\x1d\x0b\x10"])
      {
         this["\x1d\x0b\x10"] = this["\x1d\x0b\x0f"].createEmptyMovieClip("\x1d\x0b\x10",1);
      }
      var _loc18_ = this["\x1d\x0b\x10"].getNextHighestDepth();
      var _loc19_ = this["\x1d\x0b\x10"].attachMovie("UI_MapExplorerFlag","flag" + _loc18_,_loc18_);
      _loc19_._x = this._nScaledWidth * _loc2_ + this._nScaledWidth / 2;
      _loc19_._y = this._nScaledHeight * _loc3_ + this._nScaledHeight / 2;
      _loc19_._xscale = this["\x1d\x19\x04"];
      _loc19_._yscale = this["\x1d\x19\x04"];
      var _loc20_ = new Color(_loc19_["\x1d\n\x01"]);
      var _loc21_ = new Object();
      _loc21_ = {ra:0,ga:0,ba:0,rb:_loc6_,gb:_loc7_,bb:_loc8_};
      _loc20_.setTransform(_loc21_);
      this["\x1b\x1c\x19"].push({x:_loc2_,y:_loc3_,color:_loc4_,aDirections:_loc10_});
      _loc19_.tooltipText = _loc9_;
      _loc19_.gapi = this.gapi;
      _loc19_.mcTarget = _loc19_;
      _loc19_.onRollOver = _loc11_;
      _loc19_.onRollOut = _loc12_;
      this.addClickEvent(_loc19_);
      this["\x1b\x15\x11"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.MiniMap.CLASS_NAME);
   }
   function createChildren()
   {
      this["\x1a\x19\r"](dofus.graphics.gapi.controls.MiniMap.SCALE_CUSTOM,false);
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\x16\f"]});
      this.addToQueue({object:this,method:this["\x1b\x14\x1a"]});
      this["\x1d\x1b\x14"] = Math.random();
   }
   function addListeners()
   {
      this.api.gfx.addEventListener("mapLoaded",this);
      this["\x1d\x05\x04"].addEventListener("initialization",this);
      this.api.datacenter.Conquest.addEventListener("worldDataChanged",this);
   }
   function addClickEvent(§\x18\x1b\f§)
   {
      if(this.api.datacenter.Player.isAuthorized)
      {
         var miniMap = this;
         var _loc3_ = function()
         {
            miniMap.onAdminClick();
         };
         _loc2_.onPress = _loc3_;
         delete _loc2_.onRelease;
      }
      else
      {
         var miniMap = this;
         var _loc4_ = function()
         {
            miniMap.click();
         };
         _loc2_.onRelease = _loc4_;
         delete _loc2_.onPress;
      }
   }
   function §\x18\x16\f§(§\x16\f\x06§)
   {
      if(this["\x1c\x0e\x18"].superarea == undefined)
      {
         this.addToQueue({object:this,method:this["\x18\x16\f"],params:[_loc2_]});
         return false;
      }
      if(!this._bIsInDungeon)
      {
         if(this["\x1c\x0e\x18"].superarea !== this["\x1d\x14\r"] || _loc2_)
         {
            this["\x1d\x14\r"] = this["\x1c\x0e\x18"].superarea;
            this["\x1d\x05\x04"].contentPath = dofus.Constants["\x18\x17\n"] + this["\x1d\x14\r"] + ".swf";
            return true;
         }
         return false;
      }
      if(this["\x1c\x0e\x18"].id !== this["\x1d\x14\r"] || _loc2_)
      {
         this["\x1d\x14\r"] = this["\x1c\x0e\x18"]["\x17\n\x13"];
         this["\x1d\x05\x04"].contentPath = dofus.Constants["\x18\x18\x1a"];
      }
      return false;
   }
   function §\x18\n\x0b§()
   {
      this["\x1d\t\x03"].removeMovieClip();
      this["\x1d\t\x03"] = this["\x1d\x05\x04"].content.createEmptyMovieClip("\x1d\t\x03",1);
      this["\x1d\t\x03"]._visible = false;
      this["\x1d\f\x03"]._visible = false;
      this.addClickEvent(this["\x1d\t\x03"]);
      this.addClickEvent(this["\x1d\n\x11"]);
      var §\x1b\x0f\x1d§ = this;
      this["\x1d\t\x03"].onRollOut = function()
      {
         this.gapi.hideTooltip();
      };
      this["\x1d\t\x03"].onRollOver = function()
      {
         eval("\x1b\x0f\x1d")["\x17\x07\x19"]({type:"over"});
      };
      this["\x1d\n\x11"]._xscale = this["\x1d\x19\x04"];
      this["\x1d\n\x11"]._yscale = this["\x1d\x19\x04"];
      this["\x1d\n\x11"].oMap = this["\x1c\x0e\x18"];
      this["\x1d\n\x11"].gapi = this.gapi;
      var sLabel;
      this["\x1d\n\x11"].onRollOver = function()
      {
         if(this.oMap.dungeonFloorName != undefined)
         {
            sLabel = this.oMap.dungeonFloorName + " (" + this.oMap["\x17\n\x12"].x + ", " + this.oMap["\x17\n\x12"].y + ")";
         }
         else
         {
            sLabel = this.oMap.x + ", " + this.oMap.y;
         }
         eval("\x1b\x0f\x1d")["\x17\x07\x19"]({type:"over"});
         this.gapi.showTooltip(sLabel,this,-20,{bXLimit:false,bYLimit:false});
      };
      this["\x1d\n\x11"].onRollOut = function()
      {
         this.gapi.hideTooltip();
      };
   }
   function §\x17\n\n§()
   {
      var _loc2_ = -10;
      while(_loc2_ < 10)
      {
         var _loc3_ = -10;
         while(_loc3_ < 10)
         {
            var _loc4_ = Math.floor(this["\x1c\x0e\x18"].x / dofus.graphics.gapi.controls.MiniMap["\x18\x19\x01"]);
            var _loc5_ = Math.floor(this["\x1c\x0e\x18"].y / dofus.graphics.gapi.controls.MiniMap["\x18\x18\x1d"]);
            if(_loc4_ < _loc2_ - 2 || (_loc4_ > _loc2_ + 2 || (_loc5_ < _loc3_ - 2 || _loc5_ > _loc3_ + 2)))
            {
               if(this["\x1d\t\x03"][_loc2_ + "_" + _loc3_] != undefined)
               {
                  this["\x1d\t\x03"][_loc2_ + "_" + _loc3_].removeMovieClip();
               }
            }
            else if(this["\x1d\t\x03"][_loc2_ + "_" + _loc3_] == undefined)
            {
               var _loc6_ = this["\x1d\t\x03"].attachMovie(_loc2_ + "_" + _loc3_,_loc2_ + "_" + _loc3_,this["\x1d\t\x03"].getNextHighestDepth());
               _loc6_._xscale = this["\x1d\x19\x04"];
               _loc6_._yscale = this["\x1d\x19\x04"];
               _loc6_._x = _loc6_._width * _loc2_;
               _loc6_._y = _loc6_._height * _loc3_;
            }
            _loc3_ = _loc3_ + 1;
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   function §\x1a\x1d\x19§(§\x16\x17\r§, bShow)
   {
      var _loc4_ = "hints" + _loc2_;
      if(!this["\x1d\f\x03"][_loc4_])
      {
         this["\x1d\f\x03"].createEmptyMovieClip(_loc4_,_loc2_);
      }
      if(!_loc3_)
      {
         this["\x1d\x05\x0e"].content[_loc4_].removeMovieClip();
         return undefined;
      }
      if(dofus.graphics.gapi.ui.MapExplorer["\x17\x10\x17"] == _loc2_)
      {
         var _loc5_ = dofus.datacenter.["\x18\x07\b"].getConquestAreaHints();
      }
      else
      {
         _loc5_ = this.api.lang["\x17\x18\x11"](_loc2_);
      }
      var _loc6_ = 0;
      while(_loc6_ < _loc5_.length)
      {
         var _loc7_ = new dofus.datacenter.["\x18\x07\b"](_loc5_[_loc6_]);
         var _loc8_ = this["\x1d\f\x03"][_loc4_]["hint" + _loc6_];
         if(_loc7_.superAreaID !== this["\x1c\x0e\x18"].superarea)
         {
            _loc8_.removeMovieClip();
         }
         else if(_loc8_.oHint.gfx != _loc7_.gfx)
         {
            var _loc9_ = Math.sqrt(Math.pow(_loc7_.x - this["\x1c\x0e\x18"].x,2) + Math.pow(_loc7_.y - this["\x1c\x0e\x18"].y,2));
            if(_loc9_ > this._nShowHintsMaxDistance)
            {
               _loc8_.removeMovieClip();
            }
            else
            {
               var §\x1b\x0f\x1d§ = this;
               var _loc10_ = this["\x1d\f\x03"][_loc4_].attachMovie(_loc7_.gfx,"hint" + _loc6_,_loc6_,{_xscale:this["\x1d\x19\x04"],_yscale:this["\x1d\x19\x04"]});
               _loc10_._x = this._nScaledWidth * _loc7_.x + this._nScaledWidth / 2;
               _loc10_._y = this._nScaledHeight * _loc7_.y + this._nScaledHeight / 2;
               _loc10_.oHint = _loc7_;
               _loc10_.gapi = this.gapi;
               _loc10_.onRollOver = function()
               {
                  eval("\x1b\x0f\x1d")["\x17\x07\x19"]({type:"over"});
                  this.gapi.showTooltip(this.oHint.x + ", " + this.oHint.y + " (" + this.oHint.name + ")",this,-20,{bXLimit:false,bYLimit:false});
               };
               _loc10_.onRollOut = function()
               {
                  this.gapi.hideTooltip();
               };
               this.addClickEvent(_loc10_);
            }
         }
         _loc6_ = _loc6_ + 1;
      }
   }
   function drawDungeonMap()
   {
      var _loc2_ = "dungeonCell" + this["\x1c\x0e\x18"].area;
      if(!this["\x1d\t\x03"][_loc2_])
      {
         this["\x1d\t\x03"].createEmptyMovieClip(_loc2_,1);
      }
      this.addIconsOnDungeonMap(this["\x1d\t\x03"],_loc2_,"UI_MapExplorerRectangle");
      var _loc3_ = this["\x1d\x05\x04"].content.parchment;
      _loc3_._width = this.customBgScaleWidth + this.customBgScaleWidth * 0.5;
      _loc3_._height = this._nCustomBgScaleHeight;
      _loc3_._x = (0 - _loc3_._width) / 2 - _loc3_._width * 0.15;
      _loc3_._y = (0 - _loc3_._height) / 2;
   }
   function showDungeonHints(bShow)
   {
      var _loc3_ = "dungeonHint" + this["\x1c\x0e\x18"].area;
      if(!this["\x1d\f\x03"][_loc3_])
      {
         this["\x1d\f\x03"].createEmptyMovieClip(_loc3_,100);
      }
      if(!_loc2_)
      {
         this["\x1d\x05\x0e"].content[_loc3_].removeMovieClip();
         return undefined;
      }
      this.addIconsOnDungeonMap(this["\x1d\f\x03"],_loc3_,undefined);
   }
   function addIconsOnDungeonMap(§\x18\x1b\f§, §\x1b\x02\x17§, §\x1a\x1b\x1a§)
   {
      var _loc5_ = _loc4_;
      var _loc6_ = 0;
      var _loc7_ = this["\x1c\x0e\x18"].dungeon.m;
      var _loc8_ = this["\x1c\x0e\x18"]["\x17\n\x12"];
      for(var mapID in _loc7_)
      {
         var _loc9_ = _loc7_[mapID];
         var _loc10_ = _loc3_ + mapID;
         var _loc11_ = _loc2_[_loc3_];
         if(_loc11_[_loc10_] == undefined)
         {
            if(_loc8_.z == _loc9_.z)
            {
               if(_loc4_ == undefined)
               {
                  if(_loc9_.i == undefined)
                  {
                     continue;
                  }
                  _loc4_ = _loc9_.i;
               }
               var _loc12_ = _loc11_.attachMovie(_loc4_,_loc10_,_loc6_);
               _loc12_._xscale = this["\x1d\x19\x04"];
               _loc12_._yscale = this["\x1d\x19\x04"];
               _loc12_._x = this._nScaledWidth * _loc9_.x + this._nScaledWidth / 2;
               _loc12_._y = this._nScaledHeight * _loc9_.y + this._nScaledHeight / 2;
               if(_loc9_.n != undefined)
               {
                  _loc12_.label = _loc9_.n + " (" + _loc9_.x + ", " + _loc9_.y + ")";
                  _loc12_.gapi = this.gapi;
                  _loc12_.onRollOver = function()
                  {
                     this.gapi.showTooltip(this.label,this,-20,{bXLimit:false,bYLimit:false});
                  };
                  _loc12_.onRollOut = function()
                  {
                     this.gapi.hideTooltip();
                  };
                  _loc6_ = _loc6_ + 1;
                  _loc4_ = _loc5_;
               }
            }
         }
      }
   }
   function §\x1b\x15\x11§()
   {
      this["\x1b\x14\x16"]();
      this["\x1b\x15\x02"]();
      if(this._bIsInDungeon)
      {
         var _loc2_ = this["\x1c\x0e\x18"]["\x17\n\x12"].x;
         var _loc3_ = this["\x1c\x0e\x18"]["\x17\n\x12"].y;
      }
      else
      {
         _loc2_ = this["\x1c\x0e\x18"].x;
         _loc3_ = this["\x1c\x0e\x18"].y;
      }
      this["\x1d\t\x03"]._x = (0 - this._nScaledWidth) * _loc2_ - this._nScaledWidth / 2;
      this["\x1d\t\x03"]._y = (0 - this._nScaledHeight) * _loc3_ - this._nScaledHeight / 2;
      this["\x1d\f\x03"]._x = this["\x1d\t\x03"]._x;
      this["\x1d\f\x03"]._y = this["\x1d\t\x03"]._y;
      this["\x1d\x0b\x10"]._x = this["\x1d\t\x03"]._x;
      this["\x1d\x0b\x10"]._y = this["\x1d\t\x03"]._y;
      if(this._bIsInDungeon)
      {
         this.drawDungeonMap();
      }
      else
      {
         this["\x17\n\n"]();
      }
      this["\x1b\x14\x1b"]();
      this["\x1d\t\x03"]._visible = true;
      this["\x1d\f\x03"]._visible = true;
   }
   function §\x1b\x14\x16§()
   {
      this["\x1c\x0e\x18"] = this.api.datacenter.["\x18\x18\x0e"];
      this._bIsInDungeon = this["\x1c\x0e\x18"].isDungeon && !this.api.datacenter.Player.isAuthorized;
      this["\x1d\x0b\x10"]._visible = !this._bIsInDungeon;
      this["\x1d\n\x11"].oMap = this["\x1c\x0e\x18"];
   }
   function §\x1b\x15\x02§()
   {
      var _loc2_ = this.api.lang["\x17\x18\x13"]();
      _loc2_[-1] = {n:this.api.lang.getText("OPTION_GRID"),c:"Yellow"};
      var _loc3_ = this.api.kernel.OptionsManager.getOption("MapFilters");
      this["\x1d\f\x03"] = this["\x1d\x05\x0e"].content;
      var _loc4_ = -1;
      while(_loc4_ < _loc2_.length)
      {
         if(_loc4_ != -1)
         {
            this["\x1a\x1d\x19"](_loc4_,!this._bIsInDungeon && _loc3_[_loc4_] == 1);
         }
         _loc4_ = _loc4_ + 1;
      }
      this.showDungeonHints(this._bIsInDungeon);
   }
   function §\x1b\x14\x1b§()
   {
      for(var i in this["\x1b\x1c\x19"])
      {
         var _loc2_ = this["\x1b\x1c\x19"][i].x - this["\x1c\x0e\x18"].x;
         var _loc3_ = this["\x1b\x1c\x19"][i].y - this["\x1c\x0e\x18"].y;
         if(!(_global.isNaN(_loc3_) || _global.isNaN(_loc2_)))
         {
            var _loc4_ = this["\x1b\x1c\x19"][i].aDirections;
            if(dofus.graphics.gapi.controls.MiniMap.HIDE_FLAG_ZONE[_loc3_ + 6][_loc2_ + 3] == undefined || dofus.graphics.gapi.controls.MiniMap.HIDE_FLAG_ZONE[_loc3_ + 6][_loc2_ + 3] == 1)
            {
               var _loc5_ = 0;
               while(_loc5_ < _loc4_.length)
               {
                  var _loc6_ = _loc4_[_loc5_];
                  if(_loc5_ != this["\x1d\x1c\t"])
                  {
                     _loc6_._visible = false;
                  }
                  else
                  {
                     _loc6_._visible = true;
                     var _loc7_ = Math.floor(Math.atan2(_loc3_,_loc2_) / Math.PI * 180);
                     if(_loc7_ < 0)
                     {
                        _loc7_ += 360;
                     }
                     if(_loc7_ > 360)
                     {
                        _loc7_ -= 360;
                     }
                     _loc6_.gotoAndStop(_loc7_ + 1);
                     _loc6_["\x1d\n\x11"].gotoAndStop(_loc7_ + 1);
                  }
                  _loc5_ = _loc5_ + 1;
               }
            }
            else
            {
               var _loc8_ = 0;
               while(_loc8_ < _loc4_.length)
               {
                  var _loc9_ = _loc4_[_loc8_];
                  _loc9_._visible = false;
                  _loc8_ = _loc8_ + 1;
               }
            }
         }
      }
   }
   function §\x17\x16\x17§(§\x19\r\x1a§)
   {
      switch(_loc2_)
      {
         case dofus.graphics.gapi.controls.MiniMap["\x1a\x10\f"]:
            return "FlagDirectionSmall";
         case dofus.graphics.gapi.controls.MiniMap["\x1a\x10\x0b"]:
            return "FlagDirection";
         case dofus.graphics.gapi.controls.MiniMap["\x1a\x10\n"]:
            return "FlagDirectionBig";
         default:
            return undefined;
      }
   }
   function §\x19\x15\x15§(§\x16\r\x12§)
   {
      ank.utils.Timer.removeTimer(this,"minimap");
      this["\x1c\b\x16"] = false;
      if(_loc2_)
      {
         this.click();
      }
   }
   function §\x17\x15\x15§(§\x19\r\b§, §\x19\r\t§)
   {
      var _loc4_ = Math.floor(_loc2_ / this._nScaledWidth);
      var _loc5_ = Math.floor(_loc3_ / this._nScaledHeight);
      return {x:_loc4_,y:_loc5_};
   }
   function mapLoaded(oEvent)
   {
      this["\x1b\x14\x16"]();
      if(!this["\x18\x16\f"]())
      {
         this["\x1b\x15\x11"]();
      }
   }
   function initialization(oEvent)
   {
      this["\x18\n\x0b"]();
      this["\x1b\x15\x11"]();
   }
   function §\x1a\x1e\x18§()
   {
      var _loc2_ = [this["\x1d\b\x1c"],this._mcBg,this["\x1d\b\x14"]];
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         var _loc4_ = _loc2_[_loc3_];
         if(this["\x1d\x1c\t"] == _loc3_)
         {
            _loc4_._visible = true;
         }
         else
         {
            _loc4_._visible = false;
         }
         _loc3_ = _loc3_ + 1;
      }
   }
   function click()
   {
      if(3942 - this["\x1d\x17\x1b"] < 750)
      {
         return undefined;
      }
      this["\x17\x07\x19"]({type:"click"});
   }
   function doubleClick(oEvent)
   {
      this["\x1d\x17\x1b"] = 8525;
      if(!this.api.datacenter.Game.isFight && !this._bIsInDungeon)
      {
         var _loc3_ = _loc2_.coordinates.x;
         var _loc4_ = _loc2_.coordinates.y;
         if(_loc3_ != undefined && _loc4_ != undefined)
         {
            this.api.network.Basics["\x16\x07\x1c"](_loc3_,_loc4_);
         }
      }
   }
   function onAdminClick()
   {
      if(this["\x1c\b\x16"] != true)
      {
         this["\x1c\b\x16"] = true;
         ank.utils.Timer.setTimer(this,"minimap",this,this["\x19\x15\x15"],ank.gapi["\x17\x13\n"]["\x17\x05\x0f"],[true]);
      }
      else
      {
         this["\x19\x15\x15"](false);
         var _loc2_ = this["\x1d\t\x03"]._xmouse;
         var _loc3_ = this["\x1d\t\x03"]._ymouse;
         var _loc4_ = this["\x17\x15\x15"](_loc2_,_loc3_);
         this.doubleClick({coordinates:_loc4_});
      }
   }
   function worldDataChanged(oEvent)
   {
      this.addToQueue({object:this,method:this["\x1a\x1d\x19"],params:[dofus.graphics.gapi.ui.MapExplorer["\x17\x10\x17"],this.api.kernel.OptionsManager.isMapConquestFilterEnabled]});
   }
}
