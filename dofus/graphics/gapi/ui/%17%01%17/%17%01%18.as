class dofus.§\x18\x03\x10§.gapi.ui.§\x17\x01\x17§.§\x17\x01\x18§ extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function §\x17\x01\x18§()
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
         _loc4_.sortName = _loc4_.name;
         _loc4_.sortLevel = _loc4_["\x18\x11\f"].level;
         _loc4_.sortIsNotFree = _loc4_["\x18\x11\f"]["\x1a\x01\b"]["\x18\x0f\x07"];
         _loc4_.sortMinSlots = Number(_loc4_["\x18\x11\f"]["\x1a\x01\b"]["\x18\x1d\b"]);
         _loc4_.sortSubarea = _loc4_["\x1b\x0b\x17"] != undefined ? _loc4_["\x1b\x0b\x17"] : "-";
         var _loc5_ = _loc4_["\x17\x01\f"];
         _loc4_.sortCoord = _loc5_ == undefined ? "-" : _loc5_.x + "," + _loc5_.y;
         _loc4_.sortInWorkshop = _loc4_.inWorkshop;
         this["\x1c\x1b\x0f"].text = _loc4_.sortName;
         this["\x1c\x1a\x07"].text = _loc4_.sortLevel.toString();
         this["\x1c\x1c\x19"].text = _loc4_["\x1b\x0b\x17"] != undefined ? _loc4_["\x1b\x0b\x17"] : " ";
         var _loc6_ = this["\x1d\r\t"]._parent._parent.api;
         this["\x1d\x04\x16"].text = !_loc4_.sortInWorkshop ? _loc6_.lang.getText("NO") : _loc6_.lang.getText("YES");
         this["\x1c\x15\x11"].text = _loc4_.sortCoord;
         this["\x1c\x1b\x1d"].text = !_loc4_.sortIsNotFree ? _loc6_.lang.getText("NO") : _loc6_.lang.getText("YES");
         this["\x1c\x1a\x1b"].text = _loc4_.sortMinSlots.toString();
         this["\x1d\x05\r"].contentPath = _loc4_["\x18\x02\x14"];
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1c\x1b\x0f"].text = "";
         this["\x1c\x1a\x07"].text = "";
         this["\x1c\x1c\x19"].text = "";
         this["\x1d\x04\x16"].text = "";
         this["\x1c\x15\x11"].text = "";
         this["\x1c\x1b\x1d"].text = "";
         this["\x1c\x1a\x1b"].text = "";
         this["\x1d\x05\r"].contentPath = "";
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._btnProfil.addEventListener("click",this);
   }
   function click(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "_btnProfil")
      {
         this["\x1d\r\t"].gapi.loadUIComponent("CrafterCard","CrafterCard",{crafter:this["\x1e\x03\x18"]});
      }
   }
}
