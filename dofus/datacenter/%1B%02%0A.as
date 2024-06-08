class dofus.§\x17\x04\x19§.§\x1b\x02\n§ extends Object
{
   function §\x1b\x02\n§(§\x19\b\x0b§, §\x19\x0b\x18§, §\x19\x0b\x19§, §\x19\x0b\x1a§, §\x19\x0b\x1b§)
   {
      super();
      this.initialize(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_);
   }
   function §\x1e\x1c\x05§()
   {
      return this["\x1d\x17\x01"];
   }
   function §\x1e\x18\r§()
   {
      return this["\x1e\x05\x0e"].d;
   }
   function §\x01\x10§()
   {
      return this["\x1e\x05\x0e"].j;
   }
   function §\x1e\x17\x06§()
   {
      return this["\x1e\x05\x0e"].c;
   }
   function §\x01\x07§()
   {
      if(this["\x1e\x05\x0e"].i == undefined)
      {
         return null;
      }
      return new dofus.datacenter.["\x18\x10\x15"](0,this["\x1e\x05\x0e"].i);
   }
   function §\x1e\x1c\x12§()
   {
      return this.api.lang["\x17\x19\x0b"](this["\x1e\x05\x0e"].io).n;
   }
   function §\x05\x1b§()
   {
      return this._nParam1;
   }
   function §\x05\x1c§()
   {
      return this._nParam2;
   }
   function §\x05\x1d§()
   {
      return this._nParam3;
   }
   function §\x06\x01§()
   {
      return this._nParam4;
   }
   function §\x1e\x17\x05§()
   {
      if(this["\x1e\x02\x1b"] instanceof Array)
      {
         return this["\x1e\x02\x1b"];
      }
      this["\x1e\x02\x1b"] = new Array();
      var _loc2_ = 0;
      while(_loc2_ < this["\x1e\x05\x0e"].cl.length)
      {
         var _loc3_ = this.api.lang["\x17\x19\x1d"](this["\x1e\x05\x0e"].cl[_loc2_]).ep;
         if(_loc3_ <= this.api.datacenter.Basics.aks_current_regional_version && (_loc3_ != undefined && !_global.isNaN(_loc3_)))
         {
            this["\x1e\x02\x1b"].push(this["\x1e\x05\x0e"].cl[_loc2_]);
         }
         _loc2_ = _loc2_ + 1;
      }
      return this["\x1e\x02\x1b"];
   }
   function initialize(§\x19\b\x0b§, §\x19\x0b\x18§, §\x19\x0b\x19§, §\x19\x0b\x1a§, §\x19\x0b\x1b§)
   {
      this.api = _global.api;
      this["\x1d\x17\x01"] = _loc2_;
      if(_loc3_ != 0)
      {
         this._nParam1 = _loc3_;
      }
      if(_loc4_ != 0)
      {
         this._nParam2 = _loc4_;
      }
      if(_loc5_ != 0)
      {
         this._nParam3 = _loc5_;
      }
      if(_loc6_ != 0)
      {
         this._nParam4 = _loc6_;
      }
      this["\x1e\x05\x0e"] = this.api.lang["\x17\x1e\x15"](_loc2_);
      this.skillName = this.description;
   }
   function §\x18\x01\r§(§\x16\r\x1d§, §\x16\x10\x13§, §\x16\f\f§, §\x16\x0e\r§, §\x16\r\x07§, §\x16\x0f\x16§)
   {
      if(this["\x17\x03\x02"] == undefined || this["\x17\x03\x02"].length == 0)
      {
         return "V";
      }
      var _loc8_ = this["\x17\x03\x02"].split("?");
      var _loc9_ = _loc8_[0].split("&");
      var _loc10_ = _loc8_[1].split(":");
      var _loc11_ = _loc10_[0];
      var _loc12_ = _loc10_[1];
      var _loc13_ = 0;
      while(_loc13_ < _loc9_.length)
      {
         var _loc14_ = _loc9_[_loc13_];
         var _loc15_ = _loc14_.charAt(0) == "!";
         if(_loc15_)
         {
            _loc14_ = _loc14_.substr(1);
         }
         switch(_loc14_)
         {
            case "J":
               if(_loc15_)
               {
                  _loc2_ = !_loc2_;
               }
               if(!_loc2_)
               {
                  return _loc12_;
               }
               break;
            case "O":
               if(_loc15_)
               {
                  _loc3_ = !_loc3_;
               }
               if(!_loc3_)
               {
                  return _loc12_;
               }
               break;
            case "S":
               if(_loc15_)
               {
                  _loc4_ = !_loc4_;
               }
               if(!_loc4_)
               {
                  return _loc12_;
               }
               break;
            case "L":
               if(_loc15_)
               {
                  _loc5_ = !_loc5_;
               }
               if(!_loc5_)
               {
                  return _loc12_;
               }
               break;
            case "I":
               if(_loc15_)
               {
                  _loc6_ = !_loc6_;
               }
               if(!_loc6_)
               {
                  return _loc12_;
               }
               break;
            case "N":
               if(_loc15_)
               {
                  _loc7_ = !_loc7_;
               }
               if(!_loc7_)
               {
                  return _loc12_;
               }
               break;
         }
         _loc13_ = _loc13_ + 1;
      }
      return _loc11_;
   }
}
