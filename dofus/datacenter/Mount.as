class dofus.datacenter.Mount extends Object
{
   var §\x1b\x16\x13§ = false;
   function Mount(nModelID, nChevauchorGfxID, bNewBorn)
   {
      super();
      mx.["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
      this["\x19\x06\x19"] = bNewBorn;
      this.modelID = nModelID;
      this["\x1c\x11\x16"] = _global.api.lang["\x17\x1c\x0b"](this.modelID);
      this.gfxFile = dofus.Constants["\x16\x1c\x1a"] + this["\x1c\x11\x16"].g + ".swf";
      this["\x16\x1b\x03"] = nChevauchorGfxID;
   }
   function §\x19\f§(§\x1b\x17\x16§)
   {
      this["\x1e\x0b\x06"] = _loc2_;
      this["\x17\x07\x19"]({type:"nameChanged",name:_loc2_});
      return this["\x04\x1b"]();
   }
   function §\x04\x1b§()
   {
      return this["\x1e\x0b\x06"];
   }
   function §\x1a\x0f§(§\x1b\x17\x16§)
   {
      this["\x1d\x1b\x03"] = _loc2_;
      this["\x17\x07\x19"]({type:"podsChanged",pods:_loc2_});
      return this["\x06\x10"]();
   }
   function §\x06\x10§()
   {
      return this["\x1d\x1b\x03"];
   }
   function §\x01\x15§()
   {
      return this["\x1c\x11\x16"].n;
   }
   function §\x04\x04§()
   {
      return this["\x1c\x11\x16"].n;
   }
   function §\x1e\x1c\x03§()
   {
      return dofus.Constants["\x18\x04\x16"] + this["\x1c\x11\x16"].g + ".swf";
   }
   function §\x10\x16§(§\x19\b\x0b§)
   {
      this["\x1d\x13\x1c"] = _loc2_;
      this["\x16\x1b\x02"] = dofus.Constants["\x16\x1b\x04"] + _loc2_ + ".swf";
      return this["\x1e\x15\x17"]();
   }
   function §\x1e\x15\x17§()
   {
      return this["\x1d\x13\x1c"];
   }
   function §\x1e\x1d\x01§()
   {
      for(var k in this["\x16\x17\x01"])
      {
         var _loc2_ = this["\x16\x17\x01"][k].data;
         if(_loc2_ == 9)
         {
            return true;
         }
      }
      return false;
   }
   function §\x1e\x16\x04§()
   {
      if(!_global.isNaN(this.customColor1))
      {
         return this.customColor1;
      }
      return this["\x1c\x11\x16"].c1;
   }
   function §\x1e\x16\x05§()
   {
      if(!_global.isNaN(this.customColor2))
      {
         return this.customColor2;
      }
      return this["\x1c\x11\x16"].c2;
   }
   function §\x1e\x16\x06§()
   {
      if(!_global.isNaN(this.customColor3))
      {
         return this.customColor3;
      }
      return this["\x1c\x11\x16"].c3;
   }
   function §\x18\x0e\x1c§(§\x19\x11\x11§)
   {
      return this["\x1a\x03\x06"] == _loc2_.datacenter.Player.Name;
   }
   function §\x03\x05§()
   {
      return this.maturity == this.maturityMax && (this.maturity != undefined && this.maturityMax != undefined);
   }
   function §\x1e\x19\n§()
   {
      return dofus.datacenter.Item["\x17\x19\x11"](this["\x1b\x1c\x14"],undefined,true,false);
   }
   function §\x1a\x16\x06§(§\x16\x1e\x04§)
   {
      this["\x1e\t\x0b"] = _loc2_;
      this["\x1b\x1c\x14"] = new Array();
      var _loc3_ = _loc2_.split(",");
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         var _loc5_ = _loc3_[_loc4_].split("#");
         _loc5_[0] = _global.parseInt(_loc5_[0],16);
         _loc5_[1] = _loc5_[1] != "0" ? _global.parseInt(_loc5_[1],16) : undefined;
         _loc5_[2] = _loc5_[2] != "0" ? _global.parseInt(_loc5_[2],16) : undefined;
         _loc5_[3] = _loc5_[3] != "0" ? _global.parseInt(_loc5_[3],16) : undefined;
         _loc5_[4] = _loc5_[4];
         this["\x1b\x1c\x14"].push(_loc5_);
         _loc4_ = _loc4_ + 1;
      }
   }
   function §\x18\x02\x01§()
   {
      var _loc2_ = this.modelName;
      _loc2_ += "\n" + _global.api.lang.getText("NAME_BIG") + " : " + this.name;
      _loc2_ += "\n" + _global.api.lang.getText("LEVEL") + " : " + this.level;
      _loc2_ += "\n" + _global.api.lang.getText("CREATE_SEX") + " : " + (!this.sex ? _global.api.lang.getText("ANIMAL_MEN") : _global.api.lang.getText("ANIMAL_WOMEN"));
      _loc2_ += "\n" + _global.api.lang.getText("MOUNTABLE") + " : " + (!this.mountable ? _global.api.lang.getText("NO") : _global.api.lang.getText("YES"));
      _loc2_ += "\n" + _global.api.lang.getText("WILD") + " : " + (!this.wild ? _global.api.lang.getText("NO") : _global.api.lang.getText("YES"));
      if(this.fecondation > 0)
      {
         _loc2_ += "\n" + _global.api.lang.getText("PREGNANT_SINCE",[this.fecondation]);
      }
      else if(this.fecondable)
      {
         _loc2_ += "\n" + _global.api.lang.getText("FECONDABLE");
      }
      return _loc2_;
   }
   function get forceReloadOnContainer()
   {
      return true;
   }
}
