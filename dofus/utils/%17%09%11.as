class dofus.utils.§\x17\t\x11§ extends dofus.utils.ApiElement
{
   static var STANDARD_DATA_BANK = 0;
   static var TEMPORIS_DATA_BANK = 1;
   var §\x1c\x01\x02§ = new Array();
   function §\x17\t\x11§()
   {
      super();
   }
   function §\x17\x1a\x11§()
   {
      return this["\x18\x02\b"]("VERSIONS").lang;
   }
   function §\x18\x02\x10§()
   {
      return Number(this["\x18\x02\t"]("VERSION"));
   }
   function getText(sKey, §\x16\x03\x1d§)
   {
      if(_loc3_ == undefined)
      {
         _loc3_ = new Array();
      }
      var _loc4_ = new Array();
      var _loc5_ = new Array();
      var _loc6_ = 0;
      while(_loc6_ < _loc3_.length)
      {
         _loc4_.push("%" + (_loc6_ + 1));
         _loc5_.push(_loc3_[_loc6_]);
         _loc6_ = _loc6_ + 1;
      }
      var _loc7_ = this["\x18\x02\b"](_loc2_);
      if(_loc7_ == "" || _loc7_ == undefined)
      {
         return "!" + _loc2_ + "!";
      }
      return new ank.utils.ExtendedString(_loc7_).replace(_loc4_,_loc5_);
   }
   function §\x17\x15\x10§(sKey)
   {
      var _loc3_ = this["\x18\x02\b"]("C")[_loc2_];
      if(typeof _loc3_ == "string")
      {
         var _loc4_ = _loc3_;
         var _loc5_ = new ank.utils.ExtendedString(_loc4_);
         return _loc5_.replace(["%CMNT%","%CMNTT%"],[this.api.datacenter.Basics.aks_community_id,this.api.datacenter.Basics.aks_detected_country.toLowerCase()]);
      }
      return _loc3_;
   }
   function §\x17\x14\x0b§()
   {
      return this["\x18\x02\t"]("MA").m;
   }
   function §\x17\x1b\t§(§\x19\t\x14§)
   {
      var _loc3_ = this["\x18\x02\t"]("MA").m[_loc2_].c;
      if(_loc3_ == undefined || _global.isNaN(_loc3_))
      {
         return dofus.Constants["\x18\x1a\x1c"];
      }
      return _loc3_;
   }
   function §\x17\x1b\n§(§\x19\t\x14§)
   {
      var _loc3_ = this["\x18\x02\t"]("MA").m[_loc2_].t;
      if(_loc3_ == undefined || _global.isNaN(_loc3_))
      {
         return dofus.Constants["\x18\x1a\x1d"];
      }
      return _loc3_;
   }
   function §\x17\x1b\x11§(sKey)
   {
      return this["\x18\x02\t"]("MA").m[_loc2_];
   }
   function §\x17\x1b\x05§()
   {
      return this["\x18\x02\t"]("MA").a;
   }
   function §\x17\x1b\x10§(sKey)
   {
      return this["\x18\x02\t"]("MA").sua[_loc2_];
   }
   function §\x17\x1b\x06§(sKey)
   {
      return this["\x18\x02\t"]("MA").a[_loc2_];
   }
   function §\x17\x1b\x0e§()
   {
      return this["\x18\x02\t"]("MA").sa;
   }
   function §\x17\x1b\x0f§(sKey)
   {
      return this["\x18\x02\t"]("MA").sa[_loc2_];
   }
   function §\x17\x1b\x04§(§\x19\x0f\x03§)
   {
      var _loc3_ = this["\x18\x02\t"]("MA").sa[_loc2_];
      var _loc4_ = this["\x18\x02\t"]("MA").a[_loc3_.a];
      var _loc5_ = this["\x18\x02\t"]("MA").a[_loc4_.sua];
      return {superareaID:_loc4_.sua,superarea:_loc5_,areaID:_loc3_.a,area:_loc4_,subArea:_loc3_};
   }
   function §\x17\x19\x17§(§\x19\t\x04§)
   {
      return this["\x18\x02\t"]("IS")[_loc2_];
   }
   function §\x17\x19\x18§(§\x19\t\x04§)
   {
      return this["\x18\x02\t"]("ISTA")[_loc2_];
   }
   function §\x17\x19\x1d§(§\x19\t\x04§)
   {
      return this["\x18\x02\t"]("I").u[_loc2_];
   }
   function §\x17\x19\x1b§()
   {
      return this["\x18\x02\t"]("I").u;
   }
   function §\x17\x19\x1c§()
   {
      return this["\x18\x02\t"]("I").us;
   }
   function §\x17\x19\x1a§(§\x19\x10\x07§)
   {
      return this["\x18\x02\t"]("I").t[_loc2_];
   }
   function §\x17\x19\x19§(§\x19\x0f\b§)
   {
      return this["\x18\x02\t"]("I").st[_loc2_];
   }
   function §\x17\x14\t§()
   {
      return this["\x18\x02\t"]("I").t;
   }
   function getSlotsFromSuperType(§\x19\x0f\b§)
   {
      return this["\x18\x02\t"]("I").ss[_loc2_];
   }
   function §\x17\x19\n§(§\x19\t\x04§)
   {
      return this["\x17\x19\x0b"](this["\x18\x02\t"]("IO").g[_loc2_]);
   }
   function getInteractiveObjectDataTexts()
   {
      return this["\x18\x02\t"]("IO").d;
   }
   function §\x17\x19\x0b§(§\x19\t\x04§)
   {
      return this["\x18\x02\t"]("IO").d[_loc2_];
   }
   function §\x17\x18\x1a§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("H").h[_loc2_];
   }
   function §\x17\x18\x19§(§\x19\t\x14§)
   {
      return this["\x18\x02\t"]("H").m[_loc2_];
   }
   function §\x17\x18\x17§(§\x19\t\x14§, §\x19\x04\x12§)
   {
      return this["\x18\x02\t"]("H").d[_loc2_]["c" + _loc3_];
   }
   function §\x17\x18\x18§()
   {
      return this["\x18\x02\t"]("H").ids;
   }
   function getTtgObject()
   {
      return this["\x18\x02\t"]("TTG");
   }
   function getTtgCards()
   {
      return this.getTtgObject().c;
   }
   function getTtgCardObject(nCardID)
   {
      return this.getTtgObject().c[nCardID];
   }
   function getTtgEntityObject(nEntityID)
   {
      return this.getTtgObject().e[nEntityID];
   }
   function getTtgFamilyObject(nFamilyID)
   {
      return this.getTtgObject().f[nFamilyID];
   }
   function §\x17\x16\x1d§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("DU")[_loc2_];
   }
   function getSpellText(§\x19\x0e\x17§)
   {
      return this["\x18\x02\t"]("S")[_loc2_];
   }
   function §\x18\x01\x06§()
   {
      return this["\x18\x02\t"]("S");
   }
   function §\x17\x17\x05§(§\x19\x06\x11§)
   {
      return this["\x18\x02\t"]("E")[_loc2_];
   }
   function §\x17\x14\x17§()
   {
      return this["\x18\x02\t"]("EDMG");
   }
   function §\x17\x14\x18§()
   {
      return this["\x18\x02\t"]("EHEL");
   }
   function §\x17\x14\n§()
   {
      return this["\x18\x02\t"]("J");
   }
   function §\x17\x1a\x02§(§\x19\b\x1d§)
   {
      return this["\x17\x14\n"]()[_loc2_];
   }
   function §\x17\x15\x19§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("CR")[_loc2_];
   }
   function §\x17\x14\b§()
   {
      return this["\x18\x02\t"]("CR");
   }
   function §\x17\x1e\x15§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("SK")[_loc2_];
   }
   function §\x17\x1e\x14§(§\x19\b\x0b§)
   {
      return Number(this["\x18\x02\t"]("SK")[_loc2_].f);
   }
   function §\x17\x16\x12§(§\x19\f\x1c§)
   {
      return this["\x18\x02\t"]("D").q[_loc2_];
   }
   function §\x17\x16\x13§(§\x19\x03\x12§)
   {
      return this["\x18\x02\t"]("D").a[_loc2_];
   }
   function §\x17\x1c\x19§()
   {
      return this["\x18\x02\t"]("N").d;
   }
   function §\x17\x1c\x18§(§\x19\n\x1a§)
   {
      return this["\x17\x1c\x19"]()[_loc2_];
   }
   function §\x17\x1c\x17§(§\x19\x03\x02§)
   {
      return this["\x18\x02\t"]("N").a[_loc2_];
   }
   function §\x17\x1c\t§(§\x19\n\x14§)
   {
      return this["\x18\x02\t"]("M")[_loc2_];
   }
   function §\x17\x1c\x04§()
   {
      return this["\x18\x02\t"]("M");
   }
   function §\x17\x1c\x06§(§\x19\f\x1d§)
   {
      return this["\x18\x02\t"]("MR")[_loc2_];
   }
   function §\x17\x1c\x05§()
   {
      return this["\x18\x02\t"]("MR");
   }
   function §\x17\x1c\b§(§\x19\x0f\x06§)
   {
      return this["\x18\x02\t"]("MSR")[_loc2_];
   }
   function §\x17\x1c\x07§()
   {
      return this["\x18\x02\t"]("MSR");
   }
   function getTimeZoneText()
   {
      return this["\x18\x02\t"]("T");
   }
   function §\x17\x14\x07§()
   {
      return this["\x18\x02\t"]("G");
   }
   function §\x17\x15\x0b§(§\x19\x05\x05§)
   {
      return this["\x17\x14\x07"]()[_loc2_];
   }
   function §\x17\x17\x0b§(§\x19\x06\x13§)
   {
      return this["\x18\x02\t"]("EM")[_loc2_];
   }
   function §\x17\x17\n§(§\x1a\x13\x13§)
   {
      var _loc3_ = this["\x18\x02\t"]("EM");
      for(var k in _loc3_)
      {
         if(_loc3_[k].s == _loc2_)
         {
            return Number(k);
         }
      }
      return null;
   }
   function §\x17\x18\f§(§\x1a\x10\x14§)
   {
      return this["\x18\x02\t"]("GU").b[_loc2_];
   }
   function §\x17\x18\r§(§\x1a\x10\x14§)
   {
      return this["\x18\x02\t"]("GU").b[_loc2_ + "m"];
   }
   function §\x17\x1c\x10§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("NF").n[_loc2_];
   }
   function §\x17\x17\x19§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("NF").f[_loc2_];
   }
   function §\x17\x18\x05§(§\x16\x02\x03§)
   {
      _loc2_[0] = _global.parseInt(_loc2_[0],36);
      _loc2_[1] = _global.parseInt(_loc2_[1],36);
      return this["\x17\x17\x19"](_loc2_[0]) + " " + this["\x17\x1c\x10"](_loc2_[1]);
   }
   function §\x17\x1d\x18§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("R")[_loc2_];
   }
   function §\x17\x1d\x1a§()
   {
      return this["\x18\x02\t"]("R");
   }
   function §\x17\x14\x04§()
   {
      return this["\x18\x02\t"]("A").a;
   }
   function §\x17\x13\x19§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("A").a[_loc2_];
   }
   function §\x17\x13\x1c§(§\x19\b\f§, §\x19\b\r§)
   {
      return this["\x18\x02\t"]("A").jo[_loc2_][_loc3_];
   }
   function §\x17\x13\x1b§(§\x19\b\f§, §\x19\b\r§)
   {
      return this["\x18\x02\t"]("A").at[_loc2_][_loc3_];
   }
   function §\x17\x14\x06§()
   {
      return this["\x18\x02\t"]("A").s;
   }
   function §\x17\x14\x05§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("A").s[_loc2_];
   }
   function §\x17\x14\x03§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("A").o[_loc2_];
   }
   function §\x17\x14\x01§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("A").f[_loc2_];
   }
   function §\x17\x14\x02§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("A").fe[_loc2_];
   }
   function §\x17\x13\x1a§()
   {
      return this["\x18\x02\t"]("A").b;
   }
   function §\x17\x13\x1d§(§\x19\b\f§, §\x19\b\r§)
   {
      return this["\x18\x02\t"]("A").g[_loc2_][_loc3_];
   }
   function §\x18\x01\x1a§()
   {
      return this["\x18\x02\t"]("TI");
   }
   function §\x18\x01\x19§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("TI")[_loc2_];
   }
   function §\x17\x1a\x04§()
   {
      return this["\x18\x02\t"]("SSC");
   }
   function §\x17\x1a\x03§()
   {
      return this["\x18\x02\t"]("SH");
   }
   function §\x17\x1a\x06§()
   {
      return this["\x18\x02\t"]("SST");
   }
   function §\x17\x1a\x05§(§\x19\x0e\x07§, §\x1b\b\n§)
   {
      return this["\x18\x02\t"]("SSK")[String(_loc2_) + "|" + _loc3_];
   }
   function §\x17\x15\x14§(§\x19\x05\x10§)
   {
      switch(_loc2_)
      {
         case 1:
            return this.getText("KEY_CONTROL") + "+";
         case 2:
            return this.getText("KEY_SHIFT") + "+";
         case 3:
            return this.getText("KEY_CONTROL") + "+" + this.getText("KEY_SHIFT") + "+";
         default:
            return "";
      }
   }
   function §\x17\x1a\b§(§\x19\t\x05§)
   {
      switch(_loc2_)
      {
         case 112:
            return this.getText("KEY_F1");
         case 113:
            return this.getText("KEY_F2");
         case 114:
            return this.getText("KEY_F3");
         case 115:
            return this.getText("KEY_F4");
         case 116:
            return this.getText("KEY_F5");
         case 117:
            return this.getText("KEY_F6");
         case 118:
            return this.getText("KEY_F7");
         case 119:
            return this.getText("KEY_F8");
         case 120:
            return this.getText("KEY_F9");
         case 121:
            return this.getText("KEY_F10");
         case 122:
            return this.getText("KEY_F11");
         case 123:
            return this.getText("KEY_F12");
         case 145:
            return this.getText("KEY_SCROLL_LOCK");
         case 19:
            return this.getText("KEY_PAUSE");
         case 45:
            return this.getText("KEY_INSERT");
         case 36:
            return this.getText("KEY_HOME");
         case 33:
            return this.getText("KEY_PAGE_UP");
         case 34:
            return this.getText("KEY_PAGE_DOWN");
         case 35:
            return this.getText("KEY_END");
         case 37:
            return this.getText("KEY_LEFT");
         case 38:
            return this.getText("KEY_UP");
         case 39:
            return this.getText("KEY_RIGHT");
         case 40:
            return this.getText("KEY_DOWN");
         case 27:
            return this.getText("KEY_ESCAPE");
         case 8:
            return this.getText("KEY_BACKSPACE");
         case 20:
            return this.getText("KEY_CAPS_LOCK");
         case 13:
            return this.getText("KEY_ENTER");
         case 32:
            return this.getText("KEY_SPACE");
         case 46:
            return this.getText("KEY_DELETE");
         case 144:
            return this.getText("KEY_NUM_LOCK");
         case -1:
            return this.getText("KEY_UNDEFINED");
         default:
            return "(#" + String(_loc2_) + ")";
      }
   }
   function §\x17\x16\x0b§()
   {
      return this["\x18\x02\b"]("CNS");
   }
   function getServerInfos(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("SR",dofus.utils.["\x17\t\x11"].STANDARD_DATA_BANK)[_loc2_];
   }
   function §\x17\x1e\r§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("SRP")[_loc2_];
   }
   function §\x17\x1e\x0e§(§\x19\b\x0b§)
   {
      return Number(this["\x18\x02\t"]("SRPW")[_loc2_]);
   }
   function §\x17\x1e\t§()
   {
      return this["\x18\x02\b"]("COM");
   }
   function §\x17\x1e\n§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("SRC")[_loc2_].n;
   }
   function §\x17\x1e\x0b§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("SRC")[_loc2_].d;
   }
   function §\x17\x1e\x11§()
   {
      return this["\x18\x02\t"]("SRVT");
   }
   function §\x17\x1e\x10§(§\x19\x0f\x16§, nServerID)
   {
      return this["\x18\x02\t"]("SRVC")[_loc2_ + "|" + _loc3_];
   }
   function §\x17\x1d\x12§()
   {
      return this["\x18\x02\t"]("Q").q;
   }
   function §\x17\x1d\x14§(§\x19\b\x0b§)
   {
      return this["\x17\x1d\x12"]()[_loc2_];
   }
   function §\x17\x1d\x13§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("Q").s[_loc2_];
   }
   function §\x17\x1d\x10§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("Q").o[_loc2_];
   }
   function §\x17\x1d\x11§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("Q").t[_loc2_];
   }
   function §\x18\x01\r§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("ST")[_loc2_];
   }
   function §\x18\x01\x0e§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("ST")[_loc2_].n;
   }
   function getStateIsDisplayedBanner(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("ST")[_loc2_].d;
   }
   function getStateShortText(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("ST")[_loc2_].s;
   }
   function §\x17\x18\b§(§\x17\x13\x03§)
   {
      var _loc3_ = this["\x18\x02\t"]("PP").hp;
      return {min:_loc3_[_loc2_ - 1],max:_loc3_[_loc2_]};
   }
   function §\x17\x1b\x12§()
   {
      return this["\x18\x02\t"]("PP").maxdp;
   }
   function §\x17\x1d\x19§(§\x19\x0e\t§, §\x19\r\x07§)
   {
      return this["\x18\x02\t"]("PP").grds[_loc2_][_loc3_].nl;
   }
   function §\x17\x1d\x1b§(§\x19\x0e\t§, §\x19\r\x07§)
   {
      return this["\x18\x02\t"]("PP").grds[_loc2_][_loc3_].nc;
   }
   function §\x17\x18\x12§(mapID)
   {
      return this["\x17\x18\x10"]("m",mapID);
   }
   function §\x17\x18\x11§(§\x16\x17\r§)
   {
      return this["\x17\x18\x10"]("c",_loc2_);
   }
   function §\x17\x18\x10§(§\x1a\x07\x1b§, §\x1b\x17\x16§)
   {
      var _loc4_ = this["\x18\x02\t"]("HI");
      var _loc5_ = new Array();
      var _loc6_ = 0;
      while(_loc6_ < _loc4_.length)
      {
         var _loc7_ = _loc4_[_loc6_];
         if(_loc7_[_loc2_] == _loc3_)
         {
            _loc5_.push(_loc7_);
         }
         _loc6_ = _loc6_ + 1;
      }
      return _loc5_;
   }
   function §\x17\x18\x14§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("HIC")[_loc2_];
   }
   function §\x17\x18\x13§()
   {
      return this["\x18\x02\t"]("HIC");
   }
   function §\x17\x1c\x0b§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("RI")[_loc2_];
   }
   function §\x17\x1c\n§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("RIA")[_loc2_];
   }
   function §\x17\x1a\x0b§()
   {
      return this["\x18\x02\t"]("KBC");
   }
   function §\x17\x1a\f§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("KBC")[_loc2_];
   }
   function §\x17\x1a\n§()
   {
      return this["\x18\x02\t"]("KBA");
   }
   function §\x17\x1a\t§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("KBA")[_loc2_];
   }
   function §\x17\x1a\x0e§()
   {
      return this["\x18\x02\t"]("KBD");
   }
   function §\x17\x1a\r§(§\x19\x10\x01§)
   {
      return this["\x18\x02\t"]("KBT")[_loc2_];
   }
   function §\x17\x1c\r§(§\x1b\x02\b§)
   {
      return Number(this["\x18\x02\t"]("AUMC")[_loc2_]);
   }
   function §\x17\x17\x03§(§\x1b\x02\b§)
   {
      return Number(this["\x18\x02\t"]("AUEC")[_loc2_]);
   }
   function §\x17\x17\x11§(§\x1b\x02\b§)
   {
      return Number(this["\x18\x02\t"]("AUAC")[_loc2_]);
   }
   function §\x17\x1c\f§(§\x19\n\x18§)
   {
      return this["\x18\x02\t"]("AUM")[_loc2_];
   }
   function §\x17\x17\x02§(§\x19\x06\x10§)
   {
      return this["\x18\x02\t"]("AUE")[_loc2_];
   }
   function §\x17\x17\x10§(§\x19\x06\x15§)
   {
      return this["\x18\x02\t"]("AUA")[_loc2_];
   }
   function §\x18\x01\x13§(§\x19\x10\x04§, §\x19\b\x14§)
   {
      return this["\x18\x02\t"]("SUB")[_loc2_][_loc3_];
   }
   function §\x18\x02\x04§(§\x19\x0f\x16§)
   {
      return this["\x18\x02\t"]("SCR")[_loc2_];
   }
   function §\x17\x15\x04§()
   {
      return this["\x18\x02\b"]("CSR");
   }
   function §\x17\x13\x13§()
   {
      return this["\x18\x02\b"]("ABR");
   }
   function §\x17\x1e\x1b§()
   {
      return this["\x18\x02\t"]("SIM");
   }
   function §\x17\x1e\x1a§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("SIM")[_loc2_];
   }
   function §\x17\x1e\x1d§()
   {
      return this["\x18\x02\t"]("SIT");
   }
   function §\x17\x1e\x1c§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("SIT")[_loc2_];
   }
   function §\x17\x17\x15§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("FC")[_loc2_];
   }
   function §\x18\x01\x1d§(§\x19\b\x0b§)
   {
      return this["\x18\x02\t"]("PT")[_loc2_];
   }
   function §\x17\x1a\x0f§(nDataBank, §\x1b\x02\x14§)
   {
      var _loc4_ = new String();
      if(_loc3_.toUpperCase() == "LANG")
      {
         _loc4_ = dofus.Constants["\x18\x03\x05"] + "_" + nDataBank;
      }
      else
      {
         if(_loc3_.toUpperCase() == "TOTAL")
         {
            var _loc5_ = this["\x17\x1a\x0f"](nDataBank,"lang");
            var _loc6_ = _global.api.lang.getConfigText("XTRA_FILE");
            var _loc7_ = 0;
            while(_loc7_ < _loc6_.length)
            {
               _loc5_ += this["\x17\x1a\x0f"](_loc6_[_loc7_]);
               _loc7_ = _loc7_ + 1;
            }
            return _loc5_;
         }
         _loc4_ = dofus.Constants["\x18\x03\n"] + "_" + nDataBank;
      }
      var _loc8_ = _global[_loc4_].data.WEIGHTS[_loc3_.toUpperCase()];
      if(_loc8_ == undefined || _global.isNaN(_loc8_))
      {
         return 0;
      }
      return _loc8_;
   }
   function §\x17\x0f\x12§(s)
   {
      var _loc3_ = new ank.utils.ExtendedString(_loc2_);
      if(this["\x17\x0f\x10"] == undefined || (this["\x17\x0f\x11"] == undefined || this["\x1d\x18\x06"] != this.api.datacenter.Basics.aks_current_server.id))
      {
         this["\x17\x0f\x10"] = new Array();
         this["\x17\x0f\x11"] = new Array();
         var _loc4_ = this["\x17\x1e\x11"]();
         this["\x1d\x18\x06"] = this.api.datacenter.Basics.aks_current_server.id;
         for(var i in _loc4_)
         {
            var _loc5_ = this["\x17\x1e\x10"](Number(i),this["\x1d\x18\x06"]);
            if(_loc5_ == undefined)
            {
               _loc5_ = _loc4_[i].d;
            }
            this["\x17\x0f\x10"].push("`SRVT:" + _loc4_[i].l + "`");
            this["\x17\x0f\x11"].push(_loc5_);
         }
      }
      return _loc3_.replace(this["\x17\x0f\x10"],this["\x17\x0f\x11"]);
   }
   function §\x16\x1c\f§()
   {
      this["\x1c\x01\x02"] = new Array();
   }
   function getDataBank()
   {
      var _loc2_ = this.api.datacenter.Basics.aks_current_server;
      if(_loc2_ == undefined)
      {
         return dofus.utils.["\x17\t\x11"].STANDARD_DATA_BANK;
      }
      return !_loc2_.isTemporis() ? dofus.utils.["\x17\t\x11"].STANDARD_DATA_BANK : dofus.utils.["\x17\t\x11"].TEMPORIS_DATA_BANK;
   }
   function §\x18\x02\b§(sKey)
   {
      var _loc3_ = this.getDataBank();
      var _loc4_ = dofus.Constants["\x18\x03\x05"] + "_" + _loc3_;
      return _global[_loc4_].data[_loc2_];
   }
   function §\x18\x02\t§(sKey, nForcedDataBank)
   {
      if(nForcedDataBank != undefined)
      {
         var _loc4_ = nForcedDataBank;
      }
      else
      {
         _loc4_ = this.getDataBank();
      }
      var _loc5_ = dofus.Constants["\x1b\x1a\x12"] + "_" + _loc4_ + "_" + _loc2_;
      var _loc6_ = _global[_loc5_];
      if(_loc6_ == undefined)
      {
         _global[_loc5_] = ank.utils.["\x1a\x1c\b"].getLocal(_loc5_);
         _loc6_ = _global[_loc5_];
      }
      var _loc7_ = _loc6_.data[_loc2_];
      if(_loc7_ instanceof Array)
      {
         var _loc8_ = this["\x1c\x01\x02"][_loc4_];
         if(_loc8_ == undefined)
         {
            _loc8_ = new Array();
            this["\x1c\x01\x02"][_loc4_] = _loc8_;
         }
         var _loc9_ = _loc8_[_loc2_];
         if(_loc9_ == undefined)
         {
            _loc9_ = _loc7_.slice();
            _loc8_[_loc2_] = _loc9_;
         }
         return _loc9_;
      }
      return _loc7_;
   }
}
