class dofus.§\x18\x03\x10§.gapi.ui.ServerList extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ServerList";
   static var §\x1a\x12\f§ = 500;
   var §\x1d\x18\x05§ = 0;
   function ServerList()
   {
      super();
   }
   function §\x1c\x0e§(§\x17\x0b\x13§)
   {
      this["\x1c\x10\x0b"] = _loc2_;
      this["\x1c\x10\f"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1b\x14\x14"]();
      }
      return this["\b\x1a"]();
   }
   function §\x1c\r§(nServerID)
   {
      this["\x1d\x1c\x17"] = _loc2_;
      return this["\b\x19"]();
   }
   function §\b\x16§()
   {
      return this["\x1d\x1c\x17"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.ServerList.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
      this.addToQueue({object:this,method:this.initTexts});
   }
   function addListeners()
   {
      this["\x1c\x0e\x13"].addEventListener("itemSelected",this);
      this["\x1c\x0e\x13"].addEventListener("itemdblClick",this);
      this["\x1c\x0e\x13"].addEventListener("itemRollOver",this);
      this["\x1c\x0e\x13"].addEventListener("itemRollOut",this);
      this._btnClose.addEventListener("click",this);
      this._btnSelect.addEventListener("click",this);
      this._btnSearch.addEventListener("click",this);
      this["\x1c\t\x14"].addEventListener("click",this);
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
      var ref = this;
      var _loc2_ = new Object();
      _loc2_.onSetFocus = function(§\x19\x13\f§, §\x19\x06\x1a§)
      {
         if(eval(Selection.getFocus())._parent == ref._tiSearch)
         {
            if(ref._tiSearch.text == ref.api.lang.getText("PSEUDO_DOFUS_SIMPLE"))
            {
               ref._tiSearch.text = "";
            }
         }
         else if(ref._tiSearch.text == "")
         {
            ref._tiSearch.text = ref.api.lang.getText("PSEUDO_DOFUS_SIMPLE");
         }
      };
      Selection.addListener(_loc2_);
   }
   function initTexts()
   {
      this["\x1e\x10\t"].title = "Liste des serveurs";
      this._btnSelect.label = this.api.lang.getText("SELECT");
      this._btnClose.label = this.api.lang.getText("BACK");
      this._btnSearch.label = this.api.lang.getText("OK");
      this["\x1c\x1e\x19"].text = this.api.lang.getText("FIND_FRIEND");
      this["\x1c\x17\x01"].text = this.api.lang.getText("SERVER_LIST_DISPLAY_ALL_COMMUNITIES");
      this._tiSearch.text = !this._tiSearch.text.length ? this.api.lang.getText("PSEUDO_DOFUS_SIMPLE") : this._tiSearch.text;
      this["\x1c\x0e\x13"]["\x16\x1d\x12"] = ["",this.api.lang.getText("NAME_BIG"),this.api.lang.getText("TYPE"),this.api.lang.getText("STATE"),this.api.lang.getText("COMMUNITY"),this.api.lang.getText("POPULATION")];
   }
   function §\x1b\x14\x14§()
   {
      if(this.api.lang.getConfigText("SERVER_LIST_USE_FIND_FRIEND"))
      {
         this["\x1c\x0e\x13"]._y = this["\x1d\x0e\x12"]._y;
      }
      if(_global.CONFIG.onlyHardcore && !this["\x1b\x1d\x19"])
      {
         this["\x1c\t\x14"].selected = true;
         this["\x1b\x1d\x19"] = true;
      }
      var _loc2_ = new ank.utils.ExtendedArray();
      var _loc3_ = new ank.utils.ExtendedArray();
      var _loc4_ = new Object();
      var _loc5_ = 0;
      while(_loc5_ < this["\x1c\x10\x0b"].length)
      {
         var _loc6_ = this["\x1c\x10\x0b"][_loc5_];
         if((_loc6_["\x18\x0e\x03"]() || (this["\x1c\t\x14"].selected || (_loc6_["\x16\x1d\x1b"] == this.api.datacenter.Basics.communityId || _loc6_["\x16\x1d\x1b"] == dofus.datacenter.Server["\x1a\x14\x0f"]))) && _loc6_.isAllowed())
         {
            _loc2_.push(this["\x1c\x10\x0b"][_loc5_]);
         }
         _loc5_ = _loc5_ + 1;
      }
      var _loc7_ = 0;
      while(_loc7_ < _loc2_.length)
      {
         var _loc8_ = _loc2_[_loc7_];
         if(_loc8_ != undefined)
         {
            var _loc9_ = _loc8_.language;
            _loc8_.sortPopulation = _loc8_["\x1a\x06\x10"];
            if(this.api.config.language != _loc9_)
            {
               if(_loc4_[_loc9_] == undefined)
               {
                  _loc4_[_loc9_] = new ank.utils.ExtendedArray();
               }
               _loc4_[_loc9_].push(_loc8_);
            }
            else
            {
               _loc3_.push(_loc8_);
            }
         }
         _loc7_ = _loc7_ + 1;
      }
      _loc3_.sortOn("sortPopulation");
      for(var a in _loc4_)
      {
         var _loc10_ = _loc4_[a];
         _loc10_.sortOn("sortPopulation");
         var _loc11_ = 0;
         while(_loc11_ < _loc10_.length)
         {
            _loc3_.push(_loc10_[_loc11_]);
            _loc11_ = _loc11_ + 1;
         }
      }
      this["\x1c\x0e\x13"].dataProvider = _loc3_;
      var _loc12_ = 0;
      if(this["\x1d\x1c\x17"] != undefined)
      {
         var _loc13_ = 0;
         while(_loc13_ < _loc3_.length)
         {
            if(_loc3_[_loc13_].id == this["\x1d\x1c\x17"])
            {
               _loc12_ = _loc13_;
               break;
            }
            _loc13_ = _loc13_ + 1;
         }
      }
      this["\x1c\x0e\x13"].selectedIndex = _loc12_;
      this["\x1d\x1c\x17"] = this["\x1c\x0e\x13"].selectedItem.id;
   }
   function §\x17\x11\n§()
   {
      if(this._tiSearch.text == this.api.lang.getText("PSEUDO_DOFUS_SIMPLE") || !this._tiSearch.text.length)
      {
         this["\x1c\x10\x0b"] = this["\x1c\x10\f"];
         this["\x1c\x1e\x1b"].text = "";
         this["\x1b\x14\x14"]();
         return undefined;
      }
      if(this["\x1d\x18\x05"] + dofus.graphics.gapi.ui.ServerList["\x1a\x12\f"] > 9694)
      {
         return undefined;
      }
      this["\x1d\x18\x05"] = 1083;
      this.api.network.AccountsearchForFriend(this._tiSearch.text);
   }
   function §\x1a\x19\x13§(§\x16\x05\b§)
   {
      this["\x1c\x10\x0b"] = new ank.utils.ExtendedArray();
      var _loc3_ = 0;
      while(_loc3_ < this["\x1c\x10\f"].length)
      {
         var _loc4_ = 0;
         while(_loc4_ < _loc2_.length)
         {
            if(_loc2_[_loc4_].server == this["\x1c\x10\f"][_loc3_].id)
            {
               this["\x1c\x10\f"][_loc3_].friendCharactersCount = _loc2_[_loc4_].count;
               this["\x1c\x10\f"][_loc3_]["\x1a\x12\x04"] = this._tiSearch.text;
               this["\x1c\x10\x0b"].push(this["\x1c\x10\f"][_loc3_]);
               break;
            }
            _loc4_ = _loc4_ + 1;
         }
         _loc3_ = _loc3_ + 1;
      }
      this["\x1c\x10\x0b"]["\x16\x13\x11"]("friendCharactersCount",Array.DESCENDING | Array.NUMERIC);
      if(!this["\x1c\x10\x0b"].length)
      {
         this["\x1c\x1e\x1b"].text = this.api.lang.getText("SEARCH_RESULT_EMPTY");
      }
      else
      {
         this["\x1c\x1e\x1b"].text = "";
      }
      this["\x1b\x14\x14"]();
   }
   function §\x19\x1c\x13§()
   {
      this["\x1d\x1c\x17"] = this["\x1c\x0e\x13"].selectedItem.id;
      if(this["\x1d\x1c\x17"] == undefined)
      {
         return undefined;
      }
      this.gapi.loadUIComponent("ServerInformations","ServerInformations",{server:this["\x1d\x1c\x17"]});
      this.gapi.getUIComponent("ServerInformations").addEventListener("serverSelected",this);
      this.gapi.getUIComponent("ServerInformations").addEventListener("canceled",this);
   }
   function serverSelected(oEvent)
   {
      this.gapi.unloadUIComponent("ServerInformations");
      this["\x17\x07\x19"]({type:"serverSelected",serverID:_loc2_.value});
   }
   function canceled(oEvent)
   {
      this.gapi.unloadUIComponent("ServerInformations");
   }
   function onShortcut(sShortcut)
   {
      if(_loc2_ == "ACCEPT_CURRENT_DIALOG" && this._tiSearch["\x17\x11\x18"])
      {
         this.click({target:this._btnSearch});
         return false;
      }
      return true;
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnSelect:
            this["\x19\x1c\x13"]();
            break;
         case this._btnClose:
            this["\x1b\x13\x13"]();
            break;
         case this["\x1c\t\x14"]:
            this["\x1b\x14\x14"]();
            break;
         case this._btnSearch:
            this["\x17\x11\n"]();
      }
   }
   function itemRollOver(oEvent)
   {
      _loc2_.row.cellRenderer_mc.over();
   }
   function itemRollOut(oEvent)
   {
      _loc2_.row.cellRenderer_mc.out();
   }
   function itemSelected(oEvent)
   {
      this["\x1d\x1c\x17"] = this["\x1c\x0e\x13"].selectedItem.id;
   }
   function itemdblClick(oEvent)
   {
      this["\x19\x1c\x13"]();
   }
}
