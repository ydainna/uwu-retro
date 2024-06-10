class dofus.graphics.gapi.§\x17\x01\x06§.Heart extends ank.gapi.core.UIBasicComponent
{
   static var §\x16\x1b\x10§ = "Heart";
   function Heart()
   {
      super();
   }
   function §\x04§(§\x19\x10\x10§)
   {
      _loc2_ = Number(_loc2_);
      if(_global.isNaN(_loc2_))
      {
         return undefined;
      }
      this["\x1e\x01\x03"] = _loc2_;
      if(this["\x1d\x19\t"] != undefined)
      {
         this["\x16\x04\x15"]();
      }
      return this["\f\x1c"]();
   }
   function §\f\x1c§()
   {
      return this["\x1e\x01\x03"];
   }
   function §\x17\x17§(§\x19\t\x19§)
   {
      _loc2_ = Number(_loc2_);
      if(_global.isNaN(_loc2_))
      {
         return undefined;
      }
      this["\x1d\x19\t"] = _loc2_;
      if(this["\x1e\x01\x03"] != undefined)
      {
         this["\x16\x04\x15"]();
      }
      return this["\x03\x06"]();
   }
   function §\x03\x06§()
   {
      return this["\x1d\x19\t"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.Heart.CLASS_NAME);
   }
   function createChildren()
   {
      this["\x1d\x19\f"] = this["\x1d\x0f\r"]._height;
      this["\x1d\x15\x14"] = 0;
      this.stop();
   }
   function §\x16\x04\x15§()
   {
      switch(this["\x1d\x15\x14"])
      {
         case 1:
            this["\x1e\x0f\x07"].text = String(this["\x1e\x01\x03"]);
            this["\x1e\x0f\x11"].text = String(this["\x1d\x19\t"]);
            break;
         case 2:
            this["\x1e\x0f\x14"].text = String(Math.ceil(this["\x1e\x01\x03"] / this["\x1d\x19\t"] * 100));
            break;
         default:
            this["\x1e\x10\x01"].text = String(this["\x1e\x01\x03"]);
      }
      this["\x1d\x0f\r"]._height = this["\x1e\x01\x03"] / this["\x1d\x19\t"] * this["\x1d\x19\f"];
   }
   function §\x1b\x10\x1a§()
   {
      this["\x1d\x15\x14"]++;
      if(this["\x1d\x15\x14"] > 2)
      {
         this["\x1d\x15\x14"] = 0;
      }
      this["\x1d\x15\x14"] = Number(this["\x1d\x15\x14"]);
      if(_global.isNaN(this["\x1d\x15\x14"]))
      {
         this["\x1d\x15\x14"] = 0;
      }
      switch(this["\x1d\x15\x14"])
      {
         case 1:
            this.gotoAndStop("\x17\t\x14");
            break;
         case 2:
            this.gotoAndStop("\x1a\x04\x17");
            break;
         default:
            this.gotoAndStop("\x1b\x17\x17");
      }
      this.addToQueue({object:this,method:this["\x16\x04\x15"]});
   }
}
