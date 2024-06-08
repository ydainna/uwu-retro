class ank.utils.§\x1a\x14\x02§ extends Object
{
   var §\x1d\x1e\x0b§ = 1;
   function §\x1a\x14\x02§(timeout)
   {
      super();
      this.initialize(timeout);
   }
   function initialize(§\x19\x0f\x19§)
   {
      this["\x1d\x1e\f"] = _loc2_ != undefined ? _loc2_ : 10000;
      this._unicID = String(9476) + random(10000);
      this["\x1d\x12\x13"] = 0;
      this.clear();
   }
   function clear()
   {
      this["\x1b\x1b\x10"] = new Array();
      this["\x1c\x07\x0b"] = false;
      this["\x1d\x1e\x0b"] = 1;
      ank.utils.Timer.removeTimer(this,"sequencer");
   }
   function setTimeModerator(§\x19\x0f\x18§)
   {
      this["\x1d\x1e\x0b"] = _loc2_;
   }
   function addAction(§\x19\x05\x18§, §\x16\x14\x19§, §\x19\x01\x1c§, §\x17\x0f\x13§, §\x16\x03\x1d§, §\x19\x06\f§, §\x16\f\t§)
   {
      var _loc9_ = new Object();
      _loc9_.debugId = _loc2_;
      _loc9_.id = this["\x17\x13\x16"]();
      _loc9_.waitEnd = _loc3_;
      _loc9_.object = _loc4_;
      _loc9_.fn = _loc5_;
      _loc9_.parameters = _loc6_;
      _loc9_.duration = _loc7_;
      _loc9_.forceTimeout = _loc3_ && (_loc8_ != undefined && _loc8_);
      _loc9_.functionApplied = false;
      this["\x1b\x1b\x10"].push(_loc9_);
   }
   function §\x1a\x07\x02§()
   {
      var _loc2_ = _global.api;
      var _loc3_ = "Actions : (" + this["\x1b\x1b\x10"].length + ")";
      var _loc4_ = 0;
      while(_loc4_ < this["\x1b\x1b\x10"].length)
      {
         var _loc5_ = this["\x1b\x1b\x10"][_loc4_];
         _loc3_ += "\ni : " + _loc4_ + "\n" + "DebugID : " + _loc5_.debugId + "\n" + "Wait End : " + _loc5_.waitEnd + "\n" + "Force Timeout : " + _loc5_.forceTimeout + "\n" + "Parameters : " + _loc5_.parameters.toString();
         _loc4_ = _loc4_ + 1;
      }
      _loc2_.kernel.showMessage(undefined,_loc3_,"DEBUG_LOG");
   }
   function getCurrentAction()
   {
      return this["\x1b\x1b\x10"][0];
   }
   function §\x17\x01\x03§(§\x19\x01\x1c§, §\x17\x0f\x13§)
   {
      var _loc4_ = 0;
      while(_loc4_ < this["\x1b\x1b\x10"].length)
      {
         var _loc5_ = this["\x1b\x1b\x10"][_loc4_];
         if(_loc5_.object == _loc2_ && _loc5_.fn == _loc3_)
         {
            return true;
         }
         _loc4_ = _loc4_ + 1;
      }
      return false;
   }
   function execute(§\x16\x0b\x1c§)
   {
      if(this["\x1c\x07\x0b"] && !_loc2_)
      {
         return undefined;
      }
      this["\x1c\x07\x0b"] = true;
      var _loc3_ = true;
      while(_loc3_)
      {
         if(this["\x1b\x1b\x10"].length > 0)
         {
            var _loc4_ = this["\x1b\x1b\x10"][0];
            if(_loc4_.waitEnd)
            {
               _loc4_.object[this._unicID] = _loc4_.id;
            }
            _loc4_.fn.apply(_loc4_.object,_loc4_.parameters);
            _loc4_.functionApplied = true;
            if(!_loc4_.waitEnd)
            {
               this.onActionEnd(true);
            }
            else
            {
               _loc3_ = false;
               ank.utils.Timer.setTimer(_loc4_.object,"sequencer",this,this["\x19\x13\x1a"],_loc4_.duration == undefined ? this["\x1d\x1e\f"] : _loc4_.duration * this["\x1d\x1e\x0b"],[_loc4_]);
            }
         }
         else
         {
            _loc3_ = false;
            this.stop();
         }
      }
   }
   function stop()
   {
      this["\x1c\x07\x0b"] = false;
   }
   function isPlaying()
   {
      return this["\x1c\x07\x0b"];
   }
   function clearAllNextActions(§\x1b\x18\n§)
   {
      this["\x1b\x1b\x10"].splice(1);
      ank.utils.Timer.removeTimer(this,"sequencer");
   }
   function §\x19\x13\x1a§(§\x19\x11\r§)
   {
      if(_loc2_ != undefined && this["\x1b\x1b\x10"][0].id != _loc2_.id)
      {
         return undefined;
      }
      this.onActionEnd(false,true);
   }
   function onActionEnd(§\x16\n\x19§, §\x16\x13\n§)
   {
      if(_loc3_ == undefined)
      {
         _loc3_ = false;
      }
      if(this["\x1b\x1b\x10"].length == 0)
      {
         return undefined;
      }
      if(this["\x1b\x1b\x10"][0].forceTimeout && !_loc3_)
      {
         return undefined;
      }
      if(this["\x1b\x1b\x10"][0].waitEnd)
      {
         ank.utils.Timer.removeTimer(this["\x1b\x1b\x10"][0].object,"sequencer");
      }
      this["\x1b\x1b\x10"].shift();
      if(this["\x1b\x1b\x10"].length == 0)
      {
         this.clear();
         this.onSequenceEnd();
      }
      else if(_loc2_ != true)
      {
         if(this["\x1c\x07\x0b"])
         {
            this.execute(true);
         }
      }
   }
   function toString()
   {
      return "Sequencer unicID:" + this._unicID + " playing:" + this["\x1c\x07\x0b"] + " actionsCount:" + this["\x1b\x1b\x10"].length + " currentActionID:" + this["\x1b\x1b\x10"][0].id + " currentActionObject:" + this["\x1b\x1b\x10"][0].object + " currentActionParam:" + this["\x1b\x1b\x10"][0].parameters.toString() + " currentActionBlocking:" + this["\x1b\x1b\x10"][0].waitEnd + " currentActionForceTimeout:" + this["\x1b\x1b\x10"][0].forceTimeout;
   }
   function §\x17\x13\x16§(§\x1b\x18\n§)
   {
      this["\x1d\x12\x13"]++;
      if(this["\x1d\x12\x13"] > 10000)
      {
         this["\x1d\x12\x13"] = 0;
      }
      return this["\x1d\x12\x13"];
   }
}
