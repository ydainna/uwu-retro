class dofus.datacenter.§\x1a\t\x07§ extends Object
{
   function §\x1a\t\x07§(§\x19\b\x0b§, §\x19\x0e\x1d§, isAccountQuest, isRepeatableQuest, §\x17\x0b\n§, §\x16\x04\x17§, §\x16\x03\x14§, §\x19\x05\x1c§, §\x16\x01\n§)
   {
      super();
      this.initialize(_loc3_,_loc4_,isAccountQuest,isRepeatableQuest,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_);
   }
   function §\x1e\x1c\x05§()
   {
      return this["\x1d\x17\x01"];
   }
   function §\x04\x1b§()
   {
      var _loc2_ = this.api.lang["\x17\x1d\x13"](this["\x1d\x17\x01"]).n;
      if(_loc2_ != null && dofus.Constants.DEBUG)
      {
         _loc2_ = _loc2_ + " (" + this["\x1d\x17\x01"] + ")";
      }
      return _loc2_;
   }
   function §\x1e\x18\r§()
   {
      return this.api.lang["\x17\x1d\x13"](this["\x1d\x17\x01"]).d;
   }
   function §\x05\x0f§()
   {
      return this["\x1c\x0f\x1b"];
   }
   function §\x1e\x11\x1c§()
   {
      var _loc2_ = new ank.utils.ExtendedArray();
      var _loc3_ = 0;
      while(_loc3_ < this["\x1b\x1e\x0f"].length)
      {
         _loc2_.push(new dofus.datacenter.["\x1a\t\x07"](this["\x1b\x1e\x0f"][_loc3_],2));
         _loc3_ = _loc3_ + 1;
      }
      _loc2_.push(this);
      var _loc4_ = 0;
      while(_loc4_ < this["\x1b\x1e\x06"].length)
      {
         _loc2_.push(new dofus.datacenter.["\x1a\t\x07"](this["\x1b\x1e\x06"][_loc4_],0));
         _loc4_ = _loc4_ + 1;
      }
      return _loc2_;
   }
   function §\x07\x1d§()
   {
      var _loc2_ = new ank.utils.ExtendedArray();
      var _loc3_ = this.api.lang["\x17\x1d\x13"](this["\x1d\x17\x01"]).r;
      if(_loc3_[0] != undefined)
      {
         _loc2_.push({iconFile:"UI_QuestXP",label:new ank.utils.ExtendedString(_loc3_[0])["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3)});
      }
      if(_loc3_[1] != undefined)
      {
         _loc2_.push({iconFile:"UI_QuestKamaSymbol",label:new ank.utils.ExtendedString(_loc3_[1])["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3)});
      }
      if(_loc3_[2] != undefined)
      {
         var _loc4_ = _loc3_[2];
         var _loc5_ = 0;
         while(_loc5_ < _loc4_.length)
         {
            var _loc6_ = Number(_loc4_[_loc5_][0]);
            var _loc7_ = _loc4_[_loc5_][1];
            var _loc8_ = new dofus.datacenter.Item(0,_loc6_,_loc7_);
            _loc2_.push({iconFile:_loc8_.iconFile,label:(_loc7_ == 0 ? "" : "x" + _loc7_ + " ") + _loc8_.name});
            _loc5_ = _loc5_ + 1;
         }
      }
      if(_loc3_[3] != undefined)
      {
         var _loc9_ = _loc3_[3];
         var _loc10_ = 0;
         while(_loc10_ < _loc9_.length)
         {
            var _loc11_ = Number(_loc9_[_loc10_]);
            _loc2_.push({iconFile:dofus.Constants["\x17\f\x1a"] + _loc11_ + ".swf",label:this.api.lang["\x17\x17\x0b"](_loc11_).n});
            _loc10_ = _loc10_ + 1;
         }
      }
      if(_loc3_[4] != undefined)
      {
         var _loc12_ = _loc3_[4];
         var _loc13_ = 0;
         while(_loc13_ < _loc12_.length)
         {
            var _loc14_ = Number(_loc12_[_loc13_]);
            var _loc15_ = new dofus.datacenter.Job(_loc14_);
            _loc2_.push({iconFile:_loc15_.iconFile,label:_loc15_.name});
            _loc13_ = _loc13_ + 1;
         }
      }
      if(_loc3_[5] != undefined)
      {
         var _loc16_ = _loc3_[5];
         var _loc17_ = 0;
         while(_loc17_ < _loc16_.length)
         {
            var _loc18_ = Number(_loc16_[_loc17_]);
            var _loc19_ = new dofus.datacenter.Spell(_loc18_,1);
            _loc2_.push({iconFile:_loc19_.iconFile,label:_loc19_.name,params:_loc19_.params});
            _loc17_ = _loc17_ + 1;
         }
      }
      return _loc2_;
   }
   function §\x1e\x18\x12§()
   {
      return this["\x1d\x15\x0f"];
   }
   function §\x1e\x18\x13§()
   {
      return this["\x1b\x1c\x12"];
   }
   function §\x1e\x1d\x0e§()
   {
      return this["\x1d\x1d\r"] == 2;
   }
   function §\x1e\x1d\x06§()
   {
      return this["\x1d\x1d\r"] == 1;
   }
   function §\x1e\x1e\b§()
   {
      return this["\x1d\x1d\r"] == 0;
   }
   function §\x1e\x1b\x0f§()
   {
      return true;
   }
   function §\x1e\x1b\f§()
   {
      return true;
   }
   function get isAccountQuest()
   {
      return this._bAccountQuest;
   }
   function get isRepeatableQuest()
   {
      return this._bRepeatableQuest;
   }
   function initialize(§\x19\b\x0b§, §\x19\x0e\x1d§, isAccountQuest, isRepeatableQuest, §\x17\x0b\n§, §\x16\x04\x17§, §\x16\x03\x14§, §\x19\x05\x1c§, §\x16\x01\n§)
   {
      this.api = _global.api;
      this["\x1d\x17\x01"] = _loc2_;
      this["\x1d\x1d\r"] = _loc3_;
      this._bAccountQuest = isAccountQuest;
      this._bRepeatableQuest = isRepeatableQuest;
      this["\x1c\x0f\x1b"] = _loc6_;
      this["\x1b\x1e\x0f"] = _loc7_;
      this["\x1b\x1e\x06"] = _loc8_;
      this["\x1d\x15\x0f"] = _loc9_;
      this["\x1b\x1c\x12"] = _loc10_;
   }
}
