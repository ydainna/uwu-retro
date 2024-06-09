class dofus.§\x18\x03\x10§.gapi.ui.Guild extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Guild";
   var §\x1e\b\x19§ = "Members";
   function Guild()
   {
      super();
   }
   function §\x11\x14§(§\x1b\b\x1b§)
   {
      this["\x1e\b\x19"] = _loc2_;
      return this["\x1e\x17\x17"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Guild.CLASS_NAME);
   }
   function destroy()
   {
      this.gapi.unloadUIComponent("GuildMemberInfos");
      this.gapi.hideTooltip();
      this.api.datacenter.Player.guildInfos.removeEventListener("modelChanged",this);
      this.api.datacenter.Player.guildInfos.removeEventListener("rightsChanged",this);
      this["\x16\x1a\n"]();
      if(this["\x1e\b\x19"] == "TaxCollectors")
      {
         this.api.network.Guild["\x18\x14\x02"]();
      }
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this.api.network.Guild,method:this.api.network.Guild["\x17\x19\x04"]});
      this.addToQueue({object:this,method:this.setCurrentTab,params:[this["\x1e\b\x19"]]});
      this["\x1d\x0e\x12"]._visible = false;
      this._mcCaution._visible = this["\x1d\x03\x1a"]._visible = false;
   }
   function initTexts()
   {
      this._btnTabMembers.label = this.api.lang.getText("GUILD_MEMBERS");
      this._btnTabInformations.label = this.api.lang.getText("INFORMATIONS");
      this._btnTabBoosts.label = this.api.lang.getText("GUILD_BOOSTS");
      this._btnTabTaxCollectors.label = this.api.lang.getText("GUILD_TAXCOLLECTORS");
      this._btnTabMountParks.label = this.api.lang.getText("MOUNT_PARK");
      this._btnTabGuildHouses.label = this.api.lang.getText("HOUSES_WORD");
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._btnTabMembers.addEventListener("click",this);
      this._btnTabInformations.addEventListener("click",this);
      this._btnTabBoosts.addEventListener("click",this);
      this._btnTabTaxCollectors.addEventListener("click",this);
      this._btnTabMountParks.addEventListener("click",this);
      this._btnTabGuildHouses.addEventListener("click",this);
      this._btnCancel.addEventListener("click",this);
      this._btnSave.addEventListener("click",this);
      this._btnEdit.addEventListener("click",this);
      this.api.datacenter.Player.guildInfos.addEventListener("modelChanged",this);
      this.api.datacenter.Player.guildInfos.addEventListener("rightsChanged",this);
      this._pbXP.addEventListener("over",this);
      this._pbXP.addEventListener("out",this);
      this.toggleInfosEditor(false);
      this._btnEdit.enabled = this.api.datacenter.Player.guildInfos["\x1a\x05\x15"].canEditGuildNotes || this.api.datacenter.Player.guildInfos["\x1a\x05\x15"]["\x18\f\x1a"];
   }
   function initData()
   {
      var _loc2_ = this.api.datacenter.Player.guildInfos;
      var _loc3_ = _loc2_["\x17\f\x14"];
      this._eEmblem.backID = _loc3_.backID;
      this._eEmblem.backColor = _loc3_.backColor;
      this._eEmblem.upID = _loc3_.upID;
      this._eEmblem.upColor = _loc3_.upColor;
      this["\x1e\x10\t"].title = this.api.lang.getText("GUILD") + " \'" + _loc2_.name + "\'";
   }
   function §\x1b\x14\x13§()
   {
      this._mcTabViewer.removeMovieClip();
      switch(this["\x1e\b\x19"])
      {
         case "Members":
            this.attachMovie("GuildMembersViewer","_mcTabViewer",this.getNextHighestDepth(),{_x:this["\x1d\x0e\x12"]._x,_y:this["\x1d\x0e\x12"]._y});
            this.api.datacenter.Player.guildInfos.members["\x1a\x0b\x16"]();
            this.api.network.Guild["\x17\x19\x06"]();
            break;
         case "Informations":
            this.attachMovie("GuildInformationsViewer","_mcTabViewer",this.getNextHighestDepth(),{_x:this["\x1d\x0e\x12"]._x,_y:this["\x1d\x0e\x12"]._y});
            this.api.network.Guild.getInformationsGuild();
            break;
         case "Boosts":
            this.attachMovie("GuildBoostsViewer","_mcTabViewer",this.getNextHighestDepth(),{_x:this["\x1d\x0e\x12"]._x,_y:this["\x1d\x0e\x12"]._y});
            this.api.network.Guild["\x17\x19\x03"]();
            break;
         case "TaxCollectors":
            this.attachMovie("TaxCollectorsViewer","_mcTabViewer",this.getNextHighestDepth(),{_x:this["\x1d\x0e\x12"]._x,_y:this["\x1d\x0e\x12"]._y});
            this.api.datacenter.Player.guildInfos["\x1b\x0e\x06"]["\x1a\x0b\x16"]();
            this.api.network.Guild["\x17\x19\b"]();
            break;
         case "MountParks":
            this.attachMovie("GuildMountParkViewer","_mcTabViewer",this.getNextHighestDepth(),{_x:this["\x1d\x0e\x12"]._x,_y:this["\x1d\x0e\x12"]._y});
            this.api.network.Guild["\x17\x19\x07"]();
            break;
         case "GuildHouses":
            this.attachMovie("GuildHousesViewer","_mcTabViewer",this.getNextHighestDepth(),{_x:this["\x1d\x0e\x12"]._x,_y:this["\x1d\x0e\x12"]._y});
            this.api.network.Guild["\x17\x19\x05"]();
      }
   }
   function setCurrentTab(§\x1b\x04\x07§)
   {
      if(this["\x1e\b\x19"] == "TaxCollectors")
      {
         this.api.network.Guild["\x18\x14\x02"]();
      }
      var _loc3_ = this["_btnTab" + this["\x1e\b\x19"]];
      var _loc4_ = this["_btnTab" + _loc2_];
      _loc3_.selected = true;
      _loc3_.enabled = true;
      _loc4_.selected = false;
      _loc4_.enabled = false;
      this["\x1e\b\x19"] = _loc2_;
      this["\x1b\x14\x13"]();
   }
   function §\x16\x1a\n§()
   {
      var _loc2_ = this.api.datacenter.Player.guildInfos;
      if(_loc2_["\x18\x0e\x15"])
      {
         this.api.network.Guild["\x18\x14\x01"](_loc2_["\x17\x06\x11"]);
         this.api.kernel.showMessage(this.api.lang.getText("INFORMATIONS"),this.api.lang.getText("AUTO_DISJOIN_TAX"),"ERROR_BOX");
      }
   }
   function toggleInfosEditor(§\x16\x0b\t§)
   {
      this._taGuildNote["\x17\x0b\x1c"] = _loc2_;
      this._taGuildNote.html = !_loc2_;
      this._btnCancel._visible = _loc2_;
      this._btnSave._visible = _loc2_;
      this._mcEditMode._visible = _loc2_;
      this._btnEdit._visible = !_loc2_;
      if(_loc2_)
      {
         this._taGuildNote.setFocus(false);
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnClose:
            this["\x16\x15\n"]();
            break;
         case this._btnTabMembers:
            this.setCurrentTab("Members");
            break;
         case this._btnTabInformations:
            this.setCurrentTab("Informations");
            break;
         case this._btnTabBoosts:
            if(this.api.datacenter.Player.guildInfos["\x18\x10\n"])
            {
               this.setCurrentTab("Boosts");
            }
            else
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("NOT_ENOUGHT_MEMBERS_IN_GUILD"),"ERROR_BOX");
               _loc2_.target.selected = true;
            }
            break;
         case this._btnTabTaxCollectors:
            if(this.api.datacenter.Player.guildInfos["\x18\x10\n"])
            {
               this.setCurrentTab("TaxCollectors");
            }
            else
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("NOT_ENOUGHT_MEMBERS_IN_GUILD"),"ERROR_BOX");
               _loc2_.target.selected = true;
            }
            break;
         case this._btnTabMountParks:
            if(this.api.datacenter.Player.guildInfos["\x18\x10\n"])
            {
               this.setCurrentTab("MountParks");
            }
            else
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("NOT_ENOUGHT_MEMBERS_IN_GUILD"),"ERROR_BOX");
               _loc2_.target.selected = true;
            }
            break;
         case this._btnTabGuildHouses:
            if(this.api.datacenter.Player.guildInfos["\x18\x10\n"])
            {
               this.setCurrentTab("GuildHouses");
            }
            else
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("NOT_ENOUGHT_MEMBERS_IN_GUILD"),"ERROR_BOX");
               _loc2_.target.selected = true;
            }
            break;
         case this._btnEdit:
            this.toggleInfosEditor(true);
            break;
         case this._btnCancel:
            this.toggleInfosEditor(false);
            break;
         case this._btnSave:
            this.toggleInfosEditor(false);
            this.api.network.Guild.editNote(this._taGuildNote.text);
      }
   }
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._pbXP)
      {
         this.gapi.showTooltip(new ank.utils.ExtendedString(this._pbXP.value)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + " / " + new ank.utils.ExtendedString(this._pbXP["\x18\x19\x12"])["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3),this._pbXP,-20);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function modelChanged(oEvent)
   {
      switch(_loc2_.eventName)
      {
         case "infosUpdate":
            this.initData();
            break;
         case "general":
            var _loc3_ = this.api.datacenter.Player.guildInfos;
            this["\x1c\x1a\x07"].text = this.api.lang.getText("LEVEL") + " " + _loc3_.level;
            this._pbXP["\x18\x1d\x03"] = _loc3_["\x1b\x1a\f"];
            this._pbXP["\x18\x19\x12"] = _loc3_.level != 200 ? _loc3_["\x1b\x1a\n"] : -1;
            this._pbXP.value = _loc3_.xp;
            this._pbXP.onRollOver = function()
            {
               this._parent.gapi.showTooltip(new ank.utils.ExtendedString(this.value)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + " / " + new ank.utils.ExtendedString(this["\x18\x19\x12"])["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3),this,-20);
            };
            this._pbXP.onRollOut = function()
            {
               this._parent.gapi.hideTooltip();
            };
            if(_loc3_["\x18\x10\n"])
            {
               this._y = 0;
               this["\x1d\x03\x1a"]._visible = _loc0_ = false;
               this._mcCaution._visible = _loc0_;
            }
            else
            {
               this._y = -20;
               this["\x1d\x03\x1a"]._visible = _loc0_ = true;
               this._mcCaution._visible = _loc0_;
               this["\x1d\x03\x1a"].text = this.api.lang.getText("GUILD_INVALID_INFOS");
            }
            break;
         case "rank":
         case "members":
            if(this["\x1e\b\x19"] == "Members")
            {
               this._mcTabViewer.members = this.api.datacenter.Player.guildInfos.members;
            }
            break;
         case "boosts":
            if(this["\x1e\b\x19"] == "Boosts")
            {
               this._mcTabViewer["\x1b\x14\x14"]();
            }
            break;
         case "taxcollectors":
            if(this["\x1e\b\x19"] == "TaxCollectors")
            {
               this._mcTabViewer["\x1b\x0e\x06"] = this.api.datacenter.Player.guildInfos["\x1b\x0e\x06"];
            }
            break;
         case "noboosts":
         case "notaxcollectors":
            this.api.kernel.showMessage(undefined,this.api.lang.getText("NOT_ENOUGHT_MEMBERS_IN_GUILD"),"ERROR_BOX");
            this.setCurrentTab("Members");
            break;
         case "mountParks":
            if(this["\x1e\b\x19"] == "MountParks")
            {
               this._mcTabViewer.mountParks = this.api.datacenter.Player.guildInfos.mountParks;
            }
            break;
         case "houses":
            if(this["\x1e\b\x19"] == "GuildHouses")
            {
               this._mcTabViewer.houses = this.api.datacenter.Player.guildInfos.houses;
            }
            break;
         case "note":
            var _loc4_ = this.api.datacenter.Player.guildInfos;
            this._taGuildNote.text = _loc4_.note;
            this._lblLastModified.text = this.api.lang.getText("MESSAGE_EDITED",[_loc4_.noteFormatedLastModification,_loc4_.noteMember]);
            this._lblLastModified._visible = _loc4_.noteMember != "";
            break;
         case "informations":
            if(this["\x1e\b\x19"] == "Informations")
            {
               this._mcTabViewer["\x1b\x14\x14"]();
               break;
            }
      }
   }
   function rightsChanged(oEvent)
   {
      this._btnEdit.enabled = this.api.datacenter.Player.guildInfos["\x1a\x05\x15"].canEditGuildNotes || this.api.datacenter.Player.guildInfos["\x1a\x05\x15"]["\x18\f\x1a"];
   }
}
