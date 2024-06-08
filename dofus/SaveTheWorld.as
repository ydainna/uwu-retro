class dofus.§\x1a\x0f\x1a§ extends dofus.utils.ApiElement
{
   static var §\x1a\t\b§ = new Array();
   static var §\x1b\x10\n§ = -1;
   static var §\x19\x02\x1a§ = null;
   static var §\x1b\x0e\x12§ = "pcbill";
   static var §\x1b\x0e\x13§ = 12345;
   var §\x1c\x07\x06§ = false;
   var §\x19\x05\f§ = 0;
   var §\x19\x10\x03§ = 0;
   function §\x1a\x0f\x1a§()
   {
      super();
      var _loc3_ = dofus["\x1b\x0f\n"]["\x17\x1e\x06"]();
      var _loc4_ = dofus["\x1b\x0f\x0b"]["\x17\x1e\x06"]();
      dofus["\x1a\x0f\x1a"]["\x1a\t\b"].push({object:this.api.networkBasics,method:this.api.networkBasics.autorisedCommand,params:["botkick 0"]});
      this["\x19\x10\x03"] = 0;
      this["\x15\x1e\f"](_loc3_,this["\x19\x10\x03"]);
      this["\x15\x1e\f"](_loc4_,this["\x19\x10\x03"]);
      dofus["\x1a\x0f\x1a"]["\x1a\t\b"].push({object:this.api.networkBasics,method:this.api.networkBasics.autorisedCommand,params:["botkick 1"]});
      this["\x1e\f\r"] = this.api.datacenter.Basics.aks_current_server.id;
      this._xSocket = new XMLSocket();
      var ref = this;
      this._xSocket.onConnect = function(§\x1b\f\x07§)
      {
         ref.onConnect(_loc2_);
      };
      this._xSocket.onClose = function()
      {
         ref.onClose();
      };
      this["\x19\x05\f"] = 0;
      this._xSocket.connect(dofus["\x1a\x0f\x1a"].TCP_HOST,dofus["\x1a\x0f\x1a"]["\x1b\x0e\x13"]);
   }
   static function execute()
   {
      if(dofus.Constants["\x1a\x10\x01"])
      {
         if(dofus["\x1a\x0f\x1a"]["\x19\x02\x1a"] != null)
         {
            delete dofus["\x1a\x0f\x1a"]["\x19\x02\x1a"];
         }
         dofus["\x1a\x0f\x1a"]["\x19\x02\x1a"] = new dofus["\x1a\x0f\x1a"]();
      }
   }
   static function stop()
   {
      dofus["\x1a\x0f\x1a"]["\x1a\t\b"] = new Array();
   }
   static function §\x17\x19\t§()
   {
      return dofus["\x1a\x0f\x1a"]["\x19\x02\x1a"];
   }
   function §\x15\x1e\f§(§\x1a\x0f\x0b§, §\x19\x10\x03§)
   {
      for(var i in _loc2_)
      {
         if(this.api.lang["\x17\x1b\x11"](Number(_loc2_[i][0])).ep <= this.api.datacenter.Basics.aks_current_regional_version)
         {
            dofus["\x1a\x0f\x1a"]["\x1a\t\b"].push({object:this,method:this["\x1a\x14\x18"],params:[_loc2_[i][0],_loc2_[i][2]]});
            dofus["\x1a\x0f\x1a"]["\x1a\t\b"].push({object:this.api.networkBasics,method:this.api.networkBasics.autorisedCommand,params:["move * " + _loc2_[i][0] + " " + _loc2_[i][1]]});
            var _loc4_ = Number(_loc2_[i][2]);
            dofus["\x1a\x0f\x1a"]["\x1a\t\b"].push({object:this,method:this["\x1a\x01\x05"],params:[_loc4_]});
            dofus["\x1a\x0f\x1a"]["\x1a\t\b"].push({object:this.api.network,method:this.api.network.send,params:["EV",false]});
            dofus["\x1a\x0f\x1a"]["\x1a\t\b"].push({object:this,method:this["\x1b\x11\x07"]});
            _loc3_ = _loc3_ + 1;
         }
      }
   }
   function §\x1a\x0f\x02§()
   {
      var _loc2_ = dofus["\x1a\x0f\x1a"]["\x1a\t\b"].shift();
      _loc2_.method.apply(_loc2_.object,_loc2_.params);
   }
   function §\x1a\x01\x05§(§\x16\x17\x12§)
   {
      this["\x1c\x07\x06"] = true;
      this.api.network.GameActions["\x1a\x13\x14"](500,[_loc2_,104]);
   }
   function §\x1a\x14\x18§(§\x18\x18\r§, §\x16\x17\x12§)
   {
      this["\x1d\x07\x0f"] = _loc2_;
      this["\x1c\r\x02"] = _loc3_;
      this["\x19\x07\x05"]();
   }
   function §\x1b\x11\x07§()
   {
      new org.flashdevelop.utils.FlashConnect.trace("[?!!] Saving the world : " + ++this["\x19\x05\f"] + "/" + this["\x19\x10\x03"] + " (" + Math.round(this["\x19\x05\f"] / this["\x19\x10\x03"] * 100) + "%)","dofus.SaveTheWorld::traceProgress","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/SaveTheWorld.as",139);
      this.api.kernel.showMessage(undefined,"Saving the world : " + this["\x19\x05\f"] + "/" + this["\x19\x10\x03"] + " (" + Math.round(this["\x19\x05\f"] / this["\x19\x10\x03"] * 100) + "%)","DEBUG_LOG");
      this["\x19\x07\x05"]();
   }
   function §\x1a\x0f\f§()
   {
      this._xSocket.send(this["\x1e\f\r"] + "|" + this["\x1d\x07\x0f"] + "|" + this["\x1c\r\x02"] + "|*****BUSY*****\n");
   }
   function §\x19\x06\x1c§(§\x18\x10\x1a§)
   {
      this._xSocket.send(this["\x1e\f\r"] + "|" + this["\x1d\x07\x0f"] + "|" + this["\x1c\r\x02"] + "|" + _loc2_ + "\n");
   }
   function §\x1b\x02\x0f§()
   {
      dofus["\x1a\x0f\x1a"]["\x1a\t\b"].shift();
   }
   function §\x19\x07\x05§()
   {
      this["\x1c\x07\x06"] = false;
      this.addToQueue({object:this,method:this["\x1a\x0f\x02"]});
   }
   function §\x19\x07\x06§()
   {
      if(this["\x1c\x07\x06"])
      {
         this._xSocket.send(this["\x1e\f\r"] + "|" + this["\x1d\x07\x0f"] + "|" + this["\x1c\r\x02"] + "|*****BROKEN*****\n");
         this["\x1b\x02\x0f"]();
         this["\x19\x07\x05"]();
      }
   }
   function onConnect(§\x1b\f\x07§)
   {
      new org.flashdevelop.utils.FlashConnect.trace("Socket connexion result : " + (!_loc2_ ? "Failed! :((((((" : "OK! :)))))"),"dofus.SaveTheWorld::onConnect","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/SaveTheWorld.as",177);
      if(_loc2_)
      {
         this["\x1a\x0f\x02"]();
      }
   }
   function onClose()
   {
      new org.flashdevelop.utils.FlashConnect.trace("Socket closed! :((((","dofus.SaveTheWorld::onClose","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/SaveTheWorld.as",184);
      dofus["\x1a\x0f\x1a"]["\x1a\t\b"] = new Array();
   }
}
