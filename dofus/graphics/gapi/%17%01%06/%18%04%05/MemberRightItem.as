class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.§\x18\x04\x05§.MemberRightItem extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function MemberRightItem()
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
      var _loc5_ = _global.api;
      if(_loc2_)
      {
         this["\x1e\x03\x18"] = _loc4_;
         this._lblRight.text = _loc5_.lang.getText(_loc4_.name);
         this._btnRight.selected = _loc4_["\x18\x05\x10"];
         this._bRightOriginalState = _loc4_["\x18\x05\x10"];
         this._btnRight.enabled = _loc4_.canSetRight;
         this._btnRight._visible = true;
         this._nRightValue = _loc4_.rightValue;
      }
      else if(this._lblRight.text != undefined)
      {
         this._lblRight.text = "";
         this._btnRight.selected = false;
         this._btnRight.enabled = false;
         this._nRightValue = undefined;
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
      this._btnRight._visible = false;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._btnRight.addEventListener("click",this);
   }
   function click(oEvent)
   {
      var _loc3_ = _global.api;
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "_btnRight")
      {
         this["\x1e\x03\x18"]["\x18\x05\x10"] = this._btnRight.selected;
         this["\x1e\x03\x18"].needsUpdate = this["\x1e\x03\x18"]["\x18\x05\x10"] != this._bRightOriginalState;
         this.gapi.getUIComponent("GuildMemberInfos")["\x1b\x14\x14"]();
      }
   }
}
