class dofus.§\x18\x03\x10§.gapi.ui.Banner extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x01§ = 250;
   static var §\x16\x1b\x10§ = "Banner";
   var §\x1d\x16\x05§ = 0;
   var §\x1c\x02\x15§ = true;
   var §\x1e\b\b§ = "";
   var §\x1c\x04\x19§ = false;
   var _bUseFlashChat = true;
   function Banner()
   {
      super();
   }
   function §\x1e\x17\x13§()
   {
      return this._msShortcuts["\x17\x03\x19"];
   }
   function get useFlashChat()
   {
      return this._bUseFlashChat;
   }
   function get circleXtra()
   {
      return this._circleXtra;
   }
   function get chatPrefix()
   {
      return this["\x1e\b\b"];
   }
   function §\x11\x19§(§\x19\x12\x10§)
   {
      this._oData = _loc2_;
      return this["\x1e\x18\x01"]();
   }
   function §\x1e\x1a\n§()
   {
      return this["\x1d\x16\x05"];
   }
   function §\x13\f§(§\x19\x07\x11§)
   {
      this["\x1d\x16\x05"] = _loc2_;
      this["\x1b\x14\x19"]();
      return this["\x1e\x1a\n"]();
   }
   function §\x1e\x15\x14§()
   {
      return this["\x1c\x02\x15"];
   }
   function §\x10\x13§(§\x16\n\x02§)
   {
      this["\x1c\x02\x15"] = _loc2_;
      return this["\x1e\x15\x14"]();
   }
   function __get__txtConsole()
   {
      return this._txtConsole.text;
   }
   function §\x1e\x13§(sText)
   {
      this._txtConsole.text = _loc2_;
      return this.txtConsole;
   }
   function §\x1e\x15\x13§()
   {
      return this._cChat;
   }
   function §\t\x02§()
   {
      return this._msShortcuts;
   }
   function §\x1e\x1c\x06§()
   {
      return this._mcXtra;
   }
   function §\x1e\x1c\x07§()
   {
      return this["\x1e\b\x11"];
   }
   function §\x1b\x14\x19§()
   {
      if(this._btnFights.icon == "")
      {
         this._btnFights.icon = "Eye2";
      }
      var _loc2_ = this["\x1d\x16\x05"] != 0 && !this.api.datacenter.Game.isFight;
      this._btnFights._visible = _loc2_;
   }
   function §\x1a\x19\x14§(§\x16\x12\x05§)
   {
      this._cChat.selectable = _loc2_;
   }
   function setChatAutoScroll(§\x16\t\x0e§)
   {
      this._cChat.isAutoScrollingEnabled = _loc2_;
   }
   function §\x18\n\x1c§(sText)
   {
      if(this._bUseFlashChat)
      {
         this._txtConsole.text += _loc2_;
      }
      else
      {
         this.api.electron.retroChatInsertPromptText(_loc2_);
      }
   }
   function showNextTurnButton(bShow)
   {
      this._btnNextTurn._visible = _loc2_;
   }
   function showGiveUpButton(bShow)
   {
      if(_loc2_)
      {
         this._circleXtra["\x1a\x1b\x07"](true);
      }
      this._btnGiveUp._visible = _loc2_;
   }
   function §\x18\x1e\x18§(§\x16\x13\x0f§)
   {
      if(_loc2_)
      {
         if(!this["\x1c\x04\x19"])
         {
            this._hHeart._y -= 30;
         }
      }
      else if(this["\x1c\x04\x19"])
      {
         this._hHeart._y += 30;
      }
      this["\x1c\x04\x19"] = _loc2_;
   }
   function showPoints(bShow)
   {
      this._pvAP._visible = _loc2_;
      this._pvMP._visible = _loc2_;
      this._cChat["\x1a\x1e\x1c"](!_loc2_);
      if(_loc2_)
      {
         this._oData.data.addEventListener("lpChanged",this);
         this._oData.data.addEventListener("apChanged",this);
         this._oData.data.addEventListener("mpChanged",this);
         this.apChanged({value:Math.max(0,this._oData.data.AP)});
         this.mpChanged({value:Math.max(0,this._oData.data.MP)});
      }
   }
   function startTimer(§\x19\x06\f§)
   {
      this["\x18\x1e\x18"](false);
      this._circleXtra["\x1a\x1b\x07"](true);
      this["\x1c\f\x1d"].startTimer(_loc2_);
   }
   function §\x1a\n\x13§()
   {
      this["\x1c\f\x1d"]["\x1a\n\x12"]();
   }
   function stopTimer()
   {
      this["\x1c\f\x1d"].stopTimer();
   }
   function §\x1a\x15\x0e§(sText)
   {
      this._cChat["\x1a\x1a\x13"](_loc2_);
   }
   function §\x1a\x1e\x17§(§\x1b\x05\x02§, §\x19\x1e\x1d§, §\x16\x12\x18§, §\x16\x0f\x01§)
   {
      if(this.api.datacenter.Game["\x18\x0f\x1b"] && this._mcRightPanel.bMouseSpriteRollover == true)
      {
         return undefined;
      }
      if(this._mcRightPanel["\x16\x1b\x0f"] == _loc2_ && !(this.api.datacenter.Game["\x18\x0f\x1b"] && _loc4_ == true))
      {
         return undefined;
      }
      if(!(this.api.datacenter.Game["\x18\x0f\x1b"] && _loc4_ != true))
      {
         var _loc6_ = this["\x16\x19\x0b"].fightSpectatorReplacementPanel;
         if(_loc6_ != undefined)
         {
            _loc6_.update(_loc3_.data);
         }
         else if(this.api.kernel.OptionsManager.getOption("SpriteInfos"))
         {
            if(this["\x16\x19\x0b"].replacementPanelsManager.currentReplacementPanel == dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.SHORTCUTS)
            {
               this["\x16\x19\x0b"].shortcutsReplacementPanel.showMiniMap(false);
               this["\x16\x19\x0b"].shortcutsReplacementPanel["\x1b\x16\t"](_loc3_.data);
            }
            else
            {
               this["\x16\x19\x0b"].useTemporaryReplacementPanel(dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.FULL_WIDTH_FIGHTER_EFFECTS,[_loc3_.data]);
            }
         }
         if(this._mcRightPanel["\x16\x1b\x0f"] == _loc2_)
         {
            this._mcRightPanel.update(_loc3_.data);
         }
         else
         {
            if(this._mcRightPanel != undefined)
            {
               this["\x18\x06\x16"](true);
            }
            _loc3_._x = this["\x1d\x0f\x12"]._x;
            _loc3_._y = this["\x1d\x0f\x12"]._y;
            var _loc7_ = this.attachMovie(_loc2_,"_mcRightPanel",this.getNextHighestDepth(),_loc3_);
            _loc7_.swapDepths(this["\x1d\x0f\x12"]);
            _loc7_["\x1a\x03\x12"] = this;
            _loc7_.onRollOver = function()
            {
               this["\x1a\x03\x12"]["\x18\x06\x16"](true);
            };
         }
         this._mcRightPanel.bMouseSpriteRollover = _loc5_;
      }
   }
   function §\x18\x06\x16§(§\x16\x12\x18§, §\x16\x0e\x1d§)
   {
      if(_loc3_)
      {
         this._mcRightPanel.bMouseSpriteRollover = false;
      }
      if(this._mcRightPanel != undefined && !(this.api.datacenter.Game["\x18\x0f\x1b"] && _loc2_ != true))
      {
         this._mcRightPanel.swapDepths(this["\x1d\x0f\x12"]);
         this._mcRightPanel.removeMovieClip();
      }
   }
   function §\x1b\x16\x04§()
   {
      this._cChat["\x1b\x16\x04"]();
   }
   function §\x1a\x1e\x1d§(bShow)
   {
      if(_loc2_ == undefined)
      {
         _loc2_ = true;
      }
      this._cChat["\x18\x06\x1a"](!_loc2_);
      this._cChat._btnSmileys.selected = _loc2_;
   }
   function §\x1b\x15\x0f§()
   {
      this._circleXtra["\x1b\x14\x02"](false);
      this._bIsMutant = this._oData.isMutant && !this.api.datacenter.Player.isAuthorized;
      this._msShortcuts["\x18\x1c\x12"] = !this._oData.isMutant && this._msShortcuts.currentTab == dofus.graphics.gapi.controls.MouseShortcuts["\x1b\r\x15"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Banner.CLASS_NAME);
      this._circleXtra = new dofus.graphics.gapi.ui["\x16\b\x1a"].BannerCircleXtra(this.api,this);
   }
   function createChildren()
   {
      this._btnFights._visible = false;
      this.addToQueue({object:this,method:this["\x18\x06\t"]});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      this.showPoints(false);
      this.showNextTurnButton(false);
      this.showGiveUpButton(false);
      this["\x1d\x0f\x12"]._visible = false;
      this._mcCircleXtraPlacer._visible = false;
      this.api.ui.unloadUIComponent("FightOptionButtons");
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
      this.api.kernel.KeyManager["\x15\x1d\x15"]("onKeys",this);
      this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x06\x02"]);
      this.api.network.Game["\x19\t\f"] = -1;
      this._txtConsole.onSetFocus = function()
      {
         this._parent.onSetFocus();
      };
      this._txtConsole.onKillFocus = function()
      {
         this._parent.onKillFocus();
      };
      this._txtConsole.maxChars = dofus.Constants["\x18\x1a\x15"] + dofus.Constants["\x18\x1a\x16"];
      ank.battlefield["\x16\t\t"].useCacheAsBitmapOnStaticAnim = this.api.lang.getConfigText("USE_CACHEASBITMAP_ON_STATICANIM");
      var _loc2_ = this.api.datacenter.Basics.forceFlashChat || (!this.api.kernel.OptionsManager.getOption("EnableWidescreenPanels") || !this.api.electron.isShowingWidescreenPanel);
      this.addToQueue({object:this,method:this.configureUseFlashChat,params:[_loc2_]});
   }
   function §\x18\x15\f§()
   {
      var _loc2_ = this._mcbMovableBar["\x17\x01\x01"];
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         var _loc4_ = _loc2_[_loc3_];
         this._msShortcuts["\x1a\x15\x15"](_loc3_ + 15,_loc4_);
         _loc4_.addEventListener("click",this._msShortcuts);
         _loc4_.addEventListener("dblClick",this._msShortcuts);
         _loc4_.addEventListener("over",this._msShortcuts);
         _loc4_.addEventListener("out",this._msShortcuts);
         _loc4_.addEventListener("drag",this._msShortcuts);
         _loc4_.addEventListener("drop",this._msShortcuts);
         _loc4_.addEventListener("onContentLoaded",this._msShortcuts);
         _loc4_.params = {position:_loc3_ + 15};
         _loc3_ = _loc3_ + 1;
      }
   }
   function addListeners()
   {
      this._btnPvP.addEventListener("click",this);
      this._btnMount.addEventListener("click",this);
      this._btnGuild.addEventListener("click",this);
      this._btnStatsJob.addEventListener("click",this);
      this._btnSpells.addEventListener("click",this);
      this._btnInventory.addEventListener("click",this);
      this._btnQuests.addEventListener("click",this);
      this._btnMap.addEventListener("click",this);
      this._btnFriends.addEventListener("click",this);
      this._btnFights.addEventListener("click",this);
      this._btnHelp.addEventListener("click",this);
      this._cChat._btnHelpForPanel.addEventListener("click",this);
      this._btnTemporis.addEventListener("click",this);
      this._btnPvP.addEventListener("over",this);
      this._btnMount.addEventListener("over",this);
      this._btnGuild.addEventListener("over",this);
      this._btnStatsJob.addEventListener("over",this);
      this._btnSpells.addEventListener("over",this);
      this._btnInventory.addEventListener("over",this);
      this._btnQuests.addEventListener("over",this);
      this._btnMap.addEventListener("over",this);
      this._btnFriends.addEventListener("over",this);
      this._btnFights.addEventListener("over",this);
      this._btnHelp.addEventListener("over",this);
      this._cChat._btnHelpForPanel.addEventListener("over",this);
      this._btnTemporis.addEventListener("over",this);
      this._btnPvP.addEventListener("out",this);
      this._btnMount.addEventListener("out",this);
      this._btnGuild.addEventListener("out",this);
      this._btnStatsJob.addEventListener("out",this);
      this._btnSpells.addEventListener("out",this);
      this._btnInventory.addEventListener("out",this);
      this._btnQuests.addEventListener("out",this);
      this._btnMap.addEventListener("out",this);
      this._btnFriends.addEventListener("out",this);
      this._btnFights.addEventListener("out",this);
      this._btnHelp.addEventListener("out",this);
      this._cChat._btnHelpForPanel.addEventListener("out",this);
      this._btnTemporis.addEventListener("out",this);
      this._btnStatsJob.tabIndex = 0;
      this._btnSpells.tabIndex = 1;
      this._btnInventory.tabIndex = 2;
      this._btnQuests.tabIndex = 3;
      this._btnMap.tabIndex = 4;
      this._btnFriends.tabIndex = 5;
      this._btnGuild.tabIndex = 6;
      this["\x1c\f\x1d"].addEventListener("finalCountDown",this);
      this["\x1c\f\x1d"].addEventListener("beforeFinalCountDown",this);
      this["\x1c\f\x1d"].addEventListener("tictac",this);
      this["\x1c\f\x1d"].addEventListener("finish",this);
      this._cChat.addEventListener("filterChanged",this);
      this._cChat.addEventListener("selectSmiley",this);
      this._cChat.addEventListener("selectEmote",this);
      this._cChat.addEventListener("href",this);
      this._oData.addEventListener("lpChanged",this);
      this._oData.addEventListener("lpMaxChanged",this);
      this._btnNextTurn.addEventListener("click",this);
      this._btnNextTurn.addEventListener("over",this);
      this._btnNextTurn.addEventListener("out",this);
      this._btnGiveUp.addEventListener("click",this);
      this._btnGiveUp.addEventListener("over",this);
      this._btnGiveUp.addEventListener("out",this);
      this._oData["\x1b\x06\x12"].addEventListener("spellLaunched",this);
      this._oData["\x1b\x06\x12"].addEventListener("nextTurn",this);
      this._pvAP.addEventListener("over",this);
      this._pvAP.addEventListener("out",this);
      this._pvMP.addEventListener("over",this);
      this._pvMP.addEventListener("out",this);
      this._oData.Spells.addEventListener("modelChanged",this);
      this._oData.Inventory.addEventListener("modelChanged",this);
      this.api.datacenter.Player.addEventListener("huntMatchmakingStatusChanged",this);
      this._hHeart.onRollOver = function()
      {
         this._parent.over({target:this});
      };
      this._hHeart.onRollOut = function()
      {
         this._parent.out({target:this});
      };
      this._hHeart.onRelease = function()
      {
         this["\x1b\x10\x1a"]();
      };
      var §\x16\b\x1a§ = this;
      this["\x1d\t\x1c"].onRelease = function()
      {
         var _loc2_ = new Object();
         _loc2_.target = this;
         eval("\x16\b\x1a").click(_loc2_);
      };
   }
   function initData()
   {
      var _loc2_ = this.api.kernel.OptionsManager.getOption("BannerIllustrationMode");
      switch(_loc2_)
      {
         case "artwork":
            this._circleXtra["\x1a\x1c\x1d"]("artwork",true,{bMask:true});
            break;
         case "clock":
            this._circleXtra["\x1a\x1c\x1d"]("clock",true,{bMask:true});
            break;
         case "compass":
            this._circleXtra["\x1a\x1c\x1d"]("compass",true,{bMask:true});
            break;
         case "helper":
            this._circleXtra["\x1a\x1c\x1d"]("helper",true,{bMask:true});
            break;
         case "map":
            this._circleXtra["\x1a\x1c\x1d"]("map",true,{bMask:true});
      }
      this.drawBar();
      this.lpMaxChanged({value:this._oData.LPmax});
      this.lpChanged({value:this._oData.LP});
      this.api.kernel.ChatManager["\x1a\n\x15"]();
      dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"]["\x1a\x16\x1a"](this,this.api.kernel.OptionsManager.getOption("BannerGaugeMode"));
      this.updatePvPButtonState();
      if(this.api.kernel.OptionsManager.getOption("MovableBar"))
      {
         this["\x17\b\x0b"](this.api.kernel.OptionsManager.getOption("MovableBar") && (!this.api.kernel.OptionsManager.getOption("HideSpellBar") || this.api.datacenter.Game.isFight));
      }
      this["\x1a\x15\r"]("",false);
   }
   function §\x1a\x15\x0b§()
   {
      if(this._bUseFlashChat)
      {
         Selection.setFocus(this._txtConsole);
      }
      else
      {
         this.api.electron.focusWidescreenPanelIfPossible();
      }
   }
   function §\x18\r\x03§()
   {
      return this._bUseFlashChat && eval(Selection.getFocus())._name == "_txtConsole";
   }
   function §\x1a\x05\x03§()
   {
      if(!this._bUseFlashChat)
      {
         return undefined;
      }
      Selection.setFocus(this._txtConsole);
      Selection.setSelection(this._txtConsole.text.length,dofus.Constants["\x18\x1a\x15"] + dofus.Constants["\x18\x1a\x16"]);
   }
   function §\x1a\x15\f§()
   {
      if(!this["\x1c\x02\x15"])
      {
         return undefined;
      }
      if(Selection.getFocus() != undefined)
      {
         return undefined;
      }
      this["\x1a\x15\x0b"]();
      this["\x1a\x05\x03"]();
   }
   function §\x1a\x15\r§(§\x1b\x07\x01§, bFocusTxtCommand)
   {
      if(bFocusTxtCommand == undefined)
      {
         bFocusTxtCommand = true;
      }
      if(_loc2_ == "")
      {
         _loc2_ = "/s";
      }
      this["\x1e\b\b"] = _loc2_;
      if(_loc2_ != "/s")
      {
         this._btnHelp.label = _loc2_;
         this._btnHelp.icon = "";
      }
      else
      {
         this._btnHelp.label = "";
         this._btnHelp.icon = "UI_BannerChatCommandAll";
      }
      this.api.electron.retroChatSetPrefix(_loc2_);
      if(bFocusTxtCommand)
      {
         this.addToQueue({object:this,method:this["\x1a\x05\x03"]});
      }
   }
   function §\x17\x15\t§()
   {
      var _loc2_ = this._txtConsole.text;
      if(_loc2_.charAt(0) == "/")
      {
         return _loc2_;
      }
      if(this["\x1e\b\b"] != "")
      {
         return this["\x1e\b\b"] + " " + _loc2_;
      }
      return _loc2_;
   }
   function §\x18\x06\t§()
   {
      this._btnPvP._visible = this.api.datacenter.Basics.aks_current_regional_version >= 16;
      this._btnMount._visible = this.api.datacenter.Basics.aks_current_regional_version >= 20;
      if(this.api.datacenter.Basics.aks_current_server.isTemporis())
      {
         this._btnMount._visible = false;
         this._btnTemporis._visible = true;
      }
      else
      {
         this._btnTemporis._visible = false;
      }
      this._btnGuild._visible = !this.api.config.isStreaming;
      var _loc2_ = this._btnStatsJob._x;
      var _loc3_ = this._btnPvP._x;
      var _loc4_ = new Array();
      _loc4_.push(this._btnStatsJob);
      _loc4_.push(this._btnSpells);
      _loc4_.push(this._btnInventory);
      _loc4_.push(this._btnQuests);
      _loc4_.push(this._btnMap);
      _loc4_.push(this._btnFriends);
      if(this._btnGuild._visible)
      {
         _loc4_.push(this._btnGuild);
      }
      if(this._btnMount._visible)
      {
         _loc4_.push(this._btnMount);
      }
      if(this._btnPvP._visible)
      {
         _loc4_.push(this._btnPvP);
      }
      if(this._btnTemporis._visible)
      {
         _loc4_.push(this._btnTemporis);
      }
      var _loc5_ = (_loc3_ - _loc2_) / (_loc4_.length - 2);
      var _loc6_ = 0;
      while(_loc6_ < _loc4_.length)
      {
         _loc4_[_loc6_]._x = _loc6_ * _loc5_ + _loc2_;
         _loc6_ = _loc6_ + 1;
      }
   }
   function §\x17\b\x06§()
   {
      this.api.kernel.Console.process("/help");
      this._cChat["\x1a\x01\x03"](false);
   }
   function xpChanged()
   {
      dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"]["\x1a\x1d\x12"](this);
   }
   function energyChanged()
   {
      dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"]["\x1a\x1d\x12"](this);
   }
   function currentWeightChanged()
   {
      dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"]["\x1a\x1d\x12"](this);
   }
   function mountChanged()
   {
      dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"]["\x1a\x1d\x12"](this);
   }
   function currentJobChanged()
   {
      dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"]["\x1a\x1d\x12"](this);
   }
   function §\x17\b\x0b§(bShow)
   {
      if(_loc2_ == undefined)
      {
         _loc2_ = this._mcbMovableBar == undefined;
      }
      if(_loc2_)
      {
         if(this._mcbMovableBar._name != undefined)
         {
            return undefined;
         }
         this._mcbMovableBar = dofus.graphics.gapi.ui.MovableContainerBar(this.api.ui.loadUIComponent("MovableContainerBar","MovableBar",[],{bAlwaysOnTop:true}));
         this._mcbMovableBar.addEventListener("drawBar",this);
         this._mcbMovableBar.addEventListener("drop",this);
         this._mcbMovableBar.addEventListener("dblClick",this);
         var _loc3_ = {left:0,top:0,right:this.gapi["\x1a\x11\t"],bottom:this.gapi["\x1a\x11\x07"]};
         var _loc4_ = this.api.kernel.OptionsManager.getOption("MovableBarSize");
         var _loc5_ = this.api.kernel.OptionsManager.getOption("MovableBarCoord");
         _loc5_ = !_loc5_ ? {x:0,y:(this.gapi["\x1a\x11\x07"] - this._mcbMovableBar._height) / 2} : _loc5_;
         this.addToQueue({object:this._mcbMovableBar,method:this._mcbMovableBar["\x1a\x18\x13"],params:[16,20,_loc3_,_loc4_,_loc5_]});
      }
      else
      {
         this.api.ui.unloadUIComponent("MovableBar");
      }
   }
   function §\x1a\x18\x02§(§\x19\x0e\n§)
   {
      this._mcbMovableBar.size = _loc2_;
   }
   function §\x16\x19\x0f§()
   {
      return this._txtConsole.text != undefined && this._txtConsole.text != "";
   }
   function onKeys(sKey)
   {
      if(this["\x1c\x11\x18"])
      {
         this["\x1c\x11\x18"] = false;
         return undefined;
      }
      this["\x1a\x15\f"]();
   }
   function onShortcut(sShortcut)
   {
      var _loc3_ = true;
      switch(_loc2_)
      {
         case "CTRL_STATE_CHANGED_ON":
            if(this["\x1c\x05\x1c"] && !(this.api.config["\x18\x0e\x12"] || this.api.config["\x18\x0e\x1a"]))
            {
               getURL("FSCommand:" add "trapallkeys","false");
            }
            break;
         case "CTRL_STATE_CHANGED_OFF":
            if(this["\x1c\x05\x1c"] && !(this.api.config["\x18\x0e\x12"] || this.api.config["\x18\x0e\x1a"]))
            {
               getURL("FSCommand:" add "trapallkeys","true");
            }
            break;
         case "ESCAPE":
            if(this["\x18\r\x03"]())
            {
               new org.flashdevelop.utils.FlashConnect.trace("ESCAPE ON BANNER","dofus.graphics.gapi.ui.Banner::onShortcut","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/graphics/gapi/ui/Banner.as",903);
               Selection.setFocus(null);
               _loc3_ = false;
            }
            break;
         case "ACCEPT_CURRENT_DIALOG":
            if(this["\x18\r\x03"]())
            {
               if(this._txtConsole.text.length == 0)
               {
                  if(this.api.electron.isShowingWidescreenPanel)
                  {
                     _loc3_ = false;
                     this.api.electron.focusWidescreenPanelIfPossible();
                  }
                  break;
               }
               this.api.kernel.Console.process(this["\x17\x15\t"](),this.api.datacenter.Basics.chatParams);
               this.api.datacenter.Basics.chatParams = new Object();
               if(this._txtConsole.text != undefined)
               {
                  this._txtConsole.text = "";
                  this.api.electron.retroChatSetPromptText("");
               }
               _loc3_ = false;
            }
            else if(this["\x1c\x02\x15"])
            {
               var _loc4_ = dofus.graphics.gapi.ui.Debug(this.gapi.getUIComponent("Debug"));
               if(Selection.getFocus() != undefined && !(_loc4_ != undefined && (_loc4_["\x18\r\x19"]() && !_loc4_["\x16\x1d\x18"]())))
               {
                  break;
               }
               _loc3_ = false;
               this["\x1a\x15\x0b"]();
            }
            break;
         case "TEAM_MESSAGE":
            if(this["\x18\r\x03"]())
            {
               if(this._txtConsole.text.length != 0)
               {
                  var _loc5_ = this["\x17\x15\t"]();
                  if(_loc5_.charAt(0) == "/")
                  {
                     _loc5_ = _loc5_.substr(_loc5_.indexOf(" ") + 1);
                  }
                  this.api.kernel.Console.process("/t " + _loc5_,this.api.datacenter.Basics.chatParams);
                  this.api.datacenter.Basics.chatParams = new Object();
                  if(this._txtConsole.text != undefined)
                  {
                     this._txtConsole.text = "";
                     this.api.electron.retroChatSetPromptText("");
                  }
                  _loc3_ = false;
               }
            }
            else if(Selection.getFocus() == undefined && this["\x1c\x02\x15"])
            {
               _loc3_ = false;
               this["\x1a\x15\x0b"]();
            }
            break;
         case "GUILD_MESSAGE":
            if(this["\x18\r\x03"]())
            {
               if(this._txtConsole.text.length != 0)
               {
                  var _loc6_ = this["\x17\x15\t"]();
                  if(_loc6_.charAt(0) == "/")
                  {
                     _loc6_ = _loc6_.substr(_loc6_.indexOf(" ") + 1);
                  }
                  this.api.kernel.Console.process("/g " + _loc6_,this.api.datacenter.Basics.chatParams);
                  this.api.datacenter.Basics.chatParams = new Object();
                  if(this._txtConsole.text != undefined)
                  {
                     this._txtConsole.text = "";
                     this.api.electron.retroChatSetPromptText("");
                  }
                  _loc3_ = false;
               }
            }
            else if(Selection.getFocus() == undefined && this["\x1c\x02\x15"])
            {
               _loc3_ = false;
               this["\x1a\x15\x0b"]();
            }
            break;
         case "WHISPER_HISTORY_UP":
            if(this["\x18\r\x03"]())
            {
               this.doChatWhisperHistoryUp();
               _loc3_ = false;
            }
            break;
         case "WHISPER_HISTORY_DOWN":
            if(this["\x18\r\x03"]())
            {
               this.doChatWhisperHistoryDown();
               _loc3_ = false;
            }
            break;
         case "HISTORY_UP":
            if(this["\x18\r\x03"]())
            {
               this.doChatHistoryUp();
               _loc3_ = false;
            }
            break;
         case "HISTORY_DOWN":
            if(this["\x18\r\x03"]())
            {
               this.doChatHistoryDown();
               _loc3_ = false;
            }
            break;
         case "AUTOCOMPLETE":
            if(this["\x18\r\x03"]())
            {
               this.askShowAutoCompleteResult();
               _loc3_ = false;
            }
            break;
         case "NEXTTURN":
            if(!this["\x18\r\x03"]() && this.api.datacenter.Game.isFight)
            {
               if(!this.api.datacenter.Game.isRunning)
               {
                  var _loc7_ = dofus.graphics.gapi.ui.ChallengeMenu(this.gapi.getUIComponent("ChallengeMenu"));
                  if(_loc7_ != undefined)
                  {
                     _loc7_["\x1a\x13\x1c"]();
                  }
               }
               else
               {
                  this.api.network.Game["\x1a\x06\x19"]();
               }
               _loc3_ = false;
            }
            break;
         case "MAXI":
            if(this._bUseFlashChat)
            {
               this._cChat["\x1a\x01\x03"](false);
               _loc3_ = false;
            }
            break;
         case "MINI":
            if(this._bUseFlashChat)
            {
               this._cChat["\x1a\x01\x03"](true);
               _loc3_ = false;
            }
            break;
         case "CHARAC":
            if(this.api.kernel.OptionsManager.getOption("BannerShortcuts"))
            {
               this.click({target:this._btnStatsJob});
               _loc3_ = false;
            }
            break;
         case "SPELLS":
            if(this.api.kernel.OptionsManager.getOption("BannerShortcuts"))
            {
               this.click({target:this._btnSpells});
               _loc3_ = false;
            }
            break;
         case "INVENTORY":
            if(this.api.kernel.OptionsManager.getOption("BannerShortcuts"))
            {
               this.click({target:this._btnInventory});
               _loc3_ = false;
            }
            break;
         case "QUESTS":
            if(this.api.kernel.OptionsManager.getOption("BannerShortcuts"))
            {
               this.click({target:this._btnQuests});
               _loc3_ = false;
            }
            break;
         case "MAP":
            if(this.api.kernel.OptionsManager.getOption("BannerShortcuts"))
            {
               this.click({target:this._btnMap});
               _loc3_ = false;
            }
            break;
         case "FRIENDS":
            if(this.api.kernel.OptionsManager.getOption("BannerShortcuts"))
            {
               this.click({target:this._btnFriends});
               _loc3_ = false;
            }
            break;
         case "GUILD":
            if(this.api.kernel.OptionsManager.getOption("BannerShortcuts"))
            {
               this.click({target:this._btnGuild});
               _loc3_ = false;
            }
            break;
         case "GUILD_TAX_COLLECTOR":
            if(this.api.kernel.OptionsManager.getOption("BannerShortcuts") && this.api.datacenter.Player.guildInfos["\x18\x10\n"])
            {
               this.click({target:this._btnGuild,currentTab:"TaxCollectors"});
               _loc3_ = false;
            }
            else
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("NOT_ENOUGHT_MEMBERS_IN_GUILD"),"ERROR_CHAT");
            }
            break;
         case "CONQUEST_AND_HUNT":
            if(this.api.kernel.OptionsManager.getOption("BannerShortcuts"))
            {
               this.click({target:this._btnPvP});
               _loc3_ = false;
            }
            break;
         case "MOUNT":
            if(this.api.kernel.OptionsManager.getOption("BannerShortcuts") && !this.api.datacenter.Basics.aks_current_server.isTemporis())
            {
               this.click({target:this._btnMount});
               _loc3_ = false;
            }
            break;
         case "MOUNT_INVENTORY":
            if(this.api.kernel.OptionsManager.getOption("BannerShortcuts"))
            {
               this.api.network.Exchange["\x1a\r\x13"](15);
               _loc3_ = false;
            }
            break;
         case "TEMPORIS":
            if(this.api.kernel.OptionsManager.getOption("BannerShortcuts") && this.api.datacenter.Basics.aks_current_server.isTemporis())
            {
               this.click({target:this._btnTemporis});
               _loc3_ = false;
               break;
            }
      }
      this["\x1c\x11\x18"] = _loc3_;
      return _loc3_;
   }
   function askShowAutoCompleteResult()
   {
      Selection.setFocus(null);
      if(this._nAutoCompleteTimeout != undefined)
      {
         _global.clearTimeout(this._nAutoCompleteTimeout);
      }
      var _loc2_ = _global.setTimeout(this,"doAutoComplete",100);
      this._nAutoCompleteTimeout = _loc2_;
   }
   function doChatWhisperHistoryUp()
   {
      this._txtConsole.text = this.api.kernel.Console["\x18\x02\f"]();
      this.addToQueue({object:this,method:this["\x1a\x05\x03"]});
      this.api.electron.retroChatSetPromptText(this._txtConsole.text);
   }
   function doChatWhisperHistoryDown()
   {
      this._txtConsole.text = this.api.kernel.Console["\x18\x02\x0b"]();
      this.addToQueue({object:this,method:this["\x1a\x05\x03"]});
      this.api.electron.retroChatSetPromptText(this._txtConsole.text);
   }
   function doChatHistoryUp()
   {
      var _loc2_ = this.api.kernel.Console["\x17\x18\x16"]();
      if(_loc2_ != undefined)
      {
         this.api.datacenter.Basics.chatParams = _loc2_.params;
         this._txtConsole.text = _loc2_.value;
      }
      this.addToQueue({object:this,method:this["\x1a\x05\x03"]});
      this.api.electron.retroChatSetPromptText(this._txtConsole.text);
   }
   function doChatHistoryDown()
   {
      var _loc2_ = this.api.kernel.Console["\x17\x18\x15"]();
      if(_loc2_ != undefined)
      {
         this.api.datacenter.Basics.chatParams = _loc2_.params;
         this._txtConsole.text = _loc2_.value;
      }
      else
      {
         this._txtConsole.text = "";
      }
      this.addToQueue({object:this,method:this["\x1a\x05\x03"]});
      this.api.electron.retroChatSetPromptText(this._txtConsole.text);
   }
   function doAutoComplete()
   {
      var _loc2_ = new Array();
      var _loc3_ = this.api.datacenter.Sprites.getItems();
      for(var k in _loc3_)
      {
         if(_loc3_[k] instanceof dofus.datacenter.["\x16\x19\x02"])
         {
            _loc2_.push(_loc3_[k].name);
         }
      }
      var _loc4_ = this.api.kernel.Console["\x16\x07\x12"](_loc2_,this._txtConsole.text);
      if(!_loc4_.isFull)
      {
         if(_loc4_.list == undefined || _loc4_.list.length == 0)
         {
            this.api.sounds["\x17\x0e\x06"]["\x19\x16\x1d"]();
         }
         else
         {
            this.api.ui.showTooltip(_loc4_.list.sort().join(", "),0,520);
         }
      }
      this._txtConsole.text = _loc4_.result + (!_loc4_.isFull ? "" : " ");
      this.api.electron.retroChatSetPromptText(this._txtConsole.text);
      this["\x1a\x05\x03"]();
   }
   function click(oEvent)
   {
      this.api.kernel.GameManager["\x1b\x01\x18"]();
      switch(_loc2_.target._name)
      {
         case "_btnPvP":
            this.api.sounds["\x17\x0e\x06"]["\x19\x14\x11"]();
            if(this.api.datacenter.Player.data.alignment.index == 0)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("NEED_ALIGNMENT"),"ERROR_CHAT");
            }
            else
            {
               this["\x1a\x1e\x1d"](false);
               this.gapi["\x18\x16\x19"]("Conquest","Conquest",{currentTab:"Stats"});
            }
            break;
         case "_btnMount":
            this.api.sounds["\x17\x0e\x06"]["\x19\x14\x11"]();
            if(this._bIsMutant)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_U_ARE_MUTANT"),"ERROR_CHAT");
               return undefined;
            }
            if(this._oData.mount != undefined)
            {
               this["\x1a\x1e\x1d"](false);
               if(this.gapi.getUIComponent("MountAncestorsViewer") != undefined)
               {
                  this.gapi.unloadUIComponent("MountAncestorsViewer");
                  this.gapi.unloadUIComponent("Mount");
               }
               else
               {
                  this.gapi["\x18\x16\x19"]("Mount","Mount");
               }
            }
            else
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("UI_ONLY_FOR_MOUNT"),"ERROR_CHAT");
            }
            break;
         case "_btnGuild":
            this.api.sounds["\x17\x0e\x06"]["\x19\x14\x11"]();
            if(this._bIsMutant)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_U_ARE_MUTANT"),"ERROR_CHAT");
               return undefined;
            }
            if(this._oData.guildInfos != undefined)
            {
               var _loc3_ = _loc2_.currentTab == undefined ? "Members" : _loc2_.currentTab;
               this["\x1a\x1e\x1d"](false);
               this.gapi["\x18\x16\x19"]("Guild","Guild",{currentTab:_loc3_});
            }
            else
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("UI_ONLY_FOR_GUILD"),"ERROR_CHAT");
            }
            break;
         case "_btnStatsJob":
            this.api.sounds["\x17\x0e\x06"]["\x19\x14\x11"]();
            if(this._bIsMutant)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_U_ARE_MUTANT"),"ERROR_CHAT");
               return undefined;
            }
            this["\x1a\x1e\x1d"](false);
            this.gapi["\x18\x16\x19"]("StatsJob","StatsJob");
            break;
         case "_btnSpells":
            this.api.sounds["\x17\x0e\x06"]["\x19\x14\x11"]();
            if(this._bIsMutant)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_U_ARE_MUTANT"),"ERROR_CHAT");
               return undefined;
            }
            this["\x1a\x1e\x1d"](false);
            !this.api.datacenter.Basics.aks_current_server.isTemporis() ? this.gapi["\x18\x16\x19"]("Spells","Spells") : this.gapi["\x18\x16\x19"]("SpellsCollection","SpellsCollection");
            break;
         case "_btnTemporis":
            this.api.sounds["\x17\x0e\x06"]["\x19\x14\x11"]();
            if(!this.api.datacenter.Basics.aks_current_server.isTemporis())
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("ERROR_226"),"ERROR_CHAT");
               return undefined;
            }
            this["\x1a\x1e\x1d"](false);
            this.gapi["\x18\x16\x19"]("Temporis","Temporis");
            break;
         case "_btnInventory":
            this.api.sounds["\x17\x0e\x06"]["\x19\x14\x11"]();
            this["\x1a\x1e\x1d"](false);
            this.gapi["\x18\x16\x19"]("Inventory","Inventory");
            break;
         case "_btnQuests":
            this.api.sounds["\x17\x0e\x06"]["\x19\x14\x11"]();
            this["\x1a\x1e\x1d"](false);
            this.gapi["\x18\x16\x19"]("Quests","Quests");
            break;
         case "_btnMap":
            this.api.sounds["\x17\x0e\x06"]["\x19\x14\x11"]();
            this["\x1a\x1e\x1d"](false);
            this.gapi["\x18\x16\x19"]("MapExplorer","MapExplorer",undefined,{nHideSprites:1});
            break;
         case "_btnFriends":
            this.api.sounds["\x17\x0e\x06"]["\x19\x14\x11"]();
            this["\x1a\x1e\x1d"](false);
            this.gapi["\x18\x16\x19"]("Friends","Friends");
            break;
         case "_btnFights":
            if(!this.api.datacenter.Game.isFight)
            {
               this.gapi.loadUIComponent("FightsInfos","FightsInfos",null,{bAlwaysOnTop:true});
            }
            break;
         case "_btnHelp":
         case "_btnHelpForPanel":
            this.openChatPrefixMenu();
            break;
         case "_btnNextTurn":
            if(this.api.datacenter.Game.isFight)
            {
               this.api.network.Game["\x1a\x06\x19"]();
            }
            break;
         case "_btnGiveUp":
            if(this.api.datacenter.Game.isFight)
            {
               if(this.api.datacenter.Game["\x18\x0f\x1b"])
               {
                  this.api.network.Game["\x18\x13\x1d"]();
               }
               else
               {
                  this.api.kernel.GameManager["\x18\x02\x1d"]();
               }
            }
            break;
         case "_mcXtra":
         case "\x1d\t\x1c":
            if(!this.api.datacenter.Player.isAuthorized || this.api.datacenter.Player.isAuthorized && Key.isDown(Key.SHIFT))
            {
               if(this["\x1e\b\x11"] == "helper" && dofus.managers.TipsManager.getInstance()["\x18\x05\x0b"]())
               {
                  dofus.managers.TipsManager.getInstance()["\x17\b\f"]();
                  break;
               }
               var _loc4_ = this.api.ui["\x17\x02\x19"]();
               _loc4_["\x15\x1d\x12"](this.api.lang.getText("SHOW") + " >>",dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"],dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"]["\x1a\x1d\x13"],[this]);
               if(this["\x1e\b\x11"] == "helper")
               {
                  _loc4_["\x15\x1e\x18"](this.api.lang.getText("HELP_ME"));
                  _loc4_["\x15\x1d\x12"](this.api.lang.getText("KB_TITLE"),this.api.ui,this.api.ui.loadUIComponent,["KnownledgeBase","KnownledgeBase"],true);
                  _loc4_["\x15\x1e\x18"](this.api.lang.getText("OTHER_DISPLAY_OPTIONS"));
               }
               _loc4_["\x15\x1d\x12"](this.api.lang.getText("BANNER_ARTWORK"),this._circleXtra,this._circleXtra["\x1a\x1c\x1d"],["artwork",true,{bMask:true,bUpdateGauge:true}],this["\x1e\b\x11"] != "artwork");
               _loc4_["\x15\x1d\x12"](this.api.lang.getText("BANNER_CLOCK"),this._circleXtra,this._circleXtra["\x1a\x1c\x1d"],["clock",true,{bMask:true,bUpdateGauge:true}],this["\x1e\b\x11"] != "clock");
               _loc4_["\x15\x1d\x12"](this.api.lang.getText("BANNER_COMPASS"),this._circleXtra,this._circleXtra["\x1a\x1c\x1d"],["compass",true,{bUpdateGauge:true}],this["\x1e\b\x11"] != "compass");
               _loc4_["\x15\x1d\x12"](this.api.lang.getText("BANNER_HELPER"),this._circleXtra,this._circleXtra["\x1a\x1c\x1d"],["helper",true,{bUpdateGauge:true}],this["\x1e\b\x11"] != "helper");
               _loc4_["\x15\x1d\x12"](this.api.lang.getText("BANNER_MAP"),this._circleXtra,this._circleXtra["\x1a\x1c\x1d"],["map",true,{bMask:true,bUpdateGauge:true}],this["\x1e\b\x11"] != "map");
               _loc4_.show(_root._xmouse,_root._ymouse,true);
            }
            else
            {
               this.api.kernel.GameManager["\x1a\x1e\x14"](undefined,{sPlayerName:this.api.datacenter.Player.Name,sPlayerID:this.api.datacenter.Player.ID});
            }
      }
   }
   function openChatPrefixMenu(oCustomPopupPosition)
   {
      var _loc3_ = this.api.lang.getConfigText("CHAT_FILTERS");
      var _loc4_ = this.api.ui["\x17\x02\x19"]();
      _loc4_["\x15\x1e\x18"](this.api.lang.getText("CHAT_PREFIX"));
      _loc4_["\x15\x1d\x12"](this.api.lang.getText("DEFAUT") + " (/s)",this,this["\x1a\x15\r"],["/s"]);
      _loc4_["\x15\x1d\x12"](this.api.lang.getText("TEAM") + " (/t)",this,this["\x1a\x15\r"],["/t"],this.api.datacenter.Game.isFight);
      _loc4_["\x15\x1d\x12"](this.api.lang.getText("PARTY") + " (/p)",this,this["\x1a\x15\r"],["/p"],this.api.ui.getUIComponent("Party") != undefined);
      _loc4_["\x15\x1d\x12"](this.api.lang.getText("GUILD") + " (/g)",this,this["\x1a\x15\r"],["/g"],this.api.datacenter.Player.guildInfos != undefined);
      if(_loc3_[4])
      {
         _loc4_["\x15\x1d\x12"](this.api.lang.getText("ALIGNMENT") + " (/a)",this,this["\x1a\x15\r"],["/a"],this.api.datacenter.Player.alignment.index != 0);
      }
      if(_loc3_[5])
      {
         _loc4_["\x15\x1d\x12"](this.api.lang.getText("RECRUITMENT") + " (/r)",this,this["\x1a\x15\r"],["/r"]);
      }
      if(_loc3_[6])
      {
         _loc4_["\x15\x1d\x12"](this.api.lang.getText("TRADE") + " (/b)",this,this["\x1a\x15\r"],["/b"]);
      }
      if(_loc3_[7])
      {
         _loc4_["\x15\x1d\x12"](this.api.lang.getText("MEETIC") + " (/i)",this,this["\x1a\x15\r"],["/i"]);
      }
      if(this.api.datacenter.Player.isAuthorized)
      {
         _loc4_["\x15\x1d\x12"](this.api.lang.getText("PRIVATE_CHANNEL") + " (/q)",this,this["\x1a\x15\r"],["/q"]);
      }
      _loc4_["\x15\x1d\x12"](this.api.lang.getText("HELP"),this,this["\x17\b\x06"],[]);
      if(this.api.electron.enabled)
      {
         _loc4_["\x15\x1d\x12"](this.api.lang.getText("OPEN_EXTERNAL_CHAT"),dofus.Eelectron,dofus.Eelectron.retroChatOpen,[]);
      }
      if(oCustomPopupPosition != undefined)
      {
         _loc4_.show(oCustomPopupPosition.x,oCustomPopupPosition.y,true);
      }
      else
      {
         _loc4_.show(this._btnHelp._x,this._btnHelp._y,true);
      }
   }
   function dblClick(oEvent)
   {
      if(_loc2_.target == this._mcbMovableBar)
      {
         this._mcbMovableBar.size = this._mcbMovableBar.size != 0 ? 0 : this.api.kernel.OptionsManager.getOption("MovableBarSize");
         return undefined;
      }
   }
   function createSpellActionPopupMenu(§\x1a\x02\x06§)
   {
      var _loc3_ = this.api.ui["\x17\x02\x19"]();
      _loc3_["\x15\x1d\x12"]("Retirer ce raccourci",this.api.network.Spells,this.api.network.Spells.spellRemove,[_loc2_.position],!_loc2_.isUndeletable);
      _loc3_.show(_root._xmouse,_root._ymouse,true);
   }
   function createInventoryShortcutItemActionPopupMenu(oInventoryShortcut)
   {
      var _loc3_ = this.api.ui["\x17\x02\x19"]();
      _loc3_["\x15\x1d\x12"]("Retirer ce raccourci",this.api.network.InventoryShortcuts,this.api.network.InventoryShortcuts.sendInventoryShortcutRemove,[oInventoryShortcut.position]);
      _loc3_.show(_root._xmouse,_root._ymouse,true);
   }
   function beforeFinalCountDown(oEvent)
   {
      this.api.kernel.TipsManager.showNewTip(dofus.managers.TipsManager["\x1b\x10\x11"]);
   }
   function finalCountDown(oEvent)
   {
      this._mcXtra._visible = false;
      this["\x1c\x17\x1a"].text = _loc2_.value;
   }
   function tictac(oEvent)
   {
      this.api.sounds["\x17\x0e\x06"]["\x19\x14\x14"]();
   }
   function finish(oEvent)
   {
      this._mcXtra._visible = true;
      if(this["\x1c\x17\x1a"].text != undefined)
      {
         this["\x1c\x17\x1a"].text = "";
      }
   }
   function complete(oEvent)
   {
      var _loc3_ = this.api.kernel.OptionsManager.getOption("BannerIllustrationMode");
      new org.flashdevelop.utils.FlashConnect.trace(_loc3_ + " : " + _loc2_.target.contentPath,"dofus.graphics.gapi.ui.Banner::complete","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/graphics/gapi/ui/Banner.as",1625);
      if(_loc2_.target.contentPath.indexOf("artworks") != -1 && _loc3_ == "helper")
      {
         this._circleXtra["\x1a\x1c\x1d"]("helper",true,{bMask:true});
      }
      else
      {
         this.api.colors.addSprite(this._mcXtra.content,this._oData);
      }
   }
   function over(oEvent)
   {
      if(!this.gapi["\x18\r\f"]())
      {
         return undefined;
      }
      switch(_loc2_.target._name)
      {
         case "_btnHelp":
         case "_btnHelpForPanel":
            this.gapi.showTooltip(this.api.lang.getText("CHAT_MENU"),_loc2_.target,-20,{bXLimit:false,bYLimit:false});
            break;
         case "_btnGiveUp":
            if(this.api.datacenter.Game["\x18\x0f\x1b"])
            {
               var _loc3_ = this.api.lang.getText("GIVE_UP_SPECTATOR");
            }
            else if(this.api.datacenter.Game["\x17\x10\x02"] == dofus.managers.GameManager["\x17\x10\x05"] || !this.api.datacenter.Basics.aks_current_server["\x18\x0e\x03"]())
            {
               _loc3_ = this.api.lang.getText("GIVE_UP");
            }
            else
            {
               _loc3_ = this.api.lang.getText("SUICIDE");
            }
            this.gapi.showTooltip(_loc3_,_loc2_.target,-20,{bXLimit:true,bYLimit:false});
            break;
         case "_btnPvP":
            var _loc4_ = this.api.lang.getText("CONQUEST_WORD") + " " + this.api.lang.getText("AND") + " " + this.api.lang.getText("HUNT");
            var _loc5_ = -20;
            var _loc6_ = this.api.datacenter.Player.huntMatchmakingStatus;
            if(_loc6_ != undefined && _loc6_.currentStatus == "WAITING_FOR_START_CONFIRMATION")
            {
               _loc4_ += "\n\n" + this.api.lang.getText("HUNT_LOOKING_FOR_TARGET_HURRY_UP_ALIGN_" + this.api.datacenter.Player.alignment.index);
               _loc5_ -= 35;
            }
            this.gapi.showTooltip(_loc4_,_loc2_.target,_loc5_,{bXLimit:true,bYLimit:false});
            break;
         case "_btnMount":
            this.gapi.showTooltip(this.api.lang.getText("MY_MOUNT"),_loc2_.target,-20,{bXLimit:true,bYLimit:false});
            break;
         case "_btnTemporis":
            this.gapi.showTooltip("Temporis",_loc2_.target,-20,{bXLimit:true,bYLimit:false});
            break;
         case "_btnGuild":
            this.gapi.showTooltip(this.api.lang.getText("YOUR_GUILD"),_loc2_.target,-20,{bXLimit:true,bYLimit:false});
            break;
         case "_btnStatsJob":
            this.api.datacenter.Player.Level != 200 ? this.gapi.showTooltip(this.api.lang.getText("YOUR_STATS_JOB") + "\n\n" + this.api.lang.getText("NEXT_LEVEL") + " " + this.api.kernel.Console.getCurrentPercent() + "\n" + this.api.lang.getText("REQUIRED") + " " + new ank.utils.ExtendedString(this.api.datacenter.Player.XPhigh - this.api.datacenter.Player.XP)["\x15\x1e\x01"](" ",3) + " " + this.api.lang.getText("WORD_XP"),_loc2_.target,-54,{bXLimit:true,bYLimit:false}) : this.gapi.showTooltip(this.api.lang.getText("YOUR_STATS_JOB"),_loc2_.target,-20,{bXLimit:true,bYLimit:false});
            break;
         case "_btnSpells":
            this.gapi.showTooltip(this.api.lang.getText("YOUR_SPELLS"),_loc2_.target,-20,{bXLimit:true,bYLimit:false});
            break;
         case "_btnQuests":
            this.gapi.showTooltip(this.api.lang.getText("YOUR_QUESTS"),_loc2_.target,-20,{bXLimit:true,bYLimit:false});
            break;
         case "_btnInventory":
            this.gapi.showTooltip(this.api.lang.getText("YOUR_INVENTORY") + "\n\n" + this.api.datacenter.Player.getWeightText(),_loc2_.target,-43,{bXLimit:true,bYLimit:false});
            break;
         case "_btnMap":
            this.gapi.showTooltip(this.api.lang.getText("YOUR_BOOK"),_loc2_.target,-20,{bXLimit:true,bYLimit:false});
            break;
         case "_btnFriends":
            this.gapi.showTooltip(this.api.lang.getText("YOUR_FRIENDS"),_loc2_.target,-20,{bXLimit:true,bYLimit:false});
            break;
         case "_btnFights":
            if(this["\x1d\x16\x05"] != 0)
            {
               this.gapi.showTooltip(ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("FIGHTS_ON_MAP",[this["\x1d\x16\x05"]]),"m",this["\x1d\x16\x05"] < 2),_loc2_.target,-20,{bYLimit:false});
            }
            break;
         case "_btnNextTurn":
            this.gapi.showTooltip(this.api.lang.getText("NEXT_TURN"),_loc2_.target,-20,{bXLimit:true,bYLimit:false});
            break;
         case "_pvAP":
            this.gapi.showTooltip(this.api.lang.getText("ACTIONPOINTS"),_loc2_.target,-20,{bXLimit:true,bYLimit:false});
            break;
         case "_pvMP":
            this.gapi.showTooltip(this.api.lang.getText("MOVEPOINTS"),_loc2_.target,-20,{bXLimit:true,bYLimit:false});
            break;
         case "_mcXtra":
            switch(this["\x1e\b\x11"])
            {
               case "compass":
                  var _loc7_ = _loc2_.target.targetCoords;
                  if(_loc7_ == undefined)
                  {
                     this.gapi.showTooltip(this.api.lang.getText("BANNER_SET_FLAG"),_loc2_.target,0,{bXLimit:true,bYLimit:false});
                  }
                  else
                  {
                     this.gapi.showTooltip(_loc7_[0] + ", " + _loc7_[1],_loc2_.target,0,{bXLimit:true,bYLimit:false});
                  }
                  break;
               case "clock":
                  this.gapi.showTooltip(this.api.kernel["\x19\b\x11"].time + "\n" + this.api.kernel["\x19\b\x11"]["\x17\x15\x1c"](),_loc2_.target,0,{bXLimit:true,bYLimit:false});
            }
            if(!this.api.datacenter.Game.isFight)
            {
               this._circleXtra["\x1a\x1b\b"](this["\x1d\t\x1c"]);
               this["\x18\x1e\x18"](true);
               dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"]["\x1a\x1d\x12"](this);
            }
            break;
         case "_hHeart":
            this.gapi.showTooltip(this.api.lang.getText("HELP_LIFE"),_loc2_.target,-20);
      }
   }
   function out(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "_mcXtra")
      {
         this["\x18\x1e\x18"](false);
         if(!this.api.datacenter.Game.isFight && this.api.kernel.OptionsManager.getOption("BannerGaugeMode") == "none")
         {
            this._circleXtra["\x1a\x1b\b"](this["\x1d\t\x1c"]);
         }
         else
         {
            this._circleXtra["\x1a\x1b\b"](this["\x1d\t\x1b"]);
         }
         dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"]["\x1a\x1d\x12"](this);
      }
      this.gapi.hideTooltip();
   }
   function drop(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._mcbMovableBar)
      {
         this.api.kernel.OptionsManager.setOption("MovableBarCoord",{x:this._mcbMovableBar._x,y:this._mcbMovableBar._y,v:this._mcbMovableBar["\x1c\f\x06"]});
      }
   }
   function filterChanged(oEvent)
   {
      this.api.network.Chat.subscribeChannels(_loc2_.filter,_loc2_.selected);
   }
   function lpChanged(oEvent)
   {
      this._hHeart.value = _loc2_.value;
   }
   function lpMaxChanged(oEvent)
   {
      this._hHeart.max = _loc2_.value;
   }
   function apChanged(oEvent)
   {
      this._pvAP.value = _loc2_.value;
      if(!this.api.datacenter.Game.isFight)
      {
      }
      this._msShortcuts["\x1a\x19\x1b"]();
   }
   function mpChanged(oEvent)
   {
      this._pvMP.value = Math.max(0,_loc2_.value);
   }
   function selectSmiley(oEvent)
   {
      this.api.network.Chat["\x1b\x16\x1d"](_loc2_.index);
   }
   function selectEmote(oEvent)
   {
      this.api.network.Emotes["\x1b\x16\x15"](_loc2_.index);
   }
   function spellLaunched(oEvent)
   {
      this._msShortcuts["\x1a\x19\x1c"](_loc2_.spell.position);
   }
   function nextTurn(oEvent)
   {
      this._msShortcuts["\x1a\x19\x1b"]();
   }
   function updatePvPButtonState()
   {
      var _loc2_ = this.api.datacenter.Player.huntMatchmakingStatus;
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      var _loc3_ = _loc2_.currentStatus;
      switch(_loc3_)
      {
         case "PLAYER_LEFT_MATCHMAKING":
         case "HUNT_STARTED":
         case "WAITING_FOR_START_CONFIRMATION_TIMEOUT":
            this._btnPvP.backgroundDown = "ButtonBannerRoundDown";
            this._btnPvP.backgroundUp = "ButtonBannerRoundUp";
            break;
         case "WAITING_FOR_TARGET":
            this._btnPvP.backgroundDown = "ButtonBannerRoundInSearchDown";
            this._btnPvP.backgroundUp = "ButtonBannerRoundInSearchUp";
            break;
         case "WAITING_FOR_START_CONFIRMATION":
            this._btnPvP.backgroundDown = "ButtonBannerRoundWaitResponseDown";
            this._btnPvP.backgroundUp = !dofus.Constants.TRIPLEFRAMERATE ? "ButtonBannerRoundWaitResponseUp" : "ButtonBannerRoundWaitResponseUp_TripleFramerate";
      }
   }
   function huntMatchmakingStatusChanged(oEvent)
   {
      this.updatePvPButtonState();
   }
   function href(oEvent, oCustomPopupPosition)
   {
      var _loc4_ = _loc2_.params.split(",");
      loop1:
      switch(_loc4_[0])
      {
         case "showEndPanel":
            this.addToQueue({object:this.api.kernel.GameManager,method:this.api.kernel.GameManager.showEndPanel,params:[_loc4_[1]]});
            break;
         case "HunterAcceptPvPHunt":
            this.addToQueue({object:this.api.network.Game,method:this.api.network.Game.hunterAcceptPvPHunt});
            break;
         case "OpenGuildTaxCollectors":
            var _loc5_ = this.gapi.getUIComponent("Guild");
            if(_loc5_ == null)
            {
               this.addToQueue({object:this.gapi,method:this.gapi["\x18\x16\x19"],params:["Guild","Guild",{currentTab:"TaxCollectors"},{bStayIfPresent:true}]});
            }
            else
            {
               this.addToQueue({object:_loc5_,method:_loc5_.setCurrentTab,params:["TaxCollectors"]});
            }
            break;
         case "OpenPayZoneDetails":
            this.addToQueue({object:this.gapi,method:this.gapi.loadUIComponent,params:["PayZoneDialog2","PayZoneDialog2",{name:"El Pemy",gfx:"9059",dialogID:dofus.graphics.gapi.ui.PayZoneDialog.PAYZONE_DETAILS},{bForceLoad:true}]});
            break;
         case "ShowPlayerPopupMenu":
            this.addToQueue({object:this.api.kernel.GameManager,method:this.api.kernel.GameManager["\x1a\x1e\x14"],params:[undefined,{sPlayerID:_global.unescape(_loc4_[1]),sPlayerName:_global.unescape(_loc4_[2]),bShowJoinFriend:this.api.datacenter.Player.isAuthorized,oCustomPopupPosition:oCustomPopupPosition}]});
            break;
         case "ShowMessagePopupMenu":
            this.addToQueue({object:this.api.kernel.GameManager,method:this.api.kernel.GameManager["\x1a\x1e\f"],params:[_global.unescape(_loc4_[1]),_global.unescape(_loc4_[2]),_global.unescape(_loc4_[3]),oCustomPopupPosition]});
            break;
         case "ShowItemViewer":
            var _loc6_ = this.api.kernel.ChatManager["\x17\x19\x13"](Number(_loc4_[1]));
            if(_loc6_ == undefined)
            {
               this.addToQueue({object:this.api.kernel,method:this.api.kernel.showMessage,params:[this.api.lang.getText("ERROR_WORD"),this.api.lang.getText("ERROR_ITEM_CANT_BE_DISPLAYED"),"ERROR_BOX"]});
               break;
            }
            this.addToQueue({object:this.api.ui,method:this.api.ui.loadUIComponent,params:["ItemViewer","ItemViewer",{item:_loc6_},{bAlwaysOnTop:true}]});
            break;
         case "updateCompass":
            this.api.kernel.GameManager.updateCompass(Number(_loc4_[1]),Number(_loc4_[2]));
            break;
         case "ShowLinkWarning":
            this.addToQueue({object:this.api.ui,method:this.api.ui.loadUIComponent,params:["AskLinkWarning","AskLinkWarning",{text:this.api.lang.getText(_loc4_[1])}]});
            break;
         case "highlightSprite":
            if(!this.api.datacenter.Game.isRunning)
            {
               break;
            }
            var _loc7_ = 1;
            while(true)
            {
               if(_loc7_ >= _loc4_.length)
               {
                  break loop1;
               }
               var _loc8_ = _loc4_[_loc7_];
               var _loc9_ = this.api.datacenter.Sprites.getItemAt(_loc8_);
               if(_loc9_ != undefined)
               {
                  if(!(!_loc9_["\x18\x10\x0e"] || _loc9_["\x18\r\x04"]))
                  {
                     var _loc10_ = _loc9_.cellNum;
                     if(_loc10_ != undefined)
                     {
                        this.addToQueue({object:this.api.gfx["\x18\x18\x15"],method:this.api.gfx["\x18\x18\x15"]["\x17\x11\x11"],params:[_loc10_,_loc8_]});
                     }
                  }
               }
               _loc7_ = _loc7_ + 1;
            }
            break;
      }
   }
   function configureUseFlashChat(bUse)
   {
      this._bUseFlashChat = bUse;
      this._cChat.useReplacementPanel(!!bUse ? dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.NO_REPLACEMENT_PANEL : this.api.kernel.OptionsManager.getOption("chatReplacementPanel"));
      this._txtConsole._visible = bUse;
      this._mcBgTxtConsole._visible = bUse;
      this._cChat._btnOpenClose._visible = bUse;
      this._cChat._btnHelpForPanel._visible = !bUse;
      this._btnHelp._visible = bUse;
      if(!bUse)
      {
         this._cChat["\x1a\x01\x03"](true);
      }
   }
   function drawBar(oEvent)
   {
      this["\x18\x15\f"]();
      this._msShortcuts["\x1b\x14\x13"]();
      this["\x1b\x14\x19"]();
   }
   function onSetFocus()
   {
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
      if(this.api.config["\x18\x0e\x12"] || this.api.config["\x18\x0e\x1a"])
      {
         getURL("FSCommand:" add "trapallkeys","false");
      }
      else
      {
         this["\x1c\x05\x1c"] = true;
      }
   }
   function onKillFocus()
   {
      if(this.api.config["\x18\x0e\x12"] || this.api.config["\x18\x0e\x1a"])
      {
         getURL("FSCommand:" add "trapallkeys","true");
      }
      else
      {
         this["\x1c\x05\x1c"] = false;
      }
   }
}
