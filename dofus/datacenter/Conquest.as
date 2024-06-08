class dofus.§\x17\x04\x19§.Conquest extends Object
{
   function Conquest()
   {
      super();
      this.clear();
      eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
   }
   function clear()
   {
      this["\x1c\x10\x04"] = new ank.utils.ExtendedArray();
      this["\x1c\x0e\x1b"] = new ank.utils.ExtendedArray();
   }
   function §\x1e\x11\x17§()
   {
      return this["\x1c\f\r"];
   }
   function §\x0e\r§(§\x16\x17\x0f§)
   {
      this["\x1c\f\r"] = _loc2_;
      this["\x17\x07\x19"]({type:"bonusChanged"});
      return this["\x1e\x11\x17"]();
   }
   function §\x1e\x11\x18§()
   {
      return this["\x1c\f\x0e"];
   }
   function §\x0e\x0e§(§\x16\x17\x0f§)
   {
      this["\x1c\f\x0e"] = _loc2_;
      this["\x17\x07\x19"]({type:"bonusChanged"});
      return this["\x1e\x11\x18"]();
   }
   function §\x07\t§()
   {
      return this["\x1c\f\x10"];
   }
   function §\x1b\x06§(§\x16\x17\x0f§)
   {
      this["\x1c\f\x10"] = _loc2_;
      this["\x17\x07\x19"]({type:"bonusChanged"});
      return this["\x07\t"]();
   }
   function §\x06\x0f§()
   {
      return this["\x1c\x10\x04"];
   }
   function §\x1a\x0e§(§\x1b\x17\x16§)
   {
      this["\x1c\x10\x04"] = _loc2_;
      return this["\x06\x0f"]();
   }
   function §\x1e\x12\x0f§()
   {
      return this["\x1c\x0e\x1b"];
   }
   function §\x0f\x01§(§\x1b\x17\x16§)
   {
      this["\x1c\x0e\x1b"] = _loc2_;
      return this["\x1e\x12\x0f"]();
   }
   function §\r\x12§()
   {
      return this["\x1c\x0e\t"];
   }
   function §\x0f§(§\x1b\x17\x16§)
   {
      this["\x1c\x0e\t"] = _loc2_;
      this["\x17\x07\x19"]({type:"worldDataChanged",value:_loc2_});
      return this["\r\x12"]();
   }
}
