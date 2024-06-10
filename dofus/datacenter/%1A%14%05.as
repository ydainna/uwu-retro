class dofus.datacenter.§\x1a\x14\x05§
{
   static var SERVER_OFFLINE = 0;
   static var SERVER_ONLINE = 1;
   static var SERVER_STARTING = 2;
   static var §\x1a\x14\x14§ = 0;
   static var §\x1a\x14\x15§ = 1;
   static var §\x1a\x14\x16§ = 2;
   static var SERVER_RULES_TEMPORIS = 3;
   static var §\x1a\x14\x0e§ = 0;
   static var SERVER_HARDCORE = 1;
   static var §\x1a\x14\r§ = 3;
   static var §\x1a\x14\x13§ = 4;
   static var §\x1a\x14\x12§ = 5;
   static var SERVER_TEMPORIS = 6;
   static var §\x1a\x14\x0f§ = 2;
   function §\x1a\x14\x05§(§\x19\b\x0b§, §\x19\x0e\x1d§, §\x19\x05\x0b§, §\x16\t\x1b§)
   {
      this.initialize(_loc2_,_loc3_,_loc4_,_loc5_);
      this["\x1d\x13\x1a"] = 0;
   }
   function §\x14\x1a§(§\x19\b\x0b§)
   {
      this["\x1d\x17\x01"] = _loc2_;
      return this["\x1e\x1c\x05"]();
   }
   function §\x1e\x1c\x05§()
   {
      return this["\x1d\x17\x01"];
   }
   function §\x10\x11§(§\x19\x05\f§)
   {
      this["\x1d\x13\x1a"] = _loc2_;
      return this["\x1e\x15\x11"]();
   }
   function §\x1e\x15\x11§()
   {
      return this["\x1d\x13\x1a"];
   }
   function §\x1d\x14§(§\x19\x0e\x1d§)
   {
      this["\x1d\x1d\r"] = _loc2_;
      return this["\n\x06"]();
   }
   function §\n\x06§()
   {
      return this["\x1d\x1d\r"];
   }
   function §\n\b§()
   {
      switch(this["\x1d\x1d\r"])
      {
         case dofus.datacenter.Server.SERVER_OFFLINE:
            return this.api.lang.getText("SERVER_OFFLINE");
         case dofus.datacenter.Server.SERVER_ONLINE:
            return this.api.lang.getText("SERVER_ONLINE");
         case dofus.datacenter.Server.SERVER_STARTING:
            return this.api.lang.getText("SERVER_STARTING");
         default:
            return "";
      }
   }
   function §\n\t§()
   {
      switch(this["\x1d\x1d\r"])
      {
         case dofus.datacenter.Server.SERVER_OFFLINE:
            return this.api.lang.getText("SERVER_OFFLINE_SHORT");
         case dofus.datacenter.Server.SERVER_ONLINE:
            return this.api.lang.getText("SERVER_ONLINE_SHORT");
         case dofus.datacenter.Server.SERVER_STARTING:
            return this.api.lang.getText("SERVER_STARTING_SHORT");
         default:
            return "";
      }
   }
   function §\x10\x04§(§\x16\t\x1b§)
   {
      this["\x1c\x02\x12"] = _loc2_;
      return this["\x1e\x14\t"]();
   }
   function §\x1e\x14\t§()
   {
      return this["\x1c\x02\x12"];
   }
   function §\x01\x15§()
   {
      return this.api.lang.getServerInfos(this["\x1d\x17\x01"]).n;
   }
   function §\x1e\x18\r§()
   {
      return this.api.lang.getServerInfos(this["\x1d\x17\x01"]).d;
   }
   function §\x01\x1b§()
   {
      return this.api.lang.getServerInfos(this["\x1d\x17\x01"]).l;
   }
   function §\x06\x11§()
   {
      return Number(this.api.lang.getServerInfos(this["\x1d\x17\x01"]).p);
   }
   function §\x06\x12§()
   {
      return this.api.lang["\x17\x1e\r"](this["\x1a\x06\x10"]);
   }
   function §\x1e\x16\x0b§()
   {
      return Number(this.api.lang.getServerInfos(this["\x1d\x17\x01"]).c);
   }
   function §\x1e\x16\f§()
   {
      return this.api.lang["\x17\x1e\n"](this["\x16\x1d\x1b"]);
   }
   function §\x1e\x18\x05§()
   {
      var _loc2_ = new Date(Number(this.api.lang.getServerInfos(this["\x1d\x17\x01"]).date));
      return _loc2_;
   }
   function §\x1e\x18\x06§()
   {
      var _loc2_ = new Date(Number(this.api.lang.getServerInfos(this["\x1d\x17\x01"]).date));
      return eval("\x1a\x01\x1a")utils.["\x1b\x01\x19"]["\x17\x12\r"](_loc2_,this.api.lang.getConfigText("LONG_DATE_FORMAT"),this.api.config.language);
   }
   function §\f\r§()
   {
      return this.api.lang.getText("SERVER_GAME_TYPE_" + this.typeNum);
   }
   function §\f\x0e§()
   {
      if(this._nCachedTypeNum == undefined)
      {
         this._nCachedTypeNum = this.api.lang.getServerInfos(this["\x1d\x17\x01"]).t;
      }
      return this._nCachedTypeNum;
   }
   function §\x17\x1e\x05§()
   {
      var _loc2_ = this.typeNum;
      switch(_loc2_)
      {
         case dofus.datacenter.Server.SERVER_TEMPORIS:
            return dofus.datacenter.Server.SERVER_RULES_TEMPORIS;
         case dofus.datacenter.Server["\x1a\x14\x12"]:
            return dofus.datacenter.Server["\x1a\x14\x16"];
         case dofus.datacenter.Server.SERVER_TEMPORIS:
            return dofus.datacenter.Server.SERVER_RULES_TEMPORIS;
         case dofus.datacenter.Server["\x1a\x14\r"]:
         case dofus.datacenter.Server["\x1a\x14\x13"]:
            return dofus.datacenter.Server["\x1a\x14\x14"];
         default:
            return _loc2_;
      }
   }
   function §\x18\x0e\x03§()
   {
      return this.typeNum == dofus.datacenter.Server.SERVER_HARDCORE;
   }
   function isTemporis()
   {
      return this.typeNum == dofus.datacenter.Server.SERVER_TEMPORIS;
   }
   function initialize(§\x19\b\x0b§, §\x19\x0e\x1d§, §\x19\x05\x0b§, §\x16\t\x1b§)
   {
      this.api = _global.api;
      this["\x1d\x17\x01"] = _loc2_;
      this["\x1d\x1d\r"] = _loc3_;
      this["\x1c\x02\x12"] = _loc5_;
      this.completion = _loc4_;
      this.populationWeight = Number(this.api.lang["\x17\x1e\x0e"](this["\x1a\x06\x10"]));
   }
   function §\x18\f\x11§()
   {
      if(this.api.datacenter.Player.isAuthorized)
      {
         return true;
      }
      var _loc2_ = this.api.lang.getServerInfos(this["\x1d\x17\x01"]).rlng;
      if(_loc2_ == undefined || (_loc2_.length == undefined || (_loc2_.length == 0 || this.api.config["\x1b\x02\x0e"])))
      {
         return true;
      }
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         if(_loc2_[_loc3_].toUpperCase() == this.api.config.language.toUpperCase())
         {
            return true;
         }
         _loc3_ = _loc3_ + 1;
      }
      return false;
   }
   function §\x18\x0e\x1d§()
   {
      if(this.typeNum != dofus.datacenter.Server["\x1a\x14\x12"] && this.typeNum != dofus.datacenter.Server.SERVER_TEMPORIS)
      {
         return false;
      }
      if(this.api.datacenter.Player.isAuthorized)
      {
         return false;
      }
      return !this.api.electron.enabled;
   }
}
