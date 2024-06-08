class dofus.§\x17\x04\x19§.§\x17\f\x02§ extends Object
{
   var §\x1d\x1b\x0e§ = 0;
   var §\x1d\x1a\x04§ = -1;
   function §\x17\f\x02§(§\x1a\x10\r§, §\x19\x02\b§, §\x19\x01\x16§, §\x19\x01\x17§, §\x19\x01\x18§, §\x19\x01\x19§, §\x19\x01\x1d§, §\x19\x02\x05§, §\x19\n\x13§, sConditions)
   {
      super();
      this.initialize(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,sConditions);
   }
   function §\f\r§()
   {
      return this["\x1d\x1e\x18"];
   }
   function §\x1a\x16§(§\x19\f\x11§)
   {
      this["\x1d\x1b\x0e"] = _loc2_;
      return this["\x06\x19"]();
   }
   function §\x06\x19§()
   {
      return this["\x1d\x1b\x0e"];
   }
   function §\x05\x1b§()
   {
      return this._nParam1;
   }
   function §\x19\x1c§(§\x1b\x17\x16§)
   {
      this._nParam1 = _loc2_;
      return this["\x05\x1b"]();
   }
   function §\x05\x1c§()
   {
      return this._nParam2;
   }
   function §\x19\x1d§(§\x1b\x17\x16§)
   {
      this._nParam2 = _loc2_;
      return this["\x05\x1c"]();
   }
   function §\x05\x1d§()
   {
      return this._nParam3;
   }
   function §\x1a\x01§(§\x1b\x17\x16§)
   {
      this._nParam3 = _loc2_;
      return this["\x05\x1d"]();
   }
   function §\x06\x01§()
   {
      return this["\x1e\x0b\x14"];
   }
   function §\x1a\x02§(§\x1b\x17\x16§)
   {
      this["\x1e\x0b\x14"] = _loc2_;
      return this["\x06\x01"]();
   }
   function §\x1b\x0f§(§\x19\r\x16§)
   {
      this["\x1d\x1c\x01"] = _loc2_;
      return this["\x07\x13"]();
   }
   function §\x07\x13§()
   {
      return this["\x1d\x1c\x01"];
   }
   function §\x07\x14§()
   {
      return this["\x18\x02\x03"](true);
   }
   function §\t\x1a§()
   {
      return this["\x1d\x1d\x07"];
   }
   function §\x1e\x1e\n§()
   {
      var _loc2_ = this.api.lang["\x17\x17\x05"](this["\x1d\x1e\x18"]).d;
      if(_loc2_ == "null" || (_loc2_ == null || _loc2_ == undefined))
      {
         return true;
      }
      return false;
   }
   function §\x1e\x18\r§()
   {
      return this["\x17\x16\x10"](true);
   }
   function §\x17\x16\x10§(bShowRemainingTurns)
   {
      var _loc3_ = this.api.lang["\x17\x17\x05"](this["\x1d\x1e\x18"]).d;
      var _loc4_ = [this._nParam1,this._nParam2,this._nParam3,this["\x1e\x0b\x14"]];
      switch(this["\x1d\x1e\x18"])
      {
         case 10:
            _loc4_[2] = this.api.lang["\x17\x17\x0b"](this._nParam3).n;
            break;
         case 181:
            _loc4_[0] = this.api.lang["\x17\x1c\t"](this._nParam1).n;
            break;
         case 197:
         case 239:
            _loc4_[0] = this.api.lang["\x17\x1c\t"](this._nParam1).n;
            break;
         case 165:
            _loc4_[0] = this._nParam1 != 0 ? this.api.lang["\x17\x19\x1a"](this._nParam1).n : this.api.lang.getText("WEAPONS");
            break;
         case 293:
         case 294:
         case 787:
            _loc4_[0] = this.api.lang["\x18\x01\x07"](this._nParam1).n;
            break;
         case 601:
            var _loc5_ = this.api.lang["\x17\x1b\x11"](this._nParam2);
            _loc4_[0] = this.api.lang["\x17\x1b\x0f"](_loc5_.sa).n;
            _loc4_[1] = _loc5_.x;
            _loc4_[2] = _loc5_.y;
            break;
         case 603:
            _loc4_[2] = this.api.lang["\x17\x1a\x02"](this._nParam3).n;
            break;
         case 604:
            var _loc6_ = this.api.datacenter.Player.getSpellIDFromLevelID(this._nParam3);
            _loc4_[2] = this.api.lang["\x18\x01\x07"](_loc6_).n;
            break;
         case 614:
            _loc4_[0] = this._nParam3;
            _loc4_[1] = this.api.lang["\x17\x1a\x02"](this._nParam2).n;
            break;
         case 615:
            _loc4_[2] = this.api.lang["\x17\x1a\x02"](this._nParam3).n;
            break;
         case 616:
         case 624:
            _loc4_[2] = this.api.lang["\x18\x01\x07"](this._nParam3).n;
            break;
         case 699:
            _loc4_[0] = this.api.lang["\x17\x1a\x02"](this._nParam1).n;
            break;
         case 621:
            _loc4_[2] = this.api.lang["\x17\x1c\t"](this._nParam2).n;
            break;
         case 905:
            _loc4_[1] = this.api.lang["\x17\x1c\t"](this._nParam2).n;
            break;
         case 628:
         case 623:
            _loc4_[2] = this.api.lang["\x17\x1c\t"](this._nParam3).n;
            break;
         case 715:
            _loc4_[0] = this.api.lang["\x17\x1c\b"](this._nParam1).n;
            break;
         case 716:
            _loc4_[0] = this.api.lang["\x17\x1c\x06"](this._nParam1).n;
            break;
         case 717:
            _loc4_[0] = this.api.lang["\x17\x1c\t"](this._nParam1).n;
            break;
         case 724:
            _loc4_[2] = this.api.lang["\x18\x01\x1d"](this._nParam3).t;
            break;
         case 725:
            _loc4_[3] = this.api.datacenter.Player.guildInfos.name;
            break;
         case 805:
         case 808:
         case 983:
            if(this._nParam1 != undefined && this._nParam1 == -1)
            {
               _loc4_[0] = this.api.lang.getText("LINKED_TO_ACCOUNT");
            }
            else
            {
               this._nParam3 = this._nParam3 != undefined ? this._nParam3 : 0;
               var _loc7_ = String(Math.floor(this._nParam2) / 100).split(".");
               var _loc8_ = Number(_loc7_[0]);
               var _loc9_ = this._nParam2 - _loc8_ * 100;
               var _loc10_ = String(Math.floor(this._nParam3) / 100).split(".");
               var _loc11_ = Number(_loc10_[0]);
               var _loc12_ = this._nParam3 - _loc11_ * 100;
               _loc4_[0] = ank.utils.["\x1a\x04\t"]["\x17\x16\x10"](this.api.lang.getConfigText("DATE_FORMAT"),[this._nParam1,new ank.utils.ExtendedString(_loc8_ + 1)["\x15\x1d\x18"]("0",2),new ank.utils.ExtendedString(_loc9_)["\x15\x1d\x18"]("0",2),_loc11_,new ank.utils.ExtendedString(_loc12_)["\x15\x1d\x18"]("0",2)]);
            }
            break;
         case 806:
            if(this._nParam2 == undefined && this._nParam3 == undefined)
            {
               _loc4_[0] = this.api.lang.getText("NORMAL");
            }
            else
            {
               _loc4_[0] = this._nParam2 <= 6 ? (this._nParam3 <= 6 ? this.api.lang.getText("NORMAL") : this.api.lang.getText("LEAN")) : this.api.lang.getText("FAT");
            }
            break;
         case 807:
            if(this._nParam3 == undefined)
            {
               _loc4_[0] = this.api.lang.getText("NO_LAST_MEAL");
            }
            else
            {
               _loc4_[0] = this.api.lang["\x17\x19\x1d"](this._nParam3).n;
            }
            break;
         case 814:
            _loc4_[0] = this.api.lang["\x17\x19\x1d"](this._nParam3).n;
            break;
         case 950:
         case 951:
         case 2128:
         case 2129:
         case 2137:
            _loc4_[2] = this.api.lang["\x18\x01\x0e"](this._nParam3);
            break;
         case dofus.managers["\x1b\x06\x10"]["\x15\x1c\n"]:
         case dofus.managers["\x1b\x06\x10"]["\x15\x1c\x13"]:
         case dofus.managers["\x1b\x06\x10"]["\x15\x1c\x14"]:
         case dofus.managers["\x1b\x06\x10"].ACTION_BOOST_SPELL_RANGE_NO_RANGEABLE_TRIGGER:
         case dofus.managers["\x1b\x06\x10"]["\x15\x1c\x0e"]:
         case dofus.managers["\x1b\x06\x10"]["\x15\x1c\x0f"]:
         case dofus.managers["\x1b\x06\x10"]["\x15\x1c\n"]:
         case dofus.managers["\x1b\x06\x10"]["\x15\x1c\f"]:
         case dofus.managers["\x1b\x06\x10"]["\x15\x1c\x15"]:
         case dofus.managers["\x1b\x06\x10"]["\x15\x1c\r"]:
         case dofus.managers["\x1b\x06\x10"]["\x15\x1c\x0b"]:
         case dofus.managers["\x1b\x06\x10"]["\x15\x1c\x12"]:
         case dofus.managers["\x1b\x06\x10"]["\x15\x1c\x11"]:
         case dofus.managers["\x1b\x06\x10"]["\x15\x1c\x10"]:
         case dofus.managers["\x1b\x06\x10"].ACTION_BOOST_SPELL_DMG_PERCENT:
            _loc4_[0] = this.api.lang["\x18\x01\x07"](Number(_loc4_[0])).n;
            break;
         case 939:
         case 940:
         case 969:
            var _loc13_ = new dofus.datacenter.["\x18\x10\x15"](-1,Number(_loc4_[2]),1,0,"",0);
            _loc4_[2] = _loc13_.name;
            break;
         case 649:
         case 960:
            _loc4_[2] = this.api.lang["\x17\x13\x19"](this._nParam3).n;
            break;
         case 999:
            break;
         case 2143:
            _loc4_[0] = this.api.lang["\x17\x1c\t"](this._nParam3).n;
            break;
         case 2146:
            if(Number(_loc4_[2]) < 10)
            {
               _loc4_[2] = "0" + _loc4_[2];
               break;
            }
      }
      if(this.api.lang["\x17\x17\x05"](this["\x1d\x1e\x18"]).j && this.api.kernel.OptionsManager.getOption("ViewDicesDammages"))
      {
         var _loc14_ = this["\x1e\x0b\x14"].toLowerCase().split("d");
         _loc14_[1] = _loc14_[1].split("+");
         if(!(_loc14_[0] == undefined || (_loc14_[1] == undefined || (_loc14_[1][0] == undefined || _loc14_[1][0] == undefined))))
         {
            var _loc15_ = "";
            _loc15_ += !(_loc14_[0] != "0" && _loc14_[1][0] != "0") ? "" : _loc14_[0] + "d" + _loc14_[1][0];
            _loc15_ += _loc14_[1][1] == "0" ? "" : (_loc15_ == "" ? "" : "+") + _loc14_[1][1];
            _loc4_[0] = _loc15_;
            _loc4_[4] = _loc0_ = undefined;
            _loc4_[2] = _loc0_;
            _loc4_[1] = _loc0_;
         }
      }
      var _loc16_ = "";
      if(this["\x1d\x1b\x0e"] > 0 && this["\x1d\x1b\x0e"] != undefined)
      {
         _loc16_ += " - " + this.api.lang.getText("IN_CASE_PERCENT",[this["\x1d\x1b\x0e"]]) + ": ";
      }
      if(this["\x1d\x1e\x18"] == 666)
      {
         _loc16_ += this.api.lang.getText("DO_NOTHING");
      }
      else if(this["\x1d\x1e\x18"] == 300)
      {
         _loc16_ += this.api.lang.getText("PASSIVE");
      }
      else
      {
         var _loc17_ = ank.utils.["\x1a\x04\t"]["\x17\x16\x10"](_loc3_,_loc4_);
         _loc16_ += _loc17_;
      }
      if(this["\x1d\x1a\x04"] > 0 && this.api.kernel["\x1b\x06\x10"]["\x18\f\x19"](this["\x1d\x1e\x18"]))
      {
         _loc16_ += " " + this.api.lang.getText("BOOSTED_SPELLS_EFFECT_COMPLEMENT",[this["\x1d\x1a\x04"]]);
      }
      if(!bShowRemainingTurns)
      {
         return _loc16_;
      }
      var _loc18_ = this["\x18\x02\x03"](false);
      if(_loc18_.length == 0)
      {
         return _loc16_;
      }
      return _loc16_ + " (" + _loc18_ + ")";
   }
   function §\x1e\x15\x0f§()
   {
      return this.api.lang["\x17\x17\x05"](this["\x1d\x1e\x18"]).c;
   }
   function §\x05\x13§()
   {
      return this.api.lang["\x17\x17\x05"](this["\x1d\x1e\x18"]).o;
   }
   function §\x1e\x19\x12§()
   {
      return this.api.lang["\x17\x17\x05"](this["\x1d\x1e\x18"]).e;
   }
   function §\t\x1b§()
   {
      return this.api.lang["\x18\x01\x07"](this["\x1d\x1d\x07"]).n;
   }
   function §\t\x18§()
   {
      return this.api.lang["\x18\x01\x07"](this["\x1d\x1d\x07"]).d;
   }
   function §\t\x05§()
   {
      return this.api.lang["\x17\x17\x05"](this["\x1d\x1e\x18"]).t;
   }
   function §\b\t§()
   {
      return this["\x1e\b\x03"];
   }
   function get hasInvocationConditions()
   {
      var _loc2_ = dofus.managers["\x17\f\t"].getConditionalElementFromString("FZ",this._sConditions);
      if(_loc2_ != undefined)
      {
         return true;
      }
      _loc2_ = dofus.managers["\x17\f\t"].getConditionalElementFromString("Fz",this._sConditions);
      if(_loc2_ != undefined)
      {
         return true;
      }
      return false;
   }
   function §\x1e\x16\x0e§()
   {
      return dofus.managers["\x17\f\t"].parseConditionsString(this._sConditions);
   }
   function get conditionalStateID()
   {
      var _loc2_ = dofus.managers["\x17\f\t"].getConditionalElementFromString("FS",this._sConditions);
      return _loc2_ == undefined ? undefined : Number(_loc2_);
   }
   function get conditionalAlignmentID()
   {
      var _loc2_ = dofus.managers["\x17\f\t"].getConditionalElementFromString("Ps",this._sConditions);
      return _loc2_ == undefined ? undefined : Number(_loc2_);
   }
   function set isOver(§\x16\x10\x11§)
   {
      this["\x1c\x07\b"] = _loc2_;
   }
   function set isExo(bExo)
   {
      this._bExo = bExo;
   }
   function get isOver()
   {
      return this["\x1c\x07\b"];
   }
   function get isExo()
   {
      return this._bExo;
   }
   function initialize(§\x1a\x10\r§, §\x19\x02\b§, §\x19\x01\x16§, §\x19\x01\x17§, §\x19\x01\x18§, §\x19\x01\x19§, §\x19\x01\x1d§, §\x19\x02\x05§, §\x19\n\x13§, sConditions)
   {
      this.api = _global.api;
      this["\x1d\x1e\x18"] = Number(_loc3_);
      this["\x1e\b\x03"] = _loc2_;
      this._nParam1 = !_global.isNaN(Number(_loc4_)) ? Number(_loc4_) : undefined;
      this._nParam2 = !_global.isNaN(Number(_loc5_)) ? Number(_loc5_) : undefined;
      this._nParam3 = !_global.isNaN(Number(_loc6_)) ? Number(_loc6_) : undefined;
      this["\x1e\x0b\x14"] = _loc7_;
      this["\x1d\x1c\x01"] = _loc8_ != undefined ? Number(_loc8_) : 0;
      if(this["\x1d\x1c\x01"] < 0 || this["\x1d\x1c\x01"] >= 63)
      {
         this["\x1d\x1c\x01"] = Number.POSITIVE_INFINITY;
      }
      this["\x1d\x1d\x07"] = Number(_loc9_);
      this["\x1d\x1a\x04"] = Number(_loc10_);
      this._sConditions = sConditions;
   }
   function §\x17\x1d\x04§(§\x19\x0b\x1c§)
   {
      var _loc3_ = this.operator != "-" ? 1 : -1;
      return this["_nParam" + _loc2_] * _loc3_;
   }
   function §\x18\x02\x03§(§\x16\x12\x14§)
   {
      var _loc3_ = new String();
      if(this["\x1d\x1c\x01"] == undefined)
      {
         return "";
      }
      if(_global.isFinite(this["\x1d\x1c\x01"]))
      {
         if(this["\x1d\x1c\x01"] > 1)
         {
            return String(this["\x1d\x1c\x01"]) + " " + this.api.lang.getText("TURNS");
         }
         if(this["\x1d\x1c\x01"] == 0)
         {
            return "";
         }
         if(_loc2_)
         {
            return this.api.lang.getText("LAST_TURN");
         }
         return String(this["\x1d\x1c\x01"]) + " " + this.api.lang.getText("TURN");
      }
      return this.api.lang.getText("INFINIT");
   }
}
