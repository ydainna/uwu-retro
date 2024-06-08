class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.GuildInformationsViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "GuildMembersViewer";
   function GuildInformationsViewer()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.GuildInformationsViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
   }
   function addListeners()
   {
      this._btnEditInformations.addEventListener("click",this);
      this._btnCancel.addEventListener("click",this);
      this._btnSave.addEventListener("click",this);
      this.api.datacenter.Player.guildInfos.addEventListener("rightsChanged",this);
   }
   function initTexts()
   {
      this["\x1c\x16\x17"].text = this.api.lang.getText("GUILD_HOUSE_DISPLAY_EMBLEM_FOR_GUILD");
      this._taConductRules.text = this.api.lang.getText("GUILD_CONDUCT_RULES");
      this._btnEditInformations.label = this.api.lang.getText("MODIFY");
      this._btnCancel.label = this.api.lang.getText("CANCEL_SMALL");
      this._btnSave.label = this.api.lang.getText("SAVE");
      var ref = this;
      this._mcHelp.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._mcHelp.onRollOut = function()
      {
         ref.out({target:this});
      };
   }
   function §\x18\t\x14§()
   {
      this._btnEditInformations.enabled = this.api.datacenter.Player.guildInfos["\x1a\x05\x15"].canEditGuildInformations || this.api.datacenter.Player.guildInfos["\x1a\x05\x15"]["\x18\f\x1a"];
      this.toggleInfosEditor(false);
   }
   function §\x1b\x14\x14§()
   {
      var _loc2_ = this.api.datacenter.Player.guildInfos;
      this.setTextArea(_loc2_.infos);
      this._lblLatestUpdate.text = this.api.lang.getText("MESSAGE_EDITED",[_loc2_.infosFormatedLastModification,_loc2_.infosMember]);
      this._lblLatestUpdate._visible = _loc2_.infosMember != "";
   }
   function setTextArea(sText)
   {
      if(_loc2_.length == 0)
      {
         this._taGuildInformations.text = this.api.lang.getText("GUILD_INFORMATIONS_EMPTY");
         this._bEmptyTextField = true;
      }
      else
      {
         this._taGuildInformations.text = _loc2_;
         this._bEmptyTextField = false;
      }
   }
   function toggleInfosEditor(§\x16\x0b\t§)
   {
      this._taGuildInformations["\x17\x0b\x1c"] = _loc2_;
      this._taGuildInformations.html = !_loc2_;
      this._btnCancel._visible = _loc2_;
      this._btnSave._visible = _loc2_;
      this._mcEditMode._visible = _loc2_;
      this._btnEditInformations._visible = !_loc2_;
      if(_loc2_)
      {
         if(this._bEmptyTextField)
         {
            this._taGuildInformations.text = "";
         }
         this._taGuildInformations.setFocus(false);
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnEditInformations:
            this.toggleInfosEditor(true);
            break;
         case this._btnCancel:
            this.toggleInfosEditor(false);
            break;
         case this._btnSave:
            this.toggleInfosEditor(false);
            this.api.network.Guild.editInfos(this._taGuildInformations.text);
      }
   }
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._mcHelp)
      {
         this.gapi.showTooltip(this.api.lang.getText("GUILD_INFORMATIONS_HELP"),this._mcHelp._x + 75,185);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function rightsChanged(oEvent)
   {
      this._btnEditInformations.enabled = this.api.datacenter.Player.guildInfos["\x1a\x05\x15"].canEditGuildInformations || this.api.datacenter.Player.guildInfos["\x1a\x05\x15"]["\x18\f\x1a"];
   }
}
