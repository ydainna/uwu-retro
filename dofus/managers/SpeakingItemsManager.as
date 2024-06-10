class dofus.§\x18\x18\x0b§.SpeakingItemsManager extends dofus.utils.ApiElement
{
   static var §\x1e\f\x10§ = null;
   static var §\x18\x1d\n§ = 60000;
   static var §\x1b\x05\x1c§ = 1;
   static var §\x1b\x05\n§ = 2;
   static var §\x1b\x05\x0b§ = 3;
   static var §\x1b\x05\x1b§ = 4;
   static var §\x1b\x05\x18§ = 5;
   static var §\x1b\x05\x0e§ = 6;
   static var §\x1b\x05\x13§ = 7;
   static var §\x1b\x05\x15§ = 8;
   static var §\x1b\x05\x14§ = 9;
   static var §\x1b\x06\x01§ = 10;
   static var §\x1b\x05\x1d§ = 11;
   static var §\x1b\x05\f§ = 12;
   static var §\x1b\x05\x11§ = 13;
   static var §\x1b\x05\r§ = 14;
   static var §\x1b\x05\x12§ = 15;
   static var §\x1b\x06\x02§ = 16;
   static var §\x1b\x05\x1a§ = 17;
   static var §\x1b\x05\x17§ = 18;
   static var §\x1b\x05\x16§ = 19;
   static var §\x1b\x05\x19§ = 20;
   static var §\x1b\x05\x10§ = 21;
   static var §\x1b\x05\x0f§ = 22;
   static var SPEAK_TRIGGER_LEVEL_UP = "SPEAK_TRIGGER_LEVEL_UP";
   static var SPEAK_TRIGGER_FEED = "SPEAK_TRIGGER_FEED";
   static var SPEAK_TRIGGER_ASSOCIATE = "SPEAK_TRIGGER_ASSOCIATE";
   static var SPEAK_TRIGGER_DISSOCIATE = "SPEAK_TRIGGER_DISSOCIATE";
   static var SPEAK_TRIGGER_CHANGE_SKIN = "SPEAK_TRIGGER_CHANGE_SKIN";
   function SpeakingItemsManager(oAPI)
   {
      super();
      dofus.managers.SpeakingItemsManager["\x1e\f\x10"] = this;
      this.initialize(oAPI);
   }
   static function getInstance()
   {
      return dofus.managers.SpeakingItemsManager["\x1e\f\x10"];
   }
   function initialize(oAPI)
   {
      super.initialize(oAPI);
      mx.["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
      this["\x17\x13\x12"](true);
   }
   function §\x05\x05§()
   {
      return this["\x1d\x1a\x0f"];
   }
   function §\x1b\x11\x10§(§\x1a\x1b\x0b§)
   {
      this.api.kernel.AudioManager.playSound(_loc2_);
   }
   function §\x1b\x11\x0e§(§\x19\x06\x18§)
   {
      if(_loc2_ == dofus.managers.SpeakingItemsManager["\x1b\x06\x02"])
      {
         ank.utils.Timer.removeTimer(this,"SpeakingItemsManager",dofus.managers.SpeakingItemsManager["\x1d\x1e\r"]);
         ank.utils.Timer.setTimer(this,"SpeakingItemsManager",this,this["\x1b\x11\x0e"],dofus.managers.SpeakingItemsManager["\x18\x1d\n"],[dofus.managers.SpeakingItemsManager["\x1b\x05\x1c"]],true);
      }
      if(!this.api.kernel.OptionsManager.getOption("UseSpeakingItems"))
      {
         return undefined;
      }
      this["\x1b\x14\x18"]();
      if(this["\x1c\x0f\x13"].length)
      {
         var _loc3_ = this["\x1c\x0f\x13"][Math.floor(Math.random() * this["\x1c\x0f\x13"].length)];
         this["\x1d\x1a\x0f"]--;
         this["\x1d\x1a\x0f"] -= (this["\x1c\x0f\x13"].length - 1) / 4;
         if(this["\x1d\x1a\x0f"] <= 0)
         {
            var _loc4_ = this.api.lang["\x17\x1e\x1c"](_loc2_)[_loc3_["\x18\x1e\x07"]];
            if(_loc4_)
            {
               var _loc6_ = new Array();
               var _loc7_ = 0;
               for(; _loc7_ < _loc4_.length; _loc7_ = _loc7_ + 1)
               {
                  var _loc5_ = this.api.lang.getSpeakingItemsText(_loc4_[_loc7_]);
                  if(_loc5_.l <= _loc3_["\x18\x19\x1c"])
                  {
                     if(_loc5_.r != undefined && _loc5_.r != "")
                     {
                        var _loc8_ = _loc5_.r.split(",");
                        var _loc9_ = false;
                        var _loc10_ = 0;
                        while(_loc10_ < _loc8_.length)
                        {
                           if(_loc8_[_loc10_] == _loc3_["\x1a\n\x07"])
                           {
                              _loc9_ = true;
                              break;
                           }
                           _loc10_ = _loc10_ + 1;
                        }
                        if(!_loc9_)
                        {
                           continue;
                        }
                     }
                     if(_loc5_.m != undefined)
                     {
                        if(_loc5_.p != undefined)
                        {
                           _loc6_.push(_loc4_[_loc7_]);
                        }
                     }
                  }
               }
               var _loc11_ = false;
               var _loc13_ = 10;
               var _loc14_ = this.api.lang.getConfigText("SPEAKING_ITEMS_MAX_TEXT_ID");
               while(!_loc11_ && ((_loc13_ = _loc13_ - 1) && _loc6_.length))
               {
                  var _loc12_ = _loc6_[Math.floor(Math.random() * _loc6_.length)];
                  if(!(_loc14_ != -1 && _loc12_ > _loc14_))
                  {
                     _loc5_ = this.api.lang.getSpeakingItemsText(_loc12_);
                     if(Math.random() < _loc5_.p)
                     {
                        _loc11_ = true;
                     }
                  }
               }
               if(!_loc11_)
               {
                  return undefined;
               }
               if(_loc5_.s != -1 && !_global.isNaN(_loc5_.s))
               {
                  var _loc15_ = Math.floor(Math.random() * 3);
               }
               else
               {
                  _loc15_ = 1;
               }
               if((_loc15_ == 0 || _loc15_ == 2) && this.api.lang.getConfigText("SPEAKING_ITEMS_USE_SOUND"))
               {
                  this.api.kernel.AudioManager.playSound("SPEAKING_ITEMS_" + _loc5_.s);
               }
               if(_loc15_ == 1 || _loc15_ == 2)
               {
                  var _loc16_ = this.api.lang.getConfigText("SPEAKING_ITEMS_CHAT_PROBA");
                  if(Math.random() * _loc16_ <= 1 && this.api.datacenter.Player.canChatToAll)
                  {
                     this.api.network.Chat.send("**" + (_loc12_ + this.api.datacenter.Player.ID) + "**","*");
                  }
                  else
                  {
                     this.api.kernel.showMessage(undefined,_loc3_.name + " : " + _loc5_.m,"WHISP_CHAT");
                  }
               }
               this["\x17\x13\x12"]();
            }
         }
      }
      return undefined;
   }
   function §\x17\x13\x12§(§\x16\x0f\x10§)
   {
      var _loc3_ = this.api.lang.getConfigText("SPEAKING_ITEMS_MSG_COUNT");
      var _loc4_ = _loc3_ * this.api.lang.getConfigText("SPEAKING_ITEMS_MSG_COUNT_DELTA");
      if(_loc2_)
      {
         this["\x1d\x1a\x0f"] = Math.floor(_loc3_ * Math.random());
      }
      else
      {
         this["\x1d\x1a\x0f"] = _loc3_ + Math.floor(2 * _loc4_ * Math.random() - _loc4_ / 2);
      }
   }
   function §\x1b\x14\x18§()
   {
      var _loc2_ = this.api.datacenter.Player.Inventory;
      var _loc3_ = new ank.utils.ExtendedArray();
      var _loc4_ = 0;
      while(_loc4_ < _loc2_.length)
      {
         if(_loc2_[_loc4_]["\x18\x0f\x1a"] && _loc2_[_loc4_].position != -1)
         {
            _loc3_.push(_loc2_[_loc4_]);
         }
         _loc4_ = _loc4_ + 1;
      }
      this["\x1c\x0f\x13"] = _loc3_;
   }
}
