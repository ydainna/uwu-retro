class dofus.datacenter.§\x18\x04\x04§ extends Object
{
   function §\x18\x04\x04§(sName, §\x19\x03\x18§, §\x19\x03\x17§, §\x19\x10\x0e§, §\x19\x10\r§, §\x19\f\t§)
   {
      super();
      this.api = _global.api;
      mx.["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
      this.initialize(false,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_);
      this["\x1c\x0f\x18"] = new ank.utils.ExtendedArray();
      this["\x1c\x10\x10"] = new ank.utils.ExtendedArray();
      this["\x1c\x0f\x1a"] = new ank.utils.ExtendedArray();
      this._oRanksName = new dofus.datacenter.GuildRanks();
   }
   function §\x04\x1b§()
   {
      return this["\x1e\x0b\x06"];
   }
   function §\x01\x03§()
   {
      return this["\x1c\f\x04"];
   }
   function §\x1e\x19\x14§()
   {
      return {backID:this["\x1d\x13\x05"],backColor:this["\x1d\x13\x04"],upID:this["\x1e\x01\x01"],upColor:this["\x1d\x1e\x1d"]};
   }
   function §\x06\x0e§()
   {
      return this["\x1c\x11\x03"];
   }
   function §\x02\x06§()
   {
      return this["\x1d\x18\x10"];
   }
   function §\r\x1d§()
   {
      return this["\x1e\x01\x19"];
   }
   function §\r\x1b§()
   {
      return this["\x1e\x01\x17"];
   }
   function §\r\x16§()
   {
      return this["\x1e\x01\x12"];
   }
   function §\x03\x16§()
   {
      return this["\x1c\x0f\x18"];
   }
   function §\x0b\x04§()
   {
      return this["\x1d\x1d\x16"];
   }
   function __set__taxCount(§\x19\x0f\x0f§)
   {
      this["\x1d\x1d\x16"] = _loc2_;
      return this["\x0b\x04"]();
   }
   function §\x0b\x05§()
   {
      return this["\x1d\x1d\x17"];
   }
   function __set__taxCountMax(§\x19\x0f\x10§)
   {
      this["\x1d\x1d\x17"] = _loc2_;
      return this["\x0b\x05"]();
   }
   function §\x0b\n§()
   {
      return this["\x1c\x10\x11"];
   }
   function §\x0b\x06§()
   {
      return this["\x1d\x1d\x19"];
   }
   function §\x0b\x01§()
   {
      return this["\x1d\x1d\x15"];
   }
   function §\x0b\x02§()
   {
      return this["\x1d\x1d\x18"];
   }
   function __set__taxcollectorHireCost(§\x19\x0f\x11§)
   {
      this["\x1d\x1d\x18"] = _loc2_;
      return this["\x0b\x02"]();
   }
   function §\x0b\x07§()
   {
      return this["\x1d\x1d\x1b"];
   }
   function §\x0b\t§()
   {
      return this["\x1d\x1d\x1c"];
   }
   function §\x0b\x0b§()
   {
      return this["\x1d\x1d\x1d"];
   }
   function §\x0b\b§()
   {
      return this["\x1d\x1d\x1a"];
   }
   function §\x1e\x13\x03§()
   {
      return this["\x1d\x13\f"];
   }
   function §\x0b\x03§()
   {
      return this["\x1c\x10\x10"];
   }
   function §\x04\n§()
   {
      return this["\x1c\x0f\x1a"];
   }
   function §\x03\x0e§()
   {
      return this["\x1d\x19\x14"];
   }
   function §\x1e\x1b\x1a§()
   {
      return this["\x1c\x0f\x0f"];
   }
   function §\x12\x04§(§\x19\x05\x19§)
   {
      this["\x1d\x15\x0e"] = _loc2_;
      return this["\x1e\x18\n"]();
   }
   function §\x1e\x18\n§()
   {
      return this["\x1d\x15\x0e"];
   }
   function §\x1e\x1d\x1c§()
   {
      return this["\x1d\x15\x0e"] != undefined;
   }
   function get note()
   {
      return this._sNote;
   }
   function get noteMember()
   {
      return this._sNoteMember;
   }
   function get noteFormatedLastModification()
   {
      var _loc2_ = new Date(this._nNoteLastModification);
      return this["\x17\x12\r"](_loc2_);
   }
   function get infos()
   {
      return this._sInfos;
   }
   function get infosMember()
   {
      return this._sInfosMember;
   }
   function get infosFormatedLastModification()
   {
      var _loc2_ = new Date(this._nInfosLastModification);
      return this["\x17\x12\r"](_loc2_);
   }
   function initialize(§\x16\x14\x05§, sName, §\x19\x03\x18§, §\x19\x03\x17§, §\x19\x10\x0e§, §\x19\x10\r§, §\x19\f\t§)
   {
      this["\x1e\x0b\x06"] = _loc3_;
      this["\x1d\x13\x05"] = _loc4_;
      this["\x1d\x13\x04"] = _loc5_;
      this["\x1e\x01\x01"] = _loc6_;
      this["\x1d\x1e\x1d"] = _loc7_;
      this["\x1c\x11\x03"] = new dofus.datacenter.["\x18\x04\n"](_loc8_);
      if(_loc2_)
      {
         this["\x17\x07\x19"]({type:"modelChanged",eventName:"infosUpdate"});
         this["\x17\x07\x19"]({type:"rightsChanged"});
      }
   }
   function §\x1a\x16\x1b§(§\x16\x14\x15§, §\x19\t\x0f§, §\x19\x11\x03§, §\x19\x10\x1b§, §\x19\x11\x01§)
   {
      this["\x1c\f\x04"] = _loc2_;
      this["\x1d\x18\x10"] = _loc3_;
      this["\x1e\x01\x19"] = _loc4_;
      this["\x1e\x01\x12"] = _loc5_;
      this["\x1e\x01\x17"] = _loc6_;
      this["\x17\x07\x19"]({type:"modelChanged",eventName:"general"});
   }
   function setNote(sNote, sNoteMember, nNoteLastModification)
   {
      this._sNote = sNote;
      this._sNoteMember = sNoteMember;
      this._nNoteLastModification = nNoteLastModification;
      this["\x17\x07\x19"]({type:"modelChanged",eventName:"note"});
   }
   function setInformations(sInfos, sInfosMember, nInfosLastModification)
   {
      this._sInfos = sInfos;
      this._sInfosMember = sInfosMember;
      this._nInfosLastModification = nInfosLastModification;
      this["\x17\x07\x19"]({type:"modelChanged",eventName:"informations"});
   }
   function §\x1a\x17\x1a§()
   {
      this["\x17\x07\x19"]({type:"modelChanged",eventName:"members"});
   }
   function §\x1a\x18\x01§(§\x19\n\x05§, §\x17\x0b\t§)
   {
      this["\x1d\x19\x14"] = _loc2_;
      this["\x1c\x0f\x1a"] = _loc3_;
      this["\x17\x07\x19"]({type:"modelChanged",eventName:"mountParks"});
   }
   function §\x1a\x15\x03§(§\x19\t\x13§, §\x19\x04\x01§, §\x19\f\n§, §\x19\f\x0f§, §\x19\r\x18§, §\x19\f\x04§, §\x19\x04\x03§, §\x17\x0b\x15§)
   {
      this["\x1d\x1d\x19"] = _loc2_;
      this["\x1d\x1d\x15"] = _loc3_;
      this["\x1d\x1d\x1b"] = _loc4_;
      this["\x1d\x1d\x1c"] = _loc5_;
      this["\x1d\x1d\x1d"] = _loc6_;
      this["\x1d\x1d\x1a"] = _loc7_;
      this["\x1d\x13\f"] = _loc8_;
      this["\x1c\x10\x11"] = _loc9_;
      this["\x17\x07\x19"]({type:"modelChanged",eventName:"boosts"});
   }
   function §\x1a\x18\b§()
   {
      this["\x17\x07\x19"]({type:"modelChanged",eventName:"noboosts"});
   }
   function §\x16\x15\x19§(§\x1a\x10\x10§, §\x19\x0b\x1d§)
   {
      var _loc4_ = this["\x17\x14\x16"](_loc2_,_loc3_).cost;
      if(this["\x1d\x13\f"] >= _loc4_ && _loc4_ != undefined)
      {
         return true;
      }
      return false;
   }
   function §\x17\x14\x16§(§\x1a\x10\x10§, §\x19\x0b\x1d§)
   {
      var _loc4_ = this.api.lang["\x17\x18\f"](_loc2_);
      var _loc5_ = 1;
      var _loc6_ = 1;
      var _loc7_ = 0;
      switch(_loc2_)
      {
         case "w":
            _loc7_ = this["\x1d\x1d\x1b"];
            break;
         case "p":
            _loc7_ = this["\x1d\x1d\x1c"];
            break;
         case "c":
            _loc7_ = this["\x1d\x1d\x1a"];
            break;
         case "x":
            _loc7_ = this["\x1d\x1d\x1d"];
            break;
         case "s":
            var _loc8_ = this["\x1c\x10\x11"].findFirstItem("ID",_loc3_);
            if(_loc8_ != -1)
            {
               _loc7_ = _loc8_.item.level;
               break;
            }
      }
      var _loc9_ = this.api.lang["\x17\x18\r"](_loc2_);
      if(_loc7_ < _loc9_)
      {
         var _loc10_ = 0;
         while(_loc10_ < _loc4_.length)
         {
            var _loc11_ = _loc4_[_loc10_][0];
            if(_loc7_ < _loc11_)
            {
               break;
            }
            _loc5_ = _loc4_[_loc10_][1];
            _loc6_ = _loc4_[_loc10_][2] != undefined ? _loc4_[_loc10_][2] : 1;
            _loc10_ = _loc10_ + 1;
         }
         return {cost:_loc5_,count:_loc6_};
      }
      return null;
   }
   function §\x1a\x1a\x12§()
   {
      this["\x17\x07\x19"]({type:"modelChanged",eventName:"taxcollectors"});
   }
   function §\x1a\x18\n§()
   {
      this["\x17\x07\x19"]({type:"modelChanged",eventName:"notaxcollectors"});
   }
   function §\x1a\x17\x05§(§\x17\x0b\x03§)
   {
      this["\x1c\x0f\x0f"] = _loc2_;
      this["\x17\x07\x19"]({type:"modelChanged",eventName:"houses"});
   }
   function §\x1a\x18\t§()
   {
      this["\x1c\x0f\x0f"] = new ank.utils.ExtendedArray();
      this["\x17\x07\x19"]({type:"modelChanged",eventName:"nohouses"});
   }
   function setRankName(§\x19\b\x0b§, sRankName)
   {
      this._oRanksName.setRankCustomName(_loc2_,sRankName);
      this["\x17\x07\x19"]({type:"modelChanged",eventName:"rank"});
   }
   function resetRankName(§\x19\b\x0b§)
   {
      if(_loc2_ == -1)
      {
         this._oRanksName.resetAllRankCustomName();
      }
      else
      {
         this._oRanksName.resetRankCustomName(_loc2_);
      }
      this["\x17\x07\x19"]({type:"modelChanged",eventName:"rank"});
   }
   function getRankName(§\x19\b\x0b§)
   {
      return this._oRanksName.getRankName(_loc2_);
   }
   function §\x17\x12\r§(date)
   {
      var _loc3_ = (date.getDate() < 10 ? "0" : "") + date.getDate();
      var _loc4_ = (date.getMonth() + 1 < 10 ? "0" : "") + (date.getMonth() + 1);
      var _loc5_ = (date.getHours() < 10 ? "0" : "") + date.getHours();
      var _loc6_ = (date.getMinutes() < 10 ? "0" : "") + date.getMinutes();
      return _loc3_ + "." + _loc4_ + "." + date.getFullYear() + " " + _loc5_ + ":" + _loc6_;
   }
}
