class ank.battlefield.datacenter.§\x1b\x07\x04§ extends Object
{
   static var ANGELS_OF_THE_WORLD_SPRITE_ID = "999";
   static var ANGELS_OF_THE_WORLD_REPLACEMENT_SPRITE_ID = "8023";
   var §\x16\x03\x06§ = true;
   var §\x16\b\x18§ = false;
   var §\x1d\x13\x1d§ = -1;
   var §\x1d\x16\x12§ = -1;
   var §\x1e\b\x1d§ = "static";
   var §\x1e\f\x18§ = "static";
   var §\x1d\x1d\x06§ = 1;
   var §\x1c\x04\x1a§ = false;
   var §\x1c\x01\x19§ = true;
   var §\x1c\x04\r§ = false;
   var §\x1c\x04\f§ = false;
   var §\x1c\x07\x03§ = false;
   var §\x1c\x05\x1d§ = false;
   var §\x1c\x0b\x16§ = false;
   var §\x16\r\x06§ = false;
   var _bIsInvisibleInFight = false;
   function §\x1b\x07\x04§(§\x19\b\x0b§, §\x17\x0f\x0b§, §\x1a\x1b\x1b§, §\x19\x04\x12§, §\x19\x06\x01§)
   {
      super();
      this.initialize(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_);
   }
   function initialize(sID, §\x17\x0f\x0b§, §\x1a\x1b\x1b§, §\x19\x04\x12§, §\x19\x06\x01§)
   {
      this.id = sID;
      this["\x16\x1c\x16"] = _loc3_;
      this["\x1e\t\x1b"] = _loc4_;
      this["\x1a\x0b\x03"]();
      this["\x1d\x13\x13"] = Number(_loc5_);
      this["\x1d\x15\x11"] = _loc6_ != undefined ? Number(_loc6_) : 1;
      this["\x1e\x05\n"] = new ank.utils.["\x1a\x14\x02"](1000);
      this["\x1c\x05\t"] = false;
      this["\x1c\f\x07"] = true;
      this["\x1c\x02\x19"] = false;
      this["\x1c\x10\x17"] = new ank.utils.ExtendedObject();
      mx.["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
      this["\x1e\r\x04"] = new Object();
      this._nCreationInstant = 4382;
   }
   function §\x1a\x0b\x03§()
   {
      var _loc2_ = this["\x1e\t\x1b"].split(".")[0].split("/");
      this["\x1e\t\x1c"] = _loc2_[_loc2_.length - 1];
   }
   function §\x18\x0e\x14§(§\x16\x04\x05§)
   {
      return this.id == _loc2_.datacenter.Player.ID;
   }
   function §\x1e\x16§(§\x16\x14\x04§)
   {
      this["\x1c\x0b\x16"] = _loc2_;
      return this["\f\x14"]();
   }
   function §\f\x14§()
   {
      return this["\x1c\x0b\x16"];
   }
   function §\x1e\x1b\x0b§()
   {
      return this["\x1c\x10\x17"]["\x17\x1a\x17"]() != 0;
   }
   function §\x1e\x1b\x0e§()
   {
      return this["\x18\x15\x0b"] != undefined;
   }
   function §\x1e\x15\x18§()
   {
      return this["\x1d\x13\x1d"];
   }
   function §\x10\x17§(§\x19\x05\x03§)
   {
      this["\x1d\x13\x1d"] = _loc2_;
      return this["\x1e\x15\x18"]();
   }
   function §\x02\n§()
   {
      return this["\x1c\x10\x17"];
   }
   function §\x02\r§()
   {
      return this["\x1e\x04\b"];
   }
   function §\x17\x06§(§\x19\x13\r§)
   {
      this["\x1e\x04\b"] = _loc2_;
      return this["\x02\r"]();
   }
   function §\x18\x05\x04§()
   {
      return this["\x1e\x02\x0f"] != undefined;
   }
   function §\x18\x05\x05§()
   {
      return this["\x1e\x02\x10"] != undefined;
   }
   function §\x1e\x14\x1b§()
   {
      return this["\x1e\x02\x0f"];
   }
   function §\x10\x05§(§\x19\x11\f§)
   {
      this["\x1e\x02\x0f"] = _loc2_;
      return this["\x1e\x14\x1b"]();
   }
   function §\x1e\x14\x1c§()
   {
      return this["\x1e\x02\x10"];
   }
   function §\x10\x06§(§\x19\x11\f§)
   {
      this["\x1e\x02\x10"] = _loc2_;
      return this["\x1e\x14\x1c"]();
   }
   function get creationInstant()
   {
      return this._nCreationInstant;
   }
   function §\x1e\x1b\x03§()
   {
      return this["\x1e\t\x1b"];
   }
   function §\x14\x03§(§\x1a\x1b\x1b§)
   {
      this["\x17\x07\x19"]({type:"gfxFileChanged",value:_loc2_});
      this["\x1e\t\x1b"] = _loc2_;
      this["\x1a\x0b\x03"]();
      return this["\x1e\x1b\x03"]();
   }
   function §\x1e\x1b\x04§()
   {
      return this["\x1e\t\x1c"];
   }
   function §\x1e\x18\t§()
   {
      return this["\x1e\b\x1d"];
   }
   function §\x12\x02§(§\x1b\x17\x16§)
   {
      this["\x1e\b\x1d"] = _loc2_;
      return this["\x1e\x18\t"]();
   }
   function §\n\x04§()
   {
      return this["\x1e\f\x18"];
   }
   function §\x1d\x12§(§\x1b\x17\x16§)
   {
      this["\x1e\f\x18"] = _loc2_;
      return this["\n\x04"]();
   }
   function §\n\x05§()
   {
      return this["\x1d\x1d\f"];
   }
   function §\x1d\x13§(§\x1b\x17\x16§)
   {
      this["\x1d\x1d\f"] = _loc2_;
      return this["\n\x05"]();
   }
   function §\t\x16§()
   {
      return this["\x1d\x1d\x06"];
   }
   function §\x1d\f§(§\x1b\x17\x16§)
   {
      this["\x1d\x1d\x06"] = Number(_loc2_);
      return this["\t\x16"]();
   }
   function §\x01\x04§()
   {
      return this["\x1c\f\x07"];
   }
   function §\x16\t§(§\x1b\x17\x16§)
   {
      this["\x1c\f\x07"] = _loc2_;
      return this["\x01\x04"]();
   }
   function get isInvisibleInFight()
   {
      return this._bIsInvisibleInFight;
   }
   function set isInvisibleInFight(bIsInvisibleInFight)
   {
      this._bIsInvisibleInFight = bIsInvisibleInFight;
   }
   function setInvisibleInFight(bIsInvisibleInFight)
   {
      this._bIsInvisibleInFight = bIsInvisibleInFight;
   }
   function §\x1e\x1d\x15§(§\x1b\x18\n§)
   {
      return this["\x1c\x04\x1a"];
   }
   function §\x15\x17§(§\x1b\x17\x16§)
   {
      this.mc["\x18\x0e\x04"] = this["\x1c\x04\x1a"] = _loc2_;
      return this["\x1e\x1d\x15"]();
   }
   function §\x1e\x1d\x17§()
   {
      return this["\x1c\x05\t"];
   }
   function §\x15\x18§(§\x1b\x17\x16§)
   {
      if(!_loc2_)
      {
         this["\x1d\x16\x12"] = -1;
         this["\x1e\x0b\x05"] = undefined;
         this["\x1e\x0b\x04"] = undefined;
      }
      this["\x1c\x05\t"] = _loc2_;
      if(this["\x18\x05\x04"]())
      {
         this["\x16\x17\x03"].isInMove = _loc2_;
      }
      return this["\x1e\x1d\x17"]();
   }
   function §\x04\x0f§()
   {
      return this["\x1e\x0b\x05"];
   }
   function §\x19\x01§(§\x1b\x03\x1b§)
   {
      this["\x1e\x0b\x05"] = _loc2_;
      return this["\x04\x0f"]();
   }
   function §\x04\x0e§()
   {
      return this["\x1e\x0b\x04"];
   }
   function §\x18\x1d§(§\x1b\x03\x1a§)
   {
      this["\x1e\x0b\x04"] = _loc2_;
      return this["\x04\x0e"]();
   }
   function §\x1e\x1d\x02§()
   {
      return this["\x1c\x02\x19"];
   }
   function §\x15\x0e§(§\x1b\x17\x16§)
   {
      this["\x1c\x02\x19"] = _loc2_;
      return this["\x1e\x1d\x02"]();
   }
   function §\x1e\x15\x05§()
   {
      return this["\x1d\x13\x13"];
   }
   function §\x10\x07§(§\x1b\x17\x16§)
   {
      this["\x1d\x13\x13"] = Number(_loc2_);
      return this["\x1e\x15\x05"]();
   }
   function §\x1e\x1a\x1b§()
   {
      return this["\x1d\x16\x12"];
   }
   function §\x13\x1c§(§\x19\x07\x1a§)
   {
      this["\x1d\x16\x12"] = _loc2_;
      return this["\x1e\x1a\x1b"]();
   }
   function §\x1e\x18\x16§()
   {
      return this["\x1d\x15\x11"];
   }
   function §\x12\x0b§(§\x1b\x17\x16§)
   {
      this["\x1d\x15\x11"] = Number(_loc2_);
      return this["\x1e\x18\x16"]();
   }
   function §\x1e\x16\x04§()
   {
      return this["\x1d\x14\x02"];
   }
   function §\x10\x1a§(§\x1b\x17\x16§)
   {
      this["\x1d\x14\x02"] = Number(_loc2_);
      return this["\x1e\x16\x04"]();
   }
   function §\x1e\x16\x05§()
   {
      return this["\x1d\x14\x03"];
   }
   function §\x10\x1b§(§\x1b\x17\x16§)
   {
      this["\x1d\x14\x03"] = Number(_loc2_);
      return this["\x1e\x16\x05"]();
   }
   function §\x1e\x16\x06§()
   {
      return this["\x1d\x14\x04"];
   }
   function §\x10\x1c§(§\x1b\x17\x16§)
   {
      this["\x1d\x14\x04"] = Number(_loc2_);
      return this["\x1e\x16\x06"]();
   }
   function §\x1e\x11\r§()
   {
      return this["\x1b\x1b\x0f"];
   }
   function §\x0e\x07§(§\x1b\x17\x16§)
   {
      this["\x17\x07\x19"]({type:"accessoriesChanged",value:_loc2_});
      this["\x1b\x1b\x0f"] = _loc2_;
      return this["\x1e\x11\r"]();
   }
   function §\b\x17§()
   {
      return this["\x1e\x05\n"];
   }
   function §\x1c\x0b§(§\x1b\x17\x16§)
   {
      this["\x1e\x05\n"] = _loc2_;
      return this["\b\x17"]();
   }
   function §\x1e\x11\x1a§()
   {
      return this["\x1c\x01\x19"];
   }
   function §\x0e\x11§(§\x16\b\x16§)
   {
      this["\x1c\x01\x19"] = _loc2_;
      return this["\x1e\x11\x1a"]();
   }
   function §\x1e\x1a\x16§()
   {
      return this["\x1c\x04\r"];
   }
   function §\x13\x17§(§\x16\f\x0b§)
   {
      this["\x1c\x04\r"] = _loc2_;
      return this["\x1e\x1a\x16"]();
   }
   function §\x1e\x1a\x15§()
   {
      return this["\x1c\x04\f"];
   }
   function §\x13\x16§(§\x16\f\x07§)
   {
      this["\x1c\x04\f"] = _loc2_;
      return this["\x1e\x1a\x15"]();
   }
   function §\x05\b§()
   {
      return this["\x1c\x07\x03"];
   }
   function §\x19\x10§(§\x16\x0f\f§)
   {
      this["\x1c\x07\x03"] = _loc2_;
      return this["\x05\b"]();
   }
   function §\x04\t§()
   {
      return this["\x1e\x04\x11"];
   }
   function §\x18\x19§(§\x1b\x17\x07§)
   {
      this["\x1e\x04\x11"] = _loc2_;
      return this["\x04\t"]();
   }
   function §\x1e\x1e\x05§()
   {
      return this["\x1e\x04\x11"] != undefined;
   }
   function §\x1e\x1e\f§()
   {
      return this["\x1c\x05\x1d"];
   }
   function §\x16\x01§(§\x16\r\x19§)
   {
      this["\x1c\x05\x1d"] = _loc2_;
      return this["\x1e\x1e\f"]();
   }
   function §\n\x07§()
   {
      return this["\x1e\r\x04"];
   }
   function §\x18\x0e\n§(§\x1b\t\x16§)
   {
      return this["\x1e\r\x04"][_loc2_] == true;
   }
   function setState(§\x16\x04\x05§, §\x1b\t\x16§, §\x16\b\r§)
   {
      this["\x1e\r\x04"][_loc3_] = _loc4_;
      if(_loc4_)
      {
         dofus.datacenter.States.onStateAdded(_loc2_,this,_loc3_);
      }
      else
      {
         dofus.datacenter.States.onStateRemoved(_loc2_,this,_loc3_);
      }
      this["\x17\x07\x19"]({type:"statesChanged",value:this["\x1e\r\x04"]});
   }
}
