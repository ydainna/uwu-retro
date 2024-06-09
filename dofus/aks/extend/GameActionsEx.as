class dofus.aks.extend.GameActionsEx
{
   function GameActionsEx(oAPI, parent)
   {
      this.api = oAPI;
      this._parent = parent;
   }
   function onActionEx(sExtraData, §\x19\x03\x04§, sSenderID, §\x1a\x01\x1d§, §\x1b\x05\x03§, oContext)
   {
      var _loc8_ = true;
      switch(_loc3_)
      {
         case 1:
            var _loc9_ = this.api.datacenter.Sprites.getItemAt(sSenderID);
            if(!this.api.gfx["\x18\x0e\x1b"])
            {
               _loc8_ = false;
               break;
            }
            if(dofus.Constants.USE_JS_LOG && (_global.CONFIG.isNewAccount && !this.api.datacenter.Basics.first_movement))
            {
               getURL("JavaScript:WriteLog(\'Mouvement\')","_self");
               this.api.datacenter.Basics.first_movement = true;
            }
            if(sSenderID == this.api.datacenter.Player.ID && (this.api.datacenter.Game.isFight && this.api.datacenter.Game.isRunning))
            {
               _loc5_.addAction(35,false,this.api.gfx,this.api.gfx["\x1a\x17\x06"],[ank.battlefield.Constants["\x18\x0b\n"]]);
            }
            var _loc10_ = ank.battlefieldutils.Compressor["\x17\x0e\x15"](this.api.gfx["\x18\x18\x15"],_loc6_);
            if(_loc9_["\x18\x05\x05"]() && !_loc9_["\x1b\x13\x0b"])
            {
               _loc9_["\x1b\x13\x0b"] = true;
               _loc10_.shift();
               _loc5_.addAction(174,false,this.api.gfx,this.api.gfx["\x1b\x13\n"],[sSenderID,_loc10_[0],true,_loc5_]);
               _loc5_.addAction(36,false,this.api.gfx,this.api.gfx["\x15\x1e\x11"],[sSenderID,dofus.Constants["\x16\x1b\r"],dofus.Constants["\x1b\x0f\x03"][_loc9_["\x1b\x0e\x15"]]]);
            }
            var _loc11_ = _loc9_["\x17\x12\b"];
            var _loc12_ = _loc9_["\x17\x12\n"];
            var _loc13_ = !this.api.datacenter.Game.isFight ? (!(_loc9_ instanceof dofus.datacenter.["\x16\x19\x02"]) ? 6 : 3) : 3;
            if(this.api.datacenter.Game.isRunning)
            {
               _loc5_.addAction(37,false,this.api.gfx,this.api.gfx["\x1b\x13\x18"],[true]);
               _loc5_.addAction(175,false,this.api.gfx,this.api.gfx["\x19\x01\x0b"],[sSenderID,_loc10_,_loc5_,false,_loc11_,_loc12_,_loc13_]);
            }
            else
            {
               if(sSenderID == this.api.datacenter.Player.ID)
               {
                  if((this.api.datacenter.Game["\x19\x10\x05"] & dofus.datacenter..Game["\x1b\n\x05"]) == dofus.datacenter..Game["\x1b\n\x07"])
                  {
                     this.api.datacenter.Player["\x1d\x1a\t"]++;
                  }
                  this.api.datacenter.Game["\x19\x10\x05"] &= dofus.datacenter..Game["\x1b\n\x05"] ^ -1;
               }
               this.api.gfx["\x19\x01\x0b"](sSenderID,_loc10_,_loc5_,true,_loc11_,_loc12_,_loc13_);
            }
            break;
         case 2:
            if(_loc5_ == undefined)
            {
               this.api.gfx.clear();
               this.api.datacenter.["\x16\x1c\x04"]();
               if(!this.api.kernel.TutorialManager["\x18\x10\x07"])
               {
                  this.api.ui.loadUIComponent("CenterText","CenterTextMap",{text:this.api.lang.getText("LOADING_MAP"),timer:40000},{bForceLoad:true});
               }
            }
            else
            {
               _loc5_.addAction(38,false,this.api.gfx,this.api.gfx.clear);
               _loc5_.addAction(39,false,this.api.datacenter.,this.api.datacenter.["\x16\x1c\x04"]);
               if(_loc6_.length == 0)
               {
                  _loc5_.addAction(40,true,this.api.ui,this.api.ui.loadUIComponent,["CenterText","CenterTextMap",{text:this.api.lang.getText("LOADING_MAP"),timer:40000},{bForceLoad:true}]);
               }
               else
               {
                  _loc5_.addAction(41,true,this.api.ui,this.api.ui.loadUIComponent,["Cinematic","Cinematic",{file:dofus.Constants["\x16\x1b\f"] + _loc6_ + ".swf",sequencer:_loc5_,background:true,§\x16\b\x1a§:true,npc:true,frameToStart:1}]);
               }
            }
            break;
         case 4:
            var _loc14_ = _loc6_.split(",");
            var _loc15_ = _loc14_[0];
            var _loc16_ = Number(_loc14_[1]);
            var _loc17_ = this.api.datacenter.Sprites.getItemAt(_loc15_);
            var _loc18_ = _loc17_.mc;
            _loc5_.addAction(42,false,_loc18_,_loc18_["\x1a\x18\x18"],[_loc16_]);
            break;
         case 5:
            var _loc19_ = _loc6_.split(",");
            var _loc20_ = _loc19_[0];
            var _loc21_ = Number(_loc19_[1]);
            this.api.gfx["\x1b\x03\x02"](_loc20_,_loc21_,_loc5_);
            break;
         case 501:
            var _loc22_ = _loc6_.split(",");
            var _loc23_ = _loc22_[0];
            var _loc24_ = Number(_loc22_[1]);
            var _loc25_ = this.api.datacenter.Sprites.getItemAt(sSenderID);
            var _loc26_ = _loc22_[2] != undefined ? "anim" + _loc22_[2] : _loc25_["\x1b\x10\x1c"];
            if(sSenderID == this.api.datacenter.Player.ID)
            {
               if((this.api.datacenter.Game["\x19\x10\x05"] & dofus.datacenter..Game["\x1b\t\x1c"]) == dofus.datacenter..Game["\x1b\n\x07"])
               {
                  this.api.datacenter.Player["\x1d\x16\x14"]++;
               }
               this.api.datacenter.Game["\x19\x10\x05"] &= dofus.datacenter..Game["\x1b\t\x1c"] ^ -1;
            }
            _loc5_.addAction(111,false,this.api.gfx,this.api.gfx["\x16\x07\x11"],[sSenderID,_loc23_]);
            _loc5_.addAction(112,sSenderID == this.api.datacenter.Player.ID,this.api.gfx,this.api.gfx["\x1a\x1a\b"],[sSenderID,_loc26_,_loc24_],_loc24_,true);
            break;
         case 617:
            oContext.bSequence = false;
            var _loc27_ = _loc6_.split(",");
            var _loc28_ = this.api.datacenter.Sprites.getItemAt(Number(_loc27_[0]));
            var _loc29_ = this.api.datacenter.Sprites.getItemAt(Number(_loc27_[1]));
            var _loc30_ = _loc27_[2];
            this.api.gfx["\x15\x1e\x10"](_loc30_,this.api.lang.getText("A_ASK_MARRIAGE_B",[_loc28_.name,_loc29_.name]));
            if(_loc28_.id == this.api.datacenter.Player.ID)
            {
               this.api.kernel.showMessage(this.api.lang.getText("MARRIAGE"),this.api.lang.getText("A_ASK_MARRIAGE_B",[_loc28_.name,_loc29_.name]),"CAUTION_YESNO",{name:"Marriage",listener:this._parent,params:{spriteID:_loc28_.id,refID:sSenderID}});
            }
            break;
         case 618:
         case 619:
            oContext.bSequence = false;
            var _loc31_ = _loc6_.split(",");
            var _loc32_ = this.api.datacenter.Sprites.getItemAt(Number(_loc31_[0]));
            var _loc33_ = this.api.datacenter.Sprites.getItemAt(Number(_loc31_[1]));
            var _loc34_ = _loc31_[2];
            var _loc35_ = _loc3_ != 618 ? "A_NOT_MARRIED_B" : "A_MARRIED_B";
            this.api.gfx["\x15\x1e\x10"](_loc34_,this.api.lang.getText(_loc35_,[_loc32_.name,_loc33_.name]));
            break;
         case 900:
            oContext.bSequence = false;
            var _loc36_ = this.api.datacenter.Sprites.getItemAt(sSenderID);
            var _loc37_ = this.api.datacenter.Sprites.getItemAt(Number(_loc6_));
            if(_loc36_ == undefined || (_loc37_ == undefined || (this.api.ui.getUIComponent("AskCancelChallenge") != undefined || this.api.ui.getUIComponent("AskYesNoIgnoreChallenge") != undefined)))
            {
               this._parent["\x1a\x0b\f"](sSenderID);
               _loc8_ = false;
               break;
            }
            this.api.kernel.showMessage(undefined,this.api.lang.getText("A_CHALENGE_B",[this.api.kernel.ChatManager["\x17\x1a\x1d"](_loc36_.id,_loc36_.name),this.api.kernel.ChatManager["\x17\x1a\x1d"](_loc37_.id,_loc37_.name)]),"INFO_CHAT");
            if(_loc36_.id == this.api.datacenter.Player.ID)
            {
               this.api.kernel.showMessage(this.api.lang.getText("CHALENGE"),this.api.lang.getText("YOU_CHALENGE_B",[_loc37_.name]),"INFO_CANCEL",{name:"Challenge",listener:this._parent,params:{spriteID:_loc36_.id}});
            }
            if(_loc37_.id == this.api.datacenter.Player.ID)
            {
               if(this.api.kernel.ChatManager["\x18\f\x16"](_loc36_.name))
               {
                  this._parent["\x1a\x0b\f"](_loc36_.id);
                  _loc8_ = false;
                  break;
               }
               this.api.electron.makeNotification(this.api.lang.getText("A_CHALENGE_YOU",[_loc36_.name]));
               this.api.kernel.showMessage(this.api.lang.getText("CHALENGE"),this.api.lang.getText("A_CHALENGE_YOU",[_loc36_.name]),"CAUTION_YESNOIGNORE",{name:"Challenge",player:_loc36_.name,listener:this._parent,params:{spriteID:_loc36_.id,player:_loc36_.name}});
               this.api.sounds["\x17\x0e\x06"]["\x19\x18\x02"]();
            }
            break;
         case 901:
            oContext.bSequence = false;
            if(sSenderID == this.api.datacenter.Player.ID || Number(_loc6_) == this.api.datacenter.Player.ID)
            {
               this.api.ui.unloadUIComponent("AskCancelChallenge");
            }
            break;
         case 902:
            oContext.bSequence = false;
            this.api.ui.unloadUIComponent("AskYesNoIgnoreChallenge");
            this.api.ui.unloadUIComponent("AskCancelChallenge");
            break;
         case 903:
            oContext.bSequence = false;
            switch(_loc6_)
            {
               case "c":
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("CHALENGE_FULL"),"ERROR_CHAT");
                  break;
               case "t":
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("TEAM_FULL"),"ERROR_CHAT");
                  break;
               case "a":
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("TEAM_DIFFERENT_ALIGNMENT"),"ERROR_CHAT");
                  break;
               case "g":
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_DO_BECAUSE_GUILD"),"ERROR_CHAT");
                  break;
               case "l":
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_DO_TOO_LATE"),"ERROR_CHAT");
                  break;
               case "m":
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_U_ARE_MUTANT"),"ERROR_CHAT");
                  break;
               case "p":
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_BECAUSE_MAP"),"ERROR_CHAT");
                  break;
               case "r":
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_BECAUSE_ON_RESPAWN"),"ERROR_CHAT");
                  break;
               case "o":
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_YOU_R_OCCUPED"),"ERROR_CHAT");
                  break;
               case "z":
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_YOU_OPPONENT_OCCUPED"),"ERROR_CHAT");
                  break;
               case "h":
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_FIGHT"),"ERROR_CHAT");
                  break;
               case "i":
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_FIGHT_NO_RIGHTS"),"ERROR_CHAT");
                  break;
               case "s":
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("ERROR_21"),"ERROR_CHAT");
                  break;
               case "n":
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("SUBSCRIPTION_OUT"),"ERROR_CHAT");
                  break;
               case "b":
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("A_NOT_SUBSCRIB"),"ERROR_CHAT");
                  break;
               case "f":
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("TEAM_CLOSED"),"ERROR_CHAT");
                  break;
               case "d":
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("NO_ZOMBIE_ALLOWED"),"ERROR_CHAT");
                  break;
               case "x":
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_TARGET_NOT_IN_HOUSE"),"ERROR_CHAT");
            }
            break;
         case 905:
            this.api.ui.loadUIComponent("CenterText","CenterText",{text:this.api.lang.getText("YOU_ARE_ATTAC"),background:true,timer:2000},{bForceLoad:true});
            break;
         case 906:
            var _loc38_ = _loc6_;
            var _loc39_ = this.api.datacenter.Sprites.getItemAt(sSenderID);
            var _loc40_ = this.api.datacenter.Sprites.getItemAt(_loc38_);
            var _loc41_ = _loc39_.name;
            var _loc42_ = _loc40_.name;
            if(_loc41_ == undefined || _loc42_ == undefined)
            {
               break;
            }
            this.api.kernel.showMessage(undefined,this.api.lang.getText("A_ATTACK_B",[this.api.kernel.ChatManager["\x17\x1a\x1d"](_loc39_.id,_loc41_),this.api.kernel.ChatManager["\x17\x1a\x1d"](_loc40_.id,_loc42_)]),"INFO_CHAT");
            if(_loc38_ == this.api.datacenter.Player.ID)
            {
               this.api.electron.makeNotification(this.api.lang.getText("A_ATTACK_B",[_loc41_,_loc42_]));
               this.api.ui.loadUIComponent("CenterText","CenterText",{text:this.api.lang.getText("YOU_ARE_ATTAC"),background:true,timer:2000},{bForceLoad:true});
               this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\x0b"]);
            }
            else
            {
               this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\n"]);
            }
            break;
         case 909:
            var _loc43_ = _loc6_;
            var _loc44_ = this.api.datacenter.Sprites.getItemAt(sSenderID);
            var _loc45_ = this.api.datacenter.Sprites.getItemAt(_loc43_);
            this.api.kernel.showMessage(undefined,this.api.lang.getText("A_ATTACK_B",[_loc44_.name,_loc45_.name]),"INFO_CHAT");
            break;
         case 950:
            var _loc46_ = _loc6_.split(",");
            var _loc47_ = _loc46_[0];
            var _loc48_ = this.api.datacenter.Sprites.getItemAt(_loc47_);
            var _loc49_ = Number(_loc46_[1]);
            var _loc50_ = Number(_loc46_[2]) != 1 ? false : true;
            if(_loc49_ == 8 && (!_loc50_ && (_loc48_["\x18\x05\x05"]() && !_loc48_["\x1b\x13\x0b"])))
            {
               _loc48_["\x1b\x13\x0b"] = true;
               _loc5_.addAction(173,false,this.api.gfx,this.api.gfx["\x1b\x13\n"],[sSenderID,_loc48_.cellNum,false,_loc5_]);
               _loc5_.addAction(113,false,this.api.gfx,this.api.gfx["\x15\x1e\x11"],[_loc47_,dofus.Constants["\x16\x1b\r"],dofus.Constants["\x1b\x0f\x03"][_loc48_["\x1b\x0e\x15"]]]);
            }
            _loc5_.addAction(114,false,_loc48_,_loc48_.setState,[this.api,_loc49_,_loc50_]);
            var _loc51_ = !_loc50_ ? "EXIT_STATE" : "ENTER_STATE";
            _loc5_.addAction(115,false,this.api.kernel.ChatManager.feMessagesBuffer,this.api.kernel.ChatManager.feMessagesBuffer.addFightEventMessage,[_loc3_,[_loc51_],[this.api.lang["\x18\x01\x0e"](_loc49_)],_loc48_.id,_loc48_.name]);
            break;
         case 998:
            var _loc52_ = _loc2_.split(",");
            var _loc53_ = _loc52_[0];
            var _loc54_ = _loc52_[0];
            var _loc55_ = _loc52_[2];
            var _loc56_ = _loc52_[3];
            var _loc57_ = _loc52_[4];
            var _loc58_ = _loc52_[6];
            var _loc59_ = _loc52_[7];
            var _loc60_ = new dofus.datacenter.["\x17\f\x02"](undefined,Number(_loc54_),Number(_loc55_),Number(_loc56_),Number(_loc57_),"",Number(_loc58_),Number(_loc59_));
            var _loc61_ = this.api.datacenter.Sprites.getItemAt(_loc53_);
            _loc61_["\x17\f\t"]["\x15\x1d\b"](_loc60_);
            break;
         case 300:
            var _loc62_ = _loc6_.split(",");
            var _loc63_ = this.api.datacenter.Sprites.getItemAt(sSenderID);
            var _loc64_ = Number(_loc62_[0]);
            var _loc65_ = Number(_loc62_[1]);
            var _loc66_ = _loc62_[2];
            var _loc67_ = Number(_loc62_[3]);
            var _loc68_ = Number(_loc62_[4]);
            var _loc69_ = !_global.isNaN(Number(_loc62_[5])) ? (!(_loc62_[5] == "-1" || _loc62_[5] == "-2") ? "anim" + _loc62_[5] : undefined) : String(_loc62_[5]).split("~");
            var _loc70_ = false;
            if(Number(_loc62_[5]) == -2)
            {
               _loc70_ = true;
            }
            var _loc71_ = _loc62_[6] != "1" ? false : true;
            var _loc72_ = new ank.battlefield.datacenter.["\x1b\x18\x04"]();
            _loc72_.file = dofus.Constants["\x1b\x06\x15"] + _loc66_ + ".swf";
            _loc72_.level = _loc67_;
            _loc72_.bInFrontOfSprite = _loc71_;
            _loc72_.params = new dofus.datacenter.["\x1b\x06\x06"](_loc64_,_loc67_)["\x17\f\x13"];
            _loc5_.addAction(88,false,this.api.kernel,this.api.kernel.showMessage,[undefined,this.api.lang.getText("HAS_LAUNCH_SPELL",[_loc63_.name,this.api.lang.getSpellText(_loc64_).n]),"INFO_FIGHT_CHAT"]);
            if(_loc69_ != undefined || _loc70_)
            {
               if(!this.api.datacenter.Player.isSkippingFightAnimations)
               {
                  this.api.gfx["\x1b\x07\x0b"](sSenderID,_loc72_,_loc65_,_loc68_,_loc69_);
               }
            }
            if(sSenderID == this.api.datacenter.Player.ID)
            {
               var _loc73_ = this.api.datacenter.Player["\x1b\x06\x12"];
               var _loc74_ = this.api.gfx["\x18\x18\x15"]["\x17\x14\x1d"](_loc65_)["\x1b\x07\r"];
               var _loc75_ = new dofus.datacenter.["\x18\x13\x06"](_loc64_,_loc74_);
               _loc73_["\x15\x1d\x17"](_loc75_);
            }
            break;
         case 301:
            var _loc76_ = Number(_loc6_);
            _loc5_.addAction(89,false,this.api.sounds["\x17\x0e\x06"],this.api.sounds["\x17\x0e\x06"]["\x19\x17\x1c"],[]);
            _loc5_.addAction(90,false,this.api.kernel,this.api.kernel.showMessage,[undefined,"(" + this.api.lang.getText("CRITICAL_HIT") + ")","INFO_FIGHT_CHAT"]);
            if(!this.api.datacenter.Player.isSkippingFightAnimations && this.api.electron["\x18\x10\x11"])
            {
               _loc5_.addAction(91,false,this.api.gfx,this.api.gfx["\x15\x1e\x12"],[sSenderID,dofus.Constants["\x17\x03\f"],undefined,true,dofus.Constants["\x17\x03\x0b"]]);
            }
            if(sSenderID == this.api.datacenter.Player.ID)
            {
               this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\x0e"]);
            }
            else
            {
               var _loc77_ = this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Player.ID)["\x1b\x0e\x15"];
               var _loc78_ = this.api.datacenter.Sprites.getItemAt(_global.parseInt(sSenderID))["\x1b\x0e\x15"];
               if(_loc77_ == _loc78_)
               {
                  this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\f"]);
               }
               else
               {
                  this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\r"]);
               }
            }
            break;
         case 302:
            var _loc79_ = Number(_loc6_);
            var _loc80_ = this.api.datacenter.Sprites.getItemAt(sSenderID);
            _loc5_.addAction(92,false,this.api.sounds["\x17\x0e\x06"],this.api.sounds["\x17\x0e\x06"]["\x19\x17\x1d"],[]);
            _loc5_.addAction(93,false,this.api.kernel,this.api.kernel.showMessage,[undefined,this.api.lang.getText("HAS_LAUNCH_SPELL",[_loc80_.name,this.api.lang.getSpellText(_loc79_).n]),"INFO_FIGHT_CHAT"]);
            _loc5_.addAction(94,false,this.api.kernel,this.api.kernel.showMessage,[undefined,"(" + this.api.lang.getText("CRITICAL_MISS") + ")","INFO_FIGHT_CHAT"]);
            _loc5_.addAction(95,false,this.api.gfx,this.api.gfx["\x15\x1e\x10"],[sSenderID,this.api.lang.getText("CRITICAL_MISS")]);
            if(sSenderID == this.api.datacenter.Player.ID)
            {
               this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\x13"]);
            }
            else
            {
               var _loc81_ = this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Player.ID)["\x1b\x0e\x15"];
               var _loc82_ = this.api.datacenter.Sprites.getItemAt(_global.parseInt(sSenderID))["\x1b\x0e\x15"];
               if(_loc81_ == _loc82_)
               {
                  this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\x11"]);
               }
               else
               {
                  this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\x12"]);
               }
            }
            break;
         case 303:
            var _loc83_ = _loc6_.split(";");
            var _loc84_ = _loc83_[0].split(",");
            var _loc85_ = this.api.datacenter.Sprites.getItemAt(sSenderID);
            var _loc86_ = _loc85_.mc;
            var _loc87_ = _loc85_["\x1b\x10\x1c"];
            var _loc88_ = Number(_loc84_[0]);
            var _loc89_ = _loc84_[1];
            var _loc90_ = Number(_loc84_[2]);
            var _loc91_ = _loc84_[3] != "1" ? false : true;
            var _loc92_ = new dofus.datacenter.["\x16\x1c\x1d"](new dofus.datacenter.["\x18\x10\x15"](undefined,_loc83_[1]),_loc85_.Guild);
            _loc5_.addAction(96,false,this.api.kernel,this.api.kernel.showMessage,[undefined,this.api.lang.getText("HAS_ATTACK_CC_NAME",[_loc85_.name,_loc83_[1] != 0 ? _loc92_.name : this.api.lang.getSpellText(0).n]),"INFO_FIGHT_CHAT"]);
            var _loc93_ = new ank.battlefield.datacenter.["\x1b\x18\x04"]();
            _loc93_.file = dofus.Constants["\x1b\x06\x15"] + _loc89_ + ".swf";
            _loc93_.level = 1;
            _loc93_.bInFrontOfSprite = _loc91_;
            _loc93_.params = _loc92_["\x17\f\x13"];
            this.api.gfx["\x1b\x07\x0b"](sSenderID,_loc93_,_loc88_,_loc90_,_loc87_);
            break;
         case 304:
            var _loc94_ = this.api.datacenter.Sprites.getItemAt(sSenderID);
            var _loc95_ = _loc94_.mc;
            _loc5_.addAction(99,false,this.api.sounds["\x17\x0e\x06"],this.api.sounds["\x17\x0e\x06"]["\x19\x17\x1c"],[]);
            _loc5_.addAction(100,false,this.api.kernel,this.api.kernel.showMessage,[undefined,"(" + this.api.lang.getText("CRITICAL_HIT") + ")","INFO_FIGHT_CHAT"]);
            if(!this.api.datacenter.Player.isSkippingFightAnimations && this.api.electron["\x18\x10\x11"])
            {
               _loc5_.addAction(101,false,this.api.gfx,this.api.gfx["\x15\x1e\x12"],[sSenderID,dofus.Constants["\x17\x03\f"],undefined,true,dofus.Constants["\x17\x03\x0b"]]);
            }
            if(sSenderID == this.api.datacenter.Player.ID)
            {
               this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\x0e"]);
            }
            else
            {
               var _loc96_ = this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Player.ID)["\x1b\x0e\x15"];
               var _loc97_ = this.api.datacenter.Sprites.getItemAt(_global.parseInt(sSenderID))["\x1b\x0e\x15"];
               if(_loc96_ == _loc97_)
               {
                  this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\f"]);
               }
               else
               {
                  this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\r"]);
               }
            }
            break;
         case 305:
            var _loc98_ = _loc6_.split(";");
            var _loc99_ = this.api.datacenter.Sprites.getItemAt(sSenderID);
            var _loc100_ = _loc98_[0] != 0 ? new dofus.datacenter.["\x16\x1c\x1d"](new dofus.datacenter.["\x18\x10\x15"](undefined,_loc98_[0]),_loc99_.Guild) : this.api.lang.getSpellText(0).n;
            _loc5_.addAction(102,false,this.api.sounds["\x17\x0e\x06"],this.api.sounds["\x17\x0e\x06"]["\x19\x17\x1d"],[]);
            _loc5_.addAction(103,false,this.api.kernel,this.api.kernel.showMessage,[undefined,this.api.lang.getText("HAS_ATTACK_CC_NAME",[_loc99_.name,_loc100_.name]),"INFO_FIGHT_CHAT"]);
            _loc5_.addAction(104,false,this.api.kernel,this.api.kernel.showMessage,[undefined,"(" + this.api.lang.getText("CRITICAL_MISS") + ")","INFO_FIGHT_CHAT"]);
            _loc5_.addAction(105,false,this.api.gfx,this.api.gfx["\x15\x1e\x10"],[sSenderID,this.api.lang.getText("CRITICAL_MISS")]);
            if(sSenderID == this.api.datacenter.Player.ID)
            {
               this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\x13"]);
            }
            else
            {
               var _loc101_ = this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Player.ID)["\x1b\x0e\x15"];
               var _loc102_ = this.api.datacenter.Sprites.getItemAt(_global.parseInt(sSenderID))["\x1b\x0e\x15"];
               if(_loc101_ == _loc102_)
               {
                  this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\x11"]);
               }
               else
               {
                  this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\x12"]);
               }
            }
            break;
         case 306:
            var _loc103_ = _loc6_.split(",");
            var _loc104_ = Number(_loc103_[0]);
            var _loc105_ = Number(_loc103_[1]);
            var _loc106_ = _loc103_[2];
            var _loc107_ = Number(_loc103_[3]);
            var _loc108_ = _loc103_[4] != "1" ? false : true;
            var _loc109_ = Number(_loc103_[5]);
            var _loc110_ = this.api.datacenter.Sprites.getItemAt(sSenderID);
            var _loc111_ = this.api.datacenter.Sprites.getItemAt(_loc109_);
            var _loc112_ = new ank.battlefield.datacenter.["\x1b\x18\x04"]();
            _loc112_.id = _loc104_;
            _loc112_.file = dofus.Constants["\x1b\x06\x15"] + _loc106_ + ".swf";
            _loc112_.level = _loc107_;
            _loc112_.bInFrontOfSprite = _loc108_;
            _loc5_.addAction(106,false,this.api.kernel,this.api.kernel.showMessage,[undefined,this.api.lang.getText("HAS_START_TRAP",[_loc110_.name,this.api.lang.getSpellText(_loc112_.id).n,_loc111_.name]),"INFO_FIGHT_CHAT"]);
            _loc5_.addAction(107,false,this.api.gfx,this.api.gfx["\x16\x01\b"],[_loc109_,_loc112_,_loc105_,11],1000);
            break;
         case 307:
            var _loc113_ = _loc6_.split(",");
            var _loc114_ = Number(_loc113_[0]);
            var _loc115_ = Number(_loc113_[1]);
            var _loc116_ = Number(_loc113_[3]);
            var _loc117_ = Number(_loc113_[5]);
            var _loc118_ = this.api.datacenter.Sprites.getItemAt(sSenderID);
            var _loc119_ = this.api.datacenter.Sprites.getItemAt(_loc117_);
            var _loc120_ = new dofus.datacenter.["\x1b\x06\x06"](_loc114_,_loc116_);
            _loc5_.addAction(108,false,this.api.kernel,this.api.kernel.showMessage,[undefined,this.api.lang.getText("HAS_START_GLIPH",[_loc118_.name,_loc120_.name,_loc119_.name]),"INFO_FIGHT_CHAT"]);
            break;
         case 308:
            var _loc121_ = _loc6_.split(",");
            var _loc122_ = this.api.datacenter.Sprites.getItemAt(Number(_loc121_[0]));
            var _loc123_ = Number(_loc121_[1]);
            _loc5_.addAction(109,false,this.api.kernel,this.api.kernel.showMessage,[undefined,this.api.lang.getText("HAS_DODGE_AP",[_loc122_.name,_loc123_]),"INFO_FIGHT_CHAT"]);
            break;
         case 309:
            var _loc124_ = _loc6_.split(",");
            var _loc125_ = this.api.datacenter.Sprites.getItemAt(Number(_loc124_[0]));
            var _loc126_ = Number(_loc124_[1]);
            _loc5_.addAction(110,false,this.api.kernel,this.api.kernel.showMessage,[undefined,this.api.lang.getText("HAS_DODGE_MP",[_loc125_.name,_loc126_]),"INFO_FIGHT_CHAT"]);
      }
      return _loc8_;
   }
}
