class dofus.§\x18\x18\x0b§.§\x18\x0b\b§ extends dofus.utils.§\x16\x04\x07§
{
   static var §\x1b\n\x06§ = 0;
   static var §\x1b\n\t§ = 1;
   function §\x18\x0b\b§(§\x1a\x05\x13§, oAPI)
   {
      super();
      this.initialize(_loc3_,oAPI);
   }
   function initialize(§\x1a\x05\x13§, oAPI)
   {
      super.initialize(oAPI);
      this["\x1e\x06\x1b"] = _loc3_;
   }
   function setState(§\x16\x0b\x11§)
   {
      if(_loc2_)
      {
         this["\x1e\r\x03"] = dofus.managers["\x18\x0b\b"]["\x1b\n\t"];
         this["\x1e\x06\x1b"].lastClickedCell = null;
      }
      else
      {
         this["\x1e\r\x03"] = dofus.managers["\x18\x0b\b"]["\x1b\n\x06"];
      }
   }
   function §\x16\x15\b§(§\x18\x18\x15§, §\x16\x17\x12§, §\x16\x11\x05§, §\x16\r\x14§, §\x16\f\x19§, §\x16\b\x15§)
   {
      if(!_loc6_)
      {
         this.api.gfx["\x18\x18\x15"]["\x1a\r\x1b"]();
      }
      var _loc8_ = this["\x1e\x06\x1b"].data.cellNum;
      var _loc9_ = _loc2_["\x17\x14\x1d"](_loc3_);
      var _loc10_ = _loc9_["\x1b\x07\r"];
      var _loc11_ = !_loc6_ && _loc10_ != undefined;
      if(_loc11_ && !this.api.datacenter.Game["\x18\r\x15"])
      {
         var _loc12_ = dofus.graphics.gapi.ui.Party(this.api.ui.getUIComponent("Party"));
         var _loc13_ = false;
         if(_loc12_ != undefined)
         {
            for(var sID in _loc9_["\x16\x03\b"])
            {
               if(_loc9_["\x16\x03\b"][sID] && _loc12_["\x17\x1b\x18"](String(sID)) != undefined)
               {
                  _loc13_ = true;
                  break;
               }
            }
         }
         if(!_loc13_)
         {
            _loc11_ = false;
         }
      }
      if(_loc11_)
      {
         return false;
      }
      if(_loc9_.movement == 0)
      {
         return false;
      }
      if(_loc9_.movement == 1 && _loc5_)
      {
         return false;
      }
      switch(this["\x1e\r\x03"])
      {
         case dofus.managers["\x18\x0b\b"]["\x1b\n\x06"]:
            this.api.datacenter.Basics.interactionsManager_path = ank.battlefieldutils.["\x1a\x04\b"]["\x1a\x04\x07"](this.api,_loc2_,_loc8_,_loc3_,{bAllDirections:_loc7_,bIgnoreSprites:_loc6_});
            if(this.api.datacenter.Basics.interactionsManager_path != null)
            {
               return true;
            }
            return false;
            break;
         case dofus.managers["\x18\x0b\b"]["\x1b\n\t"]:
            if(_loc4_)
            {
               this.api.gfx.select(this["\x17\x01\t"](this.api.datacenter.Basics.interactionsManager_path),dofus.Constants["\x16\x18\x05"]);
               return this.api.datacenter.Basics.interactionsManager_path != null;
            }
            this.api.datacenter.Basics.interactionsManager_path = ank.battlefieldutils.["\x1a\x04\b"]["\x1a\x04\x07"](this.api,_loc2_,_loc8_,_loc3_,{bAllDirections:false,nMaxLength:(!_loc5_ ? 500 : this["\x1e\x06\x1b"].data.MP)});
            this.api.gfx["\x1b\x13\x18"](true);
            this.api.gfx.select(this["\x17\x01\t"](this.api.datacenter.Basics.interactionsManager_path),dofus.Constants["\x16\x18\x04"]);
            break;
      }
      return false;
   }
   function §\x17\x01\t§(§\x16\x01\x1a§)
   {
      var _loc3_ = new Array();
      for(var k in _loc2_)
      {
         _loc3_.push(_loc2_[k].num);
      }
      return _loc3_;
   }
}
