class dofus.§\x18\x03\x10§.gapi.ui.§\x16\x19\n§.CharactersMigrationItem extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "CharactersMigrationItem";
   function CharactersMigrationItem()
   {
      super();
   }
   function §\x17\x07§(§\x18\x1b\x17§)
   {
      this["\x1d\r\t"] = _loc2_;
      return this.list;
   }
   function §\x1b\x15\x15§(§\x1b\x03\x1d§)
   {
      this["\x1c\x1b\x0f"].text = _loc2_;
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      if(_loc2_)
      {
         this["\x1e\x03\x18"] = _loc4_;
         this["\x1d\x05\n"]._visible = true;
         this._mcInputNickname._visible = true;
         this["\x1c\x1b\x0f"]._visible = true;
         this["\x1c\x1a\x07"]._visible = true;
         this["\x1c\x1a\x07"].text = _loc4_.level;
         this["\x1c\x1b\x0f"].text = _loc4_.newPlayerName;
         this.list = _loc4_.list;
         this["\x1d\x05\n"].contentPath = dofus.Constants["\x18\x04\x16"] + _loc4_["\x18\x02\x16"] + ".swf";
         this["\x1e\x03\x18"].ref = this;
      }
      else
      {
         this["\x1d\x05\n"]._visible = false;
         this._mcInputNickname._visible = false;
         this["\x1c\x1b\x0f"]._visible = false;
         this["\x1c\x1a\x07"]._visible = false;
      }
   }
   function §\x18\x02\x06§()
   {
      return this["\x1e\x03\x18"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui["\x16\x19\n"].CharactersMigrationItem.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
   }
   function addListeners()
   {
   }
   function initTexts()
   {
   }
   function click(oEvent)
   {
   }
}
