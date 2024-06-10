class ank.gapi.§\x17\x01\x06§.Button extends ank.gapi.core.UIBasicComponent
{
   static var §\x16\x1b\x10§ = "Button";
   var §\x1c\x0b\x13§ = false;
   var §\x1c\x07\x10§ = false;
   var §\x1e\n\f§ = "";
   var §\x1e\x07\x19§ = "ButtonNormalUp";
   var §\x1e\x07\x17§ = "ButtonNormalDown";
   var §\x1d\x17\x16§ = 0;
   function Button()
   {
      super();
   }
   function §\x16\x15§(§\x1b\x02\x10§)
   {
      this["\x1e\n\f"] = _loc2_;
      this["\x17\b\n"]();
      return this["\x01\x15"]();
   }
   function §\x1c\t§(§\x16\x12\x06§)
   {
      if(this["\x1c\x07\x1c"] != _loc2_)
      {
         this._lblLabel._x += !_loc2_ ? -0.5 : 0.5;
         this._lblLabel._y += !_loc2_ ? -0.5 : 0.5;
         this._mcIcon._x += !_loc2_ ? -0.5 : 0.5;
         this._mcIcon._y += !_loc2_ ? -0.5 : 0.5;
         this["\x17\x07\x19"]({type:"stateChanged",target:this,value:_loc2_});
      }
      this["\x1c\x07\x1c"] = _loc2_;
      this._mcDown._visible = this["\x1c\x07\x1c"];
      this._mcUp._visible = !this["\x1c\x07\x1c"];
      this["\x1a\x17\x12"]();
      return this["\b\x13"]();
   }
   function §\b\x13§()
   {
      return this["\x1c\x07\x1c"];
   }
   function §\x1e\x0f§(§\x16\x13\x0e§)
   {
      this["\x1c\x0b\x13"] = _loc2_;
      return this["\f\x04"]();
   }
   function §\f\x04§()
   {
      return this["\x1c\x0b\x13"];
   }
   function §\x1b\x03§(§\x16\x10\x17§)
   {
      this["\x1c\x07\x10"] = _loc2_;
      return this["\x07\x03"]();
   }
   function §\x07\x03§()
   {
      return this["\x1c\x07\x10"];
   }
   function §\x14\x18§(§\x1b\x01\x15§)
   {
      this["\x1e\n\x05"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x17\b\b"]();
      }
      return this["\x1e\x1c\x01"]();
   }
   function §\x1e\x1c\x01§()
   {
      return this["\x1e\n\x05"];
   }
   function §\x1e\x1c\x02§()
   {
      return this._mcIcon;
   }
   function §\x0f\x0e§(§\x1a\x10\x04§)
   {
      this["\x1e\x07\x19"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x17\t\x19"]();
      }
      return this["\x1e\x12\x1b"]();
   }
   function §\x1e\x12\x1b§()
   {
      return this["\x1e\x07\x19"];
   }
   function §\x0f\f§(§\x1a\x10\x03§)
   {
      this["\x1e\x07\x17"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x17\t\x19"]();
      }
      return this["\x1e\x12\x1a"]();
   }
   function §\x1e\x12\x1a§()
   {
      return this["\x1e\x07\x17"];
   }
   function §\x1a\x18\x1a§(§\x19\t\t§)
   {
      if(this["\x1e\n\f"] != "")
      {
         if(_global.isNaN(Number(_loc2_)))
         {
            this["\x1d\x17\x16"] = 0;
         }
         else
         {
            this["\x1d\x17\x16"] = Number(_loc2_);
         }
         this._lblLabel["\x1a\x18\x1a"]("left");
         this["\x1a\x19\x18"](this._lblLabel.width + this["\x1d\x17\x16"] * 2);
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.Button.CLASS_NAME);
   }
   function createChildren()
   {
      super.createChildren();
      this["\x17\t\x19"]();
      this.selected = this["\x1c\x07\x1c"] && this["\x1c\x0b\x13"];
      this.attachMovie("Label","_lblLabel",30,{styleName:this.getStyle().labelupstyle});
      this._lblLabel.addEventListener("change",this);
      if(this["\x1e\n\f"] == undefined)
      {
         this["\x1e\n\f"] = "Label";
      }
   }
   function draw()
   {
      var _loc2_ = this.getStyle();
      this["\x1a\x17\x12"]();
      this["\x17\b\n"]();
      this._mcUp["\x1a\x1a\x0f"](_loc2_,"color");
      this._mcDown["\x1a\x1a\x0f"](_loc2_,"downcolor");
   }
   function size()
   {
      super.size();
      this["\x16\x05\f"]();
   }
   function §\x16\x05\f§()
   {
      var _loc2_ = this._mcUp;
      var _loc3_ = this._mcDown;
      _loc2_["\x1a\x19\x18"](this["\x1d"],this["\x0e\x06"],true);
      _loc3_["\x1a\x19\x18"](this["\x1d"],this["\x0e\x06"],true);
      this["\x17\b\n"]();
      this["\x17\b\b"]();
   }
   function §\x1a\x16\x07§()
   {
      if(!this._bEnabled || this._bDisabledStyle)
      {
         this["\x1a\x18\x04"](this,this.getStyle().disabledtransform);
      }
      else
      {
         this["\x1a\x18\x04"](this,{ra:100,rb:0,ga:100,gb:0,ba:100,bb:0});
      }
   }
   function §\x17\t\x19§()
   {
      if(this._mcDown)
      {
         this._mcDown.removeMovieClip();
      }
      if(this._mcUp)
      {
         this._mcUp.removeMovieClip();
      }
      if(this["\x1e\x07\x17"] != "none")
      {
         this.attachMovie(this["\x1e\x07\x17"],"_mcDown",10);
      }
      if(this["\x1e\x07\x19"] != "none")
      {
         this.attachMovie(this["\x1e\x07\x19"],"_mcUp",20);
      }
      if(this._mcDown && this._mcDown._totalframes > 1)
      {
         var §\x16\x14\x0f§ = this;
         this._mcDown.onEnterFrame = function()
         {
            this["\x1a\x19\x18"](eval("\x16\x14\x0f")["\x1d"],eval("\x16\x14\x0f")["\x0e\x06"],true);
         };
      }
      if(this._mcUp && this._mcUp._totalframes > 1)
      {
         var §\x16\x14\x0f§ = this;
         this._mcUp.onEnterFrame = function()
         {
            this["\x1a\x19\x18"](eval("\x16\x14\x0f")["\x1d"],eval("\x16\x14\x0f")["\x0e\x06"],true);
         };
      }
      if(this["\x1c\x05\x07"])
      {
         this.arrangeAfterInit();
      }
   }
   function arrangeAfterInit()
   {
      this._mcDown._visible = this["\x1c\x07\x1c"];
      this._mcUp._visible = !this["\x1c\x07\x1c"];
      this._mcUp["\x1a\x19\x18"](this["\x1d"],this["\x0e\x06"],true);
      this._mcDown["\x1a\x19\x18"](this["\x1d"],this["\x0e\x06"],true);
   }
   function §\x17\b\b§()
   {
      if(this._mcIcon != undefined)
      {
         this._mcIcon.removeMovieClip();
      }
      if(this["\x1e\n\x05"].length == 0)
      {
         return undefined;
      }
      this.attachMovie(this["\x1e\n\x05"],"_mcIcon",40);
      var _loc2_ = this._mcIcon.getBounds(this);
      this._mcIcon._x = (this["\x1d"] - this._mcIcon._width) / 2 - _loc2_.xMin;
      this._mcIcon._y = (this["\x0e\x06"] - this._mcIcon._height) / 2 - _loc2_.yMin;
   }
   function §\x1a\x17\x12§(§\x16\x10\x11§)
   {
      if(this["\x1c\x07\x1c"])
      {
         this._lblLabel.styleName = this.getStyle().labeldownstyle;
      }
      else if(_loc2_ == true && this.getStyle().labeloverstyle != undefined)
      {
         this._lblLabel.styleName = this.getStyle().labeloverstyle;
      }
      else
      {
         this._lblLabel.styleName = this.getStyle().labelupstyle;
      }
   }
   function §\x17\b\n§()
   {
      this._lblLabel.text = this["\x1e\n\f"];
      if(this["\x1c\x05\x07"])
      {
         this["\x1a\x05\x04"]();
      }
   }
   function §\x1a\x05\x04§()
   {
      this._lblLabel["\x1a\x19\x18"](this["\x1d"] - 2 * this["\x1d\x17\x16"],this._lblLabel.textHeight + 4);
      if(this["\x1e\n\f"].length == 0)
      {
         this._lblLabel._visible = false;
      }
      else
      {
         this._lblLabel._visible = true;
         this._lblLabel._x = (this["\x1d"] - this._lblLabel.width) / 2;
         this._lblLabel._y = (this["\x0e\x06"] - this._lblLabel.textHeight) / 2 - 4;
      }
   }
   function change(oEvent)
   {
      this["\x1a\x05\x04"]();
   }
   function onPress()
   {
      if(this._bDisableClickEvents)
      {
         return undefined;
      }
      if(!this.selected && !this["\x1c\x0b\x13"])
      {
         this.selected = true;
      }
      else if(this["\x1c\x0b\x13"] && !this.selected)
      {
         this._mcUp._visible = false;
         this._mcDown._visible = true;
      }
   }
   function onRelease()
   {
      if(this._bDisableClickEvents)
      {
         return undefined;
      }
      if(this["\x1c\x07\x10"])
      {
         this.selected = true;
      }
      else if(this["\x1c\x0b\x13"])
      {
         this.selected = !this.selected;
      }
      else
      {
         this.selected = false;
      }
      this["\x17\x07\x19"]({type:"click"});
   }
   function onReleaseOutside()
   {
      if(!this._bDisableClickEvents)
      {
         if(this["\x1c\x0b\x13"])
         {
            if(!this.selected)
            {
               this._mcUp._visible = true;
               this._mcDown._visible = false;
            }
         }
         else
         {
            this.selected = false;
         }
      }
      this.onRollOut();
   }
   function onRollOver()
   {
      this["\x1a\x17\x12"](true);
      this["\x17\x07\x19"]({type:"over",target:this});
   }
   function onRollOut()
   {
      this["\x1a\x17\x12"](false);
      this["\x17\x07\x19"]({type:"out",target:this});
   }
}
