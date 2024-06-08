class dofus.§\x18\x03\x10§.gapi.ui.login.§\x18\x17\x0f§ extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function §\x18\x17\x0f§()
   {
      super();
   }
   function §\x17\x07§(§\x18\x1b\x17§)
   {
      this["\x1d\r\t"] = _loc2_;
      return this.list;
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      if(_loc2_)
      {
         this["\x1e\x03\x18"] = _loc4_;
         this["\x1c\x16\x10"].text = _loc4_["\x17\x1d\r"](_global.api.lang.getConfigText("LONG_DATE_FORMAT"),_global.api.config.language);
         this._lblTitle["\x16\n\x0f"] = true;
         this._lblTitle.text = _loc4_["\x18\x01\x1d"]();
         this["\x1d\x05\x12"].contentPath = _loc4_["\x17\x18\x1c"]();
         this["\x1d\x0f\x18"]._visible = true;
      }
      else if(this["\x1c\x16\x10"].text != undefined)
      {
         this["\x1c\x16\x10"].text = "";
         this._lblTitle.text = "";
         this["\x1d\x05\x12"].contentPath = "";
         this["\x1d\x0f\x18"]._visible = false;
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
      this["\x1d\x0f\x18"]._visible = false;
   }
}
