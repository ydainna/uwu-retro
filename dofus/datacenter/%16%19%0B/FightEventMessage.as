class dofus.§\x17\x04\x19§.§\x16\x19\x0b§.FightEventMessage
{
   static var JOIN_DELIMITER = ", ";
   function FightEventMessage(§\x16\x04\x05§, nActionId, aPermanentArgs)
   {
      this._api = _loc2_;
      this._nActionId = nActionId;
      this._aPlayersIds = new Array();
      this._eoPlayers = new ank.utils.["\x17\x0e\r"]();
      this._aEvolutiveArgs = new Array();
      this._aPermanentArgs = aPermanentArgs;
   }
   function §\x1e\x12\x05§()
   {
      return this._api;
   }
   function get actionId()
   {
      return this._nActionId;
   }
   function get permanentArgs()
   {
      return this._aPermanentArgs;
   }
   function get evolutiveArgs()
   {
      return this._aEvolutiveArgs;
   }
   function getEvolutiveArgsProcessResult()
   {
      var _loc2_ = this._aEvolutiveArgs;
      if(_loc2_.length == 0)
      {
         return _loc2_;
      }
      var _loc3_ = new Array();
      var _loc4_ = new Object();
      var _loc5_ = new Object();
      var _loc6_ = false;
      var _loc7_ = 0;
      var _loc8_ = 0;
      while(_loc8_ < _loc2_.length)
      {
         _loc7_;
         var _loc9_ = this._aPlayersIds[_loc7_++];
         var _loc10_ = _loc2_[_loc8_];
         if(this.isUpdateLifeAction(this._nActionId))
         {
            if(this.api.kernel.OptionsManager.getOption("SeeDamagesColor"))
            {
               var _loc11_ = _loc2_[_loc8_ = _loc8_ + 1];
            }
            var _loc12_ = _loc5_[_loc9_];
            if(_loc12_ == undefined)
            {
               _loc5_[_loc9_] = new Array();
               _loc12_ = _loc5_[_loc9_];
            }
            var _loc13_ = new Object();
            _loc13_.value = _loc10_;
            _loc13_["\x17\f\x12"] = _loc11_;
            _loc12_.push(_loc13_);
            _loc10_ = "<font color=\"#" + _loc11_ + "\">" + _loc10_ + "</font>";
         }
         if(!_loc6_)
         {
            var _loc14_ = true;
            var _loc15_ = _loc8_ + 1;
            while(_loc15_ < _loc2_.length)
            {
               if(_loc2_[_loc15_] != _loc10_)
               {
                  _loc14_ = false;
                  break;
               }
               _loc15_ = _loc15_ + 1;
            }
            _loc3_.push(_loc10_);
            if(_loc14_)
            {
               _loc6_ = true;
            }
         }
         var _loc16_ = _loc4_[_loc9_];
         if(_loc16_ == undefined)
         {
            _loc4_[_loc9_] = new Array();
            _loc16_ = _loc4_[_loc9_];
         }
         else if(this.isUpdateLifeAction(this._nActionId))
         {
            _loc10_ = _loc16_.pop() + " + " + _loc10_;
         }
         _loc16_.push(dofus.aks.Chat.getLinkHighlightSprite(_loc9_,_loc10_));
         _loc8_ = _loc8_ + 1;
      }
      if(this.isUpdateLifeAction(this._nActionId))
      {
         _loc4_ = this.getCleanedDamageArgsForPlayers(_loc5_,_loc4_);
      }
      var _loc17_ = 0;
      while(_loc17_ < _loc3_.length)
      {
         if(_loc17_ + 1 == _loc3_.length && _loc3_.length < _loc2_.length)
         {
            var _loc18_ = new Array();
            var _loc19_ = _loc17_;
            while(_loc19_ < _loc2_.length)
            {
               var _loc20_ = this._aPlayersIds[_loc19_];
               _loc18_.push(_loc20_);
               _loc19_ = _loc19_ + 1;
            }
            _loc3_[_loc17_] = dofus.aks.Chat.getLinkHighlightSprites(_loc18_,_loc3_[_loc17_]);
         }
         else
         {
            var _loc21_ = this._aPlayersIds[_loc17_];
            _loc3_[_loc17_] = dofus.aks.Chat.getLinkHighlightSprite(_loc21_,_loc3_[_loc17_]);
         }
         _loc17_ = _loc17_ + 1;
      }
      if(this.isUpdateLifeAction(this._nActionId) && this._aPlayersIds.length == 1)
      {
         _loc3_.push(_loc5_[this._aPlayersIds[0]]);
      }
      var _loc22_ = new Object();
      _loc22_.cleanedArgs = _loc3_;
      _loc22_.argsForPlayers = _loc4_;
      return _loc22_;
   }
   function getCleanedDamageArgsForPlayers(oDamagesForPlayers, oCleanedArgsForPlayers)
   {
      var _loc4_ = 0;
      var _loc5_ = undefined;
      var _loc6_ = new Object();
      var _loc7_ = 0;
      while(_loc7_ < this._aPlayersIds.length)
      {
         var _loc8_ = this._aPlayersIds[_loc7_];
         if(_loc6_[_loc8_] == null)
         {
            var _loc9_ = oDamagesForPlayers[_loc8_];
            var _loc10_ = 0;
            var _loc11_ = undefined;
            var _loc12_ = true;
            var _loc13_ = 0;
            while(_loc13_ < _loc9_.length)
            {
               var _loc14_ = _loc9_[_loc13_];
               _loc10_ += _loc14_.value;
               if(this.api.kernel.OptionsManager.getOption("SeeDamagesColor"))
               {
                  if(_loc11_ == undefined)
                  {
                     _loc11_ = _loc14_["\x17\f\x12"];
                  }
                  else if(_loc14_["\x17\f\x12"] != _loc11_)
                  {
                     _loc11_ = dofus.Constants["\x17\x17\x06"](5);
                  }
                  if(_loc5_ == undefined)
                  {
                     _loc5_ = _loc11_;
                  }
                  else if(_loc5_ != _loc11_)
                  {
                     _loc5_ = dofus.Constants["\x17\x17\x06"](5);
                  }
               }
               _loc13_ = _loc13_ + 1;
            }
            _loc4_ += _loc10_;
            var _loc15_ = undefined;
            var _loc16_ = undefined;
            var _loc17_ = oCleanedArgsForPlayers[_loc8_];
            if(_loc10_ == 0)
            {
               _loc15_ = "0";
            }
            else if(_loc9_.length < 2)
            {
               _loc15_ = _loc17_.pop();
            }
            else
            {
               _loc15_ = "<font color=\"#" + _loc11_ + "\">" + _loc10_ + "</font>";
               _loc16_ = " (" + _loc17_.pop() + ")";
            }
            _loc6_[_loc8_] = new Array();
            _loc6_[_loc8_].push(_loc15_);
            _loc6_[_loc8_].push(_loc16_);
            _loc6_[_loc8_].push(_loc10_);
         }
         _loc7_ = _loc7_ + 1;
      }
      this._sTotal = "<font color=\"#" + _loc5_ + "\">" + _loc4_ + "</font>";
      return _loc6_;
   }
   function §\x15\x1e\x05§(sPlayerId, sUniqId)
   {
      this._aPlayersIds.push(sPlayerId);
      this._eoPlayers["\x15\x1d\x13"](sPlayerId,_loc3_);
   }
   function appendEvolutiveArgs(aEvolutiveArgsToAppend)
   {
      if(aEvolutiveArgsToAppend == undefined)
      {
         return undefined;
      }
      var _loc3_ = 0;
      while(_loc3_ < aEvolutiveArgsToAppend.length)
      {
         this._aEvolutiveArgs.push(aEvolutiveArgsToAppend[_loc3_]);
         _loc3_ = _loc3_ + 1;
      }
   }
   function getCleanedPlayerNamesString(eoTeam0, eoTeam1)
   {
      var _loc4_ = this._eoPlayers;
      if(_loc4_ == undefined || _loc4_["\x17\x1a\x17"]() == 0)
      {
         return "";
      }
      var _loc5_ = new Array();
      var _loc6_ = this._aPlayersIds;
      var _loc7_ = true;
      var _loc8_ = 1;
      while(_loc8_ < _loc6_.length)
      {
         if(_loc6_[_loc8_] != _loc6_[_loc8_ - 1])
         {
            _loc7_ = false;
            break;
         }
         _loc8_ = _loc8_ + 1;
      }
      if(_loc7_)
      {
         var _loc9_ = _loc6_[0];
         var _loc10_ = _loc4_.getItemAt(_loc9_);
         var _loc11_ = dofus.aks.Chat.getLinkHighlightSprite(_loc9_,String(_loc10_));
         return _loc11_;
      }
      var _loc12_ = eoTeam0.doesAnotherEOContainsAllMyKeys(_loc4_);
      var _loc13_ = eoTeam1.doesAnotherEOContainsAllMyKeys(_loc4_);
      if(_loc12_ && _loc13_)
      {
         return this.api.lang.getText("EVERYONE");
      }
      var _loc14_ = this.api.datacenter.Player.data;
      if(_loc14_ != undefined)
      {
         var _loc15_ = _loc14_["\x1b\x0e\x15"];
         if(_loc15_ == 0)
         {
            if(_loc12_)
            {
               if(eoTeam0["\x17\x1a\x17"]() > 1)
               {
                  _loc4_.removeFromEOKeys(eoTeam0);
                  _loc5_.push(this.api.lang.getText("ALLIES"));
               }
            }
            if(_loc13_)
            {
               if(eoTeam1["\x17\x1a\x17"]() > 1)
               {
                  _loc4_.removeFromEOKeys(eoTeam1);
                  _loc5_.push(this.api.lang.getText("ENEMIES"));
               }
            }
         }
         else if(_loc15_ == 1)
         {
            if(_loc12_)
            {
               if(eoTeam0["\x17\x1a\x17"]() > 1)
               {
                  _loc4_.removeFromEOKeys(eoTeam0);
                  _loc5_.push(this.api.lang.getText("ENEMIES"));
               }
            }
            if(_loc13_)
            {
               if(eoTeam1["\x17\x1a\x17"]() > 1)
               {
                  _loc4_.removeFromEOKeys(eoTeam1);
                  _loc5_.push(this.api.lang.getText("ALLIES"));
               }
            }
         }
      }
      var _loc16_ = 0;
      while(_loc16_ < _loc6_.length)
      {
         var _loc17_ = _loc6_[_loc16_];
         var _loc18_ = _loc4_.getItemAt(_loc17_);
         if(_loc18_ != undefined)
         {
            var _loc19_ = dofus.aks.Chat.getLinkHighlightSprite(_loc17_,String(_loc18_));
            _loc5_.push(_loc19_);
         }
         _loc16_ = _loc16_ + 1;
      }
      return _loc5_.join(dofus.datacenter..chat.FightEventMessage.JOIN_DELIMITER);
   }
   function getPrintableString(eoTeam0, eoTeam1)
   {
      var _loc4_ = false;
      var _loc5_ = undefined;
      var feMessage = this;
      switch(this._nActionId)
      {
         case 950:
         case 2128:
         case 2137:
         case 110:
         case 101:
         case 102:
         case 111:
         case 120:
         case 168:
         case 127:
         case 129:
         case 128:
         case 78:
         case 169:
            _loc4_ = true;
            _loc5_ = function(sPlayerNamesPart, sEvolutiveArgsPart)
            {
               return this.api.lang.getText(feMessage.permanentArgs[0],[sPlayerNamesPart,sEvolutiveArgsPart]);
            };
            break;
         case 100:
         case 108:
            _loc4_ = true;
            _loc5_ = function(sPlayerNamesPart, sTotalPart, sSumPart, §\x19\x10\x03§)
            {
               if(sSumPart == undefined)
               {
                  sSumPart = "";
               }
               if(_loc5_ == 0)
               {
                  return this.api.lang.getText("NOCHANGE_LP",[sPlayerNamesPart]);
               }
               return this.api.lang.getText(feMessage.permanentArgs[0],[sPlayerNamesPart,sTotalPart,sSumPart]);
            };
            break;
         case 103:
            _loc4_ = true;
            _loc5_ = function(sPlayerNamesPart, sSexPart)
            {
               return ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText(feMessage.permanentArgs[0],[sPlayerNamesPart]),sSexPart,true);
            };
            break;
         case 117:
         case 116:
         case 115:
         case 122:
         case 112:
         case 142:
         case 145:
         case 138:
         case 160:
         case 161:
         case 114:
         case 182:
         case 118:
         case 157:
         case 123:
         case 152:
         case 126:
         case 155:
         case 119:
         case 154:
         case 124:
         case 156:
         case 125:
         case 153:
         case 160:
         case 161:
         case 162:
         case 163:
         case 225:
         case 226:
         case 606:
         case 607:
         case 608:
         case 609:
         case 610:
         case 611:
         case 186:
         case 210:
         case 211:
         case 212:
         case 213:
         case 214:
         case 215:
         case 216:
         case 217:
         case 218:
         case 219:
         case 240:
         case 241:
         case 242:
         case 243:
         case 244:
         case 245:
         case 246:
         case 247:
         case 248:
         case 249:
         case 178:
         case 179:
         case 2008:
         case 2009:
         case 2010:
         case 2112:
         case 2113:
         case 2114:
         case 2123:
         case 2124:
            _loc4_ = true;
            _loc5_ = function(sPlayerNamesPart, sEvolutiveArgsPart)
            {
               return "<b>" + sPlayerNamesPart + "</b> : " + sEvolutiveArgsPart;
            };
      }
      if(_loc4_)
      {
         var _loc6_ = this.getEvolutiveArgsProcessResult();
         if(_loc6_.cleanedArgs.length > 1)
         {
            var _loc7_ = "";
            var _loc8_ = new Object();
            _loc8_.count = 0;
            var _loc9_ = 0;
            while(_loc9_ < this._aPlayersIds.length)
            {
               var _loc10_ = this._aPlayersIds[_loc9_];
               if(!_loc8_[_loc10_])
               {
                  _loc8_[_loc10_] = true;
                  _loc8_.count++;
                  var _loc11_ = String(this._eoPlayers.getItemAt(_loc10_));
                  var _loc12_ = dofus.aks.Chat.getLinkHighlightSprite(_loc10_,_loc11_);
                  if(this.isUpdateLifeAction(this._nActionId))
                  {
                     var _loc13_ = _loc6_.argsForPlayers[_loc10_];
                     _loc7_ += _loc5_.apply(this,[_loc12_,_loc13_[0],_loc13_[1],_loc13_[2]]);
                  }
                  else
                  {
                     _loc7_ += _loc5_.apply(this,[_loc12_,_loc6_.argsForPlayers[_loc10_].join(dofus.datacenter..chat.FightEventMessage.JOIN_DELIMITER)]);
                  }
                  _loc7_ += "\n";
               }
               _loc9_ = _loc9_ + 1;
            }
            if(_loc8_.count > 1 && this.isUpdateLifeAction(this._nActionId))
            {
               _loc7_ += this.api.lang.getText("TOTAL_LP",[this._sTotal]);
            }
            else if(_loc7_.length > 0)
            {
               _loc7_ = _loc7_.substring(0,_loc7_.length - 1);
            }
            return _loc7_;
         }
         return String(_loc5_.apply(this,[this.getCleanedPlayerNamesString(eoTeam0,eoTeam1),_loc6_.cleanedArgs.join(dofus.datacenter..chat.FightEventMessage.JOIN_DELIMITER)]));
      }
      return undefined;
   }
   function isUpdateLifeAction(nAction)
   {
      return nAction == 100 || nAction == 108;
   }
}
