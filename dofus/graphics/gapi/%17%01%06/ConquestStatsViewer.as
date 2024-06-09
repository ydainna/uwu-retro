class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.ConquestStatsViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ConquestStatsViewer";
   function ConquestStatsViewer()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.ConquestStatsViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
   }
   function addListeners()
   {
      this["\x1c\x0b\x0b"].addEventListener("click",this);
      this["\x1c\x0b\x0b"].addEventListener("over",this);
      this["\x1c\x0b\x0b"].addEventListener("out",this);
      this._btnDisgraceSanction.addEventListener("click",this);
      this._btnDisgraceSanction.addEventListener("over",this);
      this._btnDisgraceSanction.addEventListener("out",this);
      this._btnInformation.addEventListener("click",this);
      this._btnInformation.addEventListener("over",this);
      this._btnInformation.addEventListener("out",this);
      this.api.datacenter.Player.addEventListener("rankChanged",this);
      this.api.datacenter.Conquest.addEventListener("bonusChanged",this);
      this.api.datacenter.Player.addEventListener("huntMatchmakingStatusChanged",this);
      var ref = this;
      this["\x1d\t\b"].onRollOver = function()
      {
         ref.over({target:this});
      };
      this["\x1d\t\b"].onRollOut = function()
      {
         ref.out({target:this});
      };
      this._mcMalusInteractivity.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._mcMalusInteractivity.onRollOut = function()
      {
         ref.out({target:this});
      };
      if(this.api.datacenter.Player.Level >= dofus.Constants.HUNT_LEVEL)
      {
         this._btnToggleHuntFinder.addEventListener("click",this);
         this._btnToggleHuntFinder.addEventListener("over",this);
         this._btnToggleHuntFinder.addEventListener("out",this);
         this._btnStartHunt.addEventListener("click",this);
         this._btnStartHunt.addEventListener("over",this);
         this._btnStartHunt.addEventListener("out",this);
         this.api.datacenter.Player.addEventListener("alignmentChanged",this);
      }
   }
   function initTexts()
   {
      this["\x1c\x18\x19"].text = this.api.lang.getText("HONOUR_POINTS");
      this["\x1c\x16\x1d"].text = this.api.lang.getText("DISGRACE_POINTS");
      this["\x1c\x13\x18"].text = this.api.lang.getText("ALIGNED_AREA_MODIFICATORS");
      this["\x1d\x03\x18"].text = this.api.lang.getText("TYPE");
      this["\x1c\x13\x1a"].text = this.api.lang.getText("BONUS");
      this._lblMalusTitle.text = this.api.lang.getText("MALUS");
      this._lblHunt.text = this.api.lang.getText("HUNT_FINDER");
      if(this.api.datacenter.Player.Level >= dofus.Constants.HUNT_LEVEL)
      {
         this._lblCommander.text = this.api.lang.getText("YOUR_COMMANDER");
         this._btnStartHunt.label = this.api.lang.getText("HUNT_START_BUTTON");
         this._mcHuntShield._visible = false;
         this.updatePvPHuntFinderButtons();
      }
      else
      {
         this._btnStartHunt._visible = false;
         this._btnToggleHuntFinder._visible = false;
         this._lblBadLevel.text = this.api.lang.getText("LEVEL_NEED_TO_BOOST",[dofus.Constants.HUNT_LEVEL]);
      }
   }
   function initData()
   {
      this.api.network.Conquest["\x17\x13\x18"]();
      this.rankChanged({rank:this.api.datacenter.Player.rank});
      if(this.api.datacenter.Player.Level >= dofus.Constants.HUNT_LEVEL)
      {
         this.alignmentChanged({alignment:this.api.datacenter.Player.alignment});
      }
   }
   function §\x1b\x14\x06§()
   {
      var _loc2_ = new ank.utils.ExtendedArray();
      var _loc3_ = this.api.datacenter.Conquest["\x16\x02\x19"];
      var _loc4_ = this.api.datacenter.Conquest["\x1a\t\x18"];
      var _loc5_ = this.api.datacenter.Conquest["\x16\x02\x1a"];
      _loc2_.push({type:this.api.lang.getText("EXPERIMENT"),bonus:(_loc4_.drop != 0 ? "+" + _loc3_.xp * _loc4_.xp + "% (" + _loc3_.xp + "% x" + _loc4_.xp + ")" : "0%"),malus:_loc5_.xp + "%"});
      _loc2_.push({type:this.api.lang.getText("COLLECT"),bonus:(_loc4_.drop != 0 ? "+" + _loc3_["\x1a\n\f"] * _loc4_["\x1a\n\f"] + "% (" + _loc3_["\x1a\n\f"] + "% x" + _loc4_["\x1a\n\f"] + ")" : "0%"),malus:_loc5_["\x1a\n\f"] + "%"});
      _loc2_.push({type:this.api.lang.getText("LOOT"),bonus:(_loc4_.drop != 0 ? "+" + _loc3_.drop * _loc4_.drop + "% (" + _loc3_.drop + "% x" + _loc4_.drop + ")" : "0%"),malus:_loc5_.drop + "%"});
      this["\x1d\x06\r"].dataProvider = _loc2_;
   }
   function updatePvPHuntFinderButtons()
   {
      var _loc2_ = this.api.datacenter.Player.isHuntMatchmakingActive();
      if(_loc2_ && this.api.datacenter.Player.huntMatchmakingStatus.currentStatus == "WAITING_FOR_START_CONFIRMATION")
      {
         this._btnStartHunt._visible = true;
         this._btnToggleHuntFinder._visible = false;
      }
      else
      {
         this._btnToggleHuntFinder.label = !_loc2_ ? this.api.lang.getText("HUNT_START_FINDER") : this.api.lang.getText("HUNT_STOP_FINDER");
         this._btnToggleHuntFinder._visible = true;
         this._btnStartHunt._visible = false;
      }
   }
   function bonusChanged(oEvent)
   {
      this["\x1b\x14\x06"]();
   }
   function rankChanged(oEvent)
   {
      this["\x1e\x05\x04"] = _loc2_.rank;
      var _loc3_ = this.api.lang["\x17\x18\b"](this["\x1e\x05\x04"].value);
      this["\x1e\x06\x10"]["\x18\x19\x12"] = !_global.isNaN(_loc3_.max) ? _loc3_.max : 0;
      this["\x1e\x06\x10"]["\x18\x1d\x03"] = !_global.isNaN(_loc3_.min) ? _loc3_.min : 0;
      this["\x1e\x06\x10"].value = !_global.isNaN(this["\x1e\x05\x04"]["\x18\x07\r"]) ? this["\x1e\x05\x04"]["\x18\x07\r"] : 0;
      this["\x1d\f\x06"].onRollOver = function()
      {
         this._parent.gapi.showTooltip(new ank.utils.ExtendedString(this._parent["\x1e\x05\x04"]["\x18\x07\r"])["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + " / " + new ank.utils.ExtendedString(this._parent["\x1e\x06\x10"]["\x18\x19\x12"])["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3),this,-10);
      };
      this["\x1d\f\x06"].onRollOut = function()
      {
         this._parent.gapi.hideTooltip();
      };
      this["\x1e\x06\x0e"]["\x18\x19\x12"] = this.api.lang["\x17\x1b\x12"]();
      this["\x1e\x06\x0e"].value = this["\x1e\x05\x04"].disgrace;
      this["\x1d\n\x17"].onRollOver = function()
      {
         this._parent.gapi.showTooltip(new ank.utils.ExtendedString(this._parent["\x1e\x05\x04"].disgrace)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + " / " + new ank.utils.ExtendedString(this._parent["\x1e\x06\x0e"]["\x18\x19\x12"])["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3),this,-10);
      };
      this["\x1d\n\x17"].onRollOut = function()
      {
         this._parent.gapi.hideTooltip();
      };
      if(this["\x1e\x05\x04"].enable && this._lblHunt.text != undefined)
      {
         var _loc4_ = this.api.datacenter.Player.alignment.index;
         this["\x1c\x0b\x0b"].label = this.api.lang.getText("DISABLE_PVP_SHORT");
      }
      else if(this._lblHunt.text != undefined)
      {
         this["\x1c\x0b\x0b"].label = this.api.lang.getText("ENABLE_PVP_SHORT");
      }
      this._btnDisgraceSanction._visible = this.api.datacenter.Player.rank.disgrace > 0;
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnStartHunt:
            this.api.network.Game.hunterAcceptPvPHunt();
            break;
         case this._btnToggleHuntFinder:
            if(!this.api.datacenter.Player.rank.enable)
            {
               var _loc3_ = this.api.lang.getText("DO_U_ATTACK_WHEN_PVP_DISABLED");
               this.api.kernel.showMessage(undefined,_loc3_,"CAUTION_YESNO",{name:"ToggleHuntFinder",listener:this});
               break;
            }
            this.api.network.Game.toggleHunterMatchmakingRegister();
            break;
         case this._btnDisgraceSanction:
            this.api.kernel.GameManager.showDisgraceSanction();
            break;
         case this["\x1c\x0b\x0b"]:
            if(this.api.datacenter.Player.rank.enable)
            {
               this.api.network.Game["\x16\x05\x1c"]();
               break;
            }
            this.api.network.Game["\x19\x1b\x13"]("",true);
            break;
      }
   }
   function yes(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "AskYesNoToggleHuntFinder")
      {
         if(!this.api.datacenter.Player.rank.enable)
         {
            this.api.network.Game["\x17\r\x05"](true);
         }
         this.api.network.Game.toggleHunterMatchmakingRegister();
      }
   }
   function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\x0b\x0b"]:
            this.gapi.showTooltip(this.api.lang.getText(!this["\x1e\x05\x04"].enable ? "ENABLE_PVP" : "DISABLE_PVP"),this["\x1c\x0b\x0b"],-20);
            break;
         case this._btnDisgraceSanction:
            this.gapi.showTooltip(this.api.lang.getText("DISGRACE_SANCTION_TOOLTIP"),this._btnDisgraceSanction,-20);
            break;
         case this["\x1d\t\b"]:
            this.gapi.showTooltip(this.api.lang.getText("CONQUEST_STATS_BONUS"),this["\x1d\t\b"],-70);
            break;
         case this._mcMalusInteractivity:
            this.gapi.showTooltip(this.api.lang.getText("CONQUEST_STATS_MALUS"),this._mcMalusInteractivity,-40);
            break;
         case this._btnInformation:
            this.gapi.showTooltip(this.api.lang.getText("RANK_SYSTEM_INFO"),this._btnDisgraceSanction,-20);
      }
   }
   function huntMatchmakingStatusChanged(oEvent)
   {
      this.updatePvPHuntFinderButtons();
   }
   function alignmentChanged(oEvent)
   {
      if(_loc2_.alignment.index == 0 || _loc2_.alignment.index == 3)
      {
         this._mcCharacter.gotoAndStop(0);
         this._lblCommanderName.text = "-";
      }
      else
      {
         this._mcCharacter.gotoAndStop(_loc2_.alignment.index + 1);
         this._lblCommanderName.text = this.api.lang.getText("COMMANDER_ALIGN_" + _loc2_.alignment.index);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
