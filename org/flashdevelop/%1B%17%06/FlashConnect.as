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
      if(eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.messages == null)
      {
         eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.initialize();
      }
      eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.messages.push(_loc2_);
   }
   static function trace(§\x1b\x17\x16§, level)
   {
      var _loc4_ = eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.createMsgNode(_loc2_.toString(),level);
      eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.send(_loc4_);
   }
   static function mtrace(§\x1b\x17\x16§, method, §\x1a\x04\x06§, line)
   {
      if(_loc4_.charAt(1) != ":")
      {
         _loc4_ = "~/" + _loc4_;
      }
      var _loc6_ = _loc4_ + ":" + line + ":" + _loc2_;
      new org.flashdevelop.utils.FlashConnect.trace(_loc6_,eval("\x1a\x01\x1a").flashdeveloputils..TraceLevel.DEBUG);
   }
   static function initialize()
   {
      eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.counter = 0;
      eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.messages = new Array();
      eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.socket = new XMLSocket();
      eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.socket.onData = function(§\x17\x04\x18§)
      {
         eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.onReturnData(_loc2_);
      };
      eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.socket.onConnect = function(§\x1b\f\x07§)
      {
         if(_loc2_)
         {
            eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.status = 1;
         }
         else
         {
            eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.status = -1;
         }
         eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.onConnection();
      };
      eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect["\x18\f\x05"] = _global.setInterval(eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.sendStack,50);
      eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.socket.connect(eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.host,eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.port);
   }
   static function createMsgNode(§\x18\x1c\x17§, level)
   {
      if(_global.isNaN(level))
      {
         level = eval("\x1a\x01\x1a").flashdeveloputils..TraceLevel.DEBUG;
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
      if(eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.messages.length > 0 && eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.status == 1)
      {
         var _loc2_ = new XML();
         var _loc3_ = _loc2_.createElement("flashconnect");
         while(eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.messages.length != 0)
         {
            eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.counter++;
            if(eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.counter > eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.limit)
            {
               _global.clearInterval(eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect["\x18\f\x05"]);
               var _loc4_ = new String("FlashConnect aborted. You have reached the limit of maximum messages.");
               var _loc5_ = eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.createMsgNode(_loc4_,eval("\x1a\x01\x1a").flashdeveloputils..TraceLevel.ERROR);
               _loc3_.appendChild(_loc5_);
               eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.messages = new Array();
               break;
            }
            var _loc6_ = XMLNode(eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.messages.shift());
            _loc3_.appendChild(_loc6_);
         }
         _loc2_.appendChild(_loc3_);
         eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.socket.send(_loc2_);
         eval("\x1a\x01\x1a").flashdeveloputils..FlashConnect.counter = 0;
      }
   }
}
