class ank.external.ExternalConnector extends LocalConnection
{
   static var §\x16\x1e\x0f§ = "__ank.external.connector__";
   static var §\x1b\x10\b§ = 1500;
   static var §\x1b\x10\t§ = "externalconnectortimeout";
   var §\x1c\x05\b§ = false;
   var §\x1c\x05\x07§ = false;
   var §\x1b\x1b\x19§ = new Array();
   var §\x1c\x02\x0e§ = false;
   function ExternalConnector()
   {
      super();
      eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
      this["\x1e\b\r"] = ank..external.ExternalConnector["\x16\x1e\x0f"] + new Date().getTime() + random(100000);
      this.connect(this["\x1e\b\r"]);
      ank.utils.Timer.setTimer(this,"externalconnector",this,this.initialize,100);
   }
   static function §\x17\x19\t§()
   {
      if(ank..external.ExternalConnector._oInstance == undefined)
      {
         ank..external.ExternalConnector._oInstance = new ank..external.ExternalConnector();
      }
      return ank..external.ExternalConnector._oInstance;
   }
   function §\x1a\b\x04§(§\x1b\x03\x14§)
   {
      this["\x1b\x1b\x19"].push({args:arguments});
      if(!this["\x1c\x05\b"])
      {
         if(!this["\x1c\x02\x0e"])
         {
            this["\x1a\x07\x14"]();
         }
         else if(!this["\x1c\x05\x07"])
         {
            this["\x19\x1e\n"]();
         }
      }
   }
   function call(§\x1b\x03\x14§)
   {
      this["\x1c\x02\x0e"] = true;
      var _loc3_ = new Array();
      _loc3_.push(ank..external.ExternalConnector["\x16\x1e\x0f"]);
      _loc3_.push(_loc2_);
      _loc3_.push(this["\x1e\b\r"]);
      var _loc4_ = 1;
      while(_loc4_ < arguments.length)
      {
         _loc3_.push(arguments[_loc4_]);
         _loc4_ = _loc4_ + 1;
      }
      this.send.apply(this,_loc3_);
   }
   function onStatus(§\x19\x13\x06§)
   {
      this["\x1c\x02\x0e"] = false;
      switch(_loc2_.level)
      {
         case "status":
            break;
         case "error":
            this["\x17\x07\x19"]({type:"onExternalConnectionFaild"});
      }
      if(this["\x1c\x05\x07"])
      {
         this["\x1a\x07\x14"]();
      }
   }
   function toString()
   {
      return "ExternalConnector initialized:" + this["\x1c\x05\x07"] + " calling:" + this["\x1c\x02\x0e"];
   }
   function initialize()
   {
      this["\x1c\x05\b"] = true;
      this.call("Initialize");
      ank.utils.Timer.setTimer(this,ank..external.ExternalConnector["\x1b\x10\t"],this,this["\x19\x19\x04"],ank..external.ExternalConnector["\x1b\x10\b"]);
   }
   function §\x1a\x07\x14§()
   {
      if(this["\x1b\x1b\x19"].length != 0)
      {
         var _loc2_ = this["\x1b\x1b\x19"].shift();
         if(!this["\x1c\x05\x07"])
         {
            this["\x17\x07\x19"]({type:"onExternalConnectionFaild"});
         }
         else
         {
            this.call.apply(this,_loc2_.args);
         }
      }
   }
   function §\x19\x19\x03§()
   {
      ank.utils.Timer.removeTimer(this,ank..external.ExternalConnector["\x1b\x10\t"]);
      this["\x1c\x05\b"] = false;
      this["\x1c\x05\x07"] = true;
      this["\x1a\x07\x14"]();
   }
   function §\x19\x19\x04§()
   {
      ank.utils.Timer.removeTimer(this,ank..external.ExternalConnector["\x1b\x10\t"]);
      this["\x1c\x05\b"] = false;
      this["\x1c\x05\x07"] = false;
      this["\x17\x07\x19"]({type:"onExternalConnectionFaild"});
   }
   function §\x19\x1e\n§()
   {
      this["\x17\x07\x19"]({type:"onExternalConnectionFaild"});
   }
   function §\x19\x14\x04§(§\x1a\x0f\x11§)
   {
      this["\x17\x07\x19"]({type:"\x19\x14\x04",args:_loc2_.split(" ")});
   }
   function §\x19\x14\x1a§()
   {
      this["\x17\x07\x19"]({type:"\x19\x14\x1a"});
   }
   function §\x19\x14\x1b§(§\x16\x01\x18§)
   {
      this["\x17\x07\x19"]({type:"\x19\x14\x1b",files:_loc2_});
   }
   function §\x19\x14\x1c§()
   {
      this["\x17\x07\x19"]({type:"\x19\x14\x1c"});
   }
   function §\x19\x14\x1d§(§\x1a\x1b\x0f§)
   {
      this["\x17\x07\x19"]({type:"\x19\x14\x1d",file:_loc2_});
   }
   function §\x19\x18\x11§(sMsg, §\x19\x01\x1a§)
   {
      this["\x17\x07\x19"]({type:"\x19\x18\x11",msg:_loc2_,params:_loc3_});
   }
   function §\x19\x18\x12§(§\x19\x04\t§, §\x19\x04\n§)
   {
      this["\x17\x07\x19"]({type:"\x19\x18\x12",bl:_loc2_,bt:_loc3_});
   }
   function §\x19\x18\x10§()
   {
      this["\x17\x07\x19"]({type:"\x19\x18\x10"});
   }
   function onScreenResolutionError(oEvent)
   {
      this["\x17\x07\x19"]({type:"onScreenResolutionError"});
   }
   function onScreenResolutionSuccess(oEvent)
   {
      this["\x17\x07\x19"]({type:"onScreenResolutionSuccess"});
   }
}
