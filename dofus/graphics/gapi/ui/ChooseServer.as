class dofus.§\x18\x03\x10§.gapi.ui.ChooseServer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ChooseServer";
   function ChooseServer()
   {
      super();
   }
   function §\x1c\x0e§(§\x17\x0b\x13§)
   {
      this["\x1c\x10\x0b"] = _loc2_;
      return this["\b\x1a"]();
   }
   function §\x1c\r§(nServerID)
   {
      this["\x1d\x1c\x17"] = _loc2_;
      return this["\b\x19"]();
   }
   function §\x1b\x0e§(§\x19\r\r§)
   {
      this["\x1d\x1b\x1d"] = _loc2_;
      return this.remainingTime;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.ChooseServer.CLASS_NAME);
      if(this.api.datacenter.Basics.aks_is_free_community)
      {
         this._btnSubscribe._visible = false;
      }
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
      this.addToQueue({object:this,method:this.initTexts});
   }
   function addListeners()
   {
      this._btnSelect.addEventListener("click",this);
      this._btnCreate.addEventListener("click",this);
      this._btnSubscribe.addEventListener("click",this);
      this._btnAutomaticSelection.addEventListener("click",this);
   }
   function initTexts()
   {
      this._lblTitle.text = this.api.lang.getText("CHOOSE_SERVER");
      this._lblWhy.text = this.api.lang.getText("CHOOSE_SERVER_WHY");
      this._btnSelect.label = this.api.lang.getText("SELECT");
      this._btnCreate.label = this.api.lang.getText("CREATE_CHARACTER");
      this._btnSubscribe.label = this.api.lang.getText("SUBSCRIPTION");
      this._lblAccount.text = this.api.lang.getText("ACCOUNT_INFO");
      this._lblCopyright.text = this.api.lang.getText("COPYRIGHT",[new Date().getUTCFullYear()]);
      if(!this.api.config.isStreaming)
      {
         this["\x1c\x1a\x10"].text = this.api.datacenter.Basics.dofusPseudo;
      }
      else
      {
         this["\x1c\x1a\x10"].text = this.api.lang.getText("POPUP_GAME_BEGINNING_TITLE");
      }
   }
   function §\x18\t\x14§()
   {
      this.api.datacenter.Basics.createCharacter = false;
      this["\x1d\x1c\x19"] = 0;
      this["\x1c\x1e\x02"].text = this.api.kernel.GameManager["\x17\x1e\x01"](this["\x1d\x1b\x1d"]);
      this["\x1c\x1e\x02"].styleName = this["\x1d\x1b\x1d"] != 0 ? "WhiteRightSmallBoldLabel" : "RedRightSmallBoldLabel";
      this._btnSubscribe.enabled = this["\x1d\x1b\x1d"] != -1;
      this["\x1c\x1a\x10"].onRollOver = function()
      {
         this._parent.gapi.showTooltip(this._parent.api.lang.getText("PSEUDO_DOFUS_INFOS"),this,20,undefined);
      };
      this["\x1c\x1a\x10"].onRollOut = function()
      {
         this._parent.gapi.hideTooltip();
      };
      this["\x1c\x1a\x10"].onRelease = function()
      {
         var _loc2_ = this._parent.api.lang.getText("PSEUDO_DOFUS_LINK");
         if(_loc2_ != undefined && _loc2_ != "")
         {
            this.getURL(_loc2_,"_blank");
         }
      };
      this["\x1c\x0f\n"] = new ank.utils.ExtendedArray();
      var _loc2_ = 0;
      while(_loc2_ < this["\x1c\x10\x0b"].length)
      {
         if(this["\x1c\x10\x0b"][_loc2_].charactersCount > 0)
         {
            this["\x1c\x0f\n"].push(this["\x1c\x10\x0b"][_loc2_]);
         }
         _loc2_ = _loc2_ + 1;
      }
      this["\x1c\x0f\n"]["\x16\x13\x11"]("charactersCount",Array.DESCENDING);
      this["\x1c\b\x1d"]._visible = this["\x1c\t\x01"]._visible = this["\x1c\x0f\n"].length > 5;
      this["\x1c\b\x1d"].onRelease = function()
      {
         this._parent["\x1c\b\x1d"].gotoAndStop("on");
         this._parent["\x1c\t\x01"].gotoAndStop("on");
         this._parent["\x1d\x1c\x19"]--;
         if(this._parent["\x1d\x1c\x19"] <= 0)
         {
            this._parent["\x1d\x1c\x19"] = 0;
            this.gotoAndStop("off");
         }
         this._parent["\x1b\x16\x03"]();
      };
      this["\x1c\t\x01"].onRelease = function()
      {
         this._parent["\x1c\b\x1d"].gotoAndStop("on");
         this._parent["\x1c\t\x01"].gotoAndStop("on");
         this._parent["\x1d\x1c\x19"]++;
         if(this._parent["\x1d\x1c\x19"] >= this._parent["\x1c\x0f\n"].length - 5)
         {
            this._parent["\x1d\x1c\x19"] = this._parent["\x1c\x0f\n"].length - 5;
            this.gotoAndStop("off");
         }
         this._parent["\x1b\x16\x03"]();
      };
      this["\x1c\b\x1d"].onRelease();
      if(this.api.datacenter.Basics.first_connection_from_miniclip)
      {
         this.click({target:{_name:"_btnCreate"}});
      }
   }
   function §\x1b\x16\x03§()
   {
      if(this["\x1c\x0f\n"].length > 0)
      {
         var _loc2_ = 0;
         while(_loc2_ < 5)
         {
            var _loc3_ = this["\x1c\x0f\n"][_loc2_ + this["\x1d\x1c\x19"]];
            if(_loc3_ != undefined)
            {
               var _loc4_ = this["_css" + _loc2_];
               _loc4_._visible = true;
               _loc4_.index = _loc2_;
               _loc4_.serverID = _loc3_.id;
               _loc4_.addEventListener("select",this);
               _loc4_.addEventListener("unselect",this);
               _loc4_.addEventListener("remove",this);
               this["_mcServerEmpty" + _loc2_]._visible = false;
            }
            else
            {
               this["_css" + _loc2_]._visible = false;
               this["_mcServerEmpty" + _loc2_]._visible = true;
            }
            _loc2_ = _loc2_ + 1;
         }
         this["\x1e\x10\x02"]._visible = false;
         this._btnAutomaticSelection._visible = false;
      }
      else
      {
         var _loc5_ = 0;
         while(_loc5_ < 5)
         {
            this["_mcServerEmpty" + _loc5_]._visible = false;
            this["_css" + _loc5_]._visible = false;
            _loc5_ = _loc5_ + 1;
         }
         this._btnAutomaticSelection.label = this.api.lang.getText("MANUAL_SERVER_SELECT");
         this["\x1e\x10\x02"].text = this.api.lang.getText("CHOOSE_SERVER_WHY_BLABLA");
      }
      if(this.api.datacenter.Basics.isCreatingNewCharacter)
      {
         this.api.datacenter.Basics.hasForcedManualSelection = true;
         this.click({target:this._btnCreate});
         this.api.datacenter.Basics.isCreatingNewCharacter = false;
         this.api.datacenter.Basics.hasForcedManualSelection = false;
      }
   }
   function §\x1a\x13\r§(nServerID)
   {
      if(_global.isNaN(_loc2_))
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("CHOOSE_SERVER"),"ERROR_BOX");
      }
      else
      {
         var _loc3_ = this.api.datacenter.Basics.aks_servers.findFirstItem("id",_loc2_).item;
         if(_loc3_.state == dofus.datacenter.Server.SERVER_ONLINE)
         {
            var _loc4_ = new dofus.datacenter.Server(_loc2_,1,0);
            if(_loc4_["\x18\x0e\x1d"]())
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("SRV_MSG_41"),"ERROR_BOX");
               return undefined;
            }
            if(_loc4_.isAllowed())
            {
               this.api.datacenter.Basics.aks_current_server = _loc4_;
               this.api.network.Account.setServer(_loc2_);
            }
            else
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("SERVER_NOT_ALLOWED_IN_YOUR_LANGUAGE"),"ERROR_BOX");
            }
         }
         else
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_CHOOSE_CHARACTER_SERVER_DOWN"),"ERROR_BOX");
         }
      }
   }
   function select(oEvent)
   {
      var _loc3_ = 0;
      while(_loc3_ < 5)
      {
         this["_css" + _loc3_].selected = false;
         _loc3_ = _loc3_ + 1;
      }
      _loc2_.target.selected = true;
      var _loc4_ = _loc2_.target.serverID;
      var _loc5_ = this["\x1d\x1c\x17"];
      this["\x1d\x1c\x17"] = _loc4_;
      if(_loc5_ == _loc4_)
      {
         this.click({target:this._btnSelect});
      }
   }
   function unselect(oEvent)
   {
      var _loc3_ = _loc2_.target.serverID;
      if(this["\x1d\x1c\x17"] == _loc3_)
      {
         delete this["\x1d\x1c\x17"];
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnSelect":
            var _loc3_ = this.gapi.getUIComponent("ServerList");
            if(_loc3_ != undefined)
            {
               this["\x1d\x1c\x17"] = _loc3_["\x1a\x12\x18"];
               _loc3_["\x19\x1c\x13"]();
            }
            else
            {
               this.api.datacenter.Basics.createCharacter = false;
               this["\x1a\x13\r"](this["\x1d\x1c\x17"]);
            }
            break;
         case "_btnCreate":
         case "_btnAutomaticSelection":
            this.gapi.loadUIComponent("ServerList","ServerList",{servers:this.api.datacenter.Basics.aks_servers});
            this.gapi.getUIComponent("ServerList").addEventListener("serverSelected",this);
            this.api.datacenter.Basics.hasForcedManualSelection = false;
            break;
         case "_btnSubscribe":
            _root.getURL(this.api.lang.getConfigText("PAY_LINK"),"_blank");
      }
   }
   function serverSelected(oEvent)
   {
      this.api.datacenter.Basics.createCharacter = true;
      this.gapi.unloadUIComponent("ServerList");
      this["\x1a\x13\r"](_loc2_.serverID);
   }
}
