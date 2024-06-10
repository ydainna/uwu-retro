class dofus.graphics.battlefield.§\x18\x04\b§ extends dofus.graphics.battlefield.AbstractTextOverHead
{
   function §\x18\x04\b§(sText, §\x1b\b\x11§, §\x19\x12\x15§, §\x1a\x1b\x0f§, §\x19\x07\x19§, §\x19\f\x13§, §\x1b\x10\x15§)
   {
      super();
      this.initialize(_loc9_ != undefined);
      this.drawClip(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
   }
   function initialize(§\x17\b\x0f§)
   {
      super.initialize();
      this.createTextField("_txtGuildName",30,0,-2 + dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"],0,0);
      this.createTextField("_txtSpriteName",40,0,13 + dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"],0,0);
      if(_loc3_)
      {
         this.createTextField("_txtTitle",31,0,-2 + dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"],0,0);
         this._txtTitle.embedFonts = true;
      }
   }
   function drawClip(§\x1a\x1c\x02§, §\x1b\b\x11§, §\x19\x12\x15§, §\x1a\x1b\x0f§, §\x19\x07\x19§, §\x19\f\x13§, §\x1b\x10\x15§)
   {
      var _loc9_ = _loc5_ != undefined && _loc6_ != undefined;
      if(_loc7_ == undefined)
      {
         _loc7_ = 0;
      }
      this._txtGuildName.embedFonts = true;
      this._txtGuildName.autoSize = "left";
      this._txtGuildName.text = _loc2_;
      this._txtGuildName.selectable = false;
      this._txtGuildName.setTextFormat(dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x0f\x19"]);
      this._txtSpriteName.embedFonts = true;
      this._txtSpriteName.autoSize = "left";
      this._txtSpriteName.text = _loc3_;
      this._txtSpriteName.selectable = false;
      this._txtSpriteName.setTextFormat(dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x0f\x17"]);
      var _loc12_ = 0;
      if(_loc8_)
      {
         this._txtTitle.autoSize = "center";
         this._txtTitle.text = _loc8_.text;
         this._txtTitle.selectable = false;
         this._txtTitle.setTextFormat(dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x0f\x18"]);
         if(_loc8_.color != undefined)
         {
            this._txtTitle.textColor = _loc8_.color;
         }
         var _loc10_ = Math.ceil(30 + dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"] * 3 + this._txtTitle.textHeight);
         var _loc13_ = Math.ceil(Math.max(this._txtGuildName.textWidth,this._txtSpriteName.textWidth) + dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x19\x0b"] * 4) + 30;
         var _loc11_ = Math.ceil(Math.max(_loc13_,this._txtTitle.textWidth + dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x19\x0b"] * 2));
         _loc12_ = dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"] + this._txtTitle.textHeight;
         this._txtGuildName._x = this._txtSpriteName._x = (0 - _loc11_) / 2 + 30 + dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x19\x0b"] * 2;
         this._txtTitle._y = 27 + dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"] * 2;
      }
      else
      {
         _loc10_ = Math.ceil(30 + dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"] * 2);
         _loc11_ = Math.ceil(Math.max(this._txtGuildName.textWidth,this._txtSpriteName.textWidth) + dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x19\x0b"] * 4) + 30;
         this._txtGuildName._x = this._txtSpriteName._x = (0 - _loc11_) / 2 + 30 + dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x19\x0b"] * 2;
      }
      this["\x17\t\x18"](_loc11_,_loc10_,dofus.graphics.battlefield.AbstractTextOverHead["\x16\b\x0b"]);
      this.attachMovie("Emblem","_eEmblem",100,{_x:Math.ceil((0 - _loc11_) / 2) + dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x19\x0b"],_y:dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"],_height:30,_width:30,data:_loc4_,shadow:true});
      if(_loc9_)
      {
         this["\x17\n\x03"](_loc5_,_loc6_);
         this["\x15\x1e\t"](_loc7_,_loc6_);
      }
   }
}
