class dofus.§\x18\x18\x0b§.§\x17\x13\x06§ extends dofus.utils.ApiElement
{
   static var §\x1e\f\x10§ = null;
   var §\x1b\x1d\x11§ = new Array();
   var §\x1c\x05\x18§ = false;
   var §\x1c\x05\x12§ = true;
   var §\x1d\x18\x07§ = 0;
   var _aTimeout = new Array();
   static var §\x17\x10\x05§ = 0;
   static var §\x17\x10\x04§ = 1;
   static var §\x17\x10\b§ = 2;
   static var §\x17\x10\x06§ = 3;
   static var §\x17\x10\x07§ = 4;
   static var §\x17\x10\n§ = 5;
   static var §\x17\x10\t§ = 6;
   var §\x1d\x16\x06§ = 0;
   function §\x17\x13\x06§(oAPI)
   {
      super();
      dofus.managers.GameManager["\x1e\f\x10"] = this;
      this.initialize(oAPI);
   }
   function §\x1e\x1d\x13§()
   {
      return this["\x1c\x05\x18"];
   }
   function §\x15\x15§(§\x1b\x17\x16§)
   {
      this["\x1c\x05\x18"] = _loc2_;
      return this["\x1e\x1d\x13"]();
   }
   function §\x1e\x1c\x18§()
   {
      return this["\x1c\x05\x12"];
   }
   function §\x15\n§(§\x1b\x17\x16§)
   {
      this["\x1c\x05\x12"] = _loc2_;
      return this["\x1e\x1c\x18"]();
   }
   function §\x17\x02§(§\x19\x03\x01§)
   {
      this["\x1d\x18\x07"] = _loc2_;
      return this.lastSpellLaunch;
   }
   static function §\x17\x19\t§()
   {
      return dofus.managers.GameManager["\x1e\f\x10"];
   }
   function initialize(oAPI)
   {
      super.initialize(oAPI);
      this.api.ui.addEventListener("removeCursor",this);
   }
   function §\x16\x06\x07§(§\x1b\x06\x1b§)
   {
      var _loc3_ = this.api.ui.loadUIComponent("AskPrivateChat","AskPrivateChat",{title:this.api.lang.getText("WISPER_MESSAGE") + " " + this.api.lang.getText("TO_DESTINATION") + " " + _loc2_,params:{playerName:_loc2_}});
      _loc3_.addEventListener("send",this);
      _loc3_.addEventListener("addfriend",this);
   }
   function §\x18\x02\x1d§()
   {
      if(this.api.datacenter.Game["\x17\x10\x02"] == dofus.managers.GameManager["\x17\x10\x05"] || this.api.datacenter.Basics.aks_current_server.typeNum != dofus.datacenter.Server.SERVER_HARDCORE)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("DO_U_GIVEUP"),"CAUTION_YESNO",{name:"GiveUp",listener:this});
      }
      else
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("DO_U_SUICIDE"),"CAUTION_YESNO",{name:"GiveUp",listener:this});
      }
   }
   function §\x19\x12\x1a§()
   {
      this.api.network.Exchange["\x16\x06\x05"]();
   }
   function §\x16\x06\x05§(§\x16\x03\x04§, §\x1b\x0e\x02§, §\x1a\x07\x01§)
   {
      this.api.kernel.showMessage(undefined,this.api.lang.getText("DO_U_OFFLINEEXCHANGE",[_loc2_,_loc3_,_loc4_]),"CAUTION_YESNO",{name:"OfflineExchange",listener:this,price:_loc4_});
   }
   function §\x1b\t\x0f§(§\x19\x07\x04§, §\x1b\b\x10§, §\x19\x04\x12§)
   {
      var _loc5_ = this.api.datacenter.Player.data;
      if(_loc5_.isInMove)
      {
         _loc5_.isInMove = false;
         _loc5_.GameActionsManager.cancel(_loc5_.cellNum,true);
      }
      this.api.network.Exchange["\x1a\r\x13"](_loc2_,Number(_loc3_),_loc4_);
   }
   function §\x1b\t\r§(§\x1b\b\x10§)
   {
      var _loc3_ = this.api.datacenter.Player.data;
      if(_loc3_.isInMove)
      {
         _loc3_.isInMove = false;
         _loc3_.GameActionsManager.cancel(_loc3_.cellNum,true);
      }
      this.api.network.Dialog["\x17\x02\x04"](_loc2_);
   }
   function §\x16\x05\x15§(§\x1b\b\x10§)
   {
      var _loc3_ = this.api.datacenter.Sprites.getItemAt(_loc2_);
      var _loc4_ = "";
      if(!this.api.datacenter.Player.rank.enable)
      {
         _loc4_ += this.api.lang.getText("DO_U_ATTACK_WHEN_PVP_DISABLED");
      }
      if(_loc3_.rank.value == 0)
      {
         if(_loc4_ != "")
         {
            _loc4_ += "\n\n";
         }
         _loc4_ += this.api.lang.getText("DO_U_ATTACK_NEUTRAL");
      }
      if(_loc4_ != "")
      {
         _loc4_ += "\n\n";
      }
      if(!this.api.lang.getConfigText("SHOW_PVP_GAIN_WARNING_POPUP"))
      {
         _loc3_.pvpGain = 0;
      }
      new org.flashdevelop.utils.FlashConnect.trace("SHOW_PVP_GAIN_WARNING_POPUP : " + this.api.lang.getConfigText("SHOW_PVP_GAIN_WARNING_POPUP") + " (" + _loc3_.pvpGain + ")","dofus.managers.GameManager::askAttack","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/managers/GameManager.as",204);
      switch(_loc3_.pvpGain)
      {
         case -1:
            _loc4_ += this.api.lang.getText("DO_U_ATTACK_NO_GAIN",[_loc3_.name]);
            break;
         case 1:
            _loc4_ += this.api.lang.getText("DO_U_ATTACK_BONUS_GAIN",[_loc3_.name]);
            break;
         default:
            _loc4_ += this.api.lang.getText("DO_U_ATTACK",[_loc3_.name]);
      }
      this.api.kernel.showMessage(undefined,_loc4_,"CAUTION_YESNO",{name:"Punish",listener:this,params:{spriteID:_loc2_}});
   }
   function askAttackIndoor()
   {
      var _loc2_ = "";
      if(!this.api.datacenter.Player.rank.enable)
      {
         _loc2_ += this.api.lang.getText("DO_U_ATTACK_WHEN_PVP_DISABLED") + "\n\n";
      }
      _loc2_ += this.api.lang.getText("DO_U_ATTACK",[this.api.lang.getText("YOUR_TARGET")]);
      this.api.kernel.showMessage(undefined,_loc2_,"CAUTION_YESNO",{name:"PunishIndoor",listener:this});
   }
   function §\x16\x06\t§(§\x1b\b\x10§)
   {
      var _loc3_ = this.api.datacenter.Sprites.getItemAt(_loc2_).name;
      this.api.kernel.showMessage(undefined,this.api.lang.getText("DO_U_REMOVE_TAXCOLLECTOR",[_loc3_]),"CAUTION_YESNO",{name:"RemoveTaxCollector",listener:this,params:{spriteID:_loc2_}});
   }
   function §\x1b\x16\x19§(§\x18\x1b\x10§, §\x19\x04\x12§, §\x19\x0e\f§, nInstancedID)
   {
      var _loc6_ = this.api.datacenter.Player.data.GameActionsManager;
      if(_loc6_ == undefined || _loc6_["\x18\x0f\n"](1))
      {
         return undefined;
      }
      if(this.api.gfx["\x19\x15\x04"](_loc2_))
      {
         this.api.datacenter.Game["\x19\x10\x05"] |= dofus.datacenter..Game["\x1b\t\x1c"];
         if(nInstancedID != undefined)
         {
            this.api.network.GameActions["\x1a\x13\x14"](500,[_loc3_,_loc4_,nInstancedID]);
         }
         else
         {
            this.api.network.GameActions["\x1a\x13\x14"](500,[_loc3_,_loc4_]);
         }
      }
   }
   function §\x1b\x16\x1c§(§\x19\x0e\f§)
   {
      this.api.network.GameActions["\x1a\x13\x14"](507,[_loc2_]);
   }
   function §\x1a\x16\x0b§(§\x19\b\x16§)
   {
      if(this.api.datacenter.Player.isCurrentPlayer)
      {
         this.api.gfx["\x1a\x17\x06"](_loc2_);
      }
   }
   function §\x16\x1b\x15§(§\x1b\b\x10§)
   {
      if(_loc2_ != this.api.datacenter.Game["\x17\x03\x1a"])
      {
         var _loc3_ = this.api.datacenter.Sprites.getItemAt(_loc2_);
         _loc3_["\x17\f\t"].nextTurn();
         _loc3_["\x16\x19\x06"].nextTurn();
         _loc3_.GameActionsManager.clear();
      }
   }
   function §\x16\x1b\x18§(§\x16\x0e\x04§)
   {
      if(_loc2_ && this.api.datacenter.Game.isRunning)
      {
         if(this.api.datacenter.Game["\x18\x0b\t"] == dofus.datacenter..Game["\x18\x0b\x1b"] || this.api.datacenter.Game["\x18\x0b\t"] == dofus.datacenter..Game["\x18\x0b\x17"])
         {
            var _loc3_ = this.api.datacenter.Player["\x17\x03\x1d"];
            if(_loc3_ != null)
            {
               var _loc4_ = this.api.datacenter.Game["\x18\x0b\t"] == dofus.datacenter..Game["\x18\x0b\x1b"];
               this["\x1b\r\n"](_loc3_,_loc4_);
               return undefined;
            }
         }
      }
      this.api.ui.removeCursor();
      this.api.gfx["\x16\x1c\x13"]("spell");
      this.api.gfx["\x16\x1c\x0b"]();
      this.api.gfx["\x1b\x13\x18"](true);
      delete this.api.datacenter.Player["\x17\x03\x1d"];
      if(!(this.api.datacenter.Game.isFight && !this.api.datacenter.Game.isRunning))
      {
         this.api.datacenter.Game["\x1a\x17\t"]("move");
      }
      this.api.datacenter.Player["\x18\x0b\b"].setState(this.api.datacenter.Game.isFight);
   }
   function §\x1b\x0f\x0e§()
   {
      if(!this.api.datacenter.Basics.isLogged)
      {
         return undefined;
      }
      this.api.sounds["\x17\x0e\x06"]["\x19\x18\x01"]();
      this.api.sounds["\x1a\x05\x1a"](this.api.datacenter.["\x18\x18\x0e"].musicID);
      if(!this.api.datacenter.Game["\x18\x0f\x1b"])
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("OPEN_WINDOW",[this.api.lang.getText("GAME_END"),"<b><a href=\"asfunction:onHref,showEndPanel," + this.api.datacenter.Game["\x1a\x0e\t"].id + ",false\">" + this.api.lang.getText("FIGHT_END") + "</a></b>"]),"INFO_CHAT");
         this.printFightResultInfo(8,this.api.datacenter.Basics.exp_lastGained);
         this.printFightResultInfo(45,this.api.datacenter.Basics.kamas_lastGained);
         this.printFightResultInfo(209,this.api.datacenter.Basics.guildExp_lastGained);
         this.printFightResultInfo(210,this.api.datacenter.Basics.mountExp_lastGained);
         if(!this.api.datacenter.Player.isSkippingLootPanel)
         {
            this.showEndPanel(this.api.datacenter.Basics.currentSessionFightCount,false);
         }
      }
      else
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("GAME_END"),"INFO_CHAT");
         if(!this.api.datacenter.Player.isSkippingLootPanel)
         {
            this.showEndPanel(-1,false);
         }
      }
      this.api.gfx["\x16\x1b\x14"]();
      this.api.network.Game.extendIn["\x19\x19\x16"]();
   }
   function showEndPanel(§\x19\b\x0b§, bInputIsIndex)
   {
      var _loc4_ = this.api.datacenter.Game.resultsArray;
      var _loc6_ = _loc2_ == -1 || _loc2_ == undefined;
      if(!bInputIsIndex)
      {
         if(!_loc6_)
         {
            var _loc5_ = _loc4_.findFirstItem("id",_loc2_).index;
            if(_loc5_ == -1)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("FIGHT_HISTORY_EXPIRED"),"ERROR_CHAT");
               return undefined;
            }
         }
      }
      else
      {
         _loc5_ = _loc2_;
      }
      if(this.api.kernel.OptionsManager.getOption("UseLightEndFightUI") && this.api.datacenter.Game["\x1a\x0e\t"].currentPlayerInfos.length != 0)
      {
         this.api.ui.loadUIComponent("GameResultLight","GameResultLight",{data:(!_loc6_ ? _loc4_[_loc5_] : this.api.datacenter.Game["\x1a\x0e\t"])},{bAlwaysOnTop:true});
      }
      else
      {
         this.api.ui.loadUIComponent("GameResult","GameResult",{data:(!_loc6_ ? _loc4_[_loc5_] : this.api.datacenter.Game["\x1a\x0e\t"])},{bAlwaysOnTop:true});
      }
   }
   function §\x1b\r\b§(§\x19\x13\x07§)
   {
      if(this.api.datacenter.Game.isFight)
      {
         return undefined;
      }
      this.api.gfx["\x16\x1c\x0b"]();
      this.api.gfx["\x15\x1e\x07"]("C",0,dofus.Constants["\x16\x18\x07"],this.api.datacenter.Player.data.cellNum);
      this.api.datacenter.Player["\x17\x03\x1d"] = _loc2_;
      this.api.datacenter.Game["\x1a\x17\t"]("target");
      this.api.gfx["\x1a\x17\x06"](ank.battlefield.Constants["\x18\x0b\r"]);
      this.api.ui["\x1a\x15\x19"](_loc2_,{width:25,height:25,x:15,y:15});
      this.api.datacenter.Basics.gfx_canLaunch = false;
      dofus["\x17\t\r"].getInstance()["\x17\x12\x06"]();
   }
   function §\x1b\r\x06§()
   {
      if(!this.api.datacenter.Game.isFight)
      {
         return false;
      }
      this.api.gfx["\x16\x1c\x0b"]();
      this.api.gfx["\x1b\x13\x1b"]("startPosition");
      this.api.gfx["\x15\x1e\x07"]("C",0,dofus.Constants["\x16\x18\x07"],this.api.datacenter.Player.data.cellNum);
      this.api.datacenter.Game["\x1a\x17\t"]("flag");
      this.api.gfx["\x1a\x17\x06"](ank.battlefield.Constants["\x18\x0b\r"]);
      this.api.ui.removeCursor();
      this.api.datacenter.Basics.gfx_canLaunch = false;
      dofus["\x17\t\r"].getInstance()["\x17\x12\x06"]();
      return true;
   }
   function §\x1b\r\n§(§\x1a\x02\x06§, §\x16\x12\x1a§, §\x16\x0b\x1c§)
   {
      if(_loc4_ != true)
      {
         if(!this.api.datacenter.Game.isRunning)
         {
            return undefined;
         }
         var _loc5_ = this.api.datacenter.Player.data;
         var _loc6_ = _loc5_.sequencer;
         if(_loc5_.isInMove)
         {
            return undefined;
         }
         if(_loc6_["\x17\x01\x03"](_loc5_.GameActionsManager,_loc5_.GameActionsManager["\x1b\x11\n"]))
         {
            return undefined;
         }
         if(_loc5_.GameActionsManager["\x18\x10\x10"]())
         {
            return undefined;
         }
         if(_loc5_.GameActionsManager.m_bNextAction)
         {
            return undefined;
         }
         if(this["\x1d\x18\x07"] + ank.battlefield.Constants["\x18\x1d\x01"] > 6342)
         {
            return undefined;
         }
         if(!this.api.datacenter.Player["\x1b\x06\x12"]["\x16\x19\x19"](_loc2_.ID,undefined))
         {
            if(this.api.datacenter.Basics.spellManager_errorMsg != undefined)
            {
               this.api.kernel.showMessage(undefined,this.api.datacenter.Basics.spellManager_errorMsg,"ERROR_CHAT");
               delete this.api.datacenter.Basics.spellManager_errorMsg;
            }
            return undefined;
         }
      }
      this.api.gfx["\x18\x18\x15"]["\x1a\r\x1b"]();
      this.api.datacenter.Player.isCurrentSpellForced = _loc4_;
      delete this.api.datacenter.Basics.interactionsManager_path;
      this.api.gfx["\x1b\x13\x18"](true);
      this.api.datacenter.Player["\x17\x03\x1d"] = _loc2_;
      this.api.gfx["\x16\x1c\x13"]("spell");
      this.api.gfx["\x16\x1c\x13"]("move");
      this.api.gfx["\x16\x1c\x0b"]();
      var _loc7_ = this.api.datacenter.Player.data.cellNum;
      if(_loc2_["\x1a\t\x13"] != 63)
      {
         var _loc8_ = _loc2_["\x1a\t\x13"];
         var _loc9_ = _loc2_["\x1a\t\x14"];
         if(_loc8_ != 0 && _loc3_)
         {
            var _loc10_ = _loc2_.rangeModerator;
            _loc8_ += _loc10_;
            _loc8_ = Math.max(_loc9_,_loc8_);
         }
         if(_loc2_["\x18\x15\x06"])
         {
            this.api.gfx["\x17\n\x10"](_loc7_,_loc9_,_loc8_,"spell",dofus.Constants["\x16\x18\b"],"X".charCodeAt(0));
            this["\x17\t\x17"](true,_loc7_,_loc9_,_loc8_,false);
         }
         else
         {
            this.api.gfx["\x17\n\x10"](_loc7_,_loc9_,_loc8_,"spell",dofus.Constants["\x16\x18\b"],"C".charCodeAt(0));
            this["\x17\t\x17"](false,_loc7_,_loc9_,_loc8_,false);
         }
      }
      else
      {
         this.api.gfx["\x17\n\x10"](0,0,100,"spell",dofus.Constants["\x16\x18\b"],"C".charCodeAt(0));
      }
      var _loc11_ = _loc2_["\x17\f\x0e"];
      var _loc12_ = 0;
      while(_loc12_ < _loc11_.length)
      {
         if(!(_loc11_[_loc12_].size >= 63 && _loc11_[_loc12_].shape != "L"))
         {
            this.api.gfx["\x15\x1e\x07"](_loc11_[_loc12_].shape,_loc11_[_loc12_].size,dofus.Constants["\x16\x18\x07"],_loc7_);
         }
         _loc12_ = _loc12_ + 1;
      }
      if(_loc3_)
      {
         this.api.datacenter.Game["\x1a\x17\t"]("spell");
      }
      else
      {
         this.api.datacenter.Game["\x1a\x17\t"]("cc");
      }
      this.api.ui["\x1a\x15\x19"](_loc2_,{width:25,height:25,x:15,y:15},true);
      if(this.api.datacenter.Player.isCurrentPlayer && this.api.gfx["\x1a\x0e\x16"] != undefined)
      {
         this.api.datacenter.Basics.gfx_canLaunch = this.api.datacenter.Player["\x1b\x06\x12"]["\x16\x19\x1a"](this.api.gfx["\x18\x18\x15"],_loc2_,this.api.gfx["\x18\x18\x15"]["\x17\x14\x1d"](this.api.gfx["\x1a\x0e\x16"].data.cellNum),_loc2_.rangeModerator,false);
         if(this.api.datacenter.Basics.gfx_canLaunch)
         {
            this.api.gfx["\x17\n\x0b"](this.api.gfx["\x1a\x0e\x16"].data.cellNum);
         }
      }
      else
      {
         this.api.datacenter.Basics.gfx_canLaunch = false;
         dofus["\x17\t\r"].getInstance()["\x17\x12\x06"]();
      }
      this.api.ui["\x1a\x15\x1a"](!this.api.datacenter.Basics.gfx_canLaunch,dofus.Constants["\x17\x12\x04"]);
   }
   function §\x17\t\x17§(§\x18\x15\x06§, §\x1a\x01\x1c§, §\x18\n\x1a§, §\x1a\x02\x16§, bAnimate)
   {
      if(!this.api.kernel.OptionsManager.getOption("AdvancedLineOfSight"))
      {
         return undefined;
      }
      var _loc7_ = this.api.gfx["\x18\x18\x15"].validCellsData;
      var _loc8_ = new Array();
      var _loc9_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\x1a"](this.api.gfx["\x18\x18\x15"],_loc3_);
      var _loc10_ = this.api.datacenter.Player["\x17\x03\x1d"];
      var _loc11_ = 0;
      for(; _loc11_ < _loc7_.length; _loc11_ = _loc11_ + 1)
      {
         var _loc12_ = _loc7_[_loc11_];
         var _loc13_ = ank.battlefieldutils.["\x1a\x04\b"]["\x18\x03\f"](this.api.gfx["\x18\x18\x15"],_loc3_,_loc12_.num);
         if(_loc13_ >= _loc4_ && _loc13_ <= _loc5_)
         {
            if(_loc2_)
            {
               if(!ank.battlefieldutils.["\x1a\x04\b"]["\x16\x19\x16"](this.api.gfx["\x18\x18\x15"],_loc3_,_loc12_.num))
               {
                  continue;
               }
            }
            if(this.api.datacenter.Player["\x1b\x06\x12"]["\x16\x19\x1a"](this.api.gfx["\x18\x18\x15"],_loc10_,_loc12_,0,true))
            {
               this.api.gfx.select(_loc12_.num,26316,"spell",50,false);
            }
         }
      }
   }
   function §\x1a\x1d\x0b§()
   {
      var _loc2_ = this.api.datacenter.Player.rank["\x17\x07\x17"];
      if(_loc2_ > 0)
      {
         var _loc3_ = "";
         var _loc4_ = 1;
         while(_loc4_ <= _loc2_)
         {
            var _loc5_ = this.api.lang.getText("DISGRACE_SANCTION_" + _loc4_);
            if(_loc5_ != undefined && (_loc5_ != "undefined" && _loc5_.charAt(0) != "!"))
            {
               _loc3_ += "\n\n" + _loc5_;
            }
            _loc4_ = _loc4_ + 1;
         }
         if(_loc3_ != "")
         {
            _loc3_ = this.api.lang.getText("DISGRACE_SANCTION",[ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("POINTS",[_loc2_]),"m",_loc2_ < 2)]) + _loc3_;
            this.api.kernel.showMessage(this.api.lang.getText("INFORMATIONS"),_loc3_,"ERROR_BOX");
         }
      }
   }
   function §\x18\x01\x01§(§\x16\x01\x13§, §\x16\x14\x18§, §\x19\x0e\x16§)
   {
      var _loc5_ = new Array();
      var _loc6_ = _loc2_.length;
      if(typeof _loc2_ == "object")
      {
         var _loc7_ = 0;
         while(_loc7_ < _loc6_)
         {
            var _loc8_ = _loc2_[_loc7_];
            var _loc9_ = _loc8_[0];
            var _loc10_ = !(_loc4_ > 0 && this.api.kernel["\x1b\x06\x10"]["\x18\f\x19"](_loc9_)) ? -1 : this.api.kernel["\x1b\x06\x10"]["\x18\x01\x04"](_loc9_,_loc4_);
            var _loc11_ = new dofus.datacenter.["\x17\f\x02"](undefined,_loc9_,_loc8_[1],_loc8_[2],_loc8_[3],undefined,_loc8_[4],undefined,_loc10_,_loc8_[6]);
            if(_loc3_ == true)
            {
               if(_loc11_["\x1a\x1d\x1b"])
               {
                  _loc5_.push(_loc11_.description);
               }
            }
            else
            {
               _loc5_.push(_loc11_.description);
            }
            _loc7_ = _loc7_ + 1;
         }
         return _loc5_.join(", ");
      }
      return null;
   }
   function §\x18\x01\x02§(§\x16\x01\x13§, §\x19\x0e\x16§)
   {
      var _loc4_ = new Array();
      var _loc5_ = _loc2_.length;
      if(typeof _loc2_ == "object")
      {
         var _loc6_ = 0;
         while(_loc6_ < _loc5_)
         {
            var _loc7_ = _loc2_[_loc6_];
            var _loc8_ = _loc7_[0];
            var _loc9_ = -1;
            if(_loc3_ > 0)
            {
               if(this.api.kernel["\x1b\x06\x10"]["\x18\f\x18"](_loc8_))
               {
                  _loc9_ = this.api.kernel["\x1b\x06\x10"]["\x18\x01\x04"](dofus.managers["\x1b\x06\x10"]["\x15\x1c\x0f"],_loc3_);
               }
               else if(this.api.kernel["\x1b\x06\x10"]["\x18\f\x17"](_loc8_))
               {
                  _loc9_ = this.api.kernel["\x1b\x06\x10"]["\x18\x01\x04"](dofus.managers["\x1b\x06\x10"]["\x15\x1c\x0e"],_loc3_);
               }
            }
            var _loc10_ = new dofus.datacenter.["\x17\f\x02"](undefined,_loc8_,_loc7_[1],_loc7_[2],_loc7_[3],_loc7_[7],_loc7_[4],undefined,_loc9_,_loc7_[6]);
            _loc10_["\x1a\x07\r"] = _loc7_[5];
            _loc4_.push(_loc10_);
            _loc6_ = _loc6_ + 1;
         }
         return _loc4_;
      }
      return null;
   }
   function removeCursor(oEvent)
   {
      switch(this.api.datacenter.Game["\x18\x0b\t"])
      {
         case 2:
         case 3:
            if(!this.api.datacenter.Basics.gfx_canLaunch)
            {
               this.api.datacenter.Game["\x1a\x17\t"]("move");
            }
            this.api.gfx.clearSpellPreview();
            break;
         case 5:
            if(!this.api.datacenter.Basics.gfx_canLaunch)
            {
               this.api.datacenter.Game["\x1a\x17\t"]("move");
            }
            this.api.gfx["\x1a\x17\x06"](ank.battlefield.Constants["\x18\x0b\f"]);
            this.api.gfx["\x16\x1c\x0b"]();
            this.api.gfx["\x1b\x13\x1b"]("startPosition");
      }
   }
   function yes(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "AskYesNoGiveUp":
            this.api.network.Game["\x18\x13\x1d"]();
            break;
         case "AskYesNoOfflineExchange":
            this.api.network.Exchange["\x19\x12\x1a"]();
            break;
         case "AskYesNoPunish":
            this.api.network.GameActions["\x16\x06\x19"](_loc2_.params.spriteID);
            break;
         case "AskYesNoAttack":
            this.api.network.GameActions["\x16\x06\x19"](_loc2_.params.spriteID);
            break;
         case "AskYesNoRemoveTaxCollector":
            this.api.network.Guild["\x1a\r\x02"](_loc2_.params.spriteID);
            break;
         case "AskYesNoPunishIndoor":
            this.api.network.GameActions.bringHuntTarget();
      }
   }
   function send(oEvent)
   {
      if(_loc2_.message.length != 0)
      {
         this.api.kernel.Console.process("/w " + _loc2_.params.playerName + " " + _loc2_.message);
      }
   }
   function addfriend(oEvent)
   {
      this.api.network.Friends["\x15\x1d\x10"](_loc2_.params.playerName);
   }
   function updateCompass(§\x19\x10\x1a§, §\x19\x11\x05§, §\x16\x0b\x1c§)
   {
      var _loc5_ = this.api.ui.getUIComponent("Banner");
      if(!_loc4_ && (this.api.datacenter.Basics["\x16\b\x1c"][0] == _loc2_ && this.api.datacenter.Basics["\x16\b\x1c"][1] == _loc3_) || (_global.isNaN(_loc2_) || _global.isNaN(_loc3_)))
      {
         this.api.datacenter.Basics["\x16\b\x1c"] = undefined;
         delete this.api.datacenter.Basics["\x16\b\x1c"];
         if(_loc5_["\x18\b\x13"] != "map")
         {
            _loc5_.circleXtra["\x1a\x1c\x1d"]("artwork",true,{bMask:true});
         }
         return false;
      }
      var _loc6_ = this.api.datacenter.["\x18\x18\x0e"];
      if(_loc5_["\x18\b\x13"] != "map")
      {
         _loc5_.circleXtra["\x1a\x1c\x1d"]("compass",true,{bMask:true},{updateOnLoad:false});
      }
      _loc5_.circleXtra["\x1a\x15\x0f"]({allCoords:{targetCoords:[_loc2_,_loc3_],currentCoords:[_loc6_.x,_loc6_.y]}});
      this.api.datacenter.Basics["\x16\b\x1c"] = [_loc2_,_loc3_];
      return true;
   }
   function §\x18\x0e\r§(§\x18\x10\x18§, §\x1b\x02\x0b§, §\x18\x19\x15§)
   {
      var _loc5_ = this.api.lang["\x17\x1e\x15"](_loc3_).cl;
      var _loc6_ = 0;
      while(_loc6_ < _loc5_.length)
      {
         var _loc7_ = _loc5_[_loc6_];
         var _loc8_ = this.api.lang["\x17\x15\x19"](_loc7_);
         if(_loc8_.length <= _loc4_)
         {
            var _loc9_ = 0;
            while(_loc9_ < _loc8_.length)
            {
               if(_loc8_[_loc9_][0] == _loc2_)
               {
                  return true;
               }
               _loc9_ = _loc9_ + 1;
            }
         }
         _loc6_ = _loc6_ + 1;
      }
      return false;
   }
   function §\x16\x03\x12§(§\x17\n\x17§, §\x1b\x02\x0b§, §\x18\x19\x15§)
   {
      var _loc5_ = this.api.lang["\x17\x1e\x15"](_loc3_).cl;
      var _loc6_ = 0;
      while(_loc6_ < _loc5_.length)
      {
         var _loc7_ = _loc5_[_loc6_];
         var _loc8_ = this.api.lang["\x17\x15\x19"](_loc7_);
         if(_loc8_.length <= _loc4_)
         {
            var _loc9_ = 0;
            var _loc10_ = 0;
            while(_loc10_ < _loc8_.length)
            {
               var _loc11_ = _loc8_[_loc10_];
               var _loc12_ = _loc11_[0];
               var _loc13_ = _loc11_[1];
               var _loc14_ = _loc2_.findFirstItem("unicID",_loc12_);
               if(!(_loc14_.index != -1 && _loc14_.item.Quantity == _loc13_))
               {
                  break;
               }
               _loc9_ = _loc9_ + 1;
               _loc10_ = _loc10_ + 1;
            }
            if(_loc9_ == _loc8_.length)
            {
               if(_loc2_.length == _loc8_.length)
               {
                  return _loc7_;
               }
               if(_loc2_.length == _loc8_.length + 1)
               {
                  if(_loc2_.findFirstItem("unicID",7508).index != -1)
                  {
                     return _loc7_;
                  }
               }
            }
         }
         _loc6_ = _loc6_ + 1;
      }
      return undefined;
   }
   function §\x18\x1c\x15§(§\x15\x1b\x05§, §\x15\x1b\x06§)
   {
      var _loc4_ = new ank.utils.ExtendedArray();
      var _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         _loc4_.push(_loc2_[_loc5_]);
         _loc5_ = _loc5_ + 1;
      }
      var _loc6_ = 0;
      while(_loc6_ < _loc3_.length)
      {
         _loc4_.push(_loc3_[_loc6_]);
         _loc6_ = _loc6_ + 1;
      }
      return _loc4_;
   }
   function §\x18\x1c\x16§(§\x18\f\n§)
   {
      var _loc3_ = new ank.utils.ExtendedArray();
      var _loc4_ = new Object();
      var _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         var _loc6_ = _loc2_[_loc5_];
         if(_loc4_[_loc6_.unicID] == undefined)
         {
            _loc4_[_loc6_.unicID] = _loc6_["\x16\x1c\x1b"]();
         }
         else
         {
            _loc4_[_loc6_.unicID].Quantity += _loc6_.Quantity;
         }
         _loc5_ = _loc5_ + 1;
      }
      for(var a in _loc4_)
      {
         _loc3_.push(_loc4_[a]);
      }
      return _loc3_;
   }
   function §\x17\x1e\x01§(§\x19\r\r§)
   {
      if(_loc2_ == -1)
      {
         return this.api.lang.getText("OPEN_BETA_ACCOUNT");
      }
      if(_loc2_ == 0)
      {
         return this.api.lang.getText("SUBSCRIPTION_OUT");
      }
      var _loc3_ = new Date();
      _loc3_.setTime(_loc2_);
      var _loc4_ = _loc3_.getUTCFullYear() - 1970;
      var _loc5_ = _loc3_.getUTCMonth();
      var _loc6_ = _loc3_.getUTCDate() - 1;
      var _loc7_ = _loc3_.getUTCHours();
      var _loc8_ = _loc3_.getUTCMinutes();
      var _loc9_ = " " + this.api.lang.getText("AND") + " ";
      var _loc10_ = this.api.lang.getText("REMAINING_TIME") + " ";
      if(_loc4_ != 0 && _loc5_ == 0)
      {
         var _loc11_ = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("YEARS"),"m",_loc4_ == 1);
         _loc10_ += _loc4_ + " " + _loc11_;
      }
      else if(_loc4_ != 0 && _loc5_ != 0)
      {
         var _loc12_ = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("YEARS"),"m",_loc4_ == 1);
         var _loc13_ = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("MONTHS"),"m",_loc5_ == 1);
         _loc10_ += _loc4_ + " " + _loc12_ + _loc9_ + _loc5_ + " " + _loc13_;
      }
      else if(_loc5_ != 0 && _loc6_ == 0)
      {
         var _loc14_ = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("MONTHS"),"m",_loc5_ == 1);
         _loc10_ += _loc5_ + " " + _loc14_;
      }
      else if(_loc5_ != 0 && _loc6_ != 0)
      {
         var _loc15_ = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("MONTHS"),"m",_loc5_ == 1);
         var _loc16_ = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("DAYS"),"m",_loc6_ == 1);
         _loc10_ += _loc5_ + " " + _loc15_ + _loc9_ + _loc6_ + " " + _loc16_;
      }
      else if(_loc6_ != 0 && _loc7_ == 0)
      {
         var _loc17_ = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("DAYS"),"m",_loc6_ == 1);
         _loc10_ += _loc6_ + " " + _loc17_;
      }
      else if(_loc6_ != 0 && _loc7_ != 0)
      {
         var _loc18_ = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("DAYS"),"m",_loc6_ == 1);
         var _loc19_ = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("HOURS"),"m",_loc7_ == 1);
         _loc10_ += _loc6_ + " " + _loc18_ + _loc9_ + _loc7_ + " " + _loc19_;
      }
      else if(_loc7_ != 0 && _loc8_ == 0)
      {
         var _loc20_ = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("HOURS"),"m",_loc7_ == 1);
         _loc10_ += _loc7_ + " " + _loc20_;
      }
      else if(_loc7_ != 0 && _loc8_ != 0)
      {
         var _loc21_ = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("HOURS"),"m",_loc7_ == 1);
         var _loc22_ = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("MINUTES"),"m",_loc8_ == 1);
         _loc10_ += _loc7_ + " " + _loc21_ + _loc9_ + _loc8_ + " " + _loc22_;
      }
      else if(_loc8_ != 0)
      {
         var _loc23_ = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("MINUTES"),"m",_loc8_ == 1);
         _loc10_ += _loc8_ + " " + _loc23_;
      }
      return _loc10_;
   }
   function §\x1b\x1b\f§(§\x19\x11\x0b§, §\x1b\x19\x14§, §\x1b\x1a\x14§, §\x1b\x1a\x0e§, §\x1b\x1a\x1b§)
   {
      var _loc7_ = this.api.gfx.container;
      var _loc8_ = ank.battlefield.Constants["\x16\x18\t"];
      var _loc9_ = ank.battlefield.Constants["\x16\x18\x01"];
      if(_loc2_ != undefined)
      {
         var _loc10_ = this.api.gfx["\x1a\x11\t"];
         var _loc11_ = this.api.gfx["\x1a\x11\x07"];
         if(_loc3_ == undefined)
         {
            _loc3_ = _loc10_ / 2;
         }
         if(_loc4_ == undefined)
         {
            _loc3_ = _loc11_ / 2;
         }
         if(_loc5_ == undefined)
         {
            _loc5_ = _loc10_ / 2;
         }
         if(_loc6_ == undefined)
         {
            _loc6_ = _loc11_ / 2;
         }
         var _loc12_ = _loc3_ * _loc2_ / 100;
         var _loc13_ = _loc4_ * _loc2_ / 100;
         var _loc14_ = _loc5_ - _loc12_;
         var _loc15_ = _loc6_ - _loc13_;
         var _loc16_ = (this.api.datacenter.["\x18\x18\x0e"].width - 1) * _loc8_ * _loc2_ / 100;
         var _loc17_ = (this.api.datacenter.["\x18\x18\x0e"].height - 1) * _loc9_ * _loc2_ / 100;
         if(_loc14_ > 0)
         {
            _loc14_ = 0;
         }
         if(_loc14_ + _loc16_ < _loc10_)
         {
            _loc14_ = _loc10_ - _loc16_;
         }
         if(_loc15_ > 0)
         {
            _loc15_ = 0;
         }
         if(_loc15_ + _loc17_ < _loc11_)
         {
            _loc15_ = _loc11_ - _loc17_;
         }
         _loc7_.zoom(_loc2_);
         _loc7_["\x1a\x1b\t"](_loc14_,_loc15_);
      }
      else
      {
         if(!_loc7_["\x1b\x1b\x0e"]())
         {
            _loc7_.zoom(100);
         }
         _loc7_.center();
      }
   }
   function §\x1b\x1b\r§(§\x19\x11\x0b§, §\x1b\x1a\x0e§, §\x1b\x1a\x1b§)
   {
      var _loc5_ = Stage.width;
      var _loc6_ = Stage.height;
      var _loc7_ = _loc3_ * _loc2_ / 100;
      var _loc8_ = _loc4_ * _loc2_ / 100;
      if(_loc2_ <= 100)
      {
         var _loc9_ = 0;
         var _loc10_ = 0;
      }
      else
      {
         _loc9_ = _loc3_ - _loc7_;
         _loc10_ = _loc4_ - _loc8_;
      }
      var _loc11_ = _root;
      _loc11_._xscale = _loc2_;
      _loc11_._yscale = _loc2_;
      _loc11_._x = _loc9_;
      _loc11_._y = _loc10_;
   }
   function §\x1a\x1e\r§(§\x1a\x02\t§)
   {
      var _loc3_ = _loc2_;
      if(_loc3_ == null)
      {
         return undefined;
      }
      var _loc4_ = this.api.datacenter.Game.isFight;
      var _loc5_ = _loc3_.id;
      var _loc6_ = _loc3_.name;
      var _loc7_ = this.api.ui["\x17\x02\x19"]();
      _loc7_["\x15\x1e\x18"](_loc6_);
      if(_loc4_ && (!this.api.datacenter.Game.isRunning && (_loc3_["\x18\x12\x02"] || this.api.datacenter.Player.isAuthorized)))
      {
         _loc7_["\x15\x1d\x12"](this.api.lang.getText("KICK"),this.api.network.Game,this.api.network.Game["\x18\x13\x1d"],[_loc5_]);
      }
      if(_loc7_.items.length > 1)
      {
         _loc7_.show(_root._xmouse,_root._ymouse,true);
      }
   }
   function §\x16\x04\x0b§()
   {
      if(!this.api.datacenter.Game.isFight && this.api.gfx["\x18\r\b"])
      {
         var _loc2_ = this.api.datacenter.Game["\x1a\x05\x10"];
         var _loc3_ = this.api.kernel.OptionsManager.getOption("CreaturesMode");
         if(_loc2_ >= _loc3_)
         {
            this.api.gfx.spriteHandler["\x1a\x15\x17"](true);
         }
         else if(_loc2_ < _loc3_ - 2)
         {
            this.api.gfx.spriteHandler["\x1a\x15\x17"](false);
         }
      }
   }
   function §\x1a\x1c\x1b§(§\x16\x03\t§)
   {
      var _loc3_ = false;
      var _loc4_ = this.api.ui["\x17\x02\x19"]();
      for(var k in _loc2_)
      {
         var _loc5_ = this.api.gfx["\x18\x01\b"](k);
         if(_loc5_ instanceof dofus.datacenter.["\x16\x19\x02"] || _loc5_ instanceof dofus.datacenter.["\x19\x02\x13"] && _loc5_["\x1a\x1d\x1c"])
         {
            if(_loc5_.gfxID != ank.battlefield.datacenter..Sprite.ANGELS_OF_THE_WORLD_SPRITE_ID)
            {
               _loc3_ = true;
               var _loc6_ = _loc5_.name + " >>";
               _loc4_["\x15\x1d\x12"](_loc6_,this,this["\x1a\x1e\x14"],[_loc5_]);
            }
         }
      }
      if(_loc3_)
      {
         _loc4_.show(_root._xmouse,_root._ymouse,true);
      }
   }
   function §\x01\x1d§()
   {
      return this["\x1e\n\x14"];
   }
   function §\x1a\x1e\f§(sPlayerID, §\x1b\x06\x1b§, §\x1b\x03\x10§, oCustomPopupPosition)
   {
      if(this.api.datacenter.Player.isAuthorized && this.api.kernel["\x16\x01\r"].executeHotKeyBatch(_loc3_))
      {
         return true;
      }
      this["\x1e\n\x14"] = _loc4_;
      var _loc6_ = this.api.ui["\x17\x02\x19"]();
      _loc6_["\x15\x1d\x12"](_loc3_ + " >>",this.api.kernel.GameManager,this.api.kernel.GameManager["\x1a\x1e\x14"],[undefined,{sPlayerID:sPlayerID,sPlayerName:_loc3_,bShowJoinFriend:this.api.datacenter.Player.isAuthorized,bKeepSavedMessage:true}],true);
      _loc6_["\x15\x1d\x12"](this.api.lang.getText("COPY"),System,System.setClipboard,[new ank.utils.ExtendedString(_loc4_).xmlUnescape()],true);
      if(this.api.datacenter.Player.isAuthorized)
      {
         _loc6_["\x15\x1d\x12"]("Append To Current ModReport Description",dofus.graphics.gapi.ui.MakeReport,dofus.graphics.gapi.ui.MakeReport.updateDescription,[this.api,_loc4_],true);
      }
      if(oCustomPopupPosition != undefined)
      {
         _loc6_.show(oCustomPopupPosition.x,oCustomPopupPosition.y,true);
      }
      else
      {
         _loc6_.show(_root._xmouse,_root._ymouse,true);
      }
   }
   function §\x1a\x1e\x14§(§\x1a\x02\t§, §\x19\x1e\x1d§)
   {
      var _loc4_ = _loc3_.bKeepSavedMessage;
      var _loc5_ = _loc3_.bForceNonAdminPopup;
      var _loc6_ = _loc3_.sPlayerName;
      var _loc7_ = _loc3_.oCustomPopupPosition;
      if(!_loc4_)
      {
         this["\x1e\n\x14"] = undefined;
      }
      if(_loc5_ == undefined)
      {
         _loc5_ = false;
      }
      var _loc8_ = null;
      if(_loc2_ != undefined)
      {
         _loc8_ = _loc2_;
      }
      else
      {
         if(_loc6_ == undefined)
         {
            return undefined;
         }
         var _loc9_ = this.api.datacenter.Sprites.getItems();
         loop0:
         for(var a in _loc9_)
         {
            var _loc10_ = _loc9_[a];
            if(_loc10_.name.toUpperCase() != _loc6_.toUpperCase())
            {
               continue;
            }
            _loc8_ = _loc10_;
            while(true)
            {
               if(§§pop() == null)
               {
                  break loop0;
               }
            }
         }
      }
      var _loc11_ = this.api.datacenter.Game.isFight;
      var _loc12_ = _loc6_ != undefined ? _loc6_ : _loc8_.name;
      if(Key.isDown(Key.SHIFT) && _loc12_ != this.api.datacenter.Player.Name)
      {
         var _loc13_ = "/w " + _loc12_ + " ";
         var _loc14_ = this.api.ui.getUIComponent("Banner");
         _loc14_.txtConsole = _loc13_;
         _loc14_["\x1a\x05\x03"]();
         this.api.electron.retroChatSetPromptText(_loc13_,true);
      }
      else
      {
         if(this.api.datacenter.Player.isAuthorized && !_loc5_)
         {
            if(this.api.kernel["\x16\x01\r"].executeHotKeyBatch(_loc12_))
            {
               return undefined;
            }
            var _loc15_ = this.api.kernel["\x16\x01\r"]["\x17\x13\x17"](_loc12_,false);
            if(_loc3_ == undefined)
            {
               _loc3_ = new Object();
            }
            _loc3_.bForceNonAdminPopup = true;
            _loc15_["\x15\x1d\x12"](_loc12_ + " >>",this,this["\x1a\x1e\x14"],[_loc2_,_loc3_],true);
            _loc15_.items.unshift(_loc15_.items.pop());
         }
         else
         {
            _loc15_ = this["\x17\x1d\x05"](_loc8_,_loc3_);
         }
         if(_loc15_.items.length > 0)
         {
            if(_loc7_ != undefined)
            {
               _loc15_.show(_loc7_.x,_loc7_.y,true);
            }
            else
            {
               _loc15_.show(_root._xmouse,_root._ymouse,true);
            }
         }
      }
   }
   function §\x1b\x01\x0b§(§\x1b\n\x11§)
   {
      var _loc3_ = this.api.kernel["\x16\x01\r"]["\x17\x13\x17"](_loc2_,false);
      _loc3_.show(_root._xmouse,_root._ymouse,true);
   }
   function §\x17\x17\x01§(§\x17\n\x14§, §\x16\t\x11§)
   {
      if(_loc2_ <= 0)
      {
         return "-";
      }
      var _loc4_ = new Date();
      _loc4_.setTime(_loc2_);
      var _loc5_ = _loc4_.getUTCHours();
      var _loc6_ = _loc4_.getUTCMinutes();
      var _loc7_ = _loc4_.getSeconds();
      if(_loc3_ != true)
      {
         return (_loc5_ == 0 ? "" : _loc5_ + " " + this.api.lang.getText("HOURS_SMALL") + " ") + _loc6_ + " " + this.api.lang.getText("MINUTES_SMALL") + " " + _loc7_ + " " + this.api.lang.getText("SECONDS_SMALL");
      }
      return (_loc5_ == 0 ? "" : _loc5_ + " " + ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("HOURS"),"m",_loc5_ < 2) + " ") + _loc6_ + " " + ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("MINUTES"),"m",_loc6_ < 2) + " " + _loc7_ + " " + ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("SECONDS"),"m",_loc7_ < 2);
   }
   function §\x18\n\x1d§(§\x19\x13\x07§, §\x1b\x07\x01§, §\x1b\b\x18§)
   {
      if(_loc3_ == undefined)
      {
         _loc3_ = "";
      }
      if(_loc4_ == undefined)
      {
         _loc4_ = "";
      }
      if(this.api.datacenter.Basics.chatParams.items == undefined)
      {
         this.api.datacenter.Basics.chatParams.items = new Array();
      }
      if(this.api.lang.getConfigText("CHAT_MAXIMUM_LINKS") == undefined || this.api.datacenter.Basics.chatParams.items.length < this.api.lang.getConfigText("CHAT_MAXIMUM_LINKS"))
      {
         this.api.datacenter.Basics.chatParams.items.push(_loc2_);
         this.api.ui.getUIComponent("Banner")["\x18\n\x1c"](_loc3_ + "[" + _loc2_.name + "]" + _loc4_);
      }
      else
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("TOO_MANY_ITEM_LINK"),"ERROR_CHAT");
      }
   }
   function getLastModified(§\x19\x0e\x10§)
   {
      var _loc3_ = this["\x1b\x1d\x11"][_loc2_];
      if(_loc3_ == undefined || _global.isNaN(_loc3_))
      {
         return 0;
      }
      return _loc3_;
   }
   function §\x1a\x14\x1d§(§\x19\x0e\x10§)
   {
      if(_loc2_ < 0)
      {
         return undefined;
      }
      this["\x1b\x1d\x11"][_loc2_] = 1712;
   }
   function §\x17\x15\x1a§(§\x19\x05\x1d§)
   {
      if(_loc2_ == 0)
      {
         return 0;
      }
      var _loc3_ = Math.max(0,this.api.datacenter.Player.CriticalHitBonus);
      var _loc4_ = Math.max(0,this.api.datacenter.Player.AgilityTotal);
      _loc2_ -= _loc3_;
      if(_loc4_ != 0)
      {
         _loc2_ = Math.min(_loc2_,Number(_loc2_ * (Math.E * 1.1 / Math.log(_loc4_ + 12))));
      }
      return Math.floor(Math.max(_loc2_,2));
   }
   function §\x1a\r\x12§(sName, sID, §\x1b\f\x0e§, §\x19\x12\x10§)
   {
      if(_loc4_ != undefined && (_loc4_.length > 0 && _loc4_ != ""))
      {
         this.api.ui.loadUIComponent("AskReportMessage","AskReportMessage" + _loc4_,{message:this.api.kernel.ChatManager["\x17\x1b\x1b"](_loc4_),messageId:_loc4_,authorId:sID,authorName:_loc2_});
      }
      else
      {
         this.api.kernel.ChatManager["\x16\x01\x03"](_loc2_,_loc5_.gfxID);
         this.api.kernel.showMessage(undefined,this.api.lang.getText("TEMPORARY_BLACKLISTED",[_loc2_]),"INFO_CHAT");
      }
   }
   function reportPlayer(sPlayerID, §\x1b\x06\x1b§, bIsVendor)
   {
      if(sPlayerID == undefined || (_loc3_ == undefined || bIsVendor == undefined))
      {
         return undefined;
      }
      if(!this.api.datacenter.Player.modReportSessionData.isEnabled)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText(this.api.datacenter.Player.modReportSessionData.disabledReasonLangKeyWithFallback),"ERROR_CHAT");
         return undefined;
      }
      this.api.ui.loadUIComponent("ReportPlayerToModeration","ReportPlayerToModeration",{targetID:sPlayerID,targetName:_loc3_,targetIsOffline:bIsVendor},{bForceLoad:true,bAlwaysOnTop:true});
   }
   function §\x18\x0e\b§(§\x1b\x07\x03§)
   {
      if(this.api.datacenter.Basics.aks_current_team == 0)
      {
         var _loc3_ = 0;
         while(_loc3_ < this.api.datacenter.Basics["\x16\x02\x14"].length)
         {
            if(this.api.datacenter.Basics["\x16\x02\x14"][_loc3_] == _loc2_.cellNum)
            {
               return true;
            }
            _loc3_ = _loc3_ + 1;
         }
      }
      else if(this.api.datacenter.Basics.aks_current_team == 1)
      {
         var _loc4_ = 0;
         while(_loc4_ < this.api.datacenter.Basics["\x16\x02\x15"].length)
         {
            if(this.api.datacenter.Basics["\x16\x02\x15"][_loc4_] == _loc2_.cellNum)
            {
               return true;
            }
            _loc4_ = _loc4_ + 1;
         }
      }
      return false;
   }
   function §\x1b\t\x11§()
   {
      this["\x1b\x0b\x01"]();
      this["\x1b\x01\x17"]();
      this["\x1d\x17\x02"] = _global.setInterval(this,"inactivityCheck",1000);
      this["\x1c\x03\x1d"] = false;
      Mouse.addListener(this);
   }
   function §\x1b\x01\x17§()
   {
      this["\x1d\x17\x19"] = 9031;
   }
   function §\x1b\x0b\x01§()
   {
      if(this["\x1d\x17\x02"] != undefined)
      {
         _global.clearInterval(this["\x1d\x17\x02"]);
      }
      this["\x1d\x17\x19"] = undefined;
   }
   function printFightResultInfo(§\x19\b\x0b§, nResultValue)
   {
      if(nResultValue > 0)
      {
         this.api.kernel.showMessage(undefined," - " + this.api.lang.getText("INFOS_" + _loc2_,[new ank.utils.ExtendedString(nResultValue)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3)]),"INFO_CHAT");
      }
   }
   function §\x17\x1d\x05§(§\x1b\x07\x06§, §\x19\x1e\x1d§)
   {
      var _loc4_ = _loc3_.bShowViewTtgCollection;
      var _loc5_ = _loc3_.bNoFriendsInvite;
      var _loc6_ = _loc3_.oPartyItem;
      var _loc7_ = _loc3_.bNoGuildInvite;
      var _loc8_ = _loc3_.bShowJoinFriend;
      if(_loc2_ != undefined && _loc4_ == undefined)
      {
         _loc4_ = _loc2_.hasTtgCollection;
      }
      var _loc9_ = this.api.datacenter.Game.isFight;
      if(!_global.isNaN(_loc3_.sPlayerID))
      {
         _loc3_.sPlayerID = String(_loc3_.sPlayerID);
      }
      var _loc10_ = !(_loc3_.sPlayerID != undefined && _loc3_.sPlayerID.length > 0) ? _loc2_.id : _loc3_.sPlayerID;
      var _loc11_ = _loc3_.sPlayerName == undefined ? _loc2_.name : _loc3_.sPlayerName;
      var _loc12_ = this.api.ui["\x17\x02\x19"]();
      _loc12_["\x15\x1e\x18"](_loc11_);
      var _loc13_ = this.api.kernel.ChatManager["\x18\f\x16"](_loc11_);
      if(_loc13_)
      {
         _loc12_["\x15\x1e\x18"]("(" + this.api.lang.getText("IGNORED_WORD") + ")");
      }
      if(_loc9_)
      {
         if(!this.api.datacenter.Game.isRunning && (!this.api.datacenter.Player.isMutant || this.api.datacenter.Player.canAttackDungeonMonstersWhenMutant))
         {
            if(_loc2_ != null && _loc10_ != this.api.datacenter.Player.ID)
            {
               _loc12_["\x15\x1d\x12"](this.api.lang.getText("KICK"),this.api.network.Game,this.api.network.Game["\x18\x13\x1d"],[_loc10_]);
            }
         }
      }
      if(_loc10_ == this.api.datacenter.Player.ID && _loc11_ == this.api.datacenter.Player.Name)
      {
         _loc12_["\x15\x1d\x12"](this.api.lang.getText("HIT_HIMSELF"),this.api.network.Chat,this.api.network.Chat.send,[this.api.lang.getText("SLAP_SENTENCE"),"*"]);
         if(!_loc9_ && this.api.datacenter.Player.canBeMerchant)
         {
            _loc12_["\x15\x1d\x12"](this.api.lang.getText("ORGANIZE_SHOP"),this.api.kernel.GameManager,this.api.kernel.GameManager["\x1b\t\x0f"],[6]);
            _loc12_["\x15\x1d\x12"](this.api.lang.getText("MERCHANT_MODE"),this.api.kernel.GameManager,this.api.kernel.GameManager["\x19\x12\x1a"]);
         }
         if(this.api.datacenter.Player.data["\x18\x10\x05"])
         {
            _loc12_["\x15\x1d\x12"](this.api.lang.getText("FREE_MY_SOUL"),this.api.network.Game,this.api.network.Game["\x17\x12\x12"]);
         }
         else if(!_loc9_)
         {
            var _loc14_ = _loc2_["\x16\x03\x17"] == "static";
            _loc12_["\x15\x1d\x12"](this.api.lang.getText("CHANGE_DIRECTION"),this.api.ui,this.api.ui.loadUIComponent,["DirectionChooser","DirectionChooser",{allDirections:this.api.datacenter.Player.canMoveInAllDirections,target:this.api.datacenter.Player.data.mc}]);
         }
      }
      else
      {
         if(!this.api.kernel.ChatManager["\x18\f\x16"](_loc11_))
         {
            _loc12_["\x15\x1d\x12"](this.api.lang.getText("BLACKLIST_TEMPORARLY"),this.api.kernel.GameManager,this.api.kernel.GameManager["\x1a\r\x12"],[_loc11_,_loc10_,undefined,_loc2_]);
         }
         else
         {
            _loc12_["\x15\x1d\x12"](this.api.lang.getText("BLACKLIST_REMOVE"),this.api.kernel.ChatManager,this.api.kernel.ChatManager["\x1a\r\x04"],[_loc11_]);
         }
         if(!_loc9_ || _loc9_ && _loc11_ != undefined)
         {
            _loc12_["\x15\x1d\x12"](this.api.lang.getText("WHOIS"),this.api.network.Basics,this.api.network.Basics["\x1b\x19\t"],[_loc11_]);
            if(_loc10_ != undefined && (_loc11_ != undefined && _loc10_ != this.api.datacenter.Player.ID))
            {
               var _loc15_ = _loc2_ != null && _loc2_ instanceof dofus.datacenter.["\x19\x12\x19"];
               _loc12_["\x15\x1d\x12"](this.api.lang.getText("REPORT_PLAYER"),this.api.kernel.GameManager,this.api.kernel.GameManager.reportPlayer,[_loc10_,_loc11_,_loc15_]);
            }
            if(_loc5_ != true)
            {
               _loc12_["\x15\x1d\x12"](this.api.lang.getText("ADD_TO_FRIENDS"),this.api.network.Friends,this.api.network.Friends["\x15\x1d\x10"],[_loc11_]);
            }
            if(_loc5_ != true)
            {
               _loc12_["\x15\x1d\x12"](this.api.lang.getText("ADD_TO_ENEMY"),this.api.network.Enemies,this.api.network.Enemies["\x15\x1d\n"],[_loc11_]);
            }
            _loc12_["\x15\x1d\x12"](this.api.lang.getText("WISPER_MESSAGE"),this.api.kernel.GameManager,this.api.kernel.GameManager["\x16\x06\x07"],[_loc11_]);
            if(_loc6_ == undefined)
            {
               _loc12_["\x15\x1d\x12"](this.api.lang.getText("ADD_TO_PARTY"),this.api.network.Party,this.api.network.Party["\x18\f\x0f"],[_loc11_]);
            }
            if(_loc4_)
            {
               _loc12_["\x15\x1d\x12"](this.api.lang.getText("TTG_VIEW_COLLECTION"),this.api.network.Ttg,this.api.network.Ttg.sendShowCollection,[_loc11_]);
            }
            if(this.api.datacenter.Player.guildInfos != undefined)
            {
               if(_loc7_ != true)
               {
                  if(_loc2_ == null || (_loc2_ != null && _loc2_["\x18\x04\x07"] == undefined || _loc2_["\x18\x04\x07"].length == 0))
                  {
                     if(this.api.datacenter.Player.guildInfos["\x1a\x05\x15"]["\x16\x16\x06"])
                     {
                        _loc12_["\x15\x1d\x12"](this.api.lang.getText("INVITE_IN_GUILD"),this.api.network.Guild,this.api.network.Guild["\x18\f\x0f"],[_loc11_]);
                     }
                  }
               }
            }
            if(_loc8_)
            {
               if(this.api.datacenter.Player.isAuthorized)
               {
                  _loc12_["\x15\x1d\x12"](this.api.lang.getText("JOIN_SMALL"),this.api.kernel["\x16\x01\r"],this.api.kernel["\x16\x01\r"].sendCommand,["join " + _loc11_]);
               }
               else if(this.api.datacenter.["\x18\x18\x0e"].superarea == 3)
               {
                  _loc12_["\x15\x1d\x12"](this.api.lang.getText("JOIN_SMALL"),this.api.network.Friends,this.api.network.Friends["\x18\x11\x13"],[_loc11_]);
               }
            }
         }
         if(!_loc9_ && (_loc2_ != null && (_loc2_.gfxID != ank.battlefield.datacenter..Sprite.ANGELS_OF_THE_WORLD_SPRITE_ID && !_loc5_)))
         {
            if(this.api.datacenter.["\x18\x18\x0e"].isMyHome)
            {
               _loc12_["\x15\x1d\x12"](this.api.lang.getText("KICKOFF"),this.api.network.Houses,this.api.network.Houses["\x18\x12\x01"],[_loc10_]);
            }
            if(this.api.datacenter.Player.canExchange && _loc2_.canExchange)
            {
               _loc12_["\x15\x1d\x12"](this.api.lang.getText("EXCHANGE"),this.api.kernel.GameManager,this.api.kernel.GameManager["\x1b\t\x0f"],[1,_loc10_]);
            }
            if(this.api.datacenter.Player.canChallenge && _loc2_["\x16\x15\x16"])
            {
               _loc12_["\x15\x1d\x12"](this.api.lang.getText("CHALLENGE"),this.api.network.GameActions,this.api.network.GameActions.challenge,[_loc10_],this.api.datacenter.["\x18\x18\x0e"].bCanChallenge);
            }
            if(this.api.datacenter.Player.canAssault && !_loc2_["\x1a\x1d\x1c"])
            {
               var _loc16_ = this.api.datacenter.Player.data.alignment.index;
               if(this.api.lang["\x17\x13\x1b"](_loc16_,_loc2_.alignment.index))
               {
                  var _loc17_ = this.api.datacenter.["\x18\x18\x0e"].bCanAttack;
                  var _loc18_ = this.api.datacenter.Basics.pvpHuntedSpriteID != undefined && this.api.datacenter.Basics.pvpHuntedSpriteID == _loc10_;
                  if(!_loc17_ && (_loc18_ && this.api.datacenter.["\x18\x18\x0e"].bCanAttackHunt))
                  {
                     _loc17_ = true;
                  }
                  _loc12_["\x15\x1d\x12"](!_loc18_ ? this.api.lang.getText("ASSAULT") : this.api.lang.getText("ASSAULT") + " " + this.api.lang.getText("HUNTED"),this.api.kernel.GameManager,this.api.kernel.GameManager["\x16\x05\x15"],[[_loc10_]],_loc17_);
               }
            }
            if(this.api.datacenter.Player.canAttack && (_loc2_["\x16\x15\x15"] && !_loc2_["\x1a\x1d\x1c"]))
            {
               _loc12_["\x15\x1d\x12"](this.api.lang.getText("ATTACK"),this.api.network.GameActions,this.api.network.GameActions["\x19\x02\x14"],[_loc10_]);
            }
            var _loc19_ = _loc2_["\x19\x02\t"];
            if(_loc19_ != undefined && _loc19_.length > 0)
            {
               var _loc20_ = 0;
               while(_loc20_ < _loc19_.length)
               {
                  var _loc21_ = Number(_loc19_[_loc20_]);
                  _loc12_["\x15\x1d\x12"](this.api.lang.getText("ASK_TO") + " " + this.api.lang["\x17\x1e\x15"](_loc21_).d,this.api.network.Exchange,this.api.network.Exchange["\x1a\r\x13"],[13,_loc10_,_loc21_]);
                  _loc20_ = _loc20_ + 1;
               }
            }
            else
            {
               _loc19_ = this.api.datacenter.Player.data["\x19\x02\t"];
               if(_loc19_ != undefined && _loc19_.length > 0)
               {
                  var _loc22_ = 0;
                  while(_loc22_ < _loc19_.length)
                  {
                     var _loc23_ = Number(_loc19_[_loc22_]);
                     _loc12_["\x15\x1d\x12"](this.api.lang.getText("INVITE_TO") + " " + this.api.lang["\x17\x1e\x15"](_loc23_).d,this.api.network.Exchange,this.api.network.Exchange["\x1a\r\x13"],[12,_loc10_,_loc23_]);
                     _loc22_ = _loc22_ + 1;
                  }
               }
            }
         }
      }
      if(_loc6_ != undefined)
      {
         _loc6_["\x15\x1e\x04"](_loc12_);
      }
      return _loc12_;
   }
   function inactivityCheck()
   {
      if(this["\x1d\x17\x19"] == undefined || !this.api.kernel.OptionsManager.getOption("RemindTurnTime"))
      {
         return undefined;
      }
      var _loc2_ = this.api.lang.getConfigText("INACTIVITY_DISPLAY_COUNT");
      if(_global.isNaN(_loc2_) || _loc2_ == undefined)
      {
         _loc2_ = 5;
      }
      if(this.api.datacenter.Basics.inactivity_signaled > _loc2_)
      {
         return undefined;
      }
      var _loc3_ = this.api.lang.getConfigText("INACTIVITY_TIMING");
      if(_global.isNaN(_loc3_) || (_loc3_ == undefined || _loc3_ < 1000))
      {
         _loc3_ = 11000;
      }
      if(this["\x1d\x17\x19"] + _loc3_ < 3947)
      {
         if(this.api.datacenter.Game.isFight && (this.api.datacenter.Game.isRunning && this.api.datacenter.Player.isCurrentPlayer))
         {
            if(this["\x16\b\x01"])
            {
               this.api.network.Game["\x1b\x11\x16"]();
               return undefined;
            }
            this.api.kernel.showMessage(undefined,this.api.lang.getText("INFIGHT_INACTIVITY"),"ERROR_CHAT");
            this.api.kernel["\x1b\x10\x0b"]["\x1a\x06\b"]("Banner",["_btnNextTurn"]);
            this.api.datacenter.Basics.inactivity_signaled++;
         }
         this["\x1b\x0b\x01"]();
      }
   }
   function §\x02\x10§()
   {
      var _loc2_ = this.api.datacenter.Basics["\x1b\x0e\x14"](this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Player.ID)["\x1b\x0e\x15"]);
      var _loc3_ = 0;
      for(var i in _loc2_)
      {
         if(_loc2_[i].LP > 0)
         {
            _loc3_ = _loc3_ + 1;
         }
      }
      return _loc3_;
   }
   function §\x1e\x12\x18§()
   {
      return !this["\x1c\x03\x1d"] && (this["\x1d\x16\x06"] > 0 && (this["\x18\x15\x13"] > 1 && this.api.lang.getConfigText("FIGHT_AUTO_SKIP")));
   }
   function §\x1b\x01\x18§()
   {
      this["\x1c\x03\x1d"] = true;
   }
   function §\x19\x1e\x04§()
   {
      if(!this["\x1c\x03\x1d"] && (this.api.lang.getConfigText("FIGHT_AUTO_SKIP") && this["\x18\x15\x13"] > 1))
      {
         this["\x1d\x16\x06"]++;
         this.api.kernel.showMessage(undefined,this.api.lang.getText("INFIGHT_INACTIVITY_AUTO_SKIP"),"ERROR_CHAT");
      }
      else
      {
         this["\x1d\x16\x06"] = 0;
      }
   }
   function onMouseMove()
   {
      this["\x1c\x03\x1d"] = true;
   }
   function onMouseUp()
   {
      this["\x1c\x03\x1d"] = true;
   }
}
