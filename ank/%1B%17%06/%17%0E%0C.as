class ank.utils.ExtendedArray extends Array
{
   function ExtendedArray()
   {
      super();
      this.initialize();
   }
   function §\x1a\f\x03§()
   {
   }
   function addEventListener()
   {
   }
   function §\x17\x07\x19§()
   {
   }
   function §\x17\x07\x1d§()
   {
   }
   function initialize(§\x1b\x18\n§)
   {
      mx.["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
   }
   function §\x18\x0e\t§()
   {
      return this["\x1c\x07\x02"];
   }
   function §\x1b\t\x13§(§\x19\x06\f§)
   {
      this["\x1c\x07\x02"] = true;
      if(this["\x1d\x1a\x10"] != undefined)
      {
         _global.clearTimeout(this["\x1d\x1a\x10"]);
      }
      var _loc3_ = _global.setTimeout(this,"endNoEventDispatchsPeriod",_loc2_);
      this["\x1d\x1a\x10"] = _loc3_;
   }
   function endNoEventDispatchsPeriod()
   {
      this["\x1c\x07\x02"] = undefined;
      this["\x1d\x1a\x10"] = undefined;
      this["\x17\t\t"]({type:"modelChanged",eventName:"updateAll"});
      var _loc2_ = _global.api;
      _loc2_.ui.getUIComponent("TaxCollectorStorage")["\x1a\x0b\x02"]();
   }
   function §\x17\x02\x0e§(§\x15\x1c\x1d§)
   {
      this.splice(0,this.length);
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         this.push(_loc2_[_loc3_]);
         _loc3_ = _loc3_ + 1;
      }
   }
   function §\x1a\x0b\x16§(§\x1b\x18\n§)
   {
      this.splice(0,this.length);
      this["\x17\t\t"]({type:"modelChanged",eventName:"updateAll"});
   }
   function push(§\x1b\x17\x16§)
   {
      var _loc4_ = super.push(_loc3_);
      this["\x17\t\t"]({type:"modelChanged",eventName:"\x15\x1d\x12"});
      return _loc4_;
   }
   function pop()
   {
      var _loc3_ = super.pop();
      this["\x17\t\t"]({type:"modelChanged",eventName:"updateAll"});
      return _loc3_;
   }
   function shift()
   {
      var _loc3_ = super.shift();
      this["\x17\t\t"]({type:"modelChanged",eventName:"updateAll"});
      return _loc3_;
   }
   function unshift(§\x1b\x17\x16§)
   {
      var _loc4_ = super.unshift(_loc3_);
      this["\x17\t\t"]({type:"modelChanged",eventName:"updateAll"});
      return _loc4_;
   }
   function reverse()
   {
      super.reverse();
      this["\x17\t\t"]({type:"modelChanged",eventName:"updateAll"});
   }
   function §\x1a\r\x0b§(§\x19\x0e\x1a§, §\x16\x03\x13§)
   {
      var _loc4_ = [_loc2_,0];
      for(var k in _loc3_)
      {
         _loc4_.push(_loc3_[k]);
      }
      this.splice.apply(this,_loc4_);
      this["\x17\t\t"]({type:"modelChanged",eventName:"updateAll"});
   }
   function §\x1a\f\x0b§(§\x19\b\x14§, §\x17\x07\x01§)
   {
      this.splice(_loc2_,_loc3_);
      this["\x17\t\t"]({type:"modelChanged",eventName:"updateAll"});
   }
   function §\x1b\x15\x05§(§\x19\b\x14§, §\x19\x07\x03§)
   {
      this.splice(_loc2_,1,_loc3_);
      this["\x17\t\t"]({type:"modelChanged",eventName:"updateOne",updateIndex:_loc2_});
   }
   function §\x17\x11\t§(§\x1b\x07\x14§, §\x1a\x07\x1d§)
   {
      var _loc4_ = 0;
      while(_loc4_ < this.length)
      {
         var _loc5_ = this[_loc4_];
         if(_loc5_[_loc2_] == _loc3_)
         {
            return {index:_loc4_,item:_loc5_};
         }
         _loc4_ = _loc4_ + 1;
      }
      return {index:-1};
   }
   function deepClone()
   {
      var _loc2_ = new ank.utils.ExtendedArray();
      var _loc3_ = 0;
      while(_loc3_ < this.length)
      {
         _loc2_.push(this[_loc3_].clone());
         _loc3_ = _loc3_ + 1;
      }
      return _loc2_;
   }
   function clone()
   {
      var _loc2_ = new ank.utils.ExtendedArray();
      var _loc3_ = 0;
      while(_loc3_ < this.length)
      {
         _loc2_.push(this[_loc3_]);
         _loc3_ = _loc3_ + 1;
      }
      return _loc2_;
   }
   function §\x1b\x01\x13§()
   {
      var _loc2_ = this.clone();
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         var _loc4_ = _loc2_[_loc3_];
         var _loc5_ = random(_loc2_.length);
         _loc2_[_loc3_] = _loc2_[_loc5_];
         _loc2_[_loc5_] = _loc4_;
         _loc3_ = _loc3_ + 1;
      }
      return _loc2_;
   }
   function §\x17\t\t§(oEvent)
   {
      if(this["\x18\x0e\t"]())
      {
         return undefined;
      }
      this["\x17\x07\x19"](_loc2_);
   }
   function §\x16\x13\x11§(§\x1a\x07\x1b§, §\x17\x11\x12§)
   {
      if((_loc3_ & Array.ASCENDING) == 0 && (_loc3_ & Array.DESCENDING) == 0)
      {
         _loc3_ |= Array.ASCENDING;
      }
      do
      {
         var _loc4_ = false;
         var _loc5_ = 1;
         while(_loc5_ < this.length)
         {
            if((_loc3_ & Array.ASCENDING) > 0 && this[_loc5_ - 1][_loc2_] > this[_loc5_][_loc2_] || (_loc3_ & Array.DESCENDING) > 0 && this[_loc5_ - 1][_loc2_] < this[_loc5_][_loc2_])
            {
               var _loc6_ = this[_loc5_ - 1];
               this[_loc5_ - 1] = this[_loc5_];
               this[_loc5_] = _loc6_;
               _loc4_ = true;
            }
            _loc5_ = _loc5_ + 1;
         }
      }
      while(_loc4_);
      
   }
   function concat(§\x19\x11\x12§)
   {
      var _loc4_ = super.concat(_loc3_);
      var _loc5_ = new ank.utils.ExtendedArray();
      _loc5_.createFromArray(_loc4_);
      return _loc5_;
   }
}
