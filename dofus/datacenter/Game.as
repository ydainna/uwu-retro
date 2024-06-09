class dofus.§\x17\x04\x19§.Game extends Object
{
   static var §\x18\x0b\x19§ = 1;
   static var §\x18\x0b\x1b§ = 2;
   static var §\x18\x0b\x17§ = 3;
   static var §\x18\x0b\x1a§ = 4;
   static var §\x18\x0b\x1c§ = 5;
   static var §\x18\x0b\x18§ = 6;
   static var §\x1c\b\x14§ = false;
   static var _bBlockSpectator = false;
   static var _bNeedHelp = false;
   static var _bLockFight = false;
   static var §\x1c\x06\x0e§ = false;
   static var _aResults = new ank.utils.ExtendedArray();
   var §\x1c\x07\x17§ = false;
   var §\x1c\x04\x07§ = true;
   var §\x19\x10\x05§ = 0;
   static var §\x1b\n\x07§ = 0;
   static var §\x1b\n\x05§ = 1;
   static var §\x1b\t\x1c§ = 2;
   function Game()
   {
      super();
      this.initialize();
   }
   function §\x1e\x1e\x01§()
   {
      return dofus.datacenter..Game["\x1c\x06\x0e"];
   }
   function §\x15\x1c§(§\x16\x0e\x12§)
   {
      dofus.datacenter..Game["\x1c\x06\x0e"] = _loc2_;
      return this["\x1e\x1e\x01"]();
   }
   function §\x1e\x1d\x0f§()
   {
      return this["\x1c\x04\x07"];
   }
   function §\x15\x12§(§\x16\x0b\x17§)
   {
      this["\x1c\x04\x07"] = _loc2_;
      return this["\x1e\x1d\x0f"]();
   }
   function get passiveTurn()
   {
      return this.currentTableTurn == 0;
   }
   function §\x1e\x1e\x1a§()
   {
      return dofus.datacenter..Game["\x1c\b\x14"];
   }
   function §\x16\b§(§\x16\x13\x07§)
   {
      dofus.datacenter..Game["\x1c\b\x14"] = _loc2_;
      return this["\x1e\x1e\x1a"]();
   }
   function get isSpectatorBlocked()
   {
      return dofus.datacenter..Game._bBlockSpectator;
   }
   function set isSpectatorBlocked(bBlockSpectator)
   {
      dofus.datacenter..Game._bBlockSpectator = bBlockSpectator;
   }
   function get isNeedingHelp()
   {
      return dofus.datacenter..Game._bNeedHelp;
   }
   function set isNeedingHelp(bNeedHelp)
   {
      dofus.datacenter..Game._bNeedHelp = bNeedHelp;
   }
   function get isFightBlocked()
   {
      return dofus.datacenter..Game._bLockFight;
   }
   function set isFightBlocked(bLockFight)
   {
      dofus.datacenter..Game._bLockFight = bLockFight;
   }
   function §\x1a\f§(§\x19\f\x07§)
   {
      this["\x1d\x1b\x02"] = Number(_loc2_);
      return this["\x06\f"]();
   }
   function §\x06\f§()
   {
      return this["\x1d\x1b\x02"];
   }
   function §\x11\x15§(§\x19\x05\x12§)
   {
      this["\x1d\x15\x06"] = Number(_loc2_);
      return this["\x1e\x17\x18"]();
   }
   function §\x1e\x17\x18§()
   {
      return this["\x1d\x15\x06"];
   }
   function §\x11\x13§(§\x1a\x11\x19§)
   {
      this["\x1e\b\x16"] = _loc2_;
      return this["\x1e\x17\x14"]();
   }
   function §\x1e\x17\x14§()
   {
      return this["\x1e\b\x16"];
   }
   function §\x17\x01§(§\x1b\x02\x16§)
   {
      this["\x1e\n\x16"] = _loc2_;
      return this["\x02\x01"]();
   }
   function §\x02\x01§()
   {
      return this["\x1e\n\x16"];
   }
   function §\x1d\x14§(§\x19\x0e\x1d§)
   {
      this["\x1d\x1d\r"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"stateChanged",value:this["\x1d\x1d\r"]});
      return this["\n\x06"]();
   }
   function §\n\x06§()
   {
      return this["\x1d\x1d\r"];
   }
   function §\x13\r§(§\x19\x07\x12§)
   {
      this["\x1d\x16\x07"] = _loc2_;
      return this["\x1e\x1a\x0b"]();
   }
   function §\x1e\x1a\x0b§()
   {
      return this["\x1d\x16\x07"];
   }
   function §\x16\x05§(§\x16\x12\x19§)
   {
      this["\x1c\b\x12"] = _loc2_;
      return this["\x1e\x1e\x16"]();
   }
   function §\x1e\x1e\x16§()
   {
      return this["\x1c\b\x12"];
   }
   function §\x1e\x12§(§\x16\x07\x03§)
   {
      this["\x1c\x01\r"] = _loc2_;
      return this["\f\f"]();
   }
   function §\f\f§()
   {
      return this["\x1c\x01\r"];
   }
   function §\x1b\x15§(§\x1a\x01\x19§)
   {
      this["\x1e\x05\x07"] = _loc2_;
      return this["\x07\x1c"]();
   }
   function §\x07\x1c§()
   {
      return this["\x1e\x05\x07"];
   }
   function get resultsArray()
   {
      return dofus.datacenter..Game._aResults;
   }
   function storeFightResults(§\x1a\x01\x19§)
   {
      if(dofus.datacenter..Game._aResults.length >= this.api.lang.getConfigText("MAX_FIGHT_HISTORY"))
      {
         dofus.datacenter..Game._aResults.pop();
         dofus.datacenter..Game._aResults.unshift(_loc2_);
      }
      else
      {
         dofus.datacenter..Game._aResults.unshift(_loc2_);
      }
   }
   function §\x16\x03§(§\x16\x11\x1a§)
   {
      this["\x1c\x07\x17"] = _loc2_;
      return this["\x1e\x1e\x11"]();
   }
   function §\x1e\x1e\x11§()
   {
      return this["\x1c\x07\x17"];
   }
   function §\x1e\x1d\r§()
   {
      return this["\x1d\x1d\r"] != undefined && this["\x1d\x1d\r"] > 1;
   }
   function §\x1e\x1c\x11§()
   {
      return this["\x1d\x17\x07"];
   }
   function initialize()
   {
      mx.["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
      this.api = _global.api;
      this["\x1c\x07\x17"] = false;
      this["\x1d\x1b\x02"] = 0;
      this["\x1e\b\x16"] = null;
      this["\x1e\n\x16"] = null;
      this["\x1d\x1d\r"] = 0;
      this["\x1c\x01\r"] = new Array();
      this["\x1e\x05\x07"] = new Object();
      this["\x1d\x17\x07"] = 0;
      this["\x1d\x15\x06"] = 0;
   }
   function §\x1a\x17\t§(sType)
   {
      switch(_loc2_)
      {
         case "move":
            this["\x1d\x17\x07"] = dofus.datacenter..Game["\x18\x0b\x19"];
            break;
         case "spell":
            this["\x1d\x17\x07"] = dofus.datacenter..Game["\x18\x0b\x1b"];
            break;
         case "cc":
            this["\x1d\x17\x07"] = dofus.datacenter..Game["\x18\x0b\x17"];
            break;
         case "place":
            this["\x1d\x17\x07"] = dofus.datacenter..Game["\x18\x0b\x1a"];
            break;
         case "target":
            this["\x1d\x17\x07"] = dofus.datacenter..Game["\x18\x0b\x1c"];
            break;
         case "flag":
            this["\x1d\x17\x07"] = dofus.datacenter..Game["\x18\x0b\x18"];
      }
   }
}
