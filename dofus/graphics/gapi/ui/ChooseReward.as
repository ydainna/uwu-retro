class dofus.graphics.gapi.ui.ChooseReward extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ChooseReward";
   static var SLOT_CHOICES = 3;
   static var ITEM_TYPE = 126;
   var _bIsDisplayed = true;
   function ChooseReward()
   {
      super();
   }
   function set items(§\x16\x02\x06§)
   {
      this["\x1b\x1d\n"] = _loc2_;
      return this["\x01\x0b"]();
   }
   function set tokens(aTokens)
   {
      this._aTokens = aTokens;
   }
   function set currentRoom(nCurrentRoom)
   {
      this._nCurrentRoom = nCurrentRoom;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.ChooseReward.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.initTexts});
   }
   function addListeners()
   {
      this._btnValidate.addEventListener("click",this);
      this._btnHide.addEventListener("click",this);
      var _loc2_ = 0;
      while(_loc2_ < dofus.graphics.gapi.ui.ChooseReward.SLOT_CHOICES)
      {
         var _loc3_ = ank.gapi.controls.Container(this["_ctr" + _loc2_]);
         _loc3_.addEventListener("click",this);
         _loc3_.addEventListener("dblClick",this);
         _loc3_.addEventListener("over",this);
         _loc3_.addEventListener("out",this);
         _loc2_ = _loc2_ + 1;
      }
   }
   function initTexts()
   {
      this._winBackgroundSmall._visible = false;
      this._winItemViewerProgress.title = this.api.lang.getText("YOUR_PROGRESS");
      this._winBackgroundSmall.title = this.api.lang.getText("CHOOSE_LOOT");
      this["\x1e\x10\x14"].title = this.api.lang.getText("CHOOSE_LOOT");
      this._btnValidate.label = this.api.lang.getText("VALIDATE");
      this["\x1c\x17\x0e"].text = this.api.lang.getText("EFFECTS") + " :";
      this["\x1c\x13\x18"].text = this.api.lang.getText("BONUS_CHOOSEREWARD") + " : ";
      this.setTonicName(0);
      this.setTonicName(1);
      this.setTonicName(2);
      var _loc2_ = 0;
      while(_loc2_ < this._aTokens.length)
      {
         var _loc3_ = ank.gapi.controls.Label(this._mcProgressClip["_lblTokens" + _loc2_]);
         _loc3_.text = this._aTokens[_loc2_];
         _loc2_ = _loc2_ + 1;
      }
      this.animateProgression(this._nCurrentRoom);
   }
   function initData()
   {
      this.setItemsSlots(this["\x1b\x1d\n"]);
   }
   function validateReward(§\x19\b\x14§)
   {
      this.api.network.Items.selectRouletteItem(_loc2_);
   }
   function setTonicName(§\x19\b\x14§)
   {
      var _loc3_ = ank.gapi.controls.Label(this["_lblTonic" + _loc2_]);
      _loc3_.text = this["\x1b\x1d\n"][_loc2_].realItem.name;
   }
   function animateProgression(nCurrentRoom)
   {
      this._mcProgressClip.gotoAndStop(nCurrentRoom);
   }
   function windowHidder()
   {
      if(this._bIsDisplayed)
      {
         this._bIsDisplayed = false;
         this._btnHide.backgroundDown = "ButtonMaximizeDown";
         this._btnHide.backgroundUp = "ButtonMaximizeUp";
         this._btnHide.styleName = "OrangeButton";
         this._btnHide._x = 188;
         this._btnHide._y = 417;
         this.swapDepths(this.getDepth() - 666);
      }
      else
      {
         this._bIsDisplayed = true;
         this._btnHide.backgroundDown = "ButtonMinimizeDown";
         this._btnHide.backgroundUp = "ButtonMinimizeUp";
         this._btnHide.styleName = "OrangeButton";
         this._btnHide._x = 574;
         this._btnHide._y = 157;
         this.swapDepths(this.getDepth() + 666);
      }
      this["\x1c\x17\x0e"]._visible = this._bIsDisplayed;
      this._btnValidate._visible = this._bIsDisplayed;
      this._ctr0._visible = this._bIsDisplayed;
      this._ctr1._visible = this._bIsDisplayed;
      this._ctr2._visible = this._bIsDisplayed;
      this["\x1c\x13\x18"]._visible = this._bIsDisplayed;
      this["\x1e\x10\x14"]._visible = this._bIsDisplayed;
      this._winItemViewerProgress._visible = this._bIsDisplayed;
      this._lblTonic0._visible = this._bIsDisplayed;
      this._lblTonic1._visible = this._bIsDisplayed;
      this._lblTonic2._visible = this._bIsDisplayed;
      this["\x1c\x11\x13"]._visible = this._bIsDisplayed;
      this._itvItemViewerBonus._visible = this._bIsDisplayed;
      this._mcRoulette0._visible = this._bIsDisplayed;
      this._mcRoulette1._visible = this._bIsDisplayed;
      this._mcRoulette2._visible = this._bIsDisplayed;
      this._hidder0._visible = this._bIsDisplayed;
      this._hidder1._visible = this._bIsDisplayed;
      this._hidder2._visible = this._bIsDisplayed;
      this._bgHidder._visible = this._bIsDisplayed;
      this._mcProgressClip._visible = this._bIsDisplayed;
      this._winBackgroundSmall._visible = !this._bIsDisplayed;
      var _loc2_ = 0;
      while(_loc2_ < 7)
      {
         var _loc3_ = MovieClip(this["_mcCadre" + _loc2_]);
         _loc3_._visible = this._bIsDisplayed;
         _loc2_ = _loc2_ + 1;
      }
   }
   function setItemsSlots(§\x16\x02\x06§)
   {
      var _loc3_ = 0;
      while(_loc3_ < dofus.graphics.gapi.ui.ChooseReward.SLOT_CHOICES)
      {
         var _loc4_ = _loc2_[_loc3_];
         var _loc5_ = _loc4_.realItem;
         var _loc6_ = _loc4_.fakeItems;
         var _loc7_ = _loc4_.bonusEffects;
         var _loc8_ = ank.gapi.controls.Container(this["_ctr" + _loc3_]);
         _loc8_.contentData = _loc5_;
         this["_oBonus" + _loc3_] = _loc7_;
         var _loc9_ = MovieClip(this["_mcRoulette" + _loc3_]);
         ank.gapi.controls.Loader(_loc9_._mcRealIcon.attachMovie("GAPILoader","_ldrRealIcon",this.getNextHighestDepth(),{_width:34,_height:34,_x:-17,_y:-17,scaleContent:true,autoLoad:true,contentPath:_loc5_.iconFile}));
         var _loc10_ = 0;
         while(_loc10_ < dofus.aks.ChooseReward.ICONS_NEEDED)
         {
            var _loc11_ = _loc6_[_loc10_];
            var _loc12_ = _loc9_["_mcFakeIcon" + _loc10_];
            ank.gapi.controls.Loader(_loc12_.attachMovie("GAPILoader","_ldrFakeIcon" + _loc10_,this.getNextHighestDepth(),{_width:34,_height:34,_x:-17,_y:-17,scaleContent:true,autoLoad:true,contentPath:_loc11_.iconFile}));
            _loc10_ = _loc10_ + 1;
         }
         _loc3_ = _loc3_ + 1;
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnHide:
            this.windowHidder();
            break;
         case this._btnValidate:
            var _loc3_ = this.gapi.loadUIComponent("AskYesNo","AskYesNoLoot",{title:this.api.lang.getText("QUESTION"),text:this.api.lang.getText("CONFIRM_LOOT",[this["_ctr" + this["\x1d\x17\x03"]].contentData.name])});
            _loc3_.addEventListener("yes",this);
            break;
         default:
            this["\x1d\x17\x03"] = _loc2_.target._name.substr(4);
            if(this["\x1d\x17\x03"] == undefined)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("PLEASE_SELECT"),"ERROR_CHAT");
               return undefined;
            }
            if(Key.isDown(dofus.Constants["\x16\x19\x13"]))
            {
               this.api.kernel.GameManager["\x18\n\x1d"](_loc2_.target.contentData);
               return undefined;
            }
            var _loc4_ = 0;
            while(_loc4_ < dofus.graphics.gapi.ui.ChooseReward.SLOT_CHOICES)
            {
               var _loc5_ = ank.gapi.controls.Container(this["_ctr" + _loc4_]);
               _loc5_.selected = this["\x1d\x17\x03"] == _loc4_;
               _loc4_ = _loc4_ + 1;
            }
            this._btnValidate.enabled = true;
            this["\x1c\x11\x13"]["\x18\x10\x17"] = _loc2_.target.contentData;
            this._itvItemViewerBonus["\x18\x10\x17"] = this["_oBonus" + this["\x1d\x17\x03"]];
            break;
      }
   }
   function dblClick(oEvent)
   {
      this["\x1d\x17\x03"] = _loc2_.target._name.substr(4);
      if(this["\x1d\x17\x03"] == undefined)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("PLEASE_SELECT"),"ERROR_CHAT");
         return undefined;
      }
      var _loc3_ = this.gapi.loadUIComponent("AskYesNo","AskYesNoLoot",{title:this.api.lang.getText("QUESTION"),text:this.api.lang.getText("CONFIRM_LOOT",[this["_ctr" + this["\x1d\x17\x03"]].contentData.name])});
      _loc3_.addEventListener("yes",this);
   }
   function yes(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "AskYesNoLoot")
      {
         this.validateReward(this["\x1d\x17\x03"]);
         this["\x1b\x13\x13"]();
      }
   }
}
