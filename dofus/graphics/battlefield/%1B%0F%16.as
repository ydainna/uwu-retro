class dofus.graphics.battlefield.§\x1b\x0f\x16§ extends dofus.graphics.battlefield.AbstractTextOverHead
{
   static var §\x1b\t\x06§ = 5;
   static var §\x1b\t\b§ = 10;
   static var §\x1b\t\x07§ = 2;
   static var §\x1b\t\x05§ = [-1,16777011,16750848,39168,39372,6697728,2236962,16711680,65280,16777215,16711935];
   function §\x1b\x0f\x16§(sText, §\x1a\x1b\x0f§, §\x19\x05\x06§, §\x19\x07\x19§, sTitle, §\x19\x05\n§, nStarsValue)
   {
      super();
      this.initialize(nStarsValue);
      this.drawClip(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_);
   }
   function initialize(§\x1b\t\x15§)
   {
      super.initialize();
      if(_loc3_ == undefined || _global.isNaN(_loc3_))
      {
         _loc3_ = -1;
      }
      this["\x1d\x1d\n"] = _loc3_;
      this.createTextField("_txtTitle",40,0,-3 + dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"] + 4,0,0);
      this.createTextField("_txtText",30,0,-3 + dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"] * (this["\x1d\x1d\n"] <= -1 ? 1 : 2) + 20 + (this["\x1d\x1d\n"] <= -1 ? 0 : dofus.graphics.battlefield["\x1b\x0f\x16"]["\x1b\t\b"]),0,0);
      this._txtText.embedFonts = true;
      this._txtTitle.embedFonts = true;
      this["\x1c\x01\x07"] = new Array();
   }
   function drawClip(sText, §\x1a\x1b\x0f§, §\x19\x05\x06§, §\x19\x07\x19§, sTitle, §\x19\x05\n§)
   {
      var _loc8_ = _loc3_ != undefined && _loc5_ != undefined;
      this._txtText.autoSize = "center";
      this._txtText.text = _loc2_;
      this._txtText.selectable = false;
      this._txtText.setTextFormat(dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x0f\x17"]);
      if(_loc4_ != undefined)
      {
         this._txtText.textColor = _loc4_;
      }
      this._txtTitle.autoSize = "center";
      this._txtTitle.text = _loc6_;
      this._txtTitle.selectable = false;
      this._txtTitle.setTextFormat(dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x0f\x17"]);
      if(_loc7_ != undefined)
      {
         this._txtTitle.textColor = _loc7_;
      }
      this["\x1d\x16\x11"] = dofus.graphics.battlefield["\x1b\x0f\x16"]["\x1b\t\x06"] * dofus.graphics.battlefield["\x1b\x0f\x16"]["\x1b\t\b"] + (dofus.graphics.battlefield["\x1b\x0f\x16"]["\x1b\t\x06"] - 1) * dofus.graphics.battlefield["\x1b\x0f\x16"]["\x1b\t\x07"];
      var _loc9_ = Math.ceil(this._txtText.textHeight + 20 + dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"] * (this["\x1d\x1d\n"] <= -1 ? 3 : 4) + (this["\x1d\x1d\n"] <= -1 ? 0 : dofus.graphics.battlefield["\x1b\x0f\x16"]["\x1b\t\b"]));
      var _loc10_ = Math.ceil(Math.max(Math.max(this._txtText.textWidth,this._txtTitle.textWidth),this["\x1d\x1d\n"] <= -1 ? 0 : this["\x1d\x16\x11"]) + dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x19\x0b"] * 2);
      this["\x17\t\x18"](_loc10_,_loc9_,dofus.graphics.battlefield.AbstractTextOverHead["\x16\b\x0b"]);
      if(this["\x1d\x1d\n"] > -1)
      {
         var _loc11_ = this["\x18\x01\f"]();
         var _loc12_ = 0;
         while(_loc12_ < dofus.graphics.battlefield["\x1b\x0f\x16"]["\x1b\t\x06"])
         {
            var _loc13_ = new Object();
            _loc13_._x = _loc12_ * (dofus.graphics.battlefield["\x1b\x0f\x16"]["\x1b\t\b"] + dofus.graphics.battlefield["\x1b\x0f\x16"]["\x1b\t\x07"]) - this["\x1d\x16\x11"] / 2 + dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x19\x0b"];
            _loc13_._y = dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"] * 4 + this._txtTitle.textHeight;
            this["\x1c\x01\x07"][_loc12_] = this.createEmptyMovieClip("star" + _loc12_,50 + _loc12_);
            this["\x1c\x01\x07"][_loc12_].attachMovie("StarBorder","star",1,_loc13_);
            var _loc14_ = this["\x1c\x01\x07"][_loc12_].star["\x17\x10\x0e"];
            if(_loc11_[_loc12_] > -1)
            {
               var _loc15_ = new Color(_loc14_);
               _loc15_.setRGB(_loc11_[_loc12_]);
            }
            else
            {
               _loc14_._alpha = 0;
            }
            _loc12_ = _loc12_ + 1;
         }
      }
      if(_loc8_)
      {
         this["\x17\n\x03"](_loc3_,_loc5_);
      }
   }
   function §\x18\x01\f§()
   {
      var _loc2_ = new Array();
      var _loc3_ = 0;
      while(_loc3_ < dofus.graphics.battlefield["\x1b\x0f\x16"]["\x1b\t\x06"])
      {
         var _loc4_ = Math.floor(this["\x1d\x1d\n"] / 100) + (this["\x1d\x1d\n"] - Math.floor(this["\x1d\x1d\n"] / 100) * 100 <= _loc3_ * (100 / dofus.graphics.battlefield["\x1b\x0f\x16"]["\x1b\t\x06"]) ? 0 : 1);
         _loc2_[_loc3_] = dofus.graphics.battlefield["\x1b\x0f\x16"]["\x1b\t\x05"][Math.min(_loc4_,dofus.graphics.battlefield["\x1b\x0f\x16"]["\x1b\t\x05"].length - 1)];
         _loc3_ = _loc3_ + 1;
      }
      return _loc2_;
   }
}
