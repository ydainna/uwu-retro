class dofus.§\x18\x03\x10§.gapi.ui.Waypoints extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Waypoints";
   function Waypoints()
   {
      super();
   }
   function §\x11\x19§(§\x17\n\x1b§)
   {
      this.addToQueue({object:this,method:function(d)
      {
         this["\x1c\x0f\x05"] = _loc2_;
         if(this["\x18\t\x1c"])
         {
            this.initData();
         }
      },params:[_loc2_]});
      return this["\x1e\x18\x01"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Waypoints.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this.api.network.Waypoints.leave();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
   }
   function initTexts()
   {
      this["\x1e\x10\t"].title = this.api.lang.getText("WAYPOINT_LIST");
      this["\x1c\x15\x14"].text = this.api.lang.getText("COORDINATES_SMALL");
      this["\x1c\x1b\x0f"].text = this.api.lang.getText("AREA") + " (" + this.api.lang.getText("SUBAREA") + ")";
      this["\x1c\x15\x19"].text = this.api.lang.getText("COST");
      this["\x1c\x1e\x0b"].text = this.api.lang.getText("RESPAWN_SMALL");
      this["\x1c\x16\x17"].text = this.api.lang.getText("CLICK_ON_WAYPOINT");
      this._btnClose2.label = this.api.lang.getText("CLOSE");
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._btnClose2.addEventListener("click",this);
      this._lstWaypoints.addEventListener("itemSelected",this);
   }
   function initData()
   {
      if(this["\x1c\x0f\x05"] != undefined)
      {
         this["\x1c\x0f\x05"].sortOn("fieldToSort",Array.CASEINSENSITIVE);
         this._lstWaypoints.dataProvider = this["\x1c\x0f\x05"];
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnClose":
         case "_btnClose2":
            this["\x16\x15\n"]();
      }
   }
   function itemSelected(oEvent)
   {
      var _loc3_ = _loc2_.row.item;
      if(_loc3_["\x18\r\t"])
      {
         return undefined;
      }
      var _loc4_ = _loc3_.cost;
      if(this.api.datacenter.Player.Kama >= _loc4_)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("DO_U_USE_WAYPOINT",[_loc3_.subareaName,_loc3_.coordinates,_loc4_]),"CAUTION_YESNO",{name:"\x1b\x18\x17",listener:this,params:{waypointID:_loc3_.id}});
      }
      else
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("NOT_ENOUGH_RICH"),"ERROR_BOX");
      }
   }
   function yes(oEvent)
   {
      this.api.network.Waypoints.use(_loc2_.target.params.waypointID);
   }
}
