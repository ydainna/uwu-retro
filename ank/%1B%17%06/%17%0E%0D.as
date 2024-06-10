class ank.utils.ExtendedObject extends Object
{
   function ExtendedObject()
   {
      super();
      this.initialize();
   }
   function initialize(§\x1b\x18\n§)
   {
      this.clear();
      mx.["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
   }
   function clear(§\x1b\x18\n§)
   {
      this["\x1c\x11\x10"] = new Object();
      this["\x1c\r\x14"] = 0;
      this["\x17\x07\x19"]({type:"modelChanged"});
   }
   function addItemAt(§\x18\x11\x1b§, §\x18\x10\x14§)
   {
      if(this["\x1c\x11\x10"][_loc2_] == undefined)
      {
         this["\x1c\r\x14"]++;
      }
      this["\x1c\x11\x10"][_loc2_] = _loc3_;
      this["\x17\x07\x19"]({type:"modelChanged"});
   }
   function §\x1a\f\n§(§\x18\x11\x1b§)
   {
      var _loc3_ = this["\x1c\x11\x10"][_loc2_];
      delete this["\x1c\x11\x10"][_loc2_];
      this["\x1c\r\x14"]--;
      this["\x17\x07\x19"]({type:"modelChanged"});
      return _loc3_;
   }
   function §\x1a\x0b\x16§(§\x1b\x18\n§)
   {
      this.clear();
   }
   function removeFromKeys(aKeys)
   {
      for(var k in this["\x1c\x11\x10"])
      {
         var _loc3_ = false;
         var _loc4_ = 0;
         while(_loc4_ < aKeys.length)
         {
            if(aKeys[_loc4_] == k)
            {
               _loc3_ = true;
               break;
            }
            _loc4_ = _loc4_ + 1;
         }
         if(_loc3_)
         {
            delete this["\x1c\x11\x10"][k];
            this["\x1c\r\x14"]--;
         }
      }
      this["\x17\x07\x19"]({type:"modelChanged"});
   }
   function removeFromEOKeys(eo)
   {
      for(var k in this["\x1c\x11\x10"])
      {
         var _loc3_ = false;
         for(var kk in eo.getItems())
         {
            if(k == kk)
            {
               _loc3_ = true;
               break;
            }
         }
         if(_loc3_)
         {
            delete this["\x1c\x11\x10"][k];
            this["\x1c\r\x14"]--;
         }
      }
      this["\x17\x07\x19"]({type:"modelChanged"});
   }
   function §\x1a\x0b\x17§(§\x18\x11\x1b§)
   {
      for(var k in this["\x1c\x11\x10"])
      {
         if(k != _loc2_)
         {
            delete this["\x1c\x11\x10"][k];
         }
      }
      this["\x1c\r\x14"] = 1;
      this["\x17\x07\x19"]({type:"modelChanged"});
   }
   function §\x1a\r\r§(§\x18\x11\x1b§, §\x18\x10\x14§)
   {
      if(this["\x1c\x11\x10"][_loc2_] == undefined)
      {
         return undefined;
      }
      this["\x1c\x11\x10"][_loc2_] = _loc3_;
      this["\x17\x07\x19"]({type:"modelChanged"});
   }
   function §\x17\x1a\x17§(§\x1b\x18\n§)
   {
      return this["\x1c\r\x14"];
   }
   function §\x17\x19\x0f§(§\x18\x11\x1b§)
   {
      return this["\x1c\x11\x10"][_loc2_];
   }
   function getFirstItem()
   {
      for(var k in this["\x1c\x11\x10"])
      {
         return this["\x1c\x11\x10"][k];
         
         break;
      }
   }
   function §\x17\x19\x16§(§\x1b\x18\n§)
   {
      return this["\x1c\x11\x10"];
   }
   function §\x17\x1a\x07§()
   {
      var _loc2_ = new Array();
      for(var k in this["\x1c\x11\x10"])
      {
         _loc2_.push(k);
      }
      return _loc2_;
   }
   function §\x17\x1d\x0b§(§\x1b\x07\x13§)
   {
      var _loc3_ = new Array();
      for(var k in this["\x1c\x11\x10"])
      {
         _loc3_.push(this["\x1c\x11\x10"][k][_loc2_]);
      }
      return _loc3_;
   }
   function doesAnotherEOContainsAllMyKeys(eo)
   {
      var _loc3_ = true;
      for(var i in this["\x1c\x11\x10"])
      {
         var _loc4_ = false;
         for(var j in eo.getItems())
         {
            if(i == j)
            {
               _loc4_ = true;
               break;
            }
         }
         if(!_loc4_)
         {
            _loc3_ = false;
            break;
         }
      }
      return _loc3_;
   }
}
