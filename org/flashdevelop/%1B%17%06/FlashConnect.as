class §\x1a\x01\x1a§.flashdevelop.utils.FlashConnect
{
   static var status = 0;
   static var limit = 1000;
   static var host = "127.0.0.1";
   static var port = 1978;
   function FlashConnect()
   {
   }
   static function send(§\x18\x1c\x17§)
   {
      if(org.flashdevelop.utils.FlashConnect.messages == null)
      {
         org.flashdevelop.utils.FlashConnect.initialize();
      }
      org.flashdevelop.utils.FlashConnect.messages.push(_loc2_);
   }
   static function trace(§\x1b\x17\x16§, level)
   {
      var _loc4_ = org.flashdevelop.utils.FlashConnect.createMsgNode(_loc2_.toString(),level);
      org.flashdevelop.utils.FlashConnect.send(_loc4_);
   }
   static function mtrace(§\x1b\x17\x16§, method, §\x1a\x04\x06§, line)
   {
      if(_loc4_.charAt(1) != ":")
      {
         _loc4_ = "~/" + _loc4_;
      }
      var _loc6_ = _loc4_ + ":" + line + ":" + _loc2_;
      new org.flashdevelop.utils.FlashConnect.trace(_loc6_,org.flashdevelop.utils.TraceLevel.DEBUG);
   }
   static function initialize()
   {
      org.flashdevelop.utils.FlashConnect.counter = 0;
      org.flashdevelop.utils.FlashConnect.messages = new Array();
      org.flashdevelop.utils.FlashConnect.socket = new XMLSocket();
      org.flashdevelop.utils.FlashConnect.socket.onData = function(§\x17\x04\x18§)
      {
         org.flashdevelop.utils.FlashConnect.onReturnData(_loc2_);
      };
      org.flashdevelop.utils.FlashConnect.socket.onConnect = function(success)
      {
         if(_loc2_)
         {
            org.flashdevelop.utils.FlashConnect.status = 1;
         }
         else
         {
            org.flashdevelop.utils.FlashConnect.status = -1;
         }
         org.flashdevelop.utils.FlashConnect.onConnection();
      };
      org.flashdevelop.utils.FlashConnect["\x18\f\x05"] = _global.setInterval(org.flashdevelop.utils.FlashConnect.sendStack,50);
      org.flashdevelop.utils.FlashConnect.socket.connect(org.flashdevelop.utils.FlashConnect.host,org.flashdevelop.utils.FlashConnect.port);
   }
   static function createMsgNode(§\x18\x1c\x17§, level)
   {
      if(_global.isNaN(level))
      {
         level = org.flashdevelop.utils.TraceLevel.DEBUG;
      }
      var _loc4_ = new XMLNode(1,null);
      var _loc5_ = new XMLNode(3,_global.escape(_loc2_));
      _loc4_.attributes.state = level.toString();
      _loc4_.attributes.cmd = "trace";
      _loc4_.nodeName = "message";
      _loc4_.appendChild(_loc5_);
      return _loc4_;
   }
   static function sendStack()
   {
      if(org.flashdevelop.utils.FlashConnect.messages.length > 0 && org.flashdevelop.utils.FlashConnect.status == 1)
      {
         var _loc2_ = new XML();
         var _loc3_ = _loc2_.createElement("flashconnect");
         while(org.flashdevelop.utils.FlashConnect.messages.length != 0)
         {
            org.flashdevelop.utils.FlashConnect.counter++;
            if(org.flashdevelop.utils.FlashConnect.counter > org.flashdevelop.utils.FlashConnect.limit)
            {
               _global.clearInterval(org.flashdevelop.utils.FlashConnect["\x18\f\x05"]);
               var _loc4_ = new String("FlashConnect aborted. You have reached the limit of maximum messages.");
               var _loc5_ = org.flashdevelop.utils.FlashConnect.createMsgNode(_loc4_,org.flashdevelop.utils.TraceLevel.ERROR);
               _loc3_.appendChild(_loc5_);
               org.flashdevelop.utils.FlashConnect.messages = new Array();
               break;
            }
            var _loc6_ = XMLNode(org.flashdevelop.utils.FlashConnect.messages.shift());
            _loc3_.appendChild(_loc6_);
         }
         _loc2_.appendChild(_loc3_);
         org.flashdevelop.utils.FlashConnect.socket.send(_loc2_);
         org.flashdevelop.utils.FlashConnect.counter = 0;
      }
   }
}
