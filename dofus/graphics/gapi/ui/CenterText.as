class dofus.graphics.gapi.ui.CenterText extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "CenterText";
   var §\x1e\r\x06§ = "";
   var §\x1c\x02\b§ = false;
   var §\x1d\x1e\r§ = 0;
   function CenterText()
   {
      super();
   }
   function §\x1e\x07§(sText)
   {
      this["\x1e\r\x06"] = _loc2_;
      return this["\x0b\x16"]();
   }
   function §\x0f\x0b§(§\x16\t\x10§)
   {
      this["\x1c\x02\b"] = _loc2_;
      return this["\x1e\x12\x19"]();
   }
   function §\x1e\n§(§\x19\x0f\x1a§)
   {
      this["\x1d\x1e\r"] = _loc2_;
      return this.timer;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.CenterText.CLASS_NAME);
   }
   function createChildren()
   {
      if(this["\x1e\r\x06"].length == 0)
      {
         return undefined;
      }
      this.addToQueue({object:this,method:this["\x18\n\x14"]});
      this["\x1d\b\n"]._visible = false;
      this["\x1e\x07\x03"]._visible = false;
      if(this["\x1d\x1e\r"] != 0)
      {
         ank.utils.Timer.setTimer(this,"centertext",this,this["\x1b\x13\x13"],this["\x1d\x1e\r"]);
      }
   }
   function §\x18\n\x14§()
   {
      this["\x1d\x04\n"].text = this["\x1c\x13\x12"].text = this["\x1c\x13\x15"].text = this["\x1c\x13\r"].text = this._lblBlackBR.text = this["\x1e\r\x06"];
      var _loc2_ = this["\x1d\x04\n"].textHeight;
      this["\x1d\b\n"]._visible = this["\x1c\x02\b"];
      this["\x1d\b\n"]._height = _loc2_ + 2.5 * (this["\x1d\x04\n"]._y - this["\x1d\b\n"]._y);
   }
   function §\x1b\x15\x18§(§\x1b\x02\x10§, §\x19\x05\x13§, §\x19\n\t§)
   {
      var _loc5_ = Math.floor(_loc3_ / _loc4_ * 100);
      if(_global.isNaN(_loc5_))
      {
         _loc5_ = 0;
      }
      this["\x1e\x07\x03"]._visible = true;
      this["\x1e\x07\x03"]["\x1b\x12\x07"].text = _loc2_;
      this["\x1e\x07\x03"]["\x1b\x12\b"].text = _loc5_ + "%";
      this["\x1e\x07\x03"]["\x18\x1b\x1c"]._width = _loc5_;
   }
}
