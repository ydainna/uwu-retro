class dofus.§\x18\x18\x0b§.§\x17\f\t§ extends dofus.utils.§\x16\x04\x07§
{
   function §\x17\f\t§(§\x1a\x02\b§, oAPI)
   {
      super();
      var _loc5_ = new flash.display.BitmapData();
      this.initialize(_loc3_,oAPI);
   }
   function initialize(§\x1a\x02\b§, oAPI)
   {
      super.initialize(oAPI);
      this["\x1e\x05\x1a"] = _loc3_;
      this._eaEffects = new ank.utils.ExtendedArray();
      this._eaEffects.addEventListener("modelChanged",this);
      eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
   }
   function §\x17\x17\x04§()
   {
      return this._eaEffects;
   }
   function §\x15\x1d\b§(§\x19\x12\x13§)
   {
      var _loc3_ = 0;
      while(_loc3_ < this._eaEffects.length)
      {
         var _loc4_ = this._eaEffects[_loc3_];
         if(_loc4_.spellID == _loc2_.spellID && (_loc4_.type == _loc2_.type && _loc4_["\x1a\x0b\x12"] == _loc2_["\x1a\x0b\x12"]))
         {
            _loc4_["\x1a\x03\r"] += _loc2_["\x1a\x03\r"];
            return undefined;
         }
         _loc3_ = _loc3_ + 1;
      }
      this._eaEffects.push(_loc2_);
   }
   function §\x1b\x0f\r§()
   {
      var _loc2_ = this._eaEffects.length;
      while((_loc2_ = _loc2_ - 1) >= 0)
      {
         var _loc3_ = this._eaEffects[_loc2_];
         this._eaEffects["\x1a\f\x0b"](_loc2_,_loc2_ + 1);
      }
   }
   function §\x1a\f\x01§(§\x1a\x10\r§)
   {
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      var _loc3_ = this._eaEffects.length;
      while((_loc3_ = _loc3_ - 1) >= 0)
      {
         var _loc4_ = this._eaEffects[_loc3_];
         if(_loc4_["\x1a\x10\r"] == _loc2_)
         {
            this._eaEffects["\x1a\f\x0b"](_loc3_,1);
         }
      }
   }
   function removeEffectsByType(§\x19\x10\x06§)
   {
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      var _loc3_ = this._eaEffects.length;
      while((_loc3_ = _loc3_ - 1) >= 0)
      {
         var _loc4_ = this._eaEffects[_loc3_];
         if(_loc4_.type == _loc2_)
         {
            this._eaEffects["\x1a\f\x0b"](_loc3_,1);
         }
      }
   }
   function nextTurn()
   {
      var _loc2_ = this._eaEffects.length;
      while((_loc2_ = _loc2_ - 1) >= 0)
      {
         var _loc3_ = this._eaEffects[_loc2_];
         _loc3_["\x1a\x0b\x12"]--;
         if(_loc3_["\x1a\x0b\x12"] <= 0)
         {
            this._eaEffects["\x1a\f\x0b"](_loc2_,1);
         }
      }
   }
   function modelChanged(oEvent)
   {
      this["\x17\x07\x19"]({type:"effectsChanged"});
   }
   static function getConditionalElementFromString(sElement, sConditions)
   {
      var _loc4_ = _global.api;
      var _loc5_ = [">","<","=","!"];
      if(sConditions == undefined || sConditions.length == 0)
      {
         return undefined;
      }
      var _loc6_ = sConditions.split("&");
      var _loc7_ = new Array();
      var _loc8_ = 0;
      loop0:
      while(_loc8_ < _loc6_.length)
      {
         _loc6_[_loc8_] = new ank.utils.ExtendedString(_loc6_[_loc8_]).replace(["(",")"],["",""]);
         var _loc9_ = _loc6_[_loc8_].split("|");
         var _loc10_ = 0;
         while(true)
         {
            if(_loc10_ < _loc9_.length)
            {
               var _loc13_ = 0;
               while(_loc13_ < _loc5_.length)
               {
                  var _loc12_ = _loc5_[_loc13_];
                  var _loc11_ = _loc9_[_loc10_].split(_loc12_);
                  if(_loc11_.length > 1)
                  {
                     break;
                  }
                  _loc13_ = _loc13_ + 1;
               }
               if(_loc11_ != undefined)
               {
                  var _loc14_ = String(_loc11_[0]);
                  var _loc15_ = _loc11_[1];
                  var _loc0_ = null;
                  if((_loc0_ = _loc14_) === sElement)
                  {
                     break;
                  }
               }
               continue;
            }
            _loc8_ = _loc8_ + 1;
            continue loop0;
         }
         return _loc15_;
      }
      return undefined;
   }
   static function parseConditionsString(sConditions)
   {
      var _loc3_ = _global.api;
      var _loc4_ = [">","<","=","!"];
      if(sConditions == undefined || sConditions.length == 0)
      {
         return [String(_loc3_.lang.getText("NO_CONDITIONS"))];
      }
      var _loc5_ = sConditions.split("&");
      var _loc6_ = new Array();
      var _loc7_ = 0;
      while(_loc7_ < _loc5_.length)
      {
         _loc5_[_loc7_] = new ank.utils.ExtendedString(_loc5_[_loc7_]).replace(["(",")"],["",""]);
         var _loc8_ = _loc5_[_loc7_].split("|");
         var _loc9_ = 0;
         for(; _loc9_ < _loc8_.length; _loc9_ = _loc9_ + 1)
         {
            var _loc12_ = 0;
            while(_loc12_ < _loc4_.length)
            {
               var _loc11_ = _loc4_[_loc12_];
               var _loc10_ = _loc8_[_loc9_].split(_loc11_);
               if(_loc10_.length > 1)
               {
                  break;
               }
               _loc10_ = undefined;
               _loc11_ = undefined;
               _loc12_ = _loc12_ + 1;
            }
            if(_loc10_ == undefined)
            {
               _loc11_ = _loc8_[_loc9_].charAt(2);
               if(_loc11_ == "E" || _loc11_ == "X")
               {
                  _loc10_ = _loc8_[_loc9_].split(_loc11_);
               }
               else
               {
                  _loc10_ = undefined;
               }
            }
            if(_loc10_ != undefined)
            {
               var _loc13_ = String(_loc10_[0]);
               var _loc14_ = _loc10_[1];
               if(!_loc3_.datacenter.Player.isAuthorized)
               {
                  if(_loc13_ == "PZ" || (_loc13_ == "PX" || (_loc13_ == "Sc" || _loc13_ == "PB")))
                  {
                     break;
                  }
               }
               switch(_loc13_)
               {
                  case "Ps":
                     _loc14_ = _loc3_.lang["\x17\x13\x19"](Number(_loc14_)).n;
                     break;
                  case "PS":
                     _loc14_ = _loc14_ != "1" ? _loc3_.lang.getText("MALE") : _loc3_.lang.getText("FEMELE");
                     break;
                  case "Pr":
                     _loc14_ = _loc3_.lang["\x17\x14\x05"](Number(_loc14_)).n;
                     break;
                  case "Pg":
                     var _loc15_ = _loc14_.split(",");
                     if(_loc15_.length == 2)
                     {
                        _loc14_ = _loc3_.lang["\x17\x14\x01"](Number(_loc15_[0])).n + " (" + Number(_loc15_[1]) + ")";
                     }
                     else
                     {
                        _loc14_ = _loc3_.lang["\x17\x14\x01"](Number(_loc14_)).n;
                     }
                     break;
                  case "PG":
                     _loc14_ = _loc3_.lang.getClassText(Number(_loc14_)).sn;
                     break;
                  case "PJ":
                  case "Pj":
                     var _loc16_ = _loc14_.split(",");
                     _loc14_ = _loc3_.lang["\x17\x1a\x02"](_loc16_[0]).n + (_loc16_[1] != undefined ? " (" + _loc3_.lang.getText("LEVEL_SMALL") + " " + _loc16_[1] + ")" : "");
                     break;
                  case "PM":
                     continue;
                  default:
                     if(_loc0_ !== "PO")
                     {
                        if(_loc0_ !== "CO")
                        {
                           if(_loc0_ !== "FC")
                           {
                              if(_loc0_ !== "FS")
                              {
                                 if(_loc0_ !== "Fz")
                                 {
                                    break;
                                 }
                                 _loc14_ = _loc3_.lang.getText("SUMMONED_IN_ALLIED_TEAM") + " : " + _loc3_.lang["\x17\x1c\t"](Number(_loc14_)).n;
                                 break;
                              }
                              _loc14_ = String(_loc3_.lang["\x18\x01\x0e"](Number(_loc14_)));
                              break;
                           }
                           _loc14_ = _loc3_.lang.getText("HAND_CARD_" + _loc14_);
                           break;
                        }
                        _loc14_ = _loc14_ != "1" ? _loc3_.lang.getText("DO_NOT_OWN_HOUSE") : _loc3_.lang.getText("OWN_HOUSE");
                        break;
                     }
                     var _loc17_ = new dofus.datacenter.["\x18\x10\x15"](-1,Number(_loc14_),1,0,"",0);
                     _loc14_ = _loc17_.name;
                     break;
               }
               _loc13_ = new ank.utils.ExtendedString(_loc13_).replace(["CS","Cs","CV","Cv","CA","Ca","CI","Ci","CW","Cw","CC","Cc","CA","PG","PJ","Pj","PM","PA","PN","PE","<NO>","PS","PR","PL","PK","Pg","Pr","Ps","Pa","PP","PZ","CM","FC","FS","Cm","Cp","Fz"],_loc3_.lang.getText("ITEM_CHARACTERISTICS").split(","));
               switch(_loc13_)
               {
                  case "BI":
                     _loc6_.push(_loc3_.lang.getText("UNUSABLE"));
                     break;
                  case "PO":
                     switch(_loc11_)
                     {
                        case "=":
                           _loc6_.push(_loc3_.lang.getText("ITEM_DO_POSSESS",[_loc14_]));
                           break;
                        case "!":
                           _loc6_.push(_loc3_.lang.getText("ITEM_DO_NOT_POSSESS",[_loc14_]));
                           break;
                        case "E":
                           _loc6_.push(_loc3_.lang.getText("ITEM_EQUIPPED",[_loc14_]));
                           break;
                        case "X":
                           _loc6_.push(_loc3_.lang.getText("ITEM_NOT_EQUIPPED",[_loc14_]));
                     }
                     break;
                  default:
                     _loc11_ = new ank.utils.ExtendedString(_loc11_).replace(["!"],[_loc3_.lang.getText("ITEM_NO")]);
                     _loc6_.push((_loc9_ <= 0 ? "" : _loc3_.lang.getText("ITEM_OR") + " ") + _loc13_ + " " + _loc11_ + " " + _loc14_);
               }
            }
         }
         _loc7_ = _loc7_ + 1;
      }
      if(_loc6_.length == 0)
      {
         return [String(_loc3_.lang.getText("NO_CONDITIONS"))];
      }
      return _loc6_;
   }
}
