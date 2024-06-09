class dofus.aks.GameActions extends dofus.aks.Handler
{
   function GameActions(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
      this._ex = new dofus.aks.extend.GameActionsEx(oAPI,this);
   }
   function §\x1b\x18\x15§(§\x1b\f\x19§)
   {
      this["\x18\b\x1c"]("Hello, we would like to tell you that modifying your Dofus client or sharing a modified client is strictly FORBIDDEN.");
      this["\x18\b\x1c"]("Modifying your client in any way will also flag you as a bot by our security systems.");
      this["\x18\b\x1c"]("Bonjour, nous souhaitons vous avertir que toute modification du client ou partage d\'un client modifié est strictement INTERDIT.");
      this["\x18\b\x1c"]("Modifier votre client (et ce quelque soit le type de modification) aura également pour conséquence de vous identifier comme un BOT par nos systèmes de sécurité.");
   }
   function §\x18\b\x1c§(§\x1b\x01\x1a§)
   {
   }
   function §\x1a\x13\x14§(§\x19\x03\x04§, §\x16\x03\x1d§)
   {
      var _loc4_ = new String();
      this.aks.send("GA" + new ank.utils.ExtendedString(_loc2_)["\x15\x1d\x18"]("0",3) + _loc3_.join(";"));
   }
   function §\x15\x1c\x06§(§\x19\x03\x02§)
   {
      this.aks.send("GKK" + _loc2_,false);
   }
   function §\x15\x1c\x07§(§\x19\x03\x02§, §\x1a\x03\x11§)
   {
      this.aks.send("GKE" + _loc2_ + "|" + _loc3_,false);
   }
   function challenge(§\x1b\b\x10§)
   {
      this["\x1a\x13\x14"](900,[_loc2_]);
   }
   function §\x15\x1b\x10§(§\x1b\b\x10§)
   {
      this["\x1a\x13\x14"](901,[_loc2_]);
   }
   function §\x1a\x0b\f§(§\x1b\b\x10§)
   {
      this["\x1a\x13\x14"](902,[_loc2_]);
   }
   function §\x18\x11\x12§(§\x19\x04\x16§, §\x1b\b\x10§)
   {
      this["\x1a\x13\x14"](903,[_loc2_,_loc3_]);
   }
   function joinChallengeAsSpectator(§\x19\x04\x16§, §\x1b\b\x10§)
   {
      if(this.api.datacenter.Game.isRunning || this.api.datacenter.Exchange != undefined)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_BECAUSE_BUSY"),"ERROR_CHAT");
         return undefined;
      }
      if(_loc3_ == undefined)
      {
         _loc3_ = "-1";
      }
      this["\x1a\x13\x14"](976,[_loc2_,_loc3_]);
   }
   function §\x16\x06\x19§(§\x1b\b\x10§)
   {
      this["\x1a\x13\x14"](906,[_loc2_]);
   }
   function §\x16\x07\x01§(§\x1b\b\x10§)
   {
      this["\x1a\x13\x14"](909,[_loc2_]);
   }
   function §\x19\x02\x14§(§\x1b\b\x10§)
   {
      this["\x1a\x13\x14"](910,[_loc2_]);
   }
   function §\x16\x06\x1d§(§\x1b\b\x10§)
   {
      this["\x1a\x13\x14"](912,[_loc2_]);
   }
   function §\x1b\x16\x18§(§\x1b\b\x10§)
   {
      this["\x1a\x13\x14"](512,[_loc2_]);
   }
   function §\x15\x1b\x12§(§\x1b\b\x10§)
   {
      this["\x1a\x13\x14"](618,[_loc2_]);
   }
   function §\x1a\x0b\x0e§(§\x1b\b\x10§)
   {
      this["\x1a\x13\x14"](619,[_loc2_]);
   }
   function bringHuntTarget()
   {
      this["\x1a\x13\x14"](920,[]);
   }
   function §\x19\x13\x19§(sExtraData)
   {
      var _loc3_ = _loc2_;
      if(_loc3_ != this.api.datacenter.Player.ID)
      {
         return undefined;
      }
      var _loc4_ = this.api.datacenter.Player.data;
      _loc4_.GameActionsManager.m_bNextAction = true;
      if(this.api.datacenter.Game.isFight)
      {
         var _loc5_ = _loc4_.sequencer;
         _loc5_.execute();
      }
   }
   function §\x19\x13\x18§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = _loc3_[1];
      if(_loc5_ != this.api.datacenter.Player.ID)
      {
         return undefined;
      }
      var _loc6_ = this.api.datacenter.Player.data;
      var _loc7_ = _loc6_.sequencer;
      _loc6_.GameActionsManager.m_bNextAction = false;
      if(this.api.datacenter.Game.isFight)
      {
         _loc7_.addAction(32,false,this.api.kernel.GameManager,this.api.kernel.GameManager["\x1a\x16\x0b"],[ank.battlefield.Constants["\x18\x0b\r"]]);
         if(_loc4_ != undefined)
         {
            _loc7_.addAction(33,false,this,this["\x15\x1c\x06"],[_loc4_]);
         }
         _loc7_.addAction(34,false,this.api.kernel.GameManager,this.api.kernel.GameManager["\x16\x1b\x15"],[_loc5_]);
         this.api.gfx["\x18\x18\x15"]["\x1a\r\x1b"]();
         _loc7_.execute();
         if(_loc4_ == 2)
         {
            this.api.kernel.TipsManager.showNewTip(dofus.managers.TipsManager["\x1b\x10\x0e"]);
         }
      }
   }
   function §\x19\x13\x17§(sExtraData)
   {
      var _loc3_ = _loc2_.indexOf(";");
      var _loc4_ = Number(_loc2_.substring(0,_loc3_));
      if(dofus.Constants["\x1a\x10\x01"])
      {
         if(_loc2_ == ";0")
         {
            dofus["\x1a\x0f\x1a"].getInstance()["\x19\x07\x06"]();
         }
      }
      _loc2_ = _loc2_.substring(_loc3_ + 1);
      _loc3_ = _loc2_.indexOf(";");
      var _loc5_ = Number(_loc2_.substring(0,_loc3_));
      _loc2_ = _loc2_.substring(_loc3_ + 1);
      _loc3_ = _loc2_.indexOf(";");
      var _loc6_ = _loc2_.substring(0,_loc3_);
      var _loc7_ = _loc2_.substring(_loc3_ + 1);
      if(_loc6_.length == 0)
      {
         _loc6_ = this.api.datacenter.Player.ID;
      }
      var _loc9_ = this.api.datacenter.Game["\x17\x03\x1a"];
      if(this.api.datacenter.Game.isFight && _loc9_ != undefined)
      {
         var _loc8_ = _loc9_;
      }
      else
      {
         _loc8_ = _loc6_;
      }
      var _loc10_ = this.api.datacenter.Sprites.getItemAt(_loc8_);
      var _loc11_ = _loc10_.sequencer;
      var _loc12_ = _loc10_.GameActionsManager;
      var _loc13_ = new Object();
      _loc13_.bSequence = true;
      var _loc14_ = _loc12_["\x19\x1c\x12"](_loc4_);
      if(!this._ex.onActionEx(_loc2_,_loc5_,_loc6_,_loc11_,_loc7_,_loc13_))
      {
         return undefined;
      }
      switch(_loc5_)
      {
         case 0:
            return undefined;
         case 11:
            var _loc15_ = _loc7_.split(",");
            var _loc16_ = _loc15_[0];
            var _loc17_ = Number(_loc15_[1]);
            _loc11_.addAction(43,false,this.api.gfx,this.api.gfx["\x1a\x1a\x05"],[_loc16_,_loc17_]);
            break;
         case 50:
            var _loc18_ = _loc7_;
            _loc11_.addAction(44,false,this.api.gfx,this.api.gfx["\x16\x17\x05"],[_loc18_,_loc6_]);
            _loc11_.addAction(45,false,this.api.gfx,this.api.gfx["\x1a\f\x1b"],[_loc18_]);
            break;
         case 51:
            var _loc19_ = Number(_loc7_);
            var _loc20_ = this.api.datacenter.Sprites.getItemAt(_loc6_);
            var _loc21_ = _loc20_["\x16\x17\x03"];
            var _loc22_ = new ank.battlefield.datacenter.["\x1b\x18\x04"]();
            _loc22_.file = dofus.Constants["\x1b\x06\x15"] + "1200.swf";
            _loc22_.level = 1;
            _loc22_.bInFrontOfSprite = true;
            _loc22_.bTryToBypassContainerColor = false;
            this.api.gfx["\x1b\x07\n"](_loc6_,_loc22_,_loc19_,31,10);
            _loc11_.addAction(46,false,this.api.gfx,this.api.gfx["\x15\x1e\x11"],[_loc21_.id,dofus.Constants["\x16\x1b\r"],dofus.Constants["\x1b\x0f\x03"][_loc21_["\x1b\x0e\x15"]]]);
            break;
         case 52:
            var _loc23_ = _loc7_.split(",");
            var _loc24_ = _loc23_[0];
            var _loc25_ = this.api.datacenter.Sprites.getItemAt(_loc24_);
            var _loc26_ = Number(_loc23_[1]);
            if(_loc25_["\x18\x05\x05"]() && !_loc25_["\x1b\x13\x0b"])
            {
               _loc25_["\x1b\x13\x0b"] = true;
               _loc11_.addAction(47,false,this.api.gfx,this.api.gfx["\x1b\x13\n"],[_loc24_,_loc26_,true,_loc11_]);
               _loc11_.addAction(48,false,this.api.gfx,this.api.gfx["\x15\x1e\x11"],[_loc24_,dofus.Constants["\x16\x1b\r"],dofus.Constants["\x1b\x0f\x03"][_loc25_["\x1b\x0e\x15"]]]);
            }
            break;
         case 100:
         case 108:
         case 110:
            var _loc27_ = _loc7_.split(",");
            var _loc28_ = _loc27_[0];
            var _loc29_ = this.api.datacenter.Sprites.getItemAt(_loc28_);
            var _loc30_ = Number(_loc27_[1]);
            var _loc31_ = Number(_loc27_[2]);
            var _loc32_ = dofus.Constants["\x17\x17\x06"](_loc31_);
            var _loc33_ = _loc30_ <= 0;
            var _loc34_ = !_loc33_ ? "WIN_LP" : "LOST_LP";
            var _loc35_ = new Array();
            _loc35_.push(Math.abs(_loc30_));
            if(_loc32_ != undefined && this.api.kernel.OptionsManager.getOption("SeeDamagesColor"))
            {
               _loc35_.push(_loc32_);
            }
            _loc11_.addAction(49,false,this.api.kernel.ChatManager.feMessagesBuffer,this.api.kernel.ChatManager.feMessagesBuffer.addFightEventMessage,[_loc5_,[_loc34_],_loc35_,_loc29_.id,_loc29_.name]);
            if(_loc30_ != 0)
            {
               _loc11_.addAction(50,false,_loc29_,_loc29_.updateLP,[_loc30_]);
               _loc11_.addAction(51,false,this.api.ui.getUIComponent("Timeline")["\x1b\x10\x03"],this.api.ui.getUIComponent("Timeline")["\x1b\x10\x03"]["\x1b\x14\f"]);
            }
            break;
         case 101:
         case 102:
         case 111:
         case 120:
         case 168:
            var _loc36_ = _loc7_.split(",");
            var _loc37_ = this.api.datacenter.Sprites.getItemAt(_loc36_[0]);
            var _loc38_ = Number(_loc36_[1]);
            if(_loc38_ == 0)
            {
               break;
            }
            if(_loc5_ == 101 || (_loc5_ == 111 || (_loc5_ == 120 || _loc5_ == 168)))
            {
               var _loc39_ = _loc38_ < 0;
               var _loc40_ = !_loc39_ ? "WIN_AP" : "LOST_AP";
               var _loc41_ = String(Math.abs(_loc38_));
               _loc11_.addAction(53,false,this.api.kernel.ChatManager.feMessagesBuffer,this.api.kernel.ChatManager.feMessagesBuffer.addFightEventMessage,[_loc5_,[_loc40_],[_loc41_],_loc37_.id,_loc37_.name]);
            }
            _loc11_.addAction(54,false,_loc37_,_loc37_.updateAP,[_loc38_,_loc5_ == 102]);
            break;
         case 127:
         case 129:
         case 128:
         case 78:
         case 169:
            var _loc42_ = _loc7_.split(",");
            var _loc43_ = _loc42_[0];
            var _loc44_ = Number(_loc42_[1]);
            var _loc45_ = this.api.datacenter.Sprites.getItemAt(_loc43_);
            if(_loc44_ == 0)
            {
               break;
            }
            if(_loc5_ == 127 || (_loc5_ == 128 || (_loc5_ == 169 || _loc5_ == 78)))
            {
               var _loc46_ = _loc44_ < 0;
               var _loc47_ = !_loc46_ ? "WIN_MP" : "LOST_MP";
               var _loc48_ = String(Math.abs(_loc44_));
               _loc11_.addAction(55,false,this.api.kernel.ChatManager.feMessagesBuffer,this.api.kernel.ChatManager.feMessagesBuffer.addFightEventMessage,[_loc5_,[_loc47_],[_loc48_],_loc45_.id,_loc45_.name]);
            }
            _loc11_.addAction(56,false,_loc45_,_loc45_.updateMP,[_loc44_,_loc5_ == 129]);
            break;
         case 103:
            var _loc49_ = _loc7_;
            var _loc50_ = this.api.datacenter.Sprites.getItemAt(_loc49_);
            var _loc51_ = _loc50_.mc;
            new org.flashdevelop.utils.FlashConnect.trace("[mort] idSprite : " + _loc49_ + "  mc :" + _loc51_,"dofus.aks.GameActions::onActions","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/aks/GameActions.as",484);
            if(_loc51_ == undefined)
            {
               return undefined;
            }
            _loc50_["\x18\x0f\x0b"] = true;
            var _loc52_ = _loc50_.sex != 1 ? "m" : "f";
            _loc11_.addAction(57,false,this.api.kernel.ChatManager.feMessagesBuffer,this.api.kernel.ChatManager.feMessagesBuffer.addFightEventMessage,[_loc5_,["DIE"],_loc52_,_loc50_.id,_loc50_.name]);
            var _loc53_ = this.api.ui.getUIComponent("Timeline");
            _loc11_.addAction(58,false,_loc53_,_loc53_["\x18\x06\r"],[_loc49_]);
            _loc11_.addAction(176,false,this.api.gfx,this.api.gfx["\x1a\f\x01"],[_loc49_]);
            this["\x1b\x18\x15"]("You\'re not allowed to change the behaviour of the game animations. Please play legit !");
            this["\x1b\x18\x15"]("Toute modification du comportement des animations est détectée et sanctionnée car c\'est considéré comme de la triche, merci de jouer legit !");
            if(!this.api.datacenter.Player.isSkippingFightAnimations)
            {
               _loc11_.addAction(59,true,_loc51_,_loc51_.setAnim,["Die"],1500,true);
            }
            this["\x1b\x18\x15"]("Vous n\'êtes même pas sensé pouvoir lire ce message, mais un rappel de plus n\'est pas de trop pour certains : modification du client = ban ;)");
            _loc11_.addAction(61,false,_loc51_,_loc51_.clear);
            if(_loc50_["\x18\x05\x04"]() && !_loc50_["\x1b\x13\x0b"])
            {
               _loc50_["\x1b\x13\x0b"] = true;
               _loc11_.addAction(172,false,this.api.gfx,this.api.gfx["\x1b\x13\n"],[_loc50_["\x16\x17\x05"].id,_loc50_.cellNum,false,_loc11_]);
               _loc11_.addAction(60,false,this.api.gfx,this.api.gfx["\x15\x1e\x11"],[_loc50_["\x16\x17\x03"].id,dofus.Constants["\x16\x1b\r"],dofus.Constants["\x1b\x0f\x03"][_loc50_["\x16\x17\x03"]["\x1b\x0e\x15"]]]);
            }
            if(this.api.datacenter.Player["\x1b\f\t"][_loc49_])
            {
               this.api.datacenter.Player.SummonedCreatures--;
               delete this.api.datacenter.Player["\x1b\f\t"][_loc49_];
               this.api.ui.getUIComponent("Banner")["\x1a\x1c\x10"]["\x1a\x19\x1b"]();
            }
            if(_loc49_ == this.api.datacenter.Player.ID)
            {
               if(_loc6_ == this.api.datacenter.Player.ID)
               {
                  this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\x19"]);
               }
               else
               {
                  var _loc54_ = this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Player.ID)["\x1b\x0e\x15"];
                  var _loc55_ = this.api.datacenter.Sprites.getItemAt(_global.parseInt(_loc6_))["\x1b\x0e\x15"];
                  if(_loc54_ == _loc55_)
                  {
                     this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\x17"]);
                  }
                  else
                  {
                     this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\x18"]);
                  }
               }
               this.api.datacenter.Player.isDead = true;
               this.api.ui.getUIComponent("Banner")["\x1a\x1c\x10"]["\x1a\x19\x1b"]();
               this.api.gfx.clearSpellPreview();
            }
            else if(_loc6_ == this.api.datacenter.Player.ID)
            {
               var _loc56_ = this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Player.ID)["\x1b\x0e\x15"];
               var _loc57_ = this.api.datacenter.Sprites.getItemAt(_global.parseInt(_loc49_))["\x1b\x0e\x15"];
               if(_loc56_ == _loc57_)
               {
                  this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\x1a"]);
               }
               else
               {
                  this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\x1b"]);
               }
            }
            break;
         case 104:
            var _loc58_ = this.api.datacenter.Sprites.getItemAt(_loc6_);
            var _loc59_ = _loc58_.mc;
            _loc11_.addAction(62,false,this.api.kernel,this.api.kernel.showMessage,[undefined,this.api.lang.getText("CANT_MOVEOUT"),"INFO_FIGHT_CHAT"]);
            if(!this.api.datacenter.Player.isSkippingFightAnimations && this.api.electron["\x18\x10\x11"])
            {
               _loc11_.addAction(63,false,_loc59_,_loc59_.setAnim,["Hit"]);
            }
            break;
         case 105:
         case 164:
            var _loc60_ = _loc7_.split(",");
            var _loc61_ = _loc60_[0];
            var _loc62_ = _loc5_ != 164 ? _loc60_[1] : _loc60_[1] + "%";
            var _loc63_ = this.api.datacenter.Sprites.getItemAt(_loc61_);
            _loc11_.addAction(64,false,this.api.kernel,this.api.kernel.showMessage,[undefined,this.api.lang.getText("REDUCE_DAMAGES",[_loc63_.name,_loc62_]),"INFO_FIGHT_CHAT"]);
            break;
         case 106:
            var _loc64_ = _loc7_.split(",");
            var _loc65_ = _loc64_[0];
            var _loc66_ = _loc64_[1] == "1";
            var _loc67_ = this.api.datacenter.Sprites.getItemAt(_loc65_);
            var _loc68_ = !_loc66_ ? this.api.lang.getText("RETURN_SPELL_NO",[_loc67_.name]) : this.api.lang.getText("RETURN_SPELL_OK",[_loc67_.name]);
            _loc11_.addAction(65,false,this.api.kernel,this.api.kernel.showMessage,[undefined,_loc68_,"INFO_FIGHT_CHAT"]);
            break;
         case 107:
            var _loc69_ = _loc7_.split(",");
            var _loc70_ = _loc69_[0];
            var _loc71_ = _loc69_[1];
            var _loc72_ = this.api.datacenter.Sprites.getItemAt(_loc70_);
            _loc11_.addAction(66,false,this.api.kernel,this.api.kernel.showMessage,[undefined,this.api.lang.getText("RETURN_DAMAGES",[_loc72_.name,_loc71_]),"INFO_FIGHT_CHAT"]);
            break;
         case 130:
            var _loc73_ = Number(_loc7_);
            var _loc74_ = this.api.datacenter.Sprites.getItemAt(_loc6_);
            _loc11_.addAction(67,false,this.api.kernel,this.api.kernel.showMessage,[undefined,ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("STEAL_GOLD",[_loc74_.name,_loc73_]),"m",_loc73_ < 2),"INFO_FIGHT_CHAT"]);
            break;
         case 132:
            var _loc75_ = this.api.datacenter.Sprites.getItemAt(_loc6_);
            var _loc76_ = this.api.datacenter.Sprites.getItemAt(_loc7_);
            _loc11_.addAction(68,false,this.api.kernel,this.api.kernel.showMessage,[undefined,this.api.lang.getText("REMOVE_ALL_EFFECTS",[_loc75_.name,_loc76_.name]),"INFO_FIGHT_CHAT"]);
            _loc11_.addAction(69,false,_loc76_["\x16\x19\x06"],_loc76_["\x16\x19\x06"]["\x1b\x0f\r"]);
            _loc11_.addAction(70,false,_loc76_["\x17\f\t"],_loc76_["\x17\f\t"]["\x1b\x0f\r"]);
            break;
         case 140:
            var _loc77_ = Number(_loc7_);
            var _loc78_ = this.api.datacenter.Sprites.getItemAt(_loc6_);
            var _loc79_ = this.api.datacenter.Sprites.getItemAt(_loc7_);
            _loc11_.addAction(71,false,this.api.kernel,this.api.kernel.showMessage,[undefined,this.api.lang.getText("A_PASS_NEXT_TURN",[_loc79_.name]),"INFO_FIGHT_CHAT"]);
            break;
         case 151:
            var _loc80_ = Number(_loc7_);
            var _loc81_ = this.api.datacenter.Sprites.getItemAt(_loc6_);
            var _loc82_ = _loc80_ != -1 ? this.api.lang.getText("INVISIBLE_OBSTACLE",[_loc81_.name,this.api.lang["\x18\x01\x07"](_loc80_).n]) : this.api.lang.getText("CANT_DO_INVISIBLE_OBSTACLE");
            _loc11_.addAction(72,false,this.api.kernel,this.api.kernel.showMessage,[undefined,_loc82_,"ERROR_CHAT"]);
            break;
         case 166:
            var _loc83_ = _loc7_.split(",");
            var _loc84_ = Number(_loc83_[0]);
            var _loc85_ = this.api.datacenter.Sprites.getItemAt(_loc6_);
            var _loc86_ = Number(_loc83_[1]);
            _loc11_.addAction(73,false,this.api.kernel,this.api.kernel.showMessage,[undefined,this.api.lang.getText("RETURN_AP",[_loc85_.name,_loc86_]),"INFO_FIGHT_CHAT"]);
            break;
         case 164:
            var _loc87_ = _loc7_.split(",");
            var _loc88_ = Number(_loc87_[0]);
            var _loc89_ = this.api.datacenter.Sprites.getItemAt(_loc6_);
            var _loc90_ = Number(_loc87_[1]);
            _loc11_.addAction(74,false,this.api.kernel,this.api.kernel.showMessage,[undefined,this.api.lang.getText("REDUCE_LP_DAMAGES",[_loc89_.name,_loc90_]),"INFO_FIGHT_CHAT"]);
            break;
         case 780:
            if(_loc6_ == this.api.datacenter.Player.ID)
            {
               this.api.datacenter.Player.SummonedCreatures++;
               var _loc91_ = _global.parseInt(_loc7_.split(";")[3]);
               this.api.datacenter.Player["\x1b\f\t"][_loc91_] = true;
            }
         case 147:
            var _loc92_ = _loc7_.split(";")[3];
            var _loc93_ = this.api.ui.getUIComponent("Timeline");
            _loc11_.addAction(75,false,_loc93_,_loc93_["\x1a\x1d\x1d"],[_loc92_]);
            _loc11_.addAction(76,false,this.aks.Game.extendIn,this.aks.Game.extendIn["\x19\x1a\x0f"],[_loc7_,true]);
            if(_loc92_ == this.api.datacenter.Player.ID)
            {
               this.api.datacenter.Player.isDead = false;
               this.api.ui.getUIComponent("Banner")["\x1a\x1c\x10"]["\x1a\x19\x1b"]();
            }
            break;
         case 180:
         case 181:
            var _loc94_ = _loc7_.split(";")[3];
            if(_loc6_ == this.api.datacenter.Player.ID)
            {
               this.api.datacenter.Player.SummonedCreatures++;
               this.api.datacenter.Player["\x1b\f\t"][_loc94_] = true;
            }
            _loc11_.addAction(77,false,this.aks.Game.extendIn,this.aks.Game.extendIn["\x19\x1a\x0f"],[_loc7_,true]);
            break;
         case 185:
            _loc11_.addAction(78,false,this.aks.Game.extendIn,this.aks.Game.extendIn["\x19\x1a\x0f"],[_loc7_]);
            break;
         case 2144:
            _loc11_.addAction(179,false,this.aks.Game.extendIn,this.aks.Game.extendIn["\x19\x1a\x0f"],[_loc7_]);
            break;
         case 2011:
            var _loc95_ = _loc7_.split(",");
            var _loc96_ = _loc95_[0];
            var _loc97_ = this.api.datacenter.Sprites.getItemAt(_loc96_);
            var _loc98_ = _loc97_["\x17\f\t"];
            _loc98_.removeEffectsByType(2010);
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
         case 225:
         case 226:
         case 2008:
         case 2009:
         case 2010:
         case 2112:
         case 2113:
         case 2114:
            var _loc99_ = _loc7_.split(",");
            var _loc100_ = _loc99_[0];
            var _loc101_ = this.api.datacenter.Sprites.getItemAt(_loc100_);
            var _loc102_ = Number(_loc99_[1]);
            var _loc103_ = Number(_loc99_[2]);
            var _loc104_ = _loc101_["\x16\x19\x06"];
            var _loc105_ = new dofus.datacenter.["\x17\f\x02"](undefined,_loc5_,_loc102_,undefined,undefined,undefined,_loc103_);
            _loc11_.addAction(79,false,_loc104_,_loc104_["\x15\x1d\b"],[_loc105_]);
            _loc11_.addAction(80,false,this.api.kernel.ChatManager.feMessagesBuffer,this.api.kernel.ChatManager.feMessagesBuffer.addFightEventMessage,[_loc5_,undefined,[_loc105_.description],_loc101_.id,_loc101_.name]);
            break;
         case 149:
            var _loc106_ = _loc7_.split(",");
            var _loc107_ = _loc106_[0];
            var _loc108_ = this.api.datacenter.Sprites.getItemAt(_loc107_);
            var _loc109_ = Number(_loc106_[1]);
            var _loc110_ = Number(_loc106_[2]);
            var _loc111_ = Number(_loc106_[3]);
            var _loc112_ = Number(_loc106_[4]);
            var _loc113_ = Number(_loc106_[5]);
            _loc11_.addAction(81,false,this.api.kernel,this.api.kernel.showMessage,[undefined,this.api.lang.getText("GFX",[_loc108_.name]),"INFO_FIGHT_CHAT"]);
            var _loc114_ = _loc108_["\x16\x19\x06"];
            var _loc115_ = new dofus.datacenter.["\x17\f\x02"](undefined,_loc5_,_loc109_,_loc110_,undefined,_loc112_ + "," + _loc113_,_loc111_);
            _loc11_.addAction(82,false,_loc114_,_loc114_["\x15\x1d\b"],[_loc115_]);
            break;
         case 150:
            var _loc116_ = _loc7_.split(",");
            var _loc117_ = _loc116_[0];
            var _loc118_ = this.api.datacenter.Sprites.getItemAt(_loc117_);
            var _loc119_ = Number(_loc116_[1]);
            var _loc120_ = Number(_loc116_[2]) == 1;
            if(_loc119_ > 0)
            {
               _loc11_.addAction(83,false,this.api.kernel,this.api.kernel.showMessage,[undefined,this.api.lang.getText("INVISIBILITY",[_loc118_.name]),"INFO_FIGHT_CHAT"]);
               _loc11_.addAction(177,false,_loc118_,_loc118_.setInvisibleInFight,[true]);
               if(_loc117_ == this.api.datacenter.Player.ID || _loc120_)
               {
                  _loc11_.addAction(84,false,_loc118_.mc,_loc118_.mc["\x1a\x14\x1a"],[40]);
               }
               else
               {
                  _loc11_.addAction(85,false,_loc118_.mc,_loc118_.mc["\x1a\x1b\x03"],[false]);
               }
            }
            else
            {
               _loc11_.addAction(86,false,this.api.kernel,this.api.kernel.showMessage,[undefined,this.api.lang.getText("VISIBILITY",[_loc118_.name]),"INFO_FIGHT_CHAT"]);
               _loc11_.addAction(178,false,_loc118_,_loc118_.setInvisibleInFight,[false]);
               this.api.gfx["\x18\x06\x1c"](_loc117_,false);
               if(_loc118_["\x16\x03\x06"] && this.api.gfx["\x16\f\x0f"])
               {
                  this.api.gfx["\x1a\x1a\x02"](_loc117_,ank.battlefield.Constants["\x18\x02\x1a"]);
               }
               else
               {
                  this.api.gfx["\x1a\x1a\x02"](_loc117_,100);
               }
            }
            break;
         case 165:
            var _loc121_ = _loc7_.split(",");
            var _loc122_ = _loc121_[0];
            var _loc123_ = Number(_loc121_[1]);
            var _loc124_ = Number(_loc121_[2]);
            var _loc125_ = Number(_loc121_[3]);
            break;
         case 200:
            var _loc126_ = _loc7_.split(",");
            var _loc127_ = Number(_loc126_[0]);
            var _loc128_ = Number(_loc126_[1]);
            _loc11_.addAction(87,false,this.api.gfx,this.api.gfx["\x1a\x18\x0e"],[_loc127_,_loc128_]);
            break;
         case 208:
            new org.flashdevelop.utils.FlashConnect.trace("effect 208","dofus.aks.GameActions::onActions","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/aks/GameActions.as",1001);
            var _loc129_ = _loc7_.split(",");
            var _loc130_ = this.api.datacenter.Sprites.getItemAt(_loc6_);
            var _loc131_ = Number(_loc129_[0]);
            var _loc132_ = _loc129_[1];
            var _loc133_ = Number(_loc129_[2]);
            var _loc134_ = !_global.isNaN(Number(_loc129_[3])) ? "anim" + _loc129_[3] : String(_loc129_[3]).split("~");
            var _loc135_ = _loc129_[4] == undefined ? 1 : Number(_loc129_[4]);
            var _loc136_ = new ank.battlefield.datacenter.["\x1b\x18\x04"]();
            _loc136_.file = dofus.Constants["\x1b\x06\x15"] + _loc132_ + ".swf";
            _loc136_.level = _loc135_;
            _loc136_.bInFrontOfSprite = true;
            _loc136_.bTryToBypassContainerColor = true;
            this.api.gfx["\x1b\x07\x0b"](_loc6_,_loc136_,_loc131_,_loc133_,_loc134_);
            break;
         case 228:
            var _loc137_ = _loc7_.split(",");
            var _loc138_ = this.api.datacenter.Sprites.getItemAt(_loc6_);
            var _loc139_ = Number(_loc137_[0]);
            var _loc140_ = _loc137_[1];
            var _loc141_ = Number(_loc137_[2]);
            var _loc142_ = !_global.isNaN(Number(_loc137_[3])) ? "anim" + _loc137_[3] : String(_loc137_[3]).split("~");
            var _loc143_ = _loc137_[4] == undefined ? 1 : Number(_loc137_[4]);
            var _loc144_ = new ank.battlefield.datacenter.["\x1b\x18\x04"]();
            _loc144_.file = dofus.Constants["\x1b\x06\x15"] + _loc140_ + ".swf";
            _loc144_.level = _loc143_;
            _loc144_.bInFrontOfSprite = true;
            _loc144_.bTryToBypassContainerColor = false;
            this.api.gfx["\x1b\x07\x0b"](_loc6_,_loc144_,_loc139_,_loc141_,_loc142_);
            break;
         case 857:
            var _loc145_ = _loc7_.split(",");
            var _loc146_ = _loc145_[0];
            var _loc147_ = !!Number(_loc145_[1]);
            var _loc148_ = !!Number(_loc145_[2]);
            var _loc149_ = !!Number(_loc145_[3]);
            var _loc150_ = Number(_loc145_[4]);
            var _loc151_ = !!Number(_loc145_[5]);
            var _loc152_ = !!_loc145_[6];
            this.api.ui.loadUIComponent("Cinematic","Cinematic",{file:dofus.Constants["\x16\x1b\f"] + _loc146_ + ".swf",background:_loc147_,§\x16\b\x1a§:_loc148_,npc:_loc149_,frameToStart:_loc150_,canCancel:_loc151_,monster:_loc152_});
            break;
         case 999:
            _loc11_.addAction(116,false,this.aks,this.aks["\x1a\x07\x10"],[_loc7_]);
      }
      if(!_global.isNaN(_loc4_) && _loc6_ == this.api.datacenter.Player.ID)
      {
         _loc11_.addAction(117,false,_loc12_,_loc12_["\x15\x1b\x1b"],[_loc4_]);
      }
      else
      {
         _loc12_.end(_loc8_ == this.api.datacenter.Player.ID);
      }
      if(!_loc11_.isPlaying() && _loc13_.bSequence)
      {
         _loc11_.execute(true);
      }
   }
   function cancel(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "AskCancelChallenge")
      {
         this["\x1a\x0b\f"](_loc2_.params.spriteID);
      }
   }
   function yes(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "AskYesNoIgnoreChallenge":
            this["\x15\x1b\x10"](_loc2_.params.spriteID);
            break;
         case "AskYesNoMarriage":
            this["\x15\x1b\x12"](_loc2_.params.refID);
            this.api.gfx["\x15\x1e\x10"](_loc2_.params.spriteID,this.api.lang.getText("YES"));
      }
   }
   function no(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "AskYesNoIgnoreChallenge":
            this["\x1a\x0b\f"](_loc2_.params.spriteID);
            break;
         case "AskYesNoMarriage":
            this["\x1a\x0b\x0e"](_loc2_.params.refID);
            this.api.gfx["\x15\x1e\x10"](_loc2_.params.spriteID,this.api.lang.getText("NO"));
      }
   }
   function ignore(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "AskYesNoIgnoreChallenge")
      {
         this.api.kernel.ChatManager["\x16\x01\x03"](_loc2_.params.player);
         this.api.kernel.showMessage(undefined,this.api.lang.getText("TEMPORARY_BLACKLISTED",[_loc2_.params.player]),"INFO_CHAT");
         this["\x1a\x0b\f"](_loc2_.params.spriteID);
      }
   }
}
