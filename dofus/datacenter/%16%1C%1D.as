class dofus.§\x17\x04\x19§.§\x16\x1c\x1d§ extends Object
{
   static var CLOSE_COMBAT_SPELL_ID = 0;
   function §\x16\x1c\x1d§(§\x19\x13\x07§, §\x19\x05\x05§)
   {
      super();
      this.initialize(_loc3_,_loc4_);
   }
   function §\x1e\x1c\x04§()
   {
      return dofus.datacenter.["\x16\x1c\x1d"].CLOSE_COMBAT_SPELL_ID;
   }
   function §\x01\x03§()
   {
      return true;
   }
   function §\x03\r§()
   {
      return 1;
   }
   function §\x06\x13§()
   {
      return 0;
   }
   function §\x01\x07§()
   {
      return this["\x1e\x03\x18"];
   }
   function §\n\x12§()
   {
      return false;
   }
   function §\x1e\x1b\x06§()
   {
      return false;
   }
   function §\f\x0b§()
   {
      return false;
   }
   function §\x1e\x1c\x03§()
   {
      if(this["\x1e\x03\x18"] == undefined)
      {
         return dofus.Constants["\x17\x06\x06"];
      }
      return this["\x1e\x03\x18"].iconFile;
   }
   function get isUnusable()
   {
      return this["\x1e\x03\x18"].isCaptureItem;
   }
   function §\x04\x1b§()
   {
      return this["\x1e\x03\x18"].name != undefined ? this["\x1e\x03\x18"].name : this.api.lang["\x18\x01\x07"](0).n;
   }
   function §\x1e\x12\x04§()
   {
      if(this["\x1e\x03\x18"] != undefined)
      {
         return this["\x1e\x03\x18"]["\x16\x04\x03"];
      }
      var _loc2_ = this.api.kernel["\x1b\x06\x10"]["\x18\x01\x04"](dofus.managers["\x1b\x06\x10"].ACTION_BOOST_ITEM_AP_COST,dofus.datacenter.["\x16\x1c\x1d"].CLOSE_COMBAT_SPELL_ID);
      var _loc3_ = this["\x17\x16\x0e"](2);
      if(_loc2_ > -1)
      {
         _loc3_ -= _loc2_;
      }
      return Math.max(1,_loc3_);
   }
   function §\x07\x05§()
   {
      if(this["\x1e\x03\x18"] == undefined)
      {
         return this["\x17\x16\x0e"](3);
      }
      return this["\x1e\x03\x18"]["\x1a\t\x14"];
   }
   function §\x07\x04§()
   {
      if(this["\x1e\x03\x18"] == undefined)
      {
         return this["\x17\x16\x0e"](4);
      }
      return this["\x1e\x03\x18"]["\x1a\t\x13"];
   }
   function get rangeModerator()
   {
      return !this["\x16\x15\x1a"] ? 0 : this.api.datacenter.Player.data["\x16\x19\x06"]["\x17\x1c\x03"](19) + this.api.datacenter.Player.RangeModerator;
   }
   function §\x07\x07§()
   {
      return (this["\x1a\t\x14"] == 0 ? "" : this["\x1a\t\x14"] + " " + this.api.lang.getText("TO_RANGE") + " ") + this["\x1a\t\x13"];
   }
   function §\x1e\x17\t§()
   {
      if(this["\x1e\x03\x18"] == undefined)
      {
         return this["\x17\x16\x0e"](5);
      }
      return this["\x1e\x03\x18"]["\x17\x03\b"];
   }
   function §\x1e\x17\x07§()
   {
      if(this["\x1e\x03\x18"] == undefined)
      {
         return this["\x17\x16\x0e"](6);
      }
      return this["\x1e\x03\x18"]["\x17\x03\x06"];
   }
   function §\x02\t§()
   {
      if(this["\x1e\x03\x18"] == undefined)
      {
         return this["\x17\x16\x0e"](7);
      }
      return this["\x1e\x03\x18"]["\x18\x15\x06"];
   }
   function §\x02\b§()
   {
      if(this["\x1e\x03\x18"] == undefined)
      {
         return this["\x17\x16\x0e"](8);
      }
      return this["\x1e\x03\x18"]["\x18\x15\x05"];
   }
   function §\x1e\x1a\x19§()
   {
      return false;
   }
   function §\x1e\x13\x1c§()
   {
      return false;
   }
   function §\x1e\x15\x1a§()
   {
      return -1;
   }
   function §\x02\x03§()
   {
      return 0;
   }
   function §\x02\x02§()
   {
      return 0;
   }
   function §\x1e\x18\x0b§()
   {
      return 0;
   }
   function §\x1e\x18\x10§()
   {
      if(this["\x1e\x03\x18"] == undefined)
      {
         var _loc2_ = this["\x17\x16\x0e"](0);
         return this.api.kernel.GameManager["\x18\x01\x01"](_loc2_,true,0);
      }
      var _loc3_ = this["\x1e\x03\x18"]["\x1b\x18\x02"];
      var _loc4_ = new Array();
      var _loc5_ = 0;
      while(_loc5_ < _loc3_.length)
      {
         _loc4_.push(_loc3_[_loc5_].description);
         _loc5_ = _loc5_ + 1;
      }
      return _loc4_.join("\n");
   }
   function §\x1e\x18\x0f§()
   {
      if(this["\x1e\x03\x18"] == undefined)
      {
         var _loc2_ = this["\x17\x16\x0e"](0);
         return this.api.kernel.GameManager["\x18\x01\x01"](_loc2_,false,0);
      }
      var _loc3_ = this["\x1e\x03\x18"]["\x19\x0b\x0b"];
      var _loc4_ = new Array();
      var _loc5_ = 0;
      while(_loc5_ < _loc3_.length)
      {
         _loc4_.push(_loc3_.description);
         _loc5_ = _loc5_ + 1;
      }
      return _loc4_.join(", ");
   }
   function §\x1e\x18\x0e§()
   {
      if(this["\x1e\x03\x18"] == undefined)
      {
         var _loc2_ = this["\x17\x16\x0e"](1);
      }
      else
      {
         _loc2_ = this["\x1e\x03\x18"]["\x17\x03\n"];
      }
      return this.api.kernel.GameManager["\x18\x01\x01"](_loc2_,false,0);
   }
   function §\x1e\x19\r§()
   {
      if(this["\x1e\x03\x18"] == undefined)
      {
         var _loc2_ = this["\x17\x16\x0e"](0);
      }
      else
      {
         _loc2_ = this["\x1e\x03\x18"]["\x19\x0b\x0b"];
      }
      return this.api.kernel.GameManager["\x18\x01\x02"](_loc2_,0);
   }
   function §\x1e\x19\x0b§()
   {
      if(this["\x1e\x03\x18"] == undefined)
      {
         var _loc2_ = this["\x17\x16\x0e"](1);
      }
      else
      {
         _loc2_ = this["\x1e\x03\x18"]["\x17\x03\n"];
      }
      return this.api.kernel.GameManager["\x18\x01\x02"](_loc2_,0);
   }
   function §\x1e\x19\x13§()
   {
      var _loc2_ = {none:false,neutral:false,earth:false,fire:false,water:false,air:false};
      var _loc3_ = this["\x17\f\n"];
      for(var k in _loc3_)
      {
         var _loc4_ = _loc3_[k]["\x17\f\x12"];
         switch(_loc4_)
         {
            case "N":
               _loc2_.neutral = true;
               break;
            case "E":
               _loc2_.earth = true;
               break;
            case "F":
               _loc2_.fire = true;
               break;
            case "W":
               _loc2_.water = true;
               break;
            case "A":
               _loc2_.air = true;
               break;
            default:
               _loc2_.none = true;
         }
      }
      return _loc2_;
   }
   function §\x1e\x19\x10§()
   {
      return this["\x1b\x1c\x16"];
   }
   function §\x07\x16§()
   {
      return this["\x1b\x1e\x13"];
   }
   function §\x1e\x1a\x12§()
   {
      return this["\x1b\x1c\x1a"];
   }
   function §\x04\x1c§()
   {
      return this["\x1b\x1e\x13"].length > 0 || this["\x1b\x1c\x1a"].length > 0;
   }
   function initialize(§\x19\x13\x07§, §\x19\x05\x05§)
   {
      this.api = _global.api;
      this["\x1e\x03\x18"] = _loc2_;
      if(_loc2_ == undefined)
      {
         this["\x1e\x02\x15"] = this.api.lang.getClassText(_loc3_).cc;
      }
      var _loc4_ = this.api.lang["\x17\x19\x1a"](this["\x1e\x03\x18"].type).z;
      if(_loc4_ == undefined)
      {
         _loc4_ = "Pa";
      }
      var _loc5_ = _loc4_.split("");
      this["\x1b\x1c\x16"] = new Array();
      var _loc6_ = 0;
      while(_loc6_ < _loc5_.length)
      {
         this["\x1b\x1c\x16"].push({shape:_loc5_[_loc6_],size:ank.utils.Compressor.decode64(_loc5_[_loc6_ + 1])});
         _loc6_ += 2;
      }
      var _loc7_ = this.api.lang.getClassText(this.api.datacenter.Player.Guild).cc;
      this["\x1b\x1e\x13"] = _loc7_[9];
      this["\x1b\x1c\x1a"] = _loc7_[10];
   }
   function §\x17\x16\x0e§(§\x19\f\x12§)
   {
      return this["\x1e\x02\x15"][_loc2_];
   }
}
