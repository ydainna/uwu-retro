class dofus.§\x18\x03\x10§.gapi.ui.Mount extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Mount";
   function Mount()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Mount.CLASS_NAME);
   }
   function destroy()
   {
      this.gapi.hideTooltip();
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.mountChanged,params:[{mount:this.api.datacenter.Player.mount}]});
   }
   function addListeners()
   {
      this["\x1c\n\t"].addEventListener("click",this);
      this["\x1c\n\b"].addEventListener("click",this);
      this["\x1c\n\b"].addEventListener("over",this);
      this["\x1c\n\b"].addEventListener("out",this);
      this["\x1c\x0b\x12"].addEventListener("click",this);
      this["\x1c\x0b\x12"].addEventListener("over",this);
      this["\x1c\x0b\x12"].addEventListener("out",this);
      this["\x1c\n\x16"].addEventListener("click",this);
      this["\x1c\n\x16"].addEventListener("over",this);
      this["\x1c\n\x16"].addEventListener("out",this);
      this._btnInventory.addEventListener("click",this);
      this._btnInventory.addEventListener("over",this);
      this._btnInventory.addEventListener("out",this);
      this._btnAction.addEventListener("click",this);
      this._btnAction.addEventListener("over",this);
      this._btnAction.addEventListener("out",this);
      this.api.datacenter.Player.addEventListener("mountXPPercentChanged",this);
      this.api.datacenter.Player.addEventListener("mountChanged",this);
      this._btnClose.addEventListener("click",this);
   }
   function initData()
   {
      this.mountChanged();
   }
   function initTexts()
   {
      this["\x1e\x10\b"].title = this.api.lang.getText("MY_MOUNT");
      this["\x1c\x1b\x0f"].text = this.api.lang.getText("NAME_BIG");
      this["\x1c\x1c\x16"].text = this.api.lang.getText("MOUNT_PERCENT_XP");
      this["\x1c\x19\x0e"].text = this.api.lang.getText("MOUNT_INVENTORY_2");
   }
   function editName(§\x16\x0b\x03§)
   {
      this["\x1e\x0e\x11"]._visible = _loc2_;
      this["\x1c\n\t"]._visible = _loc2_;
      this["\x1d\x10\x18"]._visible = _loc2_;
      this["\x1c\x1b\x10"]._visible = !_loc2_;
      this["\x1c\n\b"]._visible = !_loc2_;
   }
   function mountXPPercentChanged(oEvent)
   {
      this["\x1c\x1c\x17"].text = this.api.datacenter.Player.mountXPPercent + "%";
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\n\t"]:
            if(this["\x1e\x0e\x11"].text != "")
            {
               this.api.network.Mount["\x1a\r\x05"](this["\x1e\x0e\x11"].text);
            }
            break;
         case this["\x1c\n\b"]:
            this.editName(true);
            break;
         case this["\x1c\x0b\x12"]:
            var _loc3_ = this.gapi.loadUIComponent("PopupQuantity","PopupQuantity",{value:this.api.datacenter.Player.mountXPPercent,min:0,max:90});
            _loc3_.addEventListener("validate",this);
            break;
         case this._btnClose:
            this["\x16\x15\n"]();
            break;
         case this["\x1c\n\x16"]:
            this.api.network.Mount["\x1a\x0e\x0e"]();
            break;
         case this._btnInventory:
            this.api.network.Exchange["\x1a\r\x13"](15);
            break;
         case this._btnAction:
            var _loc4_ = this.api.ui["\x17\x02\x19"]();
            var _loc5_ = this.api.datacenter.Player.mount;
            _loc4_["\x15\x1e\x18"](_loc5_.name);
            _loc4_["\x15\x1d\x12"](this.api.lang.getText("MOUNT_CASTRATE_TOOLTIP"),this,this["\x16\x17\x0b"]);
            _loc4_["\x15\x1d\x12"](this.api.lang.getText("MOUNT_KILL_TOOLTIP"),this,this["\x18\x12\x04"]);
            _loc4_.show(_root._xmouse,_root._ymouse);
      }
   }
   function §\x16\x17\x0b§()
   {
      this.api.kernel.showMessage(undefined,this.api.lang.getText("DO_U_CASTRATE_YOUR_MOUNT"),"CAUTION_YESNO",{name:"CastrateMount",listener:this});
   }
   function §\x18\x12\x04§()
   {
      this.api.kernel.showMessage(undefined,this.api.lang.getText("DO_U_KILL_YOUR_MOUNT"),"CAUTION_YESNO",{name:"KillMount",listener:this});
   }
   function nameChanged(oEvent)
   {
      var _loc3_ = this.api.datacenter.Player.mount;
      this["\x1c\x1b\x10"].text = _loc3_.name;
      this["\x1e\x0e\x11"].text = _loc3_.name;
      this.editName(false);
   }
   function mountChanged(oEvent)
   {
      var _loc3_ = this.api.datacenter.Player.mount;
      if(_loc3_ != undefined)
      {
         _loc3_.addEventListener("nameChanged",this);
         this["\x1d\x12\x12"].mount = _loc3_;
         this.mountXPPercentChanged();
         this.nameChanged();
      }
      else
      {
         this["\x16\x15\n"]();
      }
   }
   function validate(oEvent)
   {
      var _loc3_ = _loc2_.value;
      if(_global.isNaN(_loc3_))
      {
         return undefined;
      }
      if(_loc3_ > 90)
      {
         return undefined;
      }
      if(_loc3_ < 0)
      {
         return undefined;
      }
      this.api.network.Mount["\x1a\x1b\x06"](_loc3_);
   }
   function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\n\b"]:
            this.gapi.showTooltip(this.api.lang.getText("MOUNT_RENAME_TOOLTIP"),_loc2_.target,-30,{bXLimit:true,bYLimit:false});
            break;
         case this._btnInventory:
            this.gapi.showTooltip(this.api.lang.getText("MOUNT_INVENTORY_ACCES"),_loc2_.target,-30,{bXLimit:true,bYLimit:false});
            break;
         case this["\x1c\n\x16"]:
            this.gapi.showTooltip(this.api.lang.getText("MOUNT_RIDE_TOOLTIP"),_loc2_.target,-30,{bXLimit:true,bYLimit:false});
            break;
         case this._btnAction:
            this.gapi.showTooltip(this.api.lang.getText("MOUNT_ACTION_TOOLTIP"),_loc2_.target,-30,{bXLimit:true,bYLimit:false});
            break;
         case this["\x1c\x0b\x12"]:
            this.gapi.showTooltip(this.api.lang.getText("MOUNT_XP_PERCENT_TOOLTIP"),_loc2_.target,-30,{bXLimit:true,bYLimit:false});
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function yes(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "AskYesNoKillMount":
            this.api.network.Mount["\x18\x12\x03"]();
            break;
         case "AskYesNoCastrateMount":
            this.api.network.Mount["\x16\x17\n"]();
      }
   }
}
