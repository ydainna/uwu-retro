class dofus.datacenter.§\x18\x1d\x19§ extends ank.battlefield.datacenter.§\x1b\x07\x04§
{
   var §\x1e\b\x1d§ = "static";
   var §\x1c\x01\x19§ = false;
   var §\x1c\x04\r§ = true;
   var §\x1d\x12\x18§ = -1;
   function §\x18\x1d\x19§(sID, §\x16\x1c\x16§, §\x1a\x1b\x1b§, §\x16\x17\x18§, §\x17\x07\x13§, bonus)
   {
      super();
      this.api = _global.api;
      this["\x1d\x13\x0b"] = bonus;
      this.initialize(sID,_loc4_,_loc5_,_loc6_,_loc7_,null);
   }
   function §\x19\f§(§\x1b\x17\x16§)
   {
      this["\x1b\x1e\x05"] = new Array();
      var _loc3_ = _loc2_.split(",");
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         var _loc5_ = this.api.lang["\x17\x1c\t"](_loc3_[_loc4_]);
         this["\x1b\x1e\x05"].push(_loc5_.n);
         if(_loc5_.a != -1)
         {
            this["\x1d\x12\x18"] = _loc5_.a;
         }
         _loc4_ = _loc4_ + 1;
      }
      return this["\x04\x1b"]();
   }
   function §\x04\x1b§()
   {
      return this["\x17\x1c\x0e"]();
   }
   function §\x17\x1c\x0e§(§\x1a\x13\x16§)
   {
      _loc2_ = _loc2_ != undefined ? _loc2_ : "\n";
      var _loc3_ = new Array();
      var _loc4_ = 0;
      while(_loc4_ < this["\x1b\x1d\x14"].length)
      {
         _loc3_.push({level:Number(this["\x1b\x1d\x14"][_loc4_]),name:this["\x1b\x1e\x05"][_loc4_]});
         _loc4_ = _loc4_ + 1;
      }
      _loc3_.sortOn(["level"],Array.DESCENDING | Array.NUMERIC);
      var _loc5_ = new String();
      var _loc6_ = 0;
      while(_loc6_ < _loc3_.length)
      {
         var _loc7_ = _loc3_[_loc6_];
         _loc5_ += _loc7_.name + " (" + _loc7_.level + ")" + _loc2_;
         _loc6_ = _loc6_ + 1;
      }
      return _loc5_;
   }
   function §\x16\x02\x17§()
   {
      var _loc2_ = this.api.datacenter.Map;
      return "Groupe niveau " + this["\x1b\x11\x05"] + " en " + _loc2_.x + "," + _loc2_.y + " : <br/>" + this["\x17\x1c\x0e"]("<br/>");
   }
   function §\x17\x04§(§\x1b\x17\x16§)
   {
      this["\x1b\x1d\x14"] = _loc2_.split(",");
      return this["\x02\x07"]();
   }
   function §\f\b§()
   {
      var _loc2_ = 0;
      var _loc3_ = 0;
      while(_loc3_ < this["\x1b\x1d\x14"].length)
      {
         _loc2_ += Number(this["\x1b\x1d\x14"][_loc3_]);
         _loc3_ = _loc3_ + 1;
      }
      return _loc2_;
   }
   function §\x1e\x13\x02§()
   {
      return this["\x1d\x13\x0b"];
   }
   function §\x1e\x11\x19§()
   {
      return new dofus.datacenter.Alignment(this["\x1d\x12\x18"],0);
   }
}
