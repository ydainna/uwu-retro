class dofus.graphics.gapi.§\x17\x01\x06§.SpellBoostViewer extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "SpellBoostViewer";
   function SpellBoostViewer()
   {
      super();
   }
   function §\x1d\r§(§\x1a\x02\x06§)
   {
      this["\x1e\x05\x14"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this.initData();
      }
      return this["\t\x17"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.SpellBoostViewer.CLASS_NAME);
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
      this["\x1c\x1b\x12"].text = this.api.lang.getText("NEW_CHARACTERISTICS");
   }
   function §\x1b\x14\x14§()
   {
      if(this["\x1e\x05\x14"] != undefined)
      {
         this._ldrIcon.forceReload = true;
         this._ldrIcon.contentParams = this["\x1e\x05\x14"].params;
         this._ldrIcon.contentPath = this["\x1e\x05\x14"].iconFile;
         this["\x1c\x1b\x0f"].text = this["\x1e\x05\x14"].name;
         this["\x1c\x1a\b"].text = this.api.lang.getText("LEVEL") + " " + this["\x1e\x05\x14"].level;
         this["\x1c\x12\x12"].text = this["\x1e\x05\x14"]["\x16\x04\x03"] + " " + this.api.lang.getText("AP");
         this["\x1c\x1d\r"].text = this["\x1e\x05\x14"]["\x1a\t\x17"] + " " + this.api.lang.getText("RANGE");
         this["\x1e\x0f\b"].text = this["\x1e\x05\x14"]["\x17\x07\b"];
         this["\x1e\x0f\x04"].text = this["\x1e\x05\x14"]["\x17\x07\x07"] != undefined ? this["\x1e\x05\x14"]["\x17\x07\x07"] : "";
         this["\x1d\x07\x1c"]._visible = this["\x1e\x05\x14"]["\x17\x07\x07"] != undefined;
         this["\x1e\x05\x14"].level += 1;
         this["\x1c\x1a\t"].text = this.api.lang.getText("LEVEL") + " " + this["\x1e\x05\x14"].level;
         this["\x1c\x12\x13"].text = this["\x1e\x05\x14"]["\x16\x04\x03"] + " " + this.api.lang.getText("AP");
         this["\x1c\x1d\x0e"].text = this["\x1e\x05\x14"]["\x1a\t\x17"] + " " + this.api.lang.getText("RANGE");
         this["\x1e\x0f\t"].text = this["\x1e\x05\x14"]["\x17\x07\b"];
         this["\x1e\x0f\x05"].text = this["\x1e\x05\x14"]["\x17\x07\x07"] != undefined ? this["\x1e\x05\x14"]["\x17\x07\x07"] : "";
         this["\x1e\x05\x14"].level -= 1;
      }
   }
}
