class dofus.§\x18\x03\x10§.gapi.ui.HistoryViewerOnCreate extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "HistoryViewerOnCreate";
   function HistoryViewerOnCreate()
   {
      super();
   }
   function §\x1e\x13\x07§()
   {
      return this["\x1d\x13\r"];
   }
   function §\x0f\x16§(§\x19\x03\x01§)
   {
      this["\x1d\x13\r"] = _loc2_;
      return this["\x1e\x13\x07"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.HistoryViewerOnCreate.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this["\x18\n\x14"]});
      this.addToQueue({object:this,method:this.addListeners});
   }
   function §\x18\n\x14§()
   {
      this["\x1c\x14\f"].text = this.api.lang.getText("HISTORY_CLASS_WORD");
      this["\x1c\x14\r"].text = this.api.lang.getClassText(this["\x1d\x13\r"]).sn;
      this["\x1e\x0f\x0e"].text = this.api.lang.getClassText(this["\x1d\x13\r"]).d;
      this["\x1d\x05\x05"].content._alpha = 50;
      this["\x1d\x05\x05"].contentPath = dofus.Constants["\x16\x10\x1c"] + this["\x1d\x13\r"] + ".swf";
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._btnClose.addEventListener("over",this);
      this._btnClose.addEventListener("out",this);
      this["\x1c\x04\x17"].addEventListener("click",this);
      this["\x1d\x11\x1a"].onRelease = function()
      {
      };
      this["\x1d\x11\x1a"].useHandCursor = false;
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\x04\x17"]:
         case this._btnClose:
            this["\x1b\x13\x13"]();
      }
   }
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._btnClose)
      {
         this.gapi.showTooltip(this.api.lang.getText("CLOSE"),_loc2_.target,-20);
      }
   }
}
