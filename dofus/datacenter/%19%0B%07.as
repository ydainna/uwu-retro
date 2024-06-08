class dofus.§\x17\x04\x19§.§\x19\x0b\x07§ extends ank.battlefield.§\x17\x04\x19§.§\x1b\x07\x04§
{
   function §\x19\x0b\x07§(sID, §\x16\x1c\x16§, §\x1a\x1b\x1b§, §\x16\x17\x18§, §\x17\x07\x13§, §\x18\x02\x16§, §\x17\x04\b§)
   {
      super();
      this.api = _global.api;
      if(this.__proto__ == dofus.datacenter.["\x19\x0b\x07"].prototype)
      {
         this.initialize(sID,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
      }
   }
   function §\f\x15§()
   {
      return this["\x1d\x1e\x1a"];
   }
   function §\x1e\x17§(§\x1b\x17\x16§)
   {
      this["\x1d\x1e\x1a"] = _loc2_;
      this["\x1e\x04\x17"] = this.api.lang["\x17\x1c\x18"](_loc2_);
      return this["\f\x15"]();
   }
   function §\x04\x1b§()
   {
      return this.api.lang["\x17\x0f\x12"](this["\x1e\x04\x17"].n);
   }
   function §\x1e\x11\x0f§()
   {
      var _loc2_ = new ank.utils.ExtendedArray();
      var _loc3_ = this["\x1e\x04\x17"].a;
      var _loc4_ = _loc3_.length;
      while(true)
      {
         _loc4_;
         if(_loc4_-- <= 0)
         {
            break;
         }
         var _loc5_ = _loc3_[_loc4_];
         _loc2_.push({name:this.api.lang["\x17\x1c\x17"](_loc3_[_loc4_]),actionId:_loc5_,action:this["\x17\x13\x15"](_loc3_[_loc4_])});
      }
      return _loc2_;
   }
   function §\x1e\x1b\x05§()
   {
      return this["\x1c\x11\x02"];
   }
   function §\x14\x04§(§\x1b\x17\x16§)
   {
      this["\x1c\x11\x02"] = _loc2_;
      return this["\x1e\x1b\x05"]();
   }
   function §\x1e\x1a\x04§()
   {
      return this["\x1d\x16\x04"];
   }
   function §\x13\t§(§\x19\x07\r§)
   {
      this["\x1d\x16\x04"] = _loc2_;
      return this["\x1e\x1a\x04"]();
   }
   function §\x1e\x17\x1c§()
   {
      return this["\x1d\x15\t"];
   }
   function §\x11\x17§(§\x19\x05\x14§)
   {
      this["\x1d\x15\t"] = _loc2_;
      return this["\x1e\x17\x1c"]();
   }
   function initialize(sID, §\x16\x1c\x16§, §\x1a\x1b\x1b§, §\x16\x17\x18§, §\x17\x07\x13§, §\x18\x02\x16§, §\x17\x04\b§)
   {
      super.initialize(sID,_loc4_,_loc5_,_loc6_,_loc7_);
      this["\x1c\x11\x02"] = _loc8_;
      this["\x1d\x15\t"] = _loc9_;
   }
   function §\x17\x13\x15§(§\x19\x03\x02§)
   {
      switch(_loc2_)
      {
         case 1:
            return {object:this.api.kernel.GameManager,method:this.api.kernel.GameManager["\x1b\t\x0f"],params:[0,this.id]};
         case 2:
            return {object:this.api.kernel.GameManager,method:this.api.kernel.GameManager["\x1b\t\x0f"],params:[2,this.id]};
         case 3:
            return {object:this.api.kernel.GameManager,method:this.api.kernel.GameManager["\x1b\t\r"],params:[this.id]};
         case 4:
            return {object:this.api.kernel.GameManager,method:this.api.kernel.GameManager["\x1b\t\x0f"],params:[9,this.id]};
         case 5:
            return {object:this.api.kernel.GameManager,method:this.api.kernel.GameManager["\x1b\t\x0f"],params:[10,this.id]};
         case 6:
            return {object:this.api.kernel.GameManager,method:this.api.kernel.GameManager["\x1b\t\x0f"],params:[11,this.id]};
         case 7:
            return {object:this.api.kernel.GameManager,method:this.api.kernel.GameManager["\x1b\t\x0f"],params:[17,this.id]};
         case 8:
            return {object:this.api.kernel.GameManager,method:this.api.kernel.GameManager["\x1b\t\x0f"],params:[18,this.id]};
         default:
            return new Object();
      }
   }
}
