class ank.gapi.§\x17\x01\x06§.TextArea extends ank.gapi.core.UIBasicComponent
{
   static var §\x16\x1b\x10§ = "TextArea";
   var §\x1c\x03\x15§ = true;
   var §\x1c\x07\x1b§ = true;
   var §\x1c\x02\x05§ = false;
   var §\x1c\f\t§ = true;
   var §\x1c\x07\x1a§ = true;
   var §\x1c\x05\x03§ = false;
   var §\x1d\x1c\f§ = 0;
   var §\x1d\x19\n§ = -1;
   function TextArea()
   {
      super();
   }
   function §\x0b\x19§()
   {
      return this._tText;
   }
   function §\x0f\x13§(§\x16\t\x13§)
   {
      this["\x1c\x02\x0b"] = _loc2_;
      if(this.border_mc == undefined)
      {
         this["\x17\t\x1a"]();
      }
      this.border_mc._visible = _loc2_;
      return this["\x1e\x13\x04"]();
   }
   function §\x1e\x13\x04§()
   {
      return this["\x1c\x02\x0b"];
   }
   function §\x17\x19§(§\x19\t\x1b§)
   {
      this["\x1d\x19\n"] = _loc2_ != -1 ? _loc2_ : null;
      if(this._tText != undefined)
      {
         this["\x1a\x17\x19"]();
      }
      return this["\x03\b"]();
   }
   function §\x03\b§()
   {
      return this._tText.maxChars;
   }
   function §\x1e\x1c§(§\x1b\f\x12§)
   {
      this["\x1e\r\r"] = _loc2_;
      if(this["\x1e\r\r"] != "")
      {
         this["\x18\x16\x16"]();
      }
      return this.url;
   }
   function §\x12\x17§(§\x16\x0b\x04§)
   {
      this["\x1c\x03\x15"] = _loc2_;
      if(this["\x1c\x05\x07"])
      {
         this.addToQueue({object:this,method:this["\x1a\x1a\x14"]});
      }
      return this["\x1e\x19\x07"]();
   }
   function §\x1e\x19\x07§()
   {
      return this["\x1c\x03\x15"];
   }
   function §\x0f\x06§(§\x16\t\f§)
   {
      this["\x1c\x02\x05"] = _loc2_;
      if(this["\x1c\x05\x07"])
      {
         this.addToQueue({object:this,method:this["\x1a\x1a\x14"]});
      }
      return this["\x1e\x12\x15"]();
   }
   function §\x1e\x12\x15§()
   {
      return this["\x1c\x02\x05"];
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
   function §\x14\x17§(§\x16\f\x17§)
   {
      this["\x1c\x05\x03"] = _loc2_;
      if(this["\x1c\x05\x07"])
      {
         this.addToQueue({object:this,method:this["\x1a\x1a\x14"]});
      }
      return this["\x1e\x1b\x1c"]();
   }
   function §\x1e\x1b\x1c§()
   {
      return this["\x1c\x05\x03"];
   }
   function §\x1e\x07§(sText)
   {
      this["\x1e\r\x06"] = _loc2_;
      this["\x1c\x07\x1d"] = true;
      this.addToQueue({object:this,method:this["\x1a\x1a\x14"]});
      return this["\x0b\x16"]();
   }
   function §\x0b\x16§()
   {
      return this._tText.text;
   }
   function §\x1c\x04§(§\x16\x12\x03§)
   {
      this["\x1c\x07\x1a"] = _loc2_;
      return this["\b\x0e"]();
   }
   function §\b\x0e§()
   {
      return this["\x1c\x07\x1a"];
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
   function §\x1d\x19§(§\x1a\x11\x17§)
   {
      if(_loc2_ != "")
      {
         var §\x1e\x06\n§ = this;
         this["\x1c\r\x19"] = new TextField.StyleSheet();
         this["\x1c\r\x19"].load(_loc2_);
         this["\x1c\r\x19"].onLoad = function(bSuccess)
         {
            if(eval("\x1e\x06\n")._tText != undefined)
            {
               eval("\x1e\x06\n").addToQueue({object:eval("\x1e\x06\n"),method:eval("\x1e\x06\n")["\x1a\x1a\x14"]});
            }
         };
      }
      else
      {
         this["\x1c\r\x19"] = undefined;
         this._tText.styleSheet = null;
      }
      return this.styleSheet;
   }
   function §\x1c\x06§(§\x19\x0e\x03§)
   {
      this._tText.scroll = _loc2_;
      return this["\b\x10"]();
   }
   function §\b\x10§()
   {
      return this._tText.scroll;
   }
   function §\x18\x04§(§\x19\n\x06§)
   {
      this._tText.maxscroll = _loc2_;
      return this["\x03\x10"]();
   }
   function §\x03\x10§()
   {
      return this._tText.maxscroll;
   }
   function §\x0b\x17§()
   {
      return this._tText.textHeight;
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.TextArea.CLASS_NAME);
      if(this["\x1e\r\r"] != undefined)
      {
         this["\x18\x16\x16"]();
      }
      this["\x1e\x0e\x03"] = new TextFormat();
   }
   function setFocus(bSelectAll)
   {
      if(this._tText == undefined)
      {
         this.addToQueue({object:this,method:function()
         {
            Selection.setFocus(this._tText);
         }});
      }
      else
      {
         Selection.setFocus(this._tText);
      }
      if(!bSelectAll)
      {
         Selection.setSelection(this._tText.length,this._tText.length);
      }
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
      ank.utils.["\x18\x1e\x13"].addListener(this);
      this["\x1a\x17\x19"]();
   }
   function size()
   {
      super.size();
      this["\x16\x05\f"]();
   }
   function §\x16\x05\f§()
   {
      this._sbVertical["\x1a\x19\x18"](this["\x0e\x06"]);
      this._tText._height = this["\x0e\x06"];
      this._tText._width = this["\x1d"];
   }
   function draw()
   {
      if(this["\x1c\x02\x0b"])
      {
         this["\x17\t\x1a"]();
      }
      if(!this["\x1c\x02\x0b"] != undefined)
      {
         this.border_mc._visible = this["\x1c\x02\x0b"];
      }
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
   }
   function §\x18\x16\x16§()
   {
      if(this["\x1e\r\r"] == undefined || this["\x1e\r\r"] == "")
      {
         return undefined;
      }
      this["\x1d\x07\x0e"] = new LoadVars();
      this["\x1d\x07\x0e"]["\x1a\x03\x12"] = this;
      this["\x1d\x07\x0e"].onData = function(sData)
      {
         this["\x1a\x03\x12"].text = _loc2_;
      };
      this["\x1d\x07\x0e"].load(this["\x1e\r\r"]);
   }
   function §\x1a\x1a\x14§()
   {
      if(this._tText != undefined)
      {
         if(this["\x1c\x02\x05"])
         {
            this._tText.autoSize = "left";
         }
         this._tText.wordWrap = !this["\x1c\f\t"] ? false : true;
         this._tText.multiline = true;
         this._tText.selectable = this["\x1c\x07\x1b"];
         this._tText.type = !this["\x1c\x03\x15"] ? "dynamic" : "input";
         this._tText.html = this["\x1c\x05\x03"];
         if(this["\x1c\r\x19"] != undefined)
         {
            this._tText.styleSheet = this["\x1c\r\x19"];
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
         }
         else if(this["\x1e\x0e\x03"].font != undefined)
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
         this.onChanged();
      }
   }
   function §\x15\x1e\r§()
   {
      if(this._sbVertical == undefined)
      {
         this.attachMovie("ScrollBar","_sbVertical",20,{styleName:this.getStyle().scrollbarstyle});
         this._sbVertical["\x1a\x19\x18"](this["\x0e\x06"] - 2);
         this._sbVertical._y = 1;
         this._sbVertical._x = !this["\x1c\x07\x1a"] ? 0 : this["\x1d"] - this._sbVertical._width - 3;
         this._tText._width = this["\x1d"] - this._sbVertical._width - 3 - this["\x1d\x1c\f"];
         this._tText._x = !this["\x1c\x07\x1a"] ? this._sbVertical._width + this["\x1d\x1c\f"] : 0;
         this._sbVertical.addEventListener("scroll",this);
      }
      var _loc2_ = this._tText.textHeight;
      var _loc3_ = 0.9 * this._tText._height / _loc2_ * this._tText.maxscroll;
      this._sbVertical["\x1a\x19\x11"](_loc3_,0,this._tText.maxscroll);
      this._sbVertical["\x1a\x11\x12"] = this._tText.scroll;
      if(this["\x1c\x07\x1d"])
      {
         this._sbVertical["\x1a\x11\x12"] = 0;
         this["\x1c\x07\x1d"] = false;
      }
   }
   function §\x1a\f\x16§()
   {
      if(this._sbVertical != undefined)
      {
         this._sbVertical.removeMovieClip();
         this._tText._width = this["\x1d"];
      }
   }
   function §\x1a\x17\x19§()
   {
      this._tText.maxChars = this["\x1d\x19\n"];
   }
   function onChanged()
   {
      if(this._tText.textHeight >= this._tText._height || this["\x1c\r\x19"] != undefined && this._tText.textHeight + 5 >= this._tText._height)
      {
         this["\x15\x1e\r"]();
      }
      else
      {
         this["\x1a\f\x16"]();
      }
      if(this["\x1c\x02\x05"] && this._tText.textHeight != this["\x0e\x06"])
      {
         this["\x1a\x19\x18"](this["\x1d"],this._tText.textHeight);
         this["\x17\x07\x19"]({type:"resize"});
      }
      this["\x17\x07\x19"]({type:"change",target:this});
   }
   function scroll(oEvent)
   {
      if(_loc2_.target == this._sbVertical)
      {
         this._tText.scroll = _loc2_.target["\x1a\x11\x12"];
      }
   }
   function onMouseWheel(§\x19\x05\x1b§, §\x18\x1b\f§)
   {
      if(dofus.graphics.gapi.ui.Zoom["\x18\x10\x13"]())
      {
         return undefined;
      }
      if(String(_loc3_._target).indexOf(this._target) != -1)
      {
         this._sbVertical["\x1a\x11\x12"] -= _loc2_;
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
