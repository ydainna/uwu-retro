class dofus.§\x18\x03\x10§.gapi.ui.CardsCollection extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "CardsCollection";
   static var FILTER_FAMILY_ID = "familyid";
   static var FILTER_ENTITY_NAME = "entityname";
   static var FILTER_SHOW_ALL = "showall";
   static var FILTER_OWNED_FOILS = "ownedfoils";
   static var FILTER_RARITY = "rarity";
   var _bUpdateDataPending = false;
   function CardsCollection()
   {
      super();
   }
   function get playerID()
   {
      return this._sPlayerID;
   }
   function set playerID(sPlayerID)
   {
      this._sPlayerID = sPlayerID;
   }
   function get ttgCollection()
   {
      return this._ttgCollection;
   }
   function set ttgCollection(ttgCollection)
   {
      this._ttgCollection = ttgCollection;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.CardsCollection.CLASS_NAME);
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
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
   }
   function initTexts()
   {
      this._btnSearch.label = this.api.lang.getText("OK");
      this._tiSearch.text = !this._tiSearch.text.length ? this.api.lang.getText("SEARCH") : this._tiSearch.text;
      this._lblTotalPerType.text = this.api.lang.getText("TTG_COLLECTION_STATS_BY_TYPES");
      this._lblTotalPerRarity.text = this.api.lang.getText("TTG_COLLECTION_STATS_BY_RARITIES");
      this._lblFamilies.text = this.api.lang.getText("TTG_COLLECTION_STATS_BY_FAMILIES");
   }
   function addListeners()
   {
      var ref = this;
      var _loc2_ = function()
      {
         ref.click({target:this});
      };
      var _loc3_ = function()
      {
         ref.over({target:this});
      };
      var _loc4_ = function()
      {
         ref.out({target:this});
      };
      this._mcCard.onRollOver = _loc3_;
      this._mcFoilCard.onRollOver = _loc3_;
      this._mcFamilyCard.onRollOver = _loc3_;
      this._mcRarity1.onRollOver = _loc3_;
      this._mcRarity2.onRollOver = _loc3_;
      this._mcRarity3.onRollOver = _loc3_;
      this._mcRarity4.onRollOver = _loc3_;
      this._mcCard.onRollOut = _loc4_;
      this._mcFoilCard.onRollOut = _loc4_;
      this._mcFamilyCard.onRollOut = _loc4_;
      this._mcRarity1.onRollOut = _loc4_;
      this._mcRarity2.onRollOut = _loc4_;
      this._mcRarity3.onRollOut = _loc4_;
      this._mcRarity4.onRollOut = _loc4_;
      this._mcCard.onPress = _loc2_;
      this._mcFoilCard.onPress = _loc2_;
      this._mcFamilyCard.onPress = _loc2_;
      this._mcRarity1.onPress = _loc2_;
      this._mcRarity2.onPress = _loc2_;
      this._mcRarity3.onPress = _loc2_;
      this._mcRarity4.onPress = _loc2_;
      this._pbCard.addEventListener("over",this);
      this._pbFamily.addEventListener("over",this);
      this._pbFoilCard.addEventListener("over",this);
      this._pbRarity1.addEventListener("over",this);
      this._pbRarity2.addEventListener("over",this);
      this._pbRarity3.addEventListener("over",this);
      this._pbRarity4.addEventListener("over",this);
      this._pbCard.addEventListener("out",this);
      this._pbFamily.addEventListener("out",this);
      this._pbFoilCard.addEventListener("out",this);
      this._pbRarity1.addEventListener("out",this);
      this._pbRarity2.addEventListener("out",this);
      this._pbRarity3.addEventListener("out",this);
      this._pbRarity4.addEventListener("out",this);
      this._cgCardsGrid.addEventListener("overItem",this);
      this._cgCardsGrid.addEventListener("outItem",this);
      this._cgCardsGrid.addEventListener("dblClickItem",this);
      this._cgCardsGrid.addEventListener("selectItem",this);
      this._cgCardsGrid["\x19\x02\n"] = false;
      this._cgFamiliesGrid.addEventListener("selectItem",this);
      this._cgFamiliesGrid.addEventListener("overItem",this);
      this._cgFamiliesGrid.addEventListener("outItem",this);
      this._cgFamiliesGrid["\x19\x02\n"] = false;
      this._btnCloseBook.addEventListener("click",this);
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
      this._btnSearch.addEventListener("click",this);
      var _loc5_ = new Object();
      _loc5_.onSetFocus = function(§\x19\x13\f§, §\x19\x06\x1a§)
      {
         var _loc4_ = _global.api;
         if(eval(Selection.getFocus())._parent == ref._tiSearch)
         {
            if(ref._tiSearch.text == _loc4_.lang.getText("SEARCH"))
            {
               ref._tiSearch.text = "";
            }
         }
         else if(ref._tiSearch.text == "")
         {
            ref._tiSearch.text = _loc4_.lang.getText("SEARCH");
         }
      };
      Selection.addListener(_loc5_);
   }
   function §\x18\t\x14§()
   {
      this.setPlayerTtgCollection(this._sPlayerID,this._ttgCollection);
      this.selectShowAllFilter();
   }
   function selectShowAllFilter()
   {
      if(this._sCurrentFilter == dofus.graphics.gapi.ui.CardsCollection.FILTER_SHOW_ALL)
      {
         return undefined;
      }
      this._sCurrentFilter = dofus.graphics.gapi.ui.CardsCollection.FILTER_SHOW_ALL;
      this._cgFamiliesGrid["\x1b\x13\x1a"]();
      this._cgCardsGrid["\x1a\x1b\x04"](0);
      this.setSearch(undefined,true);
      this.onUpdatedData();
   }
   function selectOwnedFoilsFilter()
   {
      if(this._sCurrentFilter == dofus.graphics.gapi.ui.CardsCollection.FILTER_OWNED_FOILS)
      {
         return undefined;
      }
      this._sCurrentFilter = dofus.graphics.gapi.ui.CardsCollection.FILTER_OWNED_FOILS;
      this._cgFamiliesGrid["\x1b\x13\x1a"]();
      this._cgCardsGrid["\x1a\x1b\x04"](0);
      this.setSearch(undefined,true);
      this.onUpdatedData();
   }
   function selectFamilyFilter(nFamilyID)
   {
      if(_global.isNaN(nFamilyID))
      {
         return undefined;
      }
      if(this._nSelectedFamily == nFamilyID && this._sCurrentFilter == dofus.graphics.gapi.ui.CardsCollection.FILTER_FAMILY_ID)
      {
         return undefined;
      }
      this._sCurrentFilter = dofus.graphics.gapi.ui.CardsCollection.FILTER_FAMILY_ID;
      this._cgCardsGrid["\x1a\x1b\x04"](0);
      this._nSelectedFamily = nFamilyID;
      this.setSearch(undefined,true);
      this.onUpdatedData();
   }
   function selectRarityFilter(nRarity)
   {
      if(_global.isNaN(nRarity))
      {
         return undefined;
      }
      if(this._nSelectedRarity == nRarity && this._sCurrentFilter == dofus.graphics.gapi.ui.CardsCollection.FILTER_RARITY)
      {
         return undefined;
      }
      this._sCurrentFilter = dofus.graphics.gapi.ui.CardsCollection.FILTER_RARITY;
      this._cgFamiliesGrid["\x1b\x13\x1a"]();
      this._cgCardsGrid["\x1a\x1b\x04"](0);
      this._nSelectedRarity = nRarity;
      this.setSearch(undefined,true);
      this.onUpdatedData();
   }
   function onUpdatedData()
   {
      this.updateDataVisually();
   }
   function setSearch(sText, bUpdateTiSearchText)
   {
      if(bUpdateTiSearchText)
      {
         this._tiSearch.text = !(_loc2_ == undefined || _loc2_.length == 0) ? _loc2_ : this.api.lang.getText("SEARCH");
      }
      this._sCurrentEntityNameSearch = _loc2_;
   }
   function getFilterFunction()
   {
      switch(this._sCurrentFilter)
      {
         case dofus.graphics.gapi.ui.CardsCollection.FILTER_SHOW_ALL:
            var _loc2_ = undefined;
            break;
         case dofus.graphics.gapi.ui.CardsCollection.FILTER_FAMILY_ID:
            _loc2_ = this._ttgCollection.getFilterFunctionByFamily(this._nSelectedFamily);
            break;
         case dofus.graphics.gapi.ui.CardsCollection.FILTER_ENTITY_NAME:
            _loc2_ = this._ttgCollection.getFilterFunctionBySearch(new ank.utils.ExtendedString(this._sCurrentEntityNameSearch)["\x1a\x0b\x15"]().toLowerCase());
            break;
         case dofus.graphics.gapi.ui.CardsCollection.FILTER_RARITY:
            _loc2_ = this._ttgCollection.getFilterFunctionByRarity(this._nSelectedRarity);
            break;
         case dofus.graphics.gapi.ui.CardsCollection.FILTER_OWNED_FOILS:
            _loc2_ = this._ttgCollection.getFilterFunctionByOwnedFoils();
      }
      return _loc2_;
   }
   function updateDataVisually()
   {
      if(this._sCurrentFilter == undefined)
      {
         return undefined;
      }
      if(this._sCurrentEntityNameSearch != undefined)
      {
         this._sCurrentFilter = dofus.graphics.gapi.ui.CardsCollection.FILTER_ENTITY_NAME;
         this._cgFamiliesGrid["\x1b\x13\x1a"]();
         this._cgCardsGrid["\x1a\x1b\x04"](0);
      }
      else if(this._sCurrentFilter == dofus.graphics.gapi.ui.CardsCollection.FILTER_ENTITY_NAME)
      {
         this._sCurrentFilter = dofus.graphics.gapi.ui.CardsCollection.FILTER_SHOW_ALL;
         this._cgFamiliesGrid["\x1b\x13\x1a"]();
         this._cgCardsGrid["\x1a\x1b\x04"](0);
      }
      var _loc2_ = new ank.utils.ExtendedArray();
      var _loc3_ = this.getFilterFunction();
      var _loc4_ = function(§\x15\x1b\x04§, §\x16\b\b§)
      {
         return _loc2_.rarity - _loc3_.rarity || _loc2_.cardID - _loc3_.cardID;
      };
      switch(this._sCurrentFilter)
      {
         case dofus.graphics.gapi.ui.CardsCollection.FILTER_SHOW_ALL:
            this._lblCardsPageTitle.text = this.api.lang.getText("TTG_EQUIP_COLLECTION_COMPLETED");
            _loc4_ = function(§\x15\x1b\x04§, §\x16\b\b§)
            {
               return _loc2_.cardID - _loc3_.cardID;
            };
            break;
         case dofus.graphics.gapi.ui.CardsCollection.FILTER_FAMILY_ID:
            this._lblCardsPageTitle.text = this.api.lang.getTtgFamilyObject(this._nSelectedFamily).n;
            this._ldrCurrentFamilyDeco.contentPath = dofus.Constants["\x18\b\x14"] + this._nSelectedFamily + ".swf";
            this._ldrCurrentFamilyIcon.contentParams = {familyID:this._nSelectedFamily,familyCompletionPercentage:this._ttgCollectionStats.getOwnedPercentageByFamilyID(this._nSelectedFamily),familyFoilCompletionPercentage:this._ttgCollectionStats.getOwnedFoilPercentageByFamilyID(this._nSelectedFamily)};
            this._ldrCurrentFamilyIcon.contentPath = "CardFamily";
            if(dofus.Constants.DEBUG)
            {
               this._lblCardsPageTitle.text += " (" + this._nSelectedFamily + ")";
            }
            break;
         case dofus.graphics.gapi.ui.CardsCollection.FILTER_ENTITY_NAME:
            this._lblCardsPageTitle.text = "“" + this._sCurrentEntityNameSearch + "”";
            break;
         case dofus.graphics.gapi.ui.CardsCollection.FILTER_RARITY:
            this._lblCardsPageTitle.text = this.api.lang.getText("RARITY") + " : " + this._nSelectedRarity;
            break;
         case dofus.graphics.gapi.ui.CardsCollection.FILTER_OWNED_FOILS:
            this._lblCardsPageTitle.text = this.api.lang.getText("TTG_EQUIP_FOIL_COLLECTION_COMPLETED");
            _loc4_ = function(§\x15\x1b\x04§, §\x16\b\b§)
            {
               return _loc2_.cardID - _loc3_.cardID;
            };
      }
      this._ldrCurrentFamilyIcon._visible = this._sCurrentFilter == dofus.graphics.gapi.ui.CardsCollection.FILTER_FAMILY_ID;
      this._ldrCurrentFamilyDeco._visible = this._sCurrentFilter == dofus.graphics.gapi.ui.CardsCollection.FILTER_FAMILY_ID;
      this._cgCardsGrid.dataProvider = this._ttgCollection.getExtendedArrayForUX(_loc3_,_loc4_);
      this._bUpdateDataPending = false;
   }
   function fillCardsDataProvider(§\x17\n\x17§)
   {
      this._cgCardsGrid.dataProvider = _loc2_;
   }
   function setPlayerTtgCollection(sPlayerID, ttgCollection)
   {
      if(sPlayerID == undefined)
      {
         sPlayerID = this.api.datacenter.Player.ID;
      }
      if(ttgCollection == undefined)
      {
         ttgCollection = this.api.datacenter.Player.ttgCollection;
      }
      this._sPlayerID = sPlayerID;
      this["\x1e\x0b\x17"] = ttgCollection.playerName;
      this._ttgCollection = ttgCollection;
      this.refreshTtgCollectionStatistics();
      this.api.network.Ttg.sendGetAllDates(this._sPlayerID);
      this._lblCollectionOwner.text = this.api.lang.getText("TTG_COLLECTION_OF",[this["\x1e\x0b\x17"]]);
   }
   function refreshTtgCollectionStatistics()
   {
      this._ttgCollectionStats = new dofus.datacenter..ttg.TtgCollectionStats(this._ttgCollection);
      var ref = this;
      this.applyTtgCollectionMinMaxStatisticString("TOTAL_CARDS_OWNED",function()
      {
         return ref._ttgCollectionStats.ownedCardsCount;
      }
      ,function()
      {
         return ref._ttgCollectionStats.totalCardsCount;
      }
      ,this._pbCard,this._lblTotalCardsOwned,this._mcCard);
      this.applyTtgCollectionMinMaxStatisticString("TOTAL_FOIL_CARDS_OWNED",function()
      {
         return ref._ttgCollectionStats.ownedFoilCardsCount;
      }
      ,function()
      {
         return ref._ttgCollectionStats.totalFoilCardsCount;
      }
      ,this._pbFoilCard,this._lblTotalFoilCardsOwned,this._mcFoilCard);
      this.applyTtgCollectionMinMaxStatisticString("TOTAL_FAMILIES_COMPLETED",function()
      {
         return ref._ttgCollectionStats.fullyOwnedFamiliesCount;
      }
      ,function()
      {
         return ref._ttgCollectionStats.familiesCount;
      }
      ,this._pbFamily,this._lblTotalFamiliesCompleted,this._mcFamilyCard);
      this.applyTtgCollectionMinMaxStatisticString("TOTAL_RARITY_1_CARDS_OWNED",function()
      {
         return ref._ttgCollectionStats.getOwnedCountByRarity(1);
      }
      ,function()
      {
         return ref._ttgCollectionStats.getTotalCountByRarity(1);
      }
      ,this._pbRarity1,this._lblTotalRarityOneCardsOwned,this._mcRarity1);
      this.applyTtgCollectionMinMaxStatisticString("TOTAL_RARITY_2_CARDS_OWNED",function()
      {
         return ref._ttgCollectionStats.getOwnedCountByRarity(2);
      }
      ,function()
      {
         return ref._ttgCollectionStats.getTotalCountByRarity(2);
      }
      ,this._pbRarity2,this._lblTotalRarityTwoCardsOwned,this._mcRarity2);
      this.applyTtgCollectionMinMaxStatisticString("TOTAL_RARITY_3_CARDS_OWNED",function()
      {
         return ref._ttgCollectionStats.getOwnedCountByRarity(3);
      }
      ,function()
      {
         return ref._ttgCollectionStats.getTotalCountByRarity(3);
      }
      ,this._pbRarity3,this._lblTotalRarityThreeCardsOwned,this._mcRarity3);
      this.applyTtgCollectionMinMaxStatisticString("TOTAL_RARITY_4_CARDS_OWNED",function()
      {
         return ref._ttgCollectionStats.getOwnedCountByRarity(4);
      }
      ,function()
      {
         return ref._ttgCollectionStats.getTotalCountByRarity(4);
      }
      ,this._pbRarity4,this._lblTotalRarityFourCardsOwned,this._mcRarity4);
      var _loc2_ = this._ttgCollection.getFamiliesExtendedArrayForUX(this._ttgCollectionStats);
      this._cgFamiliesGrid.dataProvider = _loc2_;
      if(this._nSelectedFamily != undefined)
      {
         this._ldrCurrentFamilyIcon.contentParams = {familyID:this._nSelectedFamily,familyCompletionPercentage:this._ttgCollectionStats.getOwnedPercentageByFamilyID(this._nSelectedFamily),familyFoilCompletionPercentage:this._ttgCollectionStats.getOwnedFoilPercentageByFamilyID(this._nSelectedFamily)};
         this._ldrCurrentFamilyIcon.contentPath = "CardFamily";
      }
   }
   function applyTtgCollectionMinMaxStatisticString(sLangKey, fFunctionCurrentCount, fFunctionMaxCount, linkedPB, linkedLabel, linkedIcon)
   {
      var _loc8_ = this.getTtgCollectionMinMaxStatisticObject(sLangKey,fFunctionCurrentCount,fFunctionMaxCount);
      if(linkedPB != undefined)
      {
         linkedPB.value = _loc8_.percent;
      }
      if(linkedLabel != undefined)
      {
         linkedLabel.text = _loc8_.textShort;
      }
      if(linkedIcon != undefined)
      {
         linkedIcon.overText = _loc8_.text;
      }
   }
   function getTtgCollectionMinMaxStatisticObject(sLangKey, fFunctionCurrentCount, fFunctionMaxCount)
   {
      var _loc5_ = new Object();
      _loc5_.currentCount = Number(fFunctionCurrentCount.apply(this));
      _loc5_.maxCount = Number(fFunctionMaxCount.apply(this));
      _loc5_.percent = Math.floor(_loc5_.currentCount / _loc5_.maxCount * 100);
      _loc5_.text = this.api.lang.getText("TTG_COLLECTION_STATISTIC_" + sLangKey,[_loc5_.currentCount,_loc5_.maxCount,_loc5_.percent]);
      _loc5_.textShort = this.api.lang.getText("TTG_COLLECTION_STATISTIC_SHORT",[_loc5_.currentCount,_loc5_.maxCount,_loc5_.percent]);
      return _loc5_;
   }
   function destroy()
   {
      this.gapi.hideTooltip();
   }
   function itemSelected(oEvent)
   {
      var _loc3_ = _loc2_.target;
      var _loc4_ = _loc3_.selectedItem.value;
      dofus.graphics.gapi.ui.CardsCollection.lastSelectedIndex = _loc3_.selectedIndex;
      this.selectFamilyFilter(_loc4_);
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
         case this._mcCard:
         case this._mcFamilyCard:
            this.selectShowAllFilter();
            break;
         case this._mcFoilCard:
            this.selectOwnedFoilsFilter();
            break;
         case this._mcRarity1:
            this.selectRarityFilter(1);
            break;
         case this._mcRarity2:
            this.selectRarityFilter(2);
            break;
         case this._mcRarity3:
            this.selectRarityFilter(3);
            break;
         case this._mcRarity4:
            this.selectRarityFilter(4);
            break;
         case this._btnSearch:
            this.doSearch();
            break;
         case this._btnCloseBook:
            this["\x16\x15\n"]();
      }
   }
   function doSearch()
   {
      var _loc2_ = this._tiSearch.text;
      if(_loc2_ == this.api.lang.getText("SEARCH"))
      {
         _loc2_ = "";
      }
      var _loc3_ = this._sCurrentEntityNameSearch;
      this.setSearch(_loc2_.length < 2 ? undefined : _loc2_,false);
      if(this._sCurrentEntityNameSearch != undefined)
      {
         if(this._sCurrentEntityNameSearch == _loc3_)
         {
            return undefined;
         }
      }
      this._cgCardsGrid["\x1a\x1b\x04"](0);
      this.onUpdatedData();
   }
   function dblClickItem(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.owner._name) === "_cgCardsGrid")
      {
         var _loc3_ = _loc2_.item;
         if(_loc3_ == undefined)
         {
            return undefined;
         }
         if(this._sCurrentEntityNameSearch == undefined)
         {
            if(this._sPlayerID == this.api.datacenter.Player.ID && !_loc3_.owned)
            {
               var _loc4_ = dofus.datacenter.["\x18\x10\x15"](this.api.datacenter.Player.Inventory.findFirstItem("unicID",_loc3_.correspondingItemID).item);
               if(_loc4_ != undefined)
               {
                  this.api.network.Items.use(_loc4_.ID);
               }
            }
            return undefined;
         }
         var _loc5_ = _loc3_.familyID;
         this.selectFamilyFilter(_loc5_);
      }
   }
   function useItems(§\x16\x02\x06§)
   {
      if(!this.api.datacenter.Player.canUseObject)
      {
         return undefined;
      }
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         var _loc4_ = _loc2_[_loc3_];
         this.api.network.Items.use(_loc4_.ID);
         _loc3_ = _loc3_ + 1;
      }
   }
   function useItem(§\x19\x13\x07§)
   {
      if(!this.api.datacenter.Player.canUseObject)
      {
         return undefined;
      }
      this.api.network.Items.use(_loc2_.ID);
   }
   function selectItem(oEvent)
   {
      var _loc3_ = _loc2_.target;
      switch(_loc2_.owner)
      {
         case this._cgFamiliesGrid:
            var _loc4_ = _loc3_.contentData;
            if(_loc4_ == undefined)
            {
               return undefined;
            }
            this.selectFamilyFilter(_loc4_.familyID);
            dofus.graphics.gapi.ui.CardsCollection.lastSelectedIndex = _loc4_.familyID;
            break;
         case this._cgCardsGrid:
            var _loc5_ = _loc3_.contentData;
            if(Key.isDown(dofus.Constants["\x16\x19\x13"]))
            {
               this.api.kernel.GameManager["\x18\n\x1d"](new dofus.datacenter.["\x18\x10\x15"](-1,_loc5_.correspondingItemID));
               return undefined;
            }
            break;
      }
   }
   function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._pbCard:
         case this._pbFamily:
         case this._pbFoilCard:
         case this._pbRarity1:
         case this._pbRarity2:
         case this._pbRarity3:
         case this._pbRarity4:
            var _loc3_ = _loc2_.target;
            this.gapi.showTooltip(_loc3_.value + "%",_loc3_,-20);
            break;
         case this._mcCard:
         case this._mcFoilCard:
         case this._mcFamilyCard:
         case this._mcRarity1:
         case this._mcRarity2:
         case this._mcRarity3:
         case this._mcRarity4:
            var _loc4_ = _loc2_.target;
            if(_loc4_.overText)
            {
               this.gapi.showTooltip(_loc4_.overText,_loc4_,-20);
               break;
            }
      }
   }
   function overItem(oEvent)
   {
      var _loc3_ = _loc2_.target;
      var _loc4_ = "";
      var _loc5_ = -20;
      switch(_loc2_.owner)
      {
         case this._cgFamiliesGrid:
            var _loc6_ = _loc3_.contentData;
            if(_loc6_ == undefined)
            {
               return undefined;
            }
            var nFamilyID = _loc6_.familyID;
            _loc4_ = this.api.lang.getText("TTG_CARD_ENTITY_FAMILY",[this.api.lang.getTtgFamilyObject(nFamilyID).n]);
            var ref = this;
            _loc5_ -= 10;
            _loc4_ += "\n" + this.getTtgCollectionMinMaxStatisticObject("FAMILY_COMPLETION",function()
            {
               return ref._ttgCollectionStats.getOwnedCountByFamilyID(nFamilyID);
            }
            ,function()
            {
               return ref._ttgCollectionStats.getTotalCountByFamilyID(nFamilyID);
            }
            ).text;
            break;
         case this._cgCardsGrid:
            var _loc7_ = _loc3_.contentData;
            if(_loc7_ == undefined)
            {
               return undefined;
            }
            if(this._sCurrentEntityNameSearch != undefined)
            {
               _loc5_ -= 40;
               _loc4_ += this.api.lang.getText("TTG_CARD_ENTITY_FAMILY",[_loc7_.familyName]);
               _loc4_ += " (" + this.api.lang.getText("TTG_DBL_CLICK_FAMILY") + ")\n\n";
            }
            _loc4_ += _loc7_.entityName;
            if(!_loc7_.owned && this._sCurrentEntityNameSearch == undefined)
            {
               _loc5_ -= 20;
               _loc4_ += "\n\n";
               var _loc8_ = false;
               if(this._sPlayerID == this.api.datacenter.Player.ID)
               {
                  var _loc9_ = dofus.datacenter.["\x18\x10\x15"](this.api.datacenter.Player.Inventory.findFirstItem("unicID",_loc7_.correspondingItemID).item);
                  if(_loc9_ != undefined)
                  {
                     _loc8_ = true;
                  }
               }
               if(_loc8_)
               {
                  _loc4_ += this.api.lang.getText("TTG_CARD_DBL_CLICK_TO_ADD");
               }
               else
               {
                  _loc4_ += this.api.lang.getText("TTG_CARD_NOT_OWNED");
               }
            }
            if(_loc7_.owned && _loc7_.ownedTimestamp != undefined)
            {
               var _loc10_ = new ank.utils.ExtendedDate(_loc7_.ownedTimestamp);
               _loc4_ += "\n" + this.api.lang.getText("TTG_CARD_OBTAINED",[_loc10_.getDatePadded(),_loc10_.getMonthPadded(),_loc10_.getDofusFullYear(this.api),_loc10_.getHoursPadded(),_loc10_.getMinutesPadded()]);
               _loc5_ -= 10;
               if(_loc7_.ownedFoilTimestamp != undefined)
               {
                  _loc10_ = new ank.utils.ExtendedDate(_loc7_.ownedFoilTimestamp);
                  _loc4_ += "\n" + this.api.lang.getText("TTG_CARD_OBTAINED_FOIL",[_loc10_.getDatePadded(),_loc10_.getMonthPadded(),_loc10_.getDofusFullYear(this.api),_loc10_.getHoursPadded(),_loc10_.getMinutesPadded()]);
                  _loc5_ -= 10;
               }
            }
            break;
      }
      if(_loc4_.length > 0)
      {
         this.gapi.showTooltip(_loc4_,_loc3_,_loc5_);
      }
   }
   function outItem(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
