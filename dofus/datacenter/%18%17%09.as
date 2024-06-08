class dofus.§\x17\x04\x19§.§\x18\x17\t§ extends dofus.utils.§\x16\x04\x07§
{
   var §\x18\f\x15§ = false;
   var §\x18\x0f\x17§ = false;
   var §\x18\x0f\x18§ = false;
   static var MAX_RAPID_STUFFS_COUNT = 10;
   static var MAX_SPELLS_DECKS_COUNT = 10;
   var §\x18\x05\x12§ = false;
   var currentSpellsDeckID = 0;
   var §\x1d\x1d\x12§ = 0;
   var §\x1c\x06\x01§ = false;
   var _bIsDead = false;
   var §\x1d\x1a\t§ = 0;
   var §\x1d\x16\x14§ = 0;
   function §\x18\x17\t§(oAPI)
   {
      super();
      this.initialize(oAPI);
   }
   function initialize(oAPI)
   {
      super.initialize(oAPI);
      eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
      this["\x16\x1b\x11"]();
      eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
   }
   function §\x16\x1b\x11§()
   {
      this["\x1b\x06\x12"] = new dofus.managers["\x1b\x06\x12"](this);
      this["\x18\x0b\b"] = new dofus.managers["\x18\x0b\b"](this,this.api);
      this.Inventory = new ank.utils.ExtendedArray();
      this.InventoryByItemPositions = new ank.utils.["\x17\x0e\r"]();
      this.InventoryShortcuts = new ank.utils.["\x17\x0e\r"]();
      if(this.modReportSessionData == undefined)
      {
         this.modReportSessionData = new dofus.datacenter..ModReportSessionData();
      }
      this.modReportSessionData.initialize();
      this["\x18\x10\x1d"] = new ank.utils.["\x17\x0e\r"]();
      this["\x18\x11\x0f"] = new ank.utils.ExtendedArray();
      this.Spells = new ank.utils.ExtendedArray();
      this.Emotes = new ank.utils.["\x17\x0e\r"]();
      this.ttgCollection = undefined;
      this.resetRapidStuffs();
      this.resetSpellsDecks();
      this["\x16\x1c\x0e"]();
      this["\x1c\x03\x01"] = false;
      this["\x1c\x05\n"] = false;
   }
   function §\x16\x1c\x0e§()
   {
      this["\x1d\x1d\x12"] = 0;
      this["\x1d\x19\x18"] = 1;
      this["\x1b\f\t"] = new Object();
   }
   function §\x1e\x15\x1c§()
   {
      return this["\x1e\x05\x1b"].mc;
   }
   function §\x1e\x18\x01§()
   {
      return this["\x1e\x05\x1b"];
   }
   function §\x11\x19§(§\x1a\x02\t§)
   {
      this["\x1e\x05\x1b"] = _loc2_;
      this["\x17\x07\x19"]({type:"spriteDataChanged",value:_loc2_});
      return this["\x1e\x18\x01"]();
   }
   function §\x1e\x1d\x07§()
   {
      return this.api.datacenter.Game["\x17\x03\x1a"] == this["\x1e\n\x06"];
   }
   function get questBook()
   {
      return this._oQuestBook;
   }
   function set questBook(oQuestBook)
   {
      this._oQuestBook = oQuestBook;
   }
   function §\x14\x19§(§\x1b\x17\x16§)
   {
      this["\x1e\n\x06"] = _loc2_;
      return this["\x1e\x1c\x04"]();
   }
   function §\x1e\x1c\x04§()
   {
      return this["\x1e\n\x06"];
   }
   function §\x19\x0b§(§\x1b\x17\x16§)
   {
      this["\x1e\x0b\x06"] = String(_loc2_);
      this["\x17\x07\x19"]({type:"nameChanged",value:_loc2_});
      return this["\x04\x1a"]();
   }
   function §\x04\x1a§()
   {
      return this["\x1e\x0b\x06"];
   }
   function §\x14\x06§(§\x1b\x17\x16§)
   {
      this["\x1d\x16\x16"] = Number(_loc2_);
      return this["\x1e\x1b\x07"]();
   }
   function §\x1e\x1b\x07§()
   {
      return this["\x1d\x16\x16"];
   }
   function §\x17\x04§(§\x1b\x17\x16§)
   {
      this["\x1d\x18\x10"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"levelChanged",value:_loc2_});
      return this["\x02\x07"]();
   }
   function §\x02\x07§()
   {
      return this["\x1d\x18\x10"];
   }
   function §\x1c\x10§(§\x1b\x17\x16§)
   {
      this["\x1d\x1c\x1a"] = Number(_loc2_);
      return this["\b\x1b"]();
   }
   function §\b\x1b§()
   {
      return this["\x1d\x1c\x1a"];
   }
   function §\x10\x1a§(§\x1b\x17\x16§)
   {
      this["\x1d\x14\x02"] = Number(_loc2_);
      return this["\x1e\x16\x04"]();
   }
   function §\x1e\x16\x04§()
   {
      return this["\x1d\x14\x02"];
   }
   function §\x10\x1b§(§\x1b\x17\x16§)
   {
      this["\x1d\x14\x03"] = Number(_loc2_);
      return this["\x1e\x16\x05"]();
   }
   function §\x1e\x16\x05§()
   {
      return this["\x1d\x14\x03"];
   }
   function §\x10\x1c§(§\x1b\x17\x16§)
   {
      this["\x1d\x14\x04"] = Number(_loc2_);
      return this["\x1e\x16\x06"]();
   }
   function §\x1e\x16\x06§()
   {
      return this["\x1d\x14\x04"];
   }
   function §\x17\x0f§(§\x1b\x17\x16§)
   {
      this._nLP = Number(_loc2_) <= 0 ? 0 : Number(_loc2_);
      this["\x17\x07\x19"]({type:"lpChanged",value:_loc2_,id:this.ID});
      return this["\x02\x1a"]();
   }
   function §\x02\x1a§()
   {
      return this._nLP;
   }
   function §\x17\x10§(§\x1b\x17\x16§)
   {
      this["\x1d\x18\x1d"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"lpMaxChanged",value:_loc2_});
      return this["\x02\x1b"]();
   }
   function §\x02\x1b§()
   {
      return this["\x1d\x18\x1d"];
   }
   function §\x0e\x16§(§\x1b\x17\x16§)
   {
      this["\x1d\x12\x1b"] = Number(_loc2_);
      this.data.AP = Number(_loc2_);
      this["\x17\x07\x19"]({type:"apChanged",value:_loc2_,id:this.ID});
      return this["\x1e\x12\x03"]();
   }
   function §\x1e\x12\x03§()
   {
      return this["\x1d\x12\x1b"];
   }
   function §\x19\x02§(§\x1b\x17\x16§)
   {
      this["\x1d\x1a\n"] = Number(_loc2_);
      this.data.MP = Number(_loc2_);
      this["\x17\x07\x19"]({type:"mpChanged",value:_loc2_,id:this.ID});
      return this["\x04\x10"]();
   }
   function §\x04\x10§()
   {
      return this["\x1d\x1a\n"];
   }
   function §\x16\x13§(§\x1b\x17\x16§)
   {
      this["\x1d\x17\x0e"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"kamaChanged",value:_loc2_});
      return this["\x01\x11"]();
   }
   function §\x01\x11§()
   {
      return this["\x1d\x17\x0e"];
   }
   function §\x16§(§\x1b\x17\x16§)
   {
      this["\x1e\x01\x15"] = Number(_loc2_);
      return this["\r\x19"]();
   }
   function §\r\x19§()
   {
      return this["\x1e\x01\x15"];
   }
   function §\x14§(§\x1b\x17\x16§)
   {
      this["\x1e\x01\x12"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"xpChanged",value:_loc2_});
      return this["\r\x17"]();
   }
   function §\r\x17§()
   {
      return this["\x1e\x01\x12"];
   }
   function §\x15§(§\x1b\x17\x16§)
   {
      this["\x1e\x01\x14"] = Number(_loc2_);
      return this["\r\x18"]();
   }
   function §\r\x18§()
   {
      return this["\x1e\x01\x14"];
   }
   function §\x14\x1d§(§\x1b\x17\x16§)
   {
      this["\x1d\x17\x05"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"initiativeChanged",value:_loc2_});
      return this["\x1e\x1c\x0b"]();
   }
   function §\x1e\x1c\x0b§()
   {
      return this["\x1d\x17\x05"];
   }
   function §\x12\f§(§\x1b\x17\x16§)
   {
      this["\x1d\x15\x12"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"discernmentChanged",value:_loc2_});
      return this["\x1e\x18\x17"]();
   }
   function §\x1e\x18\x17§()
   {
      return this["\x1d\x15\x12"];
   }
   function §\x13\x13§(§\x1b\x17\x16§)
   {
      this["\x1d\x16\n"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"forceChanged",value:_loc2_});
      return this["\x1e\x1a\x13"]();
   }
   function §\x1e\x1a\x13§()
   {
      return this["\x1d\x16\n"];
   }
   function §\x13\x18§(§\x1b\x17\x16§)
   {
      this["\x1d\x16\x0b"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"forceXtraChanged",value:_loc2_});
      return this["\x1e\x1a\x17"]();
   }
   function §\x1e\x1a\x17§()
   {
      return this["\x1d\x16\x0b"];
   }
   function §\b§(§\x1b\x17\x16§)
   {
      this["\x1e\x01\x06"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"vitalityChanged",value:_loc2_});
      return this["\r\x07"]();
   }
   function §\r\x07§()
   {
      return this["\x1e\x01\x06"];
   }
   function §\t§(§\x1b\x17\x16§)
   {
      this["\x1e\x01\x07"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"vitalityXtraChanged",value:_loc2_});
      return this["\r\b"]();
   }
   function §\r\b§()
   {
      return this["\x1e\x01\x07"];
   }
   function §\f§(§\x1b\x17\x16§)
   {
      this["\x1e\x01\f"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"wisdomChanged",value:_loc2_});
      return this["\r\x0f"]();
   }
   function §\r\x0f§()
   {
      return this["\x1e\x01\f"];
   }
   function §\r§(§\x1b\x17\x16§)
   {
      this["\x1e\x01\r"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"wisdomXtraChanged",value:_loc2_});
      return this["\r\x10"]();
   }
   function §\r\x10§()
   {
      return this["\x1e\x01\r"];
   }
   function §\x10\x0b§(§\x1b\x17\x16§)
   {
      this["\x1d\x13\x16"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"chanceChanged",value:_loc2_});
      return this["\x1e\x15\f"]();
   }
   function §\x1e\x15\f§()
   {
      return this["\x1d\x13\x16"];
   }
   function §\x10\f§(§\x1b\x17\x16§)
   {
      this["\x1d\x13\x17"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"chanceXtraChanged",value:_loc2_});
      return this["\x1e\x15\r"]();
   }
   function §\x1e\x15\r§()
   {
      return this["\x1d\x13\x17"];
   }
   function §\x0e\t§(§\x1b\x17\x16§)
   {
      this["\x1b\x1d\x04"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"agilityChanged",value:_loc2_});
      return this["\x1e\x11\x12"]();
   }
   function §\x1e\x11\x12§()
   {
      return this["\x1b\x1d\x04"];
   }
   function §\x0e\x0b§(§\x1b\x17\x16§)
   {
      this["\x1d\x12\x16"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"agilityXtraChanged",value:_loc2_});
      return this["\x1e\x11\x14"]();
   }
   function §\x1e\x11\x14§()
   {
      return this["\x1d\x12\x16"];
   }
   function §\x0e\n§(§\x1b\x17\x16§)
   {
      this["\x1d\x12\x15"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"agilityTotalChanged",value:_loc2_});
      return this["\x1e\x11\x13"]();
   }
   function §\x1e\x11\x13§()
   {
      return this["\x1d\x12\x15"];
   }
   function §\x15\x03§(§\x1b\x17\x16§)
   {
      this["\x1c\x11\n"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"intelligenceChanged",value:_loc2_});
      return this["\x1e\x1c\x0e"]();
   }
   function §\x1e\x1c\x0e§()
   {
      return this["\x1c\x11\n"];
   }
   function §\x15\x04§(§\x1b\x17\x16§)
   {
      this["\x1d\x17\x06"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"intelligenceXtraChanged",value:_loc2_});
      return this["\x1e\x1c\x0f"]();
   }
   function §\x1e\x1c\x0f§()
   {
      return this["\x1d\x17\x06"];
   }
   function §\x0f\x11§(§\x1b\x17\x16§)
   {
      this["\x1d\x13\t"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"bonusPointsChanged",value:_loc2_});
      return this["\x1e\x12\x1d"]();
   }
   function §\x1e\x12\x1d§()
   {
      return this["\x1d\x13\t"];
   }
   function §\x0f\x12§(§\x1b\x17\x16§)
   {
      this["\x1d\x13\n"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"bonusSpellsChanged",value:_loc2_});
      return this["\x1e\x13\x01"]();
   }
   function §\x1e\x13\x01§()
   {
      return this["\x1d\x13\n"];
   }
   function §\x1b\x04§(§\x1b\x17\x16§)
   {
      this["\x1d\x1b\x15"] = Number(_loc2_);
      return this["\x07\x06"]();
   }
   function §\x07\x06§()
   {
      return this["\x1d\x1b\x15"];
   }
   function §\x13\x04§(§\x1b\x17\x16§)
   {
      this["\x1d\x15\x1d"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"energyChanged",value:_loc2_});
      return this["\x1e\x19\x19"]();
   }
   function §\x1e\x19\x19§()
   {
      return this["\x1d\x15\x1d"];
   }
   function §\x13\x05§(§\x1b\x17\x16§)
   {
      this["\x1d\x16\x01"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"energyMaxChanged",value:_loc2_});
      return this["\x1e\x19\x1a"]();
   }
   function §\x1e\x19\x1a§()
   {
      return this["\x1d\x16\x01"];
   }
   function §\x1d\x1a§(§\x1b\x17\x16§)
   {
      this["\x1d\x1d\x12"] = Number(_loc2_);
      return this["\n\x11"]();
   }
   function §\n\x11§()
   {
      return this["\x1d\x1d\x12"];
   }
   function §\x18\x05§(§\x1b\x17\x16§)
   {
      this["\x1d\x19\x18"] = Number(_loc2_);
      return this["\x03\x13"]();
   }
   function §\x03\x13§()
   {
      return this["\x1d\x19\x18"];
   }
   function §\x11\x0f§(§\x1b\x17\x16§)
   {
      this["\x1d\x14\t"] = Number(_loc2_);
      return this["\x1e\x17\n"]();
   }
   function §\x1e\x17\n§()
   {
      return this["\x1d\x14\t"];
   }
   function §\r\f§()
   {
      return this["\x1e\x06\t"];
   }
   function §\x13\x1b§(§\x1b\x17\x16§)
   {
      this["\x1b\x1c\x1c"] = _loc2_;
      this["\x17\x07\x19"]({type:"fullStatsChanged",value:_loc2_});
      return this["\x1e\x1a\x1a"]();
   }
   function §\x1e\x1a\x1a§()
   {
      return this["\x1b\x1c\x1c"];
   }
   function §\x15\x0f§(bDead)
   {
      this._bIsDead = bDead;
      return this["\x1e\x1d\t"]();
   }
   function §\x1e\x1d\t§()
   {
      return this._bIsDead;
   }
   function §\x11\x12§(§\x1b\x17\x16§)
   {
      if(_loc2_ == undefined)
      {
         delete this["\x1d\x14\x15"];
      }
      else
      {
         this["\x1d\x14\x15"] = Number(_loc2_);
      }
      this["\x17\x07\x19"]({type:"currentJobChanged",value:_loc2_});
      return this["\x1e\x17\x0f"]();
   }
   function §\x1e\x17\x0f§()
   {
      return this["\x1d\x14\x15"];
   }
   function §\x1e\x17\x0e§()
   {
      var _loc2_ = this["\x18\x11\x0f"].findFirstItem("id",this["\x1d\x14\x15"]);
      return _loc2_.item;
   }
   function §\x11\x16§(§\x1b\x17\x16§)
   {
      this["\x1d\x15\b"] = _loc2_;
      this._nCurrentOverWeight = this["\x1d\x15\b"] - this["\x1d\x19\x1b"];
      this["\x17\x07\x19"]({type:"currentWeightChanged",value:_loc2_});
      return this["\x1e\x17\x19"]();
   }
   function §\x1e\x17\x19§()
   {
      return this["\x1d\x15\b"];
   }
   function get currentOverWeight()
   {
      return this._nCurrentOverWeight;
   }
   function §\x18\b§(§\x1b\x17\x16§)
   {
      this["\x1d\x19\x1b"] = _loc2_;
      this["\x17\x07\x19"]({type:"maxWeightChanged",value:_loc2_});
      return this["\x03\x14"]();
   }
   function §\x03\x14§()
   {
      return this["\x1d\x19\x1b"];
   }
   function set maxOverWeight(§\x1b\x17\x16§)
   {
      this._nMaxOverWeight = _loc2_;
      this["\x17\x07\x19"]({type:"maxOverWeightChanged",value:_loc2_});
   }
   function get maxOverWeight()
   {
      return this._nMaxOverWeight;
   }
   function §\x1e\x1e\x06§()
   {
      return this.data instanceof dofus.datacenter.["\x19\x02\x13"];
   }
   function §\x1b\x14§(§\x1b\x17\x16§)
   {
      this["\x1d\x1c\x03"] = _loc2_;
      return this["\x07\x1b"]();
   }
   function §\x07\x1b§()
   {
      return this["\x1d\x1c\x03"];
   }
   function §\x1d\x0b§(§\x1b\x17\x16§)
   {
      this["\x1e\x05\x12"] = _loc2_;
      this["\x17\x07\x19"]({type:"specializationChanged",value:_loc2_});
      return this["\t\x14"]();
   }
   function §\t\x14§()
   {
      return this["\x1e\x05\x12"];
   }
   function §\x0e\x0f§(§\x1b\x17\x16§)
   {
      this["\x1e\x02\x07"] = _loc2_;
      this["\x17\x07\x19"]({type:"alignmentChanged",alignment:_loc2_});
      return this["\x1e\x11\x19"]();
   }
   function §\x1e\x11\x19§()
   {
      return this["\x1e\x02\x07"];
   }
   function §\x13\n§(§\x1b\x17\x16§)
   {
      this["\x1e\x03\x11"] = _loc2_;
      return this["\x1e\x1a\x05"]();
   }
   function §\x1e\x1a\x05§()
   {
      return this["\x1e\x03\x11"];
   }
   function §\x1b\x05§(§\x1b\x17\x16§)
   {
      this["\x1e\x05\x04"] = _loc2_;
      this["\x17\x07\x19"]({type:"rankChanged",rank:_loc2_});
      return this["\x07\b"]();
   }
   function §\x07\b§()
   {
      return this["\x1e\x05\x04"];
   }
   function §\x18\x19§(§\x1b\x17\x16§)
   {
      this["\x1e\x04\x11"] = _loc2_;
      this["\x17\x07\x19"]({type:"mountChanged",mount:_loc2_});
      return this["\x04\t"]();
   }
   function §\x04\t§()
   {
      return this["\x1e\x04\x11"];
   }
   function §\x1e\x1e\x10§()
   {
      return this["\x1c\x06\x01"];
   }
   function §\x16\x02§(§\x1b\x17\x16§)
   {
      this["\x1c\x06\x01"] = _loc2_;
      return this["\x1e\x1e\x10"]();
   }
   function §\x18\x1c§(§\x1b\x17\x16§)
   {
      this["\x1d\x1a\b"] = _loc2_;
      this["\x17\x07\x19"]({type:"mountXPPercentChanged",value:_loc2_});
      return this["\x04\f"]();
   }
   function §\x04\f§()
   {
      return this["\x1d\x1a\b"];
   }
   function §\x11\x0e§(§\x1b\x17\x16§)
   {
      this["\x1c\x03\x01"] = _loc2_;
      this["\x17\x07\x19"]({type:"craftPublicModeChanged",value:_loc2_});
      return this["\x1e\x17\x03"]();
   }
   function §\x1e\x17\x03§()
   {
      return this["\x1c\x03\x01"];
   }
   function §\x15\x01§(§\x1b\x17\x16§)
   {
      this["\x1c\x05\n"] = _loc2_;
      this["\x17\x07\x19"]({type:"inPartyChanged",inParty:_loc2_});
      return this["\x1e\x1c\f"]();
   }
   function §\x1e\x1c\f§()
   {
      return this["\x1c\x05\n"];
   }
   function set huntMatchmakingStatus(§\x1b\x17\x16§)
   {
      this._huntMatchmakingStatus = _loc2_;
      this["\x17\x07\x19"]({type:"huntMatchmakingStatusChanged",status:_loc2_});
   }
   function get huntMatchmakingStatus()
   {
      return this._huntMatchmakingStatus;
   }
   function §\x1e\x13\x12§()
   {
      return (this["\x1d\x1c\x03"] & 1) != 1;
   }
   function §\x1e\x14\x01§()
   {
      return (this["\x1d\x1c\x03"] & 2) != 2;
   }
   function §\x1e\x14\x06§()
   {
      return (this["\x1d\x1c\x03"] & 4) != 4;
   }
   function §\x1e\x13\x13§()
   {
      return (this["\x1d\x1c\x03"] & 8) == 8;
   }
   function §\x1e\x14\x02§()
   {
      return (this["\x1d\x1c\x03"] & 16) != 16;
   }
   function §\x1e\x13\x1b§()
   {
      return (this["\x1d\x1c\x03"] & 32) != 32;
   }
   function §\x1e\x14\x1a§()
   {
      return (this["\x1d\x1c\x03"] & 64) != 64;
   }
   function §\x1e\x14\x15§()
   {
      return (this["\x1d\x1c\x03"] & 128) == 128;
   }
   function §\x1e\x14\x18§()
   {
      return (this["\x1d\x1c\x03"] & 256) != 256;
   }
   function §\x1e\x14\x16§()
   {
      return (this["\x1d\x1c\x03"] & 512) == 512;
   }
   function §\x1e\x13\x14§()
   {
      return (this["\x1d\x1c\x03"] & 4096) == 4096;
   }
   function §\x1e\x14\x10§()
   {
      return (this["\x1d\x1c\x03"] & 8192) == 8192;
   }
   function §\x1e\x13\x15§()
   {
      return (this["\x1d\x1c\x03"] & 16384) == 16384;
   }
   function §\x1e\x14\x14§()
   {
      return (this["\x1d\x1c\x03"] & 32768) == 32768;
   }
   function getSpellsDeck(§\x19\b\x0b§)
   {
      return dofus.datacenter..spellscollection.SpellsDeck(this.SpellsDecks.getItemAt(_loc2_));
   }
   function putSpellsDeck(§\x19\b\x0b§, oSpellsDeck)
   {
      this.SpellsDecks["\x15\x1d\x13"](_loc2_,oSpellsDeck);
      this["\x17\x07\x19"]({type:"spellsDeckPut",value:oSpellsDeck});
   }
   function resetSpellsDecks()
   {
      this.SpellsDecks = new ank.utils.["\x17\x0e\r"]();
      var _loc2_ = 0;
      while(_loc2_ < dofus.datacenter.["\x18\x17\t"].MAX_SPELLS_DECKS_COUNT)
      {
         var _loc3_ = dofus.datacenter..spellscollection.SpellsDeck.createEmptySpellsDeck(_loc2_);
         this.SpellsDecks["\x15\x1d\x13"](_loc2_,_loc3_);
         _loc2_ = _loc2_ + 1;
      }
   }
   function getRapidStuff(§\x19\b\x0b§)
   {
      return dofus.datacenter..RapidStuff(this.RapidStuffs.getItemAt(_loc2_));
   }
   function putRapidStuff(§\x19\b\x0b§, oRapidStuff)
   {
      this.RapidStuffs["\x15\x1d\x13"](_loc2_,oRapidStuff);
      this["\x17\x07\x19"]({type:"rapidStuffPut",value:oRapidStuff});
   }
   function resetRapidStuffs()
   {
      this.RapidStuffs = new ank.utils.["\x17\x0e\r"]();
      var _loc2_ = 0;
      while(_loc2_ < dofus.datacenter.["\x18\x17\t"].MAX_RAPID_STUFFS_COUNT)
      {
         var _loc3_ = dofus.datacenter..RapidStuff.createEmptyRapidStuff(_loc2_);
         this.RapidStuffs["\x15\x1d\x13"](_loc2_,_loc3_);
         _loc2_ = _loc2_ + 1;
      }
   }
   function isHuntMatchmakingActive()
   {
      return this._huntMatchmakingStatus != undefined && this._huntMatchmakingStatus.isActive;
   }
   function reset()
   {
      this["\x17\x03\x1d"] = null;
   }
   function §\x16\x16\x13§(§\x16\x02\x06§, §\x16\x0e\x1c§)
   {
      var _loc4_ = !_loc3_ ? this.maxWeight - this.currentWeight : this.mount.podsMax - this.mount.pods;
      var _loc5_ = 0;
      var _loc6_ = 0;
      while(_loc6_ < _loc2_.length)
      {
         var _loc7_ = _loc2_[_loc6_];
         _loc5_ += _loc7_.weight * _loc7_.Quantity;
         _loc6_ = _loc6_ + 1;
      }
      return _loc5_ <= _loc4_;
   }
   function §\x17\x1d\x07§(§\x1a\x01\x18§, §\x16\x0e\x1c§)
   {
      var _loc4_ = !_loc3_ ? this.maxWeight - this.currentWeight : this.mount.podsMax - this.mount.pods;
      var _loc5_ = _loc2_.weight;
      var _loc6_ = Math.floor(_loc4_ / _loc5_);
      if(_loc6_ > _loc2_.Quantity)
      {
         _loc6_ = _loc2_.Quantity;
      }
      return _loc6_;
   }
   function updateLP(§\x17\t\x01§)
   {
      _loc2_ = Number(_loc2_);
      if(this.LP + _loc2_ > this.LPmax)
      {
         _loc2_ = this.LPmax - this.LP;
      }
      this.LP += _loc2_;
   }
   function §\x18\x05\t§(§\x1b\x18\x14§)
   {
      return this.data.AP >= _loc2_;
   }
   function §\x15\x1d\x12§(§\x19\x13\x07§)
   {
      if(_loc2_.position == 1)
      {
         this["\x1a\x1b\x05"](_loc2_);
      }
      this.Inventory["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
      this.Inventory.push(_loc2_);
      if(_loc2_.isEquiped)
      {
         this.InventoryByItemPositions["\x15\x1d\x13"](_loc2_.position,_loc2_);
      }
   }
   function checkCanMoveItem()
   {
      var _loc2_ = this.api.datacenter.Game.isRunning;
      var _loc3_ = this.api.datacenter.Exchange != undefined;
      var _loc4_ = this.api.datacenter.["\x18\x18\x0e"].bCanEquipItem;
      var _loc5_ = this.api.datacenter.["\x18\x18\x0e"].bCanUseItem;
      if(_loc2_ || (_loc3_ || (!_loc4_ || !_loc5_)))
      {
         this.api.ui.loadUIComponent("AskOk","AskOkInventory",{title:this.api.lang.getText("INFORMATIONS"),text:this.api.lang.getText("CANT_MOVE_ITEM")});
      }
      return !(_loc2_ || (_loc3_ || (!_loc4_ || !_loc5_)));
   }
   function §\x1b\x15\x05§(§\x19\x17\x06§)
   {
      var _loc3_ = this.Inventory.findFirstItem("ID",_loc2_.ID);
      var _loc4_ = _loc3_.item;
      if(_loc4_.ID == _loc2_.ID && _loc4_["\x18\x19\x1c"] != _loc2_["\x18\x19\x1c"])
      {
         if(!_loc4_["\x18\x0e\x11"] && _loc2_["\x18\x0e\x11"])
         {
            this.api.kernel.SpeakingItemsManager["\x1b\x11\x10"](dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_ASSOCIATE);
         }
         if(_loc4_["\x18\x0e\x11"] && _loc2_["\x18\x0e\x11"])
         {
            this.api.kernel.SpeakingItemsManager["\x1b\x11\x10"](dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_LEVEL_UP);
         }
      }
      if(_loc4_ != undefined && _loc4_.isEquiped)
      {
         this.InventoryByItemPositions["\x1a\f\n"](_loc4_.position);
      }
      this.Inventory["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
      this.Inventory["\x1b\x15\x05"](_loc3_.index,_loc2_);
      if(_loc2_.isEquiped)
      {
         this.InventoryByItemPositions["\x15\x1d\x13"](_loc2_.position,_loc2_);
      }
   }
   function §\x1b\x15\b§(§\x19\b\x1a§, nQuantity)
   {
      var _loc4_ = this.Inventory.findFirstItem("ID",_loc2_);
      var _loc5_ = _loc4_.item;
      _loc5_.Quantity = _loc3_;
      this.Inventory["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
      this.Inventory["\x1b\x15\x05"](_loc4_.index,_loc5_);
   }
   function §\x1b\x15\x07§(§\x19\b\x1a§, §\x19\f\r§)
   {
      var _loc4_ = this.Inventory.findFirstItem("ID",_loc2_);
      var _loc5_ = _loc4_.item;
      if(_loc5_.position == 1)
      {
         this["\x1a\x1b\x05"]();
      }
      else if(_loc3_ == 1)
      {
         this["\x1a\x1b\x05"](_loc5_);
      }
      if(_loc5_.isEquiped)
      {
         this.InventoryByItemPositions["\x1a\f\n"](_loc5_.position);
      }
      _loc5_.position = _loc3_;
      this.Inventory["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
      this.Inventory["\x1a\f\x0b"](_loc4_.index,1);
      this.Inventory.push(_loc5_);
      if(_loc5_.isEquiped)
      {
         this.InventoryByItemPositions["\x15\x1d\x13"](_loc5_.position,_loc5_);
      }
   }
   function getInventoryItemQuantityByUnicID(§\x19\x10\n§)
   {
      var _loc3_ = dofus.datacenter.["\x18\x10\x15"](this.Inventory.findFirstItem("unicID",_loc2_).item);
      if(_loc3_ == undefined)
      {
         return 0;
      }
      return _loc3_.Quantity;
   }
   function dropItem(§\x19\b\x1a§)
   {
      var _loc3_ = this.Inventory.findFirstItem("ID",_loc2_);
      var _loc4_ = _loc3_.item;
      if(_loc4_ == undefined)
      {
         return undefined;
      }
      _loc4_.isRemovedFromInventory = true;
      if(_loc4_.position == 1)
      {
         this["\x1a\x1b\x05"]();
      }
      this.Inventory["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
      this.Inventory["\x1a\f\x0b"](_loc3_.index,1);
      if(_loc4_.isEquiped)
      {
         this.InventoryByItemPositions["\x1a\f\n"](_loc4_.position);
      }
   }
   function getOwnedSpell(§\x19\x0e\x16§)
   {
      var _loc3_ = this.Spells.findFirstItem("ID",_loc2_);
      if(_loc3_.index != -1)
      {
         var _loc4_ = _loc3_.item;
         return _loc4_;
      }
      return undefined;
   }
   function getOwnedSpellLevel(§\x19\x0e\x16§)
   {
      var _loc3_ = this.Spells.findFirstItem("ID",_loc2_);
      if(_loc3_.index != -1)
      {
         var _loc4_ = _loc3_.item;
         return _loc4_.level;
      }
      return -1;
   }
   function getSpellIDFromLevelID(nLevelID)
   {
      if(this.spellIDByLevelID == undefined)
      {
         this.initSpellsDictionnary();
      }
      return this.spellIDByLevelID[nLevelID];
   }
   function initSpellsDictionnary()
   {
      this.spellIDByLevelID = new Object();
      var _loc2_ = this.api.lang["\x18\x01\x06"]();
      for(var i in _loc2_)
      {
         var _loc3_ = _loc2_[i];
         var _loc4_ = 1;
         while(_loc4_ <= 6)
         {
            var _loc5_ = _loc3_["l" + _loc4_];
            if(_loc5_ != undefined)
            {
               var _loc6_ = _loc5_[20];
               this.spellIDByLevelID[_loc6_] = i;
            }
            _loc4_ = _loc4_ + 1;
         }
      }
   }
   function isSpellOwned(§\x19\x0e\x16§)
   {
      return this.getOwnedSpellLevel(_loc2_) > -1;
   }
   function §\x1b\x16\x05§(§\x1a\x02\x06§)
   {
      var _loc3_ = this.Spells.findFirstItem("ID",_loc2_.ID);
      if(_loc3_.index != -1)
      {
         _loc2_.position = _loc3_.item.position;
         this.Spells["\x1b\x15\x05"](_loc3_.index,_loc2_);
      }
      else
      {
         this.Spells.push(_loc2_);
      }
   }
   function §\x1b\x16\x06§(§\x1a\x02\x06§)
   {
      var _loc3_ = this.Spells.findFirstItem("position",_loc2_.position);
      var _loc4_ = this.Spells.findFirstItem("ID",_loc2_.ID);
      if(_loc3_.index != -1)
      {
         _loc3_.item.position = undefined;
         this.Spells["\x1b\x15\x05"](_loc3_.index,_loc2_);
      }
      if(_loc4_.index != -1)
      {
         this.Spells["\x1b\x15\x05"](_loc3_.index,_loc2_);
      }
      else
      {
         this.Spells.push(_loc2_);
      }
   }
   function §\x1a\f\x18§(§\x19\b\x0b§)
   {
      var _loc3_ = this.Spells.findFirstItem("ID",_loc2_);
      if(_loc3_.index != -1)
      {
         this.Spells["\x1a\f\x0b"](_loc3_.index,1);
      }
   }
   function §\x16\x15\x19§(nCharacID)
   {
      if(this.api.datacenter.Game.isRunning)
      {
         return false;
      }
      var _loc3_ = this["\x17\x14\x16"](_loc2_).cost;
      if(this["\x1d\x13\t"] >= _loc3_)
      {
         return true;
      }
      return false;
   }
   function getCharacValueByID(nCharacID)
   {
      var _loc3_ = 0;
      switch(_loc2_)
      {
         case 10:
            _loc3_ = this["\x1d\x16\n"];
            break;
         case 11:
            _loc3_ = this["\x1e\x01\x06"];
            break;
         case 12:
            _loc3_ = this["\x1e\x01\f"];
            break;
         case 13:
            _loc3_ = this["\x1d\x13\x16"];
            break;
         case 14:
            _loc3_ = this["\x1b\x1d\x04"];
            break;
         case 15:
            _loc3_ = this["\x1c\x11\n"];
      }
      return _loc3_;
   }
   function §\x17\x14\x16§(nCharacID)
   {
      var _loc3_ = this.api.lang.getClassText(this["\x1d\x16\x16"])["b" + _loc2_];
      var _loc4_ = 1;
      var _loc5_ = 1;
      var _loc6_ = this.getCharacValueByID(_loc2_);
      var _loc7_ = undefined;
      var _loc9_ = 0;
      while(_loc9_ < _loc3_.length)
      {
         var _loc8_ = _loc3_[_loc9_][0];
         if(_loc6_ < _loc8_)
         {
            break;
         }
         _loc4_ = _loc3_[_loc9_][1];
         _loc5_ = _loc3_[_loc9_][2] != undefined ? _loc3_[_loc9_][2] : 1;
         _loc9_ = _loc9_ + 1;
      }
      var _loc10_ = _loc9_ == _loc3_.length;
      if(_loc10_)
      {
         _loc7_ = Math.floor(this["\x1d\x13\t"] / _loc4_);
      }
      else
      {
         _loc7_ = 0;
         var _loc11_ = _loc6_;
         var _loc12_ = this["\x1d\x13\t"];
         while(_loc11_ < _loc8_ && _loc12_ >= _loc4_)
         {
            _loc11_ += _loc5_;
            _loc12_ -= _loc4_;
            _loc7_ = _loc7_ + 1;
         }
      }
      return {cost:_loc4_,count:_loc5_,possibleCount:_loc7_};
   }
   function getWeightText()
   {
      var _loc2_ = new ank.utils.ExtendedString(this["\x1d\x15\b"])["\x15\x1e\x01"](" ",3);
      var _loc3_ = new ank.utils.ExtendedString(this["\x1d\x19\x1b"])["\x15\x1e\x01"](" ",3);
      var _loc4_ = new ank.utils.ExtendedString(this._nCurrentOverWeight)["\x15\x1e\x01"](" ",3);
      var _loc5_ = new ank.utils.ExtendedString(this._nMaxOverWeight)["\x15\x1e\x01"](" ",3);
      var _loc6_ = this.api.lang.getText("PLAYER_WEIGHT",[_loc2_,_loc3_]);
      if(this._nCurrentOverWeight > 0)
      {
         _loc6_ += "\n" + this.api.lang.getText("OVERWEIGHT") + " : " + this.api.lang.getText("PLAYER_WEIGHT",[_loc4_,_loc5_]);
      }
      return _loc6_;
   }
   function §\x16\x1c\x02§()
   {
      this.Emotes = new ank.utils.["\x17\x0e\r"]();
   }
   function §\x15\x1d\t§(§\x19\x06\x13§)
   {
      this.Emotes["\x15\x1d\x13"](_loc2_,true);
   }
   function §\x18\x05\b§(§\x19\x06\x13§)
   {
      return this.Emotes.getItemAt(_loc2_) == true;
   }
   function §\x1b\x14\x0f§()
   {
      this.Spells[0] = new dofus.datacenter.["\x16\x1c\x1d"](this["\x1e\x06\t"],this["\x1d\x16\x16"]);
   }
   function §\x1a\x1b\x05§(§\x19\x13\x07§)
   {
      this["\x1e\x06\t"] = _loc2_;
      this["\x1b\x14\x0f"]();
   }
}
