class dofus.graphics.gapi.ui.MainMenu extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "MainMenu";
   var §\x1e\x0b\x1d§ = "no";
   function MainMenu()
   {
      super();
   }
   function §\x1b\x02§(§\x1b\x07\x16§)
   {
      this["\x1e\x0b\x1d"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1a\x19\x04"]();
      }
      return this.quitMode;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.MainMenu.CLASS_NAME);
      this["\x1c\t\x07"]._visible = false;
      this._btnSubscribe._visible = false;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x1a\x19\x04"]});
   }
   function addListeners()
   {
      this._btnQuit.addEventListener("click",this);
      this._btnOptions.addEventListener("click",this);
      this._btnHelp.addEventListener("click",this);
      this["\x1c\t\x07"].addEventListener("click",this);
      this._btnSubscribe.addEventListener("click",this);
      this._btnQuit.addEventListener("over",this);
      this._btnOptions.addEventListener("over",this);
      this._btnHelp.addEventListener("over",this);
      this["\x1c\t\x07"].addEventListener("over",this);
      this._btnSubscribe.addEventListener("over",this);
      this._btnQuit.addEventListener("out",this);
      this._btnOptions.addEventListener("out",this);
      this._btnHelp.addEventListener("out",this);
      this["\x1c\t\x07"].addEventListener("out",this);
      this._btnSubscribe.addEventListener("out",this);
   }
   function §\x1a\x19\x04§()
   {
      this._btnQuit.enabled = this["\x1e\x0b\x1d"] != "no";
      if(dofus.Constants.BETAVERSION > 0)
      {
         this["\x1d\b\n"]._x = 730;
         this["\x1c\x02\t"] = true;
         this["\x1c\t\x07"]._visible = true;
      }
      else if(!this.api.datacenter.Player.subscriber && !this.api.datacenter.Basics.aks_is_free_community)
      {
         this["\x1d\b\n"]._x = 730;
         this["\x1c\x02\t"] = true;
         this._btnSubscribe._visible = true;
      }
      else
      {
         this["\x1c\t\x07"]._visible = false;
      }
   }
   function updateSubscribeButton()
   {
      if(dofus.Constants.BETAVERSION == 0 && (!this.api.datacenter.Player.subscriber && !this.api.datacenter.Basics.aks_is_free_community))
      {
         if(!this["\x1c\x02\t"])
         {
            this["\x1d\b\n"]._x = 730;
            this["\x1c\x02\t"] = true;
         }
         this._btnSubscribe._visible = true;
      }
      else if(!this["\x1c\t\x07"]._visible)
      {
         if(this["\x1c\x02\t"])
         {
            this["\x1d\b\n"]._x = 744.3;
            this["\x1c\x02\t"] = false;
         }
         this._btnSubscribe._visible = false;
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnQuit:
            if(this["\x1e\x0b\x1d"] == "quit")
            {
               this.api.kernel.quit(false);
            }
            else if(this["\x1e\x0b\x1d"] == "menu")
            {
               this.gapi.loadUIComponent("AskMainMenu","AskMainMenu");
            }
            break;
         case this._btnOptions:
            this.gapi.loadUIComponent("Options","Options",{_y:(this.gapi["\x1a\x11\x07"] != 432 ? 0 : -50)},{bAlwaysOnTop:true});
            break;
         case this._btnHelp:
            if(this.api.ui.getUIComponent("Banner") != undefined)
            {
               this.gapi.loadUIComponent("KnownledgeBase","KnownledgeBase");
            }
            else
            {
               _root.getURL(this.api.lang.getConfigText("TUTORIAL_FILE"),"_blank");
            }
            break;
         case this._btnSubscribe:
            _root.getURL(this.api.lang.getConfigText("PAY_LINK"),"_blank");
            break;
         case this["\x1c\t\x07"]:
            _root.getURL(this.api.lang.getConfigText("BETA_BUGS_REPORT"),"_blank");
      }
   }
   function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnQuit:
            this.api.ui.showTooltip(this.api.lang.getText("MAIN_MENU_QUIT"),_loc2_.target,20,{bXLimit:true,bYLimit:true});
            break;
         case this._btnOptions:
            this.api.ui.showTooltip(this.api.lang.getText("MAIN_MENU_OPTIONS"),_loc2_.target,20,{bXLimit:true,bYLimit:true});
            break;
         case this._btnHelp:
            if(this.api.ui.getUIComponent("Banner") != undefined)
            {
               this.api.ui.showTooltip(this.api.lang.getText("KB_TITLE"),_loc2_.target,20,{bXLimit:true,bYLimit:true});
            }
            else
            {
               this.api.ui.showTooltip(this.api.lang.getText("MAIN_MENU_HELP"),_loc2_.target,20,{bXLimit:true,bYLimit:true});
            }
            break;
         case this["\x1c\t\x07"]:
            this.api.ui.showTooltip(this.api.lang.getText("MAIN_MENU_BUGS"),_loc2_.target,20,{bXLimit:true,bYLimit:true});
            break;
         case this._btnSubscribe:
            this.api.ui.showTooltip(this.api.lang.getText("SUBSCRIPTION"),_loc2_.target,20,{bXLimit:true,bYLimit:true});
      }
   }
   function out(oEvent)
   {
      this.api.ui.hideTooltip();
   }
}
