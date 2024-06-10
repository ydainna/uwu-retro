class dofus.aks.extend.GameIn extends dofus.aks.Handler
{
   var §\x1b\x1d\x01§ = new Array();
   function GameIn(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function §\x19\x1a\x0f§(sExtraData, §\x16\r\x1a§)
   {
      var _loc4_ = _loc2_.split("|");
      var _loc5_ = _loc4_.length - 1;
      for(; _loc5_ >= 0; _loc5_ = _loc5_ - 1)
      {
         var _loc6_ = _loc4_[_loc5_];
         if(_loc6_.length != 0)
         {
            var _loc7_ = false;
            var _loc8_ = false;
            var _loc9_ = _loc6_.charAt(0);
            if(_loc9_ == "+")
            {
               _loc8_ = true;
            }
            else if(_loc9_ == "~")
            {
               _loc8_ = true;
               _loc7_ = true;
            }
            else if(_loc9_ != "-")
            {
               continue;
            }
            if(_loc8_)
            {
               var _loc10_ = _loc6_.substr(1).split(";");
               var _loc11_ = _loc10_[0];
               if(_loc11_ == "-1")
               {
                  _loc11_ = String(this.api.datacenter.Player.data.cellNum);
               }
               var _loc12_ = _loc10_[1];
               var _loc13_ = Number(_loc10_[2]);
               var _loc14_ = _loc10_[3];
               var _loc15_ = _loc10_[4];
               var _loc16_ = _loc10_[5];
               var _loc17_ = _loc10_[6];
               var _loc18_ = false;
               var _loc19_ = true;
               if(_loc17_.charAt(_loc17_.length - 1) == "*")
               {
                  _loc17_ = _loc17_.substr(0,_loc17_.length - 1);
                  _loc18_ = true;
               }
               if(_loc17_.charAt(0) == "*")
               {
                  _loc19_ = false;
                  _loc17_ = _loc17_.substr(1);
               }
               var _loc20_ = _loc17_.split("^");
               var _loc21_ = _loc20_.length != 2 ? _loc17_ : _loc20_[0];
               var _loc22_ = _loc16_.split(",");
               var _loc23_ = _loc22_[0];
               var _loc24_ = _loc22_[1];
               var _loc25_ = undefined;
               if(_loc24_.length)
               {
                  var _loc26_ = _loc24_.split("*");
                  _loc25_ = new dofus.datacenter.["\x1b\x10\x16"](_global.parseInt(_loc26_[0]),_loc26_[1]);
               }
               var _loc27_ = 100;
               var _loc28_ = 100;
               if(_loc20_.length == 2)
               {
                  var _loc29_ = _loc20_[1];
                  if(_global.isNaN(Number(_loc29_)))
                  {
                     var _loc30_ = _loc29_.split("x");
                     _loc27_ = _loc30_.length != 2 ? 100 : Number(_loc30_[0]);
                     _loc28_ = _loc30_.length != 2 ? 100 : Number(_loc30_[1]);
                  }
                  else
                  {
                     _loc27_ = _loc28_ = Number(_loc29_);
                  }
               }
               if(_loc7_)
               {
                  var _loc31_ = this.api.datacenter.Sprites.getItemAt(_loc14_);
                  this["\x19\x1d\x04"](false,_loc31_);
               }
               loop3:
               switch(_loc23_)
               {
                  case "-1":
                  case "-2":
                     var _loc33_ = new Object();
                     _loc33_.spriteType = _loc23_;
                     _loc33_.gfxID = _loc21_;
                     _loc33_.scaleX = _loc27_;
                     _loc33_.scaleY = _loc28_;
                     _loc33_["\x19\x0b\x04"] = _loc18_;
                     _loc33_.cell = _loc11_;
                     _loc33_.dir = _loc12_;
                     _loc33_["\x1a\x06\x15"] = _loc10_[7];
                     _loc33_.color1 = _loc10_[8];
                     _loc33_.color2 = _loc10_[9];
                     _loc33_.color3 = _loc10_[10];
                     _loc33_.accessories = _loc10_[11];
                     if(this.api.datacenter.Game.isFight)
                     {
                        _loc33_.LP = _loc10_[12];
                        _loc33_.AP = _loc10_[13];
                        _loc33_.MP = _loc10_[14];
                        if(_loc10_.length > 18)
                        {
                           _loc33_["\x1a\x0e\x02"] = new Array(Number(_loc10_[15]),Number(_loc10_[16]),Number(_loc10_[17]),Number(_loc10_[18]),Number(_loc10_[19]),Number(_loc10_[20]),Number(_loc10_[21]));
                           _loc33_["\x1b\x0e\x14"] = _loc10_[22];
                           _loc33_.LPmax = _loc10_[23];
                        }
                        else
                        {
                           _loc33_["\x1b\x0e\x14"] = _loc10_[15];
                           _loc33_.LPmax = _loc10_[16];
                        }
                        _loc33_.summoned = _loc3_;
                     }
                     if(_loc23_ == -1)
                     {
                        _loc31_ = this.api.kernel.CharactersManager["\x17\x02\r"](_loc14_,_loc15_,_loc33_);
                     }
                     else
                     {
                        _loc31_ = this.api.kernel.CharactersManager["\x17\x02\x12"](_loc14_,_loc15_,_loc33_);
                     }
                     break;
                  case "-3":
                     var _loc34_ = new Object();
                     _loc34_.spriteType = _loc23_;
                     _loc34_.level = _loc10_[7];
                     _loc34_.scaleX = _loc27_;
                     _loc34_.scaleY = _loc28_;
                     _loc34_["\x19\x0b\x04"] = _loc18_;
                     _loc34_.cell = Number(_loc11_);
                     _loc34_.dir = _loc12_;
                     var _loc35_ = _loc10_[8].split(",");
                     _loc34_.color1 = _loc35_[0];
                     _loc34_.color2 = _loc35_[1];
                     _loc34_.color3 = _loc35_[2];
                     _loc34_.accessories = _loc10_[9];
                     _loc34_["\x16\x0f\x1c"] = _loc13_;
                     var _loc36_ = this["\x1b\x03\x06"](_loc17_);
                     var _loc37_ = _loc36_.gfx;
                     this["\x1b\x06\x1c"](_loc37_[0],_loc34_);
                     _loc31_ = this.api.kernel.CharactersManager["\x17\x02\x13"](_loc14_,_loc15_,_loc34_);
                     if(this.api.kernel.OptionsManager.getOption("ViewAllMonsterInGroup") == true)
                     {
                        var _loc38_ = _loc14_;
                        var _loc39_ = 1;
                        while(_loc39_ < _loc37_.length)
                        {
                           if(_loc37_[_loc5_] != "")
                           {
                              this["\x1b\x06\x1c"](_loc37_[_loc39_],_loc34_);
                              _loc35_ = _loc10_[8 + 2 * _loc39_].split(",");
                              _loc34_.color1 = _loc35_[0];
                              _loc34_.color2 = _loc35_[1];
                              _loc34_.color3 = _loc35_[2];
                              _loc34_.dir = random(4) * 2 + 1;
                              _loc34_.accessories = _loc10_[9 + 2 * _loc39_];
                              var _loc40_ = _loc14_ + "_" + _loc39_;
                              var _loc41_ = this.api.kernel.CharactersManager["\x17\x02\x13"](_loc40_,undefined,_loc34_);
                              var _loc42_ = _loc38_;
                              if(random(3) != 0 && _loc39_ != 1)
                              {
                                 _loc42_ = _loc14_ + "_" + (random(_loc39_ - 1) + 1);
                              }
                              var _loc43_ = random(8);
                              this.api.gfx["\x15\x1d\x19"](_loc40_,_loc42_,_loc43_,_loc41_);
                              if(!_global.isNaN(_loc41_.scaleX))
                              {
                                 this.api.gfx["\x1a\x1a\n"](_loc41_.id,_loc41_.scaleX,_loc41_.scaleY);
                              }
                              switch(_loc36_.shape)
                              {
                                 case "circle":
                                    _loc43_ = _loc39_;
                                    break;
                                 case "line":
                                    _loc42_ = _loc40_;
                                    _loc43_ = 2;
                              }
                           }
                           _loc39_ = _loc39_ + 1;
                        }
                     }
                     break;
                  case "-4":
                     var _loc44_ = new Object();
                     _loc44_.spriteType = _loc23_;
                     _loc44_.gfxID = _loc21_;
                     _loc44_.scaleX = _loc27_;
                     _loc44_.scaleY = _loc28_;
                     _loc44_.cell = _loc11_;
                     _loc44_.dir = _loc12_;
                     _loc44_.sex = _loc10_[7];
                     _loc44_.color1 = _loc10_[8];
                     _loc44_.color2 = _loc10_[9];
                     _loc44_.color3 = _loc10_[10];
                     _loc44_.accessories = _loc10_[11];
                     _loc44_["\x17\x0e\x14"] = !(_loc10_[12] != undefined && !_global.isNaN(Number(_loc10_[12]))) ? -1 : Number(_loc10_[12]);
                     _loc44_.customArtwork = Number(_loc10_[13]);
                     _loc31_ = this.api.kernel.CharactersManager["\x17\x02\x16"](_loc14_,Number(_loc15_),_loc44_);
                     break;
                  case "-5":
                     var _loc45_ = new Object();
                     _loc45_.spriteType = _loc23_;
                     _loc45_.gfxID = _loc21_;
                     _loc45_.scaleX = _loc27_;
                     _loc45_.scaleY = _loc28_;
                     _loc45_.cell = _loc11_;
                     _loc45_.dir = _loc12_;
                     _loc45_.color1 = _loc10_[7];
                     _loc45_.color2 = _loc10_[8];
                     _loc45_.color3 = _loc10_[9];
                     _loc45_.accessories = _loc10_[10];
                     _loc45_["\x18\x04\x07"] = _loc10_[11];
                     _loc45_["\x17\f\x14"] = _loc10_[12];
                     _loc45_["\x19\x12\x1c"] = _loc10_[13];
                     _loc45_.characterID = _loc10_[14];
                     _loc31_ = this.api.kernel.CharactersManager["\x17\x02\x17"](_loc14_,_loc15_,_loc45_);
                     break;
                  case "-6":
                     var _loc46_ = new Object();
                     _loc46_.spriteType = _loc23_;
                     _loc46_.gfxID = _loc21_;
                     _loc46_.scaleX = _loc27_;
                     _loc46_.scaleY = _loc28_;
                     _loc46_.cell = _loc11_;
                     _loc46_.dir = _loc12_;
                     _loc46_.level = _loc10_[7];
                     if(this.api.datacenter.Game.isFight)
                     {
                        _loc46_.LP = _loc10_[8];
                        _loc46_.AP = _loc10_[9];
                        _loc46_.MP = _loc10_[10];
                        _loc46_["\x1a\x0e\x02"] = new Array(Number(_loc10_[11]),Number(_loc10_[12]),Number(_loc10_[13]),Number(_loc10_[14]),Number(_loc10_[15]),Number(_loc10_[16]),Number(_loc10_[17]));
                        _loc46_["\x1b\x0e\x14"] = _loc10_[18];
                        _loc46_.LPmax = _loc10_[19];
                     }
                     else
                     {
                        _loc46_["\x18\x04\x07"] = _loc10_[8];
                        _loc46_["\x17\f\x14"] = _loc10_[9];
                        _loc46_["\x18\x0e\x1c"] = !!Number(_loc10_[10]);
                     }
                     _loc31_ = this.api.kernel.CharactersManager["\x17\x02\x1c"](_loc14_,_loc15_,_loc46_);
                     break;
                  case "-7":
                  case "-8":
                     var _loc47_ = new Object();
                     _loc47_.spriteType = _loc23_;
                     _loc47_.gfxID = _loc21_;
                     _loc47_.scaleX = _loc27_;
                     _loc47_.scaleY = _loc28_;
                     _loc47_.cell = _loc11_;
                     _loc47_.dir = _loc12_;
                     _loc47_.sex = _loc10_[7];
                     _loc47_["\x1a\x06\x15"] = _loc10_[8];
                     _loc47_.accessories = _loc10_[9];
                     if(this.api.datacenter.Game.isFight)
                     {
                        _loc47_.LP = _loc10_[10];
                        _loc47_.AP = _loc10_[11];
                        _loc47_.MP = _loc10_[12];
                        _loc47_["\x1b\x0e\x14"] = _loc10_[20];
                        _loc47_.LPmax = _loc10_[21];
                     }
                     else
                     {
                        _loc47_.emote = _loc10_[10];
                        _loc47_.emoteTimer = _loc10_[11];
                        _loc47_.restrictions = Number(_loc10_[12]);
                     }
                     if(_loc23_ == "-8")
                     {
                        _loc47_["\x1a\x1d\x1c"] = true;
                        var _loc48_ = _loc15_.split("~");
                        _loc47_["\x18\x1d\x1a"] = _loc48_[0];
                        _loc47_.playerName = _loc48_[1];
                        _loc47_["\x1b\x0e\x14"] = _loc10_[13];
                     }
                     else
                     {
                        _loc47_["\x1a\x1d\x1c"] = false;
                        _loc47_["\x18\x1d\x1a"] = _loc15_;
                     }
                     _loc31_ = this.api.kernel.CharactersManager["\x17\x02\x15"](_loc14_,_loc47_);
                     break;
                  case "-9":
                     var _loc49_ = new Object();
                     _loc49_.spriteType = _loc23_;
                     _loc49_.gfxID = _loc21_;
                     _loc49_.scaleX = _loc27_;
                     _loc49_.scaleY = _loc28_;
                     _loc49_.cell = _loc11_;
                     _loc49_.dir = _loc12_;
                     _loc49_["\x1a\x03\x06"] = _loc10_[7];
                     _loc49_.level = _loc10_[8];
                     _loc49_.modelID = _loc10_[9];
                     _loc31_ = this.api.kernel.CharactersManager["\x17\x02\x18"](_loc14_,_loc15_ == "" ? this.api.lang.getText("NO_NAME") : _loc15_,_loc49_);
                     break;
                  case "-10":
                     var _loc50_ = new Object();
                     _loc50_.spriteType = _loc23_;
                     _loc50_.gfxID = _loc21_;
                     _loc50_.scaleX = _loc27_;
                     _loc50_.scaleY = _loc28_;
                     _loc50_.cell = _loc11_;
                     _loc50_.dir = _loc12_;
                     _loc50_.level = _loc10_[7];
                     _loc50_.alignment = new dofus.datacenter.Alignment(Number(_loc10_[9]),Number(_loc10_[8]));
                     _loc31_ = this.api.kernel.CharactersManager["\x17\x02\x1b"](_loc14_,_loc15_,_loc50_);
                     break;
                  default:
                     var _loc52_ = new Object();
                     _loc52_.spriteType = _loc23_;
                     _loc52_.cell = _loc11_;
                     _loc52_.scaleX = _loc27_;
                     _loc52_.scaleY = _loc28_;
                     _loc52_.dir = _loc12_;
                     _loc52_.sex = _loc10_[7];
                     if(this.api.datacenter.Game.isFight)
                     {
                        _loc52_.level = _loc10_[8];
                        var _loc51_ = _loc10_[9];
                        _loc52_.color1 = _loc10_[10];
                        _loc52_.color2 = _loc10_[11];
                        _loc52_.color3 = _loc10_[12];
                        _loc52_.accessories = _loc10_[13];
                        _loc52_.LP = _loc10_[14];
                        _loc52_.AP = _loc10_[15];
                        _loc52_.MP = _loc10_[16];
                        _loc52_["\x1a\x0e\x02"] = new Array(Number(_loc10_[17]),Number(_loc10_[18]),Number(_loc10_[19]),Number(_loc10_[20]),Number(_loc10_[21]),Number(_loc10_[22]),Number(_loc10_[23]));
                        _loc52_["\x1b\x0e\x14"] = _loc10_[24];
                        _loc52_.hasCandy = _loc10_[26];
                        _loc52_.hasBuff = _loc10_[27];
                        if(_loc10_[25].indexOf(",") != -1)
                        {
                           var _loc53_ = _loc10_[25].split(",");
                           var _loc54_ = Number(_loc53_[0]);
                           var _loc55_ = _global.parseInt(_loc53_[1],16);
                           var _loc56_ = _global.parseInt(_loc53_[2],16);
                           var _loc57_ = _global.parseInt(_loc53_[3],16);
                           if(_loc55_ == -1 || _global.isNaN(_loc55_))
                           {
                              _loc55_ = this.api.datacenter.Player.color1;
                           }
                           if(_loc56_ == -1 || _global.isNaN(_loc56_))
                           {
                              _loc56_ = this.api.datacenter.Player.color2;
                           }
                           if(_loc57_ == -1 || _global.isNaN(_loc57_))
                           {
                              _loc57_ = this.api.datacenter.Player.color3;
                           }
                           if(!_global.isNaN(_loc54_))
                           {
                              var _loc58_ = new dofus.datacenter..Mount(_loc54_,Number(_loc21_));
                              _loc58_.customColor1 = _loc55_;
                              _loc58_.customColor2 = _loc56_;
                              _loc58_.customColor3 = _loc57_;
                              _loc52_.mount = _loc58_;
                           }
                        }
                        else
                        {
                           var _loc59_ = Number(_loc10_[25]);
                           if(!_global.isNaN(_loc59_))
                           {
                              _loc52_.mount = new dofus.datacenter..Mount(_loc59_,Number(_loc21_));
                           }
                        }
                        _loc52_.LPmax = _loc10_[28];
                        if(this.api.datacenter.Player.ID == _loc14_)
                        {
                           this.api.datacenter.Player.LPmax = _loc52_.LPmax;
                           this.api.datacenter.Player.LP = _loc52_.LP;
                        }
                     }
                     else
                     {
                        _loc51_ = _loc10_[8];
                        _loc52_.color1 = _loc10_[9];
                        _loc52_.color2 = _loc10_[10];
                        _loc52_.color3 = _loc10_[11];
                        _loc52_.accessories = _loc10_[12];
                        _loc52_.aura = _loc10_[13];
                        _loc52_.emote = _loc10_[14];
                        _loc52_.emoteTimer = _loc10_[15];
                        _loc52_["\x18\x04\x07"] = _loc10_[16];
                        _loc52_["\x17\f\x14"] = _loc10_[17];
                        _loc52_.restrictions = _loc10_[18];
                        _loc52_.hasTtgCollection = _loc10_[21] == "1";
                        if(_loc10_[19].indexOf(",") != -1)
                        {
                           var _loc60_ = _loc10_[19].split(",");
                           var _loc61_ = Number(_loc60_[0]);
                           var _loc62_ = _global.parseInt(_loc60_[1],16);
                           var _loc63_ = _global.parseInt(_loc60_[2],16);
                           var _loc64_ = _global.parseInt(_loc60_[3],16);
                           if(_loc62_ == -1 || _global.isNaN(_loc62_))
                           {
                              _loc62_ = this.api.datacenter.Player.color1;
                           }
                           if(_loc63_ == -1 || _global.isNaN(_loc63_))
                           {
                              _loc63_ = this.api.datacenter.Player.color2;
                           }
                           if(_loc64_ == -1 || _global.isNaN(_loc64_))
                           {
                              _loc64_ = this.api.datacenter.Player.color3;
                           }
                           if(!_global.isNaN(_loc61_))
                           {
                              var _loc65_ = new dofus.datacenter..Mount(_loc61_,Number(_loc21_));
                              _loc65_.customColor1 = _loc62_;
                              _loc65_.customColor2 = _loc63_;
                              _loc65_.customColor3 = _loc64_;
                              _loc52_.mount = _loc65_;
                           }
                        }
                        else
                        {
                           var _loc66_ = Number(_loc10_[19]);
                           if(!_global.isNaN(_loc66_))
                           {
                              _loc52_.mount = new dofus.datacenter..Mount(_loc66_,Number(_loc21_));
                           }
                        }
                     }
                     if(_loc7_)
                     {
                        var _loc32_ = [_loc14_,this["\x17\x02\x1d"](),_loc11_,10];
                     }
                     var _loc67_ = _loc51_.split(",");
                     _loc52_.alignment = new dofus.datacenter.Alignment(Number(_loc67_[0]),Number(_loc67_[1]));
                     _loc52_.rank = new dofus.datacenter..Rank(Number(_loc67_[2]));
                     _loc52_.alignment["\x17\x0f\x05"] = _loc67_[4] == 1;
                     if(_loc67_.length > 3 && _loc14_ != this.api.datacenter.Player.ID)
                     {
                        if(this.api.lang["\x17\x13\x1d"](this.api.datacenter.Player.alignment.index,Number(_loc52_.alignment.index)))
                        {
                           var _loc68_ = Number(_loc67_[3]) - _global.parseInt(_loc14_);
                           var _loc69_ = this.api.lang.getConfigText("PVP_VIEW_BONUS_MINOR_LIMIT");
                           var _loc70_ = this.api.lang.getConfigText("PVP_VIEW_BONUS_MINOR_LIMIT_PRC");
                           var _loc71_ = this.api.lang.getConfigText("PVP_VIEW_BONUS_MAJOR_LIMIT");
                           var _loc72_ = this.api.lang.getConfigText("PVP_VIEW_BONUS_MAJOR_LIMIT_PRC");
                           var _loc73_ = 0;
                           if(this.api.datacenter.Player.Level * (1 - _loc70_ / 100) > _loc68_)
                           {
                              _loc73_ = -1;
                           }
                           if(this.api.datacenter.Player.Level - _loc68_ > _loc69_)
                           {
                              _loc73_ = -1;
                           }
                           if(this.api.datacenter.Player.Level * (1 + _loc72_ / 100) < _loc68_)
                           {
                              _loc73_ = 1;
                           }
                           if(this.api.datacenter.Player.Level - _loc68_ < _loc71_)
                           {
                              _loc73_ = 1;
                           }
                           _loc52_.pvpGain = _loc73_;
                        }
                     }
                     if(!this.api.datacenter.Game.isFight && (_global.parseInt(_loc14_,10) != this.api.datacenter.Player.ID && ((this.api.datacenter.Player.alignment.index == 1 || this.api.datacenter.Player.alignment.index == 2) && ((_loc52_.alignment.index == 1 || _loc52_.alignment.index == 2) && (_loc52_.alignment.index != this.api.datacenter.Player.alignment.index && (_loc52_.rank.value && this.api.datacenter.Map.bCanAttack))))))
                     {
                        if(this.api.datacenter.Player.rank.value > _loc52_.rank.value)
                        {
                           this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x06\x01"]);
                        }
                        if(this.api.datacenter.Player.rank.value < _loc52_.rank.value)
                        {
                           this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\x1d"]);
                        }
                     }
                     var _loc74_ = this["\x1b\x03\x06"](_loc17_);
                     var _loc75_ = _loc74_.gfx;
                     this["\x1b\x06\x1c"](_loc75_[0],_loc52_);
                     _loc52_.title = _loc25_;
                     _loc31_ = this.api.kernel.CharactersManager.createCharacter(_loc14_,_loc15_,_loc52_);
                     dofus.datacenter.["\x16\x19\x02"](_loc31_)["\x18\r\x04"] = false;
                     _loc31_["\x16\x03\x06"] = _loc19_;
                     var _loc76_ = _loc14_;
                     var _loc77_ = _loc74_.shape != "circle" ? 2 : 0;
                     var _loc78_ = 1;
                     while(true)
                     {
                        if(_loc78_ >= _loc75_.length)
                        {
                           break loop3;
                        }
                        if(_loc75_[_loc78_] != "")
                        {
                           var _loc79_ = _loc14_ + "_" + _loc78_;
                           var _loc80_ = new Object();
                           this["\x1b\x06\x1c"](_loc75_[_loc78_],_loc80_);
                           var _loc81_ = new ank.battlefield.datacenter..Sprite(_loc79_,ank.battlefield.mc.Sprite,dofus.Constants["\x16\x1c\x1a"] + _loc80_.gfxID + ".swf");
                           _loc81_.allDirections = false;
                           this.api.gfx["\x15\x1d\x19"](_loc79_,_loc76_,_loc77_,_loc81_);
                           if(!_global.isNaN(_loc80_.scaleX))
                           {
                              this.api.gfx["\x1a\x1a\n"](_loc81_.id,_loc80_.scaleX,_loc80_.scaleY);
                           }
                           switch(_loc74_.shape)
                           {
                              case "circle":
                                 _loc77_ = _loc78_;
                                 break;
                              case "line":
                                 _loc76_ = _loc79_;
                                 _loc77_ = 2;
                           }
                        }
                        _loc78_ = _loc78_ + 1;
                     }
               }
               this["\x19\x1d\x04"](_loc8_,_loc31_,_loc32_);
            }
            else
            {
               var _loc82_ = _loc6_.substr(1);
               var _loc83_ = this.api.datacenter.Sprites.getItemAt(_loc82_);
               if(!this.api.datacenter.Game.isRunning && this.api.datacenter.Game["\x18\x0e\x19"])
               {
                  var _loc84_ = _loc83_.name;
                  var _loc85_ = this["\x1b\x1d\x01"][_loc82_];
                  if(!_global.isNaN(_loc85_) && 7935 - _loc85_ < 300)
                  {
                     this.api.kernel.showMessage(undefined,this.api.kernel.DebugManager.getTimestamp() + " (Map) " + this.api.kernel.ChatManager.getLinkName(_loc82_,_loc84_) + " s\'est déconnecté (" + _loc82_ + ")","ADMIN_CHAT");
                  }
                  this["\x1b\x1d\x01"][_loc82_] = 1787;
               }
               this["\x19\x1d\x04"](_loc8_,_loc83_);
            }
         }
      }
   }
   function §\x19\x15\x02§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         var _loc5_ = _loc3_[_loc4_].split(";");
         var _loc6_ = Number(_loc5_[0]);
         var _loc7_ = _loc5_[1].substring(0,10);
         var _loc8_ = _loc5_[1].substr(10);
         var _loc9_ = _loc5_[2] != "0" ? 1 : 0;
         this.api.gfx["\x1b\x14\b"](_loc6_,_loc7_,_loc8_,_loc9_);
         _loc4_ = _loc4_ + 1;
      }
   }
   function §\x19\x1e\x17§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         var _loc5_ = _loc3_[_loc4_];
         var _loc6_ = _loc5_.charAt(0) != "+" ? false : true;
         var _loc7_ = _loc5_.substr(1).split(";");
         var _loc8_ = Number(_loc7_[0]);
         var _loc9_ = Number(_loc7_[1]);
         var _loc10_ = _loc7_[2];
         var _loc11_ = Number(_loc7_[3]);
         if(_loc6_)
         {
            this.api.gfx["\x17\n\x10"](_loc8_,0,_loc9_,_loc10_,dofus.Constants.ZONE_COLOR[_loc10_],_loc11_);
         }
         else
         {
            this.api.gfx["\x16\x1c\x12"](_loc8_,_loc9_,_loc10_);
         }
         _loc4_ = _loc4_ + 1;
      }
   }
   function §\x19\x15\x03§(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0) == "+";
      var _loc4_ = _loc2_.substr(1).split("|");
      var _loc5_ = 0;
      while(_loc5_ < _loc4_.length)
      {
         var _loc6_ = _loc4_[_loc5_].split(";");
         var _loc7_ = Number(_loc6_[0]);
         var _loc8_ = _global.parseInt(_loc6_[1]);
         if(_loc3_)
         {
            var _loc9_ = new dofus.datacenter.["\x18\x10\x15"](0,_loc8_);
            var _loc10_ = Number(_loc6_[2]);
            switch(_loc10_)
            {
               case 0:
                  this.api.gfx["\x1b\x14\t"](_loc7_,_loc9_.iconFile,1,true,true,_loc9_);
                  break;
               case 1:
                  if(this.api.gfx["\x18\x18\x15"]["\x17\x14\x1d"](_loc7_).layerObjectExternalData.unicID != _loc8_)
                  {
                     this.api.gfx["\x1b\x14\t"](_loc7_,_loc9_.iconFile,1,true,false,_loc9_);
                  }
                  else
                  {
                     _loc9_ = this.api.gfx["\x18\x18\x15"]["\x17\x14\x1d"](_loc7_).layerObjectExternalData;
                  }
                  _loc9_.rideItemDurability = Number(_loc6_[3]);
                  _loc9_.rideItemDurabilityMax = Number(_loc6_[4]);
            }
         }
         else
         {
            var _loc11_ = this.api.gfx["\x18\x18\x15"]["\x17\x14\x1d"](_loc7_);
            if(_loc11_ != undefined && (_loc11_.mcObjectExternal != undefined && _loc11_.mcObjectExternal == this.api.gfx["\x1a\x0e\x15"]))
            {
               this.api.gfx["\x19\x1a\x1b"](_loc11_.mcObjectExternal);
            }
            this.api.gfx["\x18\t\x1b"](_loc7_,1);
         }
         _loc5_ = _loc5_ + 1;
      }
   }
   function §\x19\x17\x16§(sExtraData)
   {
      var _loc3_ = ank.gapi.controls.PopupMenu["\x17\x03\x1b"];
      var _loc4_ = _loc2_.split("|");
      var _loc5_ = 0;
      while(_loc5_ < _loc4_.length)
      {
         var _loc6_ = _loc4_[_loc5_].split(";");
         var _loc7_ = Number(_loc6_[0]);
         var _loc8_ = _loc6_[1];
         var _loc9_ = _loc6_[2] != undefined;
         var _loc10_ = _loc6_[2] != "1" ? false : true;
         if(_loc3_ != undefined && (_loc3_["\x17\x13\x0b"] == _loc7_ && (!_loc10_ && _loc8_ == "3")))
         {
            _loc3_["\x1a\f\x15"]();
         }
         if(_loc9_)
         {
            this.api.gfx["\x1a\x18\x0f"](_loc7_,_loc10_,2);
         }
         this.api.gfx["\x1a\x18\x0e"](_loc7_,_loc8_);
         _loc5_ = _loc5_ + 1;
      }
   }
   function §\x19\x17\x17§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         var _loc5_ = _loc3_[_loc4_].split(";");
         var _loc6_ = Number(_loc5_[0]);
         var _loc7_ = Number(_loc5_[1]);
         this.api.gfx["\x1a\x18\x10"](_loc6_,_loc7_);
         _loc4_ = _loc4_ + 1;
      }
   }
   function §\x19\x16\x16§(sExtraData)
   {
      var _loc3_ = _loc2_.split(";");
      var _loc4_ = _loc3_[0];
      var _loc5_ = _loc3_[1].split(",");
      var _loc6_ = _loc3_[2];
      var _loc7_ = _loc3_[3];
      var _loc8_ = _loc3_[4];
      var _loc9_ = _loc3_[5];
      var _loc10_ = Number(_loc3_[6]);
      var _loc11_ = _loc3_[7];
      var _loc12_ = _loc3_[8];
      var _loc13_ = 0;
      while(_loc13_ < _loc5_.length)
      {
         var _loc14_ = _loc5_[_loc13_];
         if(_loc14_ == this.api.datacenter.Game["\x17\x03\x1a"] && _loc10_ != -1)
         {
            _loc10_ = _loc10_ + 1;
         }
         var _loc15_ = new dofus.datacenter.["\x17\f\x02"](_loc12_,Number(_loc4_),Number(_loc6_),Number(_loc7_),Number(_loc8_),_loc9_,Number(_loc10_),Number(_loc11_));
         var _loc16_ = this.api.datacenter.Sprites.getItemAt(_loc14_);
         _loc16_["\x17\f\t"]["\x15\x1d\b"](_loc15_);
         _loc13_ = _loc13_ + 1;
      }
   }
   function §\x19\x15\x14§(sExtraData)
   {
      var _loc3_ = this.api.datacenter.Sprites;
      for(var a in _loc3_)
      {
         _loc3_[a]["\x17\f\t"]["\x1b\x0f\r"]();
      }
   }
   function §\x19\x15\x07§(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0) == "+";
      var _loc4_ = _loc2_.substr(1).split("|");
      var _loc5_ = _loc4_.shift().split(";");
      var _loc6_ = Number(_loc5_[0]);
      var _loc7_ = Number(_loc5_[1]);
      var _loc8_ = (Math.cos(_loc6_) + 1) * 8388607;
      if(_loc3_)
      {
         var _loc9_ = new dofus.datacenter..Challenge(_loc6_,_loc7_);
         this.api.datacenter.["\x16\x18\x10"]["\x15\x1d\x13"](_loc6_,_loc9_);
         var _loc10_ = 0;
         while(_loc10_ < _loc4_.length)
         {
            var _loc11_ = _loc4_[_loc10_].split(";");
            var _loc12_ = _loc11_[0];
            var _loc13_ = Number(_loc11_[1]);
            var _loc14_ = Number(_loc11_[2]);
            var _loc15_ = Number(_loc11_[3]);
            var _loc16_ = dofus.Constants["\x18\x01\x14"](_loc14_,_loc15_);
            var _loc17_ = new dofus.datacenter.["\x1b\x0e\x15"](_loc12_,ank.battlefield.mc.Sprite,_loc16_,_loc13_,_loc8_,_loc14_,_loc15_);
            _loc9_["\x15\x1e\x1d"](_loc17_);
            this.api.gfx.addSprite(_loc17_.id,_loc17_);
            _loc10_ = _loc10_ + 1;
         }
      }
      else
      {
         var _loc18_ = this.api.datacenter.["\x16\x18\x10"].getItemAt(_loc6_)["\x1b\x0f\x02"];
         for(var k in _loc18_)
         {
            var _loc19_ = _loc18_[k];
            this.api.gfx["\x1a\f\x19"](_loc19_.id);
         }
         this.api.datacenter.["\x16\x18\x10"]["\x1a\f\n"](_loc6_);
      }
   }
   function §\x19\x1d\x19§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_.shift());
      var _loc5_ = dofus.datacenter.["\x1b\x0e\x15"](this.api.datacenter.Sprites.getItemAt(_loc4_));
      var _loc6_ = 0;
      while(_loc6_ < _loc3_.length)
      {
         var _loc7_ = _loc3_[_loc6_].split(";");
         var _loc8_ = _loc7_[0].charAt(0) == "+";
         var _loc9_ = _loc7_[0].substr(1);
         var _loc10_ = _loc7_[1];
         var _loc11_ = _loc7_[2];
         var _loc12_ = _loc10_.split(",");
         var _loc13_ = Number(_loc10_);
         if(_loc12_.length > 1)
         {
            _loc10_ = this.api.lang["\x17\x18\x05"](_loc12_);
         }
         else if(!_global.isNaN(_loc13_))
         {
            _loc10_ = this.api.lang["\x17\x1c\t"](_loc13_).n;
         }
         if(_loc8_)
         {
            var _loc14_ = new Object();
            _loc14_.id = _loc9_;
            _loc14_.name = _loc10_;
            _loc14_.level = _loc11_;
            _loc5_["\x15\x1e\x05"](_loc14_);
         }
         else
         {
            _loc5_["\x1a\f\x14"](_loc9_);
         }
         _loc6_ = _loc6_ + 1;
      }
      _loc5_.refreshSwordSprite();
   }
   function §\x19\x17\x0e§(sExtraData)
   {
      var _loc3_ = _loc2_.substr(2);
      var _loc4_ = this.api.datacenter.Sprites.getItemAt(_loc3_);
      if(_loc4_ != undefined)
      {
         var _loc5_ = _loc2_.charAt(0) == "+";
         var _loc6_ = _loc2_.charAt(1);
         switch(_loc6_)
         {
            case "H":
               _loc4_["\x1a\x01\b"][dofus.datacenter.["\x1b\x0e\x15"]["\x1a\x01\x0f"]] = _loc5_;
               break;
            case "S":
               _loc4_["\x1a\x01\b"][dofus.datacenter.["\x1b\x0e\x15"]["\x1a\x01\x0e"]] = _loc5_;
               break;
            case "A":
               _loc4_["\x1a\x01\b"][dofus.datacenter.["\x1b\x0e\x15"]["\x1a\x01\f"]] = _loc5_;
               break;
            case "P":
               _loc4_["\x1a\x01\b"][dofus.datacenter.["\x1b\x0e\x15"]["\x1a\x01\r"]] = _loc5_;
         }
         this.api.gfx.addSpriteOverHeadItem(_loc3_,"FightOptions",dofus.graphics.battlefield["\x17\x0f\x18"],[_loc4_],undefined);
      }
   }
   function §\x19\x19\x16§()
   {
      this.api.datacenter.Game["\x17\x03\x1a"] = undefined;
      this.api.ui.getUIComponent("Banner")["\x18\x06\x16"](true);
      this.api.ui.unloadUIComponent("Timeline");
      this.api.ui.unloadUIComponent("StringCourse");
      this.api.ui.unloadUIComponent("PlayerInfos");
      this.api.ui.unloadUIComponent("SpriteInfos");
      this.aks.GameActions["\x19\x13\x18"](String(this.api.datacenter.Player.ID));
      this.api.datacenter.Player.reset();
      this.api.datacenter.Player.isDead = false;
      var _loc2_ = dofus.graphics.gapi.ui.FightChallenge(dofus.graphics.gapi.ui.FightChallenge(this.api.ui.getUIComponent("FightChallenge")));
      _loc2_["\x16\x1b\x12"]();
      this.aks.Game.create();
   }
   function §\x19\x16\x19§(sExtraData)
   {
      if(this.api.kernel.MapsServersManager["\x18\f\x1b"])
      {
         this.addToQueue({object:this,method:this["\x19\x16\x19"],params:[_loc2_]});
         return undefined;
      }
      this.aks.Game["\x18\f\x1c"] = true;
      var _loc3_ = dofus.graphics.gapi.ui.FightChallenge(dofus.graphics.gapi.ui.FightChallenge(this.api.ui.getUIComponent("FightChallenge")));
      this.api.kernel.StreamingDisplayManager["\x19\x17\r"]();
      var _loc4_ = {winners:[],loosers:[],collectors:[],challenges:_loc3_.challenges.deepClone(),currentTableTurn:this.api.datacenter.Game.currentTableTurn,currentPlayerInfos:[],currentPlayerInfosWithChest:[]};
      this.api.datacenter.Game["\x1a\x0e\t"] = _loc4_;
      if(!this.api.datacenter.Game.isSpectator)
      {
         this.api.datacenter.Basics.currentSessionFightCount++;
         _loc4_.id = this.api.datacenter.Basics.currentSessionFightCount;
         this.api.datacenter.Game.storeFightResults(_loc4_);
      }
      _loc3_["\x16\x1b\x12"]();
      var _loc5_ = _loc2_.split("|");
      var _loc6_ = -1;
      if(!_global.isNaN(Number(_loc5_[0])))
      {
         _loc4_.duration = Number(_loc5_[0]);
      }
      else
      {
         var _loc7_ = _loc5_[0].split(";");
         _loc4_.duration = Number(_loc7_[0]);
         _loc6_ = Number(_loc7_[1]);
      }
      this.api.datacenter.Basics.aks_game_end_bonus = _loc6_;
      var _loc8_ = Number(_loc5_[1]);
      var _loc9_ = Number(_loc5_[2]);
      _loc4_["\x17\x10\x02"] = _loc9_;
      var _loc10_ = new ank.utils.ExtendedArray();
      var _loc11_ = 0;
      this.api.datacenter.Player.isDead = false;
      this["\x1a\x03\x1c"](_loc4_,3,_loc8_,_loc5_,_loc9_,_loc11_,_loc10_,false,false);
   }
   function §\x1a\x03\x1c§(§\x1a\x01\x19§, §\x19\x0e\x1b§, §\x19\x0e\x05§, §\x16\x06\x12§, §\x19\x07\x12§, §\x19\t\x02§, §\x17\x0b\x01§, bAlreadyParsed, bIsChest)
   {
      var _loc11_ = _loc3_;
      var _loc12_ = _loc5_[_loc11_].split(";");
      var _loc13_ = new Object();
      if(Number(_loc12_[0]) != 6)
      {
         _loc13_.id = Number(_loc12_[1]);
         if(_loc13_.id == this.api.datacenter.Player.ID)
         {
            if(Number(_loc12_[0]) == 0)
            {
               this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\x14"]);
            }
            else
            {
               this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\x15"]);
            }
         }
         var _loc15_ = this.api.kernel.CharactersManager["\x17\x1c\x0f"](_loc12_[2]);
         _loc13_.name = _loc15_.name;
         _loc13_.type = _loc15_.type;
         _loc13_.level = Number(_loc12_[3]);
         _loc13_.bDead = _loc12_[5] != "1" ? false : true;
         _loc13_.gfx = Number(_loc12_[4]);
         switch(_loc6_)
         {
            case 0:
               _loc13_.minxp = Number(_loc12_[6]);
               _loc13_.xp = Number(_loc12_[7]);
               _loc13_.maxxp = Number(_loc12_[8]);
               _loc13_.winxp = Number(_loc12_[9]);
               _loc13_.guildxp = Number(_loc12_[10]);
               _loc13_.mountxp = Number(_loc12_[11]);
               var _loc14_ = _loc12_[12].split(",");
               if(_loc13_.id == this.api.datacenter.Player.ID && _loc14_.length > 10)
               {
                  this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\x16"]);
               }
               _loc13_.kama = _loc12_[13];
               break;
            case 1:
               _loc13_.minhonour = Number(_loc12_[6]);
               _loc13_["\x18\x07\r"] = Number(_loc12_[7]);
               _loc13_.maxhonour = Number(_loc12_[8]);
               _loc13_.winhonour = Number(_loc12_[9]);
               _loc13_.rank = Number(_loc12_[10]);
               _loc13_.disgrace = Number(_loc12_[11]);
               _loc13_.windisgrace = Number(_loc12_[12]);
               _loc13_.maxdisgrace = this.api.lang["\x17\x1b\x12"]();
               _loc13_.mindisgrace = 0;
               _loc13_.alignment = Number(_loc12_[13]);
               _loc14_ = _loc12_[14].split(",");
               if(_loc13_.id == this.api.datacenter.Player.ID && _loc14_.length > 10)
               {
                  this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\x16"]);
               }
               _loc13_.kama = _loc12_[15];
               _loc13_.minxp = Number(_loc12_[16]);
               _loc13_.xp = Number(_loc12_[17]);
               _loc13_.maxxp = Number(_loc12_[18]);
               _loc13_.winxp = Number(_loc12_[19]);
         }
      }
      else
      {
         _loc14_ = _loc12_[1].split(",");
         _loc13_.kama = _loc12_[2];
         _loc7_ += Number(_loc13_.kama);
      }
      _loc13_.items = new Array();
      _loc13_.items = this.parseItems(_loc14_);
      switch(Number(_loc12_[0]))
      {
         case 0:
            _loc2_.loosers.push(_loc13_);
            break;
         case 2:
            _loc2_.winners.push(_loc13_);
            break;
         case 5:
            _loc2_.collectors.push(_loc13_);
            break;
         case 6:
            _loc8_ = _loc8_.concat(_loc13_.items);
      }
      if(!bAlreadyParsed && (_loc13_.id == this.api.datacenter.Player.ID || bIsChest))
      {
         if(bIsChest)
         {
            var _loc16_ = new ank.utils.["\x17\x0e\r"]();
            var _loc17_ = new Array();
            var _loc18_ = _loc2_.currentPlayerInfos[0].items;
            var _loc19_ = 0;
            while(_loc19_ < _loc18_.length)
            {
               var _loc20_ = _loc18_[_loc19_];
               var _loc21_ = new dofus.datacenter.["\x18\x10\x15"](undefined,_loc20_.unicID,_loc20_.Quantity);
               _loc17_.push(_loc21_);
               _loc16_["\x15\x1d\x13"](_loc20_.unicID,_loc21_);
               _loc19_ = _loc19_ + 1;
            }
            var _loc22_ = _loc13_.items;
            var _loc23_ = 0;
            while(_loc23_ < _loc22_.length)
            {
               var _loc24_ = _loc22_[_loc23_];
               if(_loc16_.getItemAt(_loc24_.unicID) != undefined)
               {
                  var _loc25_ = dofus.datacenter.["\x18\x10\x15"](_loc16_.getItemAt(_loc24_.unicID));
                  _loc25_.Quantity += _loc24_.Quantity;
               }
               else
               {
                  _loc17_.push(_loc24_);
               }
               _loc23_ = _loc23_ + 1;
            }
            this.api.datacenter.Basics.kamas_lastGained = Number(this.api.datacenter.Basics.kamas_lastGained) + Number(_loc12_[13]);
            var _loc26_ = new Object();
            _loc26_.type = _loc2_.currentPlayerInfos[0].type;
            _loc26_.winxp = this.api.datacenter.Basics.exp_lastGained;
            _loc26_.guildxp = this.api.datacenter.Basics.guildExp_lastGained;
            _loc26_.mountxp = this.api.datacenter.Basics.mountExp_lastGained;
            _loc26_.kama = this.api.datacenter.Basics.kamas_lastGained;
            _loc26_.items = _loc17_;
            _loc2_.currentPlayerInfosWithChest.push(_loc26_);
            bAlreadyParsed = true;
         }
         else
         {
            if(this.api.datacenter.Player.Guild == 3 && _loc6_ == 0)
            {
               if(_loc5_[_loc11_ + 1].split(";")[2] == 285)
               {
                  bIsChest = true;
               }
               else
               {
                  bAlreadyParsed = true;
               }
            }
            else
            {
               bAlreadyParsed = true;
            }
            this.api.datacenter.Basics.exp_lastGained = _loc13_.winxp;
            this.api.datacenter.Basics.kamas_lastGained = _loc13_.kama;
            this.api.datacenter.Basics.guildExp_lastGained = _loc13_.guildxp;
            this.api.datacenter.Basics.mountExp_lastGained = _loc13_.mountxp;
            _loc2_.currentPlayerInfos.push(_loc13_);
         }
      }
      _loc11_ = _loc11_ + 1;
      if(_loc11_ < _loc5_.length)
      {
         this.addToQueue({object:this,method:this["\x1a\x03\x1c"],params:[_loc2_,_loc11_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,bAlreadyParsed,bIsChest]});
      }
      else
      {
         this["\x19\x1b\x01"](_loc4_,_loc2_,_loc8_,_loc7_);
      }
   }
   function parseItems(§\x16\x02\x06§)
   {
      var _loc3_ = new Array();
      var _loc4_ = 0;
      while(_loc4_ < _loc2_.length)
      {
         var _loc5_ = _loc2_[_loc4_].split("~");
         var _loc6_ = Number(_loc5_[0]);
         var _loc7_ = Number(_loc5_[1]);
         if(_global.isNaN(_loc6_))
         {
            break;
         }
         if(_loc6_ != 0)
         {
            var _loc8_ = new dofus.datacenter.["\x18\x10\x15"](0,_loc6_,_loc7_);
            _loc3_.push(_loc8_);
         }
         _loc4_ = _loc4_ + 1;
      }
      return _loc3_;
   }
   function §\x19\x1b\x01§(§\x19\x0e\x05§, §\x1a\x01\x19§, §\x17\x0b\x01§, §\x19\t\x02§)
   {
      if(_loc4_.length)
      {
         var _loc6_ = Math.ceil(_loc4_.length / _loc3_.winners.length);
         var _loc7_ = 0;
         while(_loc7_ < _loc3_.winners.length)
         {
            var _loc8_ = _loc4_.length;
            _loc3_.winners[_loc7_].kama = Math.ceil(_loc5_ / _loc6_);
            if(_loc7_ == _loc3_.winners.length - 1)
            {
               _loc6_ = _loc8_;
            }
            var _loc9_ = _loc8_ - _loc6_;
            while(_loc9_ < _loc8_)
            {
               _loc3_.winners[_loc7_].items.push(_loc4_.pop());
               _loc9_ = _loc9_ + 1;
            }
            _loc7_ = _loc7_ + 1;
         }
      }
      if(_loc2_ == this.api.datacenter.Player.ID)
      {
         this.aks.GameActions["\x19\x13\x18"](String(_loc2_));
      }
      this.api.datacenter.Game.isRunning = false;
      var _loc10_ = this.api.datacenter.Sprites.getItemAt(_loc2_).sequencer;
      this.aks.Game["\x18\f\x1c"] = false;
      if(_loc10_ != undefined)
      {
         _loc10_.addAction(26,false,this.api.kernel.GameManager,this.api.kernel.GameManager["\x1b\x0f\x0e"]);
         _loc10_.execute(false);
      }
      else
      {
         ank.utils.Logger.err("[AKS.Game.onEnd] Impossible de trouver le sequencer");
         ank.utils.Timer.setTimer(this,"game",this.api.kernel.GameManager,this.api.kernel.GameManager["\x1b\x0f\x0e"],500);
      }
      this.api.kernel.TipsManager.showNewTip(dofus.managers.TipsManager["\x1b\x10\r"]);
   }
   function §\x19\x17\x07§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = _loc3_[0];
      var _loc5_ = _loc3_[1].split(";");
      var _loc6_ = dofus.Constants["\x17\x0e\x1d"] + _loc4_ + ".swf";
      var _loc7_ = _loc4_ == "-";
      for(var k in _loc5_)
      {
         var _loc8_ = _loc5_[k];
         if(_loc7_)
         {
            this.api.gfx["\x1a\f\x1b"](_loc8_,false);
         }
         else
         {
            this.api.gfx["\x15\x1e\x11"](_loc8_,_loc6_,undefined,false);
         }
      }
   }
   function §\x19\x18\x03§()
   {
      this.api.network.softDisconnect();
      this.api.ui.loadUIComponent("GameOver","GameOver",undefined,{bAlwaysOnTop:true});
   }
   function §\x19\x1d\x04§(§\x16\b\x11§, §\x1a\x02\b§, §\x16\x01\x12§)
   {
      if(_loc3_ instanceof dofus.datacenter.["\x16\x19\x02"])
      {
         this.api.datacenter.Game["\x1a\x05\x10"] += !_loc2_ ? -1 : 1;
      }
      var _loc5_ = _loc3_.id;
      if(_loc2_)
      {
         if(_loc4_ != undefined)
         {
            this.api.gfx["\x1b\x07\x0b"].apply(this.api.gfx,_loc4_);
         }
         this.api.gfx.addSprite(_loc5_);
         if(!_global.isNaN(_loc3_.scaleX))
         {
            this.api.gfx["\x1a\x1a\n"](_loc5_,_loc3_.scaleX,_loc3_.scaleY);
         }
         if(_loc3_ instanceof dofus.datacenter.["\x19\x12\x19"])
         {
            _loc3_.mc["\x15\x1d\r"](dofus.Constants["\x17\x0e\x1d"] + _loc3_["\x19\x12\x1c"] + ".swf",undefined,true);
            return undefined;
         }
         if(_loc3_ instanceof dofus.datacenter.["\x19\x0b\x07"])
         {
            if(!_global.isNaN(_loc3_["\x17\x0e\x14"]))
            {
               this.api.gfx["\x15\x1e\x11"](_loc5_,dofus.Constants["\x17\x0e\x1d"] + _loc3_["\x17\x0e\x14"] + ".swf",undefined,false);
               return undefined;
            }
         }
         if(this.api.datacenter.Game.isRunning)
         {
            this.api.gfx["\x15\x1e\x11"](_loc5_,dofus.Constants["\x16\x1b\r"],dofus.Constants["\x1b\x0f\x03"][_loc3_["\x1b\x0e\x15"]]);
         }
         else if(_loc3_.Aura != 0 && (_loc3_.Aura != undefined && this.api.kernel.OptionsManager.getOption("Aura")))
         {
            this.api.gfx["\x15\x1e\x11"](_loc5_,dofus.Constants["\x16\x07\x10"] + _loc3_.Aura + ".swf",undefined,true);
         }
         if(_loc5_ == this.api.datacenter.Player.ID)
         {
            this.api.datacenter.Player.data = _loc3_;
            this.api.ui.getUIComponent("Banner")["\x1b\x15\x0f"]();
         }
         else if(this.api.gfx.SpriteHandler.hidePlayerSprites && (_loc3_ instanceof dofus.datacenter.["\x16\x19\x02"] || (_loc3_ instanceof dofus.datacenter..PlayerShop || _loc3_ instanceof dofus.datacenter.["\x18\x1d\x19"])))
         {
            this.api.gfx.SpriteHandler["\x18\x06\x1c"](_loc5_,true);
         }
         else if(this.api.gfx.SpriteHandler["\x18\x0f\x15"] && _loc3_ instanceof dofus.datacenter.["\x18\x1d\x19"])
         {
            _loc3_.mc["\x1e\x07\n"](true);
         }
      }
      else if(!this.api.datacenter.Game.isRunning)
      {
         this.api.gfx["\x1a\f\x19"](_loc5_);
      }
      else
      {
         var _loc6_ = _loc3_.sequencer;
         var _loc7_ = _loc3_.mc;
         _loc6_.addAction(27,false,this.api.kernel,this.api.kernel.showMessage,[undefined,this.api.lang.getText("LEAVE_GAME",[_loc3_.name]),"INFO_CHAT"]);
         _loc6_.addAction(28,false,this.api.ui.getUIComponent("Timeline"),this.api.ui.getUIComponent("Timeline")["\x18\x06\r"],[_loc5_]);
         _loc6_.addAction(29,true,_loc7_,_loc7_.setAnim,["Die"],1500,true);
         if(_loc3_["\x18\x05\x04"]())
         {
            this.api.gfx["\x1b\x13\n"](_loc3_["\x16\x17\x03"].id,_loc3_.cellNum,false,_loc6_);
            _loc6_.addAction(30,false,this.api.gfx,this.api.gfx["\x15\x1e\x11"],[_loc3_["\x16\x17\x03"].id,dofus.Constants["\x16\x1b\r"],dofus.Constants["\x1b\x0f\x03"][_loc3_["\x16\x17\x03"]["\x1b\x0e\x15"]]]);
         }
         _loc6_.addAction(31,false,_loc7_,_loc7_.clear);
         _loc6_.execute();
         if(this.api.datacenter.Game["\x17\x03\x1a"] == _loc5_)
         {
            this.api.ui.getUIComponent("Banner").stopTimer();
            this.api.ui.getUIComponent("Timeline")["\x1b\n\x1c"]();
         }
      }
      this.api.kernel.GameManager["\x16\x04\x0b"]();
   }
   function §\x1b\x03\x06§(§\x1a\x1b\x1a§)
   {
      if(_loc2_.indexOf(",") != -1)
      {
         var _loc3_ = _loc2_.split(",");
         return {shape:"circle",gfx:_loc3_};
      }
      if(_loc2_.indexOf(":") != -1)
      {
         var _loc4_ = _loc2_.split(":");
         return {shape:"line",gfx:_loc4_};
      }
      return {shape:"none",gfx:[_loc2_]};
   }
   function §\x1b\x06\x1c§(§\x1a\x1b\x1d§, §\x19\x12\x10§)
   {
      var _loc4_ = _loc2_.split("^");
      var _loc5_ = _loc4_.length != 2 ? _loc2_ : _loc4_[0];
      var _loc6_ = 100;
      var _loc7_ = 100;
      if(_loc4_.length == 2)
      {
         var _loc8_ = _loc4_[1];
         if(_global.isNaN(Number(_loc8_)))
         {
            var _loc9_ = _loc8_.split("x");
            _loc6_ = _loc9_.length != 2 ? 100 : Number(_loc9_[0]);
            _loc7_ = _loc9_.length != 2 ? 100 : Number(_loc9_[1]);
         }
         else
         {
            _loc6_ = _loc7_ = Number(_loc8_);
         }
      }
      _loc3_.gfxID = _loc5_;
      _loc3_.scaleX = _loc6_;
      _loc3_.scaleY = _loc7_;
   }
   function §\x17\x02\x1d§()
   {
      var _loc2_ = new ank.battlefield.datacenter.["\x1b\x18\x04"]();
      _loc2_.id = 5;
      _loc2_.file = dofus.Constants["\x1b\x06\x15"] + "transition.swf";
      _loc2_.level = 5;
      _loc2_.params = [];
      _loc2_.bInFrontOfSprite = true;
      _loc2_.bTryToBypassContainerColor = false;
      return _loc2_;
   }
}
