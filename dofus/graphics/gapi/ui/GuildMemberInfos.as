class dofus.graphics.gapi.ui.GuildMemberInfos extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "GuildMemberInfos";
   static var SIZE = 70;
   function GuildMemberInfos()
   {
      super();
   }
   function §\x18\r§(§\x19\x13\x11§)
   {
      this["\x1e\x04\x0f"] = _loc2_;
      this["\x1e\x04\x10"] = new Object();
      this._oRankNames = new Object();
      this["\x1e\x04\x10"].rank = this["\x1e\x04\x0f"].rank;
      this["\x1e\x04\x10"].percentxp = this["\x1e\x04\x0f"].percentxp;
      this["\x1e\x04\x10"]["\x1a\x0e\x13"] = new dofus.datacenter.["\x18\x04\n"](this["\x1e\x04\x0f"]["\x1a\x0e\x13"].value);
      return this.member;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.GuildMemberInfos.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
      this["\x1c\f\x18"]._visible = false;
      this._btnPercentXP._visible = false;
      this._dgRights.enabled = false;
      this.showRankEditor(false);
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function initTexts()
   {
      this._btnCancel.label = this.api.lang.getText("CANCEL_SMALL");
      this._btnModify.label = this.api.lang.getText("SAVE");
      this["\x1c\x1d\x10"].text = this.api.lang.getText("GUILD_RANK");
      this["\x1c\x1c\x16"].text = this.api.lang.getText("PERCENT_XP_FULL");
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._btnCancel.addEventListener("click",this);
      this._btnModify.addEventListener("click",this);
      this._btnEditGradeName.addEventListener("click",this);
      this._btnResetRank.addEventListener("click",this);
      this._btnResetAllRanks.addEventListener("click",this);
      this._btnPercentXP.addEventListener("click",this);
      this["\x1c\f\x18"].addEventListener("itemSelected",this);
      this["\x1d\f\x0b"].onRollOver = function()
      {
         this._parent.over({target:this});
      };
      this["\x1d\f\x0b"].onRollOut = function()
      {
         this._parent.out({target:this});
      };
      this["\x1d\f\x0b"].onRelease = function()
      {
         this._parent.click({target:this});
      };
      this.api.datacenter.Player.guildInfos.addEventListener("modelChanged",this);
   }
   function §\x1b\x14\x14§()
   {
      this.updateRight();
      this["\x1e\x10\t"].title = this["\x1e\x04\x0f"].name + " (" + this.api.lang.getText("LEVEL_SMALL") + " " + this["\x1e\x04\x0f"].level + ")";
      this["\x1c\x1c\x17"].text = this["\x1e\x04\x10"].percentxp + "%";
      var _loc2_ = this.api.datacenter.Player.guildInfos["\x1a\x05\x15"];
      var _loc3_ = this["\x1e\x04\x10"]["\x1a\x0e\x13"];
      this["\x1c\f\x18"].enabled = _loc2_["\x16\x16\x0b"];
      this._btnPercentXP._visible = _loc2_.canManageXPContribution && !_loc3_["\x18\f\x1a"] || (_loc2_.canManageOwnXPContribution && this["\x1e\x04\x0f"].id == this.api.datacenter.Player.ID || this.api.datacenter.Player.guildInfos["\x1a\x05\x15"]["\x18\f\x1a"]);
      this.showRankEditor(this.api.datacenter.Player.guildInfos["\x1a\x05\x15"]["\x18\f\x1a"]);
      var _loc4_ = _loc2_["\x16\x16\f"] && (!_loc3_["\x18\f\x1a"] && this["\x1e\x04\x0f"].id != this.api.datacenter.Player.ID);
      this._eaRights = new ank.utils.ExtendedArray();
      this._eaRights.push({name:"GUILD_RIGHTS_BOOST",§\x18\x05\x10§:_loc3_["\x16\x16\b"],canSetRight:_loc4_,rightValue:_loc3_.canManageBoostValue});
      this._eaRights.push({name:"GUILD_RIGHTS_RIGHTS",§\x18\x05\x10§:_loc3_["\x16\x16\f"],canSetRight:_loc4_,rightValue:_loc3_.canManageRightsValue});
      this._eaRights.push({name:"GUILD_RIGHTS_INVIT",§\x18\x05\x10§:_loc3_["\x16\x16\x06"],canSetRight:_loc4_,rightValue:_loc3_.canInviteValue});
      this._eaRights.push({name:"GUILD_RIGHTS_BANN",§\x18\x05\x10§:_loc3_["\x16\x15\x13"],canSetRight:_loc4_,rightValue:_loc3_.canBannValue});
      this._eaRights.push({name:"GUILD_RIGHTS_PERCENTXP",§\x18\x05\x10§:_loc3_.canManageXPContribution,canSetRight:_loc4_,rightValue:_loc3_.canManageXPContributionValue});
      this._eaRights.push({name:"GUILD_RIGHT_MANAGE_OWN_XP",§\x18\x05\x10§:_loc3_.canManageOwnXPContribution,canSetRight:_loc4_,rightValue:_loc3_.canManageOwnXPContributionValue});
      this._eaRights.push({name:"GUILD_RIGHTS_RANK",§\x18\x05\x10§:_loc3_["\x16\x16\x0b"],canSetRight:_loc4_,rightValue:_loc3_.canManageRanksValue});
      this._eaRights.push({name:"GUILD_RIGHTS_HIRETAX",§\x18\x05\x10§:_loc3_["\x16\x16\x05"],canSetRight:_loc4_,rightValue:_loc3_.canHireTaxCollectorValue});
      this._eaRights.push({name:"GUILD_RIGHTS_COLLECT",§\x18\x05\x10§:_loc3_["\x16\x15\x1d"],canSetRight:_loc4_,rightValue:_loc3_.canCollectValue});
      this._eaRights.push({name:"GUILD_RIGHTS_COLLECT_OWN",§\x18\x05\x10§:_loc3_.canCollectOwnTaxCollector,canSetRight:_loc4_,rightValue:_loc3_.canCollectOwnTaxCollectorValue});
      this._eaRights.push({name:"GUILD_RIGHTS_DEFEND_TAX_PRIORITY",§\x18\x05\x10§:_loc3_.canPriorityDefendTaxCollector,canSetRight:_loc4_,rightValue:_loc3_.canPriorityDefendTaxCollectorValue});
      this._eaRights.push({name:"GUILD_RIGHTS_MOUNT_PARK_USE",§\x18\x05\x10§:_loc3_["\x16\x16\x1c"],canSetRight:_loc4_,rightValue:_loc3_.canUseMountParkValue});
      this._eaRights.push({name:"GUILD_RIGHTS_MOUNT_PARK_ARRANGE",§\x18\x05\x10§:_loc3_["\x16\x15\x0e"],canSetRight:_loc4_,rightValue:_loc3_.canArrangeMountParkValue});
      this._eaRights.push({name:"GUILD_RIGHTS_MANAGE_OTHER_MOUNT",§\x18\x05\x10§:_loc3_["\x16\x16\t"],canSetRight:_loc4_,rightValue:_loc3_.canManageOtherMountValue});
      this._eaRights.push({name:"GUILD_RIGHTS_EDIT_GUILD_NOTES",§\x18\x05\x10§:_loc3_.canEditGuildNotes,canSetRight:_loc4_,rightValue:_loc3_.canEditGuildNotesValue});
      this._eaRights.push({name:"GUILD_RIGHTS_EDIT_GUILD_INFOS",§\x18\x05\x10§:_loc3_.canEditGuildInformations,canSetRight:_loc4_,rightValue:_loc3_.canEditGuildInformationsValue});
      this._dgRights.dataProvider = this._eaRights;
      var _loc5_ = _loc2_["\x18\f\x1a"] || (_loc2_["\x16\x16\f"] || (_loc2_["\x16\x16\x0b"] || (_loc2_.canManageXPContribution || _loc3_.canManageOwnXPContribution)));
      var _loc6_ = this["\x1e\x04\x0f"].rank != this["\x1e\x04\x10"].rank || (this["\x1e\x04\x0f"].percentxp != this["\x1e\x04\x10"].percentxp || (this["\x1e\x04\x0f"]["\x1a\x0e\x13"].value != this["\x1e\x04\x10"]["\x1a\x0e\x13"].value || this.rankNamesHasChanged()));
      this._btnModify.enabled = _loc5_ && _loc6_;
      this.updateRank();
      if(this["\x1e\r\x10"]["\x1b\x07\x06"] == undefined)
      {
         this.initializeSprite();
      }
   }
   function updateRank()
   {
      var _loc2_ = this.api.datacenter.Player.guildInfos["\x1a\x05\x15"];
      var _loc3_ = this["\x1e\x04\x10"]["\x1a\x0e\x13"];
      if(_loc2_["\x16\x16\x0b"] && !_loc3_["\x18\f\x1a"] || this.api.datacenter.Player.guildInfos["\x1a\x05\x15"]["\x18\f\x1a"])
      {
         this["\x1c\f\x18"]._visible = true;
         var _loc4_ = this.api.lang["\x17\x1d\x1a"]().slice();
         var _loc5_ = new ank.utils.ExtendedArray();
         _loc4_.sortOn("o",Array.NUMERIC);
         if(this.api.datacenter.Player.guildInfos["\x1a\x05\x15"]["\x18\f\x1a"])
         {
            var _loc6_ = 1;
            var _loc7_ = this.getRankName(_loc6_);
            _loc5_.push({label:_loc7_,id:_loc6_,icon:"GuildMemberCrown"});
            if(this["\x1e\x04\x10"].rank == _loc6_)
            {
               this["\x1c\f\x18"].selectedIndex = 0;
            }
         }
         var _loc8_ = 1;
         while(_loc8_ < _loc4_.length)
         {
            var _loc9_ = _loc4_[_loc8_].i;
            var _loc10_ = this.getRankName(_loc9_);
            _loc5_.push({label:_loc10_,id:_loc9_});
            if(this["\x1e\x04\x10"].rank == _loc9_)
            {
               this["\x1c\f\x18"].selectedIndex = _loc5_.length - 1;
            }
            _loc8_ = _loc8_ + 1;
         }
         this["\x1c\f\x18"].dataProvider = _loc5_;
      }
      else
      {
         this["\x1c\x1d\x12"].text = this.api.datacenter.Player.guildInfos.getRankName(this["\x1e\x04\x10"].rank);
      }
   }
   function updateRight()
   {
      var _loc2_ = 0;
      while(_loc2_ < this._eaRights.length)
      {
         if(this._eaRights[_loc2_].needsUpdate)
         {
            !this._eaRights[_loc2_]["\x18\x05\x10"] ? (this["\x1e\x04\x10"]["\x1a\x0e\x13"].value ^= this._eaRights[_loc2_].rightValue) : (this["\x1e\x04\x10"]["\x1a\x0e\x13"].value |= this._eaRights[_loc2_].rightValue);
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   function §\x1a\x19\x05§(§\x19\r\x07§)
   {
      this["\x1e\x04\x10"].rank = _loc2_;
      this["\x1e\x04\x10"].rankOrder = this.api.lang["\x17\x1d\x18"](_loc2_).o;
      this["\x1b\x14\x14"]();
   }
   function rankNamesHasChanged()
   {
      return this.getRankChangesPacket().length > 0;
   }
   function §\x1a\x15\x04§()
   {
      this.api.kernel.showMessage(undefined,this.api.lang.getText("DO_U_GIVERIGHTS",[this["\x1e\x04\x0f"].name]),"CAUTION_YESNO",{name:"GuildSetBoss",listener:this});
   }
   function showRankEditor(§\x16\x0b\t§)
   {
      this._btnEditGradeName._visible = _loc2_;
      this._btnResetRank._visible = _loc2_;
      this._btnResetAllRanks._visible = _loc2_;
   }
   function initializeSprite()
   {
      var _loc2_ = new ank.battlefield.datacenter..Sprite("viewer",ank.battlefield.mc.Sprite,dofus.Constants["\x16\x1c\x1a"] + this["\x1e\x04\x0f"].gfx + ".swf",undefined,5);
      _loc2_.color1 = this["\x1e\x04\x0f"].color1;
      _loc2_.color2 = this["\x1e\x04\x0f"].color2;
      _loc2_.color3 = this["\x1e\x04\x0f"].color3;
      _loc2_.accessories = this["\x1e\x04\x0f"].accessories;
      this["\x1e\r\x10"]["\x1b\x07\x06"] = _loc2_;
      this["\x1e\r\x10"]["\x1b\x16\x1b"] = true;
      this["\x1e\r\x10"]["\x1b\x07\x05"] = ["emoteStatic14R","emoteStatic14L"];
      this["\x1e\r\x10"]["\x19\x0b\x01"] = true;
   }
   function zoomSprite(§\x16\x0b\t§)
   {
      if(_loc2_)
      {
         this["\x1d\b\n"]._width = this["\x1d\b\n"]._height = 70;
         this["\x1e\r\x10"].zoom = 130;
         this["\x1e\r\x10"]._y = 14.15;
         this["\x1e\r\x10"]._x = 200.75;
         this._mcMask._width = this._mcMask._height = 70;
         this["\x1d\f\x0b"]._width = this["\x1d\f\x0b"]._height = 70;
      }
      else
      {
         this["\x1d\b\n"]._width = this["\x1d\b\n"]._height = 50;
         this["\x1e\r\x10"].zoom = 100;
         this["\x1e\r\x10"]._y = -3.25;
         this["\x1e\r\x10"]._x = 190.75;
         this._mcMask._width = this._mcMask._height = 50;
         this["\x1d\f\x0b"]._width = this["\x1d\f\x0b"]._height = 50;
         this["\x1e\r\x10"]["\x1a\x05\x1b"](0);
      }
   }
   function getRankChangesPacket()
   {
      var _loc2_ = "";
      var _loc3_ = false;
      for(var sRankId in this._oRankNames)
      {
         if(_loc3_)
         {
            _loc2_ += "|";
            _loc3_ = false;
         }
         var _loc4_ = Number(sRankId);
         var _loc5_ = this.getRankName(_loc4_);
         if(!(_loc5_ == "0" && this.api.datacenter.Player.guildInfos.getRankName(_loc4_) == this.api.lang["\x17\x1d\x18"](_loc4_).n))
         {
            if(_loc5_ != this.api.datacenter.Player.guildInfos.getRankName(_loc4_))
            {
               _loc2_ += sRankId + ";" + this._oRankNames[sRankId];
               _loc3_ = true;
            }
         }
      }
      return _loc2_;
   }
   function getRankName(nRankId)
   {
      var _loc3_ = this.api.datacenter.Player.guildInfos.getRankName(nRankId);
      if(this._oRankNames[nRankId] != undefined)
      {
         if(this._oRankNames[nRankId] == "0")
         {
            _loc3_ = this.api.lang["\x17\x1d\x18"](nRankId).n;
         }
         else
         {
            _loc3_ = this._oRankNames[nRankId];
         }
      }
      return _loc3_;
   }
   function itemSelected(oEvent)
   {
      if(this["\x1c\f\x18"].selectedItem.id == 1 && this["\x1e\x04\x0f"].rank != 1)
      {
         this["\x1a\x15\x04"]();
      }
      else
      {
         this["\x1a\x19\x05"](this["\x1c\f\x18"].selectedItem.id);
      }
   }
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this["\x1d\f\x0b"])
      {
         this.zoomSprite(true);
      }
   }
   function out(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this["\x1d\f\x0b"])
      {
         this.zoomSprite(false);
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnCancel:
         case this._btnClose:
            this._oRankNames = new Object();
            this["\x16\x15\n"]();
            break;
         case this._btnModify:
            this.updateRight();
            if(this["\x1e\x04\x0f"].rank == this["\x1e\x04\x10"].rank && (this["\x1e\x04\x0f"].percentxp == this["\x1e\x04\x10"].percentxp && (this["\x1e\x04\x0f"]["\x1a\x0e\x13"].value == this["\x1e\x04\x10"]["\x1a\x0e\x13"].value && !this.rankNamesHasChanged())))
            {
               return undefined;
            }
            var _loc3_ = this.getRankChangesPacket();
            if(_loc3_.length > 0)
            {
               this.api.network.Guild.editRankName(_loc3_);
            }
            if(this.api.datacenter.Player.guildInfos["\x1a\x05\x15"]["\x18\f\x1a"] && this["\x1e\x04\x0f"].name == this.api.datacenter.Player.Name)
            {
               this["\x1e\x04\x10"].rank = 1;
               this["\x1e\x04\x0f"].rankOrder = this.api.lang["\x17\x1d\x18"](1).o;
            }
            this["\x1e\x04\x0f"].rank = this["\x1e\x04\x10"].rank;
            this["\x1e\x04\x0f"].rankOrder = this["\x1e\x04\x10"].rankOrder;
            this["\x1e\x04\x0f"].percentxp = this["\x1e\x04\x10"].percentxp;
            this["\x1e\x04\x0f"]["\x1a\x0e\x13"].value = this["\x1e\x04\x10"]["\x1a\x0e\x13"].value;
            this.api.network.Guild["\x16\x18\x1a"](this["\x1e\x04\x0f"]);
            this.api.datacenter.Player.guildInfos["\x1a\x17\x1a"]();
            this["\x16\x15\n"]();
            break;
         case this._btnPercentXP:
            var _loc4_ = this.gapi.loadUIComponent("PopupQuantity","PopupQuantity",{value:this["\x1e\x04\x0f"].percentxp,max:90,min:0,params:{targetType:"percentXP"}});
            _loc4_.addEventListener("validate",this);
            break;
         case this._btnEditGradeName:
            var _loc5_ = this.gapi.loadUIComponent("PopupText","PopupText",{value:this.getRankName(this["\x1e\x04\x10"].rank),restrict:"a-z A-Z àáâãäåÀÁÂÃÄÅèéêëËÉÊÈìíîïÌÍÎÏðòóôõöøÐÒÓÔÕÖØùúûüÙÚÛÜýýÿÝÝŸçÇñÑšŠžŽ\'\\-",maxChars:20,params:{targetType:"rank"}});
            _loc5_.addEventListener("validate",this);
            break;
         case this._btnResetRank:
            var _loc6_ = this.gapi.loadUIComponent("AskYesNo","AskYesResetRank",{title:this.api.lang.getText("QUESTION"),text:this.api.lang.getText("DO_U_RESET_RANK")});
            _loc6_.addEventListener("yes",this);
            break;
         case this._btnResetAllRanks:
            var _loc7_ = this.gapi.loadUIComponent("AskYesNo","AskYesResetAllRanks",{title:this.api.lang.getText("QUESTION"),text:this.api.lang.getText("DO_U_RESET_ALL_RANKS")});
            _loc7_.addEventListener("yes",this);
            break;
         case this["\x1d\f\x0b"]:
            this["\x1e\r\x10"]["\x1a\x05\x1b"]();
      }
   }
   function validate(oEvent)
   {
      switch(_loc2_.params.targetType)
      {
         case "percentXP":
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
            this["\x1e\x04\x10"].percentxp = _loc3_;
            break;
         case "rank":
            var _loc4_ = _loc2_.value;
            if(_loc4_.length < 3)
            {
               break;
            }
            this._oRankNames[this["\x1e\x04\x10"].rank] = _loc4_;
            break;
      }
      this["\x1b\x14\x14"]();
   }
   function yes(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "AskYesResetRank":
            this._oRankNames[this["\x1e\x04\x10"].rank] = 0;
            this.updateRank();
            break;
         case "AskYesResetAllRanks":
            var _loc3_ = this.api.lang["\x17\x1d\x1a"]().slice();
            var _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               this._oRankNames[_loc4_] = 0;
               _loc4_ = _loc4_ + 1;
            }
            this.updateRank();
            break;
         default:
            this["\x1a\x19\x05"](1);
      }
      this["\x1b\x14\x14"]();
   }
   function modelChanged(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.eventName) === "rank")
      {
         this.updateRank();
      }
   }
}
