class dofus.§\x18\x03\x10§.battlefield.§\x17\f\f§ extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x18\b\n§ = 20;
   function §\x17\f\f§(§\x1a\x02\b§)
   {
      super();
      this["\x1e\x05\x1a"] = _loc3_;
      this.initialize();
      this.addToQueue({object:this,method:this.addListeners});
   }
   function §\x1e\x1b\x11§()
   {
      return 20;
   }
   function addListeners()
   {
      this["\x1e\x05\x1a"]["\x17\f\t"].addEventListener("effectsChanged",this);
   }
   function initialize()
   {
      this.createEmptyMovieClip("\x1d\x0b\x02",10);
      this["\x1b\x1c\x14"] = this["\x1e\x05\x1a"]["\x17\f\t"]["\x17\x17\x04"]();
      this.drawClip();
   }
   function drawClip()
   {
      var _loc2_ = this["\x1b\x1c\x14"].length - 1;
      this["\x1b\x1c\x15"] = new Array();
      while(_loc2_ >= 0)
      {
         var _loc3_ = this["\x1b\x1c\x14"][_loc2_];
         if(this["\x1b\x1c\x15"][_loc3_.type])
         {
            this["\x1b\x1c\x15"][_loc3_.type].qty++;
         }
         else
         {
            this["\x1b\x1c\x15"][_loc3_.type] = {effect:_loc3_,qty:1};
         }
         _loc2_ = _loc2_ - 1;
      }
      var _loc5_ = 0;
      var _loc6_ = 0;
      for(var j in this["\x1b\x1c\x15"])
      {
         _loc3_ = this["\x1b\x1c\x15"][j].effect;
         var _loc7_ = new MovieClipLoader();
         _loc7_.addListener(this);
         this["\x1d\x0b\x02"].createEmptyMovieClip("_mcEffect" + j,Number(j));
         var _loc4_ = this["\x1d\x0b\x02"]["_mcEffect" + j];
         _loc4_._x = _loc5_;
         _loc5_ += dofus.graphics.battlefield["\x17\f\f"]["\x18\b\n"];
         _loc4_.effect = _loc3_;
         _loc7_.loadClip(dofus.Constants["\x17\f\b"],_loc4_);
      }
      this._x = (0 - _loc5_) / 2;
   }
   function onLoadInit(§\x18\x1b\f§)
   {
      var _loc3_ = _loc2_.getDepth();
      var _loc4_ = this["\x1b\x1c\x15"][_loc3_].effect;
      var _loc5_ = _loc2_.attachMovie("Icon_" + _loc4_["\x16\x19\x04"],"icon_mc",10);
      _loc5_.__proto__ = dofus.graphics.battlefield.EffectIcon.prototype;
      var _loc6_ = dofus.graphics.battlefield.EffectIcon(_loc5_);
      _loc6_.initialize(_loc4_.operator,this["\x1b\x1c\x15"][_loc3_].qty);
      if(this["\x1b\x1c\x15"][_loc3_].qty > 1)
      {
         _loc5_ = _loc2_.attachMovie("Icon_" + _loc4_["\x16\x19\x04"],"icon_mc_multiple",5,{_x:3,_y:3});
         _loc5_.__proto__ = dofus.graphics.battlefield.EffectIcon.prototype;
         _loc6_ = dofus.graphics.battlefield.EffectIcon(_loc5_);
         _loc6_.initialize(_loc4_.operator,this["\x1b\x1c\x15"][_loc3_].qty);
      }
   }
   function effectsChanged(oEvent)
   {
      this.initialize();
   }
}
