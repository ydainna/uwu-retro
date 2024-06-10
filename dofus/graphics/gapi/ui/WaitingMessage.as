class dofus.graphics.gapi.ui.WaitingMessage extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "WaitingMessage";
   var §\x1e\r\x06§ = "";
   function WaitingMessage()
   {
      super();
   }
   function §\x1e\x07§(sText)
   {
      this["\x1e\r\x06"] = _loc2_;
      return this["\x0b\x16"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.WaitingMessage.CLASS_NAME);
   }
   function createChildren()
   {
      if(this["\x1e\r\x06"].length == 0)
      {
         return undefined;
      }
      this.addToQueue({object:this,method:this["\x18\n\x14"]});
   }
   function §\x18\n\x14§()
   {
      this["\x1d\x04\n"].text = this["\x1c\x13\x12"].text = this["\x1c\x13\x15"].text = this["\x1c\x13\r"].text = this._lblBlackBR.text = this["\x1e\r\x06"];
   }
}
