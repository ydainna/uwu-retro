class dofus.utils.§\x16\x1e\x18§.§\x17\x05\x14§ extends dofus.utils.§\x16\x1e\x18§.§\x15\x1b\x0b§
{
   function §\x17\x05\x14§(oAPI)
   {
      super();
      this.initialize(oAPI);
   }
   function initialize(oAPI)
   {
      super.initialize(oAPI);
   }
   function process(sCmds)
   {
      super.process(sCmds);
      var _loc4_ = sCmds.split(dofus.aks.Basics.MULTIPLE_ADMIN_COMMANDS_SPLIT_STR);
      var _loc5_ = 0;
      while(_loc5_ < _loc4_.length)
      {
         var _loc6_ = _loc4_[_loc5_];
         this.processOneAdminCommand(_loc6_);
         _loc5_ = _loc5_ + 1;
      }
   }
   function processOneAdminCommand(§\x1a\x10\x19§)
   {
      if(_loc2_.charAt(0) == "/")
      {
         var _loc3_ = _loc2_.split(" ");
         var _loc4_ = _loc3_[0].substr(1).toUpperCase();
         _loc3_.splice(0,1);
         switch(_loc4_)
         {
            case "ADMINSELECT":
               if(_loc3_[0] == undefined || _loc3_[0].length == 0)
               {
                  this.showMessage(undefined,"Syntax : /adminselect [pseudos]","DEBUG_LOG");
                  return undefined;
               }
               var _loc5_ = this.api.kernel.AdminManager["\x17\x13\x17"](_loc3_[0],false);
               _loc5_.show(_root._xmouse,_root._ymouse,true);
               break;
            case "CONSOLEMAXSIZE":
               if(this.api.kernel.OptionsManager.getOption("DebugSizeIndex") != dofus.graphics.gapi.ui.Debug.CONSOLE_MAXSIZE)
               {
                  this.api.kernel.OptionsManager.setOption("DebugSizeIndex",dofus.graphics.gapi.ui.Debug.CONSOLE_MAXSIZE);
                  var _loc6_ = dofus.graphics.gapi.ui.Debug(this.api.ui.getUIComponent("Debug"));
                  if(_loc6_ != undefined)
                  {
                     _loc6_["\x16\x04\x12"](false);
                  }
               }
               break;
            case "CONSOLEMINIMIZED":
               if(this.api.kernel.OptionsManager.getOption("DebugSizeIndex") != dofus.graphics.gapi.ui.Debug.CONSOLE_MINIMIZED)
               {
                  this.api.kernel.OptionsManager.setOption("DebugSizeIndex",dofus.graphics.gapi.ui.Debug.CONSOLE_MINIMIZED);
                  var _loc7_ = dofus.graphics.gapi.ui.Debug(this.api.ui.getUIComponent("Debug"));
                  if(_loc7_ != undefined)
                  {
                     _loc7_["\x16\x04\x12"](false);
                  }
               }
               break;
            case "CONSOLEMEDIUM":
               if(this.api.kernel.OptionsManager.getOption("DebugSizeIndex") != dofus.graphics.gapi.ui.Debug.CONSOLE_MEDIUM)
               {
                  this.api.kernel.OptionsManager.setOption("DebugSizeIndex",dofus.graphics.gapi.ui.Debug.CONSOLE_MEDIUM);
                  var _loc8_ = dofus.graphics.gapi.ui.Debug(this.api.ui.getUIComponent("Debug"));
                  if(_loc8_ != undefined)
                  {
                     _loc8_["\x16\x04\x12"](false);
                  }
               }
               break;
            case "CHATPLUS":
               var _loc9_ = dofus.graphics.gapi.controls.Chat(this.api.ui.getUIComponent("Banner")["\x16\x19\x0b"]);
               if(_loc9_ != undefined)
               {
                  _loc9_["\x1a\x01\x03"](false);
               }
               break;
            case "CHATMINUS":
               var _loc10_ = dofus.graphics.gapi.controls.Chat(this.api.ui.getUIComponent("Banner")["\x16\x19\x0b"]);
               if(_loc10_ != undefined)
               {
                  _loc10_["\x1a\x01\x03"](true);
               }
               break;
            case "LANGFILE":
               var _loc11_ = Number(_loc3_[0]);
               if(_global.isNaN(_loc11_))
               {
                  this.showMessage(undefined,"I need a valid data bank ID","DEBUG_LOG");
                  break;
               }
               this.showMessage(undefined,_loc3_[1] + " lang file size : " + this.api.lang["\x17\x1a\x0f"](_loc11_,_loc3_[1]) + " octets","DEBUG_LOG");
               break;
            case "POINTSPRITE":
               this.api.kernel.TipsManager["\x1a\x06\r"](-1,Number(_loc3_[0]));
               break;
            case "VIEWFIGHTRESULT":
               var _loc12_ = Number(_loc2_.substr(_loc4_.length + 2));
               if(_global.isNaN(_loc12_) || _loc12_ < 1)
               {
                  this.showMessage(undefined,"Syntax : /fightresult [1" + (this.api.datacenter.Game.resultsArray.length <= 1 ? "" : " - " + this.api.datacenter.Game.resultsArray.length) + "]","DEBUG_LOG");
                  return undefined;
               }
               if(this.api.datacenter.Basics.currentSessionFightCount == -1)
               {
                  this.showMessage(undefined,"You didn\'t do any fights yet.","DEBUG_LOG");
               }
               else if(_loc12_ > this.api.datacenter.Game.resultsArray.length)
               {
                  this.showMessage(undefined,"This fight does not exist, try between 1 and " + this.api.datacenter.Game.resultsArray.length + ", where 1 is the most recent.","DEBUG_LOG");
               }
               else
               {
                  this.api.kernel.GameManager.showEndPanel(_loc12_ - 1,true);
               }
               break;
            case "LISTSPRITES":
               var _loc13_ = this.api.gfx.spriteHandler.getSprites().getItems();
               for(var k in _loc13_)
               {
                  var _loc14_ = _loc13_[k];
                  this.showMessage(undefined,"Sprite " + _loc14_.gfxFile + " (cell : " + _loc14_.cellNum + ")","DEBUG_LOG");
               }
               break;
            case "LISTPICTOS":
               var _loc15_ = this.api.gfx["\x18\x18\x15"]["\x17\x15\x02"]();
               for(var k in _loc15_)
               {
                  if(_loc15_[k]["\x18\x13\x0e"] != undefined && (!_global.isNaN(_loc15_[k]["\x18\x13\x0e"]) && _loc15_[k]["\x18\x13\x0e"] > 0))
                  {
                     this.showMessage(undefined,"Picto " + _loc15_[k]["\x18\x13\x0e"],"DEBUG_LOG");
                  }
                  if(_loc15_[k]["\x18\x13\x12"] != undefined && (!_global.isNaN(_loc15_[k]["\x18\x13\x12"]) && _loc15_[k]["\x18\x13\x12"] > 0))
                  {
                     this.showMessage(undefined,"Picto " + _loc15_[k]["\x18\x13\x12"],"DEBUG_LOG");
                  }
               }
               break;
            case "POINTPICTO":
               this.api.kernel.TipsManager["\x1a\x06\t"](-1,Number(_loc3_[0]));
               break;
            case "SAVETHEWORLD":
               if(dofus.Constants["\x1a\x10\x01"])
               {
                  dofus["\x1a\x0f\x1a"].execute();
               }
               else
               {
                  this.showMessage(undefined,this.api.lang.getText("UNKNOW_COMMAND",[_loc4_]),"DEBUG_ERROR");
               }
               break;
            case "STOPSAVETHEWORLD":
               if(dofus.Constants["\x1a\x10\x01"])
               {
                  dofus["\x1a\x0f\x1a"].stop();
               }
               else
               {
                  this.showMessage(undefined,this.api.lang.getText("UNKNOW_COMMAND",[_loc4_]),"DEBUG_ERROR");
               }
               break;
            case "NEXTSAVE":
               if(dofus.Constants["\x1a\x10\x01"])
               {
                  dofus["\x1a\x0f\x1a"].getInstance()["\x19\x07\x05"]();
               }
               else
               {
                  this.showMessage(undefined,this.api.lang.getText("UNKNOW_COMMAND",[_loc4_]),"DEBUG_ERROR");
               }
               break;
            case "SEARCHNPC":
               var _loc16_ = _loc2_.substr(_loc4_.length + 2);
               if(_loc16_ == undefined || _loc16_.length < 2)
               {
                  this.showMessage(undefined,"Syntax : /searchnpc [name]","DEBUG_LOG");
                  return undefined;
               }
               var _loc17_ = "";
               _loc17_ += "Looking for npc : " + _loc16_;
               var _loc18_ = this.api.lang["\x17\x1c\x19"]();
               for(var i in _loc18_)
               {
                  if(_loc18_[i].n.toUpperCase().indexOf(_loc16_.toUpperCase()) != -1)
                  {
                     _loc17_ += "\n " + _loc18_[i].n + " : " + i;
                  }
               }
               this.showMessage(undefined,_loc17_,"DEBUG_LOG");
               break;
            case "SEARCHBREED":
               var _loc19_ = _loc2_.substr(_loc4_.length + 2);
               if(_loc19_ == undefined || _loc19_.length < 2)
               {
                  this.showMessage(undefined,"Syntax : /searchbreed [name]","DEBUG_LOG");
                  return undefined;
               }
               var _loc20_ = "";
               _loc20_ += "Looking for breed : " + _loc19_;
               var _loc21_ = this.api.lang["\x17\x14\x07"]();
               for(var i in _loc21_)
               {
                  if(_loc21_[i].sn.toUpperCase().indexOf(_loc19_.toUpperCase()) != -1)
                  {
                     _loc20_ += "\n " + _loc21_[i].sn + " : " + i;
                  }
               }
               this.showMessage(undefined,_loc20_,"DEBUG_LOG");
               break;
            case "SEARCHALIGNMENT":
               var _loc22_ = _loc2_.substr(_loc4_.length + 2);
               if(_loc22_ == undefined || _loc22_.length < 2)
               {
                  this.showMessage(undefined,"Syntax : /searchalignment [name]","DEBUG_LOG");
                  return undefined;
               }
               var _loc23_ = "";
               _loc23_ += "Looking for alignment : " + _loc22_;
               var _loc24_ = this.api.lang["\x17\x14\x04"]();
               for(var i in _loc24_)
               {
                  if(_loc24_[i].n.toUpperCase().indexOf(_loc22_.toUpperCase()) != -1)
                  {
                     _loc23_ += "\n " + _loc24_[i].n + " : " + i;
                  }
               }
               this.showMessage(undefined,_loc23_,"DEBUG_LOG");
               break;
            case "SEARCHITEM":
               var _loc25_ = _loc2_.substr(_loc4_.length + 2);
               if(_loc25_ == undefined || _loc25_.length < 2)
               {
                  this.showMessage(undefined,"Syntax : /searchitem [name]","DEBUG_LOG");
                  return undefined;
               }
               var _loc26_ = "";
               _loc26_ += "Looking for item : " + _loc25_;
               var _loc27_ = this.api.lang["\x17\x19\x1b"]();
               for(var i in _loc27_)
               {
                  if(_loc27_[i].n.toUpperCase().indexOf(_loc25_.toUpperCase()) != -1)
                  {
                     _loc26_ += "\n " + _loc27_[i].n + " : " + i + " (gfx : " + _loc27_[i].t + "/" + _loc27_[i].g + ".swf)";
                  }
               }
               this.showMessage(undefined,_loc26_,"DEBUG_LOG");
               break;
            case "SEARCHJOB":
               var _loc28_ = _loc2_.substr(_loc4_.length + 2);
               if(_loc28_ == undefined || _loc28_.length < 2)
               {
                  this.showMessage(undefined,"Syntax : /searchjob [name]","DEBUG_LOG");
                  return undefined;
               }
               var _loc29_ = "";
               _loc29_ += "Looking for job : " + _loc28_;
               var _loc30_ = this.api.lang["\x17\x14\n"]();
               for(var i in _loc30_)
               {
                  var _loc31_ = _loc30_[i];
                  if(!(_global.isNaN(_loc31_.g) || _loc31_.g < 1))
                  {
                     if(_loc31_.n.toUpperCase().indexOf(_loc28_.toUpperCase()) != -1)
                     {
                        _loc29_ += "\n " + _loc31_.n + " : " + i;
                     }
                  }
               }
               this.showMessage(undefined,_loc29_,"DEBUG_LOG");
               break;
            case "SEARCHMONSTER":
               var _loc32_ = _loc2_.substr(_loc4_.length + 2);
               if(_loc32_ == undefined || _loc32_.length < 2)
               {
                  this.showMessage(undefined,"Syntax : /searchmonster [name]","DEBUG_LOG");
                  return undefined;
               }
               var _loc33_ = "";
               _loc33_ += "Looking for monster : " + _loc32_;
               var _loc34_ = this.api.lang["\x17\x1c\x04"]();
               for(var i in _loc34_)
               {
                  if(_loc34_[i].n.toUpperCase().indexOf(_loc32_.toUpperCase()) != -1)
                  {
                     _loc33_ += "\n " + _loc34_[i].n + " : " + i + " (gfx : " + _loc34_[i].g + ")";
                  }
               }
               this.showMessage(undefined,_loc33_,"DEBUG_LOG");
               break;
            case "SEARCHSUBAREA":
               var _loc35_ = _loc2_.substr(_loc4_.length + 2);
               if(_loc35_ == undefined || _loc35_.length < 2)
               {
                  this.showMessage(undefined,"Syntax : /searchsubarea [name]","DEBUG_LOG");
                  return undefined;
               }
               var _loc36_ = "";
               _loc36_ += "Looking for subarea : " + _loc35_;
               var _loc37_ = this.api.lang["\x17\x1b\x0e"]();
               for(var i in _loc37_)
               {
                  if(_loc37_[i].n.toUpperCase().indexOf(_loc35_.toUpperCase()) != -1)
                  {
                     _loc36_ += "\n " + _loc37_[i].n + " : " + i;
                  }
               }
               this.showMessage(undefined,_loc36_,"DEBUG_LOG");
               break;
            case "SEARCHSPELL":
               var _loc38_ = _loc2_.substr(_loc4_.length + 2);
               if(_loc38_ == undefined || _loc38_.length < 2)
               {
                  this.showMessage(undefined,"Syntax : /searchspell [name]","DEBUG_LOG");
                  return undefined;
               }
               var _loc39_ = "";
               _loc39_ += "Looking for spell : " + _loc38_;
               var _loc40_ = this.api.lang["\x18\x01\x06"]();
               for(var i in _loc40_)
               {
                  if(_loc40_[i].n.toUpperCase().indexOf(_loc38_.toUpperCase()) != -1)
                  {
                     _loc39_ += "\n " + _loc40_[i].n + " : " + i;
                  }
               }
               this.showMessage(undefined,_loc39_,"DEBUG_LOG");
               break;
            case "SEARCHQUEST":
               var _loc41_ = _loc2_.substr(_loc4_.length + 2);
               if(_loc41_ == undefined || _loc41_.length < 2)
               {
                  this.showMessage(undefined,"Syntax : /searchquest [name]","DEBUG_LOG");
                  return undefined;
               }
               var _loc42_ = "";
               _loc42_ += "Looking for quest : " + _loc41_;
               var _loc43_ = this.api.lang["\x17\x1d\x12"]();
               for(var i in _loc43_)
               {
                  if(_loc43_[i].toUpperCase().indexOf(_loc41_.toUpperCase()) != -1)
                  {
                     _loc42_ += "\n " + _loc43_[i] + " : " + i;
                  }
               }
               this.showMessage(undefined,_loc42_,"DEBUG_LOG");
               break;
            case "TACTIC":
               if(this.api.datacenter.Player.isAuthorized || this.api.datacenter.Game.isFight)
               {
                  var _loc44_ = !this.api.datacenter.Game["\x18\x10\x02"];
                  this.api.datacenter.Game["\x18\x10\x02"] = _loc44_;
                  this.api.gfx["\x15\x1c\x19"](this.api,_loc44_);
                  this.api.ui.getUIComponent("FightOptionButtons")["\x1c\x0b\x07"].selected = _loc44_;
               }
               break;
            case "VERSION":
            case "VER":
            case "ABOUT":
               var _loc45_ = "------------------------------------------------------\n";
               _loc45_ += "<b>DOFUS RETRO Client v" + dofus.Constants.VERSION + "." + dofus.Constants.SUBVERSION + "." + dofus.Constants.SUBSUBVERSION + "</b>";
               if(dofus.Constants.BETAVERSION > 0)
               {
                  _loc45_ += " <b><font color=\"#FF0000\">BETA VERSION " + dofus.Constants.BETAVERSION + "</font></b>";
               }
               _loc45_ += "\n(c) ANKAMA GAMES (" + dofus.Constants.VERSIONDATE + ")\n";
               _loc45_ += "Flash player " + System.capabilities.version + "\n";
               _loc45_ += "------------------------------------------------------";
               this.showMessage(undefined,_loc45_,"DEBUG_LOG");
               break;
            case "INFOS":
               var _loc46_ = "Svr:";
               _loc46_ += "\nNb:";
               _loc46_ += "\n Map  : " + String(this.api.datacenter.Game["\x1a\x05\x10"]);
               _loc46_ += "\n Cell : " + this.api.datacenter.["\x18\x18\x0e"].data[this.api.datacenter.Player.data.cellNum]["\x1b\x07\f"];
               _loc46_ += "\nDataServers:";
               var _loc47_ = 0;
               while(_loc47_ < this.api.config["\x17\x04\x1c"].length)
               {
                  _loc46_ += "\n host : " + this.api.config["\x17\x04\x1c"][_loc47_].url;
                  _loc47_ = _loc47_ + 1;
               }
               _loc46_ += "\n l   : " + this.api.config.language + " (" + this.api.lang.getLangVersion() + " & " + this.api.lang["\x18\x02\x10"]() + ")";
               this.showMessage(undefined,_loc46_,"DEBUG_LOG");
               break;
            case "ZOOM":
               this.api.kernel.GameManager["\x1b\x1b\f"](_loc3_[0],_loc3_[1],_loc3_[2]);
               break;
            case "TIMERSCOUNT":
               this.showMessage(undefined,String(ank.utils.Timer["\x18\x01\x16"]()),"DEBUG_LOG");
               break;
            case "VARS":
               this.showMessage(undefined,this.api.kernel.TutorialManager["\x1b\x17\x18"],"DEBUG_LOG");
               break;
            case "MOUNT":
               var _loc48_ = this.api.gfx["\x18\x01\b"](this.api.datacenter.Player.ID);
               if(!_loc48_["\x18\x0f\x02"])
               {
                  var _loc49_ = _loc3_[0] == undefined ? "7002.swf" : _loc3_[0] + ".swf";
                  var _loc50_ = _loc3_[1] == undefined ? "10.swf" : _loc3_[1] + ".swf";
                  var _loc51_ = new ank.battlefield.datacenter..Mount(dofus.Constants["\x16\x1c\x1a"] + _loc49_,dofus.Constants["\x16\x1b\x04"] + _loc50_);
                  this.api.gfx["\x18\x1e\f"](this.api.datacenter.Player.ID,_loc51_);
               }
               else
               {
                  this.api.gfx["\x1b\x13\x16"](this.api.datacenter.Player.ID);
               }
               break;
            case "SCALE":
               this.api.gfx["\x1a\x1a\n"](this.api.datacenter.Player.ID,_loc3_[0],_loc3_.length != 2 ? _loc3_[0] : _loc3_[1]);
               break;
            case "ANIM":
               if(dofus.Constants.DEBUG)
               {
                  if(_loc3_.length > 1)
                  {
                     this.api.gfx["\x1a\x1a\b"](this.api.datacenter.Player.ID,_loc3_[0],_loc3_[1]);
                  }
                  else
                  {
                     this.api.gfx["\x1a\x1a\x03"](this.api.datacenter.Player.ID,_loc3_.join(""));
                  }
               }
               break;
            case "C":
               if(dofus.Constants.DEBUG)
               {
                  var _loc52_ = _loc3_[0];
                  _loc3_.splice(0,1);
                  switch(_loc52_)
                  {
                     case ">":
                        this.api.network.send(_loc3_.join(" "));
                        break;
                     case "<":
                        this.api.network["\x1a\x07\x10"](_loc3_.join(" "));
                  }
               }
               break;
            case "D":
               if(dofus.Constants.DEBUG)
               {
                  var _loc53_ = _loc3_[0];
                  _loc3_.splice(0,1);
                  switch(_loc53_)
                  {
                     case ">":
                        this.api.network.send(_loc3_.join(" "),false,undefined,false,true);
                        break;
                     case "<":
                        this.api.network["\x1a\x07\x10"](_loc3_.join(" "));
                  }
               }
               break;
            case "DECRYPTFIGHTCELLS":
               if(!_loc3_[0] || (_loc3_[0].length == 0 || _loc3_[0].length % 2 != 0))
               {
                  this.showMessage(undefined,"I need a valid fight cells string !","DEBUG_LOG");
                  return undefined;
               }
               this.showMessage(undefined,"Full string : " + _loc3_[0],"DEBUG_LOG");
               var _loc54_ = 0;
               while(_loc54_ < _loc3_[0].length)
               {
                  var _loc55_ = ank.utils.Compressor.decode64(_loc3_[0].charAt(_loc54_)) << 6;
                  _loc55_ += ank.utils.Compressor.decode64(_loc3_[0].charAt(_loc54_ + 1));
                  this.showMessage(undefined,_loc3_[0].charAt(_loc54_) + _loc3_[0].charAt(_loc54_ + 1) + " : " + _loc55_,"DEBUG_LOG");
                  _loc54_ += 2;
               }
               break;
            case "CRYPTCELLS":
               if(_loc3_[0] == undefined)
               {
                  this.showMessage(undefined,"I need an ID chain","DEBUG_LOG");
                  return undefined;
               }
               var _loc56_ = _loc3_[0].split(",");
               var _loc57_ = 0;
               while(_loc57_ < _loc56_.length)
               {
                  var _loc58_ = Number(_loc56_[_loc57_]);
                  if(_global.isNaN(_loc58_) || _loc58_ == undefined)
                  {
                     this.showMessage(undefined,"Number not valid : " + _loc58_,"DEBUG_LOG");
                  }
                  else
                  {
                     var _loc59_ = Math.floor(_loc58_ / 64);
                     var _loc60_ = _loc58_ % 64;
                     var _loc61_ = ank.utils.Compressor["\x17\r\x07"](_loc59_) + ank.utils.Compressor["\x17\r\x07"](_loc60_);
                     this.showMessage(undefined,_loc58_ + " : " + _loc61_,"DEBUG_LOG");
                  }
                  _loc57_ = _loc57_ + 1;
               }
               break;
            case "DEBUGZAAP":
               dofus.ZaapConnect.newInstance();
               break;
            case "PRINTJAILDIALOG":
               var _loc62_ = this.api.kernel.ChatManager["\x17\x1a\x01"]();
               if(_loc62_.length == 0)
               {
                  this.showMessage(undefined,"No jail dialog found","DEBUG_LOG");
               }
               else
               {
                  this.showMessage(undefined,_loc62_,"DEBUG_LOG");
               }
               break;
            case "SENDMODREPORTS":
               if(!this.api.electron.enabled)
               {
                  this.showMessage(undefined,"This feature is not compatible on a Flash Projector","ERROR_CHAT");
                  return undefined;
               }
               this.api.electron.modReportsSendDayReportsDocs(_loc3_[0]);
               break;
            case "MERGEMODREPORTS":
               if(!this.api.electron.enabled)
               {
                  this.showMessage(undefined,"This feature is not compatible on a Flash Projector","ERROR_CHAT");
                  return undefined;
               }
               this.api.electron.modReportsMergeDayReportsDocs(_loc3_[0]);
               break;
            case "PRINTMODREPORTS":
               if(!this.api.electron.enabled)
               {
                  this.showMessage(undefined,"This feature is not compatible on a Flash Projector","ERROR_CHAT");
                  return undefined;
               }
               this.api.electron.modReportsPrintPendingReports();
               break;
            case "MAKEREPORT":
               if(!this.api.electron.enabled)
               {
                  this.showMessage(undefined,"This feature is not compatible on a Flash Projector","ERROR_CHAT");
                  return undefined;
               }
               if(!dofus.managers.AdminManager.getInstance()["\x18\r\x13"])
               {
                  this.showMessage(undefined,"You can\'t do this out of a batch execution.","ERROR_CHAT");
                  return undefined;
               }
               var _loc63_ = _loc2_.split("|");
               var _loc64_ = _loc63_[0].substring(_loc4_.length + 2);
               var _loc65_ = _loc63_[1] == "allaccounts";
               var _loc66_ = _loc63_[2];
               var _loc67_ = _loc63_[3].split(",");
               if(_loc64_ == undefined || (_loc64_.length < 1 || (_loc66_ == undefined || _loc66_.length < 1)))
               {
                  this.showMessage(undefined,"/makereport &lt;target pseudos|\'allaccounts\'|reason|[autocomplete action]&gt;","DEBUG_LOG");
                  return undefined;
               }
               var _loc68_ = undefined;
               var _loc69_ = undefined;
               if(_loc67_ != undefined)
               {
                  var _loc70_ = 0;
                  while(_loc70_ < _loc67_.length)
                  {
                     var _loc71_ = _loc67_[_loc70_];
                     switch(_loc71_)
                     {
                        case "chatmessage":
                           _loc68_ = this.api.kernel.GameManager["\x18\x12\x17"];
                           break;
                        case "jaildialog":
                           _loc69_ = this.api.kernel.ChatManager["\x17\x1a\x01"]();
                     }
                     _loc70_ = _loc70_ + 1;
                  }
               }
               var _loc72_ = dofus.graphics.gapi.ui.MakeReport(this.api.ui.getUIComponent("MakeReport"));
               if(_loc72_ == undefined)
               {
                  this.api.datacenter.["\x1b\x0f\b"].Report = new Object();
                  var _loc73_ = this.api.datacenter.["\x1b\x0f\b"].Report;
                  _loc73_.currentTargetPseudos = _loc64_;
                  _loc73_.currentTargetIsAllAccounts = _loc65_;
                  _loc73_.targetPseudos = _loc64_;
                  _loc73_.description = _loc68_;
                  _loc73_.jailDialog = _loc69_;
                  _loc73_.isAllAccounts = _loc65_;
                  _loc73_.reason = _loc66_;
               }
               else
               {
                  var _loc74_ = this.api.datacenter.["\x1b\x0f\b"].Report;
                  _loc74_.currentTargetPseudos = _loc64_;
                  _loc74_.currentTargetIsAllAccounts = _loc65_;
                  _loc74_.targetPseudos += "," + _loc64_;
                  _loc74_.description = _loc68_;
               }
               this.api.network.Basics["\x16\x06\n"](1,_loc64_,_loc65_);
               break;
            case "RETROCONSOLE":
               if(!this.api.electron.enabled)
               {
                  this.showMessage(undefined,"Does not work on a Flash Projector","DEBUG_ERROR");
                  break;
               }
               dofus.Eelectron.retroConsoleOpen();
               break;
            case "FASTSERVERSWITCH":
               var _loc75_ = Number(_loc3_[0]);
               if(_global.isNaN(_loc75_) || _loc75_ == undefined)
               {
                  this.showMessage(undefined,"I need a valid server ID !","DEBUG_LOG");
                  return undefined;
               }
               var _loc76_ = this.api.datacenter.Player.Name;
               if(_loc76_ == undefined)
               {
                  this.showMessage(undefined,"You have to be in game to do this","DEBUG_LOG");
                  return undefined;
               }
               var _loc77_ = new Object();
               _loc77_.serverId = _loc75_;
               _loc77_.playerName = _loc76_;
               dofus.kernel.FAST_SWITCHING_SERVER_REQUEST = _loc77_;
               this.api.network.askCharacterSwitchTicket();
               break;
            case "CLEAR":
               this.api.ui.getUIComponent("Debug").clear();
               this.api.electron.retroConsoleClear();
               break;
            case "WIDESCREENPANEL":
               if(this.api.electron.enabled)
               {
                  var _loc78_ = Number(_loc3_[0]);
                  if(_loc3_[0] == undefined || (_global.isNaN(_loc78_) || (_loc78_ < 0 || _loc78_ > 1)))
                  {
                     this.showMessage(undefined,"/widescreenpanel &lt;0 (chat) | 1 (console)","DEBUG_LOG");
                     return undefined;
                  }
                  this.api.electron.setWidescreenPanelId(_loc78_);
               }
               else
               {
                  this.showMessage(undefined,"Does not work on a Flash Projector","DEBUG_ERROR");
               }
               break;
            case "FILEOUTPUT":
               if(this.api.electron.enabled)
               {
                  var _loc79_ = Number(_loc3_[0]);
                  if(_loc3_[0] == undefined || (_global.isNaN(_loc79_) || (_loc79_ < 0 || _loc79_ > 2)))
                  {
                     this.showMessage(undefined,"/fileoutput &lt;0 (disabled) | 1 (enabled) | 2 (full)&gt;","DEBUG_LOG");
                     return undefined;
                  }
                  var _loc80_ = "";
                  switch(_loc79_)
                  {
                     case 0:
                        _loc80_ = "Disabled";
                        break;
                     case 1:
                        _loc80_ = "Enabled";
                        break;
                     case 2:
                        _loc80_ = "Enabled (full)";
                  }
                  dofus.graphics.gapi.ui.Debug.FILE_OUTPUT_STATE = _loc79_;
                  this.showMessage(undefined,"File Output (Console) : " + _loc80_,"DEBUG_LOG");
               }
               else
               {
                  this.showMessage(undefined,"Does not work on a Flash Projector","DEBUG_ERROR");
               }
               break;
            case "LOGDISCO":
               if(_loc3_[0] == "1")
               {
                  this.api.datacenter.Game["\x18\x0e\x19"] = true;
               }
               else if(_loc3_[0] == "0")
               {
                  this.api.datacenter.Game["\x18\x0e\x19"] = false;
               }
               else
               {
                  this.api.datacenter.Game["\x18\x0e\x19"] = !this.api.datacenter.Game["\x18\x0e\x19"];
               }
               this.showMessage(undefined,"LOG DISCONNECTIONS ON MAP : " + this.api.datacenter.Game["\x18\x0e\x19"],"DEBUG_LOG");
               break;
            case "FORCEFLASHCHAT":
               if(_loc3_[0] == "1")
               {
                  this.api.datacenter.Basics.forceFlashChat = true;
               }
               else if(_loc3_[0] == "0")
               {
                  this.api.datacenter.Basics.forceFlashChat = false;
               }
               else
               {
                  this.api.datacenter.Basics.forceFlashChat = !this.api.datacenter.Basics.forceFlashChat;
               }
               this.showMessage(undefined,"FORCE FLASH CHAT : " + this.api.datacenter.Basics.forceFlashChat,"DEBUG_LOG");
               var _loc81_ = dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"));
               if(_loc81_ != undefined)
               {
                  var _loc82_ = this.api.datacenter.Basics.forceFlashChat || (!this.api.kernel.OptionsManager.getOption("EnableWidescreenPanels") || !this.api.electron.isShowingWidescreenPanel);
                  _loc81_.configureUseFlashChat(_loc82_);
               }
               break;
            case "PING":
               this.api.network.ping();
               break;
            case "MAPID":
               this.showMessage(undefined,"carte : " + this.api.datacenter.["\x18\x18\x0e"].id,"DEBUG_LOG");
               this.showMessage(undefined,"Area : " + this.api.datacenter.["\x18\x18\x0e"].area,"DEBUG_LOG");
               this.showMessage(undefined,"Sub area : " + this.api.datacenter.["\x18\x18\x0e"]["\x1b\x0b\x17"],"DEBUG_LOG");
               this.showMessage(undefined,"Super Area : " + this.api.datacenter.["\x18\x18\x0e"].superarea,"DEBUG_LOG");
               break;
            case "CELLID":
               this.showMessage(undefined,"cellule : " + this.api.datacenter.Player.data.cellNum,"DEBUG_LOG");
               break;
            case "TIME":
               this.showMessage(undefined,"Heure : " + this.api.kernel["\x19\b\x11"].time,"DEBUG_LOG");
               break;
            case "CACHE":
               this.api.kernel["\x16\x05\x19"]();
               break;
            case "REBOOT":
               this.api.kernel.reboot();
               break;
            case "FPS":
               this.api.ui.getUIComponent("Debug")["\x1a\x1d\x11"]();
               break;
            case "CONSOLECLOSE":
               this.api.ui.getUIComponent("Debug")["\x16\x15\n"]();
               break;
            case "UI":
               this.api.ui.loadUIComponent(_loc3_[0],_loc3_[0]);
               break;
            case "DEBUG":
               dofus.Constants.DEBUG = !dofus.Constants.DEBUG;
               this.showMessage(undefined,"DEBUG : " + dofus.Constants.DEBUG,"DEBUG_LOG");
               break;
            case "ASKOK":
               this.api.ui.loadUIComponent("AskOk","AskOkContent",{title:"AskOKDebug",text:this.api.lang.getText(_loc3_[0],_loc3_.splice(1))});
               break;
            case "ASKOK2":
               var _loc83_ = "";
               var _loc84_ = 0;
               while(_loc84_ < _loc3_.length)
               {
                  if(_loc84_ > 0)
                  {
                     _loc83_ += " ";
                  }
                  _loc83_ += _loc3_[_loc84_];
                  _loc84_ = _loc84_ + 1;
               }
               this.api.ui.loadUIComponent("AskOk","AskOkContent",{title:"AskOKDebug",text:_loc83_});
               break;
            case "MOVIECLIP":
               this.api.kernel["\x17\x11\x0b"]();
               break;
            case "TOGGLESPRITES":
               this.api.datacenter.Basics.gfx_isSpritesHidden = !this.api.datacenter.Basics.gfx_isSpritesHidden;
               if(this.api.datacenter.Basics.gfx_isSpritesHidden)
               {
                  this.api.gfx.spriteHandler["\x18\x19\t"]();
               }
               else
               {
                  this.api.gfx.spriteHandler["\x1b\x13\x15"]();
               }
               break;
            case "DRAWZONE":
               var _loc85_ = Number(_loc3_[0]);
               var _loc86_ = Number(_loc3_[1]);
               var _loc87_ = _loc3_[2];
               var _loc88_ = _loc3_[3] == undefined ? undefined : Number(_loc3_[3]);
               if(_global.isNaN(_loc85_) || (_loc85_ == undefined || (_global.isNaN(_loc86_) || (_loc86_ == undefined || (_loc87_ == undefined || _loc87_.length == 0)))))
               {
                  this.showMessage(undefined,"Usage : /drawzone [num cell] [radius] [layer]","DEBUG_LOG");
                  return undefined;
               }
               this.api.gfx["\x17\n\x10"](_loc85_,0,_loc86_,_loc87_,dofus.Constants.ZONE_COLOR[_loc87_],_loc88_);
               break;
            case "CLEARZONE":
               var _loc89_ = Number(_loc3_[0]);
               var _loc90_ = Number(_loc3_[1]);
               var _loc91_ = _loc3_[2];
               if(_global.isNaN(_loc89_) || (_loc89_ == undefined || (_global.isNaN(_loc90_) || (_loc90_ == undefined || (_loc91_ == undefined || _loc91_.length == 0)))))
               {
                  this.showMessage(undefined,"Usage : /clearzone [num cell] [radius] [layer]","DEBUG_LOG");
                  return undefined;
               }
               this.api.gfx["\x16\x1c\x12"](_loc89_,_loc90_,_loc91_);
               break;
            case "CLEANCELLS":
               this.api.gfx["\x18\x18\x15"]["\x1a\r\x1b"]();
               break;
            case "SEQACTIONS":
               var _loc92_ = this.api.datacenter.Sprites.getItems();
               for(var k in _loc92_)
               {
                  var _loc93_ = k;
                  var _loc94_ = _loc92_[_loc93_];
                  var _loc95_ = _loc94_.sequencer;
                  this.showMessage(undefined,"    Print Sequencer Actions List for " + _loc93_ + ", " + _loc94_.name,"DEBUG_LOG");
                  _loc95_["\x1a\x07\x02"]();
               }
               break;
            case "LOS":
               var _loc96_ = Number(_loc3_[0]);
               var _loc97_ = Number(_loc3_[1]);
               if(_global.isNaN(_loc96_) || (_loc96_ == undefined || (_global.isNaN(_loc97_) || _loc97_ == undefined)))
               {
                  this.showMessage(undefined,"Unable to resolve case ID","DEBUG_LOG");
                  return undefined;
               }
               this.showMessage(undefined,"Line of sight between " + _loc96_ + " and " + _loc97_ + " -> " + ank.battlefieldutils.["\x1a\x04\b"]["\x16\x1a\x1d"](this.api.gfx["\x18\x18\x15"],_loc96_,_loc97_),"DEBUG_LOG");
               break;
            case "CLEARCELL":
               var _loc98_ = Number(_loc3_[0]);
               if(_global.isNaN(_loc98_) || _loc98_ == undefined)
               {
                  this.showMessage(undefined,"I\'ll need an ID!","DEBUG_LOG");
                  return undefined;
               }
               this.api.gfx["\x18\x18\x15"]["\x17\x14\x1d"](_loc98_)["\x1a\x0b\x18"]();
               this.showMessage(undefined,"Cell " + _loc98_ + " cleaned.","DEBUG_LOG");
               break;
            case "CELLINFO":
               var _loc99_ = Number(_loc3_[0]);
               if(_global.isNaN(_loc99_) || _loc99_ == undefined)
               {
                  this.showMessage(undefined,"I\'ll need an ID!","DEBUG_LOG");
                  return undefined;
               }
               var _loc100_ = this.api.gfx["\x18\x18\x15"]["\x17\x14\x1d"](_loc99_);
               this.showMessage(undefined,"Datas about cell " + _loc99_ + ":","DEBUG_LOG");
               for(var k in _loc100_)
               {
                  this.showMessage(undefined,"    " + k + " -> " + _loc100_[k],"DEBUG_LOG");
                  if(_loc100_[k] instanceof Object)
                  {
                     for(var l in _loc100_[k])
                     {
                        this.showMessage(undefined,"        " + l + " -> " + _loc100_[k][l],"DEBUG_LOG");
                     }
                  }
               }
               break;
            case "SOMAPLAY":
               var _loc101_ = _loc3_.join(" ");
               this.api.kernel.AudioManager.playSound(_loc101_);
               break;
            case "SKIPFIGHTANIMATIONS":
               if(!dofus.Constants.ALPHA)
               {
                  if(!this.api.datacenter.Player.isAuthorized)
                  {
                     this.showMessage(undefined,"(°~°)","ERROR_BOX");
                  }
                  return undefined;
               }
               if(_loc3_[0] == "1")
               {
                  this.api.datacenter.Player.isSkippingFightAnimations = true;
               }
               else if(_loc3_[0] == "0")
               {
                  this.api.datacenter.Player.isSkippingFightAnimations = false;
               }
               else
               {
                  this.api.datacenter.Player.isSkippingFightAnimations = !this.api.datacenter.Player.isSkippingFightAnimations;
               }
               this.showMessage(undefined,"SKIP FIGHT ANIMATIONS : " + this.api.datacenter.Player.isSkippingFightAnimations,"DEBUG_LOG");
               break;
            case "SKIPLOOTPANEL":
               if(!dofus.Constants.ALPHA)
               {
                  if(!this.api.datacenter.Player.isAuthorized)
                  {
                     this.showMessage(undefined,"(°~°)","ERROR_BOX");
                  }
                  return undefined;
               }
               if(_loc3_[0] == "1")
               {
                  this.api.datacenter.Player.isSkippingLootPanel = true;
               }
               else if(_loc3_[0] == "0")
               {
                  this.api.datacenter.Player.isSkippingLootPanel = false;
               }
               else
               {
                  this.api.datacenter.Player.isSkippingLootPanel = !this.api.datacenter.Player.isSkippingLootPanel;
               }
               this.showMessage(undefined,"SKIP LOOT PANEL : " + this.api.datacenter.Player.isSkippingLootPanel,"DEBUG_LOG");
               break;
            case "SHOWCELLIDS":
               if(_loc3_[0] == "1")
               {
                  this.api.gfx.showCellIds();
               }
               else if(_loc3_[0] == "0")
               {
                  this.api.gfx.hideCellIds();
               }
               else
               {
                  !this.api.gfx.showingCellIds ? this.api.gfx.showCellIds() : this.api.gfx.hideCellIds();
               }
               if(this.api.gfx.showingCellIds && this.api.kernel.OptionsManager.getOption("Grid") == false)
               {
                  this.api.kernel.OptionsManager.setOption("Grid",true);
               }
               break;
            default:
               this.showMessage(undefined,this.api.lang.getText("UNKNOW_COMMAND",[_loc4_]),"DEBUG_ERROR");
         }
      }
      else if(this.api.datacenter.Basics.isLogged)
      {
         _loc2_ = this.analyseCmd(_loc2_);
         this.api.network.Basics.autorisedCommand(_loc2_);
      }
      else
      {
         this.showMessage(undefined,this.api.lang.getText("UNKNOW_COMMAND",[_loc2_]),"DEBUG_ERROR");
      }
   }
   function analyseCmd(§\x1a\x10\x19§)
   {
      var _loc3_ = _loc2_.split(" ");
      var _loc4_ = _loc3_.length <= 0 ? "" : String(_loc3_[0]).toLowerCase();
      var _loc0_ = null;
      if((_loc0_ = _loc4_) === "hash")
      {
         if(_loc3_.length > 1 && (_loc3_.length < 3 && String(_loc3_[1]).toUpperCase() == "ADD"))
         {
            _loc2_ = "";
            this.api.electron.getHash();
         }
      }
      return _loc2_;
   }
   function §\x1a\x1e\x0b§(§\x1b\n\x18§, §\x1b\x03\x1c§, sType)
   {
      var _loc5_ = dofus.graphics.gapi.ui.Debug.FILE_OUTPUT_STATE;
      if(this.api.electron.enabled)
      {
         var _loc6_ = new ank.utils.ExtendedString(_loc3_).externalInterfaceEscape();
         this.api.electron.consolePrint(_loc6_,_loc4_,undefined,true);
         if(_loc5_ != 0)
         {
            this.api.electron.consoleLog(_loc4_,_loc6_,true);
            if(_loc5_ == 2)
            {
               return undefined;
            }
         }
      }
      if(!this.api.electron.isShowingWidescreenPanel || this.api.electron.getWidescreenPanelId() != dofus.Eelectron.WIDESCREEN_PANEL_CONSOLE)
      {
         this.api.kernel.showMessage(_loc2_,_loc3_,_loc4_);
      }
   }
}
