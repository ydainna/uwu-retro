class ank.gapi.§\x17\x01\x06§.Label extends ank.gapi.core.UIBasicComponent
{
   static var §\x16\x1b\x10§ = "Label";
   var §\x1e\r\x07§ = "dynamic";
   var §\x1c\x06\x19§ = false;
   var §\x1c\f\t§ = false;
   var §\x16\n\x0f§ = false;
   function Label()
   {
      super();
   }
   function §\x14\x17§(§\x16\f\x17§)
   {
      this["\x1c\x05\x03"] = _loc2_;
      this["\x1a\x1a\x14"]();
      return this["\x1e\x1b\x1c"]();
   }
   function §\x1e\x1b\x1c§()
   {
      return this["\x1c\x05\x03"];
   }
   function §\x19\x05§(§\x16\x0f\x04§)
   {
      this["\x1c\x06\x19"] = _loc2_;
      this["\x1a\x1a\x14"]();
      return this["\x04\x13"]();
   }
   function §\x04\x13§()
   {
      return this["\x1c\x06\x19"];
   }
   function §\x0e§(§\x16\x15\x03§)
   {
      this["\x1c\f\t"] = _loc2_;
      this["\x1a\x1a\x14"]();
      return this["\r\x11"]();
   }
   function §\r\x11§()
   {
      return this["\x1c\f\t"];
   }
   function §\x1e\x07§(sText)
   {
      this["\x1e\r\x06"] = _loc2_;
      this["\x1c\x07\x1d"] = true;
      this["\x1a\x1a\x14"]();
      return this["\x0b\x16"]();
   }
   function §\x0b\x16§()
   {
      return this._tText.text != undefined ? this._tText.text : this["\x1e\r\x06"];
   }
   function §\x0b\x17§()
   {
      return this._tText.textHeight;
   }
   function §\x0b\x18§()
   {
      return this._tText.textWidth;
   }
   function §\x1e\b§(§\x19\x05\x06§)
   {
      this._tText.textColor = _loc2_;
      return this.textColor;
   }
   function get textFieldObject()
   {
      return this._tText;
   }
   function set enableOverEvents(enabled)
   {
      this._bEnableOverEvents = enabled;
      this.updateOverZone();
   }
   function §\x1a\x18\x1a§(§\x1a\x0f\x16§)
   {
      this._tText.autoSize = _loc2_;
      this["\x1a\x19\x18"](this.textWidth + 5,this.textHeight);
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.Label.CLASS_NAME);
      this["\x1e\x0e\x03"] = new TextFormat();
   }
   function createChildren()
   {
      this.createTextField("_tText",10,0,1,this["\x1d"],this["\x0e\x06"] - 1);
      this._tText.addListener(this);
      this._tText.onKillFocus = function()
      {
         this._parent.onKillFocus();
      };
      this._tText.onSetFocus = function()
      {
         this._parent.onSetFocus();
      };
      this["\x1a\x1a\x14"]();
   }
   function size()
   {
      super.size();
      this._tText._height = this["\x0e\x06"] - 1;
      this._tDotText.removeTextField();
      this["\x1d\n\x1c"].removeMovieClip();
      if(this._tText.textWidth > this["\x1d"] && this["\x1e\r\x07"] == "dynamic")
      {
         this.createTextField("_tDotText",20,0,1,this["\x1d"],this["\x0e\x06"] - 1);
         this._tDotText.selectable = false;
         this._tDotText.autoSize = "right";
         this._tDotText.embedFonts = this.getStyle().labelembedfonts;
         this._tDotText.text = "...";
         this._tDotText.setNewTextFormat(this["\x1e\x0e\x03"]);
         this._tDotText.setTextFormat(this["\x1e\x0e\x03"]);
         this._tText._width = this["\x1d"] - this._tDotText.textWidth;
         this.createEmptyMovieClip("\x1d\n\x1c",30);
         this["\x17\n\x0f"](this["\x1d\n\x1c"],this["\x1d"] - this._tDotText.textWidth,0,this._tDotText.textWidth + 5,this["\x0e\x06"],0,0,0);
         this["\x1d\n\x1c"].onRollOver = function()
         {
            this._parent.gapi.showTooltip(this._parent["\x1e\r\x06"],this._parent,0);
         };
         this["\x1d\n\x1c"].onRollOut = function()
         {
            this._parent.gapi.hideTooltip();
         };
      }
      else
      {
         this._tText._width = this["\x1d"];
      }
      this.updateOverZone();
   }
   function updateOverZone()
   {
      this._mcOverEvent.removeMovieClip();
      if(this._bEnableOverEvents)
      {
         this.createEmptyMovieClip("_mcOverEvent",40);
         this["\x17\n\x0f"](this._mcOverEvent,2.5,2.5,this.textWidth,this.textHeight,0,0,0);
         this._mcOverEvent.onRollOver = function()
         {
            this._parent["\x17\x07\x19"]({type:"over"});
         };
         this._mcOverEvent.onRollOut = function()
         {
            this._parent["\x17\x07\x19"]({type:"out"});
         };
      }
   }
   function draw()
   {
      var _loc2_ = this.getStyle();
      this["\x1e\x0e\x03"] = this._tText.getTextFormat();
      this["\x1e\x0e\x03"].font = _loc2_.labelfont;
      this["\x1e\x0e\x03"].align = _loc2_.labelalign;
      this["\x1e\x0e\x03"].size = _loc2_.labelsize;
      if(!this["\x1c\x05\x03"])
      {
         this["\x1e\x0e\x03"].color = _loc2_.labelcolor;
      }
      this["\x1e\x0e\x03"].bold = _loc2_.labelbold;
      this["\x1e\x0e\x03"].italic = _loc2_.labelitalic;
      this._tText.embedFonts = _loc2_.labelembedfonts;
      this._tText.antiAliasType = _loc2_.antialiastype;
      this["\x1a\x1a\x14"]();
   }
   function §\x1a\x1a\x14§()
   {
      if(this._tText != undefined)
      {
         this._tText.wordWrap = this["\x1c\f\t"];
         this._tText.multiline = this["\x1c\x06\x19"];
         this._tText.selectable = this["\x1e\r\x07"] == "input";
         this._tText.type = this["\x1e\r\x07"];
         this._tText.html = !this["\x1c\x05\x03"] ? false : true;
         if(this["\x1e\x0e\x03"].font != undefined)
         {
            if(this["\x1e\r\x06"] != undefined)
            {
               if(this["\x1c\x05\x03"])
               {
                  this._tText.htmlText = this["\x1e\r\x06"];
               }
               else
               {
                  this._tText.text = this["\x1e\r\x06"];
               }
            }
            this._tText.setNewTextFormat(this["\x1e\x0e\x03"]);
            this._tText.setTextFormat(this["\x1e\x0e\x03"]);
         }
         if(this._tText.textWidth > this["\x1d"] && this["\x1e\r\x07"] == "dynamic")
         {
            this.size();
         }
         else
         {
            this._tDotText.removeTextField();
            this["\x1d\n\x1c"].removeMovieClip();
         }
         this.onChanged();
      }
   }
   function onChanged()
   {
      this["\x17\x07\x19"]({type:"change"});
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
