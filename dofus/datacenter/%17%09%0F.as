class dofus.datacenter.§\x17\t\x0f§ extends ank.battlefield.datacenter.§\x18\x18\x0e§
{
   function §\x17\t\x0f§(§\x19\b\x0b§)
   {
      super(_loc3_);
   }
   function §\x1e\x16\x19§()
   {
      var _loc2_ = _global.api.lang["\x17\x1b\x11"](this.id);
      return _global.api.lang.getText("COORDINATES") + " : " + _loc2_.x + ", " + _loc2_.y;
   }
   function §\r\x14§()
   {
      return _global.api.lang["\x17\x1b\x11"](this.id).x;
   }
   function §\x0e\x02§()
   {
      return _global.api.lang["\x17\x1b\x11"](this.id).y;
   }
   function §\n\x13§()
   {
      var _loc2_ = _global.api.lang;
      return _loc2_["\x17\x1b\x04"](this["\x1b\x0b\x17"]).superareaID;
   }
   function §\x1e\x12\x07§()
   {
      var _loc2_ = _global.api.lang;
      return _loc2_["\x17\x1b\x04"](this["\x1b\x0b\x17"]).areaID;
   }
   function §\n\x0f§()
   {
      var _loc2_ = _global.api.lang;
      return _loc2_["\x17\x1b\x11"](this.id).sa;
   }
   function §\x04\x17§()
   {
      var _loc2_ = _global.api.lang;
      return _loc2_["\x17\x1b\x0f"](this["\x1b\x0b\x17"]).m;
   }
   function §\x1e\x19\x05§()
   {
      return Number(_global.api.lang["\x17\x1b\x11"](this.id).d);
   }
   function §\x1e\x19\x03§()
   {
      return _global.api.lang["\x17\x16\x1d"](this["\x17\n\x13"]);
   }
   function get dungeonName()
   {
      return this.dungeon.n;
   }
   function get dungeonFloorName()
   {
      return this["\x17\n\x12"].n;
   }
   function §\x1e\x19\x04§()
   {
      return this.dungeon.m[this.id];
   }
   function get isDungeon()
   {
      return !_global.isNaN(this["\x17\n\x13"]);
   }
   static function §\x18\x0e\x0e§(§\x19\t\x15§)
   {
      switch(_loc2_)
      {
         case 10240:
         case 8726:
         case 666:
            return true;
         default:
            return false;
      }
   }
   static function isTournament(§\x19\t\x15§)
   {
      switch(_loc2_)
      {
         case 12224:
         case 12229:
         case 12225:
         case 12223:
         case 12228:
         case 12226:
         case 12227:
         case 7285:
         case 7286:
         case 7280:
         case 7283:
         case 7281:
         case 10368:
         case 7282:
            return true;
         default:
            return false;
      }
   }
   function get firstMountPark()
   {
      return this.eaMountParks[0];
   }
   function getMountPark(instance)
   {
      var _loc3_ = 0;
      while(_loc3_ < this.eaMountParks.length)
      {
         var _loc4_ = this.eaMountParks[_loc3_];
         if(_loc4_.instanceId == instance)
         {
            return _loc4_;
         }
         _loc3_ = _loc3_ + 1;
      }
      return undefined;
   }
   function §\x04\n§()
   {
      return this.eaMountParks;
   }
   function resetMountPark()
   {
      this.eaMountParks = new ank.utils.ExtendedArray();
   }
   function addMountPark(oPark)
   {
      this.eaMountParks.push(oPark);
   }
}
