class dofus.graphics.gapi.§\x17\x01\x06§.SpellInfosViewer extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "SpellInfosViewer";
   function SpellInfosViewer()
   {
      super();
   }
   function §\x1d\r§(§\x1a\x02\x06§)
   {
      if(_loc2_ == this["\x1e\x05\x14"])
      {
         return undefined;
      }
      this["\x1e\x05\x14"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1b\x14\x14"]();
      }
      return this["\t\x17"]();
   }
   function §\t\x17§()
   {
      return this["\x1e\x05\x14"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.SpellInfosViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.initTexts});
   }
   function initData()
   {
      this["\x1b\x14\x14"]();
   }
   function initTexts()
   {
      this["\x1c\x17\x0f"].text = this.api.lang.getText("EFFECTS") + " :";
      this["\x1c\x16\f"].text = this.api.lang.getText("CRITICAL_HIT") + " :";
      this["\x1c\x18\x13"].text = this.api.lang.getText("HOW_GET_DETAILS");
   }
   function §\x1b\x14\x14§()
   {
      if(this["\x1e\x05\x14"] != undefined)
      {
         this["\x1c\x16\f"]._visible = this["\x1e\x05\x14"]["\x17\x07\x07"] != undefined;
         this["\x1c\x1b\x0f"].text = this["\x1e\x05\x14"].name;
         this["\x1c\x1a\x07"].text = this.api.lang.getText("LEVEL") + " " + this["\x1e\x05\x14"].level;
         this["\x1c\x1d\f"].text = (this["\x1e\x05\x14"]["\x1a\t\x14"] == 0 ? "" : this["\x1e\x05\x14"]["\x1a\t\x14"] + "-") + this["\x1e\x05\x14"]["\x1a\t\x13"] + " " + this.api.lang.getText("RANGE");
         this["\x1c\x12\x11"].text = this["\x1e\x05\x14"]["\x16\x04\x03"] + " " + this.api.lang.getText("AP");
         this["\x1e\x0f\n"].text = this["\x1e\x05\x14"].description;
         this["\x1e\x0f\x0b"].text = this["\x1e\x05\x14"]["\x17\x07\b"];
         this["\x1e\x0f\x06"].text = this["\x1e\x05\x14"]["\x17\x07\x07"] == undefined ? "" : this["\x1e\x05\x14"]["\x17\x07\x07"];
         this._ldrIcon.forceReload = true;
         this._ldrIcon.contentParams = this["\x1e\x05\x14"].params;
         this._ldrIcon.contentPath = this["\x1e\x05\x14"].iconFile;
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1c\x16\f"]._visible = false;
         this["\x1c\x1b\x0f"].text = "";
         this["\x1c\x1a\x07"].text = "";
         this["\x1c\x1d\f"].text = "";
         this["\x1c\x12\x11"].text = "";
         this["\x1e\x0f\n"].text = "";
         this["\x1e\x0f\x0b"].text = "";
         this["\x1e\x0f\x06"].text = "";
         this._ldrIcon.contentPath = "";
      }
   }
}
