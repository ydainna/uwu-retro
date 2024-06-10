class dofus.graphics.gapi.ui.Options extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Options";
   static var §\x1a\x11\x15§ = 20;
   function Options()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Options.CLASS_NAME);
      this.api.electron.showMenuBar(true);
      var _loc3_ = System.capabilities.playerType == "StandAlone" && System.capabilities.os.indexOf("Windows") != -1;
      this["\x1c\x0f\x07"] = new ank.utils.ExtendedArray();
      var _loc4_ = _root.electron;
      if(_loc4_)
      {
         this["\x1c\x0f\x07"].push({label:this.api.lang.getText("DISPLAYSTYLE_CLASSIC"),style:"normal"});
         this["\x1c\x0f\x07"].push({label:this.api.lang.getText("DISPLAYSTYLE_WIDESCREENCHATPANEL"),style:dofus.managers.OptionsManager.DISPLAY_STYLE_WIDESCREEN_PANELS});
      }
      else
      {
         this["\x1c\x0f\x07"].push({label:this.api.lang.getText("DISPLAYSTYLE_NORMAL"),style:"normal"});
         if(System.capabilities.screenResolutionY > 950 || _loc3_)
         {
            this["\x1c\x0f\x07"].push({label:this.api.lang.getText("DISPLAYSTYLE_MEDIUM" + (!_loc3_ ? "" : "_RES")),style:"medium"});
            this["\x1c\x0f\x07"].push({label:this.api.lang.getText("DISPLAYSTYLE_MAXIMIZED" + (!_loc3_ ? "" : "_RES")),style:"maximized"});
         }
      }
      this["\x1c\x0f\r"] = new ank.utils.ExtendedArray();
      this["\x1c\x0f\r"].push({label:this.api.lang.getText("QUALITY_LOW"),quality:"low"});
      this["\x1c\x0f\r"].push({label:this.api.lang.getText("QUALITY_MEDIUM"),quality:"medium"});
      this["\x1c\x0f\r"].push({label:this.api.lang.getText("QUALITY_HIGH"),quality:"high"});
      this["\x1c\x0f\r"].push({label:this.api.lang.getText("QUALITY_BEST"),quality:"best"});
      this["\x1c\x10\x0e"] = new ank.utils.ExtendedArray();
      this["\x1c\x10\x0e"].push({label:this.api.lang.getText("UI_OPTION_SPELLCOLOR_CLASSIC"),frame:dofus.managers.OptionsManager.OPTION_SPELL_PACK_CLASSIC});
      this["\x1c\x10\x0e"].push({label:this.api.lang.getText("UI_OPTION_SPELLCOLOR_REMASTERED"),frame:dofus.managers.OptionsManager.OPTION_SPELL_PACK_REMASTERED});
      this["\x1c\x10\x0e"].push({label:this.api.lang.getText("UI_OPTION_SPELLCOLOR_CONTRAST"),frame:dofus.managers.OptionsManager.OPTION_SPELL_PACK_CONTRAST});
      this._eaStylePoints = new ank.utils.ExtendedArray();
      this._eaStylePoints.push({label:this.api.lang.getText("PACK_STYLE_POINT_0"),value:0});
      this._eaStylePoints.push({label:this.api.lang.getText("PACK_STYLE_POINT_1"),value:1});
   }
   function §\x16\x15\n§()
   {
      this.closeAllList();
      this["\x1b\x13\x13"]();
      return true;
   }
   function closeAllList()
   {
      this._mcTabViewer._cbDisplayStyle.closeList();
      this._mcTabViewer._cbDefaultQuality.closeList();
      this._mcTabViewer._cbSpellIconsPack.closeList();
      this._mcTabViewer._cbStylePoints.closeList();
   }
   function destroy()
   {
      this.api.electron.showMenuBar(false);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.setCurrentTab,params:["General"]});
   }
   function initTexts()
   {
      this._lblGeneral.text = this.api.lang.getText("OPTIONS_GENERAL");
      this._lblDetailLevel.text = this.api.lang.getText("OPTIONS_DETAILLEVEL");
      this._lblAudio.text = this.api.lang.getText("OPTIONS_AUDIO");
      this._lblOptimize.text = this.api.lang.getText("OPTIONS_OPTIMIZE");
      this._lblDisplay.text = this.api.lang.getText("OPTIONS_DISPLAY");
      this._winBackground.title = this.api.lang.getText("OPTIONS");
      this._btnTabGeneral.label = this.api.lang.getText("OPTIONS_GENERAL");
      this._btnTabSound.label = this.api.lang.getText("OPTIONS_AUDIO");
      this._btnTabDisplay.label = this.api.lang.getText("OPTIONS_DISPLAY");
   }
   function §\x18\n\x13§()
   {
      this._mcTabViewer["\x1c\x1b\r"].text = this.api.lang.getText("MUSICS");
      this._mcTabViewer["\x1d\x01\x16"].text = this.api.lang.getText("SOUNDS");
      this._mcTabViewer["\x1c\x17\x13"].text = this.api.lang.getText("ENVIRONMENT");
      this._btnClose2.label = this.api.lang.getText("CLOSE");
      this._btnDefault.label = this.api.lang.getText("DEFAUT");
      this._mcTabViewer._btnShortcuts.label = this.api.lang.getText("KEYBORD_SHORTCUT");
      this._mcTabViewer._btnClearCache.label = this.api.lang.getText("CLEAR_CACHE");
      this._mcTabViewer._btnResetTips.label = this.api.lang.getText("REINIT_WORD");
      this._mcTabViewer._btnViewSurvey.label = this.api.lang.getText("OPEN_SURVEY");
      this._mcTabViewer["\x1d\x03\r"].text = this.api.lang.getText("MAP");
      this._mcTabViewer["\x1d\x03\n"].text = this.api.lang.getText("FIGHT");
      this._mcTabViewer["\x1d\x03\x11"].text = this.api.lang.getText("SECURITY_SHORTCUT");
      this._mcTabViewer["\x1d\x03\x12"].text = this.api.lang.getText("INTERFACE_WORD");
      this._mcTabViewer["\x1d\x03\x0e"].text = this.api.lang.getText("MISC_WORD");
      this._mcTabViewer["\x1d\x03\x0f"].text = this.api.lang.getText("OPTIONS_OPTIMIZE");
      this._mcTabViewer["\x1d\x03\x10"].text = this.api.lang.getText("OPTION_TITLE_SCREEN");
      this._mcTabViewer["\x1c\x18\x0f"].text = this.api.lang.getText("OPTION_GRID");
      this._mcTabViewer._lblNightMode.text = this.api.lang.getText("OPTION_NIGHT_MODE");
      this._mcTabViewer["\x1d\x03\x16"].text = this.api.lang.getText("OPTION_TRANSPARENCY");
      this._mcTabViewer["\x1d\x02\x03"].text = this.api.lang.getText("OPTION_SPRITEINFOS");
      this._mcTabViewer["\x1d\x02\x04"].text = this.api.lang.getText("OPTION_SPRITEMOVE");
      this._mcTabViewer["\x1c\x1a\x17"].text = this.api.lang.getText("OPTION_MAPINFOS");
      this._mcTabViewer["\x1c\x13\x04"].text = this.api.lang.getText("OPTION_AUTOHIDESMILEYS");
      this._mcTabViewer["\x1d\x02\r"].text = this.api.lang.getText("OPTION_STRINGCOURSE");
      this._mcTabViewer._lblColorfulTactic.text = this.api.lang.getText("OPTION_COLORFULTACTIC");
      this._mcTabViewer["\x1c\x1c\x1b"].text = this.api.lang.getText("OPTION_POINTSOVERHEAD");
      this._mcTabViewer["\x1c\x15\x02"].text = this.api.lang.getText("OPTION_CHATEFFECTS");
      this._mcTabViewer["\x1c\x14\x0f"].text = this.api.lang.getText("OPTION_BUFF");
      this._mcTabViewer["\x1c\x12\x05"].text = this.api.lang.getText("OPTION_LINEOFSIGHT");
      this._mcTabViewer["\x1c\x1e\x06"].text = this.api.lang.getText("OPTION_REMINDTURN");
      this._mcTabViewer["\x1c\x18\x15"].text = this.api.lang.getText("OPTION_SPELLBAR");
      this._mcTabViewer["\x1c\x16\b"].text = this.api.lang.getText("OPTION_WRONG_CRAFT_CONFIRM");
      this._mcTabViewer["\x1c\x18\x11"].text = this.api.lang.getText("OPTION_GUILDMESSAGESOUND");
      this._mcTabViewer["\x1d\x02\x06"].text = this.api.lang.getText("OPTION_STARTTURNSOUND");
      this._mcTabViewer["\x1c\x13\n"].text = this.api.lang.getText("OPTION_BANNERSHORTCUTS");
      this._mcTabViewer["\x1d\x03\x07"].text = this.api.lang.getText("OPTION_TIPSONSTART");
      this._mcTabViewer["\x1c\x16\t"].text = this.api.lang.getText("OPTION_CREATURESMODE");
      this._mcTabViewer["\x1c\x17\x05"].text = this.api.lang.getText("OPTION_DISPLAYSTYLE");
      this._mcTabViewer["\x1c\x1b\b"].text = this.api.lang.getText("OPTION_MOVABLEBAR");
      this._mcTabViewer["\x1c\x1b\t"].text = this.api.lang.getText("OPTION_MOVABLEBARSIZE");
      this._mcTabViewer._lblSpellBar.text = this.api.lang.getText("OPTION_SPELLBAR");
      this._mcTabViewer["\x1d\x03\x1c"].text = this.api.lang.getText("OPTION_VIEWALLMONSTERINGROUP");
      this._mcTabViewer["\x1c\x15\x01"].text = this.api.lang.getText("OPTION_CHARACTERPREVIEW");
      this._mcTabViewer["\x1d\x01\x02"].text = this.api.lang.getText("UI_OPTION_SEEALLSPELL");
      this._mcTabViewer["\x1c\x13\x01"].text = this.api.lang.getText("OPTION_AURA");
      this._mcTabViewer["\x1d\x03\x17"].text = this.api.lang.getText("OPTION_TUTORIALTIPS");
      this._mcTabViewer["\x1c\x14\x15"].text = this.api.lang.getText("OPTION_CENSORSHIP_FILTER");
      this._mcTabViewer["\x1c\x16\x11"].text = this.api.lang.getText("OPTION_DEFAULTQUALITY");
      this._mcTabViewer._lblSpeakingItems.text = this.api.lang.getText("OPTION_USE_SPEAKINGITEMS");
      this._mcTabViewer["\x1c\x15\r"].text = this.api.lang.getText("OPTION_CONFIRM_DROPITEM");
      this._mcTabViewer["\x1c\x15\x03"].text = this.api.lang.getText("OPTION_USE_CHATTIMESTAMP");
      this._mcTabViewer["\x1d\x03\x1d"].text = this.api.lang.getText("OPTION_VIEW_DICES_DAMMAGES");
      this._mcTabViewer._lblAnonymousGameEvents.text = this.api.lang.getText("OPTION_ANONYMOUS_GAME_EVENTS");
      this._mcTabViewer["\x1d\x01\x04"].text = this.api.lang.getText("UI_OPTION_SEEDAMAGESCOLOR");
      this._mcTabViewer._lblRegroupDamage.text = this.api.lang.getText("OPTION_REGROUP_DAMAGE");
      this._mcTabViewer._lblStylePoints.text = this.api.lang.getText("OPTION_POINTS_STYLE");
      this._mcTabViewer._lblViewHPAsBar.text = this.api.lang.getText("OPTION_VIEW_HP_AS_BAR");
      this._mcTabViewer._lblAnimateHPBar.text = this.api.lang.getText("OPTION_ANIMATE_HP_BAR");
      this._mcTabViewer["\x1c\x1e\x04"].text = this.api.lang.getText("DOFUS_REMASTERED_SPELL_ICONS");
      if(!this.api.electron.enabled)
      {
         this._mcTabViewer["\x1c\x17\x05"]._visible = false;
         this._mcTabViewer._cbDisplayStyle._visible = false;
      }
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._btnClose2.addEventListener("click",this);
      this._btnDefault.addEventListener("click",this);
      this._btnTabGeneral.addEventListener("click",this);
      this._btnTabSound.addEventListener("click",this);
      this._btnTabDisplay.addEventListener("click",this);
      this.api.kernel.OptionsManager.addEventListener("optionChanged",this);
      ank.utils.["\x18\x1e\x13"].addListener(this);
   }
   function §\x15\x1e\x1b§()
   {
      this._mcTabViewer._btnShortcuts.addEventListener("click",this);
      this._mcTabViewer._btnClearCache.addEventListener("click",this);
      this._mcTabViewer._btnViewSurvey.addEventListener("click",this);
      this._mcTabViewer._btnGrid.addEventListener("click",this);
      this._mcTabViewer._btnNightMode.addEventListener("click",this);
      this._mcTabViewer._btnTransparency.addEventListener("click",this);
      this._mcTabViewer._btnSpriteInfos.addEventListener("click",this);
      this._mcTabViewer._btnSpriteMove.addEventListener("click",this);
      this._mcTabViewer._btnMapInfos.addEventListener("click",this);
      this._mcTabViewer._btnAutoHideSmileys.addEventListener("click",this);
      this._mcTabViewer._btnStringCourse.addEventListener("click",this);
      this._mcTabViewer._btnColorfulTactic.addEventListener("click",this);
      this._mcTabViewer._btnPointsOverHead.addEventListener("click",this);
      this._mcTabViewer._btnChatEffects.addEventListener("click",this);
      this._mcTabViewer._btnBuff.addEventListener("click",this);
      this._mcTabViewer._btnGuildMessageSound.addEventListener("click",this);
      this._mcTabViewer._btnStartTurnSound.addEventListener("click",this);
      this._mcTabViewer._btnBannerShortcuts.addEventListener("click",this);
      this._mcTabViewer._btnTipsOnStart.addEventListener("click",this);
      this._mcTabViewer._btnMovableBar.addEventListener("click",this);
      this._mcTabViewer._btnViewAllMonsterInGroup.addEventListener("click",this);
      this._mcTabViewer._btnCharacterPreview.addEventListener("click",this);
      this._mcTabViewer._btnAura.addEventListener("click",this);
      this._mcTabViewer._btnTutorialTips.addEventListener("click",this);
      this._mcTabViewer._btnResetTips.addEventListener("click",this);
      this._mcTabViewer._btnCensorshipFilter.addEventListener("click",this);
      this._mcTabViewer._btnCraftWrongConfirm.addEventListener("click",this);
      this._mcTabViewer._btnAdvancedLineOfSight.addEventListener("click",this);
      this._mcTabViewer._btnRemindTurnTime.addEventListener("click",this);
      this._mcTabViewer._btnHideSpellBar.addEventListener("click",this);
      this._mcTabViewer._btnSeeAllSpell.addEventListener("click",this);
      this._mcTabViewer._btnSpeakingItems.addEventListener("click",this);
      this._mcTabViewer._btnConfirmDropItem.addEventListener("click",this);
      this._mcTabViewer._btnChatTimestamp.addEventListener("click",this);
      this._mcTabViewer._btnViewDicesDammages.addEventListener("click",this);
      this._mcTabViewer._btnAnonymousGameEvents.addEventListener("click",this);
      this._mcTabViewer._btnSeeDamagesColor.addEventListener("click",this);
      this._mcTabViewer._btnRegroupDamage.addEventListener("click",this);
      this._mcTabViewer._btnViewHPAsBar.addEventListener("click",this);
      this._mcTabViewer._btnAnimateHPBar.addEventListener("click",this);
      this._mcTabViewer._cbDisplayStyle.addEventListener("itemSelected",this);
      this._mcTabViewer._cbDefaultQuality.addEventListener("itemSelected",this);
      this._mcTabViewer._cbSpellIconsPack.addEventListener("itemSelected",this);
      this._mcTabViewer._cbStylePoints.addEventListener("itemSelected",this);
      this._mcTabViewer._vsMusic.addEventListener("change",this);
      this._mcTabViewer._vsSounds.addEventListener("change",this);
      this._mcTabViewer._vsEnvironment.addEventListener("change",this);
      this._mcTabViewer._vsCreaturesMode.addEventListener("change",this);
      this._mcTabViewer._vsMovableBarSize.addEventListener("change",this);
      this._mcTabViewer._btnMuteMusic.addEventListener("click",this);
      this._mcTabViewer._btnMuteSounds.addEventListener("click",this);
      this._mcTabViewer._btnMuteEnvironment.addEventListener("click",this);
      this._sbOptions.addEventListener("scroll",this);
   }
   function initData()
   {
      this._mcTabViewer._btnShortcuts.enabled = this.api.kernel.XTRA_LANG_FILES_LOADED;
      var _loc2_ = this.api.kernel.OptionsManager;
      this._mcTabViewer._vsMusic.value = _loc2_.getOption("AudioMusicVol");
      this._mcTabViewer._vsSounds.value = _loc2_.getOption("AudioEffectVol");
      this._mcTabViewer._vsEnvironment.value = _loc2_.getOption("AudioEnvVol");
      this._mcTabViewer._btnMuteMusic.selected = _loc2_.getOption("AudioMusicMute");
      this._mcTabViewer._btnMuteSounds.selected = _loc2_.getOption("AudioEffectMute");
      this._mcTabViewer._btnMuteEnvironment.selected = _loc2_.getOption("AudioEnvMute");
      this._mcTabViewer._btnGrid.selected = _loc2_.getOption("Grid");
      this._mcTabViewer._btnNightMode.selected = _loc2_.getOption("NightMode");
      this._mcTabViewer._btnTransparency.selected = _loc2_.getOption("Transparency");
      this._mcTabViewer._btnSpriteInfos.selected = _loc2_.getOption("SpriteInfos");
      this._mcTabViewer._btnSpriteMove.selected = _loc2_.getOption("SpriteMove");
      this._mcTabViewer._btnMapInfos.selected = _loc2_.getOption("MapInfos");
      this._mcTabViewer._btnAutoHideSmileys.selected = _loc2_.getOption("AutoHideSmileys");
      this._mcTabViewer._btnStringCourse.selected = _loc2_.getOption("StringCourse");
      this._mcTabViewer._btnColorfulTactic.selected = _loc2_.getOption("ColorfulTactic");
      this._mcTabViewer._btnPointsOverHead.selected = _loc2_.getOption("PointsOverHead");
      this._mcTabViewer._btnChatEffects.selected = _loc2_.getOption("ChatEffects");
      this._mcTabViewer._btnBuff.selected = _loc2_.getOption("Buff");
      this._mcTabViewer._btnGuildMessageSound.selected = _loc2_.getOption("GuildMessageSound");
      this._mcTabViewer._btnStartTurnSound.selected = _loc2_.getOption("StartTurnSound");
      this._mcTabViewer._btnBannerShortcuts.selected = _loc2_.getOption("BannerShortcuts");
      this._mcTabViewer._btnTipsOnStart.selected = _loc2_.getOption("TipsOnStart");
      this._mcTabViewer._btnViewAllMonsterInGroup.selected = _loc2_.getOption("ViewAllMonsterInGroup");
      this._mcTabViewer._btnCharacterPreview.selected = _loc2_.getOption("CharacterPreview");
      this._mcTabViewer._btnAura.selected = _loc2_.getOption("Aura");
      this._mcTabViewer._btnTutorialTips.selected = _loc2_.getOption("DisplayingFreshTips");
      this._mcTabViewer._btnCensorshipFilter.selected = _loc2_.getOption("CensorshipFilter");
      this._mcTabViewer._btnCraftWrongConfirm.selected = _loc2_.getOption("AskForWrongCraft");
      this._mcTabViewer._btnAdvancedLineOfSight.selected = _loc2_.getOption("AdvancedLineOfSight");
      this._mcTabViewer._btnRemindTurnTime.selected = _loc2_.getOption("RemindTurnTime");
      this._mcTabViewer._btnHideSpellBar.selected = _loc2_.getOption("HideSpellBar");
      this._mcTabViewer._btnSeeAllSpell.selected = !_loc2_.getOption("SeeAllSpell");
      this._mcTabViewer._btnSpeakingItems.selected = _loc2_.getOption("UseSpeakingItems");
      this._mcTabViewer._btnConfirmDropItem.selected = _loc2_.getOption("ConfirmDropItem");
      this._mcTabViewer._btnChatTimestamp.selected = _loc2_.getOption("TimestampInChat");
      this._mcTabViewer._btnViewDicesDammages.selected = _loc2_.getOption("ViewDicesDammages");
      this._mcTabViewer._btnAnonymousGameEvents.selected = _loc2_.getOption("AnonymousGameEvents");
      this._mcTabViewer._btnSeeDamagesColor.selected = _loc2_.getOption("SeeDamagesColor");
      this._mcTabViewer._btnRegroupDamage.selected = _loc2_.getOption("RegroupDamage");
      this._mcTabViewer._btnViewHPAsBar.selected = _loc2_.getOption("ViewHPAsBar");
      this._mcTabViewer._btnAnimateHPBar.selected = _loc2_.getOption("AnimateHPBar");
      this._mcTabViewer._btnMovableBar.selected = _loc2_.getOption("MovableBar");
      this._mcTabViewer._vsMovableBarSize.value = _loc2_.getOption("MovableBarSize");
      this._mcTabViewer["\x1c\x1b\n"].text = _loc2_.getOption("MovableBarSize");
      this._mcTabViewer._vsCreaturesMode.value = _loc2_.getOption("CreaturesMode");
      this._mcTabViewer["\x1c\x16\n"].text = !!_global.isFinite(_loc2_.getOption("CreaturesMode")) ? _loc2_.getOption("CreaturesMode") : this.api.lang.getText("INFINIT");
      this._mcTabViewer._cbDefaultQuality.dataProvider = this["\x1c\x0f\r"];
      this._mcTabViewer._cbDefaultQuality["\x18\x1b\x18"] = String(this._parent);
      this["\x1a\x13\n"](_loc2_.getOption("DefaultQuality"));
      this._mcTabViewer._cbSpellIconsPack.dataProvider = this["\x1c\x10\x0e"];
      this._mcTabViewer._cbSpellIconsPack["\x18\x1b\x18"] = String(this._parent);
      this["\x1a\x13\f"](_loc2_.getOption("RemasteredSpellIconsPack"));
      this._mcTabViewer._cbStylePoints.dataProvider = this._eaStylePoints;
      this._mcTabViewer._cbStylePoints["\x18\x1b\x18"] = String(this._parent);
      this.selectPointStyle(_loc2_.getOption("StylePoint"));
      this._mcTabViewer._cbDisplayStyle.dataProvider = this["\x1c\x0f\x07"];
      this._mcTabViewer._cbDisplayStyle["\x18\x1b\x18"] = String(this._parent);
      var _loc3_ = System.capabilities.playerType == "PlugIn" || (System.capabilities.playerType == "ActiveX" || System.capabilities.playerType == "StandAlone" && System.capabilities.os.indexOf("Windows") != -1);
      this["\x1a\x12\x16"](!!_loc3_ ? _loc2_.getOption("DisplayStyle") : "normal");
      this._mcTabViewer._cbDisplayStyle.enabled = _loc3_;
      var _loc4_ = new Color(this._mcTabViewer._cbDisplayStyle);
      _loc4_.setTransform(!_loc3_ ? {ra:30,rb:149,ga:30,gb:145,ba:30,bb:119} : {ra:100,rb:0,ga:100,gb:0,ba:100,bb:0});
   }
   function §\x1a\x13\n§(§\x1b\x07\x15§)
   {
      var _loc3_ = 0;
      var _loc4_ = 0;
      while(_loc4_ < this["\x1c\x0f\r"].length)
      {
         if(this["\x1c\x0f\r"][_loc4_].quality == _loc2_)
         {
            _loc3_ = _loc4_;
            break;
         }
         _loc4_ = _loc4_ + 1;
      }
      this._mcTabViewer._cbDefaultQuality.selectedIndex = _loc3_;
   }
   function §\x1a\x13\f§(§\x19\x0b\x15§)
   {
      var _loc3_ = 0;
      var _loc4_ = 0;
      while(_loc4_ < this["\x1c\x10\x0e"].length)
      {
         if(this["\x1c\x10\x0e"][_loc4_].frame == _loc2_)
         {
            _loc3_ = _loc4_;
            break;
         }
         _loc4_ = _loc4_ + 1;
      }
      this._mcTabViewer._cbSpellIconsPack.selectedIndex = _loc3_;
   }
   function §\x1a\x12\x16§(§\x1b\b\x17§)
   {
      var _loc3_ = 0;
      var _loc4_ = 0;
      while(_loc4_ < this["\x1c\x0f\x07"].length)
      {
         if(this["\x1c\x0f\x07"][_loc4_].style == _loc2_)
         {
            _loc3_ = _loc4_;
            break;
         }
         _loc4_ = _loc4_ + 1;
      }
      this._mcTabViewer._cbDisplayStyle.selectedIndex = _loc3_;
   }
   function selectPointStyle(§\x19\b\x14§)
   {
      this._mcTabViewer._cbStylePoints.selectedIndex = _loc2_;
   }
   function §\x1b\x14\x13§()
   {
      this._mcTabViewer.removeMovieClip();
      this.attachMovie("Options" + this["\x1e\b\x19"] + "Content","_mcTabViewer",this.getNextHighestDepth(),{_x:this["\x1d\x0e\x12"]._x,_y:this["\x1d\x0e\x12"]._y});
      this._mcTabViewer.setMask(this._mcMask);
      if(this._mcTabViewer._height > this["\x1d\x0e\x12"]._height)
      {
         this._sbOptions._visible = true;
         this._sbOptions.min = 0;
         this._sbOptions.max = this._mcTabViewer._height - this["\x1d\x0e\x12"]._height;
         this._sbOptions.page = this._sbOptions.max / 2;
      }
      else
      {
         this._sbOptions._visible = false;
      }
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this["\x18\n\x13"]});
      this.addToQueue({object:this,method:this["\x15\x1e\x1b"]});
   }
   function setCurrentTab(§\x1b\x04\x07§)
   {
      this["\x1d\n\x04"].removeMovieClip();
      var _loc3_ = this["_btnTab" + this["\x1e\b\x19"]];
      var _loc4_ = this["_btnTab" + _loc2_];
      _loc3_.selected = true;
      _loc3_.enabled = true;
      _loc4_.selected = false;
      _loc4_.enabled = false;
      this["\x1e\b\x19"] = _loc2_;
      this._sbOptions["\x1a\x11\x12"] = 0;
      this["\x1b\x14\x13"]();
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnTabGeneral":
         case "_btnTabSound":
         case "_btnTabDisplay":
            this.closeAllList();
            this.setCurrentTab(_loc2_.target._name.substr(7));
            break;
         case "_btnMuteMusic":
            this.api.kernel.OptionsManager.setOption("AudioMusicMute",_loc2_.target.selected);
            break;
         case "_btnMuteSounds":
            this.api.kernel.OptionsManager.setOption("AudioEffectMute",_loc2_.target.selected);
            break;
         case "_btnMuteEnvironment":
            this.api.kernel.OptionsManager.setOption("AudioEnvMute",_loc2_.target.selected);
            break;
         case "_btnClose":
         case "_btnClose2":
            this["\x16\x15\n"]();
            break;
         case "_btnDefault":
            this.api.kernel.OptionsManager["\x18\x15\x19"]();
            break;
         case "_btnShortcuts":
            this.api.ui.loadUIComponent("Shortcuts","Shortcuts",undefined,{bAlwaysOnTop:true});
            break;
         case "_btnViewSurvey":
            this.api.network.Survey.getSurvey();
            this["\x16\x15\n"]();
            break;
         case "_btnClearCache":
            this.api.kernel.askClearCache();
            break;
         case "_btnGrid":
            this.api.kernel.OptionsManager.setOption("Grid",_loc2_.target.selected);
            break;
         case "_btnNightMode":
            this.api.kernel.OptionsManager.setOption("NightMode",_loc2_.target.selected);
            break;
         case "_btnTransparency":
            this.api.kernel.OptionsManager.setOption("Transparency",_loc2_.target.selected);
            break;
         case "_btnSpriteInfos":
            this.api.kernel.OptionsManager.setOption("SpriteInfos",_loc2_.target.selected);
            break;
         case "_btnSpriteMove":
            this.api.kernel.OptionsManager.setOption("SpriteMove",_loc2_.target.selected);
            break;
         case "_btnMapInfos":
            this.api.kernel.OptionsManager.setOption("MapInfos",_loc2_.target.selected);
            break;
         case "_btnCraftWrongConfirm":
            this.api.kernel.OptionsManager.setOption("AskForWrongCraft",_loc2_.target.selected);
            break;
         case "_btnAutoHideSmileys":
            this.api.kernel.OptionsManager.setOption("AutoHideSmileys",_loc2_.target.selected);
            break;
         case "_btnStringCourse":
            this.api.kernel.OptionsManager.setOption("StringCourse",_loc2_.target.selected);
            break;
         case "_btnColorfulTactic":
            this.api.kernel.OptionsManager.setOption("ColorfulTactic",_loc2_.target.selected);
            break;
         case "_btnPointsOverHead":
            this.api.kernel.OptionsManager.setOption("PointsOverHead",_loc2_.target.selected);
            break;
         case "_btnChatEffects":
            this.api.kernel.OptionsManager.setOption("ChatEffects",_loc2_.target.selected);
            break;
         case "_btnBuff":
            this.api.kernel.OptionsManager.setOption("Buff",_loc2_.target.selected);
            break;
         case "_btnGuildMessageSound":
            this.api.kernel.OptionsManager.setOption("GuildMessageSound",_loc2_.target.selected);
            break;
         case "_btnStartTurnSound":
            this.api.kernel.OptionsManager.setOption("StartTurnSound",_loc2_.target.selected);
            break;
         case "_btnBannerShortcuts":
            this.api.kernel.OptionsManager.setOption("BannerShortcuts",_loc2_.target.selected);
            break;
         case "_btnTipsOnStart":
            this.api.kernel.OptionsManager.setOption("TipsOnStart",_loc2_.target.selected);
            break;
         case "_btnMovableBar":
            this.api.kernel.OptionsManager.setOption("MovableBar",_loc2_.target.selected);
            this.api.kernel.OptionsManager.onMovableBarOptionChanged();
            break;
         case "_btnViewAllMonsterInGroup":
            this.api.kernel.OptionsManager.setOption("ViewAllMonsterInGroup",_loc2_.target.selected);
            break;
         case "_btnCharacterPreview":
            this.api.kernel.OptionsManager.setOption("CharacterPreview",_loc2_.target.selected);
            break;
         case "_btnAura":
            this.api.kernel.OptionsManager.setOption("Aura",_loc2_.target.selected);
            break;
         case "_btnTutorialTips":
            this.api.kernel.OptionsManager.setOption("DisplayingFreshTips",_loc2_.target.selected);
            break;
         case "_btnResetTips":
            this.api.kernel.showMessage(undefined,this.api.lang.getText("DO_U_RESET_TIPS"),"CAUTION_YESNO",{name:"ResetTips",listener:this});
            break;
         case "_btnCensorshipFilter":
            this.api.kernel.OptionsManager.setOption("CensorshipFilter",_loc2_.target.selected);
            break;
         case "_btnAdvancedLineOfSight":
            this.api.kernel.OptionsManager.setOption("AdvancedLineOfSight",_loc2_.target.selected);
            break;
         case "_btnRemindTurnTime":
            this.api.kernel.OptionsManager.setOption("RemindTurnTime",_loc2_.target.selected);
            break;
         case "_btnHideSpellBar":
            this.api.kernel.OptionsManager.setOption("HideSpellBar",_loc2_.target.selected);
            break;
         case "_btnSeeAllSpell":
            this.api.kernel.OptionsManager.setOption("SeeAllSpell",!_loc2_.target.selected);
            break;
         case "_btnSpeakingItems":
            this.api.kernel.OptionsManager.setOption("UseSpeakingItems",_loc2_.target.selected);
            break;
         case "_btnConfirmDropItem":
            this.api.kernel.OptionsManager.setOption("ConfirmDropItem",_loc2_.target.selected);
            break;
         case "_btnChatTimestamp":
            this.api.kernel.OptionsManager.setOption("TimestampInChat",_loc2_.target.selected);
            this.api.kernel.ChatManager.aks_a_logs();
            break;
         case "_btnViewDicesDammages":
            this.api.kernel.OptionsManager.setOption("ViewDicesDammages",_loc2_.target.selected);
            break;
         case "_btnAnonymousGameEvents":
            this.api.kernel.OptionsManager.setOption("AnonymousGameEvents",_loc2_.target.selected);
            break;
         case "_btnSeeDamagesColor":
            this.api.kernel.OptionsManager.setOption("SeeDamagesColor",_loc2_.target.selected);
            break;
         case "_btnRegroupDamage":
            this.api.kernel.OptionsManager.setOption("RegroupDamage",_loc2_.target.selected);
            break;
         case "_btnViewHPAsBar":
            this.api.kernel.OptionsManager.setOption("ViewHPAsBar",_loc2_.target.selected);
            break;
         case "_btnAnimateHPBar":
            this.api.kernel.OptionsManager.setOption("AnimateHPBar",_loc2_.target.selected);
      }
   }
   function change(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_vsMusic":
            this.api.kernel.OptionsManager.setOption("AudioMusicVol",_loc2_.target.value);
            break;
         case "_vsSounds":
            this.api.kernel.OptionsManager.setOption("AudioEffectVol",_loc2_.target.value);
            break;
         case "_vsEnvironment":
            this.api.kernel.OptionsManager.setOption("AudioEnvVol",_loc2_.target.value);
            break;
         case "_vsCreaturesMode":
            if(_loc2_.target.value == _loc2_.target.max)
            {
               this.api.kernel.OptionsManager.setOption("CreaturesMode",Number.POSITIVE_INFINITY);
            }
            else if(_loc2_.target.value == _loc2_.target.min)
            {
               this.api.kernel.OptionsManager.setOption("CreaturesMode",0);
            }
            else
            {
               this.api.kernel.OptionsManager.setOption("CreaturesMode",Math.floor(_loc2_.target.value));
            }
            break;
         case "_vsMovableBarSize":
            var _loc3_ = Math.floor(_loc2_.target.value);
            this.api.kernel.OptionsManager.setOption("MovableBarSize",_loc3_);
            this._mcTabViewer["\x1c\x1b\n"].text = _loc3_.toString();
      }
   }
   function optionChanged(oEvent)
   {
      switch(_loc2_.key)
      {
         case "Grid":
            this._mcTabViewer._btnGrid.selected = _loc2_.value;
            break;
         case "NightMode":
            this._mcTabViewer._btnNightMode.selected = _loc2_.value;
            break;
         case "Transparency":
            this._mcTabViewer._btnTransparency.selected = _loc2_.value;
            break;
         case "SpriteInfos":
            this._mcTabViewer._btnSpriteInfos.selected = _loc2_.value;
            break;
         case "SpriteMove":
            this._mcTabViewer._btnSpriteMove.selected = _loc2_.value;
            break;
         case "MapInfos":
            this._mcTabViewer._btnMapInfos.selected = _loc2_.value;
            break;
         case "AutoHideSmileys":
            this._mcTabViewer._btnAutoHideSmileys.selected = _loc2_.value;
            break;
         case "StringCourse":
            this._mcTabViewer._btnStringCourse.selected = _loc2_.value;
            break;
         case "ColorfulTactic":
            this._mcTabViewer._btnColorfulTactic.selected = _loc2_.value;
            break;
         case "PointsOverHead":
            this._mcTabViewer._btnPointsOverHead.selected = _loc2_.value;
            break;
         case "ChatEffects":
            this._mcTabViewer._btnChatEffects.selected = _loc2_.value;
            break;
         case "CreaturesMode":
            this._mcTabViewer._vsCreaturesMode.value = _loc2_.value;
            this._mcTabViewer["\x1c\x16\n"].text = !_global.isFinite(_loc2_.value) ? this.api.lang.getText("INFINIT") : _loc2_.value;
            break;
         case "Buff":
            this._mcTabViewer._btnBuff.selected = _loc2_.value;
            break;
         case "GuildMessageSound":
            this._mcTabViewer._btnGuildMessageSound.selected = _loc2_.value;
            break;
         case "StartTurnSound":
            this._mcTabViewer._btnStartTurnSound.selected = _loc2_.value;
            break;
         case "BannerShortcuts":
            this._mcTabViewer._btnBannerShortcuts.selected = _loc2_.value;
            break;
         case "TipsOnStart":
            this._mcTabViewer._btnTipsOnStart.selected = _loc2_.value;
            break;
         case "DisplayStyle":
            this._mcTabViewer["\x1a\x12\x16"](_loc2_.value);
            break;
         case "MovableBar":
            this._mcTabViewer._btnMovableBar.selected = _loc2_.value;
            break;
         case "MovableBarSize":
            this._mcTabViewer._vsMovableBarSize.value = _loc2_.value;
            break;
         case "ViewAllMonsterInGroup":
            this._mcTabViewer._btnViewAllMonsterInGroup.selected = _loc2_.value;
            break;
         case "CharacterPreview":
            this._mcTabViewer._btnCharacterPreview.selected = _loc2_.value;
            break;
         case "Aura":
            this._mcTabViewer._btnAura.selected = _loc2_.value;
            break;
         case "DisplayingFreshTips":
            this._mcTabViewer._btnTutorialTips.selected = _loc2_.value;
            break;
         case "CensorshipFilter":
            this._mcTabViewer._btnCensorshipFilter.selected = _loc2_.value;
            break;
         case "AskForWrongCraft":
            this._mcTabViewer._btnCraftWrongConfirm.selected = _loc2_.value;
            break;
         case "AdvancedLineOfSight":
            this._mcTabViewer._btnAdvancedLineOfSight.selected = _loc2_.value;
            break;
         case "RemindTurnTime":
            this._mcTabViewer._btnRemindTurnTime.selected = _loc2_.value;
            break;
         case "HideSpellBar":
            this._mcTabViewer._btnHideSpellBar.selected = _loc2_.value;
            break;
         case "SeeAllSpell":
            this._mcTabViewer._btnSeeAllSpell.selected = !_loc2_.value;
            break;
         case "UseSpeakingItems":
            this._mcTabViewer._btnSpeakingItems.selected = _loc2_.value;
            break;
         case "ConfirmDropItem":
            this._mcTabViewer._btnConfirmDropItem.selected = _loc2_.value;
            break;
         case "TimestampInChat":
            this._mcTabViewer._btnChatTimestamp.selected = _loc2_.value;
            this.api.kernel.ChatManager.aks_a_logs();
            break;
         case "AudioMusicMute":
            this._mcTabViewer._btnMuteMusic.selected = _loc2_.value;
            break;
         case "AudioEffectMute":
            this._mcTabViewer._btnMuteSounds.selected = _loc2_.value;
            break;
         case "AudioEnvMute":
            this._mcTabViewer._btnMuteEnvironment.selected = _loc2_.value;
            break;
         case "RegroupDamage":
            this._mcTabViewer._btnRegroupDamage.selected = _loc2_.value;
      }
   }
   function itemSelected(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_cbDisplayStyle":
            var _loc3_ = _loc2_.target.selectedItem;
            new org.flashdevelop.utils.FlashConnect.trace(this.api,"dofus.graphics.gapi.ui.Options::itemSelected","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/graphics/gapi/ui/Options.as",954);
            if(_loc3_.style == "normal" || this.api.electron.enabled)
            {
               this.api.kernel.OptionsManager.setOption("DisplayStyle",_loc3_.style);
            }
            else
            {
               this.api.kernel.showMessage(this.api.lang.getText("OPTIONS_DISPLAY"),this.api.lang.getText("DO_U_CHANGE_DISPLAYSTYLE"),"CAUTION_YESNO",{name:"Display",listener:this,params:{style:_loc3_.style}});
            }
            break;
         case "_cbDefaultQuality":
            var _loc4_ = _loc2_.target.selectedItem;
            this.api.kernel.showMessage(this.api.lang.getText("OPTIONS_DISPLAY"),this.api.lang.getText("DO_U_CHANGE_QUALITY_" + String(_loc4_.quality).toUpperCase()),"CAUTION_YESNO",{name:"Quality",listener:this,params:{quality:_loc4_.quality}});
            break;
         case "_cbSpellIconsPack":
            var _loc5_ = _loc2_.target.selectedItem;
            var _loc6_ = _loc5_.frame;
            var _loc7_ = this.api.kernel.OptionsManager.getOption("RemasteredSpellIconsPack");
            if(_loc7_ == _loc6_)
            {
               break;
            }
            this.api.kernel.OptionsManager.setOption("RemasteredSpellIconsPack",_loc6_);
            this["\x1a\x13\f"](_loc6_);
            var _loc8_ = dofus.graphics.gapi.ui.Banner(this.gapi.getUIComponent("Banner"));
            if(_loc8_ != undefined)
            {
               _loc8_["\x1a\x1c\x10"]["\x1b\x16\x07"]();
            }
            var _loc9_ = dofus.graphics.gapi.ui.Spells(this.gapi.getUIComponent("Spells"));
            if(_loc9_ != undefined)
            {
               _loc9_["\x1b\x16\x07"]();
               var _loc10_ = _loc9_["\x1b\x06\x0b"];
               if(_loc10_ != undefined)
               {
                  _loc10_["\x1b\x14\x14"]();
               }
            }
            var _loc11_ = dofus.graphics.gapi.ui.SpellViewerOnCreate(this.gapi.getUIComponent("SpellViewerOnCreate"));
            if(_loc11_ != undefined)
            {
               _loc11_["\x1a\x0b\b"]();
            }
            var _loc12_ = dofus.graphics.gapi.ui.SpellsCollection(this.gapi.getUIComponent("SpellsCollection"));
            if(_loc12_ != undefined)
            {
               _loc12_.initData();
            }
            break;
         case "_cbStylePoints":
            var _loc13_ = _loc2_.target.selectedItem;
            this.api.kernel.OptionsManager.setOption("StylePoint",_loc13_.value);
      }
   }
   function yes(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "AskYesNoDisplay":
            this.api.kernel.OptionsManager.setOption("DisplayStyle",_loc2_.target.params.style);
            break;
         case "AskYesNoResetTips":
            dofus.managers.TipsManager.getInstance()["\x1a\r\x1a"]();
            break;
         case "AskYesNoQuality":
            this.api.kernel.OptionsManager.setOption("DefaultQuality",_loc2_.target.params.quality);
      }
   }
   function no(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "AskYesNoDisplay":
            this["\x1a\x12\x16"](this.api.kernel.OptionsManager.getOption("DisplayStyle"));
            break;
         case "AskYesNoQuality":
            this["\x1a\x13\n"](this.api.kernel.OptionsManager.getOption("DefaultQuality"));
      }
   }
   function scroll(oEvent)
   {
      this._mcTabViewer._y = this["\x1d\x0e\x12"]._y - this._sbOptions["\x1a\x11\x12"];
      this.closeAllList();
   }
   function onMouseWheel(§\x19\x05\x1b§, §\x18\x1b\f§)
   {
      if(dofus.graphics.gapi.ui.Zoom["\x18\x10\x13"]())
      {
         return undefined;
      }
      if(String(_loc3_._target).indexOf(this._target) != -1 && this._sbOptions._visible)
      {
         this._sbOptions["\x1a\x11\x12"] -= _loc2_ <= 0 ? 0 - dofus.graphics.gapi.ui.Options["\x1a\x11\x15"] : dofus.graphics.gapi.ui.Options["\x1a\x11\x15"];
      }
   }
}
