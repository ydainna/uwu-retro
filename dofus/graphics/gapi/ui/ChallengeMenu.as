class dofus.§\x18\x03\x10§.gapi.ui.ChallengeMenu extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ChallengeMenu";
   static var §\x1b\x1a\x13§ = 90;
   function ChallengeMenu()
   {
      super();
   }
   function §\x16\x19§(§\x1b\x02\x12§)
   {
      this["\x1e\n\x0e"] = _loc2_;
      return this.labelReady;
   }
   function §\x16\x17§(§\x1b\x02\x11§)
   {
      this["\x1e\n\r"] = _loc2_;
      return this.labelCancel;
   }
   function §\x10\x03§(§\x16\t\x1a§)
   {
      this["\x1c\x02\x11"] = _loc2_;
      this._btnCancel._visible = _loc2_;
      this["\x1c\x14\x10"]._visible = _loc2_;
      if(!_loc2_)
      {
         this["\x1d\b\n"]._x += dofus.graphics.gapi.ui.ChallengeMenu["\x1b\x1a\x13"];
         this["\x1c\n\x14"]._x += dofus.graphics.gapi.ui.ChallengeMenu["\x1b\x1a\x13"];
         this._lblReady._x += dofus.graphics.gapi.ui.ChallengeMenu["\x1b\x1a\x13"];
         this["\x1d\x10\x19"]._x += dofus.graphics.gapi.ui.ChallengeMenu["\x1b\x1a\x13"];
      }
      return this.cancelButton;
   }
   function §\x1b\x07§(§\x16\x10\x18§)
   {
      this["\x1c\x07\x11"] = _loc2_;
      this["\x1d\x10\x19"]._visible = _loc2_;
      return this.ready;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.ChallengeMenu.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this["\x1a\x17\x11"]});
   }
   function §\x1a\x17\x11§()
   {
      this._lblReady.text = this["\x1e\n\x0e"];
      if(this["\x1c\x02\x11"])
      {
         this["\x1c\x14\x10"].text = this["\x1e\n\r"];
      }
   }
   function §\x1a\x13\x1c§()
   {
      this.api.network.Game.ready(!this["\x1c\x07\x11"]);
      this.ready = !this["\x1c\x07\x11"];
   }
   function §\x1a\x13\x15§()
   {
      this.api.network.Game.leave();
   }
}
