class dofus.graphics.battlefield.§\x19\x12\x1b§ extends dofus.graphics.battlefield.AbstractTextOverHead
{
   static var §\x16\b\x0b§ = 13421772;
   function §\x19\x12\x1b§(§\x1a\x02\b§)
   {
      super();
      this.initialize();
      this.drawClip(_loc3_);
   }
   function initialize()
   {
      super.initialize();
      this.createTextField("_txtGuildName",30,0,-2 + dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"],0,0);
      this.createTextField("_txtSpriteName",40,0,13 + dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"],0,0);
   }
   function drawClip(§\x1a\x02\b§)
   {
      var _loc3_ = _loc2_["\x18\x04\x07"] != undefined && _loc2_["\x18\x04\x07"].length != 0;
      this._txtSpriteName.embedFonts = true;
      this._txtSpriteName.autoSize = "left";
      this._txtSpriteName.text = _loc2_.name;
      this._txtSpriteName.selectable = false;
      this._txtSpriteName.setTextFormat(dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x0f\x17"]);
      this._txtSpriteName.textColor = 0;
      if(_loc3_)
      {
         this._txtGuildName.embedFonts = true;
         this._txtGuildName.autoSize = "left";
         this._txtGuildName.text = _loc2_["\x18\x04\x07"];
         this._txtGuildName.selectable = false;
         this._txtGuildName.setTextFormat(dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x0f\x19"]);
         this._txtGuildName.textColor = 0;
      }
      var _loc4_ = Math.ceil(30 + dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"] * 2);
      var _loc5_ = Math.ceil(Math.max(this._txtGuildName.textWidth,this._txtSpriteName.textWidth) + dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x19\x0b"] * 4) + 30;
      this._txtGuildName._x = this._txtSpriteName._x = (0 - _loc5_) / 2 + 30 + dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x19\x0b"] * 2;
      if(!_loc3_)
      {
         this._txtSpriteName._y = 9;
      }
      this["\x17\t\x18"](_loc5_,_loc4_,16777215);
      this.attachMovie("GAPILoader","_ldrIcon",100,{_x:Math.ceil((0 - _loc5_) / 2) + dofus.graphics.battlefield.AbstractTextOverHead["\x1b\x19\x0b"],_y:dofus.graphics.battlefield.AbstractTextOverHead["\x18\x05\x14"],_height:30,_width:30,contentPath:dofus.Constants["\x17\x0e\x1d"] + _loc2_["\x19\x12\x1c"] + ".swf",scaleContent:true});
   }
}
