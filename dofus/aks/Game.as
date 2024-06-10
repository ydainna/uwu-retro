class dofus.aks.Game extends dofus.aks.Handler
{
   static var §\x1b\x12\x1b§ = 1;
   static var §\x1b\x12\x13§ = 2;
   var bSubareaHasWhiteFloor = false;
   var §\x1c\x05\x15§ = false;
   var §\x19\t\f§ = -1;
   function Game(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
      this.extendIn = new dofus.aks.extend.GameIn(_loc3_,oAPI);
   }
   function §\x1e\x1c\x1c§()
   {
      return this["\x1c\x05\x15"];
   }
   function __set__isBusy(bIsBusy)
   {
      this["\x1c\x05\x15"] = bIsBusy;
      return this["\x1e\x1c\x1c"]();
   }
   function create()
   {
      this.aks.send("GC" + dofus.aks.Game["\x1b\x12\x1b"]);
   }
   function leave(§\x1b\b\x10§)
   {
      this.aks.send("GQ" + (_loc2_ != undefined ? _loc2_ : ""));
   }
   function §\x1a\x18\x17§(§\x19\x04\x12§)
   {
      this.aks.send("Gp" + _loc2_,true);
   }
   function ready(§\x16\x10\x18§)
   {
      this.aks.send("GR" + (!_loc2_ ? "0" : "1"));
   }
   function §\x17\x1b\x07§(§\x19\t\x14§)
   {
      if(this.api.lang.getConfigText("ENABLE_CLIENT_MAP_REQUEST"))
      {
         this.aks.send("GD" + (_loc2_ == undefined ? "" : String(_loc2_)));
      }
   }
   function §\x17\x17\x14§()
   {
      var _loc2_ = "G";
      if(!this.aksunknown)
      {
         if(this.api.electron.getSystemInformation("virtual"))
         {
            _loc2_ += "i";
         }
         else
         {
            _loc2_ += "І";
         }
         this.aksunknown = true;
      }
      else
      {
         _loc2_ += "I";
      }
      this.aks.send(_loc2_);
   }
   function §\x1b\x11\x16§()
   {
      if(this.api.datacenter.Player.isCurrentPlayer)
      {
         this.aks.send("Gt",false);
      }
   }
   function §\x1b\x11\x17§(§\x1b\b\x10§)
   {
      this.aks.send("GT" + (_loc2_ == undefined ? "" : _loc2_),false);
   }
   function §\x1b\x11\x18§(§\x1b\b\x10§)
   {
      this.aks.send("GT" + (_loc2_ == undefined ? "" : _loc2_),false);
   }
   function §\x16\x05\x1c§()
   {
      this.aks.send("GP*",false);
   }
   function §\x17\r\x05§(§\x16\x0b\t§)
   {
      this.aks.send("GP" + (!_loc2_ ? "-" : "+"),false);
   }
   function freeMySoul()
   {
      this.aks.send("GF",false);
   }
   function §\x1a\x16\x15§(§\x19\x04\x11§)
   {
      this.aks.send("Gf" + _loc2_,false);
   }
   function §\x1a\x1d\x0e§(§\x16\x18\x0f§)
   {
      this.aks.send("Gdi" + _loc2_,false);
   }
   function onCreate(bSuccess, sExtraData)
   {
      if(!_loc2_)
      {
         ank.utils.Logger.err("[onCreate] Impossible de créer la partie");
         return undefined;
      }
      var _loc4_ = _loc3_.split("|");
      var _loc5_ = Number(_loc4_[0]);
      if(_loc5_ != 1)
      {
         ank.utils.Logger.err("[onCreate] Type incorrect");
         return undefined;
      }
      this.api.datacenter.Game = new dofus.datacenter.Game();
      this.api.datacenter.Game.state = _loc5_;
      var _loc6_ = dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"));
      dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"]["\x1a\x1d\x12"](_loc6_);
      _loc6_.chat.removeTemporaryReplacementPanel();
      var _loc7_ = _loc6_.chat.shortcutsReplacementPanel;
      if(_loc7_ != undefined)
      {
         _loc7_.showMiniMap(true);
         _loc7_["\x1b\x16\t"](undefined);
      }
      this.api.datacenter.Player.data["\x18\t\b"](false);
      this.api.datacenter.Player.data["\x18\n\f"](false);
      this.api.datacenter.Player["\x1b\x06\x12"].clear();
      this.api.datacenter.Player.data["\x16\x19\x06"].initialize();
      this.api.datacenter.Player.data["\x17\f\t"].initialize();
      this.api.datacenter.Player["\x16\x1c\x0e"]();
      this.api.gfx["\x16\x1b\x14"](1);
      this["\x19\x16\f"]();
   }
   function §\x19\x19\x0e§(sExtraData)
   {
      this.api.datacenter.Player.guildInfos["\x17\x06\x11"] = undefined;
      if(this.api.gfx.SpriteHandler.hidePlayerSprites)
      {
         this.api.gfx.SpriteHandler.hideSprites(false);
      }
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = _loc3_[1] != "0" ? true : false;
      var _loc6_ = _loc3_[2] != "0" ? true : false;
      var _loc7_ = _loc3_[3] != "0" ? true : false;
      var _loc8_ = Number(_loc3_[4]);
      var _loc9_ = Number(_loc3_[5]);
      this.api.datacenter.Game = new dofus.datacenter.Game();
      this.api.datacenter.Game.state = _loc4_;
      this.api.datacenter.Game["\x17\x10\x02"] = _loc9_;
      var _loc10_ = dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"));
      _loc10_["\x1a\n\x13"]();
      _loc10_["\x1b\x14\x19"]();
      this.api.datacenter.Game.isSpectator = _loc7_;
      if(!_loc7_)
      {
         this.api.datacenter.Player.data["\x18\t\b"](false);
         this.api.datacenter.Player.data["\x18\n\f"](false);
         this.api.datacenter.Player["\x1b\x06\x12"].clear();
      }
      this.api.gfx["\x16\x1b\x14"](1);
      if(this.api.datacenter.Game["\x18\x10\x02"])
      {
         this.api.gfx["\x15\x1c\x19"](this.api,true);
      }
      if(_loc6_)
      {
         this.api.ui.loadUIComponent("ChallengeMenu","ChallengeMenu",{labelReady:this.api.lang.getText("READY"),labelCancel:this.api.lang.getText("CANCEL_SMALL"),cancelButton:_loc5_,ready:false},{bStayIfPresent:true});
      }
      if(!_global.isNaN(_loc8_))
      {
         _loc10_.startTimer(_loc8_ / 1000);
      }
      this.api.gfx["\x1a\x17\x06"](ank.battlefield.Constants["\x18\x0b\x0f"]);
      this.api.ui["\x1b\x13\x12"]();
      this.api.ui.unloadUIComponent("FightsInfos");
      switch(this.api.datacenter.Map["\x1b\x0b\x17"])
      {
         case 320:
         case 321:
            this.bSubareaHasWhiteFloor = true;
            break;
         default:
            this.bSubareaHasWhiteFloor = false;
      }
      this.api.ui.unloadUIComponent("GameResult");
      this.api.ui.unloadUIComponent("GameResultLight");
   }
   function §\x19\x1b\b§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = _loc3_[0];
      var _loc5_ = _loc3_[1];
      var _loc6_ = Number(_loc3_[2]);
      this.api.datacenter.Basics.aks_current_team = _loc6_;
      this.api.datacenter.Basics["\x16\x02\x14"] = new Array();
      this.api.datacenter.Basics["\x16\x02\x15"] = new Array();
      this.api.kernel.StreamingDisplayManager["\x19\x17\x0f"]();
      this.api.gfx["\x1a\x17\x06"](ank.battlefield.Constants["\x18\x0b\n"]);
      this.api.datacenter.Game["\x1a\x17\t"]("place");
      if(_loc6_ == undefined)
      {
         ank.utils.Logger.err("[onPositionStart] Impossible de trouver l\'équipe du joueur local !");
      }
      this.api.gfx["\x18\x18\x15"]["\x1a\x1d\r"](_loc4_,_loc5_);
      var _loc7_ = 0;
      while(_loc7_ < _loc4_.length)
      {
         var _loc8_ = ank.utils.Compressor.decode64(_loc4_.charAt(_loc7_)) << 6;
         _loc8_ += ank.utils.Compressor.decode64(_loc4_.charAt(_loc7_ + 1));
         this.api.datacenter.Basics["\x16\x02\x14"].push(_loc8_);
         if(_loc6_ == 0)
         {
            this.api.gfx["\x1a\x17\x07"](_loc8_,ank.battlefield.Constants["\x18\x0b\f"]);
         }
         _loc7_ += 2;
      }
      var _loc9_ = 0;
      while(_loc9_ < _loc5_.length)
      {
         var _loc10_ = ank.utils.Compressor.decode64(_loc5_.charAt(_loc9_)) << 6;
         _loc10_ += ank.utils.Compressor.decode64(_loc5_.charAt(_loc9_ + 1));
         this.api.datacenter.Basics["\x16\x02\x15"].push(_loc10_);
         if(_loc6_ == 1)
         {
            this.api.gfx["\x1a\x17\x07"](_loc10_,ank.battlefield.Constants["\x18\x0b\f"]);
         }
         _loc9_ += 2;
      }
      if(this.api.ui.getUIComponent("FightOptionButtons") == undefined)
      {
         this.api.ui.loadUIComponent("FightOptionButtons","FightOptionButtons");
      }
      this.api.kernel.TipsManager.showNewTip(dofus.managers.TipsManager["\x1b\x10\x0f"]);
   }
   function §\x19\x1b\x04§(sExtraData)
   {
      if(_loc2_ != "e")
      {
         var _loc3_ = _loc2_.split("|");
         var _loc4_ = 0;
         while(_loc4_ < _loc3_.length)
         {
            var _loc5_ = _loc3_[_loc4_].split(";");
            var _loc6_ = _loc5_[0];
            var _loc7_ = Number(_loc5_[1]);
            this.api.gfx["\x1a\x1a\t"](_loc6_,_loc7_);
            _loc4_ = _loc4_ + 1;
         }
      }
      else
      {
         this.api.sounds["\x17\x0e\x06"]["\x19\x16\x1d"]();
      }
   }
   function §\x19\x1b\x18§(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0) == "1";
      var _loc4_ = _loc2_.substr(1);
      if(_loc3_)
      {
         this.api.gfx["\x15\x1e\x11"](_loc4_,dofus.Constants["\x1a\n\x04"],undefined,true);
      }
      else
      {
         this.api.gfx["\x1a\f\x1b"](_loc4_,true);
      }
   }
   function §\x19\x1d\n§()
   {
      this.api.ui.getUIComponent("Banner").stopTimer();
      this.aks.GameActions["\x19\x13\x18"](this.api.datacenter.Player.ID);
      this.api.sounds["\x17\x0e\x06"]["\x19\x18\x05"](this.api.datacenter.Map.musics);
      this.api.kernel.StreamingDisplayManager["\x19\x17\x10"]();
      var _loc2_ = this.api.ui.getUIComponent("Banner");
      _loc2_.showGiveUpButton(true);
      if(!this.api.datacenter.Game.isSpectator)
      {
         var _loc3_ = this.api.datacenter.Player.data;
         _loc3_["\x18\t\b"]();
         _loc3_["\x18\n\f"]();
         _loc2_.showPoints(true);
         _loc2_.showNextTurnButton(true);
         this.api.ui.loadUIComponent("CenterText","CenterText",{text:this.api.lang.getText("GAME_LAUNCH"),background:true,timer:2000},{bForceLoad:true});
         this.api.ui.getUIComponent("FightOptionButtons")["\x19\x18\x04"]();
         _loc2_["\x1a\x1c\x10"].setCurrentTab("Spells");
      }
      if(this.api.ui.getUIComponent("FightOptionButtons") == undefined)
      {
         this.api.ui.loadUIComponent("FightOptionButtons","FightOptionButtons");
      }
      this.api.ui.loadUIComponent("Timeline","Timeline");
      this.api.ui.unloadUIComponent("ChallengeMenu");
      this.api.gfx["\x1b\x13\x18"](true);
      this.api.gfx["\x18\x18\x15"]["\x1a\x1d\x1a"] = false;
      if(!this.api.gfx["\x18\x03\x13"]["\x16\f\x10"])
      {
         this.api.gfx["\x17\n\x04"]();
      }
      this.api.datacenter.Game["\x1a\x17\t"]("move");
      this.api.gfx["\x1a\x17\x06"](ank.battlefield.Constants["\x18\x0b\n"]);
      this.api.kernel.GameManager["\x1b\x01\x18"]();
      this.api.datacenter.Game.isRunning = true;
      var _loc4_ = this.api.datacenter.Sprites.getItems();
      for(var k in _loc4_)
      {
         this.api.gfx["\x15\x1e\x11"](k,dofus.Constants["\x16\x1b\r"],dofus.Constants["\x1b\x0f\x03"][_loc4_[k]["\x1b\x0e\x15"]]);
      }
      if(this.api.datacenter.Game["\x18\x10\x02"])
      {
         this.api.gfx["\x15\x1c\x19"](this.api,true);
      }
   }
   function §\x19\x1e\t§(sExtraData)
   {
      if(this.api.datacenter.Game["\x18\r\x18"])
      {
         this.api.datacenter.Game["\x18\r\x18"] = false;
         var _loc3_ = this.api.gfx.SpriteHandler.getSprites().getItems();
         for(var sID in _loc3_)
         {
            this.api.gfx["\x1a\f\x1b"](sID,true);
         }
      }
      var _loc4_ = _loc2_.split("|");
      var _loc5_ = _loc4_[0];
      var _loc6_ = Number(_loc4_[1]) / 1000;
      var _loc7_ = Number(_loc4_[2]);
      var _loc8_ = _loc4_.length > 3 && _loc4_[3] == "1";
      this.api.datacenter.Game.currentTableTurn = _loc7_;
      var _loc9_ = this.api.datacenter.Sprites.getItemAt(_loc5_);
      _loc9_.GameActionsManager.clear();
      this.api.gfx["\x1b\x13\x18"](true);
      this.api.datacenter.Game["\x17\x03\x1a"] = _loc5_;
      this.api.kernel.GameManager["\x16\x1b\x15"](this.api.datacenter.Game["\x18\x12\x19"]);
      this.api.ui.getUIComponent("Timeline").nextTurn(_loc5_);
      if(this.api.datacenter.Player.isCurrentPlayer)
      {
         this.api.electron.makeNotification(this.api.lang.getText("PLAYER_TURN",[this.api.datacenter.Player.Name]));
         if(!this.api.datacenter.Game.passiveTurn && this.api.kernel.OptionsManager.getOption("StartTurnSound"))
         {
            this.api.sounds["\x17\x0e\x06"]["\x19\x1e\t"]();
         }
         if(this.api.kernel.GameManager["\x16\b\x01"] && this.api.datacenter.Game.isFight)
         {
            this.api.network.Game["\x1b\x11\x16"]();
         }
         this.api.gfx["\x1a\x17\x06"](ank.battlefield.Constants["\x18\x0b\r"]);
         if(!_loc8_)
         {
            this.api.datacenter.Player["\x1b\x06\x12"].nextTurn();
         }
         this.api.ui.getUIComponent("Banner").startTimer(_loc6_);
         this.api.kernel.GameManager["\x1b\t\x11"]();
         if(this.api.gfx["\x1a\x0e\x16"] == undefined)
         {
            dofus.DofusCore.getInstance().forceMouseOver();
         }
         this.api.gfx["\x18\x18\x15"]["\x1a\r\x1b"]();
      }
      else
      {
         this.api.gfx["\x1a\x17\x06"](ank.battlefield.Constants["\x18\x0b\n"]);
         this.api.ui.getUIComponent("Timeline")["\x1b\t\x0b"](_loc6_);
         if(this.api.datacenter.Game.isSpectator && this.api.kernel.OptionsManager.getOption("SpriteInfos"))
         {
            this.api.ui.getUIComponent("Banner")["\x1a\x1e\x17"]("BannerSpriteInfos",{data:_loc9_},true);
         }
      }
      if(!this.api.datacenter.Game.passiveTurn && this.api.kernel.OptionsManager.getOption("StringCourse"))
      {
         var _loc10_ = new Array();
         _loc10_[1] = _loc9_.color1;
         _loc10_[2] = _loc9_.color2;
         _loc10_[3] = _loc9_.color3;
         this.api.ui.loadUIComponent("StringCourse","StringCourse",{gfx:_loc9_["\x16\x05\x0e"],name:_loc9_.name,level:this.api.lang.getText("LEVEL_SMALL") + " " + _loc9_.Level,colors:_loc10_},{bForceLoad:true});
      }
      if(this.api.datacenter.Game.isSpectator && this.api.electron["\x18\x10\x11"])
      {
         !this.bSubareaHasWhiteFloor ? this.api.gfx["\x15\x1e\x11"](_loc5_,dofus.Constants.HIGHLIGHT_FILE,undefined,true) : this.api.gfx["\x15\x1e\x11"](_loc5_,dofus.Constants.HIGHLIGHT_FILE,0,true);
      }
      this.api.kernel.GameManager["\x16\x1b\x18"](true);
      ank.utils.Timer.setTimer(this.api.network.Ping,"GameDecoDetect",this.api.network,this.api.network.quickPing,_loc6_ * 1000);
      this.api.kernel.TipsManager.showNewTip(dofus.managers.TipsManager["\x1b\x10\x10"]);
   }
   function §\x19\x1e\x05§(sExtraData)
   {
      var _loc3_ = _loc2_;
      var _loc4_ = this.api.datacenter.Sprites.getItemAt(_loc3_);
      if(this.api.datacenter.Player.isCurrentPlayer)
      {
         this.api.gfx["\x1a\x17\x06"](ank.battlefield.Constants["\x18\x0b\n"]);
         this.api.kernel.GameManager["\x1b\x0b\x01"]();
         this.api.kernel.GameManager["\x19\x1e\x04"]();
      }
      this.api.datacenter.Game["\x18\x12\x19"] = this.api.datacenter.Game["\x17\x03\x1a"];
      this.api.datacenter.Game["\x17\x03\x1a"] = undefined;
      this.api.ui.getUIComponent("Banner").stopTimer();
      this.api.ui.getUIComponent("Timeline")["\x1b\n\x1c"]();
      this.api.kernel.GameManager["\x16\x1b\x18"](true);
   }
   function §\x19\x1e\x06§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      this.api.datacenter.Game["\x1b\x11\x19"] = _loc3_;
      this.api.ui.getUIComponent("Timeline").update();
   }
   function §\x19\x1e\x07§(sExtraData)
   {
      if(!this.api.datacenter.Game.isRunning)
      {
         ank.utils.Logger.err("[innerOnTurnMiddle] on est pas en combat");
         return undefined;
      }
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = new Object();
      var _loc5_ = 0;
      for(; _loc5_ < _loc3_.length; _loc5_ = _loc5_ + 1)
      {
         var _loc6_ = _loc3_[_loc5_].split(";");
         if(_loc6_.length != 0)
         {
            var _loc7_ = _loc6_[0];
            var _loc8_ = _loc6_[1] != "1" ? false : true;
            var _loc9_ = Number(_loc6_[2]);
            var _loc10_ = Number(_loc6_[3]);
            var _loc11_ = Number(_loc6_[4]);
            var _loc12_ = Number(_loc6_[5]);
            var _loc13_ = Number(_loc6_[6]);
            var _loc14_ = Number(_loc6_[7]);
            _loc4_[_loc7_] = true;
            var _loc15_ = this.api.datacenter.Sprites.getItemAt(_loc7_);
            if(_loc15_ != undefined)
            {
               var _loc16_ = _loc15_.sequencer;
               if(_loc8_)
               {
                  if(_loc16_.isPlaying())
                  {
                     continue;
                  }
                  _loc15_.mc.clear();
                  this.api.gfx["\x1a\f\x1d"](_loc7_,"text");
               }
               else
               {
                  _loc15_.LP = _loc9_;
                  _loc15_.LPmax = _loc14_;
                  _loc15_.AP = _loc10_;
                  _loc15_.MP = _loc11_;
                  if(_loc16_.isPlaying())
                  {
                     continue;
                  }
                  if(!_global.isNaN(_loc12_) && !_loc15_["\x18\x05\x05"]())
                  {
                     this.api.gfx["\x1a\x1a\t"](_loc7_,_loc12_);
                  }
                  if(_loc15_["\x18\x05\x04"]())
                  {
                     _loc15_["\x16\x17\x03"]["\x1b\x14\x07"]();
                  }
               }
            }
            else
            {
               ank.utils.Logger.err("[onTurnMiddle] le sprite n\'existe pas");
            }
         }
      }
      var _loc17_ = this.api.datacenter.Sprites.getItems();
      for(var k in _loc17_)
      {
         if(!_loc4_[k])
         {
            _loc17_[k].mc.clear();
            this.api.datacenter.Sprites.removeItemAt(k);
         }
      }
      this.api.ui.getUIComponent("Timeline")["\x1b\x10\x03"]["\x1b\x14\f"]();
   }
   function §\x1a\x06\x19§()
   {
      if(!this.api.datacenter.Game.isRunning || (!this.api.datacenter.Game.isFight || !this.api.datacenter.Player.isCurrentPlayer))
      {
         return undefined;
      }
      var _loc2_ = this.api.datacenter.Player.data.sequencer;
      if(_loc2_["\x17\x01\x03"](this,this["\x1b\x11\x16"]))
      {
         return undefined;
      }
      _loc2_.addAction(24,false,this,this["\x1b\x11\x16"],[]);
      _loc2_.execute();
   }
   function §\x19\x1e\b§(sExtraData)
   {
      var _loc3_ = _loc2_;
      var _loc4_ = this.api.datacenter.Sprites.getItemAt(_loc3_);
      if(_loc4_ != undefined)
      {
         var _loc5_ = _loc4_.sequencer;
         _loc5_.addAction(25,false,this,this["\x1b\x11\x17"]);
         _loc5_.execute();
      }
      else
      {
         ank.utils.Logger.err("[onTurnReday] le sprite " + _loc3_ + " n\'existe pas");
         this["\x1b\x11\x18"]();
      }
   }
   function §\x19\x1a\x05§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = _loc3_[0];
      var _loc5_ = _loc3_[1];
      var _loc6_ = _loc3_[2];
      if(Number(_loc4_) == this.api.datacenter.Map.id)
      {
         this.api.gfx["\x19\x1a\x07"]();
         return undefined;
      }
      this.api.gfx["\x1a\x1d\x05"](false);
      this["\x19\t\f"] = _global.parseInt(_loc4_,10);
      this.api.kernel.MapsServersManager["\x18\x16\f"](_loc4_,_loc5_,_loc6_);
   }
   function §\x19\x1a\x07§()
   {
      this.api.gfx["\x1a\x1d\x05"](true);
      this.api.kernel.GameManager["\x16\x04\x0b"]();
      if(dofus.Constants.SAVING_THE_WORLD)
      {
         dofus["\x1a\x0f\x1a"].getInstance()["\x19\x07\x05"]();
      }
      if(this.api.datacenter.Game.isRunning && this.api.datacenter.Game["\x18\x10\x02"])
      {
         this.api.gfx["\x15\x1c\x19"](this.api,true);
      }
   }
   function §\x19\x16\f§()
   {
      this.api.datacenter.Player["\x18\x0b\b"].setState(false);
      this.api.gfx["\x1a\x17\x06"](ank.battlefield.Constants["\x18\x0b\x12"]);
      this.api.ui.removeCursor();
      this.api.ui.getUIComponent("Banner")["\x1a\x1c\x10"].setCurrentTab("Items");
      this.api.datacenter.Basics.gfx_isSpritesHidden = false;
      this.api.gfx.SpriteHandler["\x1b\x13\x15"]();
      if(this.api.ui.getUIComponent("Banner") == undefined)
      {
         this.api.kernel.OptionsManager.applyAllOptions();
         this.api.ui.loadUIComponent("Banner","Banner",{data:this.api.datacenter.Player},{bAlwaysOnTop:true});
         this.api.ui.setScreenSize(742,432);
      }
      else
      {
         var _loc2_ = this.api.ui.getUIComponent("Banner");
         _loc2_.showPoints(false);
         _loc2_.showNextTurnButton(false);
         _loc2_.showGiveUpButton(false);
         this.api.ui.unloadUIComponent("FightOptionButtons");
         this.api.ui.unloadUIComponent("ChallengeMenu");
      }
      this.api.gfx["\x16\x1b\x14"](2);
   }
   function §\x19\x1b\x13§(sExtraData, §\x16\x0b\t§)
   {
      if(!_loc3_)
      {
         var _loc4_ = Number(_loc2_);
         this.api.kernel.showMessage(undefined,this.api.lang.getText("ASK_DISABLE_PVP",[_loc4_]),"CAUTION_YESNO",{name:"DisabledPVP",listener:this});
      }
      else
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("ASK_ENABLED_PVP"),"CAUTION_YESNO",{name:"EnabledPVP",listener:this});
      }
   }
   function onHuntInfos(sExtraData)
   {
      var _loc3_ = _loc2_.substring(1);
      var _loc4_ = _loc3_.split("|");
      switch(_loc2_.charAt(0))
      {
         case "I":
            if(_loc3_ == undefined || _loc3_.length == 0)
            {
               this.api.datacenter.Basics.pvpHuntedSpriteID = undefined;
            }
            else
            {
               this.api.datacenter.Basics.pvpHuntedSpriteID = _loc3_;
            }
            break;
         case "S":
            var _loc5_ = _loc4_[0];
            var _loc6_ = _loc4_[1];
            var _loc7_ = _loc5_ != _loc6_;
            var _loc8_ = true;
            switch(_loc6_)
            {
               case "WAITING_FOR_TARGET":
                  if(_loc5_ == "WAITING_FOR_START_CONFIRMATION")
                  {
                     this.api.kernel.showMessage(undefined,this.api.lang.getText("HUNT_NOT_AVAILABLE_ANYMORE"),"HUNT_CHAT");
                  }
                  else if(_loc5_ == "NOT_IN_MATCHMAKING")
                  {
                     this.api.kernel.showMessage(undefined,this.api.lang.getText("HUNT_LOOKING_FOR_TARGET_ALIGN_" + this.api.datacenter.Player.alignment.index),"HUNT_CHAT");
                  }
                  break;
               case "WAITING_FOR_START_CONFIRMATION_TIMEOUT":
                  _loc8_ = false;
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("HUNT_REQUEST_TIMEOUT"),"HUNT_CHAT");
                  break;
               case "PLAYER_LEFT_MATCHMAKING":
                  _loc8_ = false;
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("HUNTER_HAS_LEFT_MATCHMAKING"),"HUNT_CHAT");
                  break;
               case "HUNT_STARTED":
                  _loc8_ = false;
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("HUNT_STARTED"),"HUNT_CHAT");
                  break;
               case "WAITING_FOR_START_CONFIRMATION":
                  var _loc9_ = this.api.lang.getText("HUNT_FOUND_PART_1_ALIGN_" + this.api.datacenter.Player.alignment.index);
                  var _loc10_ = Number(_loc4_[2]);
                  if(_loc10_ == 1)
                  {
                     _loc9_ += this.api.lang.getText("HUNT_FOUND_PART_2_AFTER_WIN");
                  }
                  else if(_loc10_ == 2)
                  {
                     _loc9_ += this.api.lang.getText("HUNT_FOUND_PART_2_AFTER_DEFEAT");
                  }
                  _loc9_ += ". ";
                  _loc9_ += this.api.lang.getText("HUNT_FOUND_PART_3");
                  this.api.kernel.showMessage(undefined,_loc9_,"HUNT_CHAT",undefined,"START_CONFIRMATION");
            }
            this.api.datacenter.Player.huntMatchmakingStatus = new dofus.datacenter.HuntMatchmakingStatus(_loc8_,_loc6_);
      }
   }
   function hunterAcceptPvPHunt()
   {
      this.aks.send("GhA");
   }
   function toggleHunterMatchmakingRegister()
   {
      if(this.api.datacenter.Player.isHuntMatchmakingActive())
      {
         this.api.network.Game.hunterMatchmakingUnregister();
      }
      else
      {
         this.api.network.Game.hunterMatchmakingRegister();
      }
   }
   function hunterMatchmakingRegister()
   {
      this.aks.send("Ghr");
   }
   function hunterMatchmakingUnregister()
   {
      this.aks.send("Ghu");
   }
   function §\x19\x17\x14§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = _loc3_[0];
      var _loc5_ = Number(_loc3_[1]);
      var _loc6_ = this.api.datacenter.Sprites.getItemAt(_loc4_);
      var _loc7_ = new ank.battlefield.datacenter.["\x1b\x18\x04"]();
      _loc7_.file = dofus.Constants["\x16\x1c\x19"] + "flag.swf";
      _loc7_.bInFrontOfSprite = true;
      _loc7_.bTryToBypassContainerColor = true;
      this.api.kernel.showMessage(undefined,this.api.lang.getText("PLAYER_SET_FLAG",[_loc6_.name,_loc5_]),"INFO_CHAT");
      this.api.gfx["\x1b\x07\x0b"](_loc4_,_loc7_,_loc5_,11,undefined,undefined,undefined,true);
   }
   function §\x19\x17\x0b§(sExtraData)
   {
      var _loc3_ = _loc2_.split(";");
      if(!this.api.ui.getUIComponent("FightChallenge"))
      {
         this.api.ui.loadUIComponent("FightChallenge","FightChallenge");
      }
      var _loc4_ = new dofus.datacenter.["\x17\x0f\x15"](_global.parseInt(_loc3_[0]),_loc3_[1] == "1",_global.parseInt(_loc3_[2]),_global.parseInt(_loc3_[3]),_global.parseInt(_loc3_[4]),_global.parseInt(_loc3_[5]),_global.parseInt(_loc3_[6]));
      dofus.graphics.gapi.ui.FightChallenge(dofus.graphics.gapi.ui.FightChallenge(this.api.ui.getUIComponent("FightChallenge")))["\x15\x1d\x04"](_loc4_);
   }
   function §\x19\x17\f§(sExtraData, success)
   {
      var _loc4_ = _global.parseInt(_loc2_);
      dofus.graphics.gapi.ui.FightChallenge(dofus.graphics.gapi.ui.FightChallenge(this.api.ui.getUIComponent("FightChallenge")))["\x1b\x14\n"](_loc4_,_loc3_);
      var _loc5_ = !_loc3_ ? this.api.lang.getText("FIGHT_CHALLENGE_FAILED") : this.api.lang.getText("FIGHT_CHALLENGE_DONE");
      _loc5_ += " : " + this.api.lang["\x17\x17\x15"](_loc4_).n;
      this.api.kernel.showMessage(undefined,_loc5_,"INFO_CHAT");
   }
   function cancel(oEvent)
   {
      var _loc0_ = _loc2_.target._name;
   }
   function yes(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "AskYesNoEnabledPVP":
            this.api.network.Game["\x17\r\x05"](true);
            break;
         case "AskYesNoDisabledPVP":
            this.api.network.Game["\x17\r\x05"](false);
      }
   }
   function no(oEvent)
   {
      var _loc0_ = _loc2_.target._name;
   }
}
