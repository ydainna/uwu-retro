class ank.gapi.§\x17\x01\x06§.ToolTip extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   static var §\x16\x1b\x10§ = "ToolTip";
   static var §\x18\x1b\x0b§ = 250;
   function ToolTip()
   {
      super();
   }
   function §\x1a\x03§(oParams)
   {
      this["\x1e\x04\x1c"] = _loc2_;
      return this["\x06\x02"]();
   }
   function §\x1e\x07§(sText)
   {
      this["\x1e\r\x06"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1d\b\n"].clear();
         this.draw();
      }
      return this["\x0b\x16"]();
   }
   function §\x11§(§\x19\x10\x1a§)
   {
      this["\x1e\x01\x10"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1a\x05\x07"]();
      }
      return this["\r\x14"]();
   }
   function §\x1a§(§\x19\x11\x05§)
   {
      this["\x1e\x01\x1c"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1a\x05\x07"]();
      }
      return this["\x0e\x02"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.ToolTip.CLASS_NAME);
   }
   function createChildren()
   {
      this._visible = false;
      this.createEmptyMovieClip("\x1d\b\n",10);
      this.createTextField("_tfText",20,0,0,ank.gapi.controls.ToolTip["\x18\x1b\x0b"],100);
      this._tfText.wordWrap = true;
      this._tfText.selectable = false;
      this._tfText.autoSize = "left";
      this._tfText.multiline = true;
      this._tfText.html = true;
      this.addToQueue({object:this,method:this["\x1a\x05\x07"]});
      Key.addListener(this);
   }
   function §\x1a\x05\x07§()
   {
      var _loc2_ = !(this["\x1e\x04\x1c"].bXLimit || this["\x1e\x04\x1c"].bXLimit == undefined) ? Number.MAX_VALUE : this.gapi["\x1a\x11\t"];
      var _loc3_ = !(this["\x1e\x04\x1c"].bYLimit || this["\x1e\x04\x1c"].bYLimit == undefined) ? Number.MAX_VALUE : this.gapi["\x1a\x11\x07"];
      var _loc4_ = !(!this["\x1e\x04\x1c"].bRightAlign || this["\x1e\x04\x1c"].bRightAlign == undefined) ? this["\x1e\x04\x1c"].bRightAlign : false;
      var _loc5_ = !(!this["\x1e\x04\x1c"].bTopAlign || this["\x1e\x04\x1c"].bTopAlign == undefined) ? this["\x1e\x04\x1c"].bTopAlign : false;
      var _loc6_ = !_loc4_ ? this["\x1e\x01\x10"] : this["\x1e\x01\x10"] - this["\x1d"];
      var _loc7_ = !_loc5_ ? this["\x1e\x01\x1c"] : this["\x1e\x01\x1c"] - this["\x0e\x06"];
      if(_loc6_ > _loc2_ - this["\x1d"])
      {
         this._x = _loc2_ - this["\x1d"];
      }
      else if(_loc6_ < 0)
      {
         this._x = 0;
      }
      else
      {
         this._x = _loc6_;
      }
      if(_loc7_ > _loc3_ - this["\x0e\x06"])
      {
         this._y = _loc3_ - this["\x0e\x06"];
      }
      else if(_loc7_ < 0)
      {
         this._y = 0;
      }
      else
      {
         this._y = _loc7_;
      }
      this._visible = true;
   }
   function draw()
   {
      var _loc2_ = this.getStyle();
      this["\x1e\x0e\x04"] = new TextFormat();
      this["\x1e\x0e\x04"].font = _loc2_.font;
      this["\x1e\x0e\x04"].size = _loc2_.size;
      this["\x1e\x0e\x04"].color = _loc2_.color;
      if(!this._tfText.html)
      {
         this["\x1e\x0e\x04"].bold = _loc2_.bold;
         this["\x1e\x0e\x04"].italic = _loc2_.italic;
         this._tfText.text = this["\x1e\r\x06"];
      }
      else
      {
         this._tfText.htmlText = this["\x1e\r\x06"];
      }
      this._tfText.setTextFormat(this["\x1e\x0e\x04"]);
      this._tfText.embedFonts = _loc2_.embedfonts;
      this._tfText.antiAliasType = _loc2_.antialiastype;
      this["\x1a\x19\x18"](this._tfText.textWidth + 10,this._tfText.textHeight + 10);
      this._tfText._x = 2.5;
      this._tfText._y = 2.4;
      this["\x17\n\x0f"](this["\x1d\b\n"],0,0,this["\x1d"],this["\x0e\x06"],3,_loc2_.bgcolor,_loc2_.bgalpha);
   }
   function onKeyDown()
   {
      this.removeMovieClip();
   }
   function onMouseDown()
   {
      this.removeMovieClip();
   }
}
