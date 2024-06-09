class dofus.§\x18\x03\x10§.gapi.ui.GuildHouseRights extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "GuildHouseRights";
   function GuildHouseRights()
   {
      super();
   }
   function §\x14\x14§(§\x18\x05\x19§)
   {
      this["\x1c\x11\x05"] = _loc2_;
      return this.house;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.GuildHouseRights.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function initTexts()
   {
      this._winBackground.title = this.api.lang.getText("GUILD_HOUSE");
      this["\x1c\x12\x04"].text = this.api.lang.getText("GUILD_HOUSE_ENABLE_FOR_THIS_HOUSE");
      this["\x1c\x18\x10"].text = this.api.lang.getText("GUILD_HOUSE_NOTICE");
      this["\x1c\x17\x02"].text = this.api.lang.getText("GUILD_HOUSE_DISPLAY_EMBLEM_ON_DOOR_TITLE") + ":";
      this["\x1c\x17\x04"].text = this.api.lang.getText("GUILD_HOUSE_DISPLAY_EMBLEM_FOR_OTHERS");
      this["\x1c\x17\x03"].text = this.api.lang.getText("GUILD_HOUSE_DISPLAY_EMBLEM_FOR_GUILD");
      this["\x1c\x18\x1b"].text = this.api.lang.getText("GUILD_HOUSE_HOUSE_ACCESS_TITLE") + ":";
      this["\x1c\x12\r"].text = this.api.lang.getText("GUILD_HOUSE_ACCESS_HOUSE_ALLOW_GUILDMATES");
      this["\x1c\x16\x15"].text = this.api.lang.getText("GUILD_HOUSE_ACCESS_HOUSE_DENY_OTHERS");
      this["\x1c\x1e\x18"].text = this.api.lang.getText("GUILD_HOUSE_SAFES_ACCESS_TITLE") + ":";
      this["\x1c\x12\x0e"].text = this.api.lang.getText("GUILD_HOUSE_ACCESS_SAFES_ALLOW_GUILDMATES");
      this["\x1c\x16\x16"].text = this.api.lang.getText("GUILD_HOUSE_ACCESS_SAFES_DENY_OTHERS");
      this["\x1c\x1c\f"].text = this.api.lang.getText("GUILD_HOUSE_OTHER_TITLE") + ":";
      this["\x1c\x12\x0f"].text = this.api.lang.getText("GUILD_HOUSE_ALLOW_RESPAWN");
      this["\x1c\x12\x10"].text = this.api.lang.getText("GUILD_HOUSE_ALLOW_TELEPORT");
      this._btnCancel.label = this.api.lang.getText("CANCEL_SMALL");
      this._btnValidate.label = this.api.lang.getText("VALIDATE");
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this["\x1c\t\x17"].addEventListener("click",this);
      this["\x1c\n\x1c"].addEventListener("click",this);
      this["\x1c\n\x1b"].addEventListener("click",this);
      this["\x1c\b\x17"].addEventListener("click",this);
      this["\x1c\t\x11"].addEventListener("click",this);
      this["\x1c\b\x18"].addEventListener("click",this);
      this["\x1c\t\x12"].addEventListener("click",this);
      this["\x1c\b\x19"].addEventListener("click",this);
      this["\x1c\b\x1a"].addEventListener("click",this);
      this._btnCancel.addEventListener("click",this);
      this._btnValidate.addEventListener("click",this);
      this["\x1c\x11\x05"].addEventListener("shared",this);
      this["\x1c\x11\x05"].addEventListener("guild",this);
   }
   function initData()
   {
      this.api.network.Houses.state();
   }
   function §\x1b\x14\x01§()
   {
      this["\x1c\t\x17"].selected = this["\x1c\x11\x05"]["\x18\x0f\x14"];
      this["\x1c\n\x1b"].selected = this["\x1c\x11\x05"]["\x18\x0f\x14"] && this["\x1c\x11\x05"]["\x18\x05\x10"](dofus.datacenter.["\x18\x07\x11"]["\x18\x04\r"]);
      this["\x1c\n\x1c"].selected = this["\x1c\x11\x05"]["\x18\x0f\x14"] && this["\x1c\x11\x05"]["\x18\x05\x10"](dofus.datacenter.["\x18\x07\x11"]["\x18\x04\x0e"]);
      this["\x1c\b\x17"].selected = this["\x1c\x11\x05"]["\x18\x0f\x14"] && this["\x1c\x11\x05"]["\x18\x05\x10"](dofus.datacenter.["\x18\x07\x11"]["\x18\x04\f"]);
      this["\x1c\t\x11"].selected = this["\x1c\x11\x05"]["\x18\x0f\x14"] && this["\x1c\x11\x05"]["\x18\x05\x10"](dofus.datacenter.["\x18\x07\x11"]["\x18\x04\x10"]);
      this["\x1c\b\x18"].selected = this["\x1c\x11\x05"]["\x18\x0f\x14"] && this["\x1c\x11\x05"]["\x18\x05\x10"](dofus.datacenter.["\x18\x07\x11"]["\x18\x04\x0b"]);
      this["\x1c\t\x12"].selected = this["\x1c\x11\x05"]["\x18\x0f\x14"] && this["\x1c\x11\x05"]["\x18\x05\x10"](dofus.datacenter.["\x18\x07\x11"]["\x18\x04\x0f"]);
      this["\x1c\b\x19"].selected = this["\x1c\x11\x05"]["\x18\x0f\x14"] && this["\x1c\x11\x05"]["\x18\x05\x10"](dofus.datacenter.["\x18\x07\x11"]["\x18\x04\x11"]);
      this["\x1c\b\x1a"].selected = this["\x1c\x11\x05"]["\x18\x0f\x14"] && this["\x1c\x11\x05"]["\x18\x05\x10"](dofus.datacenter.["\x18\x07\x11"]["\x18\x04\x12"]);
      this._mcMask._visible = !this["\x1c\t\x17"].selected;
      this._eEmblem.data = this.api.datacenter.Player.guildInfos["\x17\f\x14"];
   }
   function validate()
   {
      var _loc2_ = 0;
      if(this["\x1c\n\x1b"].selected)
      {
         _loc2_ += dofus.datacenter.["\x18\x07\x11"]["\x18\x04\r"];
      }
      if(this["\x1c\n\x1c"].selected)
      {
         _loc2_ += dofus.datacenter.["\x18\x07\x11"]["\x18\x04\x0e"];
      }
      if(this["\x1c\b\x17"].selected)
      {
         _loc2_ += dofus.datacenter.["\x18\x07\x11"]["\x18\x04\f"];
      }
      if(this["\x1c\t\x11"].selected)
      {
         _loc2_ += dofus.datacenter.["\x18\x07\x11"]["\x18\x04\x10"];
      }
      if(this["\x1c\b\x18"].selected)
      {
         _loc2_ += dofus.datacenter.["\x18\x07\x11"]["\x18\x04\x0b"];
      }
      if(this["\x1c\t\x12"].selected)
      {
         _loc2_ += dofus.datacenter.["\x18\x07\x11"]["\x18\x04\x0f"];
      }
      if(this["\x1c\b\x19"].selected)
      {
         _loc2_ += dofus.datacenter.["\x18\x07\x11"]["\x18\x04\x11"];
      }
      if(this["\x1c\b\x1a"].selected)
      {
         _loc2_ += dofus.datacenter.["\x18\x07\x11"]["\x18\x04\x12"];
      }
      this.api.network.Houses["\x1a\x0e\x13"](_loc2_);
      this["\x1b\x13\x13"]();
   }
   function guild(oEvent)
   {
      this.update();
   }
   function shared(oEvent)
   {
      this.update();
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\t\x17"]:
            if(this["\x1c\t\x17"].selected)
            {
               this.api.network.Houses["\x1a\x1c\x07"]();
            }
            else
            {
               this.api.network.Houses["\x1b\x13\x1d"]();
            }
            break;
         case this._btnValidate:
            this.validate();
            break;
         case this._btnClose:
         case this._btnCancel:
            this["\x1b\x13\x13"]();
      }
   }
}
