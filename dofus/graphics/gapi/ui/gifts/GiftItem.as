class dofus.§\x18\x03\x10§.gapi.ui.gifts.GiftItem extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function GiftItem()
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
      if(_loc2_)
      {
         this["\x1e\x03\x18"] = _loc4_;
         var _loc5_ = this["\x1d\r\t"]._parent._parent.api;
         this["\x1c\x1b\x0f"].text = _loc4_.title;
         this["\x1c\x16\x10"].text = _loc4_.date != "" ? _loc5_.lang.getText("EXPIRATION_DATE",[_loc4_.date]) : "";
         this["\x1c\r\x06"].dataProvider = _loc4_.items;
         this["\x1c\r\x06"]._visible = true;
         this._btnAttribution.enabled = !_loc4_.forbidPlayerChoice;
         this._btnAttribution.selected = _loc4_.playerWantsAttribution;
         this._btnAttribution._visible = true;
         this["\x1e\x0f\n"].text = _loc4_.desc;
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1c\x1b\x0f"].text = "";
         this["\x1e\x0f\n"].text = "";
         this["\x1c\r\x06"]._visible = false;
         this._btnAttribution._visible = false;
         this["\x1c\x16\x10"].text = "";
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
      this._btnAttribution._visible = false;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._btnAttribution.addEventListener("click",this);
      this._btnAttribution.addEventListener("over",this);
      this._btnAttribution.addEventListener("out",this);
      this["\x1c\r\x06"].addEventListener("overItem",this);
      this["\x1c\r\x06"].addEventListener("outItem",this);
      this["\x1c\x16\x10"].addEventListener("over",this);
      this["\x1c\x16\x10"].addEventListener("out",this);
      this["\x1c\x16\x10"].enableOverEvents = true;
   }
   function click(oEvent)
   {
      var _loc3_ = this["\x1d\r\t"]._parent._parent.api;
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._btnAttribution)
      {
         this["\x1e\x03\x18"].playerWantsAttribution = this._btnAttribution.selected;
         this["\x1e\x03\x18"].onAttributionStateChanged();
      }
   }
   function over(oEvent)
   {
      var _loc3_ = this["\x1d\r\t"]._parent._parent.api;
      switch(_loc2_.target)
      {
         case this._btnAttribution:
            _loc3_.ui.showTooltip(_loc3_.lang.getText("GIFT_UI_CHECK_TO_ATTRIBUTE"),_loc2_.target,-20,{bXLimit:true,bYLimit:false});
            break;
         case this["\x1c\x16\x10"]:
            _loc3_.ui.showTooltip(_loc3_.lang.getText("EXPIRATION_GIFT",[this["\x1e\x03\x18"].date]),_loc2_.target,0,{bTopAlign:true});
      }
   }
   function out(oEvent)
   {
      var _loc3_ = this["\x1d\r\t"]._parent._parent.api;
      switch(_loc2_.target)
      {
         case this._btnAttribution:
         case this["\x1c\x16\x10"]:
            _loc3_.ui.hideTooltip();
      }
   }
   function overItem(oEvent)
   {
      var _loc3_ = _loc2_.target;
      var _loc4_ = dofus.datacenter.["\x18\x10\x15"](_loc3_.contentData);
      _loc4_["\x1b\x01\b"](_loc3_,_loc4_.style);
   }
   function outItem(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
