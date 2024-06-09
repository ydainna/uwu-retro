class dofus.§\x18\x03\x10§.gapi.ui.ChooseCharacter extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ChooseCharacter";
   function ChooseCharacter()
   {
      super();
   }
   function §\x1d\x11§(§\x16\x06\r§)
   {
      this["\x1c\x01\x06"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this.initData();
      }
      return this.spriteList;
   }
   function §\x1b\x0e§(§\x19\r\r§)
   {
      this["\x1d\x1b\x1d"] = _loc2_;
      return this.remainingTime;
   }
   function §\x1c\x15§(§\x16\x12\x0e§)
   {
      this["\x1c\b\x06"] = _loc2_;
      return this.showComboBox;
   }
   function §\x10\x0f§(§\x19\x04\x1b§)
   {
      this["\x1d\x13\x19"] = _loc2_;
      return this.characterCount;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.ChooseCharacter.CLASS_NAME);
      if(this.api.datacenter.Basics.aks_is_free_community)
      {
         this._btnSubscribe._visible = false;
      }
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.initTexts});
      this._btnPlay._visible = false;
   }
   function addListeners()
   {
      this._cciSprite0.addEventListener("select",this);
      this._cciSprite1.addEventListener("select",this);
      this._cciSprite2.addEventListener("select",this);
      this._cciSprite3.addEventListener("select",this);
      this._cciSprite4.addEventListener("select",this);
      this._cciSprite0.addEventListener("remove",this);
      this._cciSprite1.addEventListener("remove",this);
      this._cciSprite2.addEventListener("remove",this);
      this._cciSprite3.addEventListener("remove",this);
      this._cciSprite4.addEventListener("remove",this);
      this._cciSprite0.addEventListener("reset",this);
      this._cciSprite1.addEventListener("reset",this);
      this._cciSprite2.addEventListener("reset",this);
      this._cciSprite3.addEventListener("reset",this);
      this._cciSprite4.addEventListener("reset",this);
      this._btnPlay.addEventListener("click",this);
      this._btnCreate.addEventListener("click",this);
      this._btnSubscribe.addEventListener("click",this);
      this._btnBack.addEventListener("click",this);
      this._btnViewAllGifts.addEventListener("click",this);
      this._btnViewAllGifts.addEventListener("over",this);
      this._btnViewAllGifts.addEventListener("out",this);
      var ref = this;
      this._mcGiftsWarning.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._mcGiftsWarning.onRollOut = function()
      {
         ref.out({target:this});
      };
      this.api.kernel["\x1b\x0b\f"]["\x19\x15\x0b"]();
   }
   function §\x1b\x14\r§()
   {
      var _loc2_ = 0;
      while(_loc2_ < 5)
      {
         var _loc3_ = this["_cciSprite" + _loc2_];
         _loc3_["\x1a\x1d\x03"] = this["\x1c\b\x06"];
         _loc3_.params = {index:_loc2_ + this["\x1d\x13\x1b"]};
         _loc3_.data = this["\x1c\x01\x06"][_loc2_ + this["\x1d\x13\x1b"]];
         _loc3_.enabled = this["\x1c\x01\x06"][_loc2_ + this["\x1d\x13\x1b"]] != undefined;
         _loc3_.isDead = _loc3_.data.isDead;
         _loc3_["\x17\x05\x10"] = _loc3_.data.deathCount;
         _loc3_["\x17\x05\x11"] = _loc3_.data["\x17\x05\x11"];
         _loc2_ = _loc2_ + 1;
      }
   }
   function initData()
   {
      this.api.datacenter.Basics.inGame = false;
      this["\x1c\b\x1d"]._visible = this["\x1c\t\x01"]._visible = this["\x1c\x01\x06"].length > 5;
      this["\x1d\x13\x1b"] = 0;
      this["\x1c\b\x1d"].onRelease = function()
      {
         this._parent["\x1c\b\x1d"].gotoAndStop("on");
         this._parent["\x1c\t\x01"].gotoAndStop("on");
         this._parent["\x1d\x13\x1b"]--;
         if(this._parent["\x1d\x13\x1b"] <= 0)
         {
            this._parent["\x1d\x13\x1b"] = 0;
            this.gotoAndStop("off");
         }
         this._parent["\x1b\x14\r"]();
      };
      this["\x1c\t\x01"].onRelease = function()
      {
         this._parent["\x1c\b\x1d"].gotoAndStop("on");
         this._parent["\x1c\t\x01"].gotoAndStop("on");
         this._parent["\x1d\x13\x1b"]++;
         if(this._parent["\x1d\x13\x1b"] >= this._parent["\x1c\x01\x06"].length - 5)
         {
            this._parent["\x1d\x13\x1b"] = this._parent["\x1c\x01\x06"].length - 5;
            this.gotoAndStop("off");
         }
         this._parent["\x1b\x14\r"]();
      };
      this["\x1c\x1e\x02"].text = this.api.kernel.GameManager["\x17\x1e\x01"](this["\x1d\x1b\x1d"]);
      this["\x1c\x1e\x02"].styleName = this["\x1d\x1b\x1d"] != 0 ? "WhiteRightSmallBoldLabel" : "RedRightSmallBoldLabel";
      this._btnSubscribe.enabled = this["\x1d\x1b\x1d"] != -1;
      if(this["\x1c\x01\x06"].length == 0)
      {
         this._btnPlay._visible = false;
      }
      else
      {
         this._btnPlay._visible = true;
      }
      if(!this.api.config.isStreaming)
      {
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
      }
      this["\x1c\b\x1d"].onRelease();
      this._btnBack._visible = !this.api.config.isStreaming;
      var _loc2_ = this.api.datacenter.Basics.aks_gifts_stack;
      this._btnViewAllGifts._visible = this["\x1c\x01\x06"].length > 0 && _loc2_.length > 0;
      this._mcGiftsWarning._visible = _loc2_.length > 0 && _loc2_[0].date != "";
   }
   function initTexts()
   {
      this._lblTitle.text = this.api.lang.getText("CHOOSE_TITLE");
      this._btnPlay.label = this.api.lang.getText("MENU_PLAY");
      this._btnCreate.label = this.api.lang.getText("CREATE_CHARACTER");
      this._btnSubscribe.label = this.api.lang.getText("SUBSCRIPTION");
      this._btnBack.label = this.api.lang.getText("CHANGE_SERVER");
      this._lblCopyright.text = this.api.lang.getText("COPYRIGHT",[new Date().getUTCFullYear()]);
      this._lblAccount.text = this.api.lang.getText("ACCOUNT_INFO");
      if(!this.api.config.isStreaming)
      {
         this["\x1c\x1a\x10"].text = this.api.datacenter.Basics.dofusPseudo;
      }
      else
      {
         this["\x1c\x1a\x10"].text = this.api.lang.getText("POPUP_GAME_BEGINNING_TITLE");
      }
      var _loc2_ = this.api.lang.getText("CURRENT_SERVER",[this.api.datacenter.Basics.aks_current_server.label]);
      if(dofus.Constants.DEBUG)
      {
         _loc2_ += " (" + this.api.datacenter.Basics.aks_current_server.id + ")";
      }
      this["\x1d\x01\n"].text = _loc2_;
   }
   function select(oEvent)
   {
      var _loc3_ = _loc2_.target.params.index;
      this["_cciSprite" + this["\x1d\x1c\x10"]].selected = false;
      if(this["\x1d\x1c\x10"] == _loc3_)
      {
         delete this["\x1d\x1c\x10"];
      }
      else
      {
         this["\x1d\x1c\x10"] = _loc3_;
      }
      if(2229 - this._nSaveLastClick < ank.gapi["\x17\x13\n"]["\x17\x05\x0f"])
      {
         this["\x1d\x1c\x10"] = _loc3_;
         this.click({target:this._btnPlay});
         return undefined;
      }
      this._nSaveLastClick = 8035;
   }
   function remove(oEvent)
   {
      var _loc3_ = _loc2_.target.params.index;
      if(this.api.lang.getConfigText("SECRET_ANSWER_ON_DELETE") && (this["\x1c\x01\x06"][_loc3_].Level >= this.api.lang.getConfigText("SECRET_ANSWER_SINCE_LEVEL") && (this.api.datacenter.Basics.aks_secret_question != undefined && this.api.datacenter.Basics.aks_secret_question.length > 0)))
      {
         this.gapi.loadUIComponent("AskSecretAnswer","AskSecretAnswer",{title:this.api.lang.getText("DELETE_WORD"),charToDelete:this["\x1c\x01\x06"][_loc3_]});
      }
      else
      {
         this.api.kernel.showMessage(this.api.lang.getText("DELETE_WORD"),this.api.lang.getText("DO_U_DELETE_A",[this["\x1c\x01\x06"][_loc3_].name]),"CAUTION_YESNO",{name:"Delete",listener:this,params:{index:_loc3_}});
      }
   }
   function reset(oEvent)
   {
      var _loc3_ = this["\x1c\x01\x06"][_loc2_.target.params.index].id;
      var _loc4_ = this.gapi.loadUIComponent("AskYesNo","AskYesReset",{title:this.api.lang.getText("RESET_SHORTCUT"),text:this.api.lang.getText("DO_U_RESET_CHARACTER"),params:{index:_loc3_}});
      _loc4_.addEventListener("yes",this);
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnPlay":
            if(this["\x1d\x1c\x10"] == undefined)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("SELECT_CHARACTER"),"ERROR_BOX",{name:"NoSelect"});
            }
            else
            {
               this.api.network.Account.setCharacter(this["\x1c\x01\x06"][this["\x1d\x1c\x10"]].id);
            }
            break;
         case "_btnCreate":
            this.gapi.loadUIComponent("CreateCharacter","CreateCharacter",{remainingTime:this["\x1d\x1b\x1d"]});
            this.gapi.unloadUIComponent("ChooseCharacter");
            break;
         case "_btnSubscribe":
            _root.getURL(this.api.lang.getConfigText("PAY_LINK"),"_blank");
            break;
         case "_btnViewAllGifts":
            this.api.ui.getUIComponent("CreateCharacter")._visible = false;
            this.api.ui.getUIComponent("ChooseCharacter")._visible = false;
            this.api.ui.loadUIComponent("Gifts","Gifts",{spriteList:this["\x1c\x01\x06"]},{bForceLoad:true});
            break;
         case "_btnBack":
            this.api.kernel.changeServer(true);
            break;
         case "_btnChangeServer":
      }
   }
   function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnViewAllGifts:
            this.api.ui.showTooltip(this.api.lang.getText("GIFTS_TITLE"),_loc2_.target,-10);
            break;
         case this._mcGiftsWarning:
            this.api.ui.showTooltip(this.api.lang.getText("EXPIRATION_GIFTS",[this.api.datacenter.Basics.aks_gifts_stack[0].date]),_loc2_.target,-20);
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
         case "AskYesReset":
            this.api.network.Account.resetCharacter(_loc2_.params.index);
            break;
         case "AskYesNoDelete":
            this.api.network.Account.deleteCharacter(this["\x1c\x01\x06"][_loc2_.params.index].id);
      }
   }
}
