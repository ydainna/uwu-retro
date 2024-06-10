class dofus.datacenter.§\x17\x04\x1a§ extends Object
{
   function §\x17\x04\x1a§(oAPI)
   {
      super();
      this.initialize(oAPI);
   }
   function initialize(oAPI)
   {
      this._oAPI = oAPI;
      this["Player"] = new dofus.datacenter.["\x18\x17\t"](oAPI);
      thisBasics = new dofus.datacenter.Basics();
      this["\x16\x18\x10"] = new ank.utils.ExtendedObject();
      thisSprites = new ank.utils.ExtendedObject();
      this.Houses = new ank.utils.ExtendedObject();
      this.Storages = new ank.utils.ExtendedObject();
      this.Game = new dofus.datacenter.Game();
      this.Conquest = new dofus.datacenter.Conquest();
      this.Subareas = new ank.utils.ExtendedObject();
      this.Map = new dofus.datacenter.["\x17\t\x0f"]();
      this["\x1b\x0f\b"] = new Object();
      this.Survey = new dofus.datacenter.SurveyManager();
   }
   function clear()
   {
      this["Player"] = new dofus.datacenter.["\x18\x17\t"](this._oAPI);
      thisBasics.initialize();
      this["\x16\x18\x10"] = new ank.utils.ExtendedObject();
      thisSprites = new ank.utils.ExtendedObject();
      this.Houses = new ank.utils.ExtendedObject();
      this.Storages = new ank.utils.ExtendedObject();
      this.Game = new dofus.datacenter.Game();
      this.Conquest = new dofus.datacenter.Conquest();
      this.Subareas = new ank.utils.ExtendedObject();
      this.Map = new dofus.datacenter.["\x17\t\x0f"]();
      this["\x1b\x0f\b"] = new Object();
      this.Survey = new dofus.datacenter.SurveyManager();
      delete this.Exchange;
   }
   function §\x16\x1c\x04§()
   {
      this.Game = new dofus.datacenter.Game();
   }
}
