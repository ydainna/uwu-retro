class dofus.graphics.gapi.ui.MapExplorer extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "MapExplorer";
   static var §\x1a\x03\x02§ = {ra:0,rb:255,ga:0,gb:102,ba:0,bb:0};
   static var §\x1a\x02\x17§ = {ra:0,rb:184,ga:0,gb:177,ba:0,bb:143};
   static var §\x17\x07\x14§ = new Array("NW","N","NE","W","E","SW","S","SE");
   static var §\x17\x10\x17§ = 5;
   function MapExplorer()
   {
      super();
   }
   function §\x17\x12§(§\x19\t\x14§)
   {
      this._dmHighlightMap = new dofus.datacenter.["\x17\t\x0f"](_loc2_);
      return this["\x02\x1d"]();
   }
   function §\x1a\x10§(§\x1b\x06\x1d§)
   {
      this["\x1e\x0b\x18"] = _loc2_;
      return this.pointer;
   }
   function get isDungeonMapDisplayed()
   {
      return this._btnDungeon.selected;
   }
   function §\x19\x02\x0b§(§\x15\x1c\x05§)
   {
      this._mnMap.clear("highlight");
      for(var k in _loc2_)
      {
         var _loc3_ = _loc2_[k];
         if(_loc3_ != undefined)
         {
            var _loc4_ = _loc3_.type;
            var _loc5_ = _loc3_.x;
            var _loc6_ = _loc3_.y;
            var _loc7_ = _loc3_.mapID;
            var _loc8_ = _loc3_.label;
            if(this.isDungeonMapDisplayed && this._bIsInDungeon)
            {
               var _loc9_ = this["\x1c\x0e\x18"].dungeon.m;
               var _loc10_ = this["\x1c\x0e\x18"]["\x17\n\x12"];
               if(_loc10_.z != _loc9_.z)
               {
                  continue;
               }
               _loc5_ = _loc9_.x;
               _loc6_ = _loc9_.y;
            }
            switch(_loc4_)
            {
               case 1:
                  var _loc11_ = dofus.Constants["\x17\x11\x15"];
                  break;
               case 2:
                  _loc11_ = dofus.Constants["\x17\x11\x13"];
                  _loc8_ = _loc5_ + "," + _loc6_ + " (" + this.api.ui.getUIComponent("Party")["\x17\x1b\x19"](_loc2_[k].playerID).name + ")";
                  if(_loc8_ != undefined)
                  {
                     break;
                  }
                  delete _loc2_[k];
                  continue;
               case 3:
                  _loc11_ = dofus.Constants["\x17\x11\x16"];
                  _loc8_ = _loc5_ + "," + _loc6_ + " (" + _loc2_[k].playerName + ")";
                  break;
               default:
                  _loc11_ = dofus.Constants["\x17\x11\x14"];
            }
            var _loc12_ = this._mnMap["\x16\x01\t"]("UI_MapExplorerFlag","highlight","highlight" + _loc4_ + k,_loc5_,_loc6_,_loc11_,100,false,true);
            if(_loc8_ != undefined)
            {
               _loc12_.label = _loc12_.label == undefined ? _loc8_ : _loc12_.label + "\n" + _loc8_;
               _loc12_.gapi = this.gapi;
               _loc12_.onRollOver = function()
               {
                  this.gapi.showTooltip(this.label,this,10);
               };
               _loc12_.onRollOut = function()
               {
                  this.gapi.hideTooltip();
               };
            }
         }
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.MapExplorer.CLASS_NAME);
   }
   function destroy()
   {
      if(!this.isDungeonMapDisplayed)
      {
         this.api.datacenter.Basics.mapExplorer_zoom = this._mnMap.zoom;
         this.api.datacenter.Basics["\x18\x18\x11"] = {x:this._mnMap["\x17\x04\x02"],y:this._mnMap["\x17\x04\x03"]};
      }
      this.gapi.hideTooltip();
      this.gapi.removeCursor(true);
      this.api.gfx._visible = true;
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      ank.utils.["\x18\x1e\x13"].addListener(this);
      this.gapi.removeCursor(true);
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this["\x18\x13\x14"]});
      this.api.gfx._visible = false;
   }
   function initTexts()
   {
      this["\x1e\x10\t"].title = this.api.lang.getText("WORLD_MAP");
      this["\x1d\x04\x1a"].text = this.api.lang.getText("ZOOM");
      this["\x1c\x18\x17"].text = this.api.lang.getText("HINTS_FILTER");
   }
   function §\x18\x13\x14§()
   {
      if(!this.isDungeonMapDisplayed)
      {
         this["\x1c\x18\x17"]._visible = true;
         this._mnMap["\x1a\x1d\x15"] = this.api.datacenter.Basics.mapExplorer_grid;
         this._aCategories = this.api.lang["\x17\x18\x13"]();
         this._aCategories[0] = {n:this.api.lang.getText("OPTION_GRID"),c:"Yellow"};
         var _loc2_ = this.api.kernel.OptionsManager.getOption("MapFilters");
         var _loc3_ = 0;
         var _loc4_ = 0;
         while(_loc4_ < this._aCategories.length)
         {
            if(this._aCategories[_loc4_] != undefined && this["_mcFilter" + _loc4_] == undefined)
            {
               var _loc5_ = new Object();
               _loc5_._y = this["\x1d\x0b\x0e"]._y;
               _loc5_._x = this["\x1d\x0b\x0e"]._x + _loc3_;
               _loc5_.backgroundDown = "ButtonCheckDown";
               _loc5_.backgroundUp = "ButtonCheckUp";
               _loc5_.styleName = this._aCategories[_loc4_].c + "MapHintCheckButton";
               _loc5_.toggle = true;
               _loc5_.selected = false;
               _loc5_.enabled = true;
               var _loc6_ = ank.gapi.controls.Button(this.attachMovie("Button","_mcFilter" + _loc4_,this.getNextHighestDepth(),_loc5_));
               _loc6_["\x1a\x19\x18"](12,12);
               _loc6_.addEventListener("click",this);
               _loc6_.addEventListener("over",this);
               _loc6_.addEventListener("out",this);
               _loc3_ += 17;
            }
            else
            {
               this["_mcFilter" + _loc4_]._visible = true;
            }
            if(_loc4_ != 0)
            {
               var _loc7_ = _loc2_[_loc4_] == 1;
               this.setMapFilter(_loc4_,_loc7_);
               this["\x1a\x1d\x19"](_loc4_,_loc7_);
            }
            _loc4_ = _loc4_ + 1;
         }
         this._mcFilter0.selected = this.api.datacenter.Basics.mapExplorer_grid;
      }
      else
      {
         var _loc8_ = 0;
         while(_loc8_ < this._aCategories.length)
         {
            this["_mcFilter" + _loc8_]._visible = false;
            _loc8_ = _loc8_ + 1;
         }
         this["\x1c\x18\x17"]._visible = false;
         this._mnMap["\x1a\x1d\x15"] = false;
      }
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._btnZoomPlus.addEventListener("click",this);
      this._btnZoomMinous.addEventListener("click",this);
      this._btnMove.addEventListener("click",this);
      this._btnSelect.addEventListener("click",this);
      this._btnCenterOnMe.addEventListener("click",this);
      this._btnDungeon.addEventListener("click",this);
      this._btnZoomPlus.addEventListener("over",this);
      this._btnZoomMinous.addEventListener("over",this);
      this._btnMove.addEventListener("over",this);
      this._btnSelect.addEventListener("over",this);
      this._btnCenterOnMe.addEventListener("over",this);
      this._btnDungeon.addEventListener("over",this);
      this._btnZoomPlus.addEventListener("out",this);
      this._btnZoomMinous.addEventListener("out",this);
      this._btnMove.addEventListener("out",this);
      this._btnSelect.addEventListener("out",this);
      this._btnCenterOnMe.addEventListener("out",this);
      this._btnDungeon.addEventListener("out",this);
      this._mnMap.addEventListener("overMap",this);
      this._mnMap.addEventListener("outMap",this);
      this._mnMap.addEventListener("over",this);
      this._mnMap.addEventListener("out",this);
      this._mnMap.addEventListener("zoom",this);
      this._mnMap.addEventListener("select",this);
      this._mnMap.addEventListener("xtraLayerLoad",this);
      if(this.api.datacenter.Player.isAuthorized)
      {
         this._mnMap.addEventListener("doubleClick",this);
      }
      this["\x1e\x10\x07"].addEventListener("change",this);
      this.api.datacenter.Conquest.addEventListener("worldDataChanged",this);
   }
   function initData()
   {
      if(this["\x1c\x0e\x18"] == undefined)
      {
         this["\x1c\x0e\x18"] = this.api.datacenter.Map;
      }
      this._bIsInDungeon = this["\x1c\x0e\x18"].isDungeon;
      if(this._bIsInDungeon)
      {
         this._btnDungeon.enabled = true;
         if(!this.api.datacenter.Player.isAuthorized && this._dmHighlightMap == undefined)
         {
            this["\x18\t\x16"]();
            this._btnDungeon.selected = true;
         }
         else
         {
            this["\x18\n\x17"]();
         }
      }
      else
      {
         this["\x18\n\x17"]();
         this._btnDungeon.enabled = false;
      }
   }
   function §\x18\n\x17§()
   {
      this["\x1c\x12\x15"]._visible = false;
      if(this._dmHighlightMap != undefined)
      {
         var _loc2_ = {x:this._dmHighlightMap.x,y:this._dmHighlightMap.y};
      }
      this["\x1a\x1e\n"](this["\x1c\x0e\x18"].superarea);
      if(_loc2_ != undefined)
      {
         this._mnMap["\x1a\x17\x18"](_loc2_.x,_loc2_.y);
      }
      this._mnMap.zoom = this.api.datacenter.Basics.mapExplorer_zoom;
   }
   function §\x1a\x1e\n§(§\x19\x0f\x05§)
   {
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      this._mnMap.contentPath = dofus.Constants["\x18\x17\n"] + _loc2_ + ".swf";
      this._mnMap.clear();
      this._mnMap["\x1a\x17\x18"](this["\x1c\x0e\x18"].x,this["\x1c\x0e\x18"].y);
      var _loc3_ = this.api.datacenter.Map;
      this._mnMap["\x16\x01\t"]("UI_MapExplorerSelectRectangle","rectangle","currentPosition",_loc3_.x,_loc3_.y,dofus.Constants["\x18\x18\x19"],50);
      if(this._dmHighlightMap != undefined && this._dmHighlightMap != _loc3_)
      {
         this._mnMap["\x16\x01\t"]("UI_MapExplorerSelectRectangle","rectangle","waypointPosition",this._dmHighlightMap.x,this._dmHighlightMap.y,dofus.Constants["\x18\x19\x04"],50);
      }
      if(this.api.datacenter.Basics["\x16\b\x1c"] != undefined)
      {
         this._mnMap["\x16\x01\t"]("UI_MapExplorerFlag","flag","targetCoords",this.api.datacenter.Basics["\x16\b\x1c"][0],this.api.datacenter.Basics["\x16\b\x1c"][1],255,100);
      }
      if(this.api.datacenter.Basics["\x16\x02\x0f"] != undefined)
      {
         this["\x19\x02\x0b"](this.api.datacenter.Basics["\x16\x02\x0f"]);
      }
   }
   function §\x18\x06\x02§(§\x16\f\x12§)
   {
      this["\x1d\x11\b"]._visible = this["\x1d\x11\x06"]._visible = this["\x1d\x11\x07"]._visible = this["\x1d\x11\f"]._visible = this["\x1d\x11\x05"]._visible = this["\x1d\x11\x0b"]._visible = this["\x1d\x11\t"]._visible = this["\x1d\x11\n"]._visible = !_loc2_;
   }
   function setMapFilter(§\x16\x17\r§, §\x16\x0b\t§)
   {
      var _loc4_ = this.api.kernel.OptionsManager.getOption("MapFilters");
      if(_loc4_[_loc2_] != _loc3_)
      {
         _loc4_[_loc2_] = Number(_loc3_);
         this.api.kernel.OptionsManager.setOption("MapFilters",_loc4_);
      }
   }
   function §\x1a\x1d\x19§(§\x16\x17\r§, bShow)
   {
      this["_mcFilter" + _loc2_].selected = _loc3_;
      var _loc4_ = "hints" + _loc2_;
      if(_loc3_)
      {
         this._mnMap["\x18\x17\x03"](dofus.Constants["\x18\x18\x1c"],_loc4_);
      }
      else
      {
         this._mnMap.clear(_loc4_);
      }
   }
   function §\x17\n\x06§(§\x16\x17\r§)
   {
      var _loc3_ = "hints" + _loc2_;
      if(dofus.graphics.gapi.ui.MapExplorer["\x17\x10\x17"] == _loc2_)
      {
         var _loc4_ = dofus.datacenter.["\x18\x07\b"].getConquestAreaHints();
      }
      else
      {
         _loc4_ = this.api.lang["\x17\x18\x11"](_loc2_);
      }
      var _loc5_ = 0;
      while(_loc5_ < _loc4_.length)
      {
         var _loc6_ = new dofus.datacenter.["\x18\x07\b"](_loc4_[_loc5_]);
         var _loc7_ = "hint" + _loc5_;
         var _loc8_ = this._mnMap["\x18\x02\x0e"](_loc3_)[_loc7_];
         if(_loc6_.superAreaID !== this["\x1c\x0e\x18"].superarea)
         {
            _loc8_.removeMovieClip();
         }
         else if(_loc8_.oHint.gfx != _loc6_.gfx)
         {
            var _loc9_ = this._mnMap["\x16\x01\t"](_loc6_.gfx,_loc3_,_loc7_,_loc6_.x,_loc6_.y,undefined,undefined,true);
            _loc9_.oHint = _loc6_;
            _loc9_.gapi = this.gapi;
            _loc9_.onRollOver = function()
            {
               this.gapi.showTooltip(this.oHint.x + ", " + this.oHint.y + " (" + this.oHint.name + ")",this,-20);
            };
            _loc9_.onRollOut = function()
            {
               this.gapi.hideTooltip();
            };
         }
         _loc5_ = _loc5_ + 1;
      }
   }
   function §\x18\t\x16§()
   {
      this["\x1c\x12\x15"]._visible = true;
      this["\x1c\x12\x15"].text = this["\x1c\x0e\x18"].dungeonName;
      var _loc2_ = this.api.datacenter.Map;
      this._mnMap.contentPath = "";
      this._mnMap.clear();
      this._mnMap["\x17\x03\x01"]("dungeonParchment");
      this._mnMap["\x17\x03\x01"]("dungeonMap");
      this._mnMap["\x17\x03\x01"]("highlight");
      var _loc3_ = this["\x1c\x0e\x18"].dungeon.m;
      var _loc4_ = this["\x1c\x0e\x18"]["\x17\n\x12"];
      for(var a in _loc3_)
      {
         var _loc5_ = _loc3_[a];
         if(_loc4_.z == _loc5_.z)
         {
            var _loc6_ = this._mnMap["\x16\x01\t"]("UI_MapExplorerRectangle","dungeonMap","dungeonCell" + a,_loc5_.x,_loc5_.y);
            if(_loc5_.n != undefined)
            {
               _loc6_.label = _loc5_.n + " (" + _loc5_.x + ", " + _loc5_.y + ")";
               _loc6_.gapi = this.gapi;
               _loc6_.onRollOver = function()
               {
                  this.gapi.showTooltip(this.label,this,-20);
               };
               _loc6_.onRollOut = function()
               {
                  this.gapi.hideTooltip();
               };
            }
         }
      }
      this._mnMap["\x16\x01\t"]("UI_MapExplorerSelectRectangle","dungeonMap","currentPosition",_loc4_.x,_loc4_.y,dofus.Constants["\x18\x18\x19"],50);
      this._mnMap["\x18\x17\x03"](dofus.Constants["\x18\x18\x1c"],"dungeonHints");
      this._mnMap["\x18\x17\x03"](dofus.Constants["\x18\x17\n"] + "dungeon.swf","dungeonParchment");
   }
   function §\x18\t\x17§()
   {
      var _loc2_ = this._mnMap["\x18\x02\x0e"]("dungeonParchment");
      var _loc3_ = this._mnMap["\x18\x02\x0e"]("dungeonMap");
      var _loc4_ = _loc3_._width;
      var _loc5_ = _loc3_._height;
      var _loc6_ = _loc2_.view._x;
      var _loc7_ = _loc2_.view._y;
      var _loc8_ = _loc2_.view._width;
      var _loc9_ = _loc2_.view._height;
      var _loc10_ = 100;
      if(_loc4_ > _loc8_ || _loc5_ > _loc9_)
      {
         var _loc11_ = _loc8_ / _loc4_;
         var _loc12_ = _loc9_ / _loc5_;
         if(_loc12_ > _loc11_)
         {
            _loc10_ = 100 * _loc4_ / _loc8_;
         }
         else
         {
            _loc10_ = 100 * _loc5_ / _loc9_;
         }
         _loc2_._xscale = _loc2_._yscale = _loc10_;
      }
      var _loc13_ = _loc6_ * _loc10_ / 100 + (_loc8_ * _loc10_ / 100 - _loc4_) / 2;
      var _loc14_ = _loc7_ * _loc10_ / 100 + (_loc9_ * _loc10_ / 100 - _loc5_) / 2;
      _loc2_.parchment._x = (0 - _loc13_) * 100 / _loc10_;
      _loc2_.parchment._y = (0 - _loc14_) * 100 / _loc10_;
      var _loc15_ = _loc2_._parent._xscale;
      var _loc16_ = _loc2_._width * _loc10_ / 100 * _loc15_ / 100;
      var _loc17_ = _loc2_._height * _loc10_ / 100 * _loc15_ / 100;
      var _loc18_ = this._mnMap._width;
      var _loc19_ = this._mnMap._height;
      if(_loc16_ > _loc17_)
      {
         this._mnMap.zoom = this._mnMap.zoom * _loc18_ / _loc16_;
      }
      else
      {
         this._mnMap.zoom = this._mnMap.zoom * _loc19_ / _loc17_;
      }
      this._mnMap["\x1a\x17\x18"](this["\x1c\x0e\x18"]["\x17\n\x12"].x,this["\x1c\x0e\x18"]["\x17\n\x12"].y);
   }
   function §\x17\n\x05§()
   {
      var _loc2_ = this["\x1c\x0e\x18"].dungeon.m;
      for(var a in _loc2_)
      {
         var _loc3_ = _loc2_[a];
         if(_loc3_.i != undefined)
         {
            var _loc4_ = this._mnMap["\x16\x01\t"](_loc3_.i,"dungeonHints",_loc3_.i,_loc3_.x,_loc3_.y,undefined,undefined,true);
            if(_loc3_.n != undefined)
            {
               _loc4_.label = _loc3_.n + " (" + _loc3_.x + ", " + _loc3_.y + ")";
               _loc4_.gapi = this.gapi;
               _loc4_.onRollOver = function()
               {
                  this.gapi.showTooltip(this.label,this,-20);
               };
               _loc4_.onRollOut = function()
               {
                  this.gapi.hideTooltip();
               };
            }
         }
      }
   }
   function onMouseWheel(§\x19\b\x13§, §\x18\x1c\x05§)
   {
      if(dofus.graphics.gapi.ui.Zoom["\x18\x10\x13"]())
      {
         return undefined;
      }
      if(_loc3_._target.indexOf("_mnMap",0) != -1)
      {
         this._mnMap.zoom += _loc2_ >= 0 ? 5 : -5;
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnClose:
            this["\x16\x15\n"]();
            break;
         case this._btnZoomPlus:
            this.api.sounds["\x17\x0e\x06"]["\x19\x1a\x04"]();
            this._mnMap["\x18\x0b\x07"] = "zoom+";
            this._btnZoomMinous.selected = false;
            this._btnMove.selected = false;
            this._btnSelect.selected = false;
            this._btnZoomPlus.enabled = false;
            this._btnZoomMinous.enabled = true;
            this._btnMove.enabled = true;
            this._btnSelect.enabled = true;
            this["\x18\x06\x02"](true);
            break;
         case this._btnZoomMinous:
            this.api.sounds["\x17\x0e\x06"]["\x19\x1a\x04"]();
            this._mnMap["\x18\x0b\x07"] = "zoom-";
            this._btnZoomPlus.selected = false;
            this._btnMove.selected = false;
            this._btnSelect.selected = false;
            this._btnZoomPlus.enabled = true;
            this._btnZoomMinous.enabled = false;
            this._btnMove.enabled = true;
            this._btnSelect.enabled = true;
            this["\x18\x06\x02"](true);
            break;
         case this._btnMove:
            this.api.sounds["\x17\x0e\x06"]["\x19\x1a\x04"]();
            this._mnMap["\x18\x0b\x07"] = "move";
            this._btnZoomMinous.selected = false;
            this._btnZoomPlus.selected = false;
            this._btnSelect.selected = false;
            this._btnZoomPlus.enabled = true;
            this._btnZoomMinous.enabled = true;
            this._btnMove.enabled = false;
            this._btnSelect.enabled = true;
            this["\x18\x06\x02"](false);
            break;
         case this._btnSelect:
            this.api.sounds["\x17\x0e\x06"]["\x19\x1a\x04"]();
            this._mnMap["\x18\x0b\x07"] = "select";
            this._btnZoomMinous.selected = false;
            this._btnZoomPlus.selected = false;
            this._btnMove.selected = false;
            this._btnZoomPlus.enabled = true;
            this._btnZoomMinous.enabled = true;
            this._btnMove.enabled = true;
            this._btnSelect.enabled = false;
            this["\x18\x06\x02"](true);
            break;
         case this._btnCenterOnMe:
            if(this.isDungeonMapDisplayed)
            {
               var _loc3_ = this["\x1c\x0e\x18"]["\x17\n\x12"];
               this._mnMap["\x1a\x17\x18"](_loc3_.x,_loc3_.y);
            }
            else
            {
               this._mnMap["\x1a\x17\x18"](this.api.datacenter.Map.x,this.api.datacenter.Map.y);
            }
            break;
         case this._btnDungeon:
            if(this._btnDungeon.selected)
            {
               this["\x18\t\x16"]();
            }
            else
            {
               this["\x18\n\x17"]();
            }
            this["\x18\x13\x14"]();
            break;
         default:
            var _loc4_ = _loc2_.target._name;
            var _loc5_ = Number(_loc4_.substr(9,_loc4_.length));
            if(_loc5_ != 0)
            {
               var _loc6_ = !this.api.kernel.OptionsManager.getOption("MapFilters")[_loc5_];
               this.setMapFilter(_loc5_,_loc6_);
               this["\x1a\x1d\x19"](_loc5_,_loc6_);
               var _loc7_ = dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"));
               _loc7_["\x18\b\x12"]["\x1b\x15\x02"]();
               _loc7_.chat.miniMapReplacementPanel["\x1b\x15\x02"]();
               _loc7_.chat.shortcutsReplacementPanel.miniMap["\x1b\x15\x02"]();
               break;
            }
            var _loc8_ = !this.api.datacenter.Basics.mapExplorer_grid;
            this.api.datacenter.Basics.mapExplorer_grid = _loc8_;
            this._mnMap["\x1a\x1d\x15"] = _loc8_;
            break;
      }
   }
   function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._mnMap:
            var _loc3_ = _loc2_.target._name.substr(4);
            this["\x1a\x18\x04"](this["_mcTriangle" + _loc3_],dofus.graphics.gapi.ui.MapExplorer["\x1a\x03\x02"]);
            break;
         case this._btnZoomPlus:
            this.gapi.showTooltip(this.api.lang.getText("MAP_EXPLORER_ZOOM_PLUS"),_loc2_.target,-20);
            break;
         case this._btnZoomMinous:
            this.gapi.showTooltip(this.api.lang.getText("MAP_EXPLORER_ZOOM_MINOUS"),_loc2_.target,-20);
            break;
         case this._btnMove:
            this.gapi.showTooltip(this.api.lang.getText("MAP_EXPLORER_MOVE"),_loc2_.target,-20);
            break;
         case this._btnSelect:
            this.gapi.showTooltip(this.api.lang.getText("MAP_EXPLORER_SELECT"),_loc2_.target,-20);
            break;
         case this._btnCenterOnMe:
            this.gapi.showTooltip(this.api.lang.getText("MAP_EXPLORER_CENTER"),_loc2_.target,-20);
            break;
         case this._btnDungeon:
            this.gapi.showTooltip(this.api.lang.getText("MAP_EXPLORER_DUNGEON"),_loc2_.target,-20);
            break;
         default:
            var _loc4_ = _loc2_.target._name;
            this.gapi.showTooltip(this.api.lang["\x17\x18\x14"](Number(_loc4_.substr(9,_loc4_.length))).n,_loc2_.target,-20);
      }
   }
   function out(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) !== this._mnMap)
      {
         this.gapi.hideTooltip();
      }
      else
      {
         var _loc3_ = 0;
         while(_loc3_ < dofus.graphics.gapi.ui.MapExplorer["\x17\x07\x14"].length)
         {
            this["\x1a\x18\x04"](this["_mcTriangle" + dofus.graphics.gapi.ui.MapExplorer["\x17\x07\x14"][_loc3_]],dofus.graphics.gapi.ui.MapExplorer["\x1a\x02\x17"]);
            _loc3_ = _loc3_ + 1;
         }
      }
   }
   function change(oEvent)
   {
      this._mnMap.zoom = _loc2_.target.value;
   }
   function zoom(oEvent)
   {
      this["\x1e\x10\x07"].value = _loc2_.target.zoom;
   }
   function select(oEvent)
   {
      this.api.sounds["\x17\x0e\x06"]["\x19\x1a\x06"]();
      var _loc3_ = _loc2_.coordinates;
      this._mnMap.clear("flag");
      if(this.api.kernel.GameManager.updateCompass(_loc3_.x,_loc3_.y,false))
      {
         this._mnMap["\x16\x01\t"]("UI_MapExplorerFlag","flag","targetCoords",_loc3_.x,_loc3_.y,255,100,false,true);
      }
   }
   function overMap(oEvent)
   {
      if(!this.isDungeonMapDisplayed)
      {
         var _loc3_ = this.api.kernel.AreasManager["\x17\x14\f"](_loc2_.coordinates.x,_loc2_.coordinates.y,this["\x1c\x0e\x18"].superarea);
         var _loc4_ = this.api.kernel.AreasManager["\x18\x01\x12"](_loc2_.coordinates.x,_loc2_.coordinates.y,this["\x1c\x0e\x18"].superarea);
         if(_loc4_ != undefined)
         {
            var _loc5_ = this.api.lang["\x17\x1b\x0f"](_loc4_).n;
            var _loc6_ = dofus.datacenter.["\x1b\x0b\x18"](this.api.datacenter.Subareas.getItemAt(_loc4_));
            this["\x1c\x12\x15"].text = this.api.lang.getText("AREA") + " : " + this.api.lang["\x17\x1b\x06"](_loc3_).n;
            if(_loc6_ != undefined)
            {
               var _loc7_ = _loc6_.color;
               var _loc8_ = (_loc5_.substr(0,2) != "//" ? " " + _loc5_ + " - " : this.api.lang["\x17\x1b\x06"](_loc3_).n + " - ") + _loc6_.alignment.name;
            }
            else
            {
               _loc7_ = dofus.Constants["\x16\x05\x03"];
               _loc8_ = _loc5_.substr(0,2) != "//" ? " " + _loc5_ + "" : "";
            }
            if(this["\x1e\x10\x07"].value != 2)
            {
               this._mnMap["\x15\x1e\x1a"](_loc4_,_loc7_ == -1 ? dofus.Constants["\x16\x05\x03"] : _loc7_,20);
            }
            this["\x1c\x12\x17"].text = _loc8_;
            this["\x1c\x12\x15"]._visible = true;
         }
         else
         {
            this.outMap();
         }
      }
   }
   function outMap(oEvent)
   {
      if(!this.isDungeonMapDisplayed)
      {
         this._mnMap["\x1a\x0b\x1a"]();
         if(this["\x1c\x12\x17"].text != undefined)
         {
            this["\x1c\x12\x17"].text = "";
         }
         this["\x1c\x12\x15"]._visible = false;
      }
   }
   function doubleClick(oEvent)
   {
      if(!this.api.datacenter.Game.isFight && !this.isDungeonMapDisplayed)
      {
         var _loc3_ = _loc2_.coordinates.x;
         var _loc4_ = _loc2_.coordinates.y;
         if(_loc3_ != undefined && _loc4_ != undefined)
         {
            this.api.network.Basics["\x16\x07\x1c"](_loc3_,_loc4_);
         }
      }
   }
   function xtraLayerLoad(oEvent)
   {
      switch(_loc2_.mc._name)
      {
         case "dungeonHints":
            this["\x17\n\x05"]();
            break;
         case "dungeonParchment":
            this["\x18\t\x17"]();
            break;
         default:
            var _loc3_ = _loc2_.mc._name;
            this["\x17\n\x06"](Number(_loc3_.substr(5,_loc3_.length)));
      }
   }
   function worldDataChanged(oEvent)
   {
      this.addToQueue({object:this,method:this["\x17\n\x06"],params:[dofus.graphics.gapi.ui.MapExplorer["\x17\x10\x17"]]});
   }
}
