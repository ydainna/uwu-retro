class dofus.§\x18\x03\x10§.gapi.ui.Friends extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Friends";
   var §\x1e\b\x19§ = "Friends";
   function Friends()
   {
      super();
   }
   function §\x13\x03§(§\x16\x01\x16§)
   {
      if(this["\x1e\b\x19"] != "Enemies")
      {
         return undefined;
      }
      var _loc3_ = new ank.utils.ExtendedArray();
      var _loc4_ = new ank.utils.ExtendedArray();
      var _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         var _loc6_ = _loc2_[_loc5_];
         if(_loc6_.account.length != 0)
         {
            if(_loc6_.state != "DISCONNECT")
            {
               _loc3_.push(_loc6_);
            }
            else
            {
               _loc4_.push(_loc6_);
            }
         }
         _loc5_ = _loc5_ + 1;
      }
      this["\x1c\x0e\x12"].dataProvider = _loc3_;
      this["\x1c\x0e\x11"].dataProvider = _loc4_;
      return this.enemiesList;
   }
   function §\x13\x1a§(§\x16\x01\x19§)
   {
      if(this["\x1e\b\x19"] != "Friends")
      {
         return undefined;
      }
      var _loc3_ = new ank.utils.ExtendedArray();
      var _loc4_ = new ank.utils.ExtendedArray();
      var _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         var _loc6_ = _loc2_[_loc5_];
         if(_loc6_.account.length != 0)
         {
            if(_loc6_.state != "DISCONNECT")
            {
               _loc3_.push(_loc6_);
            }
            else
            {
               _loc4_.push(_loc6_);
            }
         }
         _loc5_ = _loc5_ + 1;
      }
      this["\x1c\x0e\x12"].dataProvider = _loc3_;
      if(!this.api.config.isStreaming)
      {
         this["\x1c\x0e\x11"].dataProvider = _loc4_;
      }
      return this.friendsList;
   }
   function §\x1d\x0e§(§\x1a\x02\x07§)
   {
      if(this._svSpouse != undefined)
      {
         this._svSpouse.swapDepths(this["\x1d\x10\r"]);
         this._svSpouse.removeMovieClip();
      }
      this.attachMovie("SpouseViewer","_svSpouse",10,{_x:this["\x1d\x10\r"]._x,_y:this["\x1d\x10\r"]._y,spouse:_loc2_});
      this._svSpouse.swapDepths(this["\x1d\x10\r"]);
      return this.spouse;
   }
   function §\x1a\f\x05§(§\x1b\x03\x1d§)
   {
      switch(this["\x1e\b\x19"])
      {
         case "Enemies":
            this.api.network.Enemies["\x1a\f\x02"](_loc2_);
            break;
         case "Friends":
            this.api.network.Friends["\x1a\f\x05"](_loc2_);
            break;
         case "Ignore":
            this.api.kernel.ChatManager["\x1a\r\x04"](_loc2_);
            this["\x1b\x15\x03"]();
      }
   }
   function §\x1b\x15\x03§()
   {
      if(this["\x1e\b\x19"] != "Ignore")
      {
         return undefined;
      }
      var _loc2_ = this.api.kernel.ChatManager["\x17\x14\x14"]();
      var _loc3_ = new ank.utils.ExtendedArray();
      for(var i in _loc2_)
      {
         if(_loc2_[i] != undefined)
         {
            var _loc4_ = new Object();
            _loc4_.name = _loc2_[i].sName;
            _loc4_["\x18\x02\x16"] = _loc2_[i].nClass;
            _loc3_.push(_loc4_);
         }
      }
      this["\x1c\x0e\x11"].dataProvider = new ank.utils.ExtendedArray();
      this["\x1c\x0e\x12"].dataProvider = _loc3_;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Friends.CLASS_NAME);
      this.gapi.getUIComponent("Banner")["\x16\x19\f"] = false;
   }
   function destroy()
   {
      this.gapi.getUIComponent("Banner")["\x16\x19\f"] = true;
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
      this.addToQueue({object:this,method:this["\x1a\x1a\x15"]});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
      this.addToQueue({object:this,method:this.setCurrentTab,params:[this["\x1e\b\x19"]]});
      this["\x1d\x10\r"]._visible = false;
   }
   function initTexts()
   {
      switch(this["\x1e\b\x19"])
      {
         case "Enemies":
            this["\x1e\x10\t"].title = this.api.lang.getText("ENEMIES");
            this["\x1c\x12\x03"].text = this.api.lang.getText("ADD_AN_ENEMY");
            this["\x1c\x19\b"].text = this.api.lang.getText("FRIENDS_INFO_ENEMIES");
            this["\x1c\x0e\x12"]["\x16\x1d\x12"] = ["",this.api.lang.getText("PSEUDONYM"),this.api.lang.getText("LEVEL"),"",""];
            this["\x1c\x0e\x11"]._visible = true;
            this["\x1c\x1c\x06"]._visible = this["\x1c\x0e\x11"]._visible;
            this["\x1c\x1c\n"]._visible = this["\x1c\x0e\x11"]._visible;
            break;
         case "Friends":
            this["\x1e\x10\t"].title = this.api.lang.getText("FRIENDS");
            this["\x1c\x12\x03"].text = this.api.lang.getText("ADD_A_FRIEND");
            this["\x1c\x19\b"].text = this.api.lang.getText("FRIENDS_INFO_FRIENDS");
            this["\x1c\x0e\x12"]["\x16\x1d\x12"] = ["",this.api.lang.getText("PSEUDONYM"),this.api.lang.getText("LEVEL"),"",""];
            this["\x1c\x0e\x11"]._visible = true;
            this["\x1c\x1c\x06"]._visible = this["\x1c\x0e\x11"]._visible;
            this["\x1c\x1c\n"]._visible = this["\x1c\x0e\x11"]._visible;
            break;
         case "Ignore":
            this["\x1e\x10\t"].title = this.api.lang.getText("IGNORED");
            this["\x1c\x12\x03"].text = this.api.lang.getText("ADD_A_IGNORED");
            this["\x1c\x19\b"].text = this.api.lang.getText("FRIENDS_INFO_IGNORE");
            this["\x1c\x0e\x12"]["\x16\x1d\x12"] = ["",this.api.lang.getText("PSEUDONYM"),"","",""];
            this["\x1c\x0e\x11"]._visible = false;
            this["\x1c\x1c\x06"]._visible = this["\x1c\x0e\x11"]._visible;
            this["\x1c\x1c\n"]._visible = this["\x1c\x0e\x11"]._visible;
      }
      this._btnTabFriends.label = this.api.lang.getText("FRIENDS");
      this._btnTabEnemies.label = this.api.lang.getText("ENEMIES");
      this._btnTabIgnore.label = this.api.lang.getText("IGNORED");
      this["\x1c\x18\x13"].text = this.api.lang.getText("IGNORED_DESC");
      this["\x1d\x03\f"].text = this.api.lang.getText("INFORMATIONS");
      this["\x1c\x0e\x11"]["\x16\x1d\x12"] = [this.api.lang.getText("PSEUDO_DOFUS_SIMPLE")];
      this["\x1c\x1c\n"].text = this.api.lang.getText("ONLINE");
      this["\x1c\x1c\x06"].text = this.api.lang.getText("OFFLINE");
      this._btnAdd.label = this.api.lang.getText("ADD");
      this["\x1d\x01\x10"].text = this.api.lang.getText("WARNING_WHEN_FRIENDS_COME_ONLINE");
      if(!this.api.lang.getConfigText("ENABLE_IGNORE_LIST"))
      {
         this._btnSwapMode._visible = false;
      }
   }
   function addListeners()
   {
      this._btnAdd.addEventListener("click",this);
      this._btnClose.addEventListener("click",this);
      this._btnTabFriends.addEventListener("click",this);
      this._btnTabEnemies.addEventListener("click",this);
      this._btnTabIgnore.addEventListener("click",this);
      this["\x1c\n\x1d"].addEventListener("click",this);
      this["\x1c\n\x1d"].addEventListener("over",this);
      this["\x1c\n\x1d"].addEventListener("out",this);
      this["\x1c\x0e\x12"].addEventListener("itemSelected",this);
      this["\x1c\x0e\x12"].addEventListener("itemdblClick",this);
      this["\x1c\x0e\x12"].addEventListener("itemRollOver",this);
      this["\x1c\x0e\x12"].addEventListener("itemRollOut",this);
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
   }
   function §\x18\t\x14§()
   {
      this["\x1c\n\x1d"].selected = this.api.datacenter.Basics.aks_notify_on_friend_connexion;
   }
   function §\x1a\x1a\x15§()
   {
      this["\x1c\x11\x0e"].setFocus();
   }
   function setCurrentTab(§\x1b\x04\x07§)
   {
      var _loc3_ = this["_btnTab" + this["\x1e\b\x19"]];
      var _loc4_ = this["_btnTab" + _loc2_];
      _loc3_.selected = true;
      _loc3_.enabled = true;
      _loc4_.selected = false;
      _loc4_.enabled = false;
      this["\x1e\b\x19"] = _loc2_;
      this["\x1b\x14\x13"]();
   }
   function §\x1b\x14\x13§()
   {
      switch(this["\x1e\b\x19"])
      {
         case "Enemies":
            this.api.network.Enemies["\x17\x17\x0e"]();
            break;
         case "Friends":
            this.api.network.Friends["\x17\x18\x04"]();
            break;
         case "Ignore":
            this["\x1b\x15\x03"]();
      }
      this.addToQueue({object:this,method:this.initTexts});
   }
   function onShortcut(sShortcut)
   {
      if(_loc2_ == "ACCEPT_CURRENT_DIALOG" && this["\x1c\x11\x0e"]["\x17\x11\x18"])
      {
         this.click({target:this._btnAdd});
         return false;
      }
      return true;
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnAdd:
            if(this["\x1c\x11\x0e"].text.length != 0)
            {
               switch(this["\x1e\b\x19"])
               {
                  case "Enemies":
                     this.api.network.Enemies["\x15\x1d\n"]("%" + this["\x1c\x11\x0e"].text);
                     if(this["\x1c\x11\x0e"].text != undefined)
                     {
                        this["\x1c\x11\x0e"].text = "";
                     }
                     this.api.network.Enemies["\x17\x17\x0e"]();
                     break;
                  case "Friends":
                     this.api.network.Friends["\x15\x1d\x10"]("%" + this["\x1c\x11\x0e"].text);
                     if(this["\x1c\x11\x0e"].text != undefined)
                     {
                        this["\x1c\x11\x0e"].text = "";
                     }
                     this.api.network.Friends["\x17\x18\x04"]();
                     break;
                  case "Ignore":
                     this.api.kernel.ChatManager["\x16\x01\x03"](this["\x1c\x11\x0e"].text);
                     if(this["\x1c\x11\x0e"].text != undefined)
                     {
                        this["\x1c\x11\x0e"].text = "";
                     }
                     this["\x1b\x15\x03"]();
               }
            }
            break;
         case this._btnClose:
            this["\x16\x15\n"]();
            break;
         case this._btnTabFriends:
            this.setCurrentTab("Friends");
            break;
         case this._btnTabEnemies:
            this.setCurrentTab("Enemies");
            break;
         case this._btnTabIgnore:
            this.setCurrentTab("Ignore");
            break;
         case this["\x1c\n\x1d"]:
            this.api.network.Friends["\x1a\x18\f"](this["\x1c\n\x1d"].selected);
            this.api.datacenter.Basics.aks_notify_on_friend_connexion = this["\x1c\n\x1d"].selected;
      }
   }
   function §\x19\x0b\x0f§(§\x16\x0f\x14§)
   {
      this["\x1c\n\x1d"].selected = _loc2_;
   }
   function itemSelected(oEvent)
   {
      var _loc3_ = _loc2_.row.item;
      this.api.kernel.GameManager["\x1a\x1e\x14"](undefined,{sPlayerName:_loc3_.name,sPlayerID:_loc3_.id,bNoFriendsInvite:true,bShowJoinFriend:true,bShowViewTtgCollection:_loc3_.hasTtgCollection});
   }
   function itemdblClick(oEvent)
   {
      this.api.kernel.GameManager["\x16\x06\x07"](_loc2_.row.item.name);
   }
   function itemRollOver(oEvent)
   {
      if(this["\x1e\b\x19"] == "Ignore")
      {
         return undefined;
      }
      _loc2_.row.cellRenderer_mc.over(_loc2_);
   }
   function itemRollOut(oEvent)
   {
      _loc2_.row.cellRenderer_mc.out(_loc2_);
   }
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this["\x1c\n\x1d"])
      {
         this.gapi.showTooltip(this.api.lang.getText("WARNING_WHEN_FRIENDS_COME_ONLINE_TOOLTIP"),_loc2_.target,-20);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
