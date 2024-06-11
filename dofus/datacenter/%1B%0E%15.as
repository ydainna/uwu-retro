class dofus.datacenter.§\x1b\x0e\x15§ extends ank.battlefield.datacenter.§\x1b\x07\x04§
{
   static var §\x1a\x01\f§ = "BlockJoiner";
   static var §\x1a\x01\x0e§ = "BlockSpectator";
   static var §\x1a\x01\r§ = "BlockJoinerExceptPartyMember";
   static var §\x1a\x01\x0f§ = "NeedHelp";
   function §\x1b\x0e\x15§(sID, §\x17\x0f\x0b§, §\x1a\x1b\x1b§, nCellNum, nColor1, §\x19\x10\x06§, §\x19\x03\x05§)
   {
      super();
      this.initialize(sID,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
   }
   function initialize(sID, §\x17\x0f\x0b§, §\x1a\x1b\x1b§, nCellNum, nColor1, §\x19\x10\x06§, §\x19\x03\x05§)
   {
      super.initialize(sID,_loc4_,_loc5_,_loc6_);
      this.color1 = _loc7_;
      this["\x1d\x1e\x18"] = Number(_loc8_);
      this["\x1e\x02\x07"] = new dofus.datacenter.Alignment(Number(_loc9_));
      this["\x1b\x1e\x0e"] = new Object();
      this["\x1a\x01\b"] = new Object();
   }
   function §\x1a\x15\t§(§\x19\x12\x07§)
   {
      this["\x1e\x02\x14"] = _loc2_;
   }
   function §\x15\x1e\x05§(§\x1a\x01\x07§)
   {
      this["\x1b\x1e\x0e"][_loc2_.id] = _loc2_;
   }
   function §\x1a\f\x14§(sPlayerID)
   {
      delete this["\x1b\x1e\x0e"][sPlayerID];
   }
   function §\f\r§()
   {
      return this["\x1d\x1e\x18"];
   }
   function §\x1e\x11\x19§()
   {
      return this["\x1e\x02\x07"];
   }
   function §\x04\x1b§()
   {
      var _loc2_ = new String();
      for(var k in this["\x1b\x1e\x0e"])
      {
         _loc2_ += "\n" + this["\x1b\x1e\x0e"][k].name + "(" + this["\x1b\x1e\x0e"][k].level + ")";
      }
      return _loc2_.substr(1);
   }
   function §\f\b§()
   {
      var _loc2_ = 0;
      for(var k in this["\x1b\x1e\x0e"])
      {
         _loc2_ += Number(this["\x1b\x1e\x0e"][k].level);
      }
      return _loc2_;
   }
   function §\x1e\x16\x1c§()
   {
      var _loc2_ = 0;
      for(var k in this["\x1b\x1e\x0e"])
      {
         _loc2_ = _loc2_ + 1;
      }
      return _loc2_;
   }
   function §\x1e\x15\n§()
   {
      return this["\x1e\x02\x14"];
   }
   function §\x1e\x19\x18§()
   {
      var _loc2_ = this["\x1e\x02\x14"]["\x1b\x0f\x02"];
      for(var k in _loc2_)
      {
         if(k != this.id)
         {
            var _loc3_ = k;
            break;
         }
      }
      return _loc2_[_loc3_];
   }
   function refreshSwordSprite()
   {
      if(this.type != 0)
      {
         return undefined;
      }
      var _loc2_ = _global.api;
      var _loc3_ = false;
      var _loc4_ = dofus.graphics.gapi.ui.Party(_loc2_.ui.getUIComponent("Party"));
      for(var k in this["\x1b\x1e\x0e"])
      {
         var _loc5_ = this["\x1b\x1e\x0e"][k];
         if(_loc4_["\x17\x1b\x18"](_loc5_.id) != undefined)
         {
            _loc3_ = true;
            var k = _loc0_;
            _loc5_ = this["\x1b\x1e\x0e"][k];
            var _loc6_ = _loc5_.id["\x18\x01\x14"]();
            _loc4_ = "gfxFile"[_loc6_].ui.Party(_loc2_.ui.getUIComponent("Party"));
            §§enumerate(this["\x1b\x1e\x0e"]);
            var _loc0_ = null;
            _loc2_ = this[_loc0_ = §§enumeration()];
            _loc3_ = false;
            _loc3_ = true;
            §§push(_loc3_);
            §§push(this.alignment.index);
            §§push(this.type);
            §§push(3);
            §§push(dofus);
            §§push(_loc6_ == this.gfxFile);
            §§push(_loc4_["\x17\x1b\x18"](dofus.graphics.gapi) == undefined);
            break;
         }
      }
      _loc6_ = dofus.Constants["\x18\x01\x14"](this.type,this.alignment.index,_loc3_);
      if(_loc6_ != this.gfxFile)
      {
         this.gfxFile = _loc6_;
         this.mc.draw();
      }
   }
}
