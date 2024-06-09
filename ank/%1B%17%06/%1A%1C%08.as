class ank.utils.§\x1a\x1c\b§ extends Object
{
   static var §\x1e\x04\r§ = new Object();
   static var §\x1e\x05\x05§ = new Object();
   function §\x1a\x1c\b§(oParams)
   {
      super();
      this["\x1e\x0b\b"] = !!_loc3_.persistence ? SharedObject["\x17\x1e\x02"](_loc3_.name,_loc3_.remotePath,_loc3_.persistence,_loc3_.secure) : SharedObject.getLocal(_loc3_.name,_loc3_.localPath,_loc3_.secure);
      if(this["\x1e\x0b\b"].data._Data == undefined)
      {
         this["\x1e\x0b\b"].data._Data = new Object();
      }
      this.data = this["\x1e\x0b\b"].data._Data;
      this["\x1e\x0b\b"].onStatus = function(§\x18\b\x1d§)
      {
         if(this.onStatus)
         {
            this.onStatus(_loc2_);
         }
      };
      this["\x1e\x0b\b"]["\x19\x1d\x15"] = function(§\x19\x11\x14§)
      {
         if(this["\x19\x1d\x15"])
         {
            this["\x19\x1d\x15"](_loc2_);
         }
      };
   }
   function clear()
   {
      this.data = new Object();
      this["\x1e\x0b\b"].clear();
   }
   function close()
   {
      this["\x1e\x0b\b"].data._Data = this.data;
      this["\x1e\x0b\b"].close();
   }
   function flush(§\x18\x1c\x1d§)
   {
      this["\x1e\x0b\b"].data._Data = this.data;
      return this["\x1e\x0b\b"].flush(_loc2_);
   }
   function getSize()
   {
      this["\x1e\x0b\b"].data._Data = this.data;
      return this["\x1e\x0b\b"].getSize;
   }
   function connect(§\x19\x02\x1b§)
   {
      this["\x1e\x0b\b"].data._Data = this.data;
      return this["\x1e\x0b\b"].connect(_loc2_);
   }
   function send(§\x18\x05\x03§)
   {
      this["\x1e\x0b\b"].data._Data = this.data;
      this["\x1e\x0b\b"].send(_loc2_);
   }
   function §\x1a\x16\x18§(§\x1b\x16\b§)
   {
      this["\x1e\x0b\b"].data._Data = this.data;
      return this["\x1e\x0b\b"]["\x1a\x16\x18"](_loc2_);
   }
   static function getLocal(§\x19\x03\t§, §\x18\x17\b§, §\x1a\x12\r§)
   {
      if(!ank.utils.["\x1a\x1c\b"]["\x1e\x04\r"][_loc2_])
      {
         ank.utils.["\x1a\x1c\b"]["\x1e\x04\r"][_loc2_] = new ank.utils.["\x1a\x1c\b"]({name:_loc2_,localPath:_loc3_,secure:_loc4_});
      }
      return ank.utils.["\x1a\x1c\b"]["\x1e\x04\r"][_loc2_];
   }
   static function §\x17\x1e\x02§(§\x19\x03\t§, §\x1a\x0b\x14§, §\x1a\x04\x19§, §\x1a\x12\r§)
   {
      if(!ank.utils.["\x1a\x1c\b"]["\x1e\x05\x05"][_loc2_])
      {
         ank.utils.["\x1a\x1c\b"]["\x1e\x05\x05"][_loc2_] = new ank.utils.["\x1a\x1c\b"]({name:_loc2_,remotePath:_loc3_,persistence:_loc4_,secure:_loc5_});
      }
      return ank.utils.["\x1a\x1c\b"]["\x1e\x05\x05"][_loc2_];
   }
   static function §\x17\x06\x1a§(§\x1b\x16\x10§)
   {
      SharedObject["\x17\x06\x1a"]();
   }
   static function §\x17\x16\x19§(§\x1b\x16\x10§)
   {
      return SharedObject["\x17\x16\x19"](_loc2_);
   }
}
