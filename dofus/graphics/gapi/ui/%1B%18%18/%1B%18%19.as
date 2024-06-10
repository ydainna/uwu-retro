class dofus.§\x18\x03\x10§.gapi.ui.§\x1b\x18\x18§.§\x1b\x18\x19§ extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function §\x1b\x18\x19§()
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
         this["\x1c\x15\x19"].text = _loc4_.cost != 0 ? _loc4_.cost : "-";
         this._mcKamas._visible = _loc4_.cost > 0;
         this["\x1c\x15\x14"].text = _loc4_.coordinates;
         this["\x1c\x12\x15"].text = _loc4_.areaName;
         this["\x1d\x02\x0f"].text = _loc4_.subareaName;
         this["\x1d\x0f\x10"]._visible = _loc4_["\x18\x0f\x10"];
         this._mcCurrent._visible = _loc4_["\x18\r\t"];
         this._btnLocate._visible = true;
      }
      else if(this["\x1c\x15\x19"].text != undefined)
      {
         this["\x1c\x15\x19"].text = "";
         this["\x1c\x15\x14"].text = "";
         this["\x1d\x02\x0f"].text = "";
         this["\x1d\x0f\x10"]._visible = false;
         this._mcCurrent._visible = false;
         this._btnLocate._visible = false;
         this._mcKamas._visible = false;
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
      this["\x1d\x0f\x10"]._visible = false;
      this._mcCurrent._visible = false;
      this._btnLocate._visible = false;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._btnLocate.addEventListener("click",this);
   }
   function click(oEvent)
   {
      this["\x1d\r\t"].gapi.loadUIAutoHideComponent("MapExplorer","MapExplorer",{mapID:this["\x1e\x03\x18"].id});
   }
}
