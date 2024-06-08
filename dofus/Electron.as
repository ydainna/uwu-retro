class dofus.Electron extends dofus.utils.ApiElement
{
  static var WIDESCREEN_PANEL_CHAT = 0;
  static var WIDESCREEN_PANEL_CONSOLE = 1;
  static var POPUP_MENU_BOTTOMLEFT_POSITION = {x: 0.65, y: 278};
  static var POPUP_MENU_BOTTOMRIGHT_POSITION = {x: 737.6, y: 278};
  static var EXTERNAL_INTERFACE_UNDEFINED_TEXT = "|null|";

  var _bEnabled = dofus.Electron.setEnabled();
  var _bUseRsaCrypto = _root.RSACrypto != undefined;
  var _bFocused = true;
  var _bShowingWidescreenPanel = false;

  function Electron(oAPI)
  {
    super();
    flash.external.ExternalInterface.addCallback("openClientChatPrefixMenu", this, this.openClientChatPrefixMenu);
    flash.external.ExternalInterface.addCallback("onRetroConsoleHref", this, this.onRetroConsoleHref);
    flash.external.ExternalInterface.addCallback("onRetroChatHref", this, this.onRetroChatHref);
    flash.external.ExternalInterface.addCallback("onRetroChatOpened", this, this.onRetroChatOpened);
    flash.external.ExternalInterface.addCallback("onRetroConsoleOpened", this, this.onRetroConsoleOpened);
    flash.external.ExternalInterface.addCallback("onRetroChatInput", this, this.onRetroChatInput);
    flash.external.ExternalInterface.addCallback("onRetroConsoleInput", this, this.onRetroConsoleInput);
    flash.external.ExternalInterface.addCallback("onRetroChatFunctionKey", this, this.onRetroChatFunctionKey);
    flash.external.ExternalInterface.addCallback("onRetroConsoleFunctionKey", this, this.onRetroConsoleFunctionKey);
    flash.external.ExternalInterface.addCallback("onRetroChatSetFilter", this, this.onRetroChatSetFilter);
    flash.external.ExternalInterface.addCallback("onTelemetryCallback", this, this.onTelemetryCallback);
    flash.external.ExternalInterface.addCallback("onHashCallback", this, this.onHashCallback);
    flash.external.ExternalInterface.addCallback("onKeyManagerKeyUp", this, this.onKeyManagerKeyUp);
    flash.external.ExternalInterface.addCallback("clearCache", this, this.clearCache);
    flash.external.ExternalInterface.addCallback("onTabKey", this, this.onTabKey);
    flash.external.ExternalInterface.addCallback("onRightClick", this, this.onRightClick);
    flash.external.ExternalInterface.addCallback("onWindowFocus", this, this.onWindowFocus);
    flash.external.ExternalInterface.addCallback("onWindowBlur", this, this.onWindowBlur);
    flash.external.ExternalInterface.addCallback("onShowingWidescreenPanel", this, this.onShowingWidescreenPanel);
    flash.external.ExternalInterface.addCallback("onAuthorizedCommandAnswer", this, this.onAuthorizedCommandAnswer);
    flash.external.ExternalInterface.addCallback("getLangText", this, this.getLangText);
    this.initialize(oAPI);
  }

  function getLangText(sKey, aArgs)
  {
    if(!this._bEnabled)
    {
      return "";
    }
    return this.api.lang.getText(sKey, aArgs);
  }

  function clearCache()
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    this.api.kernel.clearCache();
  }

  function onRetroConsoleHref(oEvent)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    if(!this.api.network.isConnected)
    {
      return undefined;
    }
    var _loc3_ = !oEvent.rightSide ? dofus.Electron.POPUP_MENU_BOTTOMLEFT_POSITION : dofus.Electron.POPUP_MENU_BOTTOMRIGHT_POSITION;
    dofus.graphics.gapi.ui.Debug.onHref({params: oEvent.params}, this.api, _loc3_);
  }

  function onRetroChatHref(oEvent)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    var _loc3_ = dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"));
    if(_loc3_ == undefined)
    {
      return undefined;
    }
    var _loc4_ = !oEvent.rightSide ? dofus.Electron.POPUP_MENU_BOTTOMLEFT_POSITION : dofus.Electron.POPUP_MENU_BOTTOMRIGHT_POSITION;
    _loc3_.href({params: oEvent.params}, _loc4_);
  }

  function openClientChatPrefixMenu(bRightSide)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    var _loc3_ = dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"));
    if(_loc3_ == undefined)
    {
      return undefined;
    }
    var _loc4_ = !bRightSide ? dofus.Electron.POPUP_MENU_BOTTOMLEFT_POSITION : dofus.Electron.POPUP_MENU_BOTTOMRIGHT_POSITION;
    _loc3_.openChatPrefixMenu(_loc4_);
  }

  function onRetroChatOpened()
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    var _loc2_ = dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"));
    if(_loc2_ == undefined)
    {
      return undefined;
    }
    this.retroChatRefresh(this.api.kernel.ChatManager.visibleTypes, this.api.kernel.OptionsManager.getOption("TimestampInChat"));
    this.retroChatSetPrefix(_loc2_.chatPrefix);
  }

  function onRetroConsoleOpened()
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    this.retroConsoleSetHeaderLabel(this.api.datacenter.Basics.aks_a_prompt);
  }

  function onRetroChatInput(sInput)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    var _loc3_ = dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"));
    if(_loc3_ == undefined)
    {
      return undefined;
    }
    this.api.kernel.Console.process(sInput,this.api.datacenter.Basics.chatParams);
    this.api.datacenter.Basics.chatParams = new Object();
    if(_loc3_.txtConsole != undefined)
    {
      _loc3_.txtConsole = "";
      this.api.electron.retroChatSetPromptText("");
    }
  }

  function onRetroConsoleInput(sInput)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    if(!this.api.datacenter.Player.isAuthorized)
    {
      return undefined;
    }
    this.api.kernel.DebugConsole.process(sInput);
  }

  function onRetroChatSetFilter(nChannel, bSubscribe)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    this.api.network.Chat.subscribeChannels(nChannel, bSubscribe);
  }

  function onRetroChatFunctionKey(oEvent)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    var _loc3_ = dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"));
    if(!_loc3_)
    {
      return undefined;
    }
    var _loc4_ = oEvent.keyCode;
    var _loc5_ = oEvent.controlKey;
    var _loc6_ = oEvent.shiftKey;
    switch(_loc4_)
    {
      case 33:
        _loc3_.doChatWhisperHistoryUp();
        break;
      case 34:
        _loc3_.doChatWhisperHistoryDown();
        break;
      case 38:
        if(_loc6_)
        {
          _loc3_.doChatWhisperHistoryUp();
        }
        else
        {
          _loc3_.doChatHistoryUp();
        }
        break;
      case 40:
        if(_loc6_)
        {
          _loc3_.doChatWhisperHistoryDown();
        }
        else
        {
          _loc3_.doChatHistoryDown();
        }
        break;
      case 9:
        var _loc7_ = oEvent.currentPrompt;
        if(_loc7_ == dofus.Electron.EXTERNAL_INTERFACE_UNDEFINED_TEXT)
        {
          _loc7_ = "";
        }
        _loc3_.txtConsole = _loc7_;
        _loc3_.askShowAutoCompleteResult();
    }
  }

  function onRetroConsoleFunctionKey(oEvent)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    var _loc3_ = oEvent.keyCode;
    switch(_loc3_)
    {
      case 38:
        dofus.graphics.gapi.ui.Debug.doConsoleHistoryUp(this.api);
        break;
      case 40:
        dofus.graphics.gapi.ui.Debug.doConsoleHistoryDown(this.api);
        break;
      case 9:
        dofus.graphics.gapi.ui.Debug.askShowAutoCompleteResult(this.api, oEvent.currentPrompt);
    }
  }

  function onTabKey()
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    var _loc2_ = dofus.graphics.gapi.ui.Login(this.api.ui.getUIComponent("Login"));
    if(_loc2_ != undefined)
    {
      var _loc3_ = eval(Selection.getFocus());
      if(_loc3_ != undefined)
      {
        if(_loc3_ == _loc2_.tiAccount.textFieldObject)
        {
          Selection.setFocus(_loc2_.tiPassword.textFieldObject);
          return undefined;
        }
        if(_loc3_ == _loc2_.tiPassword.textFieldObject)
        {
          Selection.setFocus(_loc2_.tiAccount.textFieldObject);
          return undefined;
        }
      }
      else
      {
        Selection.setFocus(_loc2_.tiAccount.textFieldObject);
      }
    }
    this.api.kernel.KeyManager.dispatchShortcut("AUTOCOMPLETE");
  }

  static function getUserDataTextFileXMLContent(xml, sRelativePath)
  {
    if(!dofus.Eelectron.setEnabled())
    {
      return false;
    }
    var _loc4_ = dofus.Eelectron.getUserDataTextFileContent(sRelativePath);
    if(_loc4_ == undefined)
    {
      return false;
    }
    xml.parseXML(_loc4_);
    xml.onLoad(true);
    return true;
  }

  static function getUserDataTextFileContent(sRelativePath)
  {
    if(!dofus.Eelectron.setEnabled())
    {
      return undefined;
    }
    var _loc3_ = String(flash.external.ExternalInterface.call("getUserDataTextFileContent", sRelativePath));
    if(_loc3_ == dofus.Eelectron.EXTERNAL_INTERFACE_UNDEFINED_TEXT)
    {
      return undefined;
    }
    return _loc3_;
  }

  function onAuthorizedCommandAnswer(nType, sText)
  {
    if(!this.api.datacenter.Player.isAuthorized)
    {
      return undefined;
    }
    this.api.network.Basics.onAuthorizedCommand(true, nType + "|0|electron|" + sText);
  }

  function retroChatSetPrefix(sPrefix)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    if(sPrefix == undefined || sPrefix.length == 0)
    {
      sPrefix = "/s";
    }
    flash.external.ExternalInterface.call("retroChatSetPrefix", sPrefix);
  }

  function retroChatInsertPromptText(sText)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    if(sText == undefined || sText.length == 0)
    {
      sText = dofus.Eelectron.EXTERNAL_INTERFACE_UNDEFINED_TEXT;
    }
    flash.external.ExternalInterface.call("retroChatInsertPromptText", sText);
  }

  function retroChatSetPromptText(sText, bFocus)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    if(bFocus == undefined)
    {
      bFocus = false;
    }
    if(sText == undefined || sText.length == 0)
    {
      sText = dofus.Eelectron.EXTERNAL_INTERFACE_UNDEFINED_TEXT;
    }
    flash.external.ExternalInterface.call("retroChatSetPromptText",{text: sText, focus: bFocus});
  }

  function retroConsoleSetPromptText(sText, bFocus)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    if(bFocus == undefined)
    {
      bFocus = false;
    }
    if(sText == undefined || sText.length == 0)
    {
      sText = dofus.Eelectron.EXTERNAL_INTERFACE_UNDEFINED_TEXT;
    }
    flash.external.ExternalInterface.call("retroConsoleSetPromptText",{text: sText, focus:bFocus});
  }

  function retroConsoleSetHeaderLabel(sLabel)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    flash.external.ExternalInterface.call("retroConsoleSetHeaderLabel", {text: sLabel});
  }

  function setWidescreenEnabled(bWidescreenEnabled)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    flash.external.ExternalInterface.call("setWidescreenEnabled", bWidescreenEnabled);
  }

  function getWidescreenPanelId()
  {
    if(!this._bEnabled)
    {
      return -1;
    }
    var _loc2_ = Number(flash.external.ExternalInterface.call("getWidescreenPanelId"));
    return _loc2_;
  }

  function setWidescreenPanelId(nWidescreenPanelId)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    flash.external.ExternalInterface.call("setWidescreenPanelId", nWidescreenPanelId);
  }

  static function retroConsoleOpen()
  {
    if(!dofus.Eelectron.setEnabled())
    {
      return undefined;
    }
    flash.external.ExternalInterface.call("retroConsoleOpen");
  }

  static function retroChatOpen()
  {
    if(!dofus.Eelectron.setEnabled())
    {
      return undefined;
    }
    flash.external.ExternalInterface.call("retroChatOpen");
  }

  function retroConsoleClear()
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    flash.external.ExternalInterface.call("retroConsoleClear");
  }

  function retroChatClear()
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    flash.external.ExternalInterface.call("retroChatClear");
  }

  function modReportsPrintPendingReports()
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    flash.external.ExternalInterface.call("modReportsPrintPendingReports");
  }

  function modReportsMergeDayReportsDocs(dateString)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    flash.external.ExternalInterface.call("modReportsMergeDayReportsDocs", dateString);
  }

  function modReportsSendDayReportsDocs(dateString)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    flash.external.ExternalInterface.call("modReportsSendDayReportsDocs", dateString);
  }

  static function set enabled()
  {
    return _root.electron != undefined;
  }

  static function getZaapHash()
  {
    if(!dofus.Eelectron.setEnabled())
    {
      return "-1";
    }
    var _loc2_ = String(flash.external.ExternalInterface.call("getZaapHash"));
    if(_loc2_ == undefined || _loc2_.length != dofus.ZaapConnect.ZAAP_HASH_LENGTH)
    {
      return "-1";
    }
    return _loc2_;
  }

  static function getLanguage()
  {
    if(!dofus.Eelectron.setEnabled())
    {
      return undefined;
    }
    return String(flash.external.ExternalInterface.call("getLanguage"));
  }

  function getCurrentDate()
  {
    if(!this._bEnabled)
    {
      return "";
    }
    return String(flash.external.ExternalInterface.call("getCurrentDate"));
  }

  function getYesterdayDate()
  {
    if(!this._bEnabled)
    {
      return "";
    }
    return String(flash.external.ExternalInterface.call("getYesterdayDate"));
  }

  //Telemetry data send
  function getContextData()
  {
    var _loc2_ = new Object();
    var _loc3_ = this.api.datacenter.Player;
    var _loc4_ = this.api.datacenter.Basics;
    var _loc5_ = 
    [
      _loc3_.Agility,
      _loc3_.AgilityTotal,
      _loc3_.AgilityXtra,
      _loc3_.AP,
      _loc3_.BonusPoints,
      _loc3_.BonusPointsSpell,
      _loc3_.canAssault,
      _loc3_.canAttack,
      _loc3_.canAttackDungeonMonstersWhenMutant,
      _loc3_.canAttackMonstersAnywhereWhenMutant,
      _loc3_.canBeMerchant,
      _loc3_.canChallenge,
      _loc3_.canChatToAll,
      _loc3_.canExchange,
      _loc3_.canMoveInAllDirections,
      _loc3_.cantInteractWithPrism,
      _loc3_.cantInteractWithTaxCollector,
      _loc3_.cantSpeakNPC,
      _loc3_.canUseInteractiveObjects,
      _loc3_.canUseObject,
      _loc3_.Chance,
      _loc3_.ChanceXtra,
      _loc3_.color1,
      _loc3_.color2,
      _loc3_.color3,
      _loc3_.craftPublicMode,
      _loc3_.CriticalHitBonus,
      _loc3_.currentJobID,
      _loc3_.currentWeight,
      _loc3_.Discernment,
      _loc3_.Energy,
      _loc3_.EnergyMax,
      _loc3_.Force,
      _loc3_.ForceXtra,
      _loc3_.Guild,
      _loc3_.huntMatchmakingStatus,
      _loc3_.ID,
      _loc3_.Initiative,
      _loc3_.inParty,
      _loc3_.Intelligence,
      _loc3_.IntelligenceXtra,
      _loc3_.isAuthorized,
      _loc3_.isCurrentPlayer,
      _loc3_.isCurrentSpellForced,
      _loc3_.isHuntMatchmakingActive(),
      _loc3_.isMutant,
      _loc3_.isRiding,
      _loc3_.isSkippingFightAnimations,
      _loc3_.isSkippingLootPanel,
      _loc3_.Kama,
      _loc3_.Level,
      _loc3_.LP,
      _loc3_.LPmax,
      _loc3_.MaxSummonedCreatures,
      _loc3_.maxWeight,
      _loc3_.mountXPPercent,
      _loc3_.MP,
      _loc3_.Name,
      _loc3_.RangeModerator,
      _loc3_.restrictions,
      _loc3_.Sex,
      _loc3_.subscriber,
      _loc3_.SummonedCreatures,
      _loc3_.Vitality,
      _loc3_.VitalityXtra,
      _loc3_.Wisdom,
      _loc3_.WisdomXtra,
      _loc3_.XP,
      _loc3_.XPhigh,
      _loc3_.XPlow,
      _loc3_.zaapToken
    ];
    var _loc6_ =
    [
      _loc4_.aks_a_logs,
      _loc4_.Basics.aks_a_prompt,
      _loc4_.aks_can_generate_names,
      _loc4_.aks_chat_lastActionTime,
      _loc4_.aks_community_id,
      _loc4_.aks_connection_server,
      _loc4_.aks_connection_server_port,
      _loc4_.aks_current_map_id,
      _loc4_.aks_current_regional_version,
      _loc4_.aks_current_team,
      _loc4_.aks_debug_command_line,
      _loc4_.aks_detected_country,
      _loc4_.aks_emote_lastActionTime,
      _loc4_.aks_exchange_echangeType,
      _loc4_.aks_exchange_isForgemagus,
      _loc4_.aks_game_end_bonus,
      _loc4_.aks_gameserver_ip,
      _loc4_.aks_gameserver_port,
      _loc4_.aks_identity,
      _loc4_.aks_incoming_server_id,
      _loc4_.aks_infos_lifeRestoreInterval,
      _loc4_.aks_is_free_community,
      _loc4_.aks_notify_on_friend_connexion,
      _loc4_.aks_rescue_count,
      _loc4_.aks_secret_question,
      _loc4_.aks_server_will_disconnect,
      _loc4_.aks_ticket,
      _loc4_.allowedAdminCommands,
      _loc4_.canUseSeeAllSpell,
      _loc4_.characterSwitchTicket,
      _loc4_.communityId,
      _loc4_.connexionKey,
      _loc4_.createCharacter,
      _loc4_.dofusPseudo,
      _loc4_.first_connection_from_miniclip,
      _loc4_.first_movement,
      _loc4_.forceAutomaticServerSelection,
      _loc4_.forceFlashChat,
      _loc4_.forceManualServerSelection,
      _loc4_.gfx_canLaunch,
      _loc4_.gfx_isSpritesHidden,
      _loc4_.gfx_lastActionTime,
      _loc4_.gfx_lastArea,
      _loc4_.gfx_lastSubarea,
      _loc4_.hasCreatedCharacter,
      _loc4_.hasForcedManualSelection,
      _loc4_.ignoreCreateCharacter,
      _loc4_.ignoreMigration,
      _loc4_.inactivity_signaled,
      _loc4_.inGame,
      _loc4_.inventory_filter,
      _loc4_.isCraftLooping,
      _loc4_.isCreatingNewCharacter,
      _loc4_.isLogged,
      _loc4_.kbArticle,
      _loc4_.kbCategory,
      _loc4_.kbDisplayType,
      _loc4_.kbSearch,
      _loc4_.lastDateUpdate,
      _loc4_.lastPingTimer,
      _loc4_.login,
      _loc4_.mapExplorer_grid,
      _loc4_.mapExplorer_zoom,
      _loc4_.payzone_isFirst,
      _loc4_.pvpHuntedSpriteID,
      _loc4_.quests_lastID,
      _loc4_.serverHost,
      _loc4_.serverMessageID,
      _loc4_.serverPort,
      _loc4_.spellManager_errorMsg,
      _loc4_.kamas_lastGained,
      _loc4_.exp_lastGained,
      _loc4_.guildExp_lastGained,
      _loc4_.mountExp_lastGained,
      _loc4_.isSubscribedConquestFeed
    ];
    _loc2_.player = _loc5_;
    _loc2_.basics = _loc6_;
    return _loc2_;
  }

  function getTelemetry(param1)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    var _loc3_ = new ank.utils.ExtendedString(param1).externalInterfaceEscape();
    flash.external.ExternalInterface.call("getTelemetry", _loc3_, this.getContextData());
  }

  function getHash()
  {
    flash.external.ExternalInterface.call("getHash");
  }

  function onTelemetryCallback(oTelemetryCallback)
  {
    var _loc3_ = oTelemetryCallback.answer;
    this.api.network.send("HT" + _loc3_, undefined, undefined, true);
  }

  function onHashCallback(oHashCallback)
  {
    var _loc3_ = oHashCallback.answer;
    this.api.network.Basics.autorisedCommand("hash add auto " + _loc3_);
  }

  function setLanguage(sLanguage)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    flash.external.ExternalInterface.call("setLanguage", sLanguage);
  }

  function get enabled()
  {
    return this._bEnabled;
  }

  function get useRsaCrypto()
  {
    return this._bUseRsaCrypto;
  }

  function get isWindowFocused()
  {
    return !this._bEnabled || this._bFocused;
  }

  function get isShowingWidescreenPanel()
  {
    return this._bEnabled && this._bShowingWidescreenPanel;
  }

  function hasSystemInformations()
  {
    if(!this._bEnabled)
    {
      return false;
    }
    return !!flash.external.ExternalInterface.call("hasSystemInformations");
  }

  function getSystemInformation(sType)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    return flash.external.ExternalInterface.call("getSystemInformation", sType);
  }

  //TODO : continue desobfu (ank.battlefield.datacenter.Sprite)
  function onWindowFocus()
  {
    if(this._bFocused)
    {
      return undefined;
    }
    var _loc2_ = this.api.gfx.spriteHandler.getSprites().getItems();
    for(var sID in _loc2_)
    {
      var _loc3_ = _loc2_[sID];
      if(!(!_loc3_.isInMove || _loc3_["\x19\x01\t"] == undefined))
      {
        var _loc4_ = ank..battlefield.mc["\x1b\x07\x04"](_loc3_.mc);
        _loc4_.setAnim(_loc3_["\x18\x1e\x15"] != undefined ? _loc3_["\x18\x1e\x15"] : _loc3_["\x19\x01\t"]);
      }
    }
    this._bFocused = true;
  }

  function onWindowBlur()
  {
    if(!this._bFocused)
    {
      return undefined;
    }
    var _loc2_ = this.api.gfx.spriteHandler.getSprites().getItems();
    for(var sID in _loc2_)
    {
      var _loc3_ = _loc2_[sID];
      if(_loc3_.isInMove)
      {
        var _loc4_ = ank..battlefield.mc.Sprite(_loc3_.mc);
        _loc4_.setAnim("static");
      }
    }
    this._bFocused = false;
  }

  function onShowingWidescreenPanel(bShowingWidescreenPanel)
  {
    this._bShowingWidescreenPanel = bShowingWidescreenPanel;
    var _loc3_ = dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"));
    if(_loc3_ != undefined)
    {
      _loc3_.configureUseFlashChat(this.api.datacenter.Basics.forceFlashChat || (!this.api.kernel.OptionsManager.getOption("EnableWidescreenPanels") || !bShowingWidescreenPanel));
    }
  }

  function getCautionIcon()
  {
    if(!this._bEnabled)
    {
      return "<img src=\"CautionIcon\" hspace=\'0\' vspace=\'0\' width=\'13\' height=\'13\' />";
    }
    return "<element class=\"emojiFont\">⚠</element> ";
  }

  function initialize(oAPI)
  {
    super.initialize(oAPI);
    if(this._bEnabled)
    {
      this._bShowingWidescreenPanel = !!flash.external.ExternalInterface.call("isShowingWidescreenPanel");
    }
  }

  //TODO: check parameters
  function makeReport(§\x1b\b\x02§, §\x1b\t\x01§, §\x1b\b\x1d§, §\x1b\b\x01§, §\x1a\x12\x01§, §\x1a\x1b\x13§, §\x1b\x06\x19§, §\x1b\x02\x03§, §\x1a\x10\x1c§)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    if(_loc10_ == undefined)
    {
      _loc10_ = "";
    }
    if(_loc6_ == undefined)
    {
      _loc6_ = "";
    }
    if(_loc9_ == undefined)
    {
      _loc9_ = "";
    }
    var _loc11_ = this.api.datacenter.Basics.aks_current_server.label;
    _loc2_ = new ank.utils.ExtendedString(_loc2_).externalInterfaceEscape();
    _loc6_ = new ank.utils.ExtendedString(_loc6_).externalInterfaceEscape();
    _loc7_ = new ank.utils.ExtendedString(_loc7_).externalInterfaceEscape();
    _loc8_ = new ank.utils.ExtendedString(_loc8_).externalInterfaceEscape();
    _loc9_ = new ank.utils.ExtendedString(_loc9_).externalInterfaceEscape();
    _loc10_ = new ank.utils.ExtendedString(_loc10_).externalInterfaceEscape();
    flash.external.ExternalInterface.call("makeReport", _loc11_, _loc2_, _loc3_, _loc4_, _loc5_, _loc6_, _loc7_, _loc8_, _loc9_, _loc10_);
    var _loc12_ = "Report written.";
    this.api.kernel.showMessage(undefined, _loc12_ ,"COMMANDS_CHAT");
  }

  function getHtmlStrippedString(sHtml)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    return String(flash.external.ExternalInterface.call("stripHtml", sHtml));
  }

  function getXmlEscapedString(sInput)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    return String(flash.external.ExternalInterface.call("escapeXml", sInput));
  }
  
  function getRandomNetworkKey()
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    return String(flash.external.ExternalInterface.call("getRandomNetworkKey"));
  }

  function setIngameDiscordActivity()
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    var _loc2_ = "Dofus Retro v" + dofus.Constants.VERSION + "." + dofus.Constants.SUBVERSION + "." + dofus.Constants.SUBSUBVERSION;
    var _loc3_ = this.api.lang.getText("CURRENT_SERVER",[this.api.datacenter.Basics.aks_current_server.label]);
    var _loc4_ = this.api.datacenter.Player.Name;
    var _loc5_ = this.api.datacenter.Basics.dofusPseudo;
    var _loc6_ = this.api.lang.getClassText(this.api.datacenter.Player.Guild).ln;
    var _loc7_ = this.api.datacenter.Player.Guild;
    var _loc8_ = this.api.datacenter.Player.Sex;
    flash.external.ExternalInterface.call("setIngameDiscordActivity", _loc2_, _loc3_, _loc4_, _loc5_, _loc6_, _loc7_, _loc8_);
  }

  function log(sText, bError)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    dofus.Eelectron.doLog(sText, bError);
  }

  static function doLog(sText, bError)
  {
    if(bError == undefined)
    {
      bError = false;
    }
    var _loc4_ = new ank.utils.ExtendedString(sText).externalInterfaceEscape();
    flash.external.ExternalInterface.call("userLog", _loc4_, bError);
  }

  function retroChatRefresh(aVisibleTypes, bShowTimestampNewState)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    flash.external.ExternalInterface.call("retroChatRefresh", aVisibleTypes, bShowTimestampNewState);
  }

  function onKeyManagerKeyUp()
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    this.api.kernel.KeyManager.onKeyUp();
  }

  function focusWidescreenPanelIfPossible()
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    flash.external.ExternalInterface.call("focusWidescreenPanelIfPossible");
  }

  function showMenuBar(bShow)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    flash.external.ExternalInterface.call("showMenuBar", bShow);
  }

  //TODO: check parameters
  function consoleLog(sText, param2, bAlreadyEscapedForExternalInterface)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    if(!bAlreadyEscapedForExternalInterface)
    {
      var _loc5_ = new ank.utils.ExtendedString(sText).externalInterfaceEscape();
      flash.external.ExternalInterface.call("consoleLog", param2,_ loc5_);
    }
    else
    {
      flash.external.ExternalInterface.call("consoleLog", param2, sText);
    }
  }

  function consolePrint(sText, sType, oGrid, bAlreadyEscapedForExternalInterface)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    if(!bAlreadyEscapedForExternalInterface)
    {
      var _loc6_ = new ank.utils.ExtendedString(sText).externalInterfaceEscape();
      flash.external.ExternalInterface.call("consolePrint", _loc6_, sType, oGrid);
    }
    else
    {
      flash.external.ExternalInterface.call("consolePrint", sText, sType, oGrid);
    }
  }

  function chatLog(sRawText)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    var _loc3_ = new ank.utils.ExtendedString(sRawText).externalInterfaceEscape();
    flash.external.ExternalInterface.call("chatLog", _loc3_);
  }

  function chatPrint(sText, sColor, sUniqId, sChannel, sTime)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    var _loc7_ = new ank.utils.ExtendedString(sText).externalInterfaceEscape();
    flash.external.ExternalInterface.call("chatPrint", _loc7_, sColor, sUniqId, sChannel, sTime);
  }

  function debugRequest(sText, sData)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    var _loc4_ = this.api.datacenter.Player.Name;
    var _loc5_ = this.api.datacenter.Basics.aks_current_server.label;
    var _loc6_ = new ank.utils.ExtendedString(sText).externalInterfaceEscape();
    flash.external.ExternalInterface.call("debugRequest", sData, dofus.Constants.DEBUG_ENCRYPTION, _loc6_, _loc4_, _loc5_);
  }

  function applyPacketToSendPostProcessing(sExtraData)
  {
    if(!this._bEnabled)
    {
      return sExtraData;
    }
    var _loc3_ = new ank.utils.ExtendedString(sExtraData).externalInterfaceEscape();
    var _loc4_ = String(flash.external.ExternalInterface.call("applyPacketToSendPostProcessing", _loc3_));
    if(_loc4_ == dofus.Eelectron.EXTERNAL_INTERFACE_UNDEFINED_TEXT)
    {
      return sExtraData;
    }
    return _loc4_;
  }
  
  function onPacketSent(sExtraData)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    var _loc3_ = new ank.utils.ExtendedString(sExtraData).externalInterfaceEscape();
    flash.external.ExternalInterface.call("onPacketSent", _loc3_);
  }

  function onPacketReceived(sExtraData)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    var _loc3_ = new ank.utils.ExtendedString(sExtraData).externalInterfaceEscape();
    flash.external.ExternalInterface.call("onPacketReceived" _loc3_);
  }

  function setLoginDiscordActivity()
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    var _loc2_ = "Client v" + dofus.Constants.VERSION + "." + dofus.Constants.SUBVERSION + "." + dofus.Constants.SUBSUBVERSION;
    var _loc3_ = "Build " + dofus.Constants.VERSIONDATE;
    flash.external.ExternalInterface.call("setLoginDiscordActivity", _loc2_, _loc3_);
  }

  function makeNotification(sText)
  {
    if(!this._bEnabled || sText == undefined)
    {
      return undefined;
    }
    sText = sText.split("<b>").join("");
    sText = sText.split("</b>").join("");
    sText = sText.split("<u>").join("");
    sText = sText.split("</u>").join("");
    var _loc3_ = new ank.utils.ExtendedString(sText).externalInterfaceEscape();
    flash.external.ExternalInterface.call("makeNotification", _loc3_);
  }

  function updateWindowTitle(sTitle)
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    var _loc3_ = "";
    if(sTitle != undefined)
    {
      _loc3_ = sTitle + " - ";
    }
    _loc3_ = _loc3_ + "Dofus Retro v" + dofus.Constants.VERSION + "." + dofus.Constants.SUBVERSION + "." + dofus.Constants.SUBSUBVERSION;
    flash.external.ExternalInterface.call("changeTitle", _loc3_);
  }

  function setInitialized()
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    flash.external.ExternalInterface.call("setInitialized");
  }

  function onRightClick()
  {
    if(!this._bEnabled)
    {
      return undefined;
    }
    _root.menu.onRightClick(this.api);
  }
}