class dofus.graphics.battlefield.EffectIcon extends MovieClip
{
   static var §\x16\x1d\x10§ = 255;
   static var §\x16\x1d\x0f§ = 16711680;
   static var §\x16\x1d\x0e§ = 65280;
   function EffectIcon()
   {
      super();
      _global.subtrace("yahoo");
      this.initialize(this["\x1e\x0b\x11"],this["\x1d\x1b\x10"]);
   }
   function §\x19\x16§(§\x1b\x04\x11§)
   {
      this["\x1e\x0b\x11"] = _loc2_;
      return this["\x05\x13"]();
   }
   function §\x1a\x17§(§\x19\f\x14§)
   {
      this["\x1d\x1b\x10"] = _loc2_;
      return this.qte;
   }
   function initialize(§\x1b\x04\x11§, §\x19\f\x14§)
   {
      switch(_loc2_)
      {
         case "-":
            this.attachMovie("Icon-","_mcOp",10,{_x:1,_y:1});
            var _loc4_ = new Color(this._mcbackground);
            _loc4_.setRGB(dofus.graphics.battlefield.EffectIcon["\x16\x1d\x0f"]);
            break;
         case "+":
            this.attachMovie("Icon+","_mcOp",10,{_x:1,_y:1});
            var _loc5_ = new Color(this._mcbackground);
            _loc5_.setRGB(dofus.graphics.battlefield.EffectIcon["\x16\x1d\x10"]);
            break;
         case "*":
            this.attachMovie("Icon*","_mcOp",10,{_x:1,_y:1});
            var _loc6_ = new Color(this._mcbackground);
            _loc6_.setRGB(dofus.graphics.battlefield.EffectIcon["\x16\x1d\x0e"]);
      }
   }
}
