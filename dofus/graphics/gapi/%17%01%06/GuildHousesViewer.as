class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.GuildHousesViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "GuildHousesViewer";
   function GuildHousesViewer()
   {
      super();
   }
   function §\x14\x15§(§\x17\x0b\x03§)
   {
      this["\x1b\x14\x14"](_loc2_);
      return this["\x1e\x1b\x1a"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.GuildHousesViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
   }
   function initTexts()
   {
      this["\x1c\x16\x17"].text = this.api.lang.getText("GUILD_HOUSES_LIST");
      this["\x1c\x18\x1a"].text = this.api.lang.getText("HOUSE_WORD");
      this["\x1c\x1c\r"].text = this.api.lang.getText("OWNER_WORD");
      this["\x1c\x15\x15"].text = this.api.lang.getText("COORDINATES");
      this["\x1c\x1c\x0e"].text = this.api.lang.getText("OWNER_WORD");
      this["\x1d\x01\x15"].text = this.api.lang.getText("SKILLS");
      this["\x1c\x1e\x11"].text = this.api.lang.getText("RIGHTS");
      this["\x1d\x01\b"].text = this.api.lang.getText("SELECT_A_HOUSE");
      this["\x1c\x0b\b"].label = this.api.lang.getText("JOIN_SMALL");
   }
   function addListeners()
   {
      this["\x1d\x06\x16"].addEventListener("itemSelected",this);
      this["\x1c\x0b\b"].addEventListener("click",this);
   }
   function §\x1b\x14\x14§(§\x17\x0b\x03§)
   {
      this["\x1d\x06\x16"].dataProvider = _loc2_;
   }
   function itemSelected(oEvent)
   {
      this._hSelectedHouse = dofus.datacenter.["\x18\x07\x11"](_loc2_.row.item);
      this["\x1c\x18\x1d"].text = this._hSelectedHouse.name;
      this["\x1c\x18\x1c"].text = this._hSelectedHouse["\x17\x01\r"].x + ";" + this._hSelectedHouse["\x17\x01\r"].y;
      this["\x1c\x19\x01"].text = this._hSelectedHouse["\x1a\x03\x06"];
      var _loc3_ = new ank.utils.ExtendedArray();
      var _loc4_ = 0;
      while(_loc4_ < this._hSelectedHouse.skills.length)
      {
         var _loc5_ = new dofus.datacenter.["\x1b\x02\n"](this._hSelectedHouse.skills[_loc4_]);
         if(!_global.isNaN(_loc5_.id))
         {
            _loc3_.push({id:_loc5_.id,label:_loc5_.description});
         }
         _loc4_ = _loc4_ + 1;
      }
      this["\x1d\x07\x03"].dataProvider = _loc3_;
      this["\x1d\x06\x1d"].dataProvider = this._hSelectedHouse["\x17\x18\x1b"]();
      this["\x1c\x0b\b"]._visible = this._hSelectedHouse["\x18\x05\x10"](dofus.datacenter.["\x18\x07\x11"]["\x18\x04\x12"]);
      if(!this["\x1c\x0b\b"]._visible)
      {
         if(!this["\x1d\f\b"].moved)
         {
            this["\x1d\f\b"].moved = true;
            this["\x1d\f\b"]._y += this["\x1c\x0b\b"]._height / 2;
         }
      }
      this._mcMask._visible = false;
      this["\x1d\x01\b"]._visible = false;
   }
   function click(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this["\x1c\x0b\b"])
      {
         if(this._hSelectedHouse == null)
         {
            return undefined;
         }
         if(!this._hSelectedHouse["\x18\x05\x10"](dofus.datacenter.["\x18\x07\x11"]["\x18\x04\x12"]))
         {
            return undefined;
         }
         this.api.network.Guild["\x1b\x0f\x07"](this._hSelectedHouse.id,this._hSelectedHouse.instanceID);
      }
   }
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this["\x1c\x0b\b"])
      {
         this.gapi.showTooltip(this.api.lang.getText("GUILD_HOUSE_TELEPORT_TOOLTIP"),this["\x1c\x0b\b"],-20);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
