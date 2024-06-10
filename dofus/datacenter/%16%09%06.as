class dofus.§\x17\x04\x19§.§\x16\t\x06§ extends dofus.utils.ApiElement
{
   var §\x16\x02\x0b§ = Number.POSITIVE_INFINITY;
   var currentSessionFightCount = -1;
   function §\x16\t\x06§()
   {
      super();
      this.initialize();
   }
   function get worldUniqueDropsStates()
   {
      return this._worldUniqueDropsStates;
   }
   function set worldUniqueDropsStates(worldUniqueDropsStates)
   {
      this._worldUniqueDropsStates = worldUniqueDropsStates;
      this["\x17\x07\x19"]({type:"worldUniqueDropsStatesRefresh",value:worldUniqueDropsStates});
   }
   function §\x17\r§(sLogin)
   {
      this["\x1e\n\x1a"] = _loc2_.toLowerCase();
      return this["\x02\x17"]();
   }
   function §\x02\x17§()
   {
      return this["\x1e\n\x1a"];
   }
   function §\x1e\x11\x16§()
   {
      return this["\x1b\x1d\x0f"];
   }
   function §\x0e\f§(§\x15\x1c\x03§)
   {
      this["\x1b\x1d\x0f"] = _loc2_;
      var _loc3_ = dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"));
      _loc3_["\x18\b\x12"]["\x1b\x14\x1a"]();
      _loc3_.chat.miniMapReplacementPanel["\x1b\x14\x1a"]();
      _loc3_.chat.shortcutsReplacementPanel.miniMap["\x1b\x14\x1a"]();
      return this["\x1e\x11\x16"]();
   }
   function §\x0f\x10§(§\x15\x1c\x03§)
   {
      this["\x1c\x01\x1d"] = _loc2_;
      var _loc3_ = dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"));
      _loc3_["\x18\b\x12"]["\x1b\x14\x1a"]();
      _loc3_.chat.miniMapReplacementPanel["\x1b\x14\x1a"]();
      _loc3_.chat.shortcutsReplacementPanel.miniMap["\x1b\x14\x1a"]();
      return this["\x1e\x12\x1c"]();
   }
   function §\x1e\x12\x1c§()
   {
      return this["\x1c\x01\x1d"];
   }
   function §\x1b\x0e\x14§(§\x19\x0f\x13§)
   {
      var _loc3_ = new ank.utils.ExtendedArray();
      var _loc4_ = this.api.datacenter.Sprites.getItems();
      for(var i in _loc4_)
      {
         if(this.api.datacenter.Sprites.getItemAt(i)["\x1b\x0e\x15"] == _loc2_)
         {
            _loc3_.push(this.api.datacenter.Sprites.getItemAt(i));
         }
      }
      return _loc3_;
   }
   function initialize()
   {
      delete this.connexionKey;
      delete this.lastPingTimer;
      delete this.allowedAdminCommands;
      delete this._worldUniqueDropsStates;
      delete this.gfx_lastActionTime;
      delete this.gfx_canLaunch;
      delete this.gfx_lastArea;
      this.lastDateUpdate = -1000000;
      this.aks_server_will_disconnect = false;
      this.aks_gifts_stack = new Array();
      delete this.aks_chat_lastActionTime;
      this.chat_type_visible = new Object();
      delete this.aks_emote_lastActionTime;
      delete this.aks_exchange_echangeType;
      _global.clearInterval(this.aks_infos_lifeRestoreInterval);
      delete this.aks_infos_lifeRestoreInterval;
      delete this["\x1b\x1d\x0f"];
      delete this.aks_ticket;
      delete this.aks_gameserver_ip;
      delete this.aks_gameserver_port;
      this.aks_rescue_count = -1;
      this.aks_servers = new ank.utils.ExtendedArray();
      delete this.aks_current_server;
      delete this.aks_identity;
      if(this.aks_a_logs == undefined)
      {
         this.aks_a_logs = "";
      }
      this.Basics.aks_a_prompt = "";
      this.api.electron.retroConsoleSetHeaderLabel(this.Basics.aks_a_prompt);
      this.aks_debug_command_line = "";
      delete this.spellManager_errorMsg;
      delete this.interactionsManager_path;
      delete this.inventory_filter;
      delete this["\x16\b\x1c"];
      this.payzone_isFirst = true;
      delete this.quests_lastID;
      delete this.pvpHuntedSpriteID;
      this.forceFlashChat = false;
      delete this.exp_lastGained;
      delete this.kamas_lastGained;
      delete this.guildExp_lastGained;
      delete this.mountExp_lastGained;
      this["\x17\x02\x03"] = [true,true,true,true,true,true,true,true];
      this["\x18\x18\x12"] = [true,true,true,true,true,false,true];
      this.mapExplorer_zoom = 50;
      this["\x18\x18\x11"] = undefined;
      this.mapExplorer_grid = false;
      this.isSubscribedConquestFeed = false;
      this.isLogged = false;
      this.inGame = false;
      this.serverMessageID = -1;
      this.createCharacter = false;
      this.chatParams = new Object();
      this.aks_current_team = -1;
      this["\x16\x02\x14"] = null;
      this["\x16\x02\x15"] = null;
      this.inactivity_signaled = 0;
      this.first_connection_from_miniclip = false;
      this.first_movement = false;
      this.canUseSeeAllSpell = true;
      this.api.ui.isComponentHiddingSprites = false;
      _global.api.kernel.SpellsBoostsManager.clear();
      mx.["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
   }
   function §\x16\x02\x10§(§\x19\x07\x18§)
   {
      if(_global.isNaN(_loc2_))
      {
         this["\x1b\x1d\x0f"] = new Array();
      }
      else
      {
         var _loc3_ = new Array();
         var _loc4_ = 0;
         while(_loc4_ < this["\x1b\x1d\x0f"].length)
         {
            if(this["\x1b\x1d\x0f"][_loc4_].type != _loc2_)
            {
               _loc3_.push(this["\x1b\x1d\x0f"][_loc4_]);
            }
            _loc4_ = _loc4_ + 1;
         }
         this["\x1b\x1d\x0f"] = _loc3_;
      }
      var _loc5_ = dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"));
      _loc5_["\x18\b\x12"]["\x1b\x14\x1a"]();
      _loc5_.chat.miniMapReplacementPanel["\x1b\x14\x1a"]();
      _loc5_.chat.shortcutsReplacementPanel.miniMap["\x1b\x14\x1a"]();
   }
   function isWorldUniqueItemAlreadyDropped(nItemGenericID)
   {
      if(this._worldUniqueDropsStates == undefined)
      {
         return false;
      }
      var _loc3_ = this._worldUniqueDropsStates.getItemAt(nItemGenericID);
      if(_loc3_ == undefined)
      {
         return false;
      }
      var _loc4_ = dofus.datacenter.evenemential.WorldUniqueDropState(_loc3_);
      return _loc4_.dropped;
   }
}
