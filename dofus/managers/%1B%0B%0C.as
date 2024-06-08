class dofus.§\x18\x18\x0b§.§\x1b\x0b\f§ extends dofus.utils.§\x16\x04\x07§
{
   static var §\x17\x06\b§ = 19;
   static var §\x17\t\x15§ = [21,22,23,24,25];
   static var §\x1b\x11\x0f§ = new Array();
   function §\x1b\x0b\f§()
   {
      super();
      this["\x18\t\x10"]();
   }
   static function §\x17\x19\t§()
   {
      if(dofus.managers["\x1b\x0b\f"]._self == null)
      {
         dofus.managers["\x1b\x0b\f"]._self = new dofus.managers["\x1b\x0b\f"]();
      }
      return dofus.managers["\x1b\x0b\f"]._self;
   }
   function §\x17\b\x02§(§\x18\b\f§)
   {
      new org.flashdevelop.utils.FlashConnect.trace("[StreamingDisplayManager] (displayAdvice) " + _loc2_,"dofus.managers.StreamingDisplayManager::displayAdvice","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/managers/StreamingDisplayManager.as",55);
      getURL("FSCommand:" add "display",_loc2_);
      var _loc3_ = this["\x17\x16\x1a"]();
      if(_loc3_.data["display" + _loc2_] == undefined)
      {
         _loc3_.data["display" + _loc2_] = 1;
      }
      else
      {
         _loc3_.data["display" + _loc2_] += 1;
      }
      _loc3_.flush();
   }
   function §\x17\b\x03§(§\x18\b\f§, §\x18\x19\r§)
   {
      if(this["\x17\x16\x1a"]().data["display" + _loc2_] == undefined || this["\x17\x16\x1a"]().data["display" + _loc2_] < _loc3_)
      {
         this["\x17\b\x02"](_loc2_);
      }
   }
   function §\x17\x1b\b§(§\x18\b\f§)
   {
      if(dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][_loc2_] != undefined)
      {
         if(this["\x17\x16\x1a"]().data["display" + dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][_loc2_]] == 1)
         {
            return this["\x17\x16\f"](this["\x17\x1d\x06"]());
         }
         return dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][_loc2_];
      }
      return this["\x17\x16\f"](this["\x17\x1d\x06"]());
   }
   function §\x17\x1d\x06§()
   {
      return 8.452;
   }
   function §\x17\x16\f§(§\x1a\x05\x1d§)
   {
      if(_loc2_ < 1200)
      {
         return dofus.managers["\x1b\x0b\f"]["\x17\x06\b"];
      }
      return dofus.managers["\x1b\x0b\f"]["\x17\t\x15"][Math.floor((_loc2_ - 1200) / 300) % dofus.managers["\x1b\x0b\f"]["\x17\t\x15"].length];
   }
   function §\x18\t\x10§()
   {
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10300] = 1;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10284] = 1;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10299] = 1;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10285] = 1;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10298] = 1;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10276] = 1;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10283] = 1;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10294] = 1;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10292] = 1;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10279] = 1;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10296] = 1;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10289] = 1;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10305] = 2;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10321] = 2;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10322] = 2;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10323] = 2;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10324] = 2;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10325] = 2;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10326] = 2;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10327] = 2;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10328] = 2;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10329] = 2;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10330] = 2;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10331] = 2;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10273] = 4;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10337] = 3;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10258] = 3;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10295] = 5;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10288] = 6;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10290] = 6;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10287] = 6;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10345] = 6;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10346] = 6;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10344] = 6;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10297] = 14;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10349] = 14;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10317] = 14;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10304] = 14;
      dofus.managers["\x1b\x0b\f"]["\x1b\x11\x0f"][10318] = 26;
   }
   function §\x17\x16\x1a§()
   {
      if(this["\x1e\x0b\r"] == undefined && this.api.datacenter.Player.Name)
      {
         this["\x1e\x0b\r"] = SharedObject.getLocal(dofus.Constants["\x18\x03\x03"] + this.api.datacenter.Player.Name);
      }
      return this["\x1e\x0b\r"];
   }
   function §\x19\x1a\x17§()
   {
      this["\x17\b\x02"](16);
   }
   function §\x19\x15\f§()
   {
      this["\x17\b\x02"](17);
   }
   function §\x19\x15\x0b§()
   {
      this["\x17\b\x02"](18);
   }
   function §\x19\x17\x0f§()
   {
      this["\x17\b\x03"](7,2);
   }
   function §\x19\x17\x10§()
   {
      this["\x17\b\x03"](8,2);
   }
   function §\x19\x17\r§()
   {
      if(this.api.datacenter.Player.LP < this.api.datacenter.Player.LPmax)
      {
         this["\x17\b\x03"](12,2);
      }
      else
      {
         this["\x17\b\x02"](this["\x17\x1b\b"](this["\x1d\x14\x18"]));
      }
   }
   function §\x19\x1a\x12§(§\x18\x15\x07§)
   {
      _global.clearInterval(this["\x1d\x1a\r"]);
      this["\x1d\x1a\r"] = _global.setInterval(this,"newInterface",200,_loc2_);
   }
   function newInterface(§\x18\x15\x07§)
   {
      _global.clearInterval(this["\x1d\x1a\r"]);
      switch(_loc2_)
      {
         case "Inventory":
            this["\x17\b\x03"](9,2);
            break;
         case "Spells":
            this["\x17\b\x03"](10,2);
            break;
         case "StatsJob":
            this["\x17\b\x03"](11,2);
      }
   }
   function §\x19\x19\x05§(§\x18\x0b\x02§)
   {
      _global.clearInterval(this["\x1d\x1a\r"]);
      switch(_loc2_)
      {
         case "Inventory":
         case "Spells":
         case "StatsJob":
            this["\x17\b\x02"](this["\x17\x1b\b"](this["\x1d\x14\x18"]));
      }
   }
   function §\x19\x19\x18§()
   {
      this["\x17\b\x03"](13,2);
   }
   function §\x19\x1a\x14§(§\x18\b\f§)
   {
      this["\x1d\x14\x18"] = _loc2_;
      this["\x17\b\x02"](this["\x17\x1b\b"](_loc2_));
   }
}
