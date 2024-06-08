class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.PlayerWeight extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "PlayerWeight";
   function PlayerWeight()
   {
      super();
   }
   function §\x1d\x18§(§\x1b\b\x17§)
   {
      this["\x1e\f\x1c"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1e\x06\x18"].styleName = _loc2_;
      }
      return this["\n\x0e"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.PlayerWeight.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
   }
   function addListeners()
   {
      this["\x1e\x06\x18"].addEventListener("over",this);
      this["\x1e\x06\x18"].addEventListener("out",this);
      this.api.datacenter.Player.addEventListener("maxWeightChanged",this);
      this.api.datacenter.Player.addEventListener("maxOverWeightChanged",this);
      this.api.datacenter.Player.addEventListener("currentWeightChanged",this);
   }
   function §\x18\t\x14§()
   {
      if(this["\x1e\f\x1c"] != undefined)
      {
         this["\x1e\x06\x18"].styleName = this["\x1e\f\x1c"];
      }
      this.currentWeightChanged({value:this.api.datacenter.Player.currentWeight});
   }
   function currentWeightChanged(oEvent)
   {
      var _loc3_ = this.api.datacenter.Player.maxWeight;
      var _loc4_ = _loc2_.value;
      var _loc5_ = this.api.datacenter.Player.currentOverWeight;
      var _loc6_ = this.api.datacenter.Player.maxOverWeight;
      this["\x1d\x15\b"] = _loc4_;
      this._nCurrentOverWeight = _loc5_;
      this["\x1e\x06\x18"]["\x18\x19\x12"] = _loc3_;
      this["\x1e\x06\x18"].value = _loc4_;
      this["\x1e\x06\x18"].uberMaximum = _loc6_ != 0 ? _loc6_ : 1;
      this["\x1e\x06\x18"].uberValue = _loc5_;
   }
   function maxWeightChanged(oEvent)
   {
      this["\x1e\x06\x18"]["\x18\x19\x12"] = _loc2_.value;
   }
   function maxOverWeightChanged(oEvent)
   {
      this["\x1e\x06\x18"].uberMaximum = _loc2_.value;
   }
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this["\x1e\x06\x18"])
      {
         this.gapi.showTooltip(this.api.datacenter.Player.getWeightText(),_loc2_.target,0,{bTopAlign:true});
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
