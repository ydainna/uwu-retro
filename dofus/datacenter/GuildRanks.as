class dofus.datacenter.GuildRanks
{
   function GuildRanks()
   {
      this._oNameList = new Object();
      this.api = _global.api;
   }
   function setRankCustomName(§\x19\b\x0b§, sName)
   {
      this._oNameList[_loc2_] = _loc3_;
   }
   function resetAllRankCustomName()
   {
      this._oNameList = new Object();
   }
   function resetRankCustomName(§\x19\b\x0b§)
   {
      this._oNameList[_loc2_] = undefined;
   }
   function getRankName(§\x19\b\x0b§)
   {
      var _loc3_ = this.api.lang["\x17\x1d\x18"](_loc2_);
      if(this._oNameList[_loc2_] != undefined)
      {
         return this._oNameList[_loc2_];
      }
      return _loc3_.n;
   }
}
