class dofus.§\x17\x04\x19§.§\x17\x04\x1a§ extends Object
{
   function §\x17\x04\x1a§(oAPI)
   {
      super();
      this.initialize(oAPI);
   }
   function initialize(oAPI)
   {
      this["\x1e\x02\t"] = oAPI;
      this["Player"] = new dofus.datacenter.["\x18\x17\t"](oAPI);
      thisBasics = new dofus.datacenter.Basics();
      this["\x16\x18\x10"] = new ank.utils.["\x17\x0e\r"]();
      thisSprites = new ank.utils.["\x17\x0e\r"]();
      this.Houses = new ank.utils.["\x17\x0e\r"]();
      this.Storages = new ank.utils.["\x17\x0e\r"]();
      this.Game = new dofus.datacenter..Game();
      this.Conquest = new dofus.datacenter..Conquest();
      this.Subareas = new ank.utils.["\x17\x0e\r"]();
      this["\x18\x18\x0e"] = new dofus.datacenter.["\x17\t\x0f"]();
      this["\x1b\x0f\b"] = new Object();
      this.Survey = new dofus.datacenter..SurveyManager();
   }
   function clear()
   {
      this["Player"] = new dofus.datacenter.["\x18\x17\t"](this["\x1e\x02\t"]);
      thisBasics.initialize();
      this["\x16\x18\x10"] = new ank.utils.["\x17\x0e\r"]();
      thisSprites = new ank.utils.["\x17\x0e\r"]();
      this.Houses = new ank.utils.["\x17\x0e\r"]();
      this.Storages = new ank.utils.["\x17\x0e\r"]();
      this.Game = new dofus.datacenter..Game();
      this.Conquest = new dofus.datacenter..Conquest();
      this.Subareas = new ank.utils.["\x17\x0e\r"]();
      this["\x18\x18\x0e"] = new dofus.datacenter.["\x17\t\x0f"]();
      this["\x1b\x0f\b"] = new Object();
      this.Survey = new dofus.datacenter..SurveyManager();
      delete this.Exchange;
   }
   function §\x16\x1c\x04§()
   {
      this.Game = new dofus.datacenter..Game();
   }
}
