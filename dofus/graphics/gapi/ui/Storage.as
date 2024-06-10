class dofus.graphics.gapi.ui.Storage extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Storage";
   function Storage()
   {
      super();
   }
   function §\x11\x19§(§\x19\x12\x10§)
   {
      this._oData = _loc2_;
      return this["\x1e\x18\x01"]();
   }
   function §\x15\x1d§(§\x16\x0e\x1c§)
   {
      this["\x1c\x06\x14"] = _loc2_;
      return this.isMount;
   }
   function §\x1e\x17\x13§()
   {
      if(this._ivInventoryViewer != undefined && this._ivInventoryViewer["\x17\x03\x19"] != undefined)
      {
         return this._ivInventoryViewer["\x17\x03\x19"];
      }
      if(this._ivInventoryViewer2 != undefined && this._ivInventoryViewer2["\x17\x03\x19"] != undefined)
      {
         return this._ivInventoryViewer2["\x17\x03\x19"];
      }
      return undefined;
   }
   function §\x01\x0e§()
   {
      return this["\x1c\x11\x13"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Storage.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      if(this["\x1c\x06\x14"] == true)
      {
         this.api.ui.loadUIComponent("Mount","Mount");
      }
      this.api.network.Exchange.leave();
      return true;
   }
   function createChildren()
   {
      if(this["\x1c\x06\x14"] != true)
      {
         this["\x1e\x06\x13"]._visible = false;
      }
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.initTexts});
      this["\x18\x06\x0f"](true);
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._ivInventoryViewer.addEventListener("selectedItem",this);
      this._ivInventoryViewer.addEventListener("dblClickItem",this);
      this._ivInventoryViewer.addEventListener("dropItem",this);
      this._ivInventoryViewer.addEventListener("dragKama",this);
      this._ivInventoryViewer2.addEventListener("selectedItem",this);
      this._ivInventoryViewer2.addEventListener("dblClickItem",this);
      this._ivInventoryViewer2.addEventListener("dropItem",this);
      this._ivInventoryViewer2.addEventListener("dragKama",this);
      if(this._oData != undefined)
      {
         this._oData.addEventListener("modelChanged",this);
      }
      else
      {
         ank.utils.Logger.err("[Storage] il n\'y a pas de data");
      }
   }
   function initTexts()
   {
      this["\x1e\x10\x11"].title = this.api.datacenter.Player.data.name;
      if(this["\x1c\x06\x14"] != true)
      {
         this["\x1e\x10\x12"].title = this.api.lang.getText("STORAGE");
      }
      else
      {
         this["\x1e\x10\x12"].title = this.api.lang.getText("MY_MOUNT");
      }
   }
   function initData()
   {
      if(this["\x1c\x06\x14"] == true)
      {
         this._ivInventoryViewer["\x1a\x1e\x04"] = false;
         this._ivInventoryViewer2["\x1a\x1e\x04"] = false;
      }
      this._ivInventoryViewer.dataProvider = this.api.datacenter.Player.Inventory;
      this._ivInventoryViewer["\x18\x11\x17"] = this.api.datacenter.Player;
      this._ivInventoryViewer2["\x18\x11\x17"] = this._oData;
      this._ivInventoryViewer["\x16\x1a\x17"] = true;
      this._ivInventoryViewer2["\x16\x1a\x11"] = this["\x1c\x06\x14"];
      this.modelChanged();
   }
   function §\x18\x06\x0f§(§\x16\f\x12§)
   {
      this["\x1c\x11\x13"]._visible = !_loc2_;
      this["\x1e\x10\x14"]._visible = !_loc2_;
   }
   function click(oEvent)
   {
      this["\x16\x15\n"]();
      var _loc0_ = _loc2_.target;
   }
   function selectedItem(oEvent)
   {
      if(_loc2_.item == undefined)
      {
         this["\x18\x06\x0f"](true);
      }
      else
      {
         this["\x18\x06\x0f"](false);
         this["\x1c\x11\x13"]["\x18\x10\x17"] = _loc2_.item;
         switch(_loc2_.target._name)
         {
            case "_ivInventoryViewer":
               this._ivInventoryViewer2["\x1a\x16\x14"](this._ivInventoryViewer["\x17\x03\x12"]);
               break;
            case "_ivInventoryViewer2":
               this._ivInventoryViewer["\x1a\x16\x14"](this._ivInventoryViewer2["\x17\x03\x12"]);
         }
      }
   }
   function dblClickItem(oEvent)
   {
      var _loc3_ = _loc2_.item;
      var _loc4_ = _loc2_.targets;
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      var _loc5_ = Key.isDown(dofus.Constants["\x1a\x13\x11"]);
      switch(_loc2_.target._name)
      {
         case "_ivInventoryViewer":
            if(_loc5_ && _loc4_.length > 1)
            {
               this["\x18\x1e\x1a"](_loc4_,true);
            }
            else
            {
               this["\x18\x1e\x19"](_loc3_,true,_loc5_);
            }
            break;
         case "_ivInventoryViewer2":
            if(_loc5_ && _loc4_.length > 1)
            {
               this["\x18\x1e\x1a"](_loc4_,false);
               break;
            }
            this["\x18\x1e\x19"](_loc3_,false,_loc5_);
            break;
      }
   }
   function §\x18\x1e\x1a§(§\x16\x02\x06§, §\x16\b\x11§)
   {
      if((_loc3_ && this["\x1c\x06\x14"] || !_loc3_) && !this.api.datacenter.Player["\x16\x16\x13"](_loc2_,_loc3_ && this["\x1c\x06\x14"]))
      {
         this.api.kernel.showMessage(this.api.lang.getText("INFORMATIONS"),this.api.lang.getText("SRV_MSG_6"),"ERROR_BOX",{name:undefined});
         return undefined;
      }
      var _loc4_ = new Array();
      var _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         var _loc6_ = _loc2_[_loc5_];
         _loc4_.push({Add:_loc3_,ID:_loc6_.ID,Quantity:_loc6_.Quantity});
         _loc5_ = _loc5_ + 1;
      }
      this.api.network.Exchange["\x19\x01\x02"](_loc4_);
   }
   function §\x18\x1e\x19§(§\x19\x13\x07§, §\x16\b\x11§, §\x16\x0f\x02§)
   {
      var _loc5_ = _loc2_.Quantity;
      if(_loc3_ && this["\x1c\x06\x14"] || !_loc3_)
      {
         _loc5_ = this.api.datacenter.Player["\x17\x1d\x07"](_loc2_,_loc3_ && this["\x1c\x06\x14"]);
         if(_loc5_ <= 0)
         {
            this.api.kernel.showMessage(this.api.lang.getText("INFORMATIONS"),this.api.lang.getText("SRV_MSG_6"),"ERROR_BOX",{name:undefined});
            return undefined;
         }
      }
      var _loc6_ = 1;
      if(_loc4_)
      {
         _loc6_ = _loc5_;
      }
      this.api.network.Exchange["\x19\x01\x01"](_loc3_,_loc2_,_loc6_);
   }
   function modelChanged(oEvent)
   {
      this._ivInventoryViewer2.dataProvider = this._oData["\x18\f\n"];
   }
   function dropItem(oEvent)
   {
      var _loc3_ = _loc2_.item;
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      if(_loc3_.isShortcut)
      {
         return undefined;
      }
      switch(_loc2_.target._name)
      {
         case "_ivInventoryViewer":
            this.api.network.Exchange["\x19\x01\x01"](false,_loc3_,_loc2_.quantity);
            break;
         case "_ivInventoryViewer2":
            this.api.network.Exchange["\x19\x01\x01"](true,_loc3_,_loc2_.quantity);
      }
   }
   function dragKama(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._ivInventoryViewer:
            var _loc3_ = dofus.Constants.isIntAdditionOverFlow(_loc2_.quantity,this._oData.Kama);
            if(_loc3_)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("ERROR_70"),"ERROR_BOX");
               return undefined;
            }
            this.api.network.Exchange["\x19\x01\x03"](_loc2_.quantity);
            break;
         case this._ivInventoryViewer2:
            var _loc4_ = dofus.Constants.isIntAdditionOverFlow(_loc2_.quantity,this.api.datacenter.Player.Kama);
            if(_loc4_)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("ERROR_70"),"ERROR_BOX");
               return undefined;
            }
            this.api.network.Exchange["\x19\x01\x03"](0 - _loc2_.quantity);
            break;
      }
   }
}
