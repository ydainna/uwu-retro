class dofus.datacenter.§\x18\x07\b§ extends Object
{
   function §\x18\x07\b§(§\x17\x04\x18§)
   {
      super();
      this.api = _global.api;
      this._oData = _loc3_;
   }
   function §\x02\x1d§()
   {
      return this._oData.m;
   }
   function §\x04\x1b§()
   {
      return this._oData.n;
   }
   function §\x1e\x15\x02§()
   {
      return this.api.lang["\x17\x18\x14"](this["\x16\x17\r"]).n;
   }
   function §\x1e\x15\x03§()
   {
      return this._oData.c;
   }
   function §\x1e\x16\x19§()
   {
      return this.x + ", " + this.y;
   }
   function §\r\x14§()
   {
      if(this._oData.m == undefined)
      {
         return this._oData.x;
      }
      return this.api.lang["\x17\x1b\x11"](this._oData.m).x;
   }
   function §\x0e\x02§()
   {
      if(this._oData.m == undefined)
      {
         return this._oData.y;
      }
      return this.api.lang["\x17\x1b\x11"](this._oData.m).y;
   }
   function §\n\x14§()
   {
      var _loc2_ = this.api.lang["\x17\x1b\x11"](this._oData.m).sa;
      var _loc3_ = this.api.lang["\x17\x1b\x0f"](_loc2_).a;
      var _loc4_ = this.api.lang["\x17\x1b\x06"](_loc3_).sua;
      return _loc4_;
   }
   function §\x1e\x1b\x01§()
   {
      return this._oData.g;
   }
   static function getConquestAreaHints()
   {
      var _loc2_ = _global.api;
      var _loc3_ = _loc2_.datacenter..Conquest["\x1b\x19\x0f"];
      var _loc4_ = new Array();
      var _loc5_ = new String();
      var _loc6_ = 0;
      while(_loc6_ < _loc3_["\x16\x04\x1d"].length)
      {
         if(_loc3_["\x16\x04\x1d"][_loc6_].alignment == 1)
         {
            var _loc8_ = _loc2_.lang.getText("BONTARIAN_PRISM");
            var _loc7_ = 420;
         }
         if(_loc3_["\x16\x04\x1d"][_loc6_].alignment == 2)
         {
            _loc8_ = _loc2_.lang.getText("BRAKMARIAN_PRISM");
            _loc7_ = 421;
         }
         _loc4_.push({g:_loc7_,m:_loc3_["\x16\x04\x1d"][_loc6_]["\x1a\x07\x04"],n:_loc8_,superAreaID:_loc2_.lang["\x17\x1b\x06"](_loc3_["\x16\x04\x1d"][_loc6_].id).a});
         _loc6_ = _loc6_ + 1;
      }
      return _loc4_;
   }
}
