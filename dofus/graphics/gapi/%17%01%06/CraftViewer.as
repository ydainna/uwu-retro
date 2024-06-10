class dofus.graphics.gapi.§\x17\x01\x06§.CraftViewer extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "CraftViewer";
   function CraftViewer()
   {
      super();
   }
   function §\x16\x11§(§\x19\x13\t§)
   {
      this["\x1e\x03\x1d"] = _loc2_;
      this.addToQueue({object:this,method:this["\x18\x13\x14"]});
      return this["\x01\x10"]();
   }
   function §\x1c\x1c§(§\x1a\x02\x04§)
   {
      var _loc3_ = new ank.utils.ExtendedArray();
      _loc3_.push(_loc2_);
      this["\x18\x11\f"] = new dofus.datacenter.Job(-1,_loc3_);
      return this["\t\t"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.CraftViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this["\x1d\x06\x13"]._visible = false;
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
   }
   function addListeners()
   {
      this._btnSlot0.addEventListener("click",this);
      this._btnSlot1.addEventListener("click",this);
      this._btnSlot2.addEventListener("click",this);
      this._btnSlot3.addEventListener("click",this);
      this._btnSlot4.addEventListener("click",this);
      this._btnSlot5.addEventListener("click",this);
      this._btnSlot6.addEventListener("click",this);
      this._btnSlot7.addEventListener("click",this);
      this._btnSlot0.addEventListener("over",this);
      this._btnSlot1.addEventListener("over",this);
      this._btnSlot2.addEventListener("over",this);
      this._btnSlot3.addEventListener("over",this);
      this._btnSlot4.addEventListener("over",this);
      this._btnSlot5.addEventListener("over",this);
      this._btnSlot6.addEventListener("over",this);
      this._btnSlot7.addEventListener("over",this);
      this._btnSlot0.addEventListener("out",this);
      this._btnSlot1.addEventListener("out",this);
      this._btnSlot2.addEventListener("out",this);
      this._btnSlot3.addEventListener("out",this);
      this._btnSlot4.addEventListener("out",this);
      this._btnSlot5.addEventListener("out",this);
      this._btnSlot6.addEventListener("out",this);
      this._btnSlot7.addEventListener("out",this);
   }
   function initTexts()
   {
      this["\x1c\x16\x07"].text = this.api.lang.getText("RECEIPTS");
      this["\x1c\x17\x18"].text = this.api.lang.getText("FILTER");
   }
   function §\x18\x13\x14§()
   {
      var _loc2_ = this.api.datacenter.Basics["\x17\x02\x03"];
      this._btnSlot0.selected = _loc2_[0];
      this._btnSlot1.selected = _loc2_[1];
      this._btnSlot2.selected = _loc2_[2];
      this._btnSlot3.selected = _loc2_[3];
      this._btnSlot4.selected = _loc2_[4];
      this._btnSlot5.selected = _loc2_[5];
      this._btnSlot6.selected = _loc2_[6];
      this._btnSlot7.selected = _loc2_[7];
      if(this["\x1e\x03\x1d"] == undefined)
      {
         return undefined;
      }
      var _loc3_ = this["\x1e\x03\x1d"]["\x17\x01\x1d"];
      var _loc4_ = new ank.utils.ExtendedArray();
      var _loc5_ = 0;
      while(_loc5_ < _loc3_.length)
      {
         var _loc6_ = _loc3_[_loc5_];
         if(_loc2_[_loc6_.itemsCount - 1])
         {
            _loc4_.push(_loc6_);
         }
         _loc5_ = _loc5_ + 1;
      }
      if(_loc4_.length != 0)
      {
         this["\x1d\x06\x13"]._visible = true;
         _loc4_["\x16\x13\x11"]("itemsCount",Array.DESCENDING);
         this["\x1d\x06\x13"].dataProvider = _loc4_;
         this["\x1c\x1b\x17"].text = "";
      }
      else
      {
         this["\x1d\x06\x13"]._visible = false;
         this["\x1c\x1b\x17"].text = this.api.lang.getText("NO_CRAFT_AVAILABLE");
      }
   }
   function §\x17\x01\x19§(§\x19\x13\x07§)
   {
      this._parent["\x15\x1d\x06"](_loc2_.unicID);
   }
   function click(oEvent)
   {
      var _loc3_ = this.api.datacenter.Basics["\x17\x02\x03"];
      var _loc4_ = Number(_loc2_.target._name.substr(8));
      _loc3_[_loc4_] = _loc2_.target.selected;
      this["\x18\x13\x14"]();
   }
   function over(oEvent)
   {
      var _loc3_ = Number(_loc2_.target._name.substr(8)) + 1;
      this.gapi.showTooltip(this.api.lang.getText("CRAFT_SLOT_FILTER",[_loc3_]),_loc2_.target,-20);
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
