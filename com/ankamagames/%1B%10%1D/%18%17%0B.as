class com.ankamagames.tools.§\x18\x17\x0b§
{
   static var §\x1a\x14\x11§ = "localhost";
   static var SERVER_PORT = 4444;
   static var §\x18\x14\x11§ = 16777215;
   static var .LEVEL_NETWORK = 13421772;
   static var §\x18\x14\r§ = 39219;
   static var §\x18\x14\x0f§ = 16750848;
   static var §\x18\x14\x0b§ = 16711680;
   static var §\x18\x14\x14§ = 6723993;
   static var §\x18\x14\x13§ = 16711935;
   static var §\x18\x14\f§ = 11190271;
   static var §\x18\x14\n§ = [com.ankamagames.tools.Logger["\x18\x14\x11"],com.ankamagames.tools.Logger.LEVEL_NETWORK,com.ankamagames.tools.Logger["\x18\x14\r"],com.ankamagames.tools.Logger["\x18\x14\x0f"],com.ankamagames.tools.Logger["\x18\x14\x0b"],com.ankamagames.tools.Logger["\x18\x14\x14"],com.ankamagames.tools.Logger["\x18\x14\x13"],com.ankamagames.tools.Logger["\x18\x14\f"]];
   static var §\x18\x1b\x03§ = 10;
   var §\x1d\x14\x1c§ = 0;
   function §\x18\x17\x0b§()
   {
      this["\x1c\x0b\x15"] = new Array();
      this.connect();
   }
   static function initialize()
   {
      com.ankamagames.tools.Logger.instance = new com.ankamagames.tools.Logger();
   }
   static function out()
   {
      var _loc2_ = arguments[0];
      var _loc3_ = arguments[arguments.length - 3];
      var _loc4_ = arguments[arguments.length - 2];
      var _loc5_ = arguments[arguments.length - 1];
      var _loc6_ = arguments.length <= 4 ? undefined : arguments[1];
      if(_loc6_ == 666)
      {
         _loc6_ = com.ankamagames.tools.Logger["\x18\x14\f"];
      }
      var _loc7_ = new String(_loc2_);
      if(_loc7_.toUpperCase().indexOf("[EXCEPTION]") == 0)
      {
         _loc7_ = _loc7_.substr(12);
         _loc6_ = com.ankamagames.tools.Logger["\x18\x14\x0b"];
      }
      else if(_loc7_.toUpperCase().indexOf("[WTF]") == 0)
      {
         _loc7_ = _loc7_.substr(5);
         _loc6_ = com.ankamagames.tools.Logger["\x18\x14\x14"];
      }
      else if(_loc7_.indexOf("[?!!]") == 0)
      {
         _loc7_ = _loc7_.substr(5);
         _loc6_ = com.ankamagames.tools.Logger["\x18\x14\x13"];
      }
      com.ankamagames.tools.Logger.instance.trace(_loc7_,_loc6_);
   }
   function connect()
   {
      this["\x1e\x0b\f"] = new XMLSocket();
      this["\x1c\r\x12"] = false;
      this["\x1e\x0b\f"].onConnect = function(success)
      {
         var _loc3_ = arguments.callee.tracer;
         _loc3_["\x19\x15\x1a"](_loc2_);
      };
      this["\x1e\x0b\f"].onClose = function()
      {
         var _loc2_ = arguments.callee.tracer;
         _loc2_["\x19\x1c\x1c"]();
      };
      this["\x1e\x0b\f"].onConnect.tracer = this;
      this["\x1e\x0b\f"].connect(com.ankamagames.tools.Logger["\x1a\x14\x11"],com.ankamagames.tools.Logger.SERVER_PORT);
   }
   function trace(§\x18\x1c\x17§, §\x16\x1d\x06§)
   {
      if(this["\x1c\r\x12"])
      {
         this["\x1e\x0b\f"].send("!SOS<showMessage key=\"KeyColor" + _loc3_ + "\"><![CDATA[" + _loc2_ + "]]></showMessage>");
      }
      else
      {
         var _loc4_ = new Array();
         _loc4_[0] = _loc3_;
         _loc4_[1] = _loc2_;
         this["\x1c\x0b\x15"].push(_loc4_);
      }
   }
   function §\x19\x1c\x1c§()
   {
      if(this["\x1d\x14\x1c"] < com.ankamagames.tools.Logger["\x18\x1b\x03"])
      {
         this.connect();
         this["\x1d\x14\x1c"]++;
      }
   }
   function §\x19\x15\x1a§(success)
   {
      var _loc3_ = 0;
      while(_loc3_ < com.ankamagames.tools.Logger["\x18\x14\n"].length)
      {
         this["\x1e\x0b\f"].send("!SOS<setKey><name>KeyColor" + com.ankamagames.tools.Logger["\x18\x14\n"][_loc3_] + "</name><color>" + com.ankamagames.tools.Logger["\x18\x14\n"][_loc3_] + "</color></setKey>");
         _loc3_ = _loc3_ + 1;
      }
      var _loc4_ = 0;
      while(_loc4_ < this["\x1c\x0b\x15"].length)
      {
         this["\x1e\x0b\f"].send("!SOS<showMessage key=\"KeyColor" + this["\x1c\x0b\x15"][_loc4_][0] + "\"><![CDATA[" + this["\x1c\x0b\x15"][_loc4_][1] + "]]></showMessage>");
         _loc4_ = _loc4_ + 1;
      }
      this["\x1c\r\x12"] = true;
      this["\x1d\x14\x1c"] = 0;
   }
}
