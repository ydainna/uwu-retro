class dofus.datacenter.§\x1a\b\x19§ extends Object
{
   function §\x1a\b\x19§(§\x19\b\x0b§, §\x16\x0b\x14§, §\x19\x0e\x14§, bAccountQuest, bRepeatableQuest)
   {
      super();
      this.initialize(_loc3_,_loc4_,_loc5_,bAccountQuest,bRepeatableQuest);
   }
   function §\x1e\x1c\x05§()
   {
      return this["\x1d\x17\x01"];
   }
   function §\x1e\x1d\x0e§()
   {
      return this["\x1c\x04\x04"];
   }
   function get isAccountQuest()
   {
      return this._bAccountQuest;
   }
   function get isRepeatableQuest()
   {
      return this._bRepeatableQuest;
   }
   function §\x04\x1b§()
   {
      var _loc2_ = this.api.lang["\x17\x1d\x14"](this["\x1d\x17\x01"]);
      if(_loc2_ != null && dofus.Constants.DEBUG)
      {
         _loc2_ = _loc2_ + " (" + this["\x1d\x17\x01"] + ")";
      }
      return _loc2_;
   }
   function §\x1e\x17\x16§()
   {
      return this["\x1e\x03\x02"];
   }
   function §\x15\x1e\x19§(§\x1a\x02\r§)
   {
      this["\x1c\x10\x18"].addItemAt(_loc2_.id,_loc2_);
      if(_loc2_["\x18\r\t"])
      {
         this["\x1e\x03\x02"] = _loc2_;
      }
   }
   function §\x18\x01\x0f§(nStepID)
   {
      return dofus.datacenter.["\x1a\t\x07"](this["\x1e\x03\x02"]["\x16\x03\n"].findFirstItem("id",nStepID).item);
   }
   function initialize(§\x19\b\x0b§, §\x16\x0b\x14§, §\x19\x0e\x14§, bAccountQuest, bRepeatableQuest)
   {
      this.api = _global.api;
      this["\x1c\x10\x18"] = new ank.utils.ExtendedObject();
      this["\x1d\x17\x01"] = _loc2_;
      this["\x1c\x04\x04"] = _loc3_;
      this.sortOrder = _loc4_;
      this._bAccountQuest = bAccountQuest;
      this._bRepeatableQuest = bRepeatableQuest;
   }
}
