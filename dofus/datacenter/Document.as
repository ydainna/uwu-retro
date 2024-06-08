class dofus.§\x17\x04\x19§.Document extends Object
{
   static var §\x18\x1a\b§ = 13;
   function Document(§\x18\x1c\x04§)
   {
      super();
      this.initialize(_loc3_);
   }
   function §\f\x13§()
   {
      switch(this["\x1e\r\n"])
      {
         case "book":
            return "DocumentBook";
         case "parchment":
            return "DocumentParchment";
         case "roadsignleft":
            return "DocumentRoadSignLeft";
         case "roadsignright":
            return "DocumentRoadSignRight";
         default:
      }
   }
   function §\f\x02§()
   {
      return this["\x1e\r\b"];
   }
   function §\n\x10§()
   {
      return this["\x1e\f\x1d"];
   }
   function §\x1e\x12\x12§()
   {
      return this["\x1e\x07\x14"];
   }
   function §\x05\x1a§()
   {
      return this["\x1b\x1e\n"].length;
   }
   function initialize(§\x18\x1c\x04§)
   {
      this.api = _global.api;
      this["\x1e\r\n"] = _loc2_.type;
      this["\x1e\r\b"] = _loc2_.title;
      this["\x1e\f\x1d"] = _loc2_.subtitle;
      this["\x1e\x07\x14"] = _loc2_.author;
      this["\x1e\b\x10"] = dofus.Constants["\x1b\x0b\x15"] + _loc2_.style + ".css";
      this["\x1b\x1b\x1d"] = _loc2_.chapters;
      this["\x1b\x1e\n"] = new ank.utils.ExtendedArray();
      switch(this["\x1e\r\n"])
      {
         case "book":
            var _loc3_ = 1;
            if(this["\x1e\r\b"] != undefined)
            {
               this["\x1b\x1e\n"].push({type:"blank"});
               _loc3_;
               this["\x1b\x1e\n"].push({type:"title",num:_loc3_++,title:this["\x1e\r\b"],subtitle:this["\x1e\f\x1d"],author:this["\x1e\x07\x14"]});
            }
            var _loc4_ = new Object();
            var _loc5_ = this["\x1b\x1b\x1d"].length;
            if(_loc5_ != 0 && this["\x1b\x1b\x1d"] != undefined)
            {
               _loc3_;
               this["\x1b\x1e\n"].push({type:"blank",num:_loc3_++});
               var _loc6_ = 0;
               var _loc7_ = 0;
               while(_loc6_ < _loc5_)
               {
                  var _loc8_ = this["\x1b\x1b\x1d"].slice(_loc6_,_loc6_ + dofus.datacenter..Document["\x18\x1a\b"]);
                  _loc3_;
                  this["\x1b\x1e\n"].push({type:"index",num:_loc3_++,chapters:_loc8_});
                  _loc6_ += dofus.datacenter..Document["\x18\x1a\b"];
                  _loc7_ = _loc7_ + 1;
               }
               if(_loc7_ % 2 == 0)
               {
                  _loc3_;
                  this["\x1b\x1e\n"].push({type:"blank",num:_loc3_++});
               }
               for(var k in this["\x1b\x1b\x1d"])
               {
                  _loc4_[this["\x1b\x1b\x1d"][k][1]] = this["\x1b\x1b\x1d"][k];
               }
            }
            var _loc9_ = _loc2_.pages;
            var _loc10_ = _loc9_.length;
            if(_loc10_ != 0)
            {
               _loc3_;
               this["\x1b\x1e\n"].push({type:"blank",num:_loc3_++});
               var _loc11_ = this.api.kernel["\x17\t\x05"]["\x17\x16\x04"]() + "#1/#2.#1";
               var _loc12_ = 0;
               while(_loc12_ < _loc10_)
               {
                  var _loc13_ = new String();
                  if(_loc4_[_loc12_] != undefined)
                  {
                     if(_loc4_[_loc12_][2] && _loc3_ % 2 == 0)
                     {
                        _loc3_;
                        this["\x1b\x1e\n"].push({type:"blank",num:_loc3_++});
                     }
                     _loc4_[_loc12_][4] = _loc3_;
                     if(_loc4_[_loc12_][3])
                     {
                        _loc13_ = "<br/><p class=\'chapter\'>" + _loc4_[_loc12_][0] + "</p><br/>";
                     }
                  }
                  _loc9_[_loc12_] = ank.utils.["\x1a\x04\t"]["\x1a\r\n"](_loc9_[_loc12_],_loc11_);
                  _loc3_;
                  this["\x1b\x1e\n"].push({type:"text",num:_loc3_++,text:_loc13_ + _loc9_[_loc12_],cssFile:this["\x1e\b\x10"]});
                  _loc12_ = _loc12_ + 1;
               }
            }
            break;
         case "parchment":
         case "roadsignleft":
         case "roadsignright":
            var _loc14_ = _loc2_.pages[0];
            var _loc15_ = this.api.kernel["\x17\t\x05"]["\x17\x16\x04"]() + "#1/#2.#1";
            _loc14_ = ank.utils.["\x1a\x04\t"]["\x1a\r\n"](_loc14_,_loc15_);
            this["\x1b\x1e\n"].push({text:_loc14_,cssFile:this["\x1e\b\x10"]});
      }
   }
   function §\x17\x1d\x02§(§\x19\x0b\x17§)
   {
      return this["\x1b\x1e\n"][_loc2_];
   }
}
