class dofus.§\x18\x18\x0b§.§\x17\x13\x05§ extends dofus.utils.ApiElement
{
   static var §\x1b\n\n§ = 2;
   static var §\x1b\t\x1d§ = 1;
   static var §\x1b\n\b§ = 0;
   function §\x17\x13\x05§(§\x17\x04\x0e§, oAPI)
   {
      super();
      this.initialize(_loc3_,oAPI);
   }
   function initialize(§\x17\x04\x0e§, oAPI)
   {
      super.initialize(oAPI);
      this["\x1c\x0e\n"] = _loc3_;
      this.clear();
   }
   function clear(§\x1b\x18\n§)
   {
      this["\x1c\x11\x06"] = undefined;
      this["\x1c\x06\x1d"] = false;
      this["\x1e\r\x03"] = dofus.managers["\x17\x13\x05"]["\x1b\n\b"];
      this["\x1c\x0e\b"] = null;
   }
   function §\x1b\x11\n§(§\x1b\x12\t§, §\x1a\x03\x11§)
   {
      if(!this["\x18\x10\x10"]())
      {
         this.api.datacenter.Game["\x19\x10\x05"] |= dofus.datacenter..Game["\x1b\n\x05"];
         this.api.network.GameActions["\x1a\x13\x14"](_loc2_,_loc3_);
         this["\x1e\r\x03"] = dofus.managers["\x17\x13\x05"]["\x1b\n\n"];
         this["\x1c\x0e\b"] = _loc2_;
      }
      else if(this.canCancel(_loc2_))
      {
         this.cancel(this["\x1c\x0e\n"].cellNum);
         this["\x1b\x11\n"](_loc2_,_loc3_);
      }
      else
      {
         ank.utils.Logger.err("L\'état de l\'action ne permet pas de faire ceci");
      }
   }
   function §\x18\x0f\n§(§\x1b\x12\t§)
   {
      return this["\x18\x10\x10"]() && !this.canCancel(_loc2_);
   }
   function §\x1b\x11\x0b§(§\x1b\x12\t§, §\x1a\x03\x11§)
   {
      if(!this["\x18\x10\x10"]())
      {
         this.api.network.GameActions["\x1a\x13\x14"](_loc2_,_loc3_);
         this["\x1e\r\x03"] = dofus.managers["\x17\x13\x05"]["\x1b\n\n"];
         this["\x1c\x0e\b"] = _loc2_;
      }
      else
      {
         ank.utils.Logger.err("L\'état de l\'action ne permet pas de faire ceci " + _loc2_ + " " + _loc3_);
      }
   }
   function §\x19\x1c\x12§(§\x18\b\f§)
   {
      var _loc3_ = this["\x1e\r\x03"];
      this["\x1c\x11\x06"] = _loc2_;
      this["\x1e\r\x03"] = dofus.managers["\x17\x13\x05"]["\x1b\t\x1d"];
      return _loc3_;
   }
   function cancel(§\x1a\x03\x11§, §\x16\f\b§)
   {
      this["\x1c\x0e\b"] = null;
      if(this.canCancel())
      {
         this.api.network.GameActions["\x15\x1c\x07"](this["\x1c\x11\x06"],_loc2_);
         var _loc4_ = this["\x1c\x0e\n"].sequencer;
         var _loc5_ = this["\x1c\x0e\n"].mc;
         _loc4_.clearAllNextActions();
         if(_loc3_ == true)
         {
            _loc4_.addAction(125,false,_loc5_,_loc5_.setAnim,["Static"]);
         }
         this.clear();
      }
   }
   function end(§\x16\f\x18§)
   {
      if(this["\x1c\x06\x1d"] == false || !_loc2_)
      {
         this.clear();
      }
      else
      {
         this["\x1e\r\x03"] = dofus.managers["\x17\x13\x05"]["\x1b\n\n"];
         this["\x1c\x11\x06"] = undefined;
      }
   }
   function §\x15\x1b\x1b§(§\x18\b\r§)
   {
      this.api.network.GameActions["\x15\x1c\x06"](_loc2_);
      this.end(true);
   }
   function §\x18\x10\x10§(§\x1b\x18\n§)
   {
      switch(this["\x1e\r\x03"])
      {
         case dofus.managers["\x17\x13\x05"]["\x1b\n\b"]:
            return false;
         case dofus.managers["\x17\x13\x05"]["\x1b\n\n"]:
         case dofus.managers["\x17\x13\x05"]["\x1b\t\x1d"]:
            return true;
         default:
            return false;
      }
   }
   function canCancel(§\x1b\x12\t§)
   {
      if(_loc2_ != this["\x1c\x0e\b"])
      {
         return false;
      }
      if(this["\x1c\x11\x06"] == undefined)
      {
         return false;
      }
      switch(this["\x1e\r\x03"])
      {
         case dofus.managers["\x17\x13\x05"]["\x1b\n\n"]:
            return false;
         case dofus.managers["\x17\x13\x05"]["\x1b\n\b"]:
         case dofus.managers["\x17\x13\x05"]["\x1b\t\x1d"]:
            return true;
         default:
            return false;
      }
   }
}
