class dofus.datacenter.MonsterInBidHouse
{
   function MonsterInBidHouse(§\x19\n\x14§, nBidHouseType)
   {
      this["\x1d\x1a\x05"] = _loc2_;
      this._nBidHouseType = nBidHouseType;
      this.name = this.api.lang["\x17\x1c\t"](this["\x1d\x1a\x05"]).n;
   }
   function §\x1e\x12\x05§()
   {
      return _global.api;
   }
   function §\f\x15§()
   {
      return this["\x1d\x1a\x05"];
   }
   function §\f\r§()
   {
      return this.getAssociatedSoulStoneCategoryID();
   }
   function §\x01\x15§()
   {
      return this.name;
   }
   function §\x1e\x16\x16§()
   {
      return dofus.Constants["\x16\x1c\x1a"] + String(this.gfx) + ".swf";
   }
   function §\x1e\x1b\x01§()
   {
      return this.api.lang["\x17\x1c\t"](this["\x1d\x1a\x05"]).g;
   }
   function §\x1e\x1c\x03§()
   {
      return "MonsterListItem";
   }
   function §\x06\x02§()
   {
      return {contentPath:this.contentPath};
   }
   function get isMonsterInBidHouse()
   {
      return true;
   }
   function §\n\r§()
   {
      return "";
   }
   function getAssociatedSoulStoneCategoryID()
   {
      if(this._nBidHouseType == undefined)
      {
         var _loc2_ = this.api.lang["\x17\x1c\t"](this["\x1d\x1a\x05"]);
         if(dofus.datacenter.["\x18\x1d\x18"].isMiniBossCategory(_loc2_.b))
         {
            return dofus.datacenter.Item.TYPE_FULL_SOUL_STONE_ARCHI;
         }
         if(_loc2_.d)
         {
            return dofus.datacenter.Item.TYPE_FULL_SOUL_STONE_BOSS;
         }
         return dofus.datacenter.Item.TYPE_FULL_SOUL_STONE_NORMAL;
      }
      return this._nBidHouseType;
   }
}
