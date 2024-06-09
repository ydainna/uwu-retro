class dofus.§\x18\x18\x0b§.TemporisConfigManager extends dofus.utils.ApiElement
{
   function TemporisConfigManager()
   {
      super();
      this.initialize();
   }
   function initialize()
   {
      this._aKeys = new Array();
   }
   function getIntegerValue(sKey)
   {
      var _loc3_ = Number(this._aKeys[_loc2_]);
      if(_loc3_ == undefined || _global.isNaN(_loc3_))
      {
         return -1;
      }
      return _loc3_;
   }
   function putIntegerValue(sKey, §\x19\x10\x10§)
   {
      this._aKeys[_loc2_] = _loc3_;
   }
}
