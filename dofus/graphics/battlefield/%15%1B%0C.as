class dofus.§\x18\x03\x10§.battlefield.§\x15\x1b\f§ extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   static var §\x16\b\n§ = 70;
   static var §\x16\b\x0b§ = 0;
   static var §\x1b\x0f\x19§ = new TextFormat("Verdana",10,16777215,false,false,false,null,null,"left");
   static var TEXT_SMALL_FORMAT2 = new TextFormat("Verdana",9,16777215,false,false,false,null,null,"left");
   static var §\x1b\x0f\x18§ = new TextFormat("Verdana",9,16777215,false,false,false,null,null,"center");
   static var §\x1b\x0f\x17§ = new TextFormat("Verdana",10,16777215,true,false,false,null,null,"center");
   static var §\x17\x01\x12§ = 0;
   static var §\x1b\x19\x0b§ = 4;
   static var §\x18\x05\x14§ = 4;
   function §\x15\x1b\f§()
   {
      super();
   }
   function §\x1e\x1b\x11§()
   {
      return Math.ceil(this._height);
   }
   function §\r\x0e§()
   {
      return Math.ceil(this._width);
   }
   function initialize()
   {
      this.createEmptyMovieClip("\x1d\x0b\x17",10);
      this.createEmptyMovieClip("\x1d\x11\x10",20);
   }
   function §\x17\t\x18§(§\x19\x10\x18§, §\x19\b\x03§, §\x19\x05\x06§)
   {
      this["\x17\n\x0f"](this["\x1d\x11\x10"],(0 - _loc2_) / 2,0,_loc2_,_loc3_,3,_loc4_,dofus.graphics.battlefield["\x15\x1b\f"]["\x16\b\n"]);
   }
   function §\x17\n\x03§(§\x1a\x1b\x0f§, §\x19\x07\x19§)
   {
      this["\x1d\x0b\x17"]["\x16\x06\x16"](ank.utils.["\x1b\f\x1a"],"_mcSwfLoader",10);
      this["\x1d\x0b\x17"]._mcSwfLoader["\x18\x16\x15"](_loc2_,_loc3_);
   }
   function §\x15\x1e\t§(§\x19\f\x13§, §\x19\x07\x19§)
   {
      switch(_loc2_)
      {
         case -1:
            var _loc4_ = 0.5;
            var _loc5_ = new Array();
            _loc5_ = _loc5_.concat([_loc4_,0,0,0,0]);
            _loc5_ = _loc5_.concat([0,_loc4_,0,0,0]);
            _loc5_ = _loc5_.concat([0,0,_loc4_,0,0]);
            _loc5_ = _loc5_.concat([0,0,0,1,0]);
            var _loc6_ = new flash.filters.ColorMatrixFilter(_loc5_);
            this["\x1d\x0b\x17"].filters = new Array(_loc6_);
            break;
         case 1:
            switch(Math.floor((_loc3_ - 1) / 10))
            {
               case 0:
                  var _loc7_ = 11201279;
                  break;
               case 1:
                  _loc7_ = 13369344;
                  break;
               case 2:
                  _loc7_ = 0;
            }
            var _loc8_ = 0.5;
            var _loc9_ = 10;
            var _loc10_ = 10;
            var _loc11_ = 2;
            var _loc12_ = 3;
            var _loc13_ = false;
            var _loc14_ = false;
            var _loc15_ = new flash.filters.GlowFilter(_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_);
            var _loc16_ = new Array();
            _loc16_.push(_loc15_);
            this["\x1d\x0b\x17"].filters = _loc16_;
      }
   }
}
