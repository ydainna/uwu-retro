class ank.battlefield.§\x1a\x06\f§
{
   static var §\x18\x1a\x0f§ = 200;
   function §\x1a\x06\f§(§\x16\b\b§, c, d)
   {
      this.initialize(_loc2_,c,_loc4_);
   }
   function initialize(§\x16\b\b§, c, d)
   {
      this["\x1d\b\x12"] = _loc2_;
      this["\x1d\n\x06"] = c;
      this["\x1e\x03\b"] = _loc4_;
      this["\x1e\x04\t"] = new Object();
      this["\x1c\x11\b"] = 0;
   }
   function clear()
   {
      for(var k in this["\x1d\n\x06"])
      {
         this["\x1d\n\x06"][k].removeMovieClip();
      }
   }
   function §\x15\x1e\b§(sID, §\x19\x10\x1a§, §\x19\x11\x05§, §\x1b\f\x15§, §\x19\x10\x06§)
   {
      var _loc7_ = this["\x17\x1c\x12"]();
      var _loc8_ = this["\x1d\n\x06"].getNextHighestDepth();
      this["\x1d\n\x06"].createEmptyMovieClip("pt" + _loc7_,_loc8_);
      var _loc9_ = this["\x1d\n\x06"]["pt" + _loc7_];
      var _loc10_ = _loc9_.createEmptyMovieClip("clip-pt" + _loc7_,_loc8_);
      _loc9_._x = _loc3_;
      _loc9_._y = _loc4_;
      _loc9_.mc = _loc10_;
      _loc9_.file = dofus.Constants.getPointClip(_loc6_);
      _loc9_.value = _loc5_;
      _loc9_.sID = sID;
      _loc9_.thisPath = this;
      if(this["\x1e\x04\t"][sID] == undefined)
      {
         this["\x1e\x04\t"][sID] = new Array();
      }
      this["\x1e\x04\t"][sID].push(_loc9_);
      if(this["\x1e\x04\t"][sID].length == 1)
      {
         this.loadPointClip(_loc9_);
      }
   }
   function §\x17\x1c\x12§(§\x1b\x18\n§)
   {
      this["\x1c\x11\b"]++;
      if(this["\x1c\x11\b"] > ank.battlefield["\x1a\x06\f"]["\x18\x1a\x0f"])
      {
         this["\x1c\x11\b"] = 0;
      }
      return this["\x1c\x11\b"];
   }
   function loadPointClip(oPoint)
   {
      var _loc3_ = new MovieClipLoader();
      _loc3_.loadClip(oPoint.file,oPoint.mc);
   }
   function onAnimateFinished(sID)
   {
      var _loc3_ = this["\x1e\x04\t"][sID];
      _loc3_.shift();
      if(_loc3_.length != 0)
      {
         var _loc4_ = _loc3_[0];
         this.loadPointClip(_loc4_);
      }
   }
}
