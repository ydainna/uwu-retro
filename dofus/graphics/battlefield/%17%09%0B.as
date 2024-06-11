class dofus.graphics.battlefield.§\x17\t\x0b§ extends ank.battlefield.§\x16\t\t§
{
   function §\x17\t\x0b§()
   {
      super();
   }
   function §\x1e\x12\x05§()
   {
      return this._oAPI;
   }
   function §\b\x04§()
   {
      return this["\x1e\x07\f"];
   }
   function §\b\x03§()
   {
      return this["\x1e\x07\x0b"];
   }
   function §\x1b\x16§(§\x1a\x0e\x15§)
   {
      this["\x1e\x07\x0b"] = _loc2_;
      return this["\b\x03"]();
   }
   function initialize(§\x19\x12\x11§, §\x1a\x1c\x01§, §\x1b\x04\f§, §\x1a\x0f\b§, oAPI)
   {
      super.initialize(_loc3_,_loc4_,_loc5_,_loc6_,oAPI);
      mx.["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
      this._oAPI = oAPI;
   }
   function §\x15\x1e\x16§(sID, §\x1b\f\x15§, nTypePoint)
   {
      if(this.api.kernel.OptionsManager.getOption("PointsOverHead") && this.api.electron["\x18\x10\x11"])
      {
         super["\x15\x1e\x16"](sID,_loc4_,nTypePoint);
      }
   }
   function §\x19\x19\x02§()
   {
      _root.onCriticalError(this.api.lang.getText("CRITICAL_ERROR_LOADING_BATTLEFIELD"));
   }
   function §\x19\x1a\x07§()
   {
      this["\x1e\x07\x0b"] = undefined;
      this["\x1e\x07\f"] = undefined;
      var _loc2_ = this.api.datacenter.Map;
      this.api.ui.unloadUIComponent("CenterText");
      this.api.ui.unloadUIComponent("CenterTextMap");
      this.api.ui.unloadUIComponent("FightsInfos");
      this["\x1a\x17\x06"](ank.battlefield.Constants["\x18\x0b\x0e"]);
      this["\x1a\x17\x06"](ank.battlefield.Constants["\x18\x0b\f"]);
      this["\x1a\x17\x06"](ank.battlefield.Constants["\x18\x0b\x16"]);
      if(this.api.datacenter.Game.isFight)
      {
         this["\x1a\x17\x06"](ank.battlefield.Constants["\x18\x0b\x0f"]);
      }
      else
      {
         this["\x1a\x17\x06"](ank.battlefield.Constants["\x18\x0b\x12"]);
      }
      this.api.datacenter.Game["\x1a\x17\t"]("move");
      this.api.network.Game.getExtraInformations();
      this.api.ui["\x1b\x13\x12"]();
      this.api.ui["\x1a\f\x15"]();
      this.api.ui.getUIComponent("MapInfos").update();
      var _loc3_ = _loc2_["\x1b\x0b\x17"];
      if(_loc3_ != this.api.datacenter.Basics.gfx_lastSubarea)
      {
         var _loc4_ = this.api.datacenter.Subareas.getItemAt(_loc3_);
         var _loc5_ = new String();
         var _loc6_ = new String();
         var _loc7_ = this.api.lang["\x17\x1b\x06"](_loc2_.area).n;
         if(_loc4_ == undefined)
         {
            _loc6_ = String(this.api.lang["\x17\x1b\x0f"](_loc3_).n).substr(0,2) != "//" ? this.api.lang["\x17\x1b\x0f"](_loc3_).n : String(this.api.lang["\x17\x1b\x0f"](_loc3_).n).substr(2);
            if(_loc7_ != _loc6_)
            {
               _loc5_ = _loc7_ + "\n(" + _loc6_ + ")";
            }
            else
            {
               _loc5_ = _loc7_;
            }
         }
         else
         {
            _loc6_ = _loc4_.name;
            _loc5_ = _loc4_.name + " (" + _loc4_.alignment.name + ")";
            if(_loc7_ != _loc6_)
            {
               _loc5_ = _loc7_ + "\n(" + _loc6_ + ")\n" + _loc4_.alignment.name;
            }
            else
            {
               _loc5_ = _loc7_ + "\n" + _loc4_.alignment.name;
            }
         }
         if(!this.api.kernel.TutorialManager["\x18\x10\x07"])
         {
            this.api.ui.loadUIComponent("CenterText","CenterText",{text:_loc5_,background:false,timer:2000},{bForceLoad:true});
         }
         this.api.datacenter.Basics.gfx_lastSubarea = _loc3_;
      }
      if(this.api.kernel.OptionsManager.getOption("Grid") == true || this.api.datacenter.Game.isRunning)
      {
         this.api.gfx["\x17\n\x04"]();
      }
      else
      {
         this.api.gfx["\x1a\f\x07"]();
      }
      if(this.showingCellIds)
      {
         this.updateCellIds();
      }
      this.api.ui.getUIComponent("Banner").circleXtra["\x1a\x15\x0f"]({currentCoords:[_loc2_.x,_loc2_.y]});
      if(!this.api.datacenter.Game.isRunning)
      {
         if(Number(_loc2_.ambianceID) > 0)
         {
            this.api.sounds["\x1a\x05\x0e"](_loc2_.ambianceID);
         }
         if(Number(_loc2_.musicID) > 0)
         {
            this.api.sounds["\x1a\x05\x1a"](_loc2_.musicID,true);
         }
      }
      var _loc8_ = Array(this.api.lang["\x17\x1b\x11"](_loc2_.id).p);
      var _loc9_ = 0;
      while(_loc8_.length > _loc9_)
      {
         var _loc10_ = _loc8_[_loc9_][0];
         var _loc11_ = _loc8_[_loc9_][1];
         var _loc12_ = _loc8_[_loc9_][2];
         if(!dofus.utils.["\x17\x03\x04"]["\x17\x03\x03"]["\x17\x10\x10"](_loc12_))
         {
            var _loc13_ = this.api.gfx["\x18\x18\x15"]["\x17\x14\x1d"](_loc11_);
            var _loc14_ = 0;
            while(_loc14_ < _loc10_.length)
            {
               if(_loc13_["\x18\x13\x0e"] == _loc10_[_loc14_])
               {
                  _loc13_.mcObject1._visible = false;
               }
               if(_loc13_["\x18\x13\x12"] == _loc10_[_loc14_])
               {
                  _loc13_.mcObject2._visible = false;
               }
               _loc14_ = _loc14_ + 1;
            }
         }
         _loc9_ = _loc9_ + 1;
      }
      this["\x17\x07\x19"]({type:"mapLoaded",currentMap:_loc2_});
   }
   function §\x19\x15\x04§(§\x18\x1b\x10§)
   {
      if(this.api.kernel.TutorialManager["\x18\x10\x07"])
      {
         this.api.kernel.TutorialManager["\x19\x1e\x0f"]({code:"CELL_RELEASE",params:[_loc2_.num]});
         return false;
      }
      switch(this.api.datacenter.Game["\x18\x0b\t"])
      {
         case 1:
            var _loc3_ = this.api.datacenter.Player.data;
            var _loc4_ = false;
            var _loc5_ = this.api.datacenter.Player.canMoveInAllDirections;
            if(this.api.datacenter.Player["\x18\x0b\b"]["\x16\x15\b"](this["\x18\x18\x15"],_loc2_.num,true,this.api.datacenter.Game.isFight,false,_loc5_))
            {
               if(this.api.datacenter.Game.isFight)
               {
                  _loc4_ = true;
               }
               else
               {
                  _loc4_ = this.api.datacenter.Basics.interactionsManager_path[this.api.datacenter.Basics.interactionsManager_path.length - 1].num == _loc2_.num;
               }
            }
            if(!this.api.datacenter.Game.isFight && !_loc4_)
            {
               if(this.api.datacenter.Player["\x18\x0b\b"]["\x16\x15\b"](this["\x18\x18\x15"],_loc2_.num,true,this.api.datacenter.Game.isFight,true,_loc5_))
               {
                  _loc4_ = true;
               }
            }
            if(_loc4_)
            {
               if(10022 - this.api.datacenter.Basics.gfx_lastActionTime < dofus.Constants.CLICK_MIN_DELAY && (_loc3_ == undefined || !_loc3_["\x18\f\x10"]))
               {
                  ank.utils.Logger.err("T trop rapide du clic");
                  return null;
               }
               this.api.datacenter.Basics.gfx_lastActionTime = 2310;
               if(this.api.datacenter.Basics.interactionsManager_path.length != 0)
               {
                  var _loc6_ = ank.battlefieldutils.Compressor["\x16\x1e\n"](this.api.datacenter.Basics.interactionsManager_path);
                  if(_loc6_ != undefined)
                  {
                     if(this.api.datacenter.Game.isFight && this.api.datacenter.Game.isRunning)
                     {
                        var _loc7_ = _loc3_.sequencer;
                        _loc7_.addAction(122,false,_loc3_.GameActionsManager,_loc3_.GameActionsManager["\x1b\x11\n"],[1,[_loc6_]]);
                        _loc7_.execute();
                     }
                     else
                     {
                        _loc3_.GameActionsManager["\x1b\x11\n"](1,[_loc6_]);
                     }
                     delete this.api.datacenter.Basics.interactionsManager_path;
                  }
               }
               return true;
            }
            return false;
            break;
         case 2:
            if(this.api.datacenter.Player["\x17\x03\x1d"] != null && this.api.datacenter.Basics.gfx_canLaunch == true)
            {
               var _loc8_ = this.api.datacenter.Player.data;
               var _loc9_ = _loc8_.sequencer;
               _loc9_.addAction(123,false,_loc8_.GameActionsManager,_loc8_.GameActionsManager["\x1b\x11\x0b"],[300,[this.api.datacenter.Player["\x17\x03\x1d"].ID,_loc2_.num]]);
               _loc9_.execute();
               this.api.datacenter.Player["\x17\x03\x1d"] = null;
            }
            else if(this.api.datacenter.Basics.spellManager_errorMsg != undefined)
            {
               this.api.kernel.showMessage(undefined,this.api.datacenter.Basics.spellManager_errorMsg,"ERROR_CHAT");
               delete this.api.datacenter.Basics.spellManager_errorMsg;
            }
            this.api.ui.removeCursor();
            this.api.kernel.GameManager["\x18\x12\x1a"] = 2152;
            this.api.datacenter.Game["\x1a\x17\t"]("move");
            break;
         case 3:
            if(this.api.datacenter.Player["\x17\x03\x1d"] != null && this.api.datacenter.Basics.gfx_canLaunch == true)
            {
               var _loc10_ = this.api.datacenter.Player.data;
               var _loc11_ = _loc10_.sequencer;
               _loc11_.addAction(124,false,_loc10_.GameActionsManager,_loc10_.GameActionsManager["\x1b\x11\x0b"],[303,[_loc2_.num]]);
               _loc11_.execute();
               this.api.datacenter.Player["\x17\x03\x1d"] = null;
            }
            this.api.ui.removeCursor();
            this.api.kernel.GameManager["\x18\x12\x1a"] = 2218;
            this.api.datacenter.Game["\x1a\x17\t"]("move");
            break;
         case 4:
            var _loc12_ = this["\x18\x18\x15"]["\x17\x14\x1d"](_loc2_.num)["\x1b\x07\r"];
            if(_loc12_ != undefined)
            {
               break;
            }
            this.api.network.Game.setPlayerPosition(_loc2_.num);
            break;
         case 5:
            if(this.api.datacenter.Player["\x17\x03\x1d"] != null && this.api.datacenter.Basics.gfx_canLaunch == true)
            {
               this.api.network.Items.use(this.api.datacenter.Player["\x17\x03\x1d"].ID,this["\x18\x18\x15"]["\x17\x14\x1d"](_loc2_.num)["\x1b\x07\r"],_loc2_.num);
            }
            this.api.gfx["\x1a\x17\x06"](ank.battlefield.Constants["\x18\x0b\f"]);
            this.api.gfx["\x16\x1c\x0b"]();
            this["\x1b\x13\x18"](true);
            this.api.datacenter.Player.reset();
            this.api.ui.removeCursor();
            this.api.datacenter.Game["\x1a\x17\t"]("move");
            break;
         case 6:
            if(this.api.datacenter.Game.isFight)
            {
               if(_loc2_.num != undefined)
               {
                  this.api.network.Game.setFlag(_loc2_.num);
               }
               this.api.gfx["\x16\x1c\x0b"]();
               this.api.gfx["\x1b\x13\x1b"]("startPosition");
               this.api.ui.removeCursor();
               if(this.api.datacenter.Game.isRunning && this.api.datacenter.Game["\x17\x03\x1a"] == this.api.datacenter.Player.ID)
               {
                  this.api.gfx["\x1a\x17\x06"](ank.battlefield.Constants["\x18\x0b\r"]);
                  this.api.datacenter.Game["\x1a\x17\t"]("move");
                  break;
               }
               this.api.gfx["\x1a\x17\x06"](ank.battlefield.Constants["\x18\x0b\f"]);
               this.api.datacenter.Game["\x1a\x17\t"]("place");
               break;
            }
      }
   }
   function §\x19\x15\x06§(§\x18\x1b\x10§)
   {
      if(this.api.kernel.TutorialManager["\x18\x10\x07"])
      {
         this.api.kernel.TutorialManager["\x19\x1e\x0f"]({code:"CELL_OVER",params:[_loc2_.num]});
         return undefined;
      }
      if(this.api.datacenter.Game.isRunning && (!this.api.datacenter.Player.isCurrentPlayer && this.api.datacenter.Game["\x18\x0b\t"] != 6))
      {
         return undefined;
      }
      switch(this.api.datacenter.Game["\x18\x0b\t"])
      {
         case 1:
            var _loc3_ = this.api.datacenter.Player;
            var _loc4_ = _loc3_.data;
            var _loc5_ = this["\x18\x18\x15"]["\x17\x14\x1d"](_loc2_.num)["\x1b\x07\r"];
            var _loc6_ = this.api.datacenter.Sprites.getItemAt(_loc5_);
            if(_loc6_ != undefined)
            {
               this.showSpriteInfos(_loc6_);
            }
            if(ank.battlefieldutils.["\x1a\x04\b"]["\x16\x1a\x18"](this["\x18\x18\x15"],_loc4_.cellNum,_loc2_.num,false,0,_loc4_.MP,0))
            {
               this.api.datacenter.Player["\x18\x0b\b"].setState(this.api.datacenter.Game.isFight);
               this.api.datacenter.Player["\x18\x0b\b"]["\x16\x15\b"](this["\x18\x18\x15"],_loc2_.num,false,this.api.datacenter.Game.isFight);
            }
            else
            {
               delete this.api.datacenter.Basics.interactionsManager_path;
            }
            break;
         case 2:
         case 3:
            var _loc7_ = this.api.datacenter.Player;
            var _loc8_ = _loc7_.data;
            var _loc9_ = _loc8_.cellNum;
            var _loc10_ = _loc7_["\x17\x03\x1d"];
            var _loc11_ = _loc7_["\x1b\x06\x12"];
            var _loc12_ = _loc10_.rangeModerator;
            this.api.gfx["\x18\x18\x15"]["\x1a\r\x1b"]();
            this.api.datacenter.Basics.gfx_canLaunch = _loc11_["\x16\x19\x1a"](this["\x18\x18\x15"],_loc10_,this["\x18\x18\x15"]["\x17\x14\x1d"](_loc2_.num),_loc12_,false);
            if(this.api.datacenter.Basics.gfx_canLaunch)
            {
               this.api.ui["\x1a\x15\x1a"](false);
               this["\x17\n\x0b"](_loc2_.num);
            }
            else
            {
               this.api.ui["\x1a\x15\x1a"](true,dofus.Constants["\x17\x12\x04"]);
            }
            break;
         case 5:
         case 6:
            this.api.datacenter.Basics.gfx_canLaunch = true;
            this.api.ui["\x1a\x15\x1a"](false);
            this["\x17\n\x0b"](_loc2_.num);
      }
   }
   function §\x19\x15\x05§(§\x18\x1b\x10§)
   {
      if(this.api.kernel.TutorialManager["\x18\x10\x07"])
      {
         this.api.kernel.TutorialManager["\x19\x1e\x0f"]({code:"CELL_OUT",params:[_loc2_.num]});
         return undefined;
      }
      if(this.api.datacenter.Game.isRunning && (!this.api.datacenter.Player.isCurrentPlayer && this.api.datacenter.Game["\x18\x0b\t"] != 6))
      {
         return undefined;
      }
      switch(this.api.datacenter.Game["\x18\x0b\t"])
      {
         case 1:
            this["\x18\x06\x1d"]();
            this["\x1b\x13\x18"](true);
            break;
         case 2:
         case 3:
            this.api.ui["\x1a\x15\x1a"](true,dofus.Constants["\x17\x12\x04"]);
            this["\x18\x06\x14"]();
            this.api.datacenter.Basics.gfx_canLaunch = false;
            this["\x18\x06\x1d"]();
            break;
         case 5:
         case 6:
            this.api.ui["\x1a\x15\x1a"](true,dofus.Constants["\x17\x12\x04"]);
            this.api.datacenter.Basics.gfx_canLaunch = false;
            this["\x18\x06\x14"]();
      }
   }
   function §\x19\x1d\x05§(§\x18\x1c\x03§, §\x16\x11\t§)
   {
      if(_loc3_ == undefined)
      {
         _loc3_ = false;
      }
      var _loc4_ = _loc2_.data;
      var _loc5_ = _loc4_.id;
      if(this.api.kernel.TutorialManager["\x18\x10\x07"])
      {
         this.api.kernel.TutorialManager["\x19\x1e\x0f"]({code:"SPRITE_RELEASE",params:[_loc4_.id]});
         return undefined;
      }
      if(_loc4_["\x18\x05\x0e"])
      {
         this["\x19\x1d\x05"](_loc4_["\x18\x15\x0b"].mc);
         return undefined;
      }
      var _loc0_ = null;
      if((_loc0_ = this.api.datacenter.Game["\x18\x0b\t"]) !== 5)
      {
         if(_loc4_ instanceof dofus.datacenter.["\x19\x02\x13"] && !_loc4_["\x1a\x1d\x1c"])
         {
            if(!this.api.datacenter.Game.isRunning)
            {
               if(this.api.datacenter.Player.isMutant)
               {
                  return undefined;
               }
            }
            var _loc6_ = this["\x18\x18\x15"]["\x17\x14\x1d"](_loc4_.cellNum).mc;
            this["\x19\x15\x04"](_loc6_);
         }
         else if(_loc4_ instanceof dofus.datacenter.["\x16\x19\x02"] || _loc4_ instanceof dofus.datacenter.["\x19\x02\x13"] && _loc4_["\x1a\x1d\x1c"])
         {
            if(this.api.datacenter.Game.isFight && (this.api.datacenter.Game.isRunning && !(this.api.datacenter.Player.isAuthorized && (this.api.datacenter.Game["\x18\x0b\t"] == dofus.datacenter.Game["\x18\x0b\x19"] && this.api.datacenter.Player["\x17\x03\x1d"] == null))))
            {
               var _loc7_ = this["\x18\x18\x15"]["\x17\x14\x1d"](_loc4_.cellNum).mc;
               this["\x19\x15\x04"](_loc7_);
               return undefined;
            }
            if(Key.isDown(Key.CONTROL))
            {
               var _loc8_ = this["\x18\x18\x15"]["\x17\x14\x1d"](_loc4_.cellNum)["\x16\x03\b"];
               this.api.kernel.GameManager["\x1a\x1c\x1b"](_loc8_);
            }
            else
            {
               this.api.kernel.GameManager["\x1a\x1e\x14"](_loc4_);
            }
         }
         else if(_loc4_ instanceof dofus.datacenter.["\x19\x0b\x07"])
         {
            if(this.api.datacenter.Player.cantSpeakNPC)
            {
               return undefined;
            }
            var _loc9_ = _loc4_.actions;
            if(_loc9_ != undefined && _loc9_.length != 0)
            {
               var _loc10_ = this.api.ui["\x17\x02\x19"]();
               if(Key.isDown(Key.SHIFT) || _loc3_)
               {
                  var _loc11_ = new Array(6,3,1,2,4,5,7,8);
                  var _loc12_ = 0;
                  while(_loc12_ < _loc11_.length)
                  {
                     var _loc13_ = _loc9_.findFirstItem("actionId",_loc11_[_loc12_]).item;
                     if(_loc13_ != undefined)
                     {
                        var _loc14_ = _loc13_.action;
                        var _loc15_ = _loc14_.method;
                        var _loc16_ = _loc14_.object;
                        var _loc17_ = _loc14_.params;
                        _loc15_.apply(_loc16_,_loc17_);
                        break;
                     }
                     _loc12_ = _loc12_ + 1;
                  }
               }
               else
               {
                  var _loc18_ = _loc9_.length;
                  while(true)
                  {
                     _loc18_;
                     if(_loc18_-- <= 0)
                     {
                        break;
                     }
                     var _loc19_ = _loc9_[_loc18_];
                     var _loc20_ = _loc19_.actionId;
                     var _loc21_ = _loc19_.action;
                     var _loc22_ = _loc21_.method;
                     var _loc23_ = _loc21_.object;
                     var _loc24_ = _loc21_.params;
                     _loc10_["\x15\x1d\x12"](_loc19_.name,_loc23_,_loc22_,_loc24_);
                  }
                  _loc10_.show(_root._xmouse,_root._ymouse);
               }
            }
         }
         else if(_loc4_ instanceof dofus.datacenter.["\x1b\x0e\x15"])
         {
            var _loc25_ = this.api.datacenter.Player.data.alignment.index;
            var _loc26_ = _loc4_.alignment.index;
            var _loc27_ = _loc4_["\x17\r\t"].alignment.index;
            var _loc28_ = _loc4_.challenge["\x17\x10\x02"];
            var _loc29_ = false;
            loop3:
            switch(_loc28_)
            {
               case 0:
                  switch(_loc4_.type)
                  {
                     case 0:
                     case 2:
                        _loc29_ = this.api.datacenter.Player.canChallenge && (!this.api.datacenter.Player.isMutant || this.api.datacenter.Player.canAttackDungeonMonstersWhenMutant);
                  }
                  break;
               case 1:
               case 2:
                  switch(_loc4_.type)
                  {
                     case 0:
                     case 1:
                        if(_loc25_ == _loc26_)
                        {
                           _loc29_ = !this.api.datacenter.Player.isMutant;
                           break;
                        }
                        _loc29_ = this.api.lang["\x17\x13\x1c"](_loc25_,_loc26_) && (this.api.lang["\x17\x13\x1b"](_loc25_,_loc27_) && !this.api.datacenter.Player.isMutant);
                        break;
                  }
                  break;
               case 3:
                  switch(_loc4_.type)
                  {
                     case 0:
                        _loc29_ = !this.api.datacenter.Player.isMutant || this.api.datacenter.Player.canAttackDungeonMonstersWhenMutant;
                        break;
                     case 1:
                        _loc29_ = false;
                  }
                  break;
               case 4:
                  switch(_loc4_.type)
                  {
                     case 0:
                        _loc29_ = !this.api.datacenter.Player.isMutant || this.api.datacenter.Player.canAttackDungeonMonstersWhenMutant;
                        break;
                     case 1:
                        _loc29_ = false;
                  }
                  break;
               case 5:
                  switch(_loc4_.type)
                  {
                     case 0:
                        _loc29_ = !this.api.datacenter.Player.isMutant && !this.api.datacenter.Player.cantInteractWithTaxCollector;
                        break;
                     case 3:
                        _loc29_ = false;
                  }
                  break;
               case 6:
                  switch(_loc4_.type)
                  {
                     case 0:
                        _loc29_ = !this.api.datacenter.Player.isMutant || this.api.datacenter.Player.canAttackDungeonMonstersWhenMutant;
                        break loop3;
                     case 2:
                        _loc29_ = this.api.datacenter.Player.isMutant && !this.api.datacenter.Player.canAttackDungeonMonstersWhenMutant == true;
                  }
            }
            if(_loc29_)
            {
               var _loc30_ = true;
               var _loc31_ = this.api.ui["\x17\x02\x19"]();
               var _loc32_ = this.api.lang["\x17\x1b\n"](this.api.datacenter.Map.id);
               var _loc33_ = this.api.lang["\x17\x1b\t"](this.api.datacenter.Map.id);
               if(_loc4_.challenge.count >= _loc33_)
               {
                  _loc31_["\x15\x1d\x12"](this.api.lang.getText("CHALENGE_FULL"));
               }
               else if(_loc4_.count >= _loc32_)
               {
                  _loc31_["\x15\x1d\x12"](this.api.lang.getText("TEAM_FULL"));
               }
               else if(Key.isDown(Key.SHIFT) || _loc3_)
               {
                  _loc30_ = false;
                  this.api.network.GameActions["\x18\x11\x12"](_loc4_.challenge.id,_loc4_.id);
                  this.api.ui.hideTooltip();
               }
               else
               {
                  _loc31_["\x15\x1d\x12"](this.api.lang.getText("JOIN_SMALL"),this.api.network.GameActions,this.api.network.GameActions["\x18\x11\x12"],[_loc4_.challenge.id,_loc4_.id]);
               }
               if(_loc30_)
               {
                  _loc31_.show(_root._xmouse,_root._ymouse);
               }
            }
         }
         else if(_loc4_ instanceof dofus.datacenter.["\x1a\x03\x14"])
         {
            if(_loc4_["\x1a\x03\x06"] == this.api.datacenter.Player.Name || this.api.datacenter.Map.firstMountPark["\x18\x04\x07"] == this.api.datacenter.Player.guildInfos.name && this.api.datacenter.Player.guildInfos["\x1a\x05\x15"]["\x16\x16\t"])
            {
               if(Key.isDown(Key.SHIFT) || _loc3_)
               {
                  this.api.network.Mount["\x1a\x03\x15"](_loc4_.id);
               }
               else
               {
                  var _loc34_ = this.api.ui["\x17\x02\x19"]();
                  _loc34_["\x15\x1e\x18"](this.api.lang.getText("MOUNT_OF",[_loc4_["\x1a\x03\x06"]]));
                  _loc34_["\x15\x1d\x12"](this.api.lang.getText("VIEW_MOUNT_DETAILS"),this.api.network.Mount,this.api.network.Mount["\x1a\x03\x15"],[_loc4_.id]);
                  _loc34_.show(_root._xmouse,_root._ymouse);
               }
            }
         }
         else if(_loc4_ instanceof dofus.datacenter.Creature)
         {
            var _loc35_ = this["\x18\x18\x15"]["\x17\x14\x1d"](_loc4_.cellNum).mc;
            this["\x19\x15\x04"](_loc35_);
         }
         else if(_loc4_ instanceof dofus.datacenter.["\x18\x1d\x19"] || _loc4_ instanceof dofus.datacenter.["\x18\x1d\x18"])
         {
            if(_loc4_ instanceof dofus.datacenter.["\x18\x1d\x18"] && this.api.kernel.GameManager["\x18\x0e\b"](_loc4_))
            {
               this.api.kernel.GameManager["\x1a\x1e\r"](_loc4_);
            }
            if(!this.api.datacenter.Player.isMutant || (this.api.datacenter.Player.canAttackDungeonMonstersWhenMutant || this.api.datacenter.Player.canAttackMonstersAnywhereWhenMutant))
            {
               var _loc36_ = this["\x18\x18\x15"]["\x17\x14\x1d"](_loc4_.cellNum);
               var _loc37_ = _loc36_.mc;
               if(!Key.isDown(Key.SHIFT) && (!_loc3_ && (!this.api.datacenter.Game.isFight && _loc4_ instanceof dofus.datacenter.["\x18\x1d\x19"])))
               {
                  var _loc38_ = _loc36_["\x18\x10\x06"];
                  if(!_loc38_ && this.api.kernel.OptionsManager.getOption("ViewAllMonsterInGroup") == true)
                  {
                     var _loc39_ = this.api.ui["\x17\x02\x19"]();
                     _loc39_["\x15\x1d\x12"](this.api.lang.getText("ATTACK"),this,this["\x19\x15\x04"],[_loc37_]);
                     _loc39_.show();
                  }
                  else
                  {
                     this["\x19\x15\x04"](_loc37_);
                  }
               }
               else
               {
                  this["\x19\x15\x04"](_loc37_);
               }
            }
         }
         else if(_loc4_ instanceof dofus.datacenter.["\x19\x12\x19"])
         {
            if(!this.api.datacenter.Player.isMutant || this.api.datacenter.Player.canAttackDungeonMonstersWhenMutant)
            {
               if(!this.api.datacenter.Player.canExchange)
               {
                  return undefined;
               }
               if(Key.isDown(Key.SHIFT) || _loc3_)
               {
                  this.api.kernel.GameManager["\x1b\t\x0f"](4,_loc4_.id,_loc4_.cellNum);
               }
               else
               {
                  var _loc41_ = _loc4_.name;
                  if(this.api.datacenter.Player.isAuthorized)
                  {
                     var _loc40_ = this.api.kernel.AdminManager["\x17\x13\x17"](_loc41_,false);
                  }
                  else
                  {
                     _loc40_ = this.api.ui["\x17\x02\x19"]();
                  }
                  _loc40_["\x15\x1e\x18"](this.api.lang.getText("SHOP") + " " + this.api.lang.getText("OF") + " " + _loc4_.name);
                  _loc40_["\x15\x1d\x12"](this.api.lang.getText("BUY"),this.api.kernel.GameManager,this.api.kernel.GameManager["\x1b\t\x0f"],[4,_loc4_.id,_loc4_.cellNum]);
                  if(_loc4_.characterID != undefined && _loc4_.name != undefined)
                  {
                     _loc40_["\x15\x1d\x12"](this.api.lang.getText("REPORT_PLAYER"),this.api.kernel.GameManager,this.api.kernel.GameManager.reportPlayer,[_loc4_.characterID,_loc4_.name,true]);
                  }
                  var _loc42_ = 2;
                  if(this.api.datacenter.Map.isMyHome)
                  {
                     _loc40_["\x15\x1d\x12"](this.api.lang.getText("KICKOFF"),this.api.network.Basics,this.api.network.Basics["\x18\x12\x01"],[_loc4_.cellNum]);
                     _loc42_ = _loc42_ + 1;
                  }
                  if(this.api.datacenter.Player.isAuthorized)
                  {
                     var _loc43_ = 0;
                     while(_loc43_ < _loc42_)
                     {
                        _loc40_.items.unshift(_loc40_.items.pop());
                        _loc43_ = _loc43_ + 1;
                     }
                  }
                  _loc40_.show(_root._xmouse,_root._ymouse,true);
               }
            }
         }
         else if(_loc4_ instanceof dofus.datacenter.["\x1b\x0e\x04"])
         {
            if(!this.api.datacenter.Player.isMutant)
            {
               if(this.api.datacenter.Player.cantInteractWithTaxCollector)
               {
                  return undefined;
               }
               if(this.api.datacenter.Game.isFight)
               {
                  var _loc44_ = this["\x18\x18\x15"]["\x17\x14\x1d"](_loc4_.cellNum).mc;
                  this["\x19\x15\x04"](_loc44_);
               }
               else if(Key.isDown(Key.SHIFT) || _loc3_)
               {
                  this.api.network.Dialog.create(_loc5_);
               }
               else
               {
                  var _loc45_ = this.api.datacenter.Player.guildInfos["\x1a\x05\x15"];
                  var _loc46_ = _loc4_["\x18\x04\x07"] == this.api.datacenter.Player.guildInfos.name;
                  var _loc47_ = _loc45_["\x16\x15\x1d"] || _loc4_["\x18\x0e\x1c"] && _loc45_.canCollectOwnTaxCollector;
                  var _loc48_ = this.api.ui["\x17\x02\x19"]();
                  _loc48_["\x15\x1d\x12"](this.api.lang.getText("SPEAK"),this.api.network.Dialog,this.api.network.Dialog.create,[_loc5_]);
                  _loc48_["\x15\x1d\x12"](this.api.lang.getText("COLLECT_TAX"),this.api.kernel.GameManager,this.api.kernel.GameManager["\x1b\t\x0f"],[8,_loc5_],_loc46_ && _loc47_);
                  _loc48_["\x15\x1d\x12"](this.api.lang.getText("ATTACK"),this.api.network.GameActions,this.api.network.GameActions["\x16\x07\x01"],[[_loc5_]],!_loc46_);
                  _loc48_.show(_root._xmouse,_root._ymouse);
               }
            }
         }
         else if(_loc4_ instanceof dofus.datacenter.["\x1a\x07\x0b"])
         {
            if(!this.api.datacenter.Player.isMutant)
            {
               if(this.api.datacenter.Game.isFight)
               {
                  var _loc49_ = this["\x18\x18\x15"]["\x17\x14\x1d"](_loc4_.cellNum).mc;
                  this["\x19\x15\x04"](_loc49_);
               }
               else
               {
                  var _loc50_ = this.api.datacenter.Player.alignment.index == 0;
                  var _loc51_ = this.api.datacenter.Player.alignment["\x16\x1e\x01"](_loc4_.alignment) == 0;
                  if((Key.isDown(Key.SHIFT) || _loc3_) && _loc51_)
                  {
                     this.api.network.GameActions["\x1b\x16\x18"]([_loc5_]);
                  }
                  else
                  {
                     var _loc52_ = this.api.ui["\x17\x02\x19"]();
                     _loc52_["\x15\x1d\x12"](this.api.lang.getText("USE_WORD"),this.api.network.GameActions,this.api.network.GameActions["\x1b\x16\x18"],[[_loc5_]],_loc51_);
                     _loc52_["\x15\x1d\x12"](this.api.lang.getText("ATTACK"),this.api.network.GameActions,this.api.network.GameActions["\x16\x06\x1d"],[[_loc5_]],!_loc51_ && !_loc50_);
                     _loc52_.show(_root._xmouse,_root._ymouse);
                  }
               }
            }
         }
      }
      else
      {
         if(this.api.datacenter.Player["\x17\x03\x1d"] != null && this.api.datacenter.Basics.gfx_canLaunch == true)
         {
            this.api.network.Items.use(this.api.datacenter.Player["\x17\x03\x1d"].ID,_loc4_.id,_loc4_.cellNum);
         }
         this.api.gfx["\x1a\x17\x06"](ank.battlefield.Constants["\x18\x0b\f"]);
         this.api.gfx["\x16\x1c\x0b"]();
         this["\x1b\x13\x18"](true);
         this.api.datacenter.Player.reset();
         this.api.ui.removeCursor();
         this.api.datacenter.Game["\x1a\x17\t"]("move");
      }
   }
   function §\x19\x1d\x07§(§\x18\x1c\x03§, §\x16\x0b\x10§)
   {
      if(!_loc3_)
      {
         this["\x1e\x07\f"] = _loc2_;
      }
      if(_root._xscale != 100)
      {
         return undefined;
      }
      var _loc6_ = _loc2_.data;
      var _loc7_ = dofus.Constants["\x1a\x02\x1d"];
      if(!_loc6_["\x18\x10\x0e"])
      {
         this.showSpriteInfos(_loc6_);
         return undefined;
      }
      if(_loc6_["\x18\r\x04"])
      {
         return undefined;
      }
      if(_loc6_["\x18\x05\x0e"])
      {
         this["\x19\x1d\x07"](_loc6_["\x18\x15\x0b"].mc,_loc3_);
         return undefined;
      }
      if(this.api.datacenter.Game.isRunning || this.api.datacenter.Game["\x18\x0b\t"] == 5)
      {
         var _loc9_ = this["\x18\x18\x15"]["\x17\x14\x1d"](_loc6_.cellNum).mc;
         if(_loc6_["\x18\x10\x0e"])
         {
            this["\x19\x15\x06"](_loc9_);
         }
      }
      var _loc10_ = _loc6_.name;
      if(_loc6_ instanceof dofus.datacenter.["\x19\x02\x13"] && _loc6_["\x1a\x1d\x1c"])
      {
         if(this.api.datacenter.Game.isRunning)
         {
            if(this.api.kernel.OptionsManager.getOption("ViewHPAsBar"))
            {
               _loc10_ = "";
               this.addSpriteOverHeadItem(_loc6_.id,"text",dofus.graphics.battlefield.HealthBarOverHead,[_loc6_,100]);
            }
            else
            {
               _loc10_ = _loc6_.playerName + " (" + _loc6_.LP + ")";
            }
            this.showSpriteInfos(_loc6_);
         }
         else
         {
            _loc10_ = _loc6_.playerName + " [" + _loc6_["\x18\x1d\x1b"] + " (" + _loc6_.Level + ")]";
         }
      }
      else if(_loc6_ instanceof dofus.datacenter.["\x19\x02\x13"] || (_loc6_ instanceof dofus.datacenter.Creature || _loc6_ instanceof dofus.datacenter.["\x18\x1d\x18"]))
      {
         _loc7_ = dofus.Constants["\x19\f\x02"][_loc6_.alignment.index];
         if(this.api.datacenter.Game.isRunning)
         {
            if(this.api.kernel.OptionsManager.getOption("ViewHPAsBar"))
            {
               _loc10_ = "";
               this.addSpriteOverHeadItem(_loc6_.id,"text",dofus.graphics.battlefield.HealthBarOverHead,[_loc6_,100]);
            }
            else
            {
               _loc10_ += " (" + _loc6_.LP + ")";
            }
            this.showSpriteInfos(_loc6_);
         }
         else
         {
            _loc10_ += " (" + _loc6_.Level + ")";
         }
      }
      else if(_loc6_ instanceof dofus.datacenter.["\x16\x19\x02"])
      {
         _loc7_ = dofus.Constants["\x1a\x02\x1c"];
         var _loc4_ = dofus.Constants["\x17\x07\x03"];
         if(_loc6_.alignment["\x17\x0f\x05"])
         {
            _loc4_ = dofus.Constants["\x17\x0f\x06"];
         }
         var _loc11_ = !_loc6_.haveFakeAlignement ? _loc6_.alignment.index : _loc6_.fakeAlignment.index;
         if(_loc6_.rank.value > 0)
         {
            if(_loc11_ == 1)
            {
               var _loc5_ = _loc6_.rank.value;
            }
            else if(_loc11_ == 2)
            {
               _loc5_ = 10 + _loc6_.rank.value;
            }
            else if(_loc11_ == 3)
            {
               _loc5_ = 20 + _loc6_.rank.value;
            }
         }
         if(this.api.datacenter.Game.isRunning)
         {
            this.addSpriteOverHeadItem(_loc6_.id,"effects",dofus.graphics.battlefield["\x17\f\f"],[_loc6_]);
            if(this.api.kernel.OptionsManager.getOption("ViewHPAsBar"))
            {
               _loc10_ = "";
               this.addSpriteOverHeadItem(_loc6_.id,"text",dofus.graphics.battlefield.HealthBarOverHead,[_loc6_,100,_loc4_,_loc5_]);
            }
            else
            {
               _loc10_ += " (" + _loc6_.LP + ")";
            }
            this.showSpriteInfos(_loc6_);
         }
         else if(this.api.datacenter.Game.isFight)
         {
            _loc10_ += " (" + _loc6_.Level + ")";
         }
         var _loc8_ = _loc6_.title;
         if(_loc6_["\x18\x04\x07"] != undefined && _loc6_["\x18\x04\x07"].length != 0)
         {
            _loc10_ = "";
            this.addSpriteOverHeadItem(_loc6_.id,"text",dofus.graphics.battlefield["\x18\x04\b"],[_loc6_["\x18\x04\x07"],_loc6_.name,_loc6_["\x17\f\x14"],_loc4_,_loc5_,_loc6_.pvpGain,_loc8_],undefined,true);
         }
      }
      else if(_loc6_ instanceof dofus.datacenter.["\x1b\x0e\x04"])
      {
         if(this.api.datacenter.Game.isRunning)
         {
            if(this.api.kernel.OptionsManager.getOption("ViewHPAsBar"))
            {
               _loc10_ = "";
               this.addSpriteOverHeadItem(_loc6_.id,"text",dofus.graphics.battlefield.HealthBarOverHead,[_loc6_,100]);
            }
            else
            {
               _loc10_ += " (" + _loc6_.LP + ")";
            }
            this.showSpriteInfos(_loc6_);
         }
         else if(this.api.datacenter.Game.isFight)
         {
            _loc10_ += " (" + _loc6_.Level + ")";
         }
         else
         {
            _loc10_ = "";
            this.addSpriteOverHeadItem(_loc6_.id,"text",dofus.graphics.battlefield["\x18\x04\b"],[_loc6_["\x18\x04\x07"],_loc6_.name,_loc6_["\x17\f\x14"]]);
         }
      }
      else if(_loc6_ instanceof dofus.datacenter.["\x1a\x07\x0b"])
      {
         _loc4_ = dofus.Constants["\x17\x07\x03"];
         if(_loc6_.alignment.value > 0)
         {
            if(_loc6_.alignment.index == 1)
            {
               _loc5_ = _loc6_.alignment.value;
            }
            else if(_loc6_.alignment.index == 2)
            {
               _loc5_ = 10 + _loc6_.alignment.value;
            }
            else if(_loc6_.alignment.index == 3)
            {
               _loc5_ = 20 + _loc6_.alignment.value;
            }
         }
         _loc7_ = dofus.Constants["\x19\f\x02"][_loc6_.alignment.index];
         this.addSpriteOverHeadItem(_loc6_.id,"text",dofus.graphics.battlefield["\x1b\x0f\x15"],[_loc10_,_loc4_,_loc7_,_loc5_]);
      }
      else if(_loc6_ instanceof dofus.datacenter.["\x1a\x03\x14"])
      {
         _loc7_ = dofus.Constants["\x1a\x02\x1c"];
         _loc10_ = this.api.lang.getText("MOUNT_PARK_OVERHEAD",[_loc6_.modelName,_loc6_.level,_loc6_["\x1a\x03\x06"]]);
         this.addSpriteOverHeadItem(_loc6_.id,"text",dofus.graphics.battlefield["\x1b\x0f\x15"],[_loc10_,_loc4_,_loc7_,_loc5_]);
      }
      else if(_loc6_ instanceof dofus.datacenter.["\x19\x12\x19"])
      {
         _loc7_ = dofus.Constants["\x1a\x02\x1c"];
         _loc10_ = "";
         this.addSpriteOverHeadItem(_loc6_.id,"text",dofus.graphics.battlefield["\x19\x12\x1b"],[_loc6_]);
      }
      else if(_loc6_ instanceof dofus.datacenter.["\x19\x0b\x07"])
      {
         var _loc12_ = this.api.datacenter.Map;
         var _loc13_ = this.api.datacenter.Subareas.getItemAt(_loc12_["\x1b\x0b\x17"]);
         if(_loc13_ != undefined)
         {
            _loc7_ = dofus.Constants["\x19\f\x02"][_loc13_.alignment.index];
         }
      }
      else if(_loc6_ instanceof dofus.datacenter.["\x18\x1d\x19"] || _loc6_ instanceof dofus.datacenter.["\x1b\x0e\x15"])
      {
         if(_loc6_.alignment.index != -1)
         {
            _loc7_ = dofus.Constants["\x19\f\x02"][_loc6_.alignment.index];
         }
         var _loc14_ = _loc6_.challenge["\x17\x10\x02"];
         if(_loc6_["\x18\x10\x0e"] && (_loc6_ instanceof dofus.datacenter.["\x18\x1d\x19"] || _loc6_.type == 1 && (_loc14_ == 2 || (_loc14_ == 3 || _loc14_ == 4))))
         {
            if(_loc10_ != "")
            {
               var _loc15_ = dofus.Constants["\x1a\x03\x01"];
               this.addSpriteOverHeadItem(_loc6_.id,"text",dofus.graphics.battlefield["\x1b\x0f\x16"],[_loc10_,_loc4_,_loc7_,_loc5_,this.api.lang.getText("LEVEL") + " " + _loc6_["\x1b\x11\x05"],_loc15_,_loc6_["\x16\x0f\x1c"]]);
            }
            this["\x1a\x13\x0f"](_loc6_.id,true);
            return undefined;
         }
      }
      if(_loc10_ != "")
      {
         this.addSpriteOverHeadItem(_loc6_.id,"text",dofus.graphics.battlefield["\x1b\x0f\x15"],[_loc10_,_loc4_,_loc7_,_loc5_,_loc6_,_loc8_]);
      }
      this["\x1a\x13\x0f"](_loc6_.id,true);
   }
   function §\x19\x1d\x06§(§\x18\x1c\x03§, §\x16\x0b\x10§)
   {
      if(!_loc3_)
      {
         this["\x1e\x07\f"] = undefined;
      }
      var _loc4_ = _loc2_.data;
      if(this.api.gfx.SpriteHandler["\x18\x0f\x15"] && _loc4_ instanceof dofus.datacenter.["\x18\x1d\x19"])
      {
         return undefined;
      }
      if(_loc4_["\x18\x05\x0e"])
      {
         this["\x19\x1d\x06"](_loc4_["\x18\x15\x0b"].mc);
         return undefined;
      }
      if(this.api.datacenter.Game.isRunning || this.api.datacenter.Game["\x18\x0b\t"] == 5)
      {
         this["\x18\x06\x1d"]();
         var _loc5_ = this["\x18\x18\x15"]["\x17\x14\x1d"](_loc4_.cellNum).mc;
         this["\x19\x15\x05"](_loc5_);
      }
      this["\x1a\f\x1d"](_loc4_.id,"text");
      this["\x1a\f\x1d"](_loc4_.id,"effects");
      this["\x1a\x13\x0f"](_loc4_.id,false);
   }
   function §\x19\x1a\x1a§(§\x18\x1b\x1b§, §\x16\x11\t§)
   {
      if(_loc3_ == undefined)
      {
         _loc3_ = false;
      }
      this.api.ui.hideTooltip();
      var _loc4_ = _loc2_["\x16\x17\x16"];
      var _loc5_ = _loc4_.mc;
      var _loc6_ = _loc4_["\x18\x13\x12"];
      if(this.api.kernel.TutorialManager["\x18\x10\x07"])
      {
         this.api.kernel.TutorialManager["\x19\x1e\x0f"]({code:"OBJECT_RELEASE",params:[_loc4_.num,_loc6_]});
         return undefined;
      }
      var _loc7_ = _loc4_.layerObjectExternalData;
      if(_loc7_ != undefined)
      {
         if(_loc7_.rideItemDurability != undefined)
         {
            if(this.api.datacenter.Map.firstMountPark["\x18\x0e\x1c"](this.api))
            {
               var _loc8_ = this.api.ui["\x17\x02\x19"]();
               _loc8_["\x15\x1e\x18"](_loc7_.name);
               _loc8_["\x15\x1d\x12"](this.api.lang.getText("REMOVE"),this.api.network.Mount,this.api.network.Mount["\x1a\f\x11"],[_loc5_.num]);
               _loc8_.show(_root._xmouse,_root._ymouse);
               return undefined;
            }
         }
      }
      if(!_global.isNaN(_loc6_) && (this.api.datacenter.Player.canUseInteractiveObjects && this.api.datacenter.Game["\x18\x0b\t"] != 5))
      {
         var _loc9_ = this.api.lang["\x17\x19\n"](_loc6_);
         var _loc10_ = _loc9_.n;
         var _loc11_ = _loc9_.sk;
         var _loc12_ = _loc9_.t;
         switch(_loc12_)
         {
            case 1:
            case 2:
            case 3:
            case 4:
            case 7:
            case 10:
            case 12:
            case 14:
            case 15:
               var _loc13_ = _loc12_ == 1;
               if(_loc13_)
               {
                  var _loc14_ = this.api["\x18\x1e\x11"].getMouseClickForGather(2);
                  if(_loc14_ != undefined)
                  {
                     var _loc15_ = 7320 - _loc14_.time;
                     var _loc16_ = _loc15_ < dofus.Constants.CLICK_MIN_DELAY;
                     if(_loc16_)
                     {
                        var _loc17_ = _loc2_.hitTest(_loc14_["\x19\x10\x1a"],_loc14_["\x19\x11\x05"],true);
                        if(_loc17_)
                        {
                           this.api.kernel.showMessage(undefined,this.api.lang.getText("SRV_MSG_0"),"ERROR_CHAT");
                           return undefined;
                        }
                     }
                  }
                  this.api["\x18\x1e\x11"]["\x1a\r\x1c"]();
               }
               var _loc18_ = this.api.datacenter.Player.currentJobID != undefined;
               if(_loc18_)
               {
                  var _loc19_ = this.api.datacenter.Player["\x18\x11\x0f"].findFirstItem("id",this.api.datacenter.Player.currentJobID).item.skills;
               }
               else
               {
                  _loc19_ = new ank.utils.ExtendedArray();
               }
               var _loc20_ = true;
               var _loc21_ = this.api.ui["\x17\x02\x19"]();
               _loc21_["\x15\x1e\x18"](_loc10_);
               for(var k in _loc11_)
               {
                  var _loc22_ = _loc11_[k];
                  var _loc23_ = new dofus.datacenter.["\x1b\x02\n"](_loc22_);
                  var _loc24_ = _loc19_.findFirstItem("id",_loc22_).index != -1;
                  var _loc25_ = this.api.datacenter.Player.Level <= dofus.Constants["\x19\x0b\x10"];
                  var _loc26_ = _loc23_["\x18\x01\r"](_loc24_,false,false,false,false,_loc25_);
                  if(_loc26_ != "X")
                  {
                     var _loc27_ = _loc26_ == "V";
                     if(_loc27_ && ((Key.isDown(Key.SHIFT) || _loc3_) && (_loc22_ != 44 && _loc12_ != 1)))
                     {
                        this.api.kernel.GameManager["\x1b\x16\x19"](_loc5_,_loc5_.num,_loc22_);
                        _loc20_ = false;
                        !("\x18\x0e\x02"[_loc13_] != 100);
                        _loc12_ != 1[null].GameManager["\x1b\x16\x19"]();
                        _loc20_ = false;
                        §§push(!_loc20_);
                        §§push(_loc21_);
                        break;
                     }
                     if(_root._xscale != 100 && _loc12_ == 1)
                     {
                        while(§§pop() != null)
                        {
                        }
                        return undefined;
                     }
                     _loc21_["\x15\x1d\x12"](_loc23_.description,this.api.kernel.GameManager,this.api.kernel.GameManager["\x1b\x16\x19"],[_loc5_,_loc5_.num,_loc22_],_loc27_);
                  }
               }
               if(_loc20_)
               {
                  _loc21_["\x18\x0e\x02"] = _loc13_;
                  if(_loc21_["\x18\x0e\x02"] && _loc12_ == 1)
                  {
                     _loc21_["\x17\x13\x0b"] = _loc5_.num;
                  }
                  _loc21_.show(_root._xmouse,_root._ymouse);
               }
               break;
            case 5:
               var _loc28_ = this.api.lang["\x17\x18\x17"](this.api.datacenter.Map.id,_loc5_.num);
               this.api.kernel.HouseManager.openHouseMenu(_loc10_,_loc28_,_loc11_,_loc5_);
               break;
            case 6:
               var _loc29_ = _loc5_.num;
               var _loc30_ = this.api.datacenter.Storages.getItemAt(_loc29_);
               var _loc31_ = _loc30_["\x18\x0e\x17"];
               var _loc32_ = this.api.datacenter.Map.isMyHome;
               var _loc33_ = true;
               var _loc34_ = this.api.ui["\x17\x02\x19"]();
               _loc34_["\x15\x1e\x18"](_loc10_);
               for(var k in _loc11_)
               {
                  var _loc35_ = _loc11_[k];
                  var _loc36_ = new dofus.datacenter.["\x1b\x02\n"](_loc35_);
                  var _loc37_ = _loc36_["\x18\x01\r"](true,_loc32_,true,_loc31_);
                  if(_loc37_ != "X")
                  {
                     var _loc38_ = _loc37_ == "V";
                     if(_loc38_ && ((Key.isDown(Key.SHIFT) || _loc3_) && (_loc35_ == 104 || _loc35_ == 153)))
                     {
                        this.api.kernel.GameManager["\x1b\x16\x19"](_loc5_,_loc5_.num,_loc35_);
                        _loc33_ = false;
                        break;
                     }
                     _loc34_["\x15\x1d\x12"](_loc36_.description,this.api.kernel.GameManager,this.api.kernel.GameManager["\x1b\x16\x19"],[_loc5_,_loc5_.num,_loc35_],_loc38_);
                  }
               }
               if(_loc33_)
               {
                  _loc34_.show(_root._xmouse,_root._ymouse);
               }
               break;
            case 13:
               var _loc39_ = this.api.datacenter.Map.firstMountPark;
               this.api.kernel.MountParkManager.openMountParkMenu(_loc10_,_loc11_,_loc5_,_loc39_);
               break;
            default:
               this["\x19\x15\x04"](_loc5_);
         }
      }
      else
      {
         this["\x19\x15\x04"](_loc5_);
      }
   }
   function §\x19\x1a\x1c§(§\x18\x1b\x1b§)
   {
      this["\x1e\x07\x0b"] = _loc2_;
      if(_root._xscale != 100)
      {
         return undefined;
      }
      var _loc3_ = _loc2_["\x16\x17\x16"];
      var _loc4_ = _loc3_.mc;
      var _loc5_ = _loc3_["\x18\x13\x12"];
      if(this.api.datacenter.Game["\x18\x0b\t"] == 5)
      {
         _loc4_ = _loc2_["\x16\x17\x16"].mc;
         this["\x19\x15\x06"](_loc4_);
      }
      _loc2_.select(true);
      var _loc6_ = _loc3_.layerObjectExternalData;
      if(_loc6_ != undefined)
      {
         var _loc7_ = _loc6_.name;
         if(_loc6_.rideItemDurability != undefined)
         {
            if(this.api.datacenter.Map.firstMountPark["\x18\x0e\x1c"](this.api))
            {
               _loc7_ += "\n" + this.api.lang.getText("DURABILITY") + " : " + _loc6_.rideItemDurability + "/" + _loc6_.rideItemDurabilityMax;
            }
         }
         var _loc8_ = new dofus.datacenter.["\x16\x19\x02"]("itemOnCell",ank.battlefield.mc.Sprite,"",_loc4_.num,0,0);
         this.api.datacenter.Sprites.addItemAt("itemOnCell",_loc8_);
         this.api.gfx.addSprite("itemOnCell");
         this.addSpriteOverHeadItem("itemOnCell","text",dofus.graphics.battlefield["\x1b\x0f\x15"],[_loc7_,"",dofus.Constants["\x1a\x02\x1c"]]);
      }
      var _loc9_ = this.api.lang["\x17\x19\n"](_loc5_);
      var _loc10_ = _loc9_.n;
      var _loc11_ = _loc9_.sk;
      var _loc12_ = _loc9_.t;
      switch(_loc12_)
      {
         case 5:
            var _loc13_ = this.api.lang["\x17\x18\x17"](this.api.datacenter.Map.id,_loc4_.num);
            var _loc14_ = this.api.kernel.HouseManager.getHouseInstances(_loc13_);
            var _loc15_ = new dofus.datacenter.["\x16\x19\x02"]("porte",ank.battlefield.mc.Sprite,"",_loc4_.num,0,0);
            this.api.datacenter.Sprites.addItemAt("porte",_loc15_);
            this.api.gfx.addSprite("porte");
            this.addSpriteOverHeadItem("porte","text",dofus.graphics.battlefield.PropertyOverHead,[_loc14_,"HouseIcon"]);
            break;
         case 13:
            var _loc16_ = this.api.datacenter.Map.firstMountPark;
            var _loc17_ = new dofus.datacenter.["\x16\x19\x02"]("enclos",ank.battlefield.mc.Sprite,"",_loc4_.num,0,0);
            this.api.datacenter.Sprites.addItemAt("enclos",_loc17_);
            this.api.gfx.addSprite("enclos");
            var _loc18_ = this.api.datacenter.Map.mountParks;
            this.addSpriteOverHeadItem("enclos","text",dofus.graphics.battlefield.MountParkOverHead,[_loc18_,"FarmIcon"]);
      }
   }
   function §\x19\x1a\x1b§(§\x18\x1b\x1b§)
   {
      this["\x1e\x07\x0b"] = undefined;
      this.api.ui.hideTooltip();
      if(this.api.datacenter.Game["\x18\x0b\t"] == 5)
      {
         var _loc3_ = _loc2_["\x16\x17\x16"].mc;
         this["\x19\x15\x05"](_loc3_);
      }
      _loc2_.select(false);
      this["\x1a\f\x1d"]("enclos","text");
      this["\x1a\f\x19"]("enclos",false);
      this["\x1a\f\x1d"]("porte","text");
      this["\x1a\f\x19"]("porte",false);
      this["\x1a\f\x1d"]("itemOnCell","text");
      this["\x1a\f\x19"]("itemOnCell",false);
   }
   function showSpriteInfos(§\x1a\x02\b§)
   {
      if(!this.api.kernel.OptionsManager.getOption("SpriteInfos"))
      {
         return undefined;
      }
      if(this.api.kernel.OptionsManager.getOption("SpriteMove") && (_loc2_["\x18\x10\x0e"] && this.api.ui["\x18\r\f"]()))
      {
         this.api.gfx["\x17\n\x10"](_loc2_.cellNum,0,_loc2_.MP,"move",dofus.Constants["\x16\x18\x02"],"C".charCodeAt(0));
      }
      this.api.ui.getUIComponent("Banner")["\x1a\x1e\x17"]("BannerSpriteInfos",{data:_loc2_},true,true);
   }
   function §\x18\x06\x1d§()
   {
      this.api.ui.getUIComponent("Banner")["\x18\x06\x16"](false,true);
      this.api.gfx["\x16\x1c\x13"]("move");
   }
}
