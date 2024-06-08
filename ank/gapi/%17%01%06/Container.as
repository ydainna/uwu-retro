class ank.gapi.§\x17\x01\x06§.Container extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   static var §\x16\x1b\x10§ = "Container";
   var §\x1e\x07\x16§ = "DefaultBackground";
   var §\x1e\n\x03§ = "DefaultHighlight";
   var §\x1c\x03\x13§ = true;
   var §\x1c\b\f§ = false;
   var §\x1c\x07\x1c§ = false;
   var §\x1d\x19\x06§ = 2;
   var §\x1c\x04\x1d§ = true;
   function Container()
   {
      super();
   }
   function get tempVars()
   {
      return this._oTempVars;
   }
   function set tempVars(oTempVars)
   {
      this._oTempVars = oTempVars;
   }
   function §\x11\b§(§\x1a\x11\x05§)
   {
      this._ldrContent.contentPath = _loc2_;
      return this["\x1e\x16\x16"]();
   }
   function §\x13\x15§(§\x16\x11\x06§)
   {
      this._ldrContent.forceReload = _loc2_;
      return this["\x1e\x1a\x14"]();
   }
   function §\x1e\x16\x16§()
   {
      return this._ldrContent.contentPath;
   }
   function §\x11\x06§(§\x19\x12\x0e§)
   {
      this["\x1e\x02\x18"] = _loc2_;
      if(this["\x1e\x02\x18"].forceReloadOnContainer != undefined)
      {
         this._ldrContent.forceReload = this["\x1e\x02\x18"].forceReloadOnContainer;
      }
      if(this["\x1e\x02\x18"].params != undefined)
      {
         this._ldrContent.contentParams = this["\x1e\x02\x18"].params;
      }
      if(_loc2_.iconFile != undefined)
      {
         this.contentPath = _loc2_.iconFile;
      }
      else
      {
         this.contentPath = "";
      }
      if(_loc2_.label != undefined)
      {
         if(this.label != _loc2_.label)
         {
            this.label = _loc2_.label;
         }
      }
      else
      {
         this.label = "";
      }
      return this["\x1e\x16\x13"]();
   }
   function §\x1e\x16\x13§()
   {
      return this["\x1e\x02\x18"];
   }
   function §\x1e\x16\x14§()
   {
      return this._ldrContent.loaded;
   }
   function §\x1e\x16\x12§()
   {
      return this._ldrContent.content;
   }
   function §\x1e\x1b\x16§()
   {
      return this._ldrContent["\x18\x07\x0b"];
   }
   function §\x1c\t§(bSelected)
   {
      this["\x1c\x07\x1c"] = bSelected;
      this.addToQueue({object:this,method:function()
      {
         this._mcHighlight._visible = bSelected;
      }});
      return this["\b\x13"]();
   }
   function §\b\x13§()
   {
      return this["\x1c\x07\x1c"];
   }
   function §\x0f\r§(§\x1a\x10\x02§)
   {
      if(_loc2_.length == 0 || _loc2_ == undefined)
      {
         return undefined;
      }
      this["\x1e\x07\x16"] = _loc2_;
      this["\x16\x06\x14"]();
      if(this["\x1c\x05\x07"])
      {
         this.size();
      }
      return this.backgroundRenderer;
   }
   function §\x0f\x14§(§\x1a\x10\x06§)
   {
      if(_loc2_.length == 0 || _loc2_ == undefined)
      {
         return undefined;
      }
      this["\x1e\x07\x1b"] = _loc2_;
      this["\x16\x06\x15"]();
      if(this["\x1c\x05\x07"])
      {
         this.size();
      }
      return this.borderRenderer;
   }
   function §\x14\x10§(§\x1a\x1c\x0b§)
   {
      if(_loc2_.length == 0 || _loc2_ == undefined)
      {
         return undefined;
      }
      this["\x1e\n\x03"] = _loc2_;
      this["\x16\x06\x17"]();
      if(this["\x1c\x05\x07"])
      {
         this.size();
      }
      return this.highlightRenderer;
   }
   function §\x12\x15§(§\x16\x0b\x02§)
   {
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      this["\x1c\x03\x13"] = _loc2_;
      if(this["\x1c\x05\x07"])
      {
         this["\x1a\x16\x07"]();
      }
      return this["\x1e\x19\x01"]();
   }
   function §\x1e\x19\x01§()
   {
      return this["\x1c\x03\x13"];
   }
   function §\x1c\x1a§(§\x16\x12\x13§)
   {
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      this["\x1c\b\f"] = _loc2_;
      if(_loc2_)
      {
         if(this["\x1e\n\f"] != undefined)
         {
            if(this._lblText == undefined)
            {
               this.attachMovie("Label","_lblText",30,{_width:this["\x1d"],_height:this["\x0e\x06"],styleName:this.getStyle().labelstyle});
            }
            this.addToQueue({object:this,method:this["\x1a\x17\x10"],params:[this["\x1e\n\f"]]});
         }
      }
      else
      {
         this._lblText.removeMovieClip();
         this["\x1d\f\x1b"].clear();
      }
      return this["\t\x07"]();
   }
   function §\t\x07§()
   {
      return this["\x1c\b\f"];
   }
   function §\x16\x15§(§\x1b\x02\x10§)
   {
      this["\x1e\n\f"] = _loc2_;
      if(this["\x1c\b\f"])
      {
         if(this._lblText == undefined)
         {
            this.attachMovie("Label","_lblText",30,{_width:this["\x1d"],_height:this["\x0e\x06"],styleName:this.getStyle().labelstyle});
         }
         this.addToQueue({object:this,method:this["\x1a\x17\x10"],params:[_loc2_]});
      }
      return this["\x01\x15"]();
   }
   function §\x01\x15§()
   {
      return this["\x1e\n\f"];
   }
   function §\x17\x13§(§\x19\t\x16§)
   {
      _loc2_ = Number(_loc2_);
      if(_global.isNaN(_loc2_))
      {
         return undefined;
      }
      this["\x1d\x19\x06"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this._ldrContent.move(this["\x1d\x19\x06"],this["\x1d\x19\x06"]);
      }
      return this["\x03\x01"]();
   }
   function §\x03\x01§()
   {
      return this["\x1d\x19\x06"];
   }
   function §\x14\x0f§(§\x16\f\x15§)
   {
      this["\x1c\x04\x1d"] = _loc2_;
      if(!_loc2_ && this._mcHighlight != undefined)
      {
         this._mcHighlight.swapDepths(1);
      }
      return this["\x1e\x1b\x14"]();
   }
   function §\x1e\x1b\x14§()
   {
      return this["\x1c\x04\x1d"];
   }
   function §\x14\x1a§(§\x19\b\n§)
   {
      this["\x1d\x16\x1d"] = _loc2_;
      return this["\x1e\x1c\x05"]();
   }
   function §\x1e\x1c\x05§()
   {
      return this["\x1d\x16\x1d"];
   }
   function §\x17\x12\x07§()
   {
      this._ldrContent["\x17\x12\x07"]();
   }
   function §\x17\r\x01§()
   {
      this["\x17\x07\x19"]({type:"click"});
   }
   function sizeContent()
   {
      this._ldrContent.size();
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.Container.CLASS_NAME);
   }
   function createChildren()
   {
      this.createEmptyMovieClip("\x1d\f\x0b",0);
      this["\x17\n\x0f"](this["\x1d\f\x0b"],0,0,1,1,0,0,0);
      this["\x1d\f\x0b"].trackAsMenu = true;
      this.attachMovie("GAPILoader","_ldrContent",20,{scaleContent:true});
      this._ldrContent.move(this["\x1d\x19\x06"],this["\x1d\x19\x06"]);
      this._ldrContent.addEventListener("complete",this);
      this._ldrContent.addEventListener("initialization",this);
      this.createEmptyMovieClip("\x1d\f\x1b",29);
   }
   function complete()
   {
      this["\x17\x07\x19"]({type:"onContentLoaded",content:this.content,target:this});
   }
   function initialization()
   {
      this["\x17\x07\x19"]({type:"onContentInitialized",content:this.content,target:this});
   }
   function size()
   {
      super.size();
      if(this["\x1c\x05\x07"])
      {
         this["\x16\x05\f"]();
      }
   }
   function §\x16\x05\f§()
   {
      this["\x1d\f\x0b"]._width = this["\x1d"];
      this["\x1d\f\x0b"]._height = this["\x0e\x06"];
      this._ldrContent["\x1a\x19\x18"](this["\x1d"] - this["\x1d\x19\x06"] * 2,this["\x0e\x06"] - this["\x1d\x19\x06"] * 2);
      this._mcBg["\x1a\x19\x18"](this["\x1d"],this["\x0e\x06"]);
      this._mcHighlight["\x1a\x19\x18"](this["\x1d"],this["\x0e\x06"]);
      this._lblText["\x1a\x19\x18"](this["\x1d"],this["\x0e\x06"]);
   }
   function draw()
   {
      var _loc2_ = this.getStyle();
      this._mcBg.styleName = _loc2_.backgroundstyle;
      this._lblText.styleName = _loc2_.labelstyle;
   }
   function §\x1a\x16\x07§()
   {
      if(this._bEnabled)
      {
         this["\x1d\f\x0b"].onRelease = function()
         {
            if(this._parent._sLastMouseAction == "DragOver")
            {
               this._parent["\x17\x07\x19"]({type:"drop"});
            }
            else if(5495 - this._parent._nLastClickTime < ank.gapi["\x17\x13\n"]["\x17\x05\x0f"])
            {
               ank.utils.Timer.removeTimer(this._parent,"container");
               this._parent["\x17\x07\x19"]({type:"dblClick"});
            }
            else
            {
               ank.utils.Timer.setTimer(this._parent,"container",this._parent,this._parent["\x17\x07\x19"],ank.gapi["\x17\x13\n"]["\x17\x05\x0f"],[{type:"click"}]);
            }
            this._parent._sLastMouseAction = "Release";
            this._parent._nLastClickTime = 7548;
         };
         this["\x1d\f\x0b"].onPress = function()
         {
            this._parent._sLastMouseAction = "Press";
         };
         this["\x1d\f\x0b"].onRollOver = function()
         {
            this._parent._mcHighlight._visible = true;
            this._parent._sLastMouseAction = "RollOver";
            this._parent["\x17\x07\x19"]({type:"over"});
         };
         this["\x1d\f\x0b"].onRollOut = function()
         {
            if(!this._parent["\x1c\x07\x1c"])
            {
               this._parent._mcHighlight._visible = false;
            }
            this._parent._sLastMouseAction = "RollOver";
            this._parent["\x17\x07\x19"]({type:"out"});
         };
         if(this["\x1c\x03\x13"])
         {
            this["\x1d\f\x0b"].onDragOver = function()
            {
               this._parent._mcHighlight._visible = true;
               this._parent._sLastMouseAction = "DragOver";
               this._parent["\x17\x07\x19"]({type:"over"});
            };
            this["\x1d\f\x0b"].onDragOut = function()
            {
               if(!this._parent["\x1c\x07\x1c"])
               {
                  this._parent._mcHighlight._visible = false;
               }
               if(this._parent._sLastMouseAction == "Press")
               {
                  this._parent["\x17\x07\x19"]({type:"drag"});
               }
               this._parent._sLastMouseAction = "DragOut";
               this._parent["\x17\x07\x19"]({type:"out"});
            };
         }
      }
      else
      {
         delete this["\x1d\f\x0b"].onRelease;
         delete this["\x1d\f\x0b"].onPress;
         delete this["\x1d\f\x0b"].onRollOver;
         delete this["\x1d\f\x0b"].onRollOut;
         delete this["\x1d\f\x0b"].onDragOver;
         delete this["\x1d\f\x0b"].onDragOut;
      }
   }
   function §\x16\x06\x14§()
   {
      this.attachMovie(this["\x1e\x07\x16"],"_mcBg",10);
   }
   function §\x16\x06\x15§()
   {
      this.attachMovie(this["\x1e\x07\x1b"],"_mcBorder",90);
   }
   function §\x16\x06\x17§()
   {
      this.attachMovie(this["\x1e\n\x03"],"_mcHighlight",!this["\x1c\x04\x1d"] ? 5 : 100);
      this._mcHighlight._visible = false;
   }
   function §\x1a\x17\x10§(§\x1b\x02\x10§)
   {
      if(this["\x1c\b\f"])
      {
         this._lblText.text = _loc2_;
         var _loc3_ = Math.min(this._lblText.textWidth + 2,this["\x1d"] - 4);
         var _loc4_ = this._lblText.textHeight;
         this["\x1d\f\x1b"].clear();
         if(_loc3_ > 2 && _loc4_ != 0)
         {
            this["\x17\n\x0f"](this["\x1d\f\x1b"],2,2,_loc3_,_loc4_ + 2,0,0,50);
         }
      }
      else
      {
         this._lblText.removeMovieClip();
         this["\x1d\f\x1b"].clear();
      }
   }
}
