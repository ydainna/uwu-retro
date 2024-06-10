class ank.gapi.§\x17\x01\x06§.ConsoleLogger extends ank.gapi.core.UIBasicComponent
{
   static var §\x16\x1b\x10§ = "ConsoleLogger";
   function ConsoleLogger()
   {
      super();
   }
   function §\t\x01§()
   {
      return this["\x1c\b\x02"];
   }
   function §\x1c\x13§(§\x16\b\b§)
   {
      this["\x1c\b\x02"] = _loc2_;
      return this["\t\x01"]();
   }
   function log(sText, §\x1a\x1c\n§, §\x1b\x02\x19§)
   {
      var _loc5_ = new Object();
      _loc5_.text = _loc2_;
      _loc5_.hColor = _loc3_ != undefined ? _loc3_ : "#FFFFFF";
      _loc5_.lColor = _loc4_ != undefined ? _loc4_ : "#999999";
      this["\x1b\x1d\x18"].push(_loc5_);
      this["\x1a\x0b\x05"]();
   }
   function clear()
   {
      this["\x1b\x1d\x18"] = new Array();
      this["\x1a\x0b\x05"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.ConsoleLogger.CLASS_NAME);
   }
   function createChildren()
   {
      this.createTextField("_tText",10,0,0,this["\x1d"],this["\x0e\x06"]);
      this._tText.html = true;
      this._tText.text = "";
      this._tText.selectable = false;
      this._tText.multiline = true;
      this._tText.onSetFocus = function()
      {
         this._parent.onSetFocus();
      };
      this._tText.onKillFocus = function()
      {
         this._parent.onKillFocus();
      };
      if(this["\x1c\b\x02"])
      {
         var _loc2_ = new Array();
         _loc2_.push(new flash.filters.DropShadowFilter(1,60,0,1,3,3,4,3,false,false,false));
         this._tText.filters = _loc2_;
         this._tText.antiAliasType = "advanced";
      }
      this["\x1b\x1d\x18"] = new Array();
   }
   function size()
   {
      super.size();
      this._tText._width = this["\x1d"];
      this._tText._height = this["\x0e\x06"];
   }
   function draw()
   {
      var _loc2_ = this.getStyle();
      this._tText.embedFonts = this.getStyle().embedfonts;
   }
   function §\x1a\x0b\x05§()
   {
      var _loc2_ = "";
      var _loc3_ = this["\x1b\x1d\x18"].length - 1;
      var _loc5_ = this.getStyle();
      var _loc6_ = 0;
      while(_loc6_ < _loc3_)
      {
         var _loc4_ = this["\x1b\x1d\x18"][_loc6_];
         _loc2_ += "<p><font size=\'" + _loc5_.size + "\' face=\'" + _loc5_.font + "\' color=\'" + _loc4_.lColor + "\'>" + _loc4_.text + "</font></p>";
         _loc6_ = _loc6_ + 1;
      }
      _loc4_ = this["\x1b\x1d\x18"][_loc3_];
      if(_loc4_ != undefined)
      {
         _loc2_ += "<p><font size=\'" + _loc5_.size + "\' face=\'" + _loc5_.font + "\' color=\'" + _loc4_.hColor + "\'>" + _loc4_.text + "</font></p>";
      }
      this._tText.htmlText = _loc2_;
      this._tText.scroll = this._tText.maxscroll;
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
