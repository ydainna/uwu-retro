class dofus.§\x18\x03\x10§.gapi.ui.SpellsCollection extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "SpellsCollection";
   static var SPELLS_CATEGORY_TR2_BREED = 10;
   static var SPELLS_CATEGORY_TR2_COMMON = 11;
   static var SPELLS_CATEGORY_TR2_RARE = 12;
   static var SPELLS_CATEGORY_TR2_EPIC = 13;
   static var SPELLS_CATEGORY_TR2_LEGENDARY = 14;
   static var SPELLS_ORIGIN_DEFAULT = 0;
   static var SPELLS_ORIGIN_DROP_ON_MONSTER = 1;
   static var SPELLS_ORIGIN_CRAFT = 2;
   static var SPELLS_ORIGIN_UNKNOWN = 3;
   static var MIN_FILTER_DEFAULT_SPELL_LEVEL = 0;
   static var MAX_FILTER_DEFAULT_SPELL_LEVEL = 200;
   function SpellsCollection()
   {
      super();
   }
   function §\x1e\x17\x13§()
   {
      if(this._currentOverContainer != undefined && this._currentOverContainer.contentData != undefined)
      {
         return dofus.datacenter.["\x1b\x06\x06"](this._currentOverContainer.contentData);
      }
      return undefined;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.SpellsCollection.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this._lblNoSpellsFound._visible = false;
      this._mcElementFilterSelected._visible = false;
      this._nSpellFullInfosPlacerX = this["\x1d\x10\f"]._x;
      this._nMcElementFilterSelectedY = this._mcElementFilterSelected._y;
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.initTexts});
      this["\x1d\x10\f"]._visible = false;
   }
   function addListeners()
   {
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
      var ref = this;
      this._mcResetSpellFilters.onPress = function()
      {
         ref.click({target:this});
      };
      this._mcResetSpellFilters.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._mcResetSpellFilters.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._circleProgressFire.onPress = function()
      {
         ref.click({target:this});
      };
      this._circleProgressFire.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._circleProgressFire.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._circleProgressWater.onPress = function()
      {
         ref.click({target:this});
      };
      this._circleProgressWater.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._circleProgressWater.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._circleProgressEarth.onPress = function()
      {
         ref.click({target:this});
      };
      this._circleProgressEarth.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._circleProgressEarth.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._circleProgressNeutral.onPress = function()
      {
         ref.click({target:this});
      };
      this._circleProgressNeutral.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._circleProgressNeutral.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._circleProgressAir.onPress = function()
      {
         ref.click({target:this});
      };
      this._circleProgressAir.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._circleProgressAir.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._circleProgressMulti.onPress = function()
      {
         ref.click({target:this});
      };
      this._circleProgressMulti.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._circleProgressMulti.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._circleProgressInvoc.onPress = function()
      {
         ref.click({target:this});
      };
      this._circleProgressInvoc.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._circleProgressInvoc.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._circleProgressBoost.onPress = function()
      {
         ref.click({target:this});
      };
      this._circleProgressBoost.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._circleProgressBoost.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._circleProgressHeal.onPress = function()
      {
         ref.click({target:this});
      };
      this._circleProgressHeal.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._circleProgressHeal.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._ctrDeck1.addEventListener("over",this);
      this._ctrDeck2.addEventListener("over",this);
      this._ctrDeck3.addEventListener("over",this);
      this._ctrDeck4.addEventListener("over",this);
      this._ctrDeck5.addEventListener("over",this);
      this._ctrDeck6.addEventListener("over",this);
      this._ctrDeck7.addEventListener("over",this);
      this._ctrDeck8.addEventListener("over",this);
      this._ctrDeck9.addEventListener("over",this);
      this._ctrDeck10.addEventListener("over",this);
      this._ctrDeck11.addEventListener("over",this);
      this._ctrDeck12.addEventListener("over",this);
      this._ctrDeck13.addEventListener("over",this);
      this._ctrDeck14.addEventListener("over",this);
      this._btnClose.addEventListener("over",this);
      this._ctrDeck1.addEventListener("out",this);
      this._ctrDeck2.addEventListener("out",this);
      this._ctrDeck3.addEventListener("out",this);
      this._ctrDeck4.addEventListener("out",this);
      this._ctrDeck5.addEventListener("out",this);
      this._ctrDeck6.addEventListener("out",this);
      this._ctrDeck7.addEventListener("out",this);
      this._ctrDeck8.addEventListener("out",this);
      this._ctrDeck9.addEventListener("out",this);
      this._ctrDeck10.addEventListener("out",this);
      this._ctrDeck11.addEventListener("out",this);
      this._ctrDeck12.addEventListener("out",this);
      this._ctrDeck13.addEventListener("out",this);
      this._ctrDeck14.addEventListener("out",this);
      this._btnClose.addEventListener("out",this);
      this._ctrDeck1.addEventListener("click",this);
      this._ctrDeck2.addEventListener("click",this);
      this._ctrDeck3.addEventListener("click",this);
      this._ctrDeck4.addEventListener("click",this);
      this._ctrDeck5.addEventListener("click",this);
      this._ctrDeck6.addEventListener("click",this);
      this._ctrDeck7.addEventListener("click",this);
      this._ctrDeck8.addEventListener("click",this);
      this._ctrDeck9.addEventListener("click",this);
      this._ctrDeck10.addEventListener("click",this);
      this._ctrDeck11.addEventListener("click",this);
      this._ctrDeck12.addEventListener("click",this);
      this._ctrDeck13.addEventListener("click",this);
      this._ctrDeck14.addEventListener("click",this);
      this._ctrDeck1.addEventListener("drag",this);
      this._ctrDeck2.addEventListener("drag",this);
      this._ctrDeck3.addEventListener("drag",this);
      this._ctrDeck4.addEventListener("drag",this);
      this._ctrDeck5.addEventListener("drag",this);
      this._ctrDeck6.addEventListener("drag",this);
      this._ctrDeck7.addEventListener("drag",this);
      this._ctrDeck8.addEventListener("drag",this);
      this._ctrDeck9.addEventListener("drag",this);
      this._ctrDeck10.addEventListener("drag",this);
      this._ctrDeck11.addEventListener("drag",this);
      this._ctrDeck12.addEventListener("drag",this);
      this._ctrDeck13.addEventListener("drag",this);
      this._ctrDeck14.addEventListener("drag",this);
      this._ctrDeck1.addEventListener("drop",this);
      this._ctrDeck2.addEventListener("drop",this);
      this._ctrDeck3.addEventListener("drop",this);
      this._ctrDeck4.addEventListener("drop",this);
      this._ctrDeck5.addEventListener("drop",this);
      this._ctrDeck6.addEventListener("drop",this);
      this._ctrDeck7.addEventListener("drop",this);
      this._ctrDeck8.addEventListener("drop",this);
      this._ctrDeck9.addEventListener("drop",this);
      this._ctrDeck10.addEventListener("drop",this);
      this._ctrDeck11.addEventListener("drop",this);
      this._ctrDeck12.addEventListener("drop",this);
      this._ctrDeck13.addEventListener("drop",this);
      this._ctrDeck14.addEventListener("drop",this);
      this._ldrProgressFire.addEventListener("over",this);
      this._ldrProgressWater.addEventListener("over",this);
      this._ldrProgressEarth.addEventListener("over",this);
      this._ldrProgressNeutral.addEventListener("over",this);
      this._ldrProgressAir.addEventListener("over",this);
      this._ldrProgressMulti.addEventListener("over",this);
      this._ldrProgressInvoc.addEventListener("over",this);
      this._ldrProgressBoost.addEventListener("over",this);
      this._ldrProgressHeal.addEventListener("over",this);
      this._btnFilterMonster.addEventListener("over",this);
      this._btnFilterCraft.addEventListener("over",this);
      this._btnFilterUnknown.addEventListener("over",this);
      this._btnFilterPossessed.addEventListener("over",this);
      this._btnFilterNotPossessed.addEventListener("over",this);
      this._ldrProgressFire.addEventListener("out",this);
      this._ldrProgressWater.addEventListener("out",this);
      this._ldrProgressEarth.addEventListener("out",this);
      this._ldrProgressNeutral.addEventListener("out",this);
      this._ldrProgressAir.addEventListener("out",this);
      this._ldrProgressMulti.addEventListener("out",this);
      this._ldrProgressInvoc.addEventListener("out",this);
      this._ldrProgressBoost.addEventListener("out",this);
      this._ldrProgressHeal.addEventListener("out",this);
      this._btnFilterMonster.addEventListener("out",this);
      this._btnFilterCraft.addEventListener("out",this);
      this._btnFilterUnknown.addEventListener("out",this);
      this._btnFilterPossessed.addEventListener("out",this);
      this._btnFilterNotPossessed.addEventListener("out",this);
      this._ldrProgressFire.addEventListener("click",this);
      this._ldrProgressWater.addEventListener("click",this);
      this._ldrProgressEarth.addEventListener("click",this);
      this._ldrProgressNeutral.addEventListener("click",this);
      this._ldrProgressAir.addEventListener("click",this);
      this._ldrProgressMulti.addEventListener("click",this);
      this._ldrProgressInvoc.addEventListener("click",this);
      this._ldrProgressBoost.addEventListener("click",this);
      this._ldrProgressHeal.addEventListener("click",this);
      this._btnPreviousDeck.addEventListener("click",this);
      this._btnNextDeck.addEventListener("click",this);
      this._btnFilterMonster.addEventListener("click",this);
      this._btnFilterCraft.addEventListener("click",this);
      this._btnFilterUnknown.addEventListener("click",this);
      this._btnFilterPossessed.addEventListener("click",this);
      this._btnFilterNotPossessed.addEventListener("click",this);
      this._btnClose.addEventListener("click",this);
      this._cgSpells.addEventListener("selectItem",this);
      this._cgSpells.addEventListener("dragItem",this);
      this._cgSpells.addEventListener("dropItem",this);
      this._suSpell1.addEventListener("selectItem",this);
      this._suSpell2.addEventListener("selectItem",this);
      this._suSpell3.addEventListener("selectItem",this);
      this._suSpell4.addEventListener("selectItem",this);
      this._suSpell5.addEventListener("selectItem",this);
      this._tiSearch.addEventListener("change",this);
      this._tiFromLevel.addEventListener("change",this);
      this._tiToLevel.addEventListener("change",this);
      this.api.datacenter.Player.Spells.addEventListener("modelChanged",this);
      var _loc2_ = new Object();
      _loc2_.onSetFocus = function(§\x19\x13\f§, §\x19\x06\x1a§)
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
      Selection.addListener(_loc2_);
   }
   function validateDeckNameChange(nDeckID, sText)
   {
      var _loc4_ = new ank.utils.ExtendedString(_loc3_)["\x1b\x11\x13"]().toString();
      if(_loc4_.length == 0)
      {
         return undefined;
      }
      this.api.network.Temporis.episodeTwo.sendSpellsQuickEditName(nDeckID,_loc4_);
   }
   function change(oEvent)
   {
      var _loc3_ = _loc2_.target;
      switch(_loc3_)
      {
         case this._tiDeckName:
            var _loc4_ = _loc3_.text;
            if(this._nDeckNameChangeTimeout != undefined)
            {
               _global.clearTimeout(this._nDeckNameChangeTimeout);
            }
            var _loc5_ = _global.setTimeout(this,"validateDeckNameChange",500,this.api.datacenter.Player.currentSpellsDeckID,_loc4_);
            this._nDeckNameChangeTimeout = _loc5_;
            break;
         case this._tiSearch:
            if(_loc3_.text == this.api.lang.getText("SEARCH"))
            {
               this._eoSpellFilters["\x1a\f\n"](1);
            }
            else
            {
               var sText = new ank.utils.ExtendedString(_loc3_.text)["\x1a\x0b\x15"]().toLowerCase();
               this._eoSpellFilters.addItemAt(1,{fn:function(§\x1a\x02\x06§)
               {
                  return new ank.utils.ExtendedString(_loc2_.name)["\x1a\x0b\x15"]().toLowerCase().indexOf(sText) > -1;
               }});
            }
            this.applySpellFilters();
            break;
         case this._tiFromLevel:
         case this._tiToLevel:
            var ref = this;
            this._eoSpellFilters.addItemAt(2,{fn:function(§\x1a\x02\x06§)
            {
               var _loc3_ = _loc2_["\x19\x0b\r"];
               if(_loc3_ == undefined)
               {
                  return true;
               }
               var _loc4_ = Number(ref._tiFromLevel.text);
               var _loc5_ = Number(ref._tiToLevel.text);
               if(_loc4_ == undefined || (_global.isNaN(_loc4_) || (_loc5_ == undefined || _global.isNaN(_loc5_))))
               {
                  return true;
               }
               return _loc3_ >= _loc4_ && _loc3_ <= _loc5_;
            }});
            this.applySpellFilters();
      }
   }
   function initData()
   {
      this._cbProgressFire.value = 0;
      this._ldrBreed.contentPath = dofus.Constants["\x16\x10\x1c"] + this.api.datacenter.Player.Guild + ".swf";
      this._eaAvailableSpells = dofus.graphics.gapi.ui.SpellsCollection.getAvailableSpells();
      this.generateSpellsCollectionStatistics();
      var _loc2_ = this.getBreedSpells();
      var _loc3_ = _loc2_.nonPassiveSpells;
      this._suSpell1["\x1a\x1b\x01"](true,undefined,_loc3_[0]);
      this._suSpell2["\x1a\x1b\x01"](true,undefined,_loc3_[1]);
      this._suSpell3["\x1a\x1b\x01"](true,undefined,_loc3_[2]);
      this._suSpell4["\x1a\x1b\x01"](true,undefined,_loc3_[3]);
      this._suSpell5["\x1a\x1b\x01"](true,undefined,_loc2_.passiveSpell);
      this.resetSpellFilters();
      this._btnFilterPossessed.selected = true;
      this._eoSpellFilters.addItemAt(4,{fn:function(§\x1a\x02\x06§)
      {
         return _loc2_.isOwnedByPlayer;
      }});
      this.applySpellFilters();
      this.initCurrentDeckGrid();
      this.applySpellsDeck();
   }
   function initSpellsGrid()
   {
      this._cgSpells["\x1a\x1b\x04"](0);
      this.applySpellFilters();
   }
   function initCurrentDeckGrid()
   {
      var _loc2_ = this.api.datacenter.Player.Spells;
      var _loc3_ = 0;
      while(_loc3_ < dofus.datacenter.spellscollection.SpellsDeck.DECK_CAPACITY)
      {
         var _loc4_ = this["_ctrDeck" + (_loc3_ + 1)];
         _loc4_.contentData = undefined;
         _loc3_ = _loc3_ + 1;
      }
      var _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         var _loc6_ = _loc2_[_loc5_];
         var _loc7_ = _loc6_.position;
         if(_loc7_ != undefined)
         {
            var _loc8_ = this["_ctrDeck" + _loc7_];
            _loc8_.contentData = _loc6_;
         }
         _loc5_ = _loc5_ + 1;
      }
   }
   function getDeckContainer(§\x19\b\x0b§)
   {
      return this["_ctrDeck" + _loc2_];
   }
   function spellMove(§\x19\x0e\x17§, §\x19\f\r§)
   {
      var _loc4_ = this.api.datacenter.Player.Spells;
      var _loc5_ = _loc4_.findFirstItem("ID",_loc2_).item;
      if(_loc5_ == undefined)
      {
         return undefined;
      }
      this.getDeckContainer(_loc3_).contentData = _loc5_;
      this.refreshGridSpellsOwnedState();
   }
   function spellRemove(§\x19\f\r§)
   {
      this.getDeckContainer(_loc2_).contentData = undefined;
      this.refreshGridSpellsOwnedState();
   }
   function refreshGridSpellsOwnedState()
   {
      var _loc2_ = this._cgSpells.visibleContainers;
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         var _loc4_ = _loc2_[_loc3_];
         _loc4_.content.setSpellOwnedState();
         _loc3_ = _loc3_ + 1;
      }
   }
   function applySpellsDeck()
   {
      var _loc2_ = this.api.datacenter.Player.getSpellsDeck(this.api.datacenter.Player.currentSpellsDeckID);
      this._tiDeckName.removeEventListener("change",this);
      this._tiDeckName.text = _loc2_.name;
      this._tiDeckName.addEventListener("change",this);
   }
   function applySpellFilters()
   {
      var _loc2_ = this._eaAvailableSpells;
      var _loc3_ = new ank.utils.ExtendedArray();
      var _loc4_ = this._eoSpellFilters.getItems();
      var _loc5_ = 0;
      var _loc6_ = function(§\x15\x1b\x04§, §\x16\b\b§)
      {
         var _loc4_ = _loc2_.spell.name >= _loc3_.spell.name ? 1 : -1;
         return _loc2_.spell.rarity - _loc3_.spell.rarity || _loc4_;
      };
      var _loc7_ = 0;
      while(_loc7_ < _loc2_.length)
      {
         var _loc8_ = _loc2_[_loc7_];
         var _loc9_ = false;
         for(var k in _loc4_)
         {
            var _loc10_ = _loc4_[k].fn;
            §§push(_loc10_ != undefined);
            if(!(_loc10_ != undefined))
            {
               if(!§§pop())
               {
                  continue;
               }
               _loc9_ = true;
            }
            _loc5_ = _loc5_ + 1;
            _loc8_ = dofus.datacenter.;
            _loc9_ = false;
            §§enumerate(_loc4_);
            var k = _loc0_;
            var _loc0_ = null;
            (_loc0_ = §§enumeration()) == null;
            _loc9_ = true;
            §§push(!_loc9_);
            §§push(_loc8_);
            §§push(1);
            §§push(!!_loc10_.apply(this,[_loc8_]));
         }
         if(_loc9_)
         {
            _loc5_ = _loc5_ + 1;
         }
         else
         {
            _loc3_.push(new dofus.datacenter.spellscollection.SpellsCollectionItemObject(_loc8_));
         }
         _loc7_ = _loc7_ + 1;
      }
      _loc3_.sort(_loc6_);
      this._mcResetSpellFilters._visible = _loc5_ > 0;
      this._lblNoSpellsFound._visible = _loc3_.length == 0;
      this._cgSpells.dataProvider = _loc3_;
      this._cgSpells["\x1a\x1b\x04"](0);
   }
   function showSpellDetails(bShow, §\x1a\x02\x06§, bMoveRight)
   {
      this._sfivSpellFullInfosViewer.removeMovieClip();
      if(_loc2_)
      {
         var _loc5_ = this._nSpellFullInfosPlacerX;
         if(bMoveRight)
         {
            _loc5_ += 350;
         }
         this.attachMovie("SpellFullInfosViewer","_sfivSpellFullInfosViewer",this.getNextHighestDepth(),{_x:_loc5_,_y:this["\x1d\x10\f"]._y});
         this._sfivSpellFullInfosViewer.addEventListener("close",this);
         this._sfivSpellFullInfosViewer.spell = _loc3_;
      }
   }
   function close(oEvent)
   {
      this.showSpellDetails(false);
   }
   function resetSpellFilters()
   {
      this._tiFromLevel.text = String(dofus.graphics.gapi.ui.SpellsCollection.MIN_FILTER_DEFAULT_SPELL_LEVEL);
      this._tiToLevel.text = String(dofus.graphics.gapi.ui.SpellsCollection.MAX_FILTER_DEFAULT_SPELL_LEVEL);
      this._tiSearch.text = this.api.lang.getText("SEARCH");
      this._mcElementFilterSelected._visible = false;
      this._btnFilterMonster.selected = false;
      this._btnFilterCraft.selected = false;
      this._btnFilterUnknown.selected = false;
      this._btnFilterPossessed.selected = false;
      this._btnFilterNotPossessed.selected = false;
      this._eoSpellFilters = new ank.utils.ExtendedObject();
   }
   function initTexts()
   {
      this._tiSearch.text = !this._tiSearch.text.length ? this.api.lang.getText("SEARCH") : this._tiSearch.text;
      this._lblBreedSpell.text = this.api.lang.getText("CLASS_SPELLS");
      this._lblParchoSpells.text = this.api.lang.getText("PARCHOMANCIA_SPELLS");
      this._lblParchoSpellDescription.text = this.api.lang.getText("HELP_PARCHO_SPELL_DESCRIPTION");
      this._lblBreedSpellDescription.text = this.api.lang.getText("TR2_HELP_BREED_SPELL_DESCRIPTION");
      this._lblSpellDeck.text = this.api.lang.getText("SPELLS_DECK");
      this._lblDeckSpellDescription.text = this.api.lang.getText("TR2_HELP_SPELLS_DECK");
      this._lblLevelFrom.text = this.api.lang.getText("LEVEL") + " " + this.api.lang.getText("FROM");
      this._lblLevelFromMiddle.text = this.api.lang.getText("TO");
      this._lblNoSpellsFound.text = this.api.lang.getText("TR2_SPELLS_COLLECTION_NO_SPELLS_FOUND");
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._ctrDeck1:
         case this._ctrDeck2:
         case this._ctrDeck3:
         case this._ctrDeck4:
         case this._ctrDeck5:
         case this._ctrDeck6:
         case this._ctrDeck7:
         case this._ctrDeck8:
         case this._ctrDeck9:
         case this._ctrDeck10:
         case this._ctrDeck11:
         case this._ctrDeck12:
         case this._ctrDeck13:
         case this._ctrDeck14:
            var _loc3_ = _loc2_.target;
            var _loc4_ = dofus.datacenter.["\x1b\x06\x06"](_loc3_.contentData);
            if(_loc4_ != undefined)
            {
               this.showSpellDetails(true,_loc4_,true);
            }
            break;
         case this._mcResetSpellFilters:
            this.resetSpellFilters();
            this.applySpellFilters();
            break;
         case this._ldrProgressFire:
         case this._circleProgressFire:
            this.onSpellCategoryClick(1,_loc2_.target);
            break;
         case this._ldrProgressWater:
         case this._circleProgressWater:
            this.onSpellCategoryClick(2,_loc2_.target);
            break;
         case this._ldrProgressEarth:
         case this._circleProgressEarth:
            this.onSpellCategoryClick(3,_loc2_.target);
            break;
         case this._ldrProgressNeutral:
         case this._circleProgressNeutral:
            this.onSpellCategoryClick(4,_loc2_.target);
            break;
         case this._ldrProgressAir:
         case this._circleProgressAir:
            this.onSpellCategoryClick(5,_loc2_.target);
            break;
         case this._ldrProgressMulti:
         case this._circleProgressMulti:
            this.onSpellCategoryClick(6,_loc2_.target);
            break;
         case this._ldrProgressInvoc:
         case this._circleProgressInvoc:
            this.onSpellCategoryClick(7,_loc2_.target);
            break;
         case this._ldrProgressBoost:
         case this._circleProgressBoost:
            this.onSpellCategoryClick(8,_loc2_.target);
            break;
         case this._ldrProgressHeal:
         case this._circleProgressHeal:
            this.onSpellCategoryClick(9,_loc2_.target);
            break;
         case this._btnFilterMonster:
         case this._btnFilterCraft:
         case this._btnFilterUnknown:
            var _loc5_ = _loc2_.target.selected;
            this._btnFilterMonster.selected = false;
            this._btnFilterCraft.selected = false;
            this._btnFilterUnknown.selected = false;
            _loc2_.target.selected = _loc5_;
            if(this._btnFilterMonster.selected)
            {
               this._eoSpellFilters.addItemAt(3,{fn:function(§\x1a\x02\x06§)
               {
                  return _loc2_.origin == dofus.graphics.gapi.ui.SpellsCollection.SPELLS_ORIGIN_DROP_ON_MONSTER;
               }});
            }
            else if(this._btnFilterCraft.selected)
            {
               this._eoSpellFilters.addItemAt(3,{fn:function(§\x1a\x02\x06§)
               {
                  return _loc2_.origin == dofus.graphics.gapi.ui.SpellsCollection.SPELLS_ORIGIN_CRAFT;
               }});
            }
            else if(this._btnFilterUnknown.selected)
            {
               this._eoSpellFilters.addItemAt(3,{fn:function(§\x1a\x02\x06§)
               {
                  return _loc2_.origin == dofus.graphics.gapi.ui.SpellsCollection.SPELLS_ORIGIN_UNKNOWN;
               }});
            }
            else
            {
               this._eoSpellFilters["\x1a\f\n"](3);
            }
            this.applySpellFilters();
            this.api.sounds["\x17\x0e\x06"].onSpellCollectionButtonClick();
            break;
         case this._btnFilterPossessed:
         case this._btnFilterNotPossessed:
            var _loc6_ = _loc2_.target.selected;
            this._btnFilterPossessed.selected = false;
            this._btnFilterNotPossessed.selected = false;
            _loc2_.target.selected = _loc6_;
            if(this._btnFilterPossessed.selected)
            {
               this._eoSpellFilters.addItemAt(4,{fn:function(§\x1a\x02\x06§)
               {
                  return _loc2_.isOwnedByPlayer;
               }});
            }
            else if(this._btnFilterNotPossessed.selected)
            {
               this._eoSpellFilters.addItemAt(4,{fn:function(§\x1a\x02\x06§)
               {
                  return !_loc2_.isOwnedByPlayer;
               }});
            }
            else
            {
               this._eoSpellFilters["\x1a\f\n"](4);
            }
            this.applySpellFilters();
            this.api.sounds["\x17\x0e\x06"].onSpellCollectionButtonClick();
            break;
         case this._btnPreviousDeck:
            if(Key.isDown(Key.SHIFT))
            {
               this.showSwitchDeckPopupMenu();
            }
            else
            {
               this.goPreviousDeck();
            }
            this.api.sounds["\x17\x0e\x06"].onSpellCollectionButtonClick();
            break;
         case this._btnNextDeck:
            if(Key.isDown(Key.SHIFT))
            {
               this.showSwitchDeckPopupMenu();
            }
            else
            {
               this.goNextDeck();
            }
            this.api.sounds["\x17\x0e\x06"].onSpellCollectionButtonClick();
            break;
         case this._btnClose:
            this["\x16\x15\n"]();
      }
   }
   function showSwitchDeckPopupMenu()
   {
      var _loc2_ = this.api.ui["\x17\x02\x19"]();
      var _loc3_ = this.api.datacenter.Player.SpellsDecks["\x17\x1a\x17"]();
      var _loc4_ = 0;
      while(_loc4_ < _loc3_)
      {
         var _loc5_ = this.api.datacenter.Player.getSpellsDeck(_loc4_);
         _loc2_["\x15\x1d\x12"](_loc5_.name,this,this.switchDeck,[_loc5_.ID],_loc5_.ID != this.api.datacenter.Player.currentSpellsDeckID);
         _loc4_ = _loc4_ + 1;
      }
      _loc2_.show();
   }
   function goPreviousDeck()
   {
      var _loc2_ = this.api.datacenter.Player.SpellsDecks["\x17\x1a\x17"]();
      var _loc3_ = this.api.datacenter.Player.currentSpellsDeckID;
      _loc3_ = _loc3_ - 1;
      if(_loc3_ < 0)
      {
         _loc3_ = _loc2_ - 1;
      }
      this.switchDeck(_loc3_);
   }
   function goNextDeck()
   {
      var _loc2_ = this.api.datacenter.Player.SpellsDecks["\x17\x1a\x17"]();
      var _loc3_ = this.api.datacenter.Player.currentSpellsDeckID;
      _loc3_ = _loc3_ + 1;
      if(_loc3_ >= _loc2_)
      {
         _loc3_ = 0;
      }
      this.switchDeck(_loc3_);
   }
   function switchDeck(nDeckID)
   {
      this.api.datacenter.Player.currentSpellsDeckID = nDeckID;
      this.applySpellsDeck();
      this.api.network.Temporis.episodeTwo.sendSpellsQuickLoad(nDeckID);
   }
   function modelChanged()
   {
      this.generateSpellsCollectionStatistics();
      this.initCurrentDeckGrid();
      this.initSpellsGrid();
   }
   function over(oEvent)
   {
      if(this._nDelayTooltipEventTimeout != undefined)
      {
         _global.clearTimeout(this._nDelayTooltipEventTimeout);
         this._nDelayTooltipEventTimeout = undefined;
      }
      var _loc3_ = _global.setTimeout(this,"doOver",50,_loc2_);
      this._nDelayTooltipEventTimeout = _loc3_;
   }
   function doOver(oEvent)
   {
      this._nDelayTooltipEventTimeout = undefined;
      this.gapi.hideTooltip();
      switch(_loc2_.target)
      {
         case this._btnClose:
            this.gapi.showTooltip(this.api.lang.getText("LEAVE"),_loc2_.target,-20);
            break;
         case this._btnFilterPossessed:
            this.gapi.showTooltip(this.api.lang.getText("TR2_SPELLS_COLLECTION_UI_FILTER_1") + "\n" + this.getProgressionTooltipText(this._oSpellsStatistics),_loc2_.target,-30);
            break;
         case this._btnFilterNotPossessed:
            this.gapi.showTooltip(this.api.lang.getText("TR2_SPELLS_COLLECTION_UI_FILTER_2"),_loc2_.target,-30);
            break;
         case this._btnFilterMonster:
            this.gapi.showTooltip(this.api.lang.getText("TR2_SPELLS_COLLECTION_UI_FILTER_3"),_loc2_.target,-30);
            break;
         case this._btnFilterCraft:
            this.gapi.showTooltip(this.api.lang.getText("TR2_SPELLS_COLLECTION_UI_FILTER_4"),_loc2_.target,-30);
            break;
         case this._btnFilterUnknown:
            this.gapi.showTooltip(this.api.lang.getText("TR2_SPELLS_COLLECTION_UI_FILTER_5"),_loc2_.target,-30);
            break;
         case this._mcResetSpellFilters:
            this.gapi.showTooltip(this.api.lang.getText("RESET_ALL_FILTERS"),_loc2_.target._x,_loc2_.target._y - 20);
            break;
         case this._ctrDeck1:
         case this._ctrDeck2:
         case this._ctrDeck3:
         case this._ctrDeck4:
         case this._ctrDeck5:
         case this._ctrDeck6:
         case this._ctrDeck7:
         case this._ctrDeck8:
         case this._ctrDeck9:
         case this._ctrDeck10:
         case this._ctrDeck11:
         case this._ctrDeck12:
         case this._ctrDeck13:
         case this._ctrDeck14:
            var _loc3_ = _loc2_.target;
            this._currentOverContainer = _loc3_;
            var _loc4_ = _loc3_.contentData;
            if(_loc4_ != undefined)
            {
               this.gapi.showTooltip(_loc4_.name + " (" + (_loc4_["\x16\x04\x03"] >= 1 ? _loc4_["\x16\x04\x03"] : "1") + " " + this.api.lang.getText("AP") + (_loc4_["\x15\x1c\x1b"] <= 0 ? "" : ", " + this.api.lang.getText("ACTUAL_CRITICAL_CHANCE") + ": 1/" + _loc4_["\x15\x1c\x1b"]) + ")",_loc2_.target,-20,{bXLimit:true,bYLimit:false});
            }
            else
            {
               this.gapi.hideTooltip();
            }
            break;
         case this._ldrProgressFire:
         case this._circleProgressFire:
            this.onSpellCategoryOver(1,this._circleProgressFire);
            break;
         case this._ldrProgressWater:
         case this._circleProgressWater:
            this.onSpellCategoryOver(2,this._circleProgressWater);
            break;
         case this._ldrProgressEarth:
         case this._circleProgressEarth:
            this.onSpellCategoryOver(3,this._circleProgressEarth);
            break;
         case this._ldrProgressNeutral:
         case this._circleProgressNeutral:
            this.onSpellCategoryOver(4,this._circleProgressNeutral);
            break;
         case this._ldrProgressAir:
         case this._circleProgressAir:
            this.onSpellCategoryOver(5,this._circleProgressAir);
            break;
         case this._ldrProgressMulti:
         case this._circleProgressMulti:
            this.onSpellCategoryOver(6,this._circleProgressMulti);
            break;
         case this._ldrProgressInvoc:
         case this._circleProgressInvoc:
            this.onSpellCategoryOver(7,this._circleProgressInvoc);
            break;
         case this._ldrProgressBoost:
         case this._circleProgressBoost:
            this.onSpellCategoryOver(8,this._circleProgressBoost);
            break;
         case this._ldrProgressHeal:
         case this._circleProgressHeal:
            this.onSpellCategoryOver(9,this._circleProgressHeal);
            break;
         default:
            this.gapi.hideTooltip();
      }
   }
   function out(oEvent)
   {
      if(this._nDelayTooltipEventTimeout != undefined)
      {
         _global.clearTimeout(this._nDelayTooltipEventTimeout);
         this._nDelayTooltipEventTimeout = undefined;
      }
      var _loc3_ = _global.setTimeout(this,"doOut",50,_loc2_);
      this._nDelayTooltipEventTimeout = _loc3_;
   }
   function doOut(oEvent)
   {
      this._nDelayTooltipEventTimeout = undefined;
      this._currentOverContainer = undefined;
      this.gapi.hideTooltip();
   }
   function createSpellActionPopupMenu(§\x1a\x02\x06§)
   {
      var _loc3_ = this.api.datacenter.Player.getSpellsDeck(this.api.datacenter.Player.currentSpellsDeckID);
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      var _loc4_ = dofus.datacenter.["\x1b\x06\x06"](_loc3_.eoSpells.getItemAt(_loc2_.position));
      if(_loc4_ == undefined)
      {
         return undefined;
      }
      var _loc5_ = this.api.ui["\x17\x02\x19"]();
      _loc5_["\x15\x1d\x12"](this.api.lang.getText("TR2_REMOVE_SPELL_FROM_DECK"),this.api.network.Temporis.episodeTwo,this.api.network.Temporis.episodeTwo.sendSpellsQuickRemove,[this.api.datacenter.Player.currentSpellsDeckID,_loc2_.position],!_loc4_.isUndeletable);
      _loc5_.show(_root._xmouse,_root._ymouse,true);
   }
   function selectItem(oEvent)
   {
      var _loc3_ = _loc2_.spell;
      var _loc4_ = _loc2_.isFromSpellUnwrap;
      if(_loc3_ == undefined)
      {
         var _loc5_ = _loc2_.target;
         if(_loc5_ == undefined || _loc5_.contentData == undefined)
         {
            return undefined;
         }
         _loc3_ = dofus.datacenter.["\x1b\x06\x06"](_loc5_.contentData.spell);
      }
      if(_loc2_.grade != undefined)
      {
         this.showSpellDetails(true,new dofus.datacenter.["\x1b\x06\x06"](_loc3_.ID,_loc2_.grade),_loc4_);
      }
      else
      {
         var _loc6_ = this.api.datacenter.Player.getOwnedSpell(_loc3_.ID);
         if(_loc6_ == undefined)
         {
            this.showSpellDetails(true,_loc3_,_loc4_);
            return undefined;
         }
         this.showSpellDetails(true,_loc6_,_loc4_);
      }
   }
   function drag(oEvent)
   {
      if(_loc2_.target.contentData == undefined)
      {
         return undefined;
      }
      this.gapi.removeCursor();
      this.gapi["\x1a\x15\x19"](_loc2_.target.contentData);
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
      if(_loc3_ instanceof dofus.datacenter.["\x1b\x06\x06"])
      {
         var _loc4_ = dofus.datacenter.["\x1b\x06\x06"](_loc3_);
         if(!_loc4_.isOwnedByPlayer)
         {
            return undefined;
         }
         var _loc5_ = _loc2_.target;
         var _loc6_ = Number(_loc5_._name.split("_ctrDeck")[1]);
         this.api.network.Temporis.episodeTwo.sendSpellsQuickMove(this.api.datacenter.Player.currentSpellsDeckID,_loc4_.ID,_loc6_);
      }
      this.gapi.removeCursor();
   }
   function dragItem(oEvent)
   {
      var _loc3_ = _loc2_.target.contentData;
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      if(!_loc3_.spell.isOwnedByPlayer)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("ERROR_ACTION_IMPOSSIBLE_SPELL_NOT_OWNED"),"ERROR_CHAT");
         return undefined;
      }
      this.gapi.removeCursor();
      this.gapi["\x1a\x15\x19"](_loc3_.spell);
   }
   function dropItem(oEvent)
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
   }
   function onShortcut(sShortcut)
   {
      var _loc3_ = true;
      switch(_loc2_)
      {
         case "CODE_NEXT":
            this.goNextDeck();
            _loc3_ = false;
            break;
         case "CODE_PREVIOUS":
            this.goPreviousDeck();
            _loc3_ = false;
      }
      return _loc3_;
   }
   function onSpellCategoryOver(nElementID, §\x18\x1b\f§)
   {
      var _loc4_ = this.getCircleBarByElementID(nElementID);
      if(_loc4_ == undefined)
      {
         return undefined;
      }
      var _loc5_ = this._eoSpellTypesStatistics.getItemAt(this.convertElementValueToSpellType(nElementID));
      this.gapi.showTooltip(this.getProgressionTooltipText(_loc5_),_loc3_,-20);
   }
   function getProgressionTooltipText(oRes)
   {
      return oRes.ownedPercentage + "% (" + oRes.ownedCount + "/" + oRes.totalCount + ")";
   }
   function onSpellCategoryClick(nElementID, §\x18\x1b\f§)
   {
      var _loc4_ = this.getCircleBarByElementID(nElementID);
      if(_loc4_ == undefined)
      {
         return undefined;
      }
      var _loc5_ = this._eoSpellFilters.getItemAt(5);
      if(_loc5_ != undefined && _loc5_.elementID == nElementID)
      {
         this._mcElementFilterSelected._visible = false;
         this._eoSpellFilters["\x1a\f\n"](5);
      }
      else
      {
         this._mcElementFilterSelected._y = this._nMcElementFilterSelectedY + (nElementID - 1) * 25.5;
         this._mcElementFilterSelected._visible = true;
         var nSpellType = this.convertElementValueToSpellType(nElementID);
         this._eoSpellFilters.addItemAt(5,{elementID:nElementID,fn:function(§\x1a\x02\x06§)
         {
            return _loc2_.type == nSpellType;
         }});
      }
      this.applySpellFilters();
   }
   function convertElementValueToSpellType(nElement)
   {
      switch(nElement)
      {
         case 1:
            return 3;
         case 2:
            return 1;
         case 3:
            return 4;
         case 4:
            return 5;
         case 5:
            return 2;
         case 6:
            return 6;
         case 7:
            return 8;
         case 8:
            return 7;
         case 9:
            return 9;
         default:
      }
   }
   function getCircleBarByElementID(nElementID)
   {
      var _loc3_ = undefined;
      switch(nElementID)
      {
         case 1:
            _loc3_ = this._cbProgressFire;
            break;
         case 2:
            _loc3_ = this._cbProgressWater;
            break;
         case 3:
            _loc3_ = this._cbProgressEarth;
            break;
         case 4:
            _loc3_ = this._cbProgressNeutral;
            break;
         case 5:
            _loc3_ = this._cbProgressAir;
            break;
         case 6:
            _loc3_ = this._cbProgressMulti;
            break;
         case 7:
            _loc3_ = this._cbProgressInvoc;
            break;
         case 8:
            _loc3_ = this._cbProgressBoost;
            break;
         case 9:
            _loc3_ = this._cbProgressHeal;
      }
      return _loc3_;
   }
   function generateSpellsCollectionStatistics()
   {
      var _loc2_ = 0;
      var _loc3_ = 0;
      var _loc4_ = new ank.utils.ExtendedObject();
      var _loc5_ = 0;
      while(_loc5_ < this._eaAvailableSpells.length)
      {
         var _loc6_ = this._eaAvailableSpells[_loc5_];
         var _loc7_ = _loc6_.type;
         var _loc8_ = _loc6_.isOwnedByPlayer;
         if(_loc8_)
         {
            _loc2_ = _loc2_ + 1;
         }
         _loc3_ = _loc3_ + 1;
         if(_loc7_ != undefined)
         {
            var _loc9_ = _loc4_.getItemAt(_loc7_);
            if(_loc9_ == undefined)
            {
               _loc9_ = new Object();
               _loc9_.ownedCount = 0;
               _loc9_.totalCount = 0;
               _loc4_.addItemAt(_loc7_,_loc9_);
            }
            if(_loc8_)
            {
               _loc9_.ownedCount++;
            }
            _loc9_.totalCount++;
         }
         _loc5_ = _loc5_ + 1;
      }
      this._cbProgressBoost["\x18\x19\x12"] -= dofus.graphics.gapi.controls.temporis.TemporisGeneral.SPELLS_EXCEPTIONS_QTY;
      _loc4_.getItemAt(7).totalCount = _loc4_.getItemAt(7).totalCount - dofus.graphics.gapi.controls.temporis.TemporisGeneral.SPELLS_EXCEPTIONS_QTY;
      var _loc10_ = _loc4_.getItems();
      for(var k in _loc10_)
      {
         var _loc11_ = _loc10_[k];
         _loc11_.ownedPercentage = Math.floor(_loc11_.ownedCount / _loc11_.totalCount * 100);
      }
      var _loc12_ = 0;
      var _loc13_ = undefined;
      while(_loc12_ == 0 || _loc13_ != undefined)
      {
         _loc12_ = _loc12_ + 1;
         _loc13_ = this.getCircleBarByElementID(_loc12_);
         var _loc14_ = this.convertElementValueToSpellType(_loc12_);
         var _loc15_ = _loc4_.getItemAt(_loc14_);
         if(_loc15_ != undefined)
         {
            _loc13_.value = _loc15_.ownedPercentage;
         }
      }
      var _loc16_ = new Object();
      _loc16_.ownedCount = _loc2_;
      _loc16_.totalCount = _loc3_;
      _loc16_.ownedPercentage = Math.floor(_loc2_ / _loc3_ * 100);
      this._oSpellsStatistics = _loc16_;
      this._eoSpellTypesStatistics = _loc4_;
   }
   function getBreedSpells()
   {
      var _loc2_ = this.api.lang["\x18\x01\x06"]();
      var _loc3_ = new Array();
      var _loc4_ = undefined;
      for(var i in _loc2_)
      {
         var _loc5_ = _loc2_[i];
         var _loc6_ = new dofus.datacenter.["\x1b\x06\x06"](Number(i),1);
         var _loc7_ = _loc6_["\x16\x17\f"];
         if(_loc7_ == dofus.graphics.gapi.ui.SpellsCollection.SPELLS_CATEGORY_TR2_BREED && _loc6_.spellBreed == this.api.datacenter.Player.Guild)
         {
            if(_loc6_.isPassive)
            {
               _loc4_ = _loc6_;
               continue;
            }
            _loc3_.push(_loc6_);
         }
      }
      return {nonPassiveSpells:_loc3_,passiveSpell:_loc4_};
   }
   static function getAvailableSpells()
   {
      var _loc2_ = _global.api;
      var _loc3_ = _loc2_.lang["\x18\x01\x06"]();
      var _loc4_ = new ank.utils.ExtendedArray();
      for(var i in _loc3_)
      {
         var _loc5_ = _loc3_[i];
         var _loc6_ = new dofus.datacenter.["\x1b\x06\x06"](Number(i),1);
         if(!_loc6_.isPassive)
         {
            var _loc7_ = _loc6_["\x16\x17\f"];
            if(_loc7_ == dofus.graphics.gapi.ui.SpellsCollection.SPELLS_CATEGORY_TR2_COMMON || (_loc7_ == dofus.graphics.gapi.ui.SpellsCollection.SPELLS_CATEGORY_TR2_RARE || (_loc7_ == dofus.graphics.gapi.ui.SpellsCollection.SPELLS_CATEGORY_TR2_EPIC || _loc7_ == dofus.graphics.gapi.ui.SpellsCollection.SPELLS_CATEGORY_TR2_LEGENDARY)))
            {
               _loc4_.push(_loc6_);
            }
         }
      }
      return _loc4_;
   }
}
