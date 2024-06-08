class ank.utils.§\x18\x17\x0b§
{
   static var LC = new LocalConnection();
   static var §\x18\x1a\x13§ = 50;
   static var §\x18\x1a\x14§ = 300;
   static var §\x1c\x11\t§ = new ank.utils.Logger();
   function §\x18\x17\x0b§()
   {
      this["\x1d\x06\t"] = new Array();
      this["\x1c\x10\x19"] = new Array();
      ank.utils.Logger.LC.connect("loggerIn");
      ank.utils.Logger.LC["\x17\x1b\x02"] = function()
      {
         ank.utils.Logger.LC.send("loggerOut","log",ank.utils.Logger["\x18\x17\x14"]);
      };
      ank.utils.Logger.LC["\x17\x17\x12"] = function()
      {
         ank.utils.Logger.LC.send("loggerOut","err",ank.utils.Logger["\x17\r\x1a"]);
      };
   }
   static function log(§\x1b\x12\x05§, §\x1b\b\x0e§)
   {
      new org.flashdevelop.utils.FlashConnect.trace(_loc2_,"ank.utils.Logger::log","C:\\Users\\ddallinge\\Git\\client\\src\\ank-common\\classes/ank/utils/Logger.as",49);
      ank.utils.Logger.LC.send("loggerOut","log",_loc2_);
      if(_loc2_.length < ank.utils.Logger["\x18\x1a\x14"])
      {
         ank.utils.Logger["\x1c\x11\t"]["\x1d\x06\t"].push(_loc3_ != undefined ? _loc3_ + " :\n" + _loc2_ : _loc2_);
      }
      if(ank.utils.Logger["\x1c\x11\t"]["\x1d\x06\t"].length > ank.utils.Logger["\x18\x1a\x13"])
      {
         ank.utils.Logger["\x1c\x11\t"]["\x1d\x06\t"].shift();
      }
   }
   static function err(§\x1b\x12\x05§)
   {
      _loc2_ = "ERROR : " + _loc2_;
      new org.flashdevelop.utils.FlashConnect.trace(_loc2_,"ank.utils.Logger::err","C:\\Users\\ddallinge\\Git\\client\\src\\ank-common\\classes/ank/utils/Logger.as",70);
      ank.utils.Logger.LC.send("loggerOut","err",_loc2_);
      ank.utils.Logger["\x1c\x11\t"]["\x1c\x10\x19"].push(_loc2_);
   }
   static function §\x02\x18§()
   {
      return ank.utils.Logger["\x1c\x11\t"]["\x1d\x06\t"].join("\n");
   }
   static function §\x1e\x1a\x01§()
   {
      return ank.utils.Logger["\x1c\x11\t"]["\x1c\x10\x19"].join("\n");
   }
}
