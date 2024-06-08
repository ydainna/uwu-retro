class dofus.§\x18\x18\x0b§.§\x16\x19\x0b§.FightEventsMessagesBuffer
{
   function FightEventsMessagesBuffer(§\x16\x04\x05§)
   {
      this._api = _loc2_;
      this._aMessagesBuffer = new Array();
   }
   function §\x1e\x12\x05§()
   {
      return this._api;
   }
   function addFightEventMessage(nActionId, aPermanentArgs, aEvolutiveArgsToAppend, sPlayerId, §\x1b\x06\x1b§)
   {
      var _loc7_ = this.getFightEventMessage(nActionId);
      if(_loc7_ == undefined)
      {
         _loc7_ = new dofus.datacenter.["\x16\x19\x0b"].FightEventMessage(this.api,nActionId,aPermanentArgs);
         this._aMessagesBuffer.push(_loc7_);
      }
      _loc7_["\x15\x1e\x05"](sPlayerId,_loc6_);
      _loc7_.appendEvolutiveArgs(aEvolutiveArgsToAppend);
      if(this._nPrintAllTimeout != undefined)
      {
         _global.clearTimeout(this._nPrintAllTimeout);
      }
      var _loc8_ = _global.setTimeout(this,"printAll",50);
      this._nPrintAllTimeout = _loc8_;
   }
   function getFightEventMessage(nActionId)
   {
      var _loc3_ = this._aMessagesBuffer;
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         var _loc5_ = _loc3_[_loc4_];
         if(_loc5_.actionId == nActionId)
         {
            return _loc5_;
         }
         _loc4_ = _loc4_ + 1;
      }
      return undefined;
   }
   function printAll()
   {
      if(this._nPrintAllTimeout != undefined)
      {
         _global.clearTimeout(this._nPrintAllTimeout);
         this._nPrintAllTimeout = undefined;
      }
      if(this._aMessagesBuffer.length == 0)
      {
         return undefined;
      }
      var _loc2_ = this._aMessagesBuffer;
      this._aMessagesBuffer = new Array();
      var _loc3_ = new ank.utils.["\x17\x0e\r"]();
      var _loc4_ = new ank.utils.["\x17\x0e\r"]();
      var _loc5_ = this.api.datacenter.Sprites;
      for(var i in _loc5_.getItems())
      {
         var _loc6_ = _loc5_.getItemAt(i);
         var _loc7_ = _loc6_["\x1b\x0e\x15"];
         if(_loc7_ != undefined)
         {
            if(_loc7_ == 0)
            {
               _loc3_["\x15\x1d\x13"](_loc6_.id,_loc6_);
            }
            else if(_loc7_ == 1)
            {
               _loc4_["\x15\x1d\x13"](_loc6_.id,_loc6_);
            }
         }
      }
      var _loc8_ = 0;
      while(_loc8_ < _loc2_.length)
      {
         var _loc9_ = _loc2_[_loc8_];
         var _loc10_ = _loc9_.getPrintableString(_loc3_,_loc4_);
         if(!(_loc10_ == undefined || _loc10_.length == 0))
         {
            this.api.kernel.showMessage(undefined,_loc10_,"INFO_FIGHT_CHAT");
         }
         _loc8_ = _loc8_ + 1;
      }
   }
}
