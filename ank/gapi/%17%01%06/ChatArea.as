class ank.gapi.§\x17\x01\x06§.ChatArea extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   static var §\x16\x1b\x10§ = "ChatArea";
   static var §\x1b\x0b\x05§ = 6;
   var §\x1c\x07\x1b§ = false;
   var §\x1c\f\t§ = true;
   var §\x1e\f\x0f§ = "right";
   var §\x1d\x1c\f§ = 0;
   var §\x1c\x04\x1c§ = false;
   var §\x1c\f\x01§ = true;
   var §\x1c\x05\x10§ = false;
   var §\x1d\x1b\b§ = 1;
   var §\x1d\x1c\r§ = 1;
   var _bAutoScrolling = true;
   function ChatArea()
   {
      super();
   }
   function get isAutoScrollingEnabled()
   {
      return this._bAutoScrolling;
   }
   function set isAutoScrollingEnabled(bAutoScrolling)
   {
      this._bAutoScrolling = bAutoScrolling;
   }
   function §\x1c\b§(§\x16\x12\x05§)
   {
      this["\x1c\x07\x1b"] = _loc2_;
      if(this["\x1c\x05\x07"])
      {
         this.addToQueue({object:this,method:this["\x1a\x1a\x14"]});
      }
      return this["\b\x12"]();
   }
   function §\b\x12§()
   {
      return this["\x1c\x07\x1b"];
   }
   function §\x0e§(§\x16\x15\x03§)
   {
      this["\x1c\f\t"] = _loc2_;
      if(this["\x1c\x05\x07"])
      {
         this.addToQueue({object:this,method:this["\x1a\x1a\x14"]});
      }
      return this["\r\x11"]();
   }
   function §\r\x11§()
   {
      return this["\x1c\f\t"];
   }
   function §\x1e\x07§(sText)
   {
      this["\x1e\r\x06"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this.addToQueue({object:this,method:this["\x1a\x1a\x14"]});
      }
      return this["\x0b\x16"]();
   }
   function §\x0b\x16§()
   {
      return this._tText.text;
   }
   function §\x1e\x1b\x1d§()
   {
      return this._tText.htmlText;
   }
   function §\x1c\x05§(§\x1b\b\x03§)
   {
      this["\x1e\f\x0f"] = _loc2_;
      return this["\b\x0f"]();
   }
   function §\b\x0f§()
   {
      return this["\x1e\f\x0f"];
   }
   function §\x1c\x03§(§\x19\x0e\x02§)
   {
      this["\x1d\x1c\f"] = _loc2_;
      return this["\b\r"]();
   }
   function §\b\r§()
   {
      return this["\x1d\x1c\f"];
   }
   function §\x14\x0e§(§\x16\f\x14§)
   {
      this["\x1c\x04\x1c"] = _loc2_;
      return this["\x1e\x1b\x13"]();
   }
   function §\x1e\x1b\x13§()
   {
      return this["\x1c\x04\x1c"];
   }
   function §\x02§(§\x16\x14\f§)
   {
      this["\x1c\f\x01"] = _loc2_;
      return this["\f\x19"]();
   }
   function §\f\x19§()
   {
      return this["\x1c\f\x01"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.ChatArea.CLASS_NAME);
      this["\x1e\x0e\x03"] = new TextFormat();
   }
   function createChildren()
   {
      this.createTextField("_tText",10,0,0,this["\x1d"] - 2,this["\x0e\x06"] - 2);
      this._tText._x = 1;
      this._tText._y = 1;
      this._tText.addListener(this);
      this._tText.onSetFocus = function()
      {
         this._parent.onSetFocus();
      };
      this._tText.onKillFocus = function()
      {
         this._parent.onKillFocus();
      };
      this._tText.mouseWheelEnabled = true;
      this.addToQueue({object:this,method:this["\x1a\x1a\x14"]});
      ank.utils.["\x18\x1e\x13"].addListener(this);
   }
   function size()
   {
      super.size();
      this["\x16\x05\f"]();
   }
   function §\x16\x05\f§()
   {
      this._tText._height = this["\x0e\x06"];
      this._tText._width = this["\x1d"];
      this["\x1c\x05\x10"] = true;
      this["\x1a\x1a\x14"]();
   }
   function draw()
   {
      var _loc2_ = this.getStyle();
      this["\x1e\x0e\x03"] = new TextFormat();
      this["\x1e\x0e\x03"].font = _loc2_.font;
      this["\x1e\x0e\x03"].align = _loc2_.align;
      this["\x1e\x0e\x03"].size = _loc2_.size;
      this["\x1e\x0e\x03"].color = _loc2_.color;
      this["\x1e\x0e\x03"].bold = _loc2_.bold;
      this["\x1e\x0e\x03"].italic = _loc2_.italic;
      this._tText.embedFonts = _loc2_.embedfonts;
      this._tText.antiAliasType = _loc2_.antialiastype;
      this._sbVertical.styleName = _loc2_.scrollbarstyle;
      if(_loc2_.filters != undefined)
      {
         this._tText.filters = _loc2_.filters;
      }
   }
   function §\x1a\x1a\x14§()
   {
      if(this._tText == undefined)
      {
         return undefined;
      }
      this._tText._visible = false;
      this._tText.selectable = this["\x1c\x07\x1b"];
      this._tText.wordWrap = !this["\x1c\f\t"] ? false : true;
      this._tText.multiline = true;
      this._tText.embedFonts = this.getStyle().embedfonts;
      this._tText.type = "dynamic";
      this._tText.html = true;
      if(this["\x1e\x0e\x03"].font != undefined)
      {
         if(this["\x1e\r\x06"] != undefined)
         {
            this["\x1d\x1b\b"] = this._tText.maxscroll;
            this["\x1a\x1a\x16"]();
         }
         this._tText.setNewTextFormat(this["\x1e\x0e\x03"]);
         this._tText.setTextFormat(this["\x1e\x0e\x03"]);
      }
      this.onChanged();
      this._tText._visible = true;
   }
   function §\x15\x1e\r§()
   {
      if(this._sbVertical == undefined)
      {
         this.attachMovie("ScrollBar","_sbVertical",20,{styleName:this.getStyle().scrollbarstyle,_visible:!this["\x1c\x04\x1c"]});
         this._sbVertical.addEventListener("scroll",this);
      }
      this._sbVertical["\x1a\x19\x18"](this["\x0e\x06"] - 2);
      this._sbVertical._y = 1;
      this._sbVertical._x = this["\x1e\f\x0f"] != "right" ? 0 : this["\x1d"] - this._sbVertical._width - 3;
      if(this["\x1c\x04\x1c"])
      {
         this._tText._width = this["\x1d"];
         this._tText._x = 0;
      }
      else
      {
         this._tText._width = this["\x1d"] - this._sbVertical._width - 3 - this["\x1d\x1c\f"];
         this._tText._x = this["\x1e\f\x0f"] != "right" ? this._sbVertical._width + this["\x1d\x1c\f"] : 0;
      }
      this["\x1a\x19\x0f"]();
      if(this._bAutoScrolling && Math.abs(this["\x1d\x1b\b"] - this._tText.scroll) < ank.gapi.controls.ChatArea["\x1b\x0b\x05"] || this["\x1c\x05\x10"])
      {
         this._tText.scroll = this._tText.maxscroll;
         this["\x1d\x1c\r"] = this._tText.maxscroll;
      }
      this["\x1c\x05\x10"] = false;
   }
   function §\x1a\x19\x0f§()
   {
      var _loc2_ = this._tText.textHeight;
      var _loc3_ = 0.9 * this._tText._height / _loc2_ * this._tText.maxscroll;
      this._sbVertical["\x1a\x19\x11"](_loc3_,0,this._tText.maxscroll);
      this._tText.scroll = this["\x1d\x1c\r"];
      this._sbVertical["\x1a\x11\x12"] = this._tText.scroll;
   }
   function §\x1a\x1a\x16§()
   {
      this._tText.text = "";
      var _loc2_ = 0;
      while(this._tText.maxscroll == 1 && _loc2_ < 50)
      {
         this._tText.text += "\n";
         _loc2_ = _loc2_ + 1;
      }
      this._tText.htmlText += this["\x1e\r\x06"];
   }
   function onMouseWheel(§\x19\x05\x1b§, §\x18\x1b\f§)
   {
      if(dofus.graphics.gapi.ui.Zoom["\x18\x10\x13"]())
      {
         return undefined;
      }
      if(!this["\x1c\f\x01"])
      {
         return undefined;
      }
      if(String(_loc3_._target).indexOf(this._target) != -1)
      {
         this._sbVertical["\x1a\x11\x12"] -= _loc2_;
      }
   }
   function onChanged()
   {
      this["\x15\x1e\r"]();
   }
   function onScroller()
   {
      this["\x1a\x19\x0f"]();
   }
   function scroll(oEvent)
   {
      if(_loc2_.target == this._sbVertical)
      {
         this._tText.scroll = _loc2_.target["\x1a\x11\x12"];
         this["\x1d\x1c\r"] = this._tText.scroll;
      }
   }
   function onHref(§\x1b\x05\x03§)
   {
      this["\x17\x07\x19"]({type:"href",params:_loc2_});
   }
   function onSetFocus()
   {
      getURL("FSCommand:" add "trapallkeys","false");
   }
   function onKillFocus()
   {
      getURL("FSCommand:" add "trapallkeys","true");
   }
}
