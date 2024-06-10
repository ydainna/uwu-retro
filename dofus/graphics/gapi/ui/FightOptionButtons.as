class dofus.§\x18\x03\x10§.gapi.ui.FightOptionButtons extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "FightOptionButtons";
   function FightOptionButtons()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.FightOptionButtons.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\n\r"]});
      this.addToQueue({object:this,method:this.initData});
   }
   function addListeners()
   {
      this["\x1c\x0b\x07"].addEventListener("click",this);
      this["\x1c\x0b\x07"].addEventListener("over",this);
      this["\x1c\x0b\x07"].addEventListener("out",this);
      this["\x1c\t\x1b"].addEventListener("click",this);
      this["\x1c\t\x1b"].addEventListener("over",this);
      this["\x1c\t\x1b"].addEventListener("out",this);
      this["\x1c\t\x05"].addEventListener("click",this);
      this["\x1c\t\x05"].addEventListener("over",this);
      this["\x1c\t\x05"].addEventListener("out",this);
      this["\x1c\t\x04"].addEventListener("click",this);
      this["\x1c\t\x04"].addEventListener("over",this);
      this["\x1c\t\x04"].addEventListener("out",this);
      this._btnHelp.addEventListener("click",this);
      this._btnHelp.addEventListener("over",this);
      this._btnHelp.addEventListener("out",this);
      this["\x1c\t\x06"].addEventListener("click",this);
      this["\x1c\t\x06"].addEventListener("over",this);
      this["\x1c\t\x06"].addEventListener("out",this);
      this["\x1c\x0b\f"].addEventListener("click",this);
      this["\x1c\x0b\f"].addEventListener("over",this);
      this["\x1c\x0b\f"].addEventListener("out",this);
   }
   function initData()
   {
      if(!this.api.datacenter.Game.isSpectator)
      {
         if(!this.api.datacenter.Player.inParty)
         {
            this["\x1c\t\x05"]._visible = false;
            this["\x1c\x0b\x07"]._x = 642;
         }
         else
         {
            if(this["\x1c\t\x05"].selected)
            {
               this.api.network.Fights["\x16\x0e\x0f"]();
            }
            this["\x1c\x0b\x07"]._x = 622;
         }
      }
      else
      {
         this["\x1c\t\x05"]._visible = false;
         this["\x1c\t\x04"]._visible = false;
         this._btnHelp._visible = false;
         this["\x1c\t\x06"]._visible = false;
         this["\x1c\t\x1b"]._visible = false;
         this["\x1c\x0b\x07"]._x = 722;
      }
      this["\x1c\x0b\x07"].selected = this.api.datacenter.Game["\x18\x10\x02"];
      this["\x1c\x0b\f"]._visible = false;
      if(this["\x1c\t\x06"].selected)
      {
         this.api.network.Fights["\x16\x0e\x10"]();
      }
      if(this["\x1c\t\x04"].selected)
      {
         this.api.network.Fights["\x16\x0e\x0e"]();
      }
   }
   function §\x18\n\r§()
   {
      this["\x1c\t\x05"].selected = this.api.kernel.OptionsManager.getOption("FightGroupAutoLock");
      this["\x1c\t\x06"].selected = this.api.datacenter.Game.isSpectatorBlocked;
      this["\x1c\t\x04"].selected = this.api.datacenter.Game.isFightBlocked;
   }
   function §\x19\x18\x04§()
   {
      this["\x1c\t\x05"]._visible = false;
      this["\x1c\t\x04"]._visible = false;
      this._btnHelp._visible = false;
      this["\x1c\x0b\f"]._visible = true;
      this["\x1c\x0b\x07"]._x = 662;
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\x0b\x07"]:
            var _loc3_ = !this.api.datacenter.Game["\x18\x10\x02"];
            this.api.datacenter.Game["\x18\x10\x02"] = _loc3_;
            this.api.gfx["\x15\x1c\x19"](this.api,_loc3_);
            break;
         case this["\x1c\t\x1b"]:
            this.api.kernel.GameManager["\x1b\r\x06"]();
            break;
         case this["\x1c\t\x05"]:
            this.api.network.Fights["\x16\x0e\x0f"]();
            break;
         case this["\x1c\t\x04"]:
            var _loc4_ = !this.api.datacenter.Game.isFightBlocked;
            this.api.datacenter.Game.isFightBlocked = _loc4_;
            this.api.network.Fights["\x16\x0e\x0e"]();
            break;
         case this._btnHelp:
            var _loc5_ = !this.api.datacenter.Game.isNeedingHelp;
            this.api.datacenter.Game.isNeedingHelp = _loc5_;
            this.api.network.Fights["\x19\x06\r"]();
            break;
         case this["\x1c\t\x06"]:
            if(dofus.datacenter.["\x17\t\x0f"].isTournament(this.api.datacenter.Map.id))
            {
               var _loc6_ = this.gapi.loadUIComponent("AskYesNo","AskYesNoDisableSpectator",{title:this.api.lang.getText("QUESTION"),text:this.api.lang.getText("FIGHT_OPTION_SPECTATOR") + " ?"});
               _loc6_.addEventListener("yes",this);
               _loc6_.addEventListener("no",this);
            }
            else
            {
               var _loc7_ = !this.api.datacenter.Game.isSpectatorBlocked;
               this.api.datacenter.Game.isSpectatorBlocked = _loc7_;
               this.api.network.Fights["\x16\x0e\x10"]();
            }
            break;
         case this["\x1c\x0b\f"]:
            this.api.datacenter.Basics.gfx_isSpritesHidden = !this.api.datacenter.Basics.gfx_isSpritesHidden;
            if(this.api.datacenter.Basics.gfx_isSpritesHidden)
            {
               this.api.gfx.SpriteHandler["\x18\x19\t"]();
               break;
            }
            this.api.gfx.SpriteHandler["\x1b\x13\x15"]();
            break;
      }
   }
   function yes()
   {
      var _loc2_ = !this.api.datacenter.Game.isSpectatorBlocked;
      this.api.datacenter.Game.isSpectatorBlocked = _loc2_;
      this.api.network.Fights["\x16\x0e\x10"]();
   }
   function no()
   {
      this["\x1c\t\x06"].selected = !this["\x1c\t\x06"].selected;
   }
   function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\x0b\x07"]:
            this.gapi.showTooltip(this.api.lang.getText("TACTIC_MODE"),this["\x1c\t\x1b"],-30);
            break;
         case this["\x1c\t\x1b"]:
            this.gapi.showTooltip(this.api.lang.getText("FLAG_INDICATOR_HELP"),this["\x1c\t\x1b"],-30);
            break;
         case this["\x1c\t\x05"]:
            this.gapi.showTooltip(this.api.lang.getText("FIGHT_OPTION_BLOCKJOINEREXCEPTPARTY"),this["\x1c\t\x1b"],-30);
            break;
         case this["\x1c\t\x04"]:
            this.gapi.showTooltip(this.api.lang.getText("FIGHT_OPTION_BLOCKJOINER"),this["\x1c\t\x1b"],-30);
            break;
         case this._btnHelp:
            this.gapi.showTooltip(this.api.lang.getText("FIGHT_OPTION_HELP"),this["\x1c\t\x1b"],-30);
            break;
         case this["\x1c\t\x06"]:
            this.gapi.showTooltip(this.api.lang.getText("FIGHT_OPTION_SPECTATOR"),this["\x1c\t\x1b"],-30);
            break;
         case this["\x1c\x0b\f"]:
            this.gapi.showTooltip(this.api.lang.getText("FIGHT_OPTION_SPRITES"),this["\x1c\t\x1b"],-30);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function §\x18\x1e\x17§(§\x19\x06\b§)
   {
      this["\x1c\x0b\x07"]._y += _loc2_;
      this["\x1c\t\x1b"]._y += _loc2_;
      this["\x1c\t\x05"]._y += _loc2_;
      this["\x1c\t\x04"]._y += _loc2_;
      this._btnHelp._y += _loc2_;
      this["\x1c\t\x06"]._y += _loc2_;
      this["\x1c\x0b\f"]._y += _loc2_;
   }
}
