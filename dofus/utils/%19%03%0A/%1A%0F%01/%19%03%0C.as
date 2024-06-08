class dofus.utils.§\x19\x03\n§.§\x1a\x0f\x01§.§\x19\x03\f§ extends dofus.utils.§\x16\x04\x07§ implements dofus.utils.§\x19\x03\n§.§\x1a\x0f\x01§.§\x18\b\x17§
{
   var §\x18\x1d\x0b§ = 2;
   var §\x18\x1a\x18§ = 20;
   var §\x19\x10\t§ = 1;
   var §\x16\x03\x07§ = false;
   var §\x19\x0b\x12§ = [0,1];
   var §\x17\x11\r§ = true;
   var §\x19\x0b\x14§ = true;
   var §\x1b\x16\x0e§ = ["-"];
   var §\x16\x16\x11§ = true;
   var §\x1a\x07\x1a§ = [];
   var §\x1a\x07\x17§ = ["XELOR","IOP","FECA","ENIRIPSA","SADIDA","ECAFLIP","ENUTROF","PANDAWA","SRAM","CRA","OSAMODAS","SACRIEUR","DROP","MULE"];
   var §\x1a\x07\x18§ = [];
   var §\x1a\x07\x19§ = [];
   var §\x16\x07\x06§ = 1;
   var §\x16\x07\x05§ = 0;
   var §\x1a\r\t§ = 2;
   function §\x19\x03\f§()
   {
      super();
   }
   function §\x17\x1c\x02§()
   {
      return this["\x18\x1d\x0b"];
   }
   function §\x17\x1b\x13§()
   {
      return this["\x18\x1a\x18"];
   }
   function §\x17\x1c\x1a§()
   {
      return this["\x19\x10\t"];
   }
   function §\x17\x19\r§()
   {
      return this["\x16\x03\x07"];
   }
   function §\x17\x1c\x16§()
   {
      return this["\x19\x0b\x12"];
   }
   function §\x17\x19\x01§()
   {
      return this["\x17\x11\r"];
   }
   function §\x17\x19\x02§()
   {
      return this["\x19\x0b\x14"];
   }
   function §\x17\x15\b§()
   {
      return this["\x1b\x16\x0e"];
   }
   function §\x17\x18\x1d§()
   {
      return this["\x16\x16\x11"];
   }
   function §\x18\x01\x10§()
   {
      return this["\x1a\x07\x1a"];
   }
   function §\x17\x15\x13§()
   {
      var _loc2_ = new Array();
      var _loc3_ = 0;
      while(_loc3_ < dofus.Constants["\x18\x04\x19"].length)
      {
         var _loc4_ = new ank.utils.ExtendedString(this.api.lang.getClassText(dofus.Constants["\x18\x04\x19"][_loc3_]).sn);
         var _loc5_ = _loc4_["\x1a\r\n"](["é","à","â"],["e","a","a"]).toUpperCase();
         if(_loc5_ == undefined)
         {
            return this["\x1a\x07\x17"];
         }
         _loc2_.push(_loc5_);
         _loc3_ = _loc3_ + 1;
      }
      _loc2_.push("MULE");
      _loc2_.push("DROP");
      return _loc2_;
   }
   function §\x17\x14\x13§()
   {
      return this["\x1a\x07\x18"];
   }
   function §\x17\x17\r§()
   {
      return this["\x1a\x07\x19"];
   }
   function §\x17\x1c\x01§()
   {
      return this["\x16\x07\x06"];
   }
   function §\x17\x1b\x1d§()
   {
      return this["\x16\x07\x05"];
   }
   function §\x17\x1b\x14§()
   {
      return this["\x1a\r\t"];
   }
}
