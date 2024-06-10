class dofus.§\x17\x04\x19§.RapidStuff extends Object
{
   function RapidStuff(nIcon, §\x19\b\x0b§, sName)
   {
      super();
      this._nIcon = nIcon;
      this["\x1d\x17\x01"] = _loc4_;
      this["\x1e\x0b\x06"] = _loc5_;
      if(this._nIcon == undefined || this._nIcon == -1)
      {
         this._nIcon = 0;
      }
      if(this["\x1e\x0b\x06"] == undefined)
      {
         this["\x1e\x0b\x06"] = "";
      }
   }
   static function createEmptyRapidStuff(§\x19\b\x0b§)
   {
      return new dofus.datacenter.RapidStuff(undefined,_loc2_);
   }
   function §\x1e\x12\x05§()
   {
      return _global.api;
   }
   function get isEmptyRapidStuff()
   {
      return this._nIcon <= 0;
   }
   function get iconID()
   {
      return this._nIcon;
   }
   function §\x1e\x1c\x03§()
   {
      return dofus.Constants.CUSTOM_SET_ICONS + this._nIcon + ".swf";
   }
   function §\x1e\x1c\x05§()
   {
      return this["\x1d\x17\x01"];
   }
   function §\x04\x1b§()
   {
      return this["\x1e\x0b\x06"];
   }
}
