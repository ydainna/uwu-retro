class dofus.§\x18\x18\x0b§.§\x1b\x13\x06§
{
   static var SERVER = 1;
   static var §\x16\x1c\x15§ = 2;
   static var NONE = 3;
   function §\x1b\x13\x06§()
   {
      this["\x1a\n\x0b"] = new LocalConnection();
      this["\x1a\x13\x19"] = new LocalConnection();
      this["\x1e\r\x05"] = dofus["\x18\x18\x0b"]["\x1b\x13\x06"].NONE;
      this["\x1c\r\x13"] = "_dofus" + Math.floor(Math.random() * 100000000);
   }
   function §\x1e\x12\x05§()
   {
      return _global.api;
   }
   static function §\x17\x19\t§()
   {
      if(!dofus["\x18\x18\x0b"]["\x1b\x13\x06"]._self)
      {
         dofus["\x18\x18\x0b"]["\x1b\x13\x06"]._self = new dofus["\x18\x18\x0b"]["\x1b\x13\x06"]();
      }
      return dofus["\x18\x18\x0b"]["\x1b\x13\x06"]._self;
   }
   function §\x1b\x14\x01§()
   {
      var _loc2_ = this["\x1a\n\x0b"].connect("_dofus");
      if(this["\x1e\r\x05"] != dofus["\x18\x18\x0b"]["\x1b\x13\x06"].SERVER && _loc2_)
      {
         this["\x18\x18\n"]();
      }
      else if(this["\x1e\r\x05"] != dofus["\x18\x18\x0b"]["\x1b\x13\x06"].SERVER)
      {
         if(this["\x1e\r\x05"] != dofus["\x18\x18\x0b"]["\x1b\x13\x06"]["\x16\x1c\x15"])
         {
            this["\x18\x18\x06"]();
         }
         this["\x1a\n\x0b"].connect(this["\x1c\r\x13"]);
         this["\x1a\x13\x19"].send("_dofus","getUId",this["\x1c\r\x13"]);
      }
   }
   function §\x18\x18\n§()
   {
      this["\x1e\r\x05"] = dofus["\x18\x18\x0b"]["\x1b\x13\x06"].SERVER;
      this["\x1a\n\x0b"].getUId = function(§\x16\x1e\x10§)
      {
         var _loc3_ = SharedObject.getLocal(dofus.Constants["\x18\x03\x04"]);
         if(_loc3_.data.identity)
         {
            dofus["\x18\x18\x0b"]["\x1b\x13\x06"].getInstance()["\x1a\x13\x19"].send(_loc2_,"setUId",_loc3_.data.identity);
         }
         _loc3_.close();
      };
   }
   function §\x18\x18\x06§()
   {
      this["\x1e\r\x05"] = dofus["\x18\x18\x0b"]["\x1b\x13\x06"]["\x16\x1c\x15"];
      this["\x1a\n\x0b"].setUId = function(§\x1b\x13\x05§)
      {
         var _loc3_ = SharedObject.getLocal(dofus.Constants["\x18\x03\x04"]);
         _loc3_.data.identity = _loc2_;
         _loc3_.close();
         dofus["\x18\x18\x0b"]["\x1b\x13\x06"].getInstance()["\x1a\n\x0b"].close();
      };
   }
}
