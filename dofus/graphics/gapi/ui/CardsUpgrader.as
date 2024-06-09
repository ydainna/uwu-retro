class dofus.§\x18\x03\x10§.gapi.ui.CardsUpgrader extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "CardsUpgrader";
   function CardsUpgrader()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.CardsUpgrader.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this.api.network.Ttg.sendLeave();
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.initTexts});
   }
   function addListeners()
   {
      this.resetContainers();
      this._btnClose.addEventListener("click",this);
      this["\x1c\t\x0f"].addEventListener("click",this);
      this["\x1c\t\x0f"].addEventListener("over",this);
      this["\x1c\t\x0f"].addEventListener("out",this);
      this._btnReset.addEventListener("click",this);
      this._ivInventoryViewer.addEventListener("dblClickItem",this);
      this._ivInventoryViewer["\x16\x18\r"]["\x19\x02\n"] = false;
      var _loc2_ = 0;
      while(_loc2_ < 3)
      {
         var _loc3_ = ank.gapi.controls.Container(this["_ctr" + _loc2_]);
         _loc3_.addEventListener("dblClick",this);
         _loc3_.addEventListener("over",this);
         _loc3_.addEventListener("out",this);
         _loc3_.addEventListener("drop",this);
         _loc2_ = _loc2_ + 1;
      }
   }
   function initTexts()
   {
      this["\x1e\x10\x11"].title = this.api.datacenter.Player.data.name;
      this._winCrafter.title = this.api.lang.getText("CARD_UPGRADER");
      this["\x1c\t\x0f"].label = this.api.lang.getText("FUSE_CARD");
      this._btnReset.label = this.api.lang.getText("REINIT_WORD");
      this["\x1d\x01\x14"].text = this.api.lang.getText("SKILL") + " : " + this.api.lang["\x17\x1e\x15"](this["\x1d\x1c\x1c"]).d;
   }
   function initData()
   {
      this._ivInventoryViewer.hideNonCardsFilters();
      this._ivInventoryViewer["\x1a\x1e\x04"] = false;
      this._ivInventoryViewer.dataProvider = this.api.datacenter.Player.Inventory;
   }
   function sendUpgradeCard(§\x19\x13\x07§)
   {
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      this.api.network.Ttg.sendUpgradeCard(_loc2_.unicID);
   }
   function playAnim()
   {
      var _loc2_ = this._ctr0.contentData;
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      var _loc3_ = dofus.datacenter.["\x18\x10\x15"](_loc2_);
      var _loc4_ = 1;
      while(_loc4_ <= 4)
      {
         var _loc5_ = this._cardAnim["_mcCard" + _loc4_];
         var _loc6_ = ank.gapi.controls.Loader(_loc5_.attachMovie("GAPILoader","_ldrCard" + _loc4_,_loc5_.getNextHighestDepth(),{_width:45,_height:45.55,_x:-22.5,_y:-22.75,scaleContent:true,autoLoad:true,contentPath:_loc3_.iconFile}));
         _loc4_ = _loc4_ + 1;
      }
      this._cardAnim.gotoAndPlay(2);
   }
   function fillContainersWithCard(oItemToPut)
   {
      if(!this.isCardItemUpgradable(oItemToPut))
      {
         return undefined;
      }
      var _loc3_ = new dofus.datacenter.["\x18\x10\x15"](undefined,oItemToPut.unicID);
      var _loc4_ = 0;
      while(_loc4_ < 3)
      {
         var _loc5_ = ank.gapi.controls.Container(this["_ctr" + _loc4_]);
         _loc5_.contentData = _loc3_;
         _loc4_ = _loc4_ + 1;
      }
      this._mcFiligrane._visible = this.api.datacenter.Player.ttgCollection.isOwningTtgCard(oItemToPut.gfx);
      this["\x1c\t\x0f"].enabled = true;
   }
   function resetContainers()
   {
      var _loc2_ = 0;
      while(_loc2_ < 3)
      {
         var _loc3_ = ank.gapi.controls.Container(this["_ctr" + _loc2_]);
         _loc3_.contentData = undefined;
         _loc2_ = _loc2_ + 1;
      }
      this._mcFiligrane._visible = false;
      this["\x1c\t\x0f"].enabled = false;
   }
   function isCardItemUpgradable(§\x19\x13\x07§)
   {
      if(!_loc2_.isCardType)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("TTG_UPGRADER_ERROR_MUST_BE_CARD_TYPE",[this.api.datacenter.Player.Name]),"ERROR_CHAT");
         return false;
      }
      var _loc3_ = this.api.datacenter.Player.ttgCollection.getTtgCard(_loc2_.gfx);
      if(_loc3_ != undefined && (_loc3_.linkedFoil != undefined && this.api.datacenter.Player.ttgCollection.isOwningTtgCard(_loc3_.linkedFoil.cardID)))
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("TTG_UPGRADER_ERROR_FOIL_VARIANT_ALREADY_OWNED"),"ERROR_CHAT");
         return false;
      }
      var _loc4_ = this.api.datacenter.Player.ttgCollection.isOwningTtgCard(_loc2_.gfx);
      var _loc5_ = !_loc4_ ? 3 : 2;
      if(_loc2_.Quantity < _loc5_)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("TTG_UPGRADER_ERROR_MUST_OWN_X_QUANTITY_OF_CARD",[_loc5_]),"ERROR_CHAT");
         return false;
      }
      if(_loc4_)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("TTP_UPGRADER_CARD_TO_UPGRADE_OWNED"),"INFO_CHAT");
      }
      return true;
   }
   function §\x1c\x1d§(§\x19\x0e\x0b§)
   {
      this["\x1d\x1c\x1c"] = Number(_loc2_);
      return this.skillId;
   }
   function yes(oEvent)
   {
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\t\x0f"]:
            var _loc3_ = this._ctr0.contentData;
            this.sendUpgradeCard(_loc3_ == undefined ? undefined : dofus.datacenter.["\x18\x10\x15"](_loc3_));
            break;
         case this._btnClose:
            this["\x16\x15\n"]();
            break;
         case this._btnReset:
            this.resetContainers();
      }
   }
   function dblClickItem(oEvent)
   {
      var _loc3_ = _loc2_.item;
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      var _loc0_ = null;
      if((_loc0_ = _loc2_.owner._name) === "_ivInventoryViewer")
      {
         this.fillContainersWithCard(dofus.datacenter.["\x18\x10\x15"](_loc3_));
      }
   }
   function over(oEvent)
   {
      if(_loc2_.target == this["\x1c\t\x0f"])
      {
         var _loc3_ = dofus.datacenter.["\x18\x10\x15"](this._ctr0.contentData);
         if(_loc3_ != undefined)
         {
            var _loc4_ = this.api.datacenter.Player.ttgCollection.isOwningTtgCard(_loc3_.gfx);
            var _loc5_ = !_loc4_ ? 3 : 2;
            var _loc6_ = this.api.lang.getText("TTG_UPGRADER_USED_CARDS") + " : " + _loc5_;
            this.api.ui.showTooltip(_loc6_,this["\x1c\t\x0f"],-20);
         }
      }
      else
      {
         var _loc7_ = _loc2_.target.contentData;
         _loc7_["\x1b\x01\b"](_loc2_.target,_loc2_.target.contentData.style);
      }
   }
   function out(oEvent)
   {
      this.api.ui.hideTooltip();
   }
   function drop(oEvent)
   {
      var _loc3_ = this.gapi["\x17\x16\x07"]();
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      if(_loc3_.isShortcut)
      {
         return undefined;
      }
      this.gapi.removeCursor();
      this.fillContainersWithCard(dofus.datacenter.["\x18\x10\x15"](_loc3_));
   }
}
