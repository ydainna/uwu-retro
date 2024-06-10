class dofus.graphics.gapi.ui.DocumentParchment extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "DocumentParchment";
   function DocumentParchment()
   {
      super();
   }
   function §\x12\x14§(§\x19\x12\x12§)
   {
      this["\x1e\x03\f"] = _loc2_;
      return this.document;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.DocumentParchment.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this.api.network.Documents.leave();
      return true;
   }
   function createChildren()
   {
      this["\x1e\x0f\x03"].wordWrap = true;
      this["\x1e\x0f\x03"].multiline = true;
      this["\x1e\x0f\x03"].embedFonts = true;
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._bgHidder.addEventListener("click",this);
   }
   function §\x1b\x14\x14§()
   {
      this["\x1a\x15\x18"](this["\x1e\x03\f"]["\x17\x1d\x02"](0).cssFile);
      if(this._lblTitle.text == undefined)
      {
         return undefined;
      }
      if(this["\x1e\x03\f"].title.substr(0,2) == "//")
      {
         this._lblTitle.text = "";
      }
      else
      {
         this._lblTitle.text = this["\x1e\x03\f"].title;
      }
   }
   function §\x1a\x15\x18§(§\x1a\x11\x18§)
   {
      var _loc3_ = new TextField.StyleSheet();
      _loc3_.owner = this;
      _loc3_.onLoad = function()
      {
         this.owner["\x18\x13\x14"](this);
      };
      _loc3_.load(_loc2_);
   }
   function §\x18\x13\x14§(§\x1b\b\x14§)
   {
      this["\x1e\x0f\x03"].styleSheet = _loc2_;
      this["\x1e\x0f\x03"].htmlText = this["\x1e\x03\f"]["\x17\x1d\x02"](0).text;
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_bgHidder":
         case "_btnClose":
            this["\x16\x15\n"]();
      }
   }
   function onHref(§\x1b\x05\x03§)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = _loc3_[1].split(";");
      if(!_global.isNaN(_loc4_))
      {
         this.api.network.GameActions["\x1a\x13\x14"](_loc4_,_loc5_);
         this.api.network.Documents.leave();
      }
   }
}
