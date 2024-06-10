class dofus.§\x18\x18\x0b§.DebugManager extends dofus.utils.ApiElement
{
   static var §\x1e\f\x10§ = null;
   function DebugManager(oAPI)
   {
      super();
      dofus.managers.DebugManager["\x1e\f\x10"] = this;
      this.initialize(oAPI);
   }
   static function getInstance()
   {
      return dofus.managers.DebugManager["\x1e\f\x10"];
   }
   function initialize(oAPI)
   {
      super.initialize(oAPI);
      this["\x1a\x16\x01"](dofus.Constants.DEBUG == true);
   }
   function §\x1a\x16\x01§(§\x16\x0f\x19§)
   {
      this["\x1c\x03\n"] = _loc2_;
      this.print("Debug mode " + (!_loc2_ ? "OFF" : "ON"),5,true);
   }
   function §\x1b\x10\x19§()
   {
      this["\x1a\x16\x01"](!this["\x1c\x03\n"]);
   }
   function print(sMsg, §\x19\t\x0f§, §\x16\x0b\f§)
   {
      if(!_loc4_ && !this["\x1c\x03\n"])
      {
         return undefined;
      }
      var _loc5_ = this..getTimestamp() + " ";
      _loc5_ += _loc2_;
      var _loc6_ = "DEBUG_INFO";
      switch(_loc3_)
      {
         case 5:
            _loc6_ = "ERROR_CHAT";
            break;
         case 4:
            _loc6_ = "MESSAGE_CHAT";
            break;
         case 3:
            _loc6_ = "DEBUG_ERROR";
            break;
         case 2:
            _loc6_ = "DEBUG_LOG";
            break;
         default:
            _loc6_ = "DEBUG_INFO";
      }
      new org.flashdevelop.utils.FlashConnect.trace("[" + _loc6_ + "] " + _loc5_,"dofus.managers.DebugManager::print","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/managers/DebugManager.as",96);
      this.api.kernel.showMessage(undefined,_loc5_,_loc6_);
   }
   function §\x17\x17\x1c§(sMsg, sCommandsDelimiter)
   {
      var _loc4_ = "";
      var _loc6_ = new Array();
      do
      {
         var _loc5_ = _loc2_.indexOf("#");
         if(_loc5_ != -1)
         {
            _loc4_ += _loc2_.substring(0,_loc5_);
            _loc2_ = _loc2_.substring(_loc5_ + 1);
            var _loc7_ = _loc2_.split(sCommandsDelimiter);
            _loc7_.splice(2);
            var _loc8_ = null;
            if(_loc7_ != undefined && _loc7_.length > 1)
            {
               switch(_loc7_[0])
               {
                  case "getioname":
                     var _loc9_ = Number(_loc7_[1]);
                     if(_loc9_ != undefined && !_global.isNaN(_loc9_))
                     {
                        if(_loc6_[0] == undefined)
                        {
                           _loc6_[0] = this.api.lang.getInteractiveObjectDataTexts();
                        }
                        _loc8_ = _loc6_[0][_loc9_].n;
                        if(_loc8_ == undefined)
                        {
                           _loc8_ = "-";
                        }
                     }
                     break;
                  case "getitemname":
                     var _loc10_ = Number(_loc7_[1]);
                     if(_loc10_ != undefined && !_global.isNaN(_loc10_))
                     {
                        if(_loc6_[1] == undefined)
                        {
                           _loc6_[1] = this.api.lang["\x17\x19\x1b"]();
                        }
                        _loc8_ = _loc6_[1][_loc10_].n;
                        if(_loc8_ == undefined)
                        {
                           _loc8_ = "-";
                        }
                     }
                     break;
                  case "getsubareaname":
                     var _loc11_ = Number(_loc7_[1]);
                     if(_loc11_ != undefined && !_global.isNaN(_loc11_))
                     {
                        if(_loc6_[2] == undefined)
                        {
                           _loc6_[2] = this.api.lang["\x17\x1b\x0e"]();
                        }
                        _loc8_ = _loc6_[2][_loc11_].n;
                        if(_loc8_ == undefined)
                        {
                           _loc8_ = "-";
                        }
                     }
                     break;
                  case "getiogfxname":
                     var _loc12_ = Number(_loc7_[1]);
                     if(_loc12_ != undefined && !_global.isNaN(_loc12_))
                     {
                        _loc8_ = this.api.lang["\x17\x19\n"](_loc12_).n;
                        if(_loc8_ == undefined)
                        {
                           _loc8_ = "-";
                        }
                     }
                     break;
                  case "getcelliogfxname":
                     var _loc13_ = Number(_loc7_[1]);
                     if(_loc13_ != undefined && !_global.isNaN(_loc13_))
                     {
                        var _loc14_ = this.api.gfx["\x18\x18\x15"]["\x17\x14\x1d"](_loc13_)["\x18\x13\x12"];
                        if(!_global.isNaN(_loc14_))
                        {
                           _loc8_ = this.api.lang["\x17\x19\n"](_loc14_).n;
                        }
                        if(_loc8_ == undefined)
                        {
                           _loc8_ = "-";
                        }
                     }
                     break;
                  case "getmonstername":
                     var _loc15_ = Number(_loc7_[1]);
                     if(_loc15_ != undefined && !_global.isNaN(_loc15_))
                     {
                        if(_loc6_[3] == undefined)
                        {
                           _loc6_[3] = this.api.lang["\x17\x1c\x04"]();
                        }
                        _loc8_ = _loc6_[3][_loc15_].n;
                        if(_loc8_ == undefined)
                        {
                           _loc8_ = "-";
                        }
                     }
                     break;
                  case "getalignmentid":
                     var _loc16_ = Number(_loc7_[1]);
                     if(_loc16_ != undefined && !_global.isNaN(_loc16_))
                     {
                        if(_loc6_[4] == undefined)
                        {
                           _loc6_[4] = this.api.lang["\x17\x14\x04"]();
                        }
                        _loc8_ = _loc6_[4][_loc16_].n;
                        if(_loc8_ == undefined)
                        {
                           _loc8_ = "-";
                        }
                     }
                     break;
                  case "getbreedid":
                     var _loc17_ = Number(_loc7_[1]);
                     if(_loc17_ != undefined && !_global.isNaN(_loc17_))
                     {
                        if(_loc6_[5] == undefined)
                        {
                           _loc6_[5] = this.api.lang["\x17\x14\x07"]();
                        }
                        _loc8_ = _loc6_[5][_loc17_].sn;
                        if(_loc8_ == undefined)
                        {
                           _loc8_ = "-";
                        }
                        break;
                     }
               }
            }
            if(_loc8_ != null && _loc8_.length > 0)
            {
               _loc4_ += _loc8_;
               _loc2_ = _loc2_.substring(_loc7_.join("|").length + 1);
            }
            else
            {
               _loc4_ += "#";
            }
         }
      }
      while(_loc5_ == undefined || _loc5_ != -1);
      
      _loc4_ += _loc2_;
      return _loc4_;
   }
   function getTimestamp()
   {
      var _loc2_ = new ank.utils.ExtendedDate();
      return "[" + _loc2_.getHoursPadded() + ":" + _loc2_.getMinutesPadded() + ":" + _loc2_.getSecondsPadded() + ":" + _loc2_.getMillisecondsPadded() + "]";
   }
   function getTimestampShort()
   {
      var _loc2_ = new ank.utils.ExtendedDate();
      return "[" + _loc2_.getHoursPadded() + ":" + _loc2_.getMinutesPadded() + "]";
   }
}
