class dofus.graphics.battlefield.§\x1b\x0f\x15§ extends dofus.graphics.battlefield.AbstractTextOverHead
{
   function §\x1b\x0f\x15§(sText, §\x1a\x1b\x0f§, §\x19\x05\x06§, §\x19\x07\x19§, §\x1a\x02\b§, §\x1b\x10\x15§)
   {
      super();
      this.initialize(_loc8_ != undefined);
      this["\x1e\x05\x1a"] = _loc7_;
      this.addToQueue({object:this,method:this.addEventListeners});
      this.drawClip(_loc3_,_loc4_,_loc5_,_loc6_,this["\x1e\x05\x1a"].pvpGain,_loc8_);
   }
   function initialize(§\x17\b\x0f§)
   {
      super.initialize();
      this.createTextField("_txtText",30,0,-3 + dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"],0,0);
      if(_loc3_)
      {
         this.createTextField("_txtTitle",31,0,-3 + dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"],0,0);
         this._txtTitle.embedFonts = true;
      }
      this._txtText.embedFonts = true;
   }
   function addEventListeners()
   {
      this["\x1e\x05\x1a"].addEventListener("lpChanged",this);
   }
   function drawClip(sText, §\x1a\x1b\x0f§, §\x19\x05\x06§, §\x19\x07\x19§, §\x19\f\x13§, §\x1b\x10\x15§)
   {
      var _loc8_ = _loc3_ != undefined && _loc5_ != undefined;
      if(_loc6_ == undefined)
      {
         _loc6_ = 0;
      }
      this.initTextField(this._txtText,_loc2_,_loc4_,dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x0f\x17"]);
      if(_loc7_)
      {
         this.initTextField(this._txtTitle,_loc7_.text,_loc7_.color,dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x0f\x18"]);
         this._txtTitle._y = this._txtText._y + dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"] + this._txtText.textHeight;
         var _loc9_ = Math.ceil(this._txtText.textHeight + this._txtTitle.textHeight + dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"] * 3);
         var _loc10_ = Math.ceil(Math.max(this._txtText.textWidth,this._txtTitle.textWidth) + dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x19\x0b"] * 2);
      }
      else
      {
         _loc9_ = Math.ceil(this._txtText.textHeight + dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"] * 2);
         _loc10_ = Math.ceil(this._txtText.textWidth + dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x19\x0b"] * 2);
      }
      this["\x17\t\x18"](_loc10_,_loc9_,dofus.graphics.battlefield.AbstractTextOverHead["\x16\b\x0b"]);
      if(_loc8_)
      {
         this["\x17\n\x03"](_loc3_,_loc5_);
         this["\x15\x1e\t"](_loc6_,_loc5_);
      }
   }
   function initTextField(txtField, sText, §\x19\x05\x06§, textFormat)
   {
      txtField.autoSize = "center";
      txtField.text = _loc3_;
      txtField.selectable = false;
      txtField.setTextFormat(textFormat);
      if(_loc4_ != undefined)
      {
         txtField.textColor = _loc4_;
      }
   }
   function lpChanged(oEvent)
   {
      var _loc3_ = this["\x1e\x05\x1a"].name + " (" + this["\x1e\x05\x1a"].LP + ")";
      this.initTextField(this._txtText,_loc3_,undefined,dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x0f\x17"]);
      this["\x1d\x11\x10"].clear();
      var _loc4_ = Math.ceil(this._txtText.textHeight + dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"] * 2);
      var _loc5_ = Math.ceil(this._txtText.textWidth + dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x19\x0b"] * 2);
      this["\x17\t\x18"](_loc5_,_loc4_,dofus.graphics.battlefield.AbstractTextOverHead["\x16\b\x0b"]);
   }
}
