class ank.gapi.styles.§\x1b\x0b\x14§ extends Object
{
   static var §\x1e\r\t§ = new Object();
   function §\x1b\x0b\x14§()
   {
      super();
   }
   static function setStyle(§\x1b\b\x17§, §\x1a\x02\x0e§)
   {
      if(!(_loc3_ instanceof Object))
      {
         return undefined;
      }
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      ank.gapi.styles["\x1b\x0b\x14"]["\x1e\r\t"][_loc2_] = _loc3_;
   }
   static function getStyle(§\x1b\b\x17§)
   {
      return ank.gapi.styles["\x1b\x0b\x14"]["\x1e\r\t"][_loc2_];
   }
   static function §\x18\x16\x14§(§\x19\x1e\x1b§)
   {
      for(var k in _loc2_)
      {
         ank.gapi.styles["\x1b\x0b\x14"].setStyle(k,_loc2_[k]);
      }
   }
}
