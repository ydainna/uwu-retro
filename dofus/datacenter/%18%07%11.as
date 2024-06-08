class dofus.§\x17\x04\x19§.§\x18\x07\x11§ extends Object
{
   static var §\x18\x04\x13§ = 1;
   static var §\x18\x04\r§ = 2;
   static var §\x18\x04\x0e§ = 4;
   static var §\x18\x04\f§ = 8;
   static var §\x18\x04\x10§ = 16;
   static var §\x18\x04\x0b§ = 32;
   static var §\x18\x04\x0f§ = 64;
   static var §\x18\x04\x12§ = 128;
   static var §\x18\x04\x11§ = 256;
   var §\x1e\x0b\x13§ = new String();
   var §\x1e\n\x02§ = new String();
   function §\x18\x07\x11§(§\x19\b\x0b§)
   {
      super();
      this.initialize(_loc3_);
   }
   function §\x1e\x1c\x05§()
   {
      return this["\x1d\x17\x01"];
   }
   function set instanceID(nInstanceID)
   {
      this._nInstanceID = nInstanceID;
   }
   function get instanceID()
   {
      return this._nInstanceID;
   }
   function §\x04\x1b§()
   {
      var _loc2_ = this.api.lang["\x17\x0f\x12"](this["\x1e\x0b\x06"]);
      if(dofus.Constants.DEBUG)
      {
         _loc2_ += " (" + this.id + ")";
      }
      return _loc2_;
   }
   function §\x1e\x18\r§()
   {
      return this.api.lang["\x17\x0f\x12"](this["\x1e\t\x05"]);
   }
   function §\x1a\x14§(§\x19\f\x10§)
   {
      this["\x1d\x1b\n"] = Number(_loc2_);
      return this["\x06\x16"]();
   }
   function §\x06\x16§()
   {
      return this["\x1d\x1b\n"];
   }
   function §\x17\f§(§\x16\x0e\f§)
   {
      this["\x1c\x06\f"] = _loc2_;
      return this["\x02\x16"]();
   }
   function §\x02\x16§()
   {
      return this["\x1c\x06\f"];
   }
   function §\x19\x1a§(§\x1b\x04\x1c§)
   {
      this["\x1e\x0b\x13"] = _loc2_;
      return this["\x05\x18"]();
   }
   function §\x05\x18§()
   {
      if(typeof this["\x1e\x0b\x13"] == "string")
      {
         if(this["\x1e\x0b\x13"].length > 0)
         {
            return this["\x1e\x0b\x13"];
         }
      }
      return null;
   }
   function §\x14\b§(§\x1a\x1c\x02§)
   {
      this["\x1e\n\x02"] = _loc2_;
      this["\x17\x07\x19"]({type:"guild",value:this});
      return this["\x1e\x1b\t"]();
   }
   function §\x1e\x1b\t§()
   {
      if(typeof this["\x1e\n\x02"] == "string")
      {
         if(this["\x1e\n\x02"].length > 0)
         {
            return this["\x1e\n\x02"];
         }
      }
      return null;
   }
   function §\x14\x07§(§\x19\x13\x04§)
   {
      this["\x1e\x03\x15"] = _loc2_;
      this["\x17\x07\x19"]({type:"guild",value:this});
      return this["\x1e\x1b\b"]();
   }
   function §\x1e\x1b\b§()
   {
      return this["\x1e\x03\x15"];
   }
   function §\x14\t§(§\x19\r\x13§)
   {
      this["\x1d\x16\x17"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"guild",value:this});
      return this["\x1e\x1b\n"]();
   }
   function §\x1e\x1b\n§()
   {
      return this["\x1d\x16\x17"];
   }
   function §\x15\x14§(§\x16\f\f§)
   {
      this["\x1c\x04\x0e"] = _loc2_;
      this["\x17\x07\x19"]({type:"forsale",value:_loc2_});
      return this["\x1e\x1d\x10"]();
   }
   function §\x1e\x1d\x10§()
   {
      return this["\x1c\x04\x0e"];
   }
   function §\x15\x1b§(§\x16\x0e\r§)
   {
      this["\x1c\x06\r"] = _loc2_;
      this["\x17\x07\x19"]({type:"locked",value:_loc2_});
      return this["\x1e\x1d\x1d"]();
   }
   function §\x1e\x1d\x1d§()
   {
      return this["\x1c\x06\r"];
   }
   function §\x16\x04§(§\x16\x12\n§)
   {
      this["\x1c\b\x03"] = _loc2_;
      this["\x17\x07\x19"]({type:"shared",value:_loc2_});
      return this["\x1e\x1e\x12"]();
   }
   function §\x1e\x1e\x12§()
   {
      return this["\x1c\b\x03"];
   }
   function §\x11\x0b§(§\x1a\x04\x14§)
   {
      this["\x1e\x06\x19"] = _loc2_;
      return this["\x1e\x16\x1a"]();
   }
   function §\x1e\x16\x1a§()
   {
      return this["\x1e\x06\x19"];
   }
   function §\x1d\x01§(§\x16\x06\x02§)
   {
      this["\x1b\x1e\x1d"] = _loc2_;
      return this["\t\n"]();
   }
   function §\t\n§()
   {
      return this["\x1b\x1e\x1d"];
   }
   function set isHuntTargetInside(bHuntTargetInside)
   {
      this._bHuntTargetInside = bHuntTargetInside;
   }
   function get isHuntTargetInside()
   {
      return this._bHuntTargetInside;
   }
   function initialize(§\x19\b\x0b§)
   {
      this.api = _global.api;
      eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
      this["\x1d\x17\x01"] = _loc2_;
      var _loc3_ = this.api.lang["\x17\x18\x1a"](_loc2_);
      this["\x1e\x0b\x06"] = _loc3_.n;
      this["\x1e\t\x05"] = _loc3_.d;
   }
   function §\x18\x05\x10§(§\x19\r\x12§)
   {
      return (this["\x1d\x16\x17"] & _loc2_) == _loc2_;
   }
   function §\x17\x18\x1b§()
   {
      var _loc2_ = new ank.utils.ExtendedArray();
      var _loc3_ = 1;
      while(_loc3_ < 8192)
      {
         if(this["\x18\x05\x10"](_loc3_))
         {
            _loc2_.push({id:_loc3_,label:this.api.lang.getText("GUILD_HOUSE_RIGHT_" + _loc3_)});
         }
         _loc3_ *= 2;
      }
      return _loc2_;
   }
   function getOwnerAndGuild()
   {
      var _loc2_ = "";
      _loc2_ += this.getHouseOfOwnerName(true);
      _loc2_ += this["\x1e\n\x02"] != "" ? "<font color=\"#c09fe1\"> - " + this["\x1e\n\x02"] + "</font>" : "";
      _loc2_ += !this["\x1c\x04\x0e"] ? "" : " (" + this.api.lang.getText("FOR_SALE_AT",[new ank.utils.ExtendedString(this["\x1d\x1b\n"])["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3)]) + "k)";
      return _loc2_;
   }
   function getHouseOfOwnerName(§\x16\f\x17§)
   {
      var _loc4_ = this["\x1a\x03\x06"];
      var _loc5_ = _loc4_.split("#");
      var _loc6_ = _loc5_[0];
      var _loc7_ = "#" + _loc5_[1];
      if(_loc4_ == undefined)
      {
         return this.api.lang.getText("NO_OWNER");
      }
      if(this["\x1c\x06\f"])
      {
         var _loc3_ = this.api.lang.getText("MY_HOME");
      }
      else if(_loc4_ == "?")
      {
         _loc3_ = this.api.lang.getText("HOUSE_WITH_NO_OWNER");
      }
      else
      {
         _loc3_ = this.api.lang.getText("HOME") + " " + (!_loc2_ ? _loc6_ + _loc7_ : "<b>" + _loc6_ + "</b>" + _loc7_);
      }
      return _loc3_;
   }
   function loadGuildRightsComponent()
   {
      this.api.ui.loadUIComponent("GuildHouseRights","GuildHouseRights",{house:this});
   }
}
