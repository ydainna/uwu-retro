class dofus.graphics.gapi.§\x17\x01\x06§.Helper extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Helper";
   static var §\x1b\x01\x1b§ = null;
   static var §\x18\x1b\x06§ = 5;
   function Helper()
   {
      super();
   }
   static function §\x17\x16\x01§()
   {
      if(dofus.graphics.gapi.controls.Helper["\x1b\x01\x1b"] == null || !(dofus.graphics.gapi.controls.Helper["\x1b\x01\x1b"] instanceof dofus.graphics.gapi.controls.Helper))
      {
         var _loc2_ = _global.api.ui.getUIComponent("Banner");
         if(_loc2_ == undefined)
         {
            return null;
         }
         var _loc3_ = _loc2_.circleXtra["\x1a\x1c\x1d"]("helper",true,{bMask:true});
         return _loc3_.content;
      }
      return dofus.graphics.gapi.controls.Helper["\x1b\x01\x1b"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.Helper.CLASS_NAME);
      dofus.graphics.gapi.controls.Helper["\x1b\x01\x1b"] = this;
      this["\x1b\x1b\x13"] = new Array();
      this["\x15\x1d\x01"]("show");
   }
   function createChildren()
   {
      this["\x18\x06\x01"]();
   }
   function §\x18\x06\x01§()
   {
      this["\x1b\x01\x05"](0);
   }
   function §\x1b\x01\x05§(§\x19\x05\f§)
   {
      var _loc3_ = 0;
      while(_loc3_ < dofus.graphics.gapi.controls.Helper["\x18\x1b\x06"])
      {
         this["\x18\x01\x0b"](_loc3_ + 1)._visible = _loc2_ > _loc3_;
         _loc3_ = _loc3_ + 1;
      }
      this["\x1d\x1d\t"] = _loc2_;
   }
   function §\x18\x01\x0b§(§\x19\b\x0b§)
   {
      return this["_mcStar" + _loc2_];
   }
   function §\x15\x1e\x17§()
   {
      if(this["\x1d\x1d\t"] < dofus.graphics.gapi.controls.Helper["\x18\x1b\x06"])
      {
         this["\x1b\x01\x05"](this["\x1d\x1d\t"] + 1);
      }
   }
   function §\x1a\r\x01§()
   {
      if(this["\x1d\x1d\t"] > 0)
      {
         this["\x1b\x01\x05"](this["\x1d\x1d\t"] - 1);
      }
   }
   function §\x15\x1d\x01§(§\x1a\x0f\x10§)
   {
      this["\x1b\x1b\x13"].push(_loc2_);
      if(!this._bIsPlaying)
      {
         this["\x1a\x05\x1c"]();
      }
   }
   function §\x1a\x05\x1c§()
   {
      if(this["\x1b\x1b\x13"].length > 0)
      {
         var _loc2_ = String(this["\x1b\x1b\x13"].shift());
         this["\x1e\n\x11"] = _loc2_;
         this["\x1d\t\n"].gotoAndPlay(_loc2_);
      }
      else
      {
         var _loc0_ = null;
         if((_loc0_ = this["\x1e\n\x11"]) === "hide")
         {
            var _loc3_ = _global.api.ui.getUIComponent("Banner");
            _loc3_.circleXtra["\x1a\x1c\x1d"]("artwork",true,{bMask:true});
         }
         this["\x1d\t\n"].gotoAndStop("static");
      }
   }
   function §\x19\x1a\x16§()
   {
      this["\x15\x1e\x17"]();
      this["\x15\x1d\x01"]("wave");
   }
   function §\x19\x1c\x02§()
   {
      this["\x1a\r\x01"]();
      if(this["\x1d\x1d\t"] <= 0)
      {
         this["\x1d\x1d\t"] = 0;
         this["\x15\x1d\x01"]("hide");
      }
   }
   function §\x19\x14\x03§()
   {
      this["\x1a\x05\x1c"]();
   }
}
