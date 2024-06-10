class ank.gapi.§\x17\x01\x06§.Fps extends ank.gapi.core.UIBasicComponent
{
   static var §\x16\x1b\x10§ = "Fps";
   var §\x1d\x13\x02§ = 10;
   var §\x1c\x01\x11§ = new Array();
   function Fps()
   {
      super();
   }
   function §\x0f\t§(§\x19\x03\x15§)
   {
      this["\x1d\x13\x02"] = _loc2_;
      return this.averageOffset;
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.Fps.CLASS_NAME);
   }
   function createChildren()
   {
      this.createEmptyMovieClip("_mcBack",this.getNextHighestDepth());
      this["\x17\n\x0f"](this._mcBack,0,0,1,1,0,16777215);
      this.attachMovie("Label","_lblText",this.getNextHighestDepth(),{text:"--"});
   }
   function size()
   {
      super.size();
      this["\x16\x05\f"]();
   }
   function §\x16\x05\f§()
   {
      this._mcBack._width = this["\x1d"];
      this._mcBack._height = this["\x0e\x06"];
      this._lblText["\x1a\x19\x18"](this["\x1d"],this["\x0e\x06"]);
   }
   function draw()
   {
      var _loc2_ = this.getStyle();
      if(_loc2_.backcolor != undefined)
      {
         this["\x1a\x18\x03"](this._mcBack,_loc2_.backcolor);
      }
      this._mcBack._alpha = _loc2_.backalpha;
      this._lblText.styleName = _loc2_.labelstyle;
   }
   function §\x1a\b\x06§(§\x19\x10\x10§)
   {
      this["\x1c\x01\x11"].push(_loc2_);
      if(this["\x1c\x01\x11"].length > this["\x1d\x13\x02"])
      {
         this["\x1c\x01\x11"].shift();
      }
   }
   function §\x17\x14\x0f§()
   {
      var _loc2_ = 0;
      for(var k in this["\x1c\x01\x11"])
      {
         _loc2_ += Number(this["\x1c\x01\x11"][k]);
      }
      return Math.round(_loc2_ / this["\x1c\x01\x11"].length);
   }
   function onEnterFrame()
   {
      var _loc2_ = 9683;
      var _loc3_ = _loc2_ - this["\x1d\x1c\b"];
      this["\x1a\b\x06"](1 / (_loc3_ / 1000));
      this._lblText.text = String(this["\x17\x14\x0f"]());
      this["\x1d\x1c\b"] = _loc2_;
   }
}
