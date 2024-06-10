class dofus.graphics.battlefield.HealthBarOverHead extends dofus.graphics.battlefield.AbstractTextOverHead
{
   function HealthBarOverHead(§\x1a\x02\b§, nBarWidth, §\x1a\x1b\x0f§, §\x19\x07\x19§)
   {
      super();
      this["\x1e\x05\x1a"] = _loc3_;
      this.initialize();
      this.drawClip(this["\x1e\x05\x1a"].name,this["\x1e\x05\x1a"].LP,0,this["\x1e\x05\x1a"].LPmax,nBarWidth,_loc5_,_loc6_,this["\x1e\x05\x1a"].pvpGain);
   }
   function initialize()
   {
      super.initialize();
      this.createTextField("_txtSpriteName",40,0,-2 + dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"],0,0);
   }
   function drawClip(§\x1b\b\x11§, nCurrentValue, nMinValue, §\x19\n\n§, nBarWidth, §\x1a\x1b\x0f§, §\x19\x07\x19§, §\x19\f\x13§)
   {
      var _loc10_ = _loc7_ != undefined && _loc8_ != undefined;
      if(_loc9_ == undefined)
      {
         _loc9_ = 0;
      }
      this._txtSpriteName.embedFonts = true;
      this._txtSpriteName.autoSize = "center";
      this._txtSpriteName.text = _loc2_;
      this._txtSpriteName.selectable = false;
      this._txtSpriteName.setTextFormat(dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x0f\x17"]);
      var _loc11_ = Math.ceil(32 + dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"] * 2);
      var _loc12_ = Math.ceil(Math.max(this._txtSpriteName.textWidth,nBarWidth) + dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x19\x0b"] * 3);
      this["\x17\t\x18"](_loc12_,_loc11_,dofus.graphics.battlefield.AbstractTextOverHead["\x16\b\x0b"]);
      this.attachMovie("SpriteHealthBar","_mcSpriteHealthBar",100,{realWidth:nBarWidth,_x:(0 - nBarWidth) / 2,_y:16 + dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"],lifeCurrentValue:nCurrentValue,lifeMinValue:nMinValue,lifeMaxValue:_loc5_});
      if(_loc10_)
      {
         this["\x17\n\x03"](_loc7_,_loc8_);
         this["\x15\x1e\t"](_loc9_,_loc8_);
      }
   }
}
