if(!dofus.graphics.gapi.ui.spellscollection.SpellsCollectionItem)
{
   if(!dofus)
   {
      _global.dofus = new Object();
   }
   if(!dofus.graphics.)
   {
      _global.dofus.graphics. = new Object();
   }
   if(!dofus.graphics.gapi)
   {
      _global.dofus.graphics.gapi = new Object();
   }
   if(!dofus.graphics.gapi.ui)
   {
      _global.dofus.graphics.gapi.ui = new Object();
   }
   if(!dofus.graphics.gapi.ui.spellscollection)
   {
      _global.dofus.graphics.gapi.ui.spellscollection = new Object();
   }
   dofus.graphics.gapi.ui.spellscollection.SpellsCollectionItem = function()
   {
      super();
      this.initialize();
   } extends dofus.graphics.gapi["\x17\x01\x0f"]["\x17\t\n"];
   var _loc1_ = dofus.graphics.gapi.ui.spellscollection.SpellsCollectionItem = function()
   {
      super();
      this.initialize();
   }.prototype;
   _loc1_["\t\x17"] = function §\t\x17§()
   {
      return this["\x1e\x05\x14"];
   };
   _loc1_["\x1d\r"] = function §\x1d\r§(§\x1a\x02\x06§)
   {
      this["\x1e\x05\x14"] = _loc2_;
      return this["\t\x17"]();
   };
   _loc1_.initialize = function initialize()
   {
      this.api = _global.api;
   };
   _loc1_.init = function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.spellscollection.SpellsCollectionItem.CLASS_NAME);
   };
   _loc1_.createChildren = function createChildren()
   {
      this._mcSpellGet._visible = false;
      this._mcSpellNoGet._visible = false;
      this._btnSpellGrade1._visible = false;
      this._btnSpellGrade2._visible = false;
      this._btnSpellGrade3._visible = false;
      this._mcSpellInDeck._visible = false;
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.initTexts});
   };
   _loc1_.addListeners = function addListeners()
   {
      this._btnSpellGrade1.addEventListener("click",this);
      this._btnSpellGrade2.addEventListener("click",this);
      this._btnSpellGrade3.addEventListener("click",this);
      var ref = this;
      this._mcSpellInDeck.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._mcSpellInDeck.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._mcSpellGet.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._mcSpellGet.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._mcSpellNoGet.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._mcSpellNoGet.onRollOut = function()
      {
         ref.out({target:this});
      };
   };
   _loc1_.initData = function initData()
   {
      this._ldrIcon.forceReload = true;
      this._ldrIcon.contentParams = this["\x1e\x05\x14"].params;
      this._ldrIcon.contentPath = this["\x1e\x05\x14"].iconFile;
      this._btnSpellGrade1._visible = this["\x1e\x05\x14"]["\x18\x19\x19"] >= 1;
      this._btnSpellGrade2._visible = this["\x1e\x05\x14"]["\x18\x19\x19"] >= 2;
      this._btnSpellGrade3._visible = this["\x1e\x05\x14"]["\x18\x19\x19"] >= 3;
      this._mcSpellRarity.gotoAndStop(this["\x1e\x05\x14"].rarity);
      var _loc2_ = this.api.datacenter.Player.getOwnedSpellLevel(this["\x1e\x05\x14"].ID);
      var _loc3_ = _loc2_ > -1;
      if(_loc3_)
      {
         var _loc4_ = this["_btnSpellGrade" + _loc2_];
         _loc4_.backgroundDown = "ButtonTemporisSpellGet";
         _loc4_.backgroundUp = "ButtonTemporisSpellGet";
      }
      this.setSpellOwnedState();
      this.initSpellOrigin(this["\x1e\x05\x14"].origin);
   };
   _loc1_.initTexts = function initTexts()
   {
      this["\x1c\x1b\x0f"].text = this["\x1e\x05\x14"].name;
      this["\x1c\x1a\x07"].text = this.api.lang.getText("LEVEL_SMALL") + " " + this["\x1e\x05\x14"]["\x19\x0b\r"];
   };
   _loc1_.setSpellOwnedState = function setSpellOwnedState()
   {
      var _loc2_ = this.api.datacenter.Player.getOwnedSpell(this["\x1e\x05\x14"].ID);
      var _loc3_ = _loc2_ != undefined;
      var _loc4_ = false;
      if(_loc3_ && _loc2_.position != undefined)
      {
         _loc4_ = _loc2_.position != -1;
      }
      this._mcSpellNoGet._visible = !_loc3_;
      this._mcSpellGet._visible = _loc3_ && !_loc4_;
      this._mcSpellInDeck._visible = _loc3_ && _loc4_;
   };
   _loc1_.initSpellOrigin = function initSpellOrigin(nOrigin)
   {
      switch(nOrigin)
      {
         case dofus.graphics.gapi.ui.SpellsCollection.SPELLS_ORIGIN_DROP_ON_MONSTER:
            var _loc3_ = "SpellAcquireDrop";
            break;
         case dofus.graphics.gapi.ui.SpellsCollection.SPELLS_ORIGIN_CRAFT:
            _loc3_ = "SpellAcquireCraft";
            break;
         case dofus.graphics.gapi.ui.SpellsCollection.SPELLS_ORIGIN_UNKNOWN:
            _loc3_ = "SpellAcquireUnknown";
            break;
         default:
            _loc3_ = "";
      }
      this._ldrSpellAcquireType.contentPath = _loc3_;
      this._ldrSpellAcquireType.content._xscale = -100;
   };
   _loc1_.click = function click(oEvent)
   {
      §§push(dofus.graphics.gapi.ui.SpellsCollection);
      §§push("SpellsCollection");
      §§push(1);
      §§push(this);
      §§push("api");
      while(true)
      {
         var _loc3_ = §§pop()(§§pop()[§§pop()].ui.getUIComponent());
         if(_loc3_ == undefined)
         {
            return undefined;
         }
         var _loc0_ = null;
         if((_loc0_ = _loc2_.target) === this._btnSpellGrade1)
         {
            _loc3_.selectItem({spell:this["\x1e\x05\x14"],grade:1});
            break;
         }
         if(_loc0_ === this._btnSpellGrade2)
         {
            _loc3_.selectItem({spell:this["\x1e\x05\x14"],grade:2});
            break;
         }
         if(_loc0_ === this._btnSpellGrade3)
         {
            _loc3_.selectItem({spell:this["\x1e\x05\x14"],grade:3});
            break;
         }
      }
   };
   _loc1_.over = function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._mcSpellInDeck:
            this.api.ui.showTooltip(this.api.lang.getText("SPELL_EQUIPED_CURRENT_DECK"),_loc2_.target,-25);
            break;
         case this._mcSpellGet:
            this.api.ui.showTooltip(this.api.lang.getText("SPELL_OWNED"),_loc2_.target,-25);
            break;
         case this._mcSpellNoGet:
            this.api.ui.showTooltip(this.api.lang.getText("SPELL_NOT_OWNED"),_loc2_.target,-25);
      }
   };
   _loc1_.out = function out(oEvent)
   {
      this["\x02\x04\x01\x07\x03"]["\x01"]["\x03)"]();
   };
   _loc1_["\x02oEvent"]("\b\x06{invalid_utf8=150}\x03",_loc1_["\x07\x01"],_loc1_[undefined]);
   "\x1a"(_loc1_,null,1);
   dofus.graphics.gapi.ui.spellscollection.SpellsCollectionItem = function()
   {
      super();
      this.initialize();
   }["\b^{invalid_utf8=150}\x03"] = "O{invalid_utf8=150}\x04";
}
