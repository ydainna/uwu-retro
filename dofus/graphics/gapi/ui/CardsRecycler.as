class dofus.§\x18\x03\x10§.gapi.ui.CardsRecycler extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "CardsRecycler";
   function CardsRecycler()
   {
      super();
   }
   function §\x1e\x17\x13§()
   {
      if(this._ivInventoryViewer != undefined && this._ivInventoryViewer["\x17\x03\x19"] != undefined)
      {
         return this._ivInventoryViewer["\x17\x03\x19"];
      }
      return undefined;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.CardsRecycler.CLASS_NAME);
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
      this._btnClose.addEventListener("click",this);
      this._btnRecycle.addEventListener("click",this);
      this._btnOK.addEventListener("click",this);
      this._ivInventoryViewer.addEventListener("selectedItem",this);
      this._ivInventoryViewer.addEventListener("dblClickItem",this);
      this._ivInventoryViewer.addEventListener("dropItem",this);
      this._cgGrid.addEventListener("selectedItem",this);
      this._cgGrid.addEventListener("dblClickItem",this);
      this._cgGrid.addEventListener("dragItem",this);
      this._cgGrid.addEventListener("dropItem",this);
      this._cgGrid.addEventListener("overItem",this);
      this._cgGrid.addEventListener("outItem",this);
      if(this._oData != undefined)
      {
         this._oData.addEventListener("modelChanged",this);
      }
      else
      {
         ank.utils.Logger.err("[Storage] il n\'y a pas de data");
      }
   }
   function initTexts()
   {
      this["\x1e\x10\x11"].title = this.api.datacenter.Player.data.name;
      this["\x1e\x10\x12"].title = this.api.lang.getText("CARD_RECYCLER");
      this._btnRecycle.label = this.api.lang.getText("RECYCLE_CARD");
      this._btnOK.label = this.api.lang.getText("VALIDATE");
      this["\x1d\x01\x14"].text = this.api.lang.getText("SKILL") + " : " + this.api.lang["\x17\x1e\x15"](this["\x1d\x1c\x1c"]).d;
   }
   function initData()
   {
      this._btnRecycle.enabled = false;
      this._ivInventoryViewer["\x1a\x1e\x04"] = false;
      this._ivInventoryViewer.hideNonCardsFilters();
      this._ivInventoryViewer["\x16\x1a\x17"] = false;
      this.setCraftMode();
   }
   function setCraftMode()
   {
      this._bShowingResult = false;
      this._btnRecycle._visible = true;
      this._btnOK._visible = false;
      this["\x1e\x10\x12"].title = this.api.lang.getText("WORKSHOP");
      var _loc2_ = new ank.utils.ExtendedArray();
      var _loc3_ = this.api.datacenter.Player.Inventory;
      var _loc4_ = this.api.datacenter.Player.ttgCollection;
      var _loc5_ = 0;
      for(; _loc5_ < _loc3_.length; _loc5_ = _loc5_ + 1)
      {
         var _loc6_ = _loc3_[_loc5_];
         if(_loc6_.superType == dofus.datacenter.Item.SUPERTYPE_TTG)
         {
            if(_loc6_.type != dofus.datacenter.Item.TYPE_TTG_BOOSTER)
            {
               if(_loc4_ != undefined)
               {
                  var _loc7_ = _loc4_.getTtgCard(_loc6_.gfx);
                  if(_loc7_ != undefined && _loc7_.rarity == dofus.datacenter.ttg.TtgCard.CARD_RARITY_UNIC)
                  {
                     continue;
                  }
               }
               _loc2_.push(_loc6_.clone());
            }
         }
      }
      this._ivInventoryViewer.dataProvider = _loc2_;
      var _loc8_ = new ank.utils.ExtendedArray();
      this._cgGrid.dataProvider = _loc8_;
   }
   function setRewardMode(eaRewards)
   {
      this._bRecyclingInProgress = false;
      if(eaRewards.length == 0)
      {
         this.api.kernel.showMessage(this.api.lang.getText("CRAFT"),this.api.lang.getText("CRAFT_FAILED"),"ERROR_BOX",{name:"CraftFailed"});
         this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\x0f"]);
         this.setCraftMode();
      }
      else
      {
         this._bShowingResult = true;
         this._btnRecycle._visible = false;
         this._btnOK._visible = true;
         this["\x1e\x10\x12"].title = this.api.lang.getText("BOOSTER_PACK_OBTAINED");
         this._cgGrid.dataProvider = eaRewards;
      }
   }
   function doRecycle()
   {
      if(this._bRecyclingInProgress)
      {
         return undefined;
      }
      var _loc2_ = this._cgGrid.dataProvider;
      if(_loc2_.length == 0)
      {
         return undefined;
      }
      var _loc3_ = new Array();
      var _loc4_ = 0;
      while(_loc4_ < _loc2_.length)
      {
         var _loc5_ = _loc2_[_loc4_];
         _loc3_.push({itemGenericID:_loc5_.unicID,quantity:_loc5_.Quantity});
         _loc4_ = _loc4_ + 1;
      }
      this._cgGrid.dataProvider = new ank.utils.ExtendedArray();
      this._btnRecycle.enabled = false;
      this._bRecyclingInProgress = true;
      this.api.network.Ttg.sendRecycleCards(_loc3_);
   }
   function §\x1c\x1d§(nSkillId)
   {
      this["\x1d\x1c\x1c"] = Number(_loc2_);
      return this.skillId;
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnRecycle:
            this.doRecycle();
            break;
         case this._btnOK:
            this.setCraftMode();
            break;
         default:
            this["\x16\x15\n"]();
      }
   }
   function dragItem(oEvent)
   {
      if(this._bRecyclingInProgress || this._bShowingResult)
      {
         return undefined;
      }
      if(_loc2_.target.contentData == undefined)
      {
         return undefined;
      }
      this.gapi.removeCursor();
      this.gapi["\x1a\x15\x19"](_loc2_.target.contentData);
   }
   function dblClickItem(oEvent)
   {
      var _loc3_ = _loc2_.item;
      var _loc4_ = _loc2_.targets;
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      var _loc5_ = Key.isDown(dofus.Constants["\x1a\x13\x11"]);
      switch(_loc2_.owner._name)
      {
         case "_ivInventoryViewer":
            if(_loc5_ && _loc4_.length > 1)
            {
               this["\x18\x1e\x1a"](_loc4_,true);
            }
            else
            {
               this["\x18\x1e\x19"](_loc3_,true,!Key.isDown(Key.CONTROL) ? 1 : _loc3_.Quantity);
            }
            break;
         case "_cgGrid":
            if(_loc5_ && _loc4_.length > 1)
            {
               this["\x18\x1e\x1a"](_loc4_,false);
               break;
            }
            this["\x18\x1e\x19"](_loc3_,false,!Key.isDown(Key.CONTROL) ? 1 : _loc3_.Quantity);
            break;
      }
   }
   function §\x18\x1e\x1a§(§\x16\x02\x06§, bAddToWorkshop)
   {
      var _loc4_ = new Array();
      var _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         var _loc6_ = _loc2_[_loc5_];
         this["\x18\x1e\x19"](_loc6_,bAddToWorkshop,_loc6_.Quantity);
         _loc5_ = _loc5_ + 1;
      }
   }
   function §\x18\x1e\x19§(§\x19\x13\x07§, bAddToWorkshop, nQuantity)
   {
      if(this._bRecyclingInProgress)
      {
         return undefined;
      }
      if(this._bShowingResult)
      {
         return undefined;
      }
      if(_loc4_ > _loc2_.Quantity)
      {
         _loc4_ = _loc2_.Quantity;
      }
      if(_loc4_ < 1)
      {
         return undefined;
      }
      var _loc5_ = this._ivInventoryViewer.dataProvider;
      var _loc6_ = this._cgGrid.dataProvider;
      if(bAddToWorkshop)
      {
         var _loc7_ = _loc5_.findFirstItem("ID",_loc2_.ID);
         if(_loc7_.item != _loc2_ || _loc7_.item.Quantity != _loc2_.Quantity)
         {
            return undefined;
         }
         var _loc8_ = _loc6_.findFirstItem("ID",_loc2_.ID);
         if(_loc8_.item != undefined)
         {
            _loc8_.item.Quantity += _loc4_;
            _loc6_["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
            _loc6_["\x1b\x15\x05"](_loc8_.index,_loc8_.item);
         }
         else
         {
            var _loc9_ = new dofus.datacenter.Item(_loc2_.ID,_loc2_.unicID,_loc4_,-2,_loc2_.compressedEffects);
            _loc6_["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
            _loc6_.push(_loc9_);
         }
         _loc2_.Quantity -= _loc4_;
         if(_loc2_.Quantity < 1)
         {
            _loc5_["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
            _loc5_["\x1a\f\x0b"](_loc7_.index,1);
         }
         else
         {
            _loc5_["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
            _loc5_["\x1b\x15\x05"](_loc7_.index,_loc2_);
         }
      }
      else
      {
         var _loc10_ = _loc6_.findFirstItem("ID",_loc2_.ID);
         if(_loc10_.item != _loc2_ || _loc10_.item.Quantity != _loc2_.Quantity)
         {
            return undefined;
         }
         var _loc11_ = _loc5_.findFirstItem("ID",_loc2_.ID);
         if(_loc11_.item != undefined)
         {
            _loc11_.item.Quantity += _loc4_;
            _loc5_["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
            _loc5_["\x1b\x15\x05"](_loc11_.index,_loc11_.item);
         }
         else
         {
            var _loc12_ = new dofus.datacenter.Item(_loc2_.ID,_loc2_.unicID,_loc4_,-1,_loc2_.compressedEffects);
            _loc5_["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
            _loc5_.push(_loc12_);
         }
         _loc2_.Quantity -= _loc4_;
         if(_loc2_.Quantity < 1)
         {
            _loc6_["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
            _loc6_["\x1a\f\x0b"](_loc10_.index,1);
         }
         else
         {
            _loc6_["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
            _loc6_["\x1b\x15\x05"](_loc10_.index,_loc2_);
         }
      }
      this._btnRecycle.enabled = _loc6_.length > 0;
   }
   function dropItem(oEvent)
   {
      var _loc3_ = _loc2_.item == undefined ? this.gapi["\x17\x16\x07"]() : _loc2_.item;
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      if(_loc3_.isShortcut)
      {
         return undefined;
      }
      this.gapi.removeCursor();
      if(_loc2_.item != undefined)
      {
         this["\x18\x1e\x19"](_loc3_,false,_loc2_.quantity);
      }
      else
      {
         var _loc4_ = _loc3_.Quantity;
         if(_loc4_ <= 0)
         {
            this.api.kernel.showMessage(this.api.lang.getText("INFORMATIONS"),this.api.lang.getText("SRV_MSG_6"),"ERROR_BOX",{name:undefined});
         }
         else if(_loc4_ > 1)
         {
            var _loc5_ = this.gapi.loadUIComponent("PopupQuantity","PopupQuantity",{value:1,max:_loc4_,params:{ownerMc:_loc2_.owner,targetType:"item",oItem:_loc3_}});
            _loc5_.addEventListener("validate",this);
         }
         else
         {
            var _loc0_ = null;
            if((_loc0_ = _loc2_.owner._name) === "_cgGrid")
            {
               this["\x18\x1e\x19"](_loc3_,true,_loc4_);
            }
         }
      }
   }
   function validate(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.params.targetType) === "item")
      {
         if((_loc0_ = _loc2_.params.ownerMc._name) === "_cgGrid")
         {
            this["\x18\x1e\x19"](_loc2_.params.oItem,true,_loc2_.value);
         }
      }
   }
   function overItem(oEvent)
   {
      var _loc3_ = _loc2_.target.contentData;
      _loc3_["\x1b\x01\b"](_loc2_.target,_loc2_.target.contentData.style);
   }
   function outItem(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
