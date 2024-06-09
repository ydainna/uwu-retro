class dofus.utils.consoleParsers.ChatConsoleParser extends dofus.utils.consoleParsers.§\x15\x1b\x0b§
{
   function ChatConsoleParser(oAPI)
   {
      super();
      this.initialize(oAPI);
   }
   function initialize(oAPI)
   {
      super.initialize(oAPI);
      this["\x1c\x01\x14"] = new Array();
      this["\x1e\x01\x0b"] = 0;
   }
   function process(sCmd, oParams)
   {
      if(!this.api.datacenter.Basics.inGame)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("SRV_MSG_7"),"ERROR_CHAT");
         return undefined;
      }
      super.process(_loc3_,_loc4_);
      _loc3_ = this["\x1a\x04\x01"](_loc3_);
      if(_loc3_.charAt(0) == "/")
      {
         var _loc5_ = _loc3_.split(" ");
         var _loc6_ = _loc5_[0].substr(1).toUpperCase();
         var _loc7_ = "/" + _loc6_.toLowerCase();
         _loc5_.splice(0,1);
         while(_loc5_[0].length == 0)
         {
            _loc5_.splice(0,1);
         }
         switch(_loc6_)
         {
            case "HELP":
            case "H":
            case "?":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("COMMANDS_HELP"),"COMMANDS_CHAT");
               break;
            case "ROLL":
               var _loc8_ = this.api.lang.getText("CHAT_COMMAND_INVALID",[_loc7_]);
               var _loc9_ = 1;
               while(_loc9_ <= 3)
               {
                  _loc8_ += "\n- " + this.api.lang.getText("DICE_HELP_" + _loc9_,[_loc7_]);
                  _loc9_ = _loc9_ + 1;
               }
               if(_loc5_.length < 1)
               {
                  this.api.kernel.showMessage(undefined,_loc8_,"COMMANDS_CHAT");
                  break;
               }
               var _loc10_ = _loc5_[0];
               if(_loc10_.length < 1)
               {
                  this.api.kernel.showMessage(undefined,_loc8_,"COMMANDS_CHAT");
                  break;
               }
               var _loc11_ = false;
               if(_loc10_.charAt(0).toLowerCase() == "g")
               {
                  _loc11_ = true;
                  _loc10_ = _loc10_.substring(1);
               }
               if(_loc10_.indexOf("d") > -1)
               {
                  var _loc14_ = _loc10_.split("d");
                  var _loc12_ = Number(_loc14_[0]);
                  var _loc13_ = Number(_loc14_[1]);
               }
               else
               {
                  _loc12_ = 1;
                  _loc13_ = Number(_loc10_);
               }
               if(_global.isNaN(_loc12_))
               {
                  this.api.kernel.showMessage(undefined,_loc8_,"COMMANDS_CHAT");
                  break;
               }
               if(_global.isNaN(_loc13_))
               {
                  this.api.kernel.showMessage(undefined,_loc8_,"COMMANDS_CHAT");
                  break;
               }
               this.api.network.Evenemential.sendRollDice(_loc12_,_loc13_,!_loc11_ ? "*" : "%");
               break;
            case "VERSION":
            case "VER":
            case "ABOUT":
               var _loc15_ = "--------------------------------------------------------------\n";
               _loc15_ += "<b>DOFUS RETRO Client v" + dofus.Constants.VERSION + "." + dofus.Constants.SUBVERSION + "." + dofus.Constants.SUBSUBVERSION + "</b>";
               if(dofus.Constants.BETAVERSION > 0)
               {
                  _loc15_ += " <b><font color=\"#FF0000\">BETA VERSION " + dofus.Constants.BETAVERSION + "</font></b>";
               }
               _loc15_ += "\n(c) ANKAMA GAMES (" + dofus.Constants.VERSIONDATE + ")\n";
               _loc15_ += "Flash player " + System.capabilities.version + "\n";
               _loc15_ += "--------------------------------------------------------------";
               this.api.kernel.showMessage(undefined,_loc15_,"COMMANDS_CHAT");
               break;
            case "S":
               this.api.network.Chat.send(_loc5_.join(" "),"*",_loc4_);
               break;
            case "T":
               this.api.network.Chat.send(_loc5_.join(" "),"#",_loc4_);
               break;
            case "G":
               if(this.api.datacenter.Player.guildInfos != undefined)
               {
                  this.api.network.Chat.send(_loc5_.join(" "),"%",_loc4_);
               }
               break;
            case "P":
               if(this.api.ui.getUIComponent("Party") != undefined)
               {
                  this.api.network.Chat.send(_loc5_.join(" "),"$",_loc4_);
               }
               break;
            case "A":
               this.api.network.Chat.send(_loc5_.join(" "),"!",_loc4_);
               break;
            case "R":
               this.api.network.Chat.send(_loc5_.join(" "),"?",_loc4_);
               break;
            case "B":
               this.api.network.Chat.send(_loc5_.join(" "),":",_loc4_);
               break;
            case "I":
               this.api.network.Chat.send(_loc5_.join(" "),"^",_loc4_);
               break;
            case "Q":
               this.api.network.Chat.send(_loc5_.join(" "),"@",_loc4_);
               break;
            case "M":
               this.api.network.Chat.send(_loc5_.join(" "),"¤",_loc4_);
               break;
            case "W":
            case "MSG":
            case "WHISPER":
               if(_loc5_.length < 2)
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("SYNTAX_ERROR",[" /w &lt;" + this.api.lang.getText("NAME") + "&gt; &lt;" + this.api.lang.getText("MSG") + "&gt;"]),"ERROR_CHAT");
                  break;
               }
               var _loc16_ = _loc5_[0];
               if(_loc16_.length < 2)
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("SYNTAX_ERROR",[" /w &lt;" + this.api.lang.getText("NAME") + "&gt; &lt;" + this.api.lang.getText("MSG") + "&gt;"]),"ERROR_CHAT");
                  break;
               }
               _loc5_.shift();
               var _loc17_ = _loc5_.join(" ");
               this.pushWhisper("/w " + _loc16_ + " ");
               this.api.network.Chat.send(_loc17_,_loc16_,_loc4_);
               break;
            case "WHOAMI":
               this.api.network.Basics["\x1b\x19\b"]();
               break;
            case "WHOIS":
               if(_loc5_.length == 0)
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("SYNTAX_ERROR",[" /whois &lt;" + this.api.lang.getText("NAME") + "&gt;"]),"ERROR_CHAT");
                  break;
               }
               this.api.network.Basics["\x1b\x19\t"](_loc5_[0]);
               break;
            case "F":
            case "FRIEND":
            case "FRIENDS":
               switch(_loc5_[0].toUpperCase())
               {
                  case "A":
                  case "+":
                     this.api.network.Friends["\x15\x1d\x10"](_loc5_[1]);
                     break;
                  case "D":
                  case "R":
                  case "-":
                     this.api.network.Friends["\x1a\f\x05"](_loc5_[1]);
                     break;
                  case "L":
                     this.api.network.Friends["\x17\x18\x04"]();
                     break;
                  default:
                     this.api.kernel.showMessage(undefined,this.api.lang.getText("SYNTAX_ERROR",[" /f &lt;A/D/L&gt; &lt;" + this.api.lang.getText("NAME") + "&gt;"]),"ERROR_CHAT");
               }
               break;
            case "IGNORE":
            case "ENEMY":
               switch(_loc5_[0].toUpperCase())
               {
                  case "A":
                  case "+":
                     this.api.network.Enemies["\x15\x1d\n"](_loc5_[1]);
                     break;
                  case "D":
                  case "R":
                  case "-":
                     this.api.network.Enemies["\x1a\f\x02"](_loc5_[1]);
                     break;
                  case "L":
                     this.api.network.Enemies["\x17\x17\x0e"]();
                     break;
                  default:
                     this.api.kernel.showMessage(undefined,this.api.lang.getText("SYNTAX_ERROR",[" /f &lt;A/D/L&gt; &lt;" + this.api.lang.getText("NAME") + "&gt;"]),"ERROR_CHAT");
               }
               break;
            case "PING":
               this.api.network.ping();
               break;
            case "GOD":
            case "GODMODE":
               var _loc20_ = Math.random();
               var _loc21_ = new Array();
               var _loc22_ = "Retro Legacy";
               var _loc23_ = "Hall des Valeureux du Dieu Iop";
               var _loc24_ = "Retro 1.30+";
               var _loc25_ = ["Bill","Tyn","Nyx","Lichen","Simsoft"];
               var _loc26_ = ["Sastip","Papinaut","Iotam"];
               var _loc27_ = ["Kam","ToT","LeLag","Sannho","Treuff","Artand","Ekyn","Bonzho","Simeth","Asthenis","Oopah","Seydlex","Eknelis"];
               var _loc28_ = 0;
               while(_loc28_ < _loc25_.length)
               {
                  _loc21_.push({pseudo:_loc25_[_loc28_],godtype:_loc22_});
                  _loc28_ = _loc28_ + 1;
               }
               var _loc29_ = 0;
               while(_loc29_ < _loc26_.length)
               {
                  _loc21_.push({pseudo:_loc26_[_loc29_],godtype:_loc23_});
                  _loc29_ = _loc29_ + 1;
               }
               var _loc30_ = 0;
               while(_loc30_ < _loc27_.length)
               {
                  _loc21_.push({pseudo:_loc27_[_loc30_],godtype:_loc24_});
                  _loc30_ = _loc30_ + 1;
               }
               _loc21_.push({pseudo:"Sispano",godtype:"Retro 1.30+, Ecaflip Lover"});
               _loc21_.push({pseudo:"DUSK",godtype:"Retro & Retro Remastered 1.30+, Swiss Made"});
               _loc21_.push({pseudo:"Lakha",godtype:"Retro 1.30+, Détentrice du cahier de l\'annulation suprême"});
               _loc21_.push({pseudo:"Logan",godtype:"Retro 1.30+, Ch\'pécialiste de la divulgach\'"});
               var _loc31_ = _loc21_[Math.floor(Math.random() * _loc21_.length)];
               this.api.kernel.showMessage(undefined,"God : <u>" + _loc31_.pseudo + "</u> (<b>" + _loc31_.godtype + "</b>)","COMMANDS_CHAT");
               break;
            case "APING":
               this.api.kernel.showMessage(undefined,"Average ping : " + this.api.network.getAveragePing() + "ms (on " + this.api.network.getAveragePingPacketsCount() + " packets)","COMMANDS_CHAT");
               break;
            case "MAPID":
               this.api.kernel.showMessage(undefined,"MAP ID : " + this.api.datacenter.["\x18\x18\x0e"].id,"COMMANDS_CHAT");
               if(this.api.datacenter.Player.isAuthorized)
               {
                  this.api.kernel.showMessage(undefined,"Area : " + this.api.datacenter.["\x18\x18\x0e"].area,"COMMANDS_CHAT");
                  this.api.kernel.showMessage(undefined,"Sub area : " + this.api.datacenter.["\x18\x18\x0e"]["\x1b\x0b\x17"],"COMMANDS_CHAT");
                  this.api.kernel.showMessage(undefined,"Super Area : " + this.api.datacenter.["\x18\x18\x0e"].superarea,"COMMANDS_CHAT");
               }
               break;
            case "CELLID":
               this.api.kernel.showMessage(undefined,"CELL ID : " + this.api.datacenter.Player.data.cellNum,"COMMANDS_CHAT");
               break;
            case "TIME":
               this.api.kernel.showMessage(undefined,this.api.kernel.NightManager.date + " - " + this.api.kernel.NightManager.time,"COMMANDS_CHAT");
               break;
            case "LIST":
            case "PLAYERS":
               if(!this.api.datacenter.Game.isFight)
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_DO_COMMAND_HERE",[_loc6_]),"ERROR_CHAT");
                  return undefined;
               }
               var _loc32_ = new Array();
               var _loc33_ = this.api.datacenter.Sprites.getItems();
               for(var k in _loc33_)
               {
                  if(_loc33_[k] instanceof dofus.datacenter.["\x16\x19\x02"])
                  {
                     _loc32_.push("- " + _loc33_[k].name);
                  }
               }
               this.api.kernel.showMessage(undefined,this.api.lang.getText("PLAYERS_LIST") + " :\n" + _loc32_.join("\n"),"COMMANDS_CHAT");
               break;
            case "KICK":
               if(!this.api.datacenter.Game.isFight || this.api.datacenter.Game.isRunning)
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_DO_COMMAND_HERE",[_loc6_]),"ERROR_CHAT");
                  return undefined;
               }
               var _loc34_ = String(_loc5_[0]);
               var _loc35_ = this.api.datacenter.Sprites.getItems();
               for(var k in _loc35_)
               {
                  if(_loc35_[k] instanceof dofus.datacenter.["\x16\x19\x02"] && _loc35_[k].name == _loc34_)
                  {
                     var _loc36_ = _loc35_[k].id;
                     break;
                  }
               }
               if(_loc36_ != undefined)
               {
                  this.api.network.Game["\x18\x13\x1d"](_loc36_);
               }
               else
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_KICK_A",[_loc34_]),"ERROR_CHAT");
               }
               break;
            case "SPECTATOR":
            case "SPEC":
               if(!this.api.datacenter.Game.isRunning || this.api.datacenter.Game["\x18\x0f\x1b"])
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_DO_COMMAND_HERE",[_loc6_]),"ERROR_CHAT");
                  return undefined;
               }
               this.api.network.Fights["\x16\x0e\x10"]();
               break;
            case "AWAY":
               this.api.network.Basics["\x16\b\x06"]();
               break;
            case "INVISIBLE":
               this.api.network.Basics["\x18\f\x0e"]();
               break;
            case "INVITE":
               var _loc37_ = String(_loc5_[0]);
               if(_loc37_.length == 0 || _loc37_ == undefined)
               {
                  break;
               }
               this.api.network.Party["\x18\f\x0f"](_loc37_);
               break;
            case "CONSOLE":
               if(this.api.datacenter.Player.isAuthorized)
               {
                  this.api.ui.loadUIComponent("Debug","Debug",undefined,{bAlwaysOnTop:true});
               }
               else
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("UNKNOW_COMMAND",[_loc6_]),"ERROR_CHAT");
               }
               break;
            case "DEBUG":
               if(this.api.datacenter.Player.isAuthorized)
               {
                  this.api.kernel.DebugManager["\x1b\x10\x19"]();
               }
               break;
            case "CHANGECHARACTER":
               this.api.kernel.changeServer();
               break;
            case "LOGOUT":
               this.api.kernel.disconnect();
               break;
            case "QUIT":
               this.api.kernel.quit();
               break;
            case "THINK":
            case "METHINK":
            case "PENSE":
            case "TH":
               if(_loc5_.length < 1)
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("SYNTAX_ERROR",[" /" + _loc6_.toLowerCase() + " &lt;" + this.api.lang.getText("TEXT_WORD") + "&gt;"]),"ERROR_CHAT");
                  break;
               }
               var _loc38_ = "!THINK!" + _loc5_.join(" ");
               if(this.api.datacenter.Player.canChatToAll)
               {
                  this.api.network.Chat.send(_loc38_,"*",_loc4_);
               }
               break;
            case "ME":
            case "EM":
            case "MOI":
            case "EMOTE":
               if(!this.api.lang.getConfigText("EMOTES_ENABLED"))
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("UNKNOW_COMMAND",[_loc6_]),"ERROR_CHAT");
                  break;
               }
               if(_loc5_.length < 1)
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("SYNTAX_ERROR",[" /" + _loc6_.toLowerCase() + " &lt;" + this.api.lang.getText("TEXT_WORD") + "&gt;"]),"ERROR_CHAT");
                  break;
               }
               var _loc39_ = _loc5_.join(" ");
               if(this.api.datacenter.Player.canChatToAll)
               {
                  this.api.network.Chat.send(dofus.Constants["\x17\f\x1b"] + _loc39_ + dofus.Constants["\x17\f\x1b"],"*",_loc4_);
               }
               break;
            case "KB":
               this.api.ui.loadUIComponent("KnownledgeBase","KnownledgeBase");
               break;
            case "RELEASE":
               if(this.api.datacenter.Player.data["\x18\x10\x05"])
               {
                  this.api.network.Game.freeMySoul();
               }
               else if(this.api.datacenter.Player.data["\x18\x0f\x19"])
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("ERROR_ALREADY_A_GHOST"),"ERROR_CHAT");
               }
               else
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("ERROR_NOT_DEAD_AT_LEAST_FOR_NOW"),"ERROR_CHAT");
               }
               break;
            case "SELECTION":
               if(_loc5_[0] == "enable" || _loc5_[0] == "on")
               {
                  dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"))["\x1a\x19\x14"](true);
               }
               else if(_loc5_[0] == "disable" || _loc5_[0] == "off")
               {
                  dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"))["\x1a\x19\x14"](false);
               }
               else
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("SYNTAX_ERROR",["/selection [enable|on|disable|off]"]),"ERROR_CHAT");
               }
               break;
            case "AUTOSCROLL":
               if(_loc5_[0] == "enable" || _loc5_[0] == "on")
               {
                  this.api.kernel.showMessage(undefined,"Autoscroll du chat réactivé","INFO_CHAT");
                  dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner")).setChatAutoScroll(true);
               }
               else if(_loc5_[0] == "disable" || _loc5_[0] == "off")
               {
                  this.api.kernel.showMessage(undefined,"Autoscroll du chat désactivé","INFO_CHAT");
                  dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner")).setChatAutoScroll(false);
               }
               else
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("SYNTAX_ERROR",["/autoscroll [enable|on|disable|off]"]),"ERROR_CHAT");
               }
               break;
            case "WTF":
            case "DOFUS2":
               this.api.kernel.showMessage(undefined,"(°~°)","ERROR_BOX");
               break;
            case "TACTIC":
               if(this.api.datacenter.Player.isAuthorized || this.api.datacenter.Game.isFight)
               {
                  var _loc40_ = !this.api.datacenter.Game["\x18\x10\x02"];
                  this.api.datacenter.Game["\x18\x10\x02"] = _loc40_;
                  this.api.gfx["\x15\x1c\x19"](this.api,_loc40_);
                  this.api.ui.getUIComponent("FightOptionButtons")["\x1c\x0b\x07"].selected = _loc40_;
               }
               break;
            case "RETROCHAT":
            case "CHATOUTPUT":
               if(!this.api.electron.enabled)
               {
                  this.api.kernel.showMessage(undefined,"Does not work on a Flash Projector","ERROR_CHAT");
                  break;
               }
               dofus.Eelectron.retroChatOpen();
               break;
            case "FILEOUTPUT":
               if(this.api.electron.enabled)
               {
                  var _loc41_ = Number(_loc5_[0]);
                  if(_loc5_[0] == undefined || (_global.isNaN(_loc41_) || (_loc41_ < 0 || _loc41_ > 2)))
                  {
                     this.api.kernel.showMessage(undefined,"/fileoutput &lt;0 (disabled) | 1 (enabled) | 2 (full)&gt;","ERROR_CHAT");
                     return undefined;
                  }
                  var _loc42_ = "";
                  switch(_loc41_)
                  {
                     case 0:
                        _loc42_ = "Disabled";
                        break;
                     case 1:
                        _loc42_ = "Enabled";
                        break;
                     case 2:
                        _loc42_ = "Enabled (full)";
                  }
                  this.api.kernel.ChatManager["\x17\x10\r"] = _loc41_;
                  this.api.kernel.showMessage(undefined,"File Output (Chat) : " + _loc42_,"COMMANDS_CHAT");
               }
               else
               {
                  this.api.kernel.showMessage(undefined,"Does not work on a Flash Projector","COMMANDS_CHAT");
               }
               break;
            case "CLS":
            case "CLEAR":
               this.api.electron.retroChatClear();
               this.api.kernel.ChatManager.clear();
               this.api.kernel.ChatManager.aks_a_logs(true);
               break;
            case "SPEAKINGITEM":
               if(this.api.datacenter.Player.isAuthorized)
               {
                  this.api.kernel.showMessage(undefined,"Count : " + this.api.kernel.SpeakingItemsManager["\x19\x07\f"],"ERROR_CHAT");
                  break;
               }
            default:
               var _loc43_ = this.api.lang["\x17\x17\n"](_loc6_.toLowerCase());
               if(_loc43_ != undefined)
               {
                  this.api.network.Emotes["\x1b\x16\x15"](_loc43_);
               }
               else
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("UNKNOW_COMMAND",[_loc6_]),"ERROR_CHAT");
               }
         }
      }
      else if(this.api.datacenter.Player.canChatToAll)
      {
         this.api.network.Chat.send(_loc3_,"*",_loc4_);
      }
   }
   function §\x1a\b\x07§(sCmd)
   {
      var _loc3_ = this["\x1c\x01\x14"].slice(-1);
      if(_loc3_[0] != _loc2_)
      {
         var _loc4_ = this["\x1c\x01\x14"].push(_loc2_);
         if(_loc4_ > 50)
         {
            this["\x1c\x01\x14"].shift();
         }
      }
      this["\x18\n\x02"]();
   }
   function §\x18\x02\f§()
   {
      if(this["\x1e\x01\x0b"] > 0)
      {
         this["\x1e\x01\x0b"]--;
      }
      var _loc2_ = this["\x1c\x01\x14"][this["\x1e\x01\x0b"]];
      _loc2_ = _loc2_ == undefined ? "" : _loc2_;
      return _loc2_;
   }
   function §\x18\x02\x0b§()
   {
      if(this["\x1e\x01\x0b"] < this["\x1c\x01\x14"].length)
      {
         this["\x1e\x01\x0b"]++;
      }
      var _loc2_ = this["\x1c\x01\x14"][this["\x1e\x01\x0b"]];
      _loc2_ = _loc2_ == undefined ? "" : _loc2_;
      return _loc2_;
   }
   function getCurrentPercent()
   {
      var _loc2_ = Math.floor((this.api.datacenter.Player.XP - this.api.datacenter.Player.XPlow) / (this.api.datacenter.Player.XPhigh - this.api.datacenter.Player.XPlow) * 100) + "%";
      return _loc2_;
   }
   function §\x18\n\x02§()
   {
      super["\x18\n\x02"]();
      this["\x1e\x01\x0b"] = this["\x1c\x01\x14"].length;
   }
   function §\x1a\x04\x01§(s)
   {
      ank.utils.Extensions.addExtensions();
      var _loc3_ = this.api.lang.getText("INLINE_VARIABLE_POSITION").split(",");
      _loc2_ = new ank.utils.ExtendedString(_loc2_).replace(_loc3_,"[" + this.api.datacenter.["\x18\x18\x0e"].x + ", " + this.api.datacenter.["\x18\x18\x0e"].y + "]");
      var _loc4_ = this.api.lang.getText("INLINE_VARIABLE_AREA").split(",");
      _loc2_ = new ank.utils.ExtendedString(_loc2_).replace(_loc4_,this.api.lang["\x17\x1b\x06"](this.api.datacenter.["\x18\x18\x0e"].area).n);
      var _loc5_ = this.api.lang.getText("INLINE_VARIABLE_SUBAREA").split(",");
      _loc2_ = new ank.utils.ExtendedString(_loc2_).replace(_loc5_,this.api.lang["\x17\x1b\x0f"](this.api.datacenter.["\x18\x18\x0e"]["\x1b\x0b\x17"]).n);
      var _loc6_ = this.api.lang.getText("INLINE_VARIABLE_MYSELF").split(",");
      _loc2_ = new ank.utils.ExtendedString(_loc2_).replace(_loc6_,this.api.datacenter.Player.Name);
      var _loc7_ = this.api.lang.getText("INLINE_VARIABLE_LEVEL").split(",");
      _loc2_ = new ank.utils.ExtendedString(_loc2_).replace(_loc7_,String(this.api.datacenter.Player.Level));
      var _loc8_ = this.api.lang.getText("INLINE_VARIABLE_GUILD").split(",");
      var _loc9_ = this.api.datacenter.Player.guildInfos.name;
      if(_loc9_ == undefined)
      {
         _loc9_ = this.api.lang.getText("INLINE_VARIABLE_GUILD_ERROR");
      }
      _loc2_ = new ank.utils.ExtendedString(_loc2_).replace(_loc8_,_loc9_);
      var _loc10_ = this.api.lang.getText("INLINE_VARIABLE_MAXLIFE").split(",");
      _loc2_ = new ank.utils.ExtendedString(_loc2_).replace(_loc10_,String(this.api.datacenter.Player.LPmax));
      var _loc11_ = this.api.lang.getText("INLINE_VARIABLE_LIFE").split(",");
      _loc2_ = new ank.utils.ExtendedString(_loc2_).replace(_loc11_,String(this.api.datacenter.Player.LP));
      var _loc12_ = this.api.lang.getText("INLINE_VARIABLE_LIFEPERCENT").split(",");
      _loc2_ = new ank.utils.ExtendedString(_loc2_).replace(_loc12_,String(Math.round(this.api.datacenter.Player.LP / this.api.datacenter.Player.LPmax * 100)));
      var _loc13_ = this.api.lang.getText("INLINE_VARIABLE_EXPERIENCE").split(",");
      _loc2_ = new ank.utils.ExtendedString(_loc2_).replace(_loc13_,this.getCurrentPercent());
      var _loc14_ = this.api.lang.getText("INLINE_VARIABLE_STATS").split(",");
      if(new ank.utils.ExtendedString(_loc2_).replace(_loc14_,"X").length != _loc2_.length)
      {
         var _loc15_ = this.api.lang.getText("INLINE_VARIABLE_STATS_RESULT",[String(this.api.datacenter.Player.Vitality) + (this.api.datacenter.Player.VitalityXtra == 0 ? "" : " (" + ((this.api.datacenter.Player.VitalityXtra <= 0 ? "" : "+") + String(this.api.datacenter.Player.VitalityXtra)) + ")"),String(this.api.datacenter.Player.Wisdom) + (this.api.datacenter.Player.WisdomXtra == 0 ? "" : " (" + ((this.api.datacenter.Player.WisdomXtra <= 0 ? "" : "+") + String(this.api.datacenter.Player.WisdomXtra)) + ")"),String(this.api.datacenter.Player.Force) + (this.api.datacenter.Player.ForceXtra == 0 ? "" : " (" + ((this.api.datacenter.Player.ForceXtra <= 0 ? "" : "+") + String(this.api.datacenter.Player.ForceXtra)) + ")"),String(this.api.datacenter.Player.Intelligence) + (this.api.datacenter.Player.IntelligenceXtra == 0 ? "" : " (" + ((this.api.datacenter.Player.IntelligenceXtra <= 0 ? "" : "+") + String(this.api.datacenter.Player.IntelligenceXtra)) + ")"),String(this.api.datacenter.Player.Chance) + (this.api.datacenter.Player.ChanceXtra == 0 ? "" : " (" + ((this.api.datacenter.Player.ChanceXtra <= 0 ? "" : "+") + String(this.api.datacenter.Player.ChanceXtra)) + ")"),String(this.api.datacenter.Player.Agility) + (this.api.datacenter.Player.AgilityXtra == 0 ? "" : " (" + ((this.api.datacenter.Player.AgilityXtra <= 0 ? "" : "+") + String(this.api.datacenter.Player.AgilityXtra)) + ")"),String(this.api.datacenter.Player.Initiative),String(this.api.datacenter.Player.AP),String(this.api.datacenter.Player.MP)]);
         _loc2_ = new ank.utils.ExtendedString(_loc2_).replace(_loc14_,_loc15_);
      }
      return _loc2_;
   }
}
