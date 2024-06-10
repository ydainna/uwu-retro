class ank.gapi.§\x17\x13\n§ extends ank.utils.§\x1a\t\t§
{
   static var MAX_DELAY_CURSOR_SPELLS = 250;
   static var §\x17\x04\x07§ = 40;
   static var §\x17\x04\x06§ = [-20,-20];
   static var §\x17\x05\x0f§ = 250;
   var §\x1e\x03\r§ = null;
   var §\x1e\x03\x06§ = null;
   var §\x1e\x03\x05§ = null;
   function §\x17\x13\n§()
   {
      super();
      this.initialize();
   }
   function §\x1e\x17\x15§()
   {
      return this.pmPopupMenu;
   }
   function get uiComponents()
   {
      return this["\x1c\x10\x15"];
   }
   function §\x0e\x17§(oAPI)
   {
      this["\x1e\x02\t"] = oAPI;
      return this["\x1e\x12\x05"]();
   }
   function §\x1e\x12\x05§()
   {
      return this["\x1e\x02\t"];
   }
   function §\b\x0b§()
   {
      return this["\x1d\x1c\x0b"] != undefined ? this["\x1d\x1c\x0b"] : Stage.width;
   }
   function §\b\n§()
   {
      return this["\x1d\x1c\n"] != undefined ? this["\x1d\x1c\n"] : Stage.height;
   }
   function set isComponentHiddingSprites(§\x1b\x18\n§)
   {
      this._sComponentHiddingSprites = undefined;
   }
   function get isComponentHiddingSprites()
   {
      return this._sComponentHiddingSprites != undefined;
   }
   function clear()
   {
      this.createEmptyMovieClip("\x1d\r\x01",10)["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["GAPI/UI"];
      this.createEmptyMovieClip("\x1d\r\x02",20)["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["GAPI/UITop"];
      this.createEmptyMovieClip("\x1d\r\x03",30)["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["GAPI/UIUltimate"];
      this.createEmptyMovieClip("\x1d\f\x1d",40)["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["GAPI/Popup"];
      this.createEmptyMovieClip("\x1d\f\x1c",50)["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["GAPI/Cursor"];
      this["\x1e\x06\x05"] = new Object();
      this["\x1c\x10\x15"] = new ank.utils.ExtendedArray();
   }
   function §\x1a\x19\x0e§(§\x19\x10\x18§, §\x19\b\x03§)
   {
      this["\x1d\x1c\x0b"] = _loc2_;
      this["\x1d\x1c\n"] = _loc3_;
   }
   function §\x17\x02\x19§(§\x1b\b\x17§, §\x16\b\x12§)
   {
      if(_loc3_ == undefined)
      {
         _loc3_ = false;
      }
      var _loc4_ = this.pmPopupMenu;
      if(_loc2_ == undefined)
      {
         _loc2_ = "BrownPopupMenu";
      }
      if(this["\x19\f\x0b"] == undefined)
      {
         this["\x19\f\x0b"] = 0;
      }
      var _loc5_ = this["\x19\f\x0b"]++;
      this.pmPopupMenu = ank.gapi.controls.PopupMenu(this["\x1d\f\x1d"].attachMovie("PopupMenu","_mcPopupMenu" + _loc5_,_loc5_,{styleName:_loc2_,gapi:this}));
      _loc4_.removeMovieClip();
      this.pmPopupMenu["\x16\x01\x0e"] = _loc3_;
      return this.pmPopupMenu;
   }
   function §\x1a\f\x15§()
   {
      this.pmPopupMenu.removeMovieClip();
   }
   function §\x1a\x1d\x0f§(sText, §\x1b\x1a\x05§, §\x1b\x1a\x14§, oParams, sName)
   {
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      if(typeof _loc3_ == "movieclip")
      {
         var _loc8_ = _loc3_;
         var _loc9_ = {x:_loc8_._x,y:_loc8_._y};
         _loc8_._parent.localToGlobal(_loc9_);
         var _loc7_ = _loc9_.x;
         _loc4_ += _loc9_.y;
      }
      else
      {
         _loc7_ = Number(_loc3_);
      }
      if(this["\x1d\f\x1d"]["_mcToolTip" + _loc6_] != undefined)
      {
         var _loc10_ = this["\x1d\f\x1d"]["_mcToolTip" + _loc6_];
         _loc10_.params = _loc5_;
         _loc10_.x = _loc7_;
         _loc10_.y = _loc4_;
         _loc10_.text = _loc2_;
      }
      else
      {
         this["\x1d\f\x1d"].attachMovie("ToolTip","_mcToolTip" + _loc6_,this["\x1d\f\x1d"].getNextHighestDepth(),{text:_loc2_,x:_loc7_,y:_loc4_,params:_loc5_,gapi:this});
      }
   }
   function §\x1b\x01\x0e§(sText, §\x1b\x1a\x05§, §\x1b\x1a\x14§, oParams, §\x1b\b\x17§)
   {
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      if(typeof _loc3_ == "movieclip")
      {
         var _loc8_ = _loc3_;
         var _loc9_ = {x:_loc8_._x,y:_loc8_._y};
         _loc8_._parent.localToGlobal(_loc9_);
         this.globalToLocal(_loc9_);
         var _loc7_ = _loc9_.x;
         _loc4_ += _loc9_.y;
      }
      else
      {
         _loc7_ = Number(_loc3_);
      }
      if(this["\x1d\f\x1d"]._mcToolTip != undefined)
      {
         var _loc10_ = this["\x1d\f\x1d"]._mcToolTip;
         _loc10_.params = _loc5_;
         _loc10_.x = _loc7_;
         _loc10_.y = _loc4_;
         _loc10_.text = _loc2_;
      }
      else
      {
         this["\x1d\f\x1d"].attachMovie("ToolTip","_mcToolTip",this["\x1d\f\x1d"].getNextHighestDepth(),{text:_loc2_,x:_loc7_,y:_loc4_,params:_loc5_,gapi:this,styleName:_loc6_});
      }
   }
   function §\x18\x07\x03§()
   {
      this["\x1d\f\x1d"]._mcToolTip.removeMovieClip();
   }
   function onContentLoaded(oEvent)
   {
      var _loc3_ = _loc2_.content;
      _loc3_.applyColors();
   }
   function §\x1a\x15\x19§(§\x19\x12\x10§, §\x19\x11\x0f§, §\x16\x12\x1b§)
   {
      if(_loc4_ == undefined)
      {
         _loc4_ = false;
      }
      this._nLastSetCursorTimer = 5068;
      this.removeCursor();
      if(_loc3_ == undefined)
      {
         _loc3_ = new Object();
      }
      _loc3_.width = _loc3_.width == undefined ? ank.gapi["\x17\x13\n"]["\x17\x04\x07"] : _loc3_.width;
      _loc3_.height = _loc3_.height == undefined ? ank.gapi["\x17\x13\n"]["\x17\x04\x07"] : _loc3_.height;
      _loc3_.x = _loc3_.x == undefined ? ank.gapi["\x17\x13\n"]["\x17\x04\x06"][0] : _loc3_.x;
      _loc3_.y = _loc3_.y == undefined ? ank.gapi["\x17\x13\n"]["\x17\x04\x06"][1] : _loc3_.y;
      var _loc5_ = ank.gapi.controls.Container(this["\x1d\f\x1c"].attachMovie("Container","cursor1",10));
      if(_loc4_)
      {
         _loc5_.addEventListener("onContentLoaded",this);
      }
      _loc5_["\x1a\x19\x18"](_loc3_.width,_loc3_.height);
      _loc5_.move(_loc3_.x,_loc3_.y);
      _loc5_.contentData = _loc2_;
      this["\x1e\x03\x05"] = _loc3_;
      this["\x1e\x03\x06"] = _loc2_;
      this["\x1d\f\x1c"].startDrag(true);
   }
   function §\x1a\x15\x1a§(§\x16\x0b\x19§, §\x1a\x11\x1a§)
   {
      if(this["\x18\r\f"]())
      {
         return undefined;
      }
      if(_loc2_ == undefined)
      {
         _loc2_ = false;
      }
      if(_loc2_)
      {
         if(this["\x1d\f\x1c"].mcForbidden == undefined)
         {
            var _loc4_ = this["\x1d\f\x1c"].attachMovie("GAPILoader","mcForbidden",20,{scaleContent:true});
            _loc4_["\x1a\x19\x18"](this["\x1e\x03\x05"].width,this["\x1e\x03\x05"].height);
            _loc4_.move(this["\x1e\x03\x05"].x,this["\x1e\x03\x05"].y);
            _loc4_.contentPath = _loc3_;
         }
      }
      else
      {
         this["\x1d\f\x1c"].mcForbidden.removeMovieClip();
      }
   }
   function §\x17\x16\x07§()
   {
      return this["\x1e\x03\x06"];
   }
   function §\x18\r\f§()
   {
      return this["\x1d\f\x1c"].cursor1 == undefined;
   }
   function removeCursor(§\x16\n\x0e§)
   {
      this["\x18\x06\x07"](_loc2_);
      if(this["\x1e\x03\x06"] == undefined)
      {
         return false;
      }
      delete this["\x1e\x03\x06"];
      return true;
   }
   function §\x18\x06\x07§(§\x16\n\x0e§)
   {
      this["\x1a\x15\x1a"](false);
      this["\x1d\f\x1c"].stopDrag();
      this["\x1d\f\x1c"].cursor1.removeMovieClip();
      if(_loc2_ == true)
      {
         this["\x17\x07\x19"]({type:"removeCursor"});
      }
   }
   function §\x1b\x13\x12§()
   {
      return this.unloadUIComponent(this["\x1e\n\x12"]);
   }
   function loadUIAutoHideComponent(§\x1b\x03\x03§, §\x1b\x02\x01§, §\x19\x12\x0b§, §\x1a\x02\x14§)
   {
      if(this["\x1e\n\x12"] != _loc2_)
      {
         this.unloadUIComponent(this["\x1e\n\x12"]);
      }
      this["\x1e\n\x12"] = _loc2_;
      return this.loadUIComponent(_loc2_,_loc3_,_loc4_,_loc5_);
   }
   function §\x18\x16\x1a§(§\x1b\x03\x03§, §\x1b\x02\x01§, §\x19\x12\x0b§, §\x1a\x02\x14§)
   {
      if(_loc5_.bForceLoad == undefined)
      {
         var _loc6_ = false;
      }
      else
      {
         _loc6_ = _loc5_.bForceLoad;
      }
      if(_loc5_.bStayIfPresent == undefined)
      {
         var _loc7_ = false;
      }
      else
      {
         _loc7_ = _loc5_.bStayIfPresent;
      }
      if(_loc5_.bAlwaysOnTop == undefined)
      {
         var _loc8_ = false;
      }
      else
      {
         _loc8_ = _loc5_.bAlwaysOnTop;
      }
      if(_loc5_.bUltimateOnTop == undefined)
      {
         var _loc9_ = false;
      }
      else
      {
         _loc9_ = _loc5_.bUltimateOnTop;
      }
      if(_loc5_.nHideSprites != undefined && this._sComponentHiddingSprites == undefined)
      {
         this.api.gfx.SpriteHandler.hideSprites(true,_loc5_.nHideSprites);
         this._sComponentHiddingSprites = _loc3_;
      }
      if(dofus.Constants.TRIPLEFRAMERATE)
      {
         switch(_loc2_)
         {
            case "AutomaticServer":
            case "BigStoreBuy":
            case "JoinFriend":
            case "StringCourse":
            case "Waiting":
            case "AskGameBegin":
            case "Login":
            case "Inventory":
            case "ChooseReward":
            case "CardsUpgrader":
            case "SpellUnwrap":
            case "SpellsCollection":
               _loc2_ += "_TripleFramerate";
         }
      }
      if(_loc2_.substring(0,3) == "Ask")
      {
         _loc9_ = true;
      }
      if(this["\x1e\x06\x05"][_loc3_] != undefined)
      {
         if(_loc7_)
         {
            var _loc11_ = this["\x1e\x06\x05"][_loc3_];
            for(var k in _loc4_)
            {
               _loc11_[k] = _loc4_[k];
            }
            return null;
         }
         this.unloadUIComponent(_loc3_);
         if(!_loc6_)
         {
            return null;
         }
      }
      if(_loc4_ == undefined)
      {
         _loc4_ = new Object();
      }
      _loc4_.api = this["\x1e\x02\t"];
      _loc4_.gapi = this;
      _loc4_["\x18\x0b\x02"] = _loc3_;
      if(_loc8_)
      {
         var _loc12_ = this["\x1d\r\x02"];
      }
      else if(_loc9_)
      {
         _loc12_ = this["\x1d\r\x03"];
      }
      else
      {
         _loc12_ = this["\x1d\r\x01"];
      }
      switch(_loc3_)
      {
         case "Banner":
            var _loc13_ = 9;
            break;
         case "Debug":
            _loc13_ = 10;
            break;
         default:
            _loc13_ = _loc12_.getNextHighestDepth();
      }
      var _loc14_ = _loc12_.attachMovie("UI_" + _loc2_,_loc3_,_loc13_,_loc4_);
      this["\x1e\x06\x05"][_loc3_] = _loc14_;
      this["\x1c\x10\x15"].push({name:_loc3_});
      return _loc14_;
   }
   function §\x1b\x13\x14§(§\x1b\x02\x01§)
   {
      var _loc3_ = this.getUIComponent(_loc2_);
      delete this["\x1e\x06\x05"][_loc2_];
      var _loc4_ = this["\x1c\x10\x15"].findFirstItem("name",_loc2_);
      if(_loc4_.index != -1)
      {
         this["\x1c\x10\x15"]["\x1a\f\x0b"](_loc4_.index,1);
      }
      if(_loc3_ == undefined)
      {
         return false;
      }
      _loc3_.destroy();
      if(_loc2_ == this._sComponentHiddingSprites)
      {
         this.api.gfx.SpriteHandler.hideSprites(false);
         this._sComponentHiddingSprites = undefined;
      }
      Key.removeListener(_loc3_);
      this.api.kernel.KeyManager["\x1a\f\x17"](_loc3_);
      this.api.kernel.KeyManager["\x1a\f\f"](_loc3_);
      _loc3_.removeMovieClip();
      return true;
   }
   function §\x18\x02\x05§(§\x1b\x02\x01§)
   {
      var _loc3_ = this["\x1d\r\x01"][_loc2_];
      if(_loc3_ == undefined)
      {
         _loc3_ = this["\x1d\r\x02"][_loc2_];
      }
      if(_loc3_ == undefined)
      {
         _loc3_ = this["\x1d\r\x03"][_loc2_];
      }
      if(_loc3_ == undefined)
      {
         return null;
      }
      return _loc3_;
   }
   function §\x16\x15\x0b§(§\x19\b\x14§)
   {
      if(_loc2_ == undefined)
      {
         _loc2_ = this["\x1c\x10\x15"].length - 1;
      }
      if(_loc2_ < 0)
      {
         return false;
      }
      if(_global.isNaN(_loc2_))
      {
         return false;
      }
      var _loc3_ = this.getUIComponent(this["\x1c\x10\x15"][_loc2_].name);
      if(_loc3_["\x16\x15\n"]() == true)
      {
         return true;
      }
      return this["\x16\x15\x0b"](_loc2_ - 1);
   }
   function initialize()
   {
      this.clear();
      ank.gapi.styles["\x1b\x0b\x14"]["\x18\x16\x14"](ank.gapi.styles["\x17\x06\x05"]);
      mx.["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
   }
   function §\x15\x1d\x07§()
   {
   }
   function §\x1a\x0b\x1d§()
   {
   }
   function onMouseUp()
   {
      if(this["\x1e\x03\x06"] == undefined)
      {
         return undefined;
      }
      var _loc2_ = 4714 - this._nLastSetCursorTimer;
      if(_global.isNaN(_loc2_))
      {
         return undefined;
      }
      if(this["\x1e\x03\x06"] instanceof dofus.datacenter.Spell && _loc2_ < ank.gapi["\x17\x13\n"].MAX_DELAY_CURSOR_SPELLS)
      {
         return undefined;
      }
      this["\x18\x06\x07"](true);
   }
}
