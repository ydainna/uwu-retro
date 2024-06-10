class dofus.graphics.gapi.ui.Gifts extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Gifts";
   var _aPendingAttributionGifts = new Array();
   var _nCurrentGiftsToAttributeCount = 0;
   var _nTotalGiftsToAttributeCount = 0;
   function Gifts()
   {
      super();
   }
   function get firstGiftInStack()
   {
      var _loc2_ = this.api.datacenter.Basics.aks_gifts_stack;
      return _loc2_[0];
   }
   function §\x1d\x11§(§\x16\x06\r§)
   {
      this["\x1c\x01\x06"] = _loc2_;
      return this.spriteList;
   }
   function get isAttributingGifts()
   {
      return this._bAttributingGifts;
   }
   function checkNextGift()
   {
      if(!this._bAttributingGifts && (this._nCurrentGiftsToAttributeCount > 1 && this._nCurrentGiftsToAttributeCount == this._nTotalGiftsToAttributeCount))
      {
         var _loc2_ = this["_ccs" + this["\x1d\x1c\x10"]].data.name;
         this.api.kernel.showMessage(this.api.lang.getText("INFORMATIONS"),this.api.lang.getText("GIFTS_MASS_DISTRIBUTION_FINISHED_SUCCESS",[_loc2_,this._nTotalGiftsToAttributeCount]),"ERROR_BOX");
      }
      if(this._bAttributingGifts && this._nCurrentGiftsToAttributeCount < this._nTotalGiftsToAttributeCount)
      {
         var _loc3_ = _global.setTimeout(this,"\x16\x07\x02",200,this._nLastAttributionCharacterID);
      }
      else if(this.api.datacenter.Basics.aks_gifts_stack.length != 0)
      {
         this.api.ui.unloadUIComponent("WaitingMessage");
         this.gapi.loadUIComponent("Gifts","Gifts",{spriteList:this["\x1c\x01\x06"]},{bForceLoad:true});
      }
      else
      {
         this.api.ui.unloadUIComponent("WaitingMessage");
         this.gapi.getUIComponent("ChooseCharacter")._visible = true;
         this.gapi.getUIComponent("CreateCharacter")._visible = true;
         this.gapi.getUIComponent("ChooseCharacter")._btnViewAllGifts._visible = false;
         this["\x1b\x13\x13"]();
      }
      this.gapi.getUIComponent("ChooseCharacter")._mcGiftsWarning._visible = this.firstGiftInStack.date != "";
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Gifts.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      if(this._pgWinBackground._visible)
      {
         this.showViewPendingGifts(false);
         return true;
      }
      this.gapi.getUIComponent("ChooseCharacter")._visible = true;
      this.gapi.getUIComponent("CreateCharacter")._visible = true;
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this._pgMovieClips = [this._pgWinBackground,this._pgHeaderRectangle,this._pgLstGifts,this._pgBtnClose,this._pgTxtInfos,this._pgBtnCheckAll,this._pgLblCheckedCount,this._pgBtnChooseCharacter];
      this._visible = false;
      this.showViewPendingGifts(false);
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.initData});
   }
   function addListeners()
   {
      var _loc2_ = 0;
      while(_loc2_ < 5)
      {
         var _loc3_ = this["_ccs" + _loc2_];
         _loc3_.params = {index:_loc2_};
         _loc3_.addEventListener("select",this);
         _loc2_ = _loc2_ + 1;
      }
      this["\x1c\r\x06"].addEventListener("selectItem",this);
      this["\x1c\r\x06"]["\x19\x02\n"] = false;
      this._btnClose.addEventListener("click",this);
      this._btnSelect.addEventListener("click",this);
      this._btnViewAllGifts.addEventListener("click",this);
      this._pgBtnClose.addEventListener("click",this);
      this._pgBtnChooseCharacter.addEventListener("click",this);
      this._pgBtnCheckAll.addEventListener("click",this);
      this._pgBtnCheckAll.addEventListener("over",this);
      this._pgBtnCheckAll.addEventListener("out",this);
      this["\x1c\r\x06"].addEventListener("overItem",this);
      this["\x1c\r\x06"].addEventListener("outItem",this);
      this._lblDateGift.addEventListener("over",this);
      this._lblDateGift.addEventListener("out",this);
      var ref = this;
      this._mcGiftsWarning.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._mcGiftsWarning.onRollOut = function()
      {
         ref.out({target:this});
      };
   }
   function initTexts()
   {
      this._pgBtnCheckAll.label = this.api.lang.getText("SELECT_UNSELECT_ALL_BUTTON");
      this["\x1c\x18\b"].text = this.api.lang.getText("THE_GIFT");
      this._lblItems.text = this.api.lang.getText("GIFT_CONTENT");
      this._btnClose.label = this.api.lang.getText("CLOSE");
      this._btnViewAllGifts.label = this.api.lang.getText("MY_GIFTS");
      this._btnSelect.label = this.api.lang.getText("SELECT");
      this._pgWinBackground.title = this.api.lang.getText("MY_GIFTS");
      this._pgTxtInfos.text = this.api.lang.getText("GIFTS_VIEWER_INFOS");
   }
   function showViewPendingGifts(bShow)
   {
      var _loc3_ = 0;
      while(_loc3_ < this._pgMovieClips.length)
      {
         var _loc4_ = this._pgMovieClips[_loc3_];
         _loc4_._visible = _loc2_;
         _loc3_ = _loc3_ + 1;
      }
   }
   function initData()
   {
      var _loc2_ = this.firstGiftInStack;
      var _loc0_ = null;
      if((_loc0_ = _loc2_.type) !== 1)
      {
         this.checkNextGift();
      }
      else
      {
         this._visible = true;
         this["\x1c\r\x06"].dataProvider = _loc2_.items;
         this["\x1c\r\x06"].selectedIndex = 0;
         this["\x1c\x11\x13"]["\x18\x10\x17"] = _loc2_.items[0];
         this["\x1d\x05\f"].contentPath = _loc2_.gfxUrl;
         this["\x1d\x03\x0b"].text = _loc2_.title;
         this["\x1e\x0f\n"].text = _loc2_.desc;
         this._lblDateGift.text = _loc2_.date != "" ? this.api.lang.getText("EXPIRATION_DATE",[_loc2_.date]) : "";
         this._lblDateGift.enableOverEvents = true;
         var _loc3_ = 0;
         while(_loc3_ < 5)
         {
            var _loc4_ = this["_ccs" + _loc3_];
            _loc4_.data = this["\x1c\x01\x06"][_loc3_];
            _loc4_.enabled = this["\x1c\x01\x06"][_loc3_] != undefined;
            _loc3_ = _loc3_ + 1;
         }
         this.refreshGiftsList();
      }
   }
   function refreshGiftsList()
   {
      var _loc2_ = new ank.utils.ExtendedArray();
      var _loc3_ = this.firstGiftInStack;
      _loc3_.forbidPlayerChoice = true;
      _loc3_.playerWantsAttribution = true;
      _loc3_.indexOnGiftsStack = -1;
      _loc3_.addEventListener("giftAttributionStateChanged",this);
      _loc2_.push(_loc3_);
      var _loc4_ = this.api.datacenter.Basics.aks_gifts_stack;
      var _loc5_ = false;
      var _loc6_ = false;
      var _loc7_ = false;
      var _loc8_ = 1;
      this._aPendingAttributionGifts = new Array();
      this._aPendingAttributionGifts.push(_loc3_);
      var _loc9_ = 1;
      while(_loc9_ < _loc4_.length)
      {
         var _loc10_ = _loc4_[_loc9_];
         _loc10_.addEventListener("giftAttributionStateChanged",this);
         if(!_loc10_.playerWantsAttribution)
         {
            _loc5_ = true;
         }
         else if(_loc5_)
         {
            _loc10_.playerWantsAttribution = false;
         }
         if(_loc6_)
         {
            _loc10_.forbidPlayerChoice = true;
         }
         else
         {
            _loc10_.forbidPlayerChoice = false;
         }
         if(_loc10_.playerWantsAttribution)
         {
            _loc8_ = _loc8_ + 1;
            this._aPendingAttributionGifts.push(_loc10_);
         }
         else
         {
            _loc6_ = true;
         }
         if(_loc10_.date != "")
         {
            _loc7_ = true;
         }
         _loc10_.indexOnGiftsStack = _loc9_;
         _loc2_.push(_loc10_);
         _loc9_ = _loc9_ + 1;
      }
      this._pgLstGifts.dataProvider = _loc2_;
      var _loc11_ = _loc8_ > 1;
      this["\x1d\x05\f"]._visible = !_loc11_;
      this["\x1c\x18\b"]._visible = !_loc11_;
      this._lblItems._visible = !_loc11_;
      this["\x1d\x03\x0b"]._visible = !_loc11_;
      this["\x1e\x0f\n"]._visible = !_loc11_;
      this._lblDateGift._visible = !_loc11_;
      this["\x1c\r\x06"]._visible = !_loc11_;
      this["\x1c\x11\x13"]._visible = !_loc11_;
      this["\x1d\f\x14"]._visible = !_loc11_;
      this._mcItvEffectsBg._visible = !_loc11_;
      this["\x1d\f\x13"]._visible = !_loc11_;
      this._mcColSeparator._visible = !_loc11_;
      this._mcTopBrownRectangle._visible = !_loc11_;
      if(!_loc11_)
      {
         this._taMultipleGiftsList.text = "";
         this._lblTitle.text = this.api.lang.getText("GIFTS_TITLE");
         this._pgLblCheckedCount.text = this.api.lang.getText("MASS_GIFTS_NOT_CONFIGURED_YET");
         this._pgBtnChooseCharacter.label = this.api.lang.getText("GIFTS_SELECT_CHARACTER_ONE_GIFT");
         this["\x1d\x01\x05"].text = this.api.lang.getText("GIFT_SELECT_CHARACTER");
      }
      else
      {
         var _loc12_ = new Array();
         var _loc13_ = 0;
         while(_loc13_ < this._aPendingAttributionGifts.length)
         {
            var _loc14_ = this._aPendingAttributionGifts[_loc13_];
            _loc12_.push(_loc14_.title);
            _loc13_ = _loc13_ + 1;
         }
         this._taMultipleGiftsList.text = this.api.lang.getText("GIFTS_MASS_DISTRIBUTION_HELP",[_loc8_,_loc12_.join("\n- ")]);
         this._lblTitle.text = this.api.lang.getText("GIFTS_UI_TITLE_ON_MASS",[_loc8_]);
         this._pgLblCheckedCount.text = this.api.lang.getText("GIFTS_MASS_DISTRIBUTION",[_loc8_]);
         this._pgBtnChooseCharacter.label = this.api.lang.getText("GIFTS_SELECT_CHARACTER_MASS_GIFTS",[_loc8_]);
         this["\x1d\x01\x05"].text = this.api.lang.getText("GIFTS_SELECT_RECEIVER");
      }
      this._mcGiftsWarning._visible = _loc7_;
   }
   function autoSelectUnselectAllGifts()
   {
      var _loc2_ = this.api.datacenter.Basics.aks_gifts_stack;
      if(this._aPendingAttributionGifts.length == _loc2_.length)
      {
         var _loc3_ = 1;
         while(_loc3_ < _loc2_.length)
         {
            var _loc4_ = _loc2_[_loc3_];
            _loc4_.playerWantsAttribution = false;
            _loc3_ = _loc3_ + 1;
         }
      }
      else
      {
         var _loc5_ = 1;
         while(_loc5_ < _loc2_.length)
         {
            var _loc6_ = _loc2_[_loc5_];
            _loc6_.playerWantsAttribution = true;
            _loc5_ = _loc5_ + 1;
         }
      }
      this.refreshGiftsList();
   }
   function giftAttributionStateChanged(oEvent)
   {
      this.refreshGiftsList();
   }
   function select(oEvent)
   {
      var _loc3_ = _loc2_.target.params.index;
      this["_ccs" + this["\x1d\x1c\x10"]].selected = false;
      if(this["\x1d\x1c\x10"] == _loc3_)
      {
         delete this["\x1d\x1c\x10"];
      }
      else
      {
         this["\x1d\x1c\x10"] = _loc3_;
      }
      if(3425 - this._nSaveLastClick < ank.gapi["\x17\x13\n"]["\x17\x05\x0f"])
      {
         this["\x1d\x1c\x10"] = _loc3_;
         this.click({target:this._btnSelect});
         return undefined;
      }
      this._nSaveLastClick = 10062;
   }
   function selectItem(oEvent)
   {
      this["\x1c\x11\x13"]["\x18\x10\x17"] = _loc2_.target.contentData;
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._pgBtnCheckAll:
            this.autoSelectUnselectAllGifts();
            break;
         case this._pgBtnClose:
         case this._pgBtnChooseCharacter:
            this.showViewPendingGifts(false);
            break;
         case this._btnViewAllGifts:
            this.showViewPendingGifts(!this._pgWinBackground._visible);
            break;
         case this._btnClose:
            this["\x16\x15\n"]();
            break;
         case this._btnSelect:
            if(!_global.isNaN(this["\x1d\x1c\x10"]))
            {
               var _loc3_ = this._aPendingAttributionGifts.length;
               var _loc4_ = this["_ccs" + this["\x1d\x1c\x10"]].data.name;
               var _loc5_ = _loc3_ > 1;
               if(_loc5_)
               {
                  this.api.kernel.showMessage(this.api.lang.getText("MY_GIFTS"),this.api.lang.getText("GIFT_MASS_ATTRIBUTION_CONFIRMATION",[_loc3_,_loc4_]),"CAUTION_YESNO",{name:"GiftAttribution",listener:this,params:{charId:this["_ccs" + this["\x1d\x1c\x10"]].data.id}});
               }
               else
               {
                  var _loc6_ = this.firstGiftInStack;
                  var _loc7_ = dofus.datacenter.Item(_loc6_.items[0]);
                  this.api.kernel.showMessage(this.api.lang.getText("THE_GIFT"),this.api.lang.getText("GIFT_ATTRIBUTION_CONFIRMATION",[_loc7_.name,_loc4_]),"CAUTION_YESNO",{name:"GiftAttribution",listener:this,params:{charId:this["_ccs" + this["\x1d\x1c\x10"]].data.id}});
               }
               break;
            }
            this.api.kernel.showMessage(undefined,this.api.lang.getText("SELECT_CHARACTER"),"ERROR_BOX",{name:"NoSelect"});
            break;
      }
   }
   function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._pgBtnCheckAll:
            this.api.ui.showTooltip(this.api.lang.getText("SELECT_UNSELECT_ALL_BUTTON_HELP"),_loc2_.target,-40,{bXLimit:true,bYLimit:false});
            break;
         case this._lblDateGift:
            this.api.ui.showTooltip(this.api.lang.getText("EXPIRATION_GIFT",[this.firstGiftInStack.date]),_loc2_.target,0,{bTopAlign:true});
            break;
         case this._mcGiftsWarning:
            this.api.ui.showTooltip(this.api.lang.getText("EXPIRATION_GIFTS",[this.firstGiftInStack.date]),_loc2_.target,-20);
      }
   }
   function out(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._pgBtnCheckAll:
         case this._lblDateGift:
         case this._mcGiftsWarning:
            this.api.ui.hideTooltip();
      }
   }
   function overItem(oEvent)
   {
      var _loc3_ = _loc2_.target;
      var _loc4_ = dofus.datacenter.Item(_loc3_.contentData);
      _loc4_["\x1b\x01\b"](_loc3_,_loc4_.style);
   }
   function outItem(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function yes(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "AskYesNoGiftAttribution")
      {
         this.attributeGiftToCharacter(_loc2_.params.charId);
      }
   }
   function §\x16\x07\x02§(nCharID)
   {
      var _loc3_ = dofus.datacenter.Gift(this.api.datacenter.Basics.aks_gifts_stack.shift());
      if(!this._bAttributingGifts)
      {
         this._bAttributingGifts = true;
         this._nCurrentGiftsToAttributeCount = 0;
         this._nTotalGiftsToAttributeCount = this._aPendingAttributionGifts.length;
      }
      this._nLastAttributionCharacterID = nCharID;
      this._nCurrentGiftsToAttributeCount++;
      if(this._nCurrentGiftsToAttributeCount == this._nTotalGiftsToAttributeCount)
      {
         this._bAttributingGifts = false;
      }
      this.api.network.Account.attributeGiftToCharacter(_loc3_.id,nCharID);
      this._visible = false;
      this.api.ui.loadUIComponent("WaitingMessage","WaitingMessage",{text:this.api.lang.getText("WAITING_MSG_RECORDING") + " (" + this.api.lang.getText("GIFT") + " " + this._nCurrentGiftsToAttributeCount + "/" + this._nTotalGiftsToAttributeCount + ")"},{bAlwaysOnTop:true,bForceLoad:true});
   }
}
