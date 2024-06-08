class ank.gapi.§\x17\x01\x06§.TextInput extends ank.gapi.§\x17\x01\x06§.Label
{
   static var §\x16\x1b\x10§ = "TextInput";
   var §\x1e\r\x07§ = "input";
   var §\x1e\f\t§ = "none";
   var §\x1d\x19\n§ = -1;
   function TextInput()
   {
      super();
   }
   function §\x1b\x13§(§\x1b\x07\x1c§)
   {
      this["\x1e\f\t"] = _loc2_ != "none" ? _loc2_ : null;
      if(this._tText != undefined)
      {
         this["\x1a\x19\x0b"]();
      }
      return this["\x07\x1a"]();
   }
   function §\x07\x1a§()
   {
      return this._tText.restrict;
   }
   function §\x17\x19§(§\x19\t\x1b§)
   {
      this["\x1d\x19\n"] = _loc2_ != -1 ? _loc2_ : null;
      if(this._tText != undefined)
      {
         this["\x1a\x17\x19"]();
      }
      return this["\x03\b"]();
   }
   function §\x03\b§()
   {
      return this._tText.maxChars;
   }
   function §\x1e\x1a\x10§()
   {
      return eval(Selection.getFocus()) == this._tText;
   }
   function §\x1d\x1c§(§\x19\x0f\x0b§)
   {
      this._tText.tabIndex = _loc2_;
      return this["\n\x19"]();
   }
   function §\n\x19§()
   {
      return this._tText.tabIndex;
   }
   function §\x1d\x1b§(§\x16\x0b\t§)
   {
      this._tText.tabEnabled = _loc2_;
      return this["\n\x18"]();
   }
   function §\n\x18§()
   {
      return this._tText.tabEnabled;
   }
   function §\x1a\x05§(§\x16\x10\x14§)
   {
      this._tText.password = _loc2_;
      return this["\x06\x04"]();
   }
   function §\x06\x04§()
   {
      return this._tText.password;
   }
   function setFocus()
   {
      if(this._tText == undefined)
      {
         this.addToQueue({object:this,method:function()
         {
            Selection.setFocus(this._tText);
         }});
      }
      else
      {
         Selection.setFocus(this._tText);
      }
   }
   function createChildren()
   {
      super.createChildren();
      this["\x1a\x19\x0b"]();
      this["\x1a\x17\x19"]();
   }
   function §\x1a\x16\x07§()
   {
      if(this._bEnabled)
      {
         this._tText.type = "input";
      }
      else
      {
         this._tText.type = "dynamic";
      }
   }
   function §\x1a\x19\x0b§()
   {
      this._tText.restrict = this["\x1e\f\t"];
   }
   function §\x1a\x17\x19§()
   {
      this._tText.maxChars = this["\x1d\x19\n"];
   }
}
