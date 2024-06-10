class dofus.utils.ApiElement extends Object
{
   static var §\x1b\x1e\x10§ = new Array();
   function ApiElement()
   {
      super();
   }
   function §\x1e\x12\x05§()
   {
      return _global.api;
   }
   function §\x0e\x17§(§\x19\x11\x11§)
   {
      this._oAPI = _loc2_;
      return this["\x1e\x12\x05"]();
   }
   function initialize(oAPI)
   {
      this._oAPI = oAPI;
   }
   function §\x16\x01\x04§(§\x19\x12\x03§)
   {
      dofus.utils.ApiElement["\x1b\x1e\x10"].push(_loc2_);
      if(_root.onEnterFrame == undefined)
      {
         _root.onEnterFrame = this["\x1a\x0f\x04"];
      }
   }
   function §\x1a\x0f\x04§()
   {
      var _loc2_ = dofus.utils.ApiElement["\x1b\x1e\x10"].shift();
      _loc2_.method.apply(_loc2_.object,_loc2_.params);
      if(dofus.utils.ApiElement["\x1b\x1e\x10"].length == 0)
      {
         delete _root.onEnterFrame;
      }
   }
}
