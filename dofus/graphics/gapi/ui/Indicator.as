class dofus.graphics.gapi.ui.Indicator extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Indicator";
   static var §\x1a\x1c\x04§ = 3;
   static var §\x1a\x1c\x05§ = {ra:0,rb:0,ga:0,gb:0,ba:0,bb:0,aa:40,ab:0};
   var §\x1c\x07\x16§ = true;
   var §\x1d\x1a\x13§ = 0;
   function Indicator()
   {
      super();
   }
   function §\x1b\x17§(§\x16\x11\f§)
   {
      this["\x1c\x07\x16"] = _loc2_;
      return this.rotate;
   }
   function §\x11\n§(§\x15\x1c\x04§)
   {
      this["\x1b\x1c\n"] = _loc2_;
      return this["\x1e\x16\x19"]();
   }
   function §\x19\x13§(§\x19\x0b\x03§)
   {
      this["\x1d\x1a\x13"] = _loc2_;
      return this["\x05\x11"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Indicator.CLASS_NAME);
   }
   function createChildren()
   {
      var _loc2_ = this["\x1b\x1c\n"][0];
      var _loc3_ = this["\x1b\x1c\n"][1];
      if(this["\x1c\x07\x16"])
      {
         var _loc5_ = this.gapi["\x1a\x11\t"] / 2;
         var _loc6_ = this.gapi["\x1a\x11\x07"] / 2;
         var _loc7_ = Math.atan2(this["\x1b\x1c\n"][1] - _loc6_,this["\x1b\x1c\n"][0] - _loc5_);
         var _loc4_ = _loc7_ * 180 / Math.PI - 90;
         _loc2_ -= this["\x1d\x1a\x13"] != undefined ? this["\x1d\x1a\x13"] * Math.cos(_loc7_) : 0;
         _loc3_ -= this["\x1d\x1a\x13"] != undefined ? this["\x1d\x1a\x13"] * Math.sin(_loc7_) : 0;
      }
      else
      {
         _loc3_ -= this["\x1d\x1a\x13"] != undefined ? this["\x1d\x1a\x13"] : 0;
      }
      this.attachMovie("UI_Indicatorlight","_mcLight",10,{_x:_loc2_,_y:_loc3_});
      var _loc8_ = "UI_IndicatorArrow";
      if(dofus.Constants.TRIPLEFRAMERATE)
      {
         _loc8_ += "_TripleFramerate";
      }
      this.attachMovie(_loc8_,"_mcArrowShadow",20,{_x:_loc2_ + dofus.graphics.gapi.ui.Indicator["\x1a\x1c\x04"],_y:_loc3_ + dofus.graphics.gapi.ui.Indicator["\x1a\x1c\x04"]});
      this.attachMovie(_loc8_,"_mcArrow",30,{_x:_loc2_,_y:_loc3_});
      var _loc9_ = new Color(this._mcArrowShadow);
      _loc9_.setTransform(dofus.graphics.gapi.ui.Indicator["\x1a\x1c\x05"]);
      if(this["\x1c\x07\x16"])
      {
         this._mcLight._rotation = _loc4_;
         this._mcArrow._rotation = _loc4_;
         this._mcArrowShadow._rotation = _loc4_;
      }
   }
}
