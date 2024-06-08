class dofus.§\x18\x03\x10§.gapi.ui.CharactersMigration extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "CharactersMigration";
   var §\x19\x03\x0e§ = 500;
   var §\x1d\x18\x03§ = 0;
   function CharactersMigration()
   {
      super();
   }
   function §\x1d\x11§(§\x16\x06\r§)
   {
      this["\x1c\x01\x06"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x18\t\x14"]();
      }
      return this.spriteList;
   }
   function §\x10\x0f§(§\x19\x04\x1b§)
   {
      this["\x1d\x13\x19"] = _loc2_;
      return this.characterCount;
   }
   function §\x1c\x0f§(sName)
   {
      this["\x1d\x0e\x19"]._itCharacterName.text = _loc2_;
      return this.setNewName;
   }
   function §\x18\x06\n§()
   {
      this["\x1d\x0e\x19"]["\x1d\x0f\f"]._visible = false;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.CharactersMigration.CLASS_NAME);
      if(this.api.datacenter.Basics.aks_is_free_community)
      {
         this._btnSubscribe._visible = false;
      }
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x1b\x14\r"]});
      this.addToQueue({object:this,method:this.initTexts});
      this._btnPlay._visible = false;
   }
   function addListeners()
   {
      this._btnSkip.addEventListener("click",this);
      this._btnSubscribe.addEventListener("click",this);
      this._btnBack.addEventListener("click",this);
      this["\x1d\x06\x10"].addEventListener("itemSelected",this);
      var ref = this;
      this["\x1d\x0e\x19"]["\x1d\n\x14"].onRelease = function()
      {
         ref.api.kernel.showMessage(undefined,ref.api.lang.getText("DO_U_DELETE_A",[ref["\x1d\x06\x10"].selectedItem.playerName]),"CAUTION_YESNO",{name:"ConfirmDelete",listener:ref});
      };
      this["\x1d\x0e\x19"]["\x1d\x0f\f"].onRelease = function()
      {
         if(ref["\x1d\x18\x03"] + ref["\x19\x03\x0e"] < 8907)
         {
            ref.api.network.Account.getRandomCharacterName();
            ref["\x1d\x18\x03"] = 10363;
         }
      };
      this["\x1d\x0e\x19"]["\x1d\x0f\f"].onRollOver = function()
      {
         ref.gapi.showTooltip(ref.api.lang.getText("RANDOM_NICKNAME"),_root._xmouse,_root._ymouse - 20);
      };
      this["\x1d\x0e\x19"]["\x1d\x0f\f"].onRollOut = function()
      {
         ref.gapi.hideTooltip();
      };
      this["\x1d\x0e\x19"]["\x1d\x11\x16"].onRelease = function()
      {
         ref["\x1b\x17\r"](ref["\x1d\x0e\x19"]._itCharacterName.text,ref["\x1d\x06\x10"].selectedItem.playerID);
      };
   }
   function §\x1b\x14\r§()
   {
      var _loc2_ = new ank.utils.ExtendedArray();
      for(var i in this["\x1c\x01\x06"])
      {
         var _loc3_ = new Object();
         _loc3_.level = this["\x1c\x01\x06"][i].Level;
         _loc3_.playerName = this["\x1c\x01\x06"][i].name;
         _loc3_.newPlayerName = _loc3_.playerName;
         _loc3_["\x18\x02\x16"] = this["\x1c\x01\x06"][i]["\x18\x02\x16"];
         _loc3_.rowId = i;
         _loc3_.list = this;
         _loc3_.playerID = this["\x1c\x01\x06"][i].id;
         _loc2_.push(_loc3_);
      }
      this["\x1d\x06\x10"].dataProvider = _loc2_;
      this["\x1d\x06\x10"].selectedIndex = 0;
      var _loc4_ = new Object();
      _loc4_.row = new Object();
      _loc4_.row.item = this["\x1d\x06\x10"].selectedItem;
      this.itemSelected(_loc4_);
   }
   function §\x18\t\x14§()
   {
      this.api.datacenter.Basics.inGame = false;
      this["\x1b\x1c\x07"] = new Array();
   }
   function initTexts()
   {
      this._lblTitle.text = this.api.lang.getText("CHOOSE_TITLE");
      this._btnSkip.label = this.api.lang.getText("SERVER_SELECT");
      this._btnSubscribe.label = this.api.lang.getText("SUBSCRIPTION");
      this._btnBack.label = this.api.lang.getText("CHANGE_SERVER");
      this._lblCopyright.text = this.api.lang.getText("COPYRIGHT",[new Date().getUTCFullYear()]);
      this._lblAccount.text = this.api.lang.getText("ACCOUNT_INFO");
      this["\x1c\x1a\x10"].text = this.api.datacenter.Basics.dofusPseudo;
      this["\x1d\x01\n"].text = this.api.lang.getText("CURRENT_SERVER",[this.api.datacenter.Basics.aks_current_server.label]);
      this["\x1e\r\x19"].text = this.api.lang.getText("CHARACTER_MIGRATION_DESC");
      this["\x1c\x1a\x1a"].text = this.api.lang.getText("CHARACTER_MIGRATION_TITLE");
      this["\x1d\x06\x10"]["\x16\x1d\x12"] = ["",this.api.lang.getText("NAME").substr(0,1).toUpperCase() + this.api.lang.getText("NAME").substr(1),this.api.lang.getText("LEVEL"),this.api.lang.getText("STATE")];
   }
   function §\x16\x18\x1d§(§\x18\x1c\x03§)
   {
      if(!_loc2_.attachMovie("staticF","mcAnim",10))
      {
         _loc2_.attachMovie("staticR","mcAnim",10);
      }
   }
   function §\x16\x1a\x12§(sName)
   {
      return Math.random() * 2 > 1;
   }
   function destroy()
   {
      this["\x1d\x0e\x19"]["\x1e\r\x10"].destroy();
   }
   function §\x1b\x17\r§(§\x1a\x10\x15§, §\x19\x04\x1c§)
   {
      if(_loc2_.length == 0 || _loc2_ == undefined)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("NEED_CHARACTER_NAME"),"ERROR_BOX",{name:"CREATENONAME"});
         return undefined;
      }
      if(_loc2_.length > 20)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("LONG_CHARACTER_NAME",[_loc2_,20]),"ERROR_BOX");
         return undefined;
      }
      if(this.api.lang.getConfigText("CHAR_NAME_FILTER") && !this.api.datacenter.Player.isAuthorized)
      {
         var _loc4_ = new dofusutils.["\x19\x03\n"]["\x19\x03\x0b"](_loc2_);
         var _loc5_ = new dofusutils.["\x19\x03\n"]["\x1a\x0f\x01"]["\x19\x03\f"]();
         var _loc6_ = _loc4_["\x18\x10\f"](_loc5_);
         if(!_loc6_.IS_SUCCESS)
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("INVALID_CHARACTER_NAME") + "\r\n" + _loc6_.toString("\r\n"),"ERROR_BOX");
            return undefined;
         }
      }
      if(!this.api.lang.getConfigText("CHARACTER_MIGRATION_ASK_SERVER_CONFIRM"))
      {
         if(this["\x1b\x1c\x07"][_loc3_] != undefined)
         {
            this.api.network.Account.validCharacterMigration(_loc3_,_loc2_);
         }
         else
         {
            var _loc7_ = {name:"ConfirmMigration",params:{nCharacterId:_loc3_,sCharacterName:_loc2_},listener:this};
            this.api.kernel.showMessage(undefined,this.api.lang.getText("CONFIRM_MIGRATION",[_loc2_]),"CAUTION_YESNO",_loc7_);
         }
      }
      else
      {
         this.api.network.Account.askCharacterMigration(_loc3_,_loc2_);
      }
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnSubscribe":
            _root.getURL(this.api.lang.getConfigText("PAY_LINK"),"_blank");
            break;
         case "_btnSkip":
            this.api.network.Account.getCharactersForced();
            this.api.datacenter.Basics.ignoreMigration = true;
            this["\x16\x15\n"]();
      }
   }
   function itemSelected(oEvent)
   {
      this["\x1d\x0e\x19"]["\x1e\r\x10"].zoom = 200;
      this["\x1d\x0e\x19"]["\x1e\r\x10"]["\x1a\n\x1d"] = 50;
      this["\x1d\x0e\x19"]["\x1e\r\x10"]["\x1b\x16\x1b"] = true;
      this["\x1d\x0e\x19"]["\x1e\r\x10"]["\x16\x03\x05"] = false;
      this["\x1d\x0e\x19"]["\x1e\r\x10"]["\x1b\x07\x06"] = this["\x1c\x01\x06"][_loc2_.row.item.rowId];
      this["\x1d\x0e\x19"]["\x1c\x1c\b"].text = this.api.lang.getText("OLD_NAME") + " : " + _loc2_.row.item.playerName;
      this["\x1d\x0e\x19"]._itCharacterName.text = _loc2_.row.item.newPlayerName;
   }
   function initialization(oEvent)
   {
      this["\x1d\x10\x0e"] = _loc2_.clip;
      this.gapi.api.colors.addSprite(this["\x1d\x10\x0e"],this._oCurrentPlayerData);
      this["\x1d\x10\x0e"]._xscale = this["\x1d\x10\x0e"]._yscale = 180;
      this.addToQueue({object:this,method:this["\x16\x18\x1d"],params:[this["\x1d\x10\x0e"]]});
   }
   function yes(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "AskYesNoConfirmDelete":
            this.api.network.Account.deleteCharacterMigration(this["\x1d\x06\x10"].selectedItem.playerID);
            break;
         case "AskYesNoConfirmMigration":
            this["\x1b\x1c\x07"][_loc2_.params.nCharacterId] = true;
            this.api.network.Account.validCharacterMigration(_loc2_.params.nCharacterId,_loc2_.params.sCharacterName);
      }
   }
}
