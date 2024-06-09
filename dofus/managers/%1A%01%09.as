class dofus.§\x18\x18\x0b§.§\x1a\x01\t§ extends dofus.utils.ApiElement
{
   static var DISPLAY_STYLE_WIDESCREEN_PANELS = "widescreenpanels";
   static var §\x17\x06\x10§ = {loaded:true,Grid:false,Transparency:false,SpriteInfos:true,SpriteMove:true,MapInfos:true,AutoHideSmileys:false,StringCourse:true,ColorfulTactic:true,PointsOverHead:true,ChatEffects:true,CreaturesMode:50,Buff:true,GuildMessageSound:false,BannerShortcuts:true,StartTurnSound:true,TipsOnStart:true,DisplayStyle:"normal",DebugSizeIndex:0,ServerPortIndex:0,MovableBar:false,ViewAllMonsterInGroup:true,MovableBarSize:5,ShortcutSet:1,ShortcutSetDefault:1,CharacterPreview:true,MapFilters:[0,1,1,1,1,1,1],Aura:true,AudioMusicVol:60,AudioEffectVol:100,AudioEnvVol:60,AudioMusicMute:false,AudioEffectMute:false,AudioEnvMute:false,FloatingTipsCoord:new com.ankamagames.types["\x1a\x06\x02"](415,30),DisplayingFreshTips:true,CensorshipFilter:true,BigStoreSellFilter:false,RememberAccountName:false,LastAccountNameUsed:"",DefaultQuality:"high",ConquestFilter:-2,FightGroupAutoLock:false,BannerIllustrationMode:"artwork",BannerGaugeMode:"xp",AskForWrongCraft:true,AdvancedLineOfSight:true,RemindTurnTime:true,HideSpellBar:false,SeeAllSpell:true,UseSpeakingItems:true,ConfirmDropItem:true,TimestampInChat:true,ViewDicesDammages:false,AnonymousGameEvents:false,NightMode:true,SeeDamagesColor:true,RemasteredSpellIconsPack:1,EnableWidescreenPanels:true,chatReplacementPanel:dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.MINIMAP,UseLightEndFightUI:false,RegroupDamage:true,StylePoint:1,ViewHPAsBar:true,AnimateHPBar:true};
   static var OPTION_SPELL_PACK_REMASTERED = 1;
   static var OPTION_SPELL_PACK_CONTRAST = 2;
   static var OPTION_SPELL_PACK_CLASSIC = 3;
   static var §\x1e\f\x10§ = null;
   function §\x1a\x01\t§(oAPI)
   {
      super();
      dofus.managers.OptionsManager["\x1e\f\x10"] = this;
      this.initialize(oAPI);
   }
   static function getInstance()
   {
      return dofus.managers.OptionsManager["\x1e\f\x10"];
   }
   function initialize(oAPI)
   {
      super.initialize(oAPI);
      eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
      this["\x1e\x0b\b"] = _global[dofus.Constants.GLOBAL_SO_OPTIONS_NAME];
      if(this["\x1e\x0b\b"].data.loaded == undefined)
      {
         this["\x1e\x0b\b"].clear();
      }
      for(var k in dofus.managers.OptionsManager["\x17\x06\x10"])
      {
         if(this["\x1e\x0b\b"].data[k] == undefined)
         {
            this["\x1e\x0b\b"].data[k] = dofus.managers.OptionsManager["\x17\x06\x10"][k];
         }
      }
      this["\x1e\x0b\b"].flush();
   }
   function §\x18\x15\x19§()
   {
      var _loc2_ = this["\x1e\x0b\b"].data.language;
      this["\x1e\x0b\b"].clear();
      for(var k in dofus.managers.OptionsManager["\x17\x06\x10"])
      {
         if(k == "ShortcutSetDefault")
         {
            this.setOption(k,this.api.kernel.KeyManager["\x17\x15\x1d"]());
         }
         else
         {
            this.setOption(k,dofus.managers.OptionsManager["\x17\x06\x10"][k]);
         }
      }
      this["\x1e\x0b\b"].data.language = _loc2_;
      this["\x1e\x0b\b"].flush();
   }
   function §\x1a\x18\x12§(sKey, §\x19\x02\x17§)
   {
      var _loc4_ = this["\x1a\x0f\x1d"](_loc2_,_loc3_);
      if(this["\x16\x04\x10"](_loc2_,_loc4_))
      {
         this["\x17\x07\x19"]({type:"optionChanged",key:_loc2_,value:_loc4_});
      }
   }
   function §\x17\x1c\x1c§(sKey)
   {
      return this["\x18\x16\x1b"](_loc2_);
   }
   function §\x16\x04\t§()
   {
      var _loc2_ = this["\x1e\x0b\b"].data;
      for(var k in _loc2_)
      {
         var _loc3_ = false;
         var _loc0_ = null;
         if((_loc0_ = k) === "ShortcutSet")
         {
            _loc3_ = true;
         }
         if(!_loc3_)
         {
            this["\x16\x04\x10"](k,_loc2_[k]);
         }
      }
   }
   function get isMapConquestFilterEnabled()
   {
      return !!this.getOption("MapFilters")[dofus.graphics.gapi.ui.MapExplorer["\x17\x10\x17"]];
   }
   function §\x1a\x0f\x1d§(sKey, §\x19\x02\x17§)
   {
      var _loc4_ = this["\x1e\x0b\b"].data;
      if(_loc3_ == undefined)
      {
         if(typeof _loc4_[_loc2_] == "boolean")
         {
            _loc4_[_loc2_] = !_loc4_[_loc2_];
         }
         else
         {
            _loc4_[_loc2_] = true;
         }
      }
      else
      {
         _loc4_[_loc2_] = _loc3_;
      }
      this["\x1e\x0b\b"].flush();
      return _loc4_[_loc2_];
   }
   function §\x18\x16\x1b§(sKey)
   {
      return this["\x1e\x0b\b"].data[_loc2_];
   }
   function §\x16\x04\x10§(sKey, §\x19\x02\x17§)
   {
      switch(_loc2_)
      {
         case "Grid":
            if(_loc3_ == true)
            {
               this.api.gfx["\x17\n\x04"]();
            }
            else
            {
               this.api.gfx["\x1a\f\x07"]();
            }
            break;
         case "NightMode":
            if(this.api.ui.getUIComponent("Banner") == undefined)
            {
               break;
            }
            var _loc4_ = this.api.datacenter.["\x18\x18\x0e"];
            if(_loc3_ && (_loc4_ && _loc4_.bOutdoor))
            {
               this.api.kernel.NightManager.clear();
               this.api.kernel.NightManager.setState();
            }
            else
            {
               this.api.kernel.NightManager["\x19\x0b\x02"]();
            }
            break;
         case "Transparency":
            this.api.gfx["\x1a\x1a\x07"](_loc3_);
            break;
         case "SpriteInfos":
            if(_loc3_ == false)
            {
               this.api.ui.unloadUIComponent("SpriteInfos");
               this.setOption("SpriteMove",false);
            }
            break;
         case "SpriteMove":
            if(_loc3_ == false)
            {
               this.api.gfx["\x16\x1c\x13"]("move");
            }
            else if(this["\x18\x16\x1b"]("SpriteInfos") == false)
            {
               this.setOption("SpriteInfos",true);
            }
            break;
         case "MapInfos":
            if(_loc3_ == true)
            {
               this.api.ui.loadUIComponent("MapInfos","MapInfos",undefined,{bForceLoad:true});
            }
            else
            {
               this.api.ui.unloadUIComponent("MapInfos");
            }
            break;
         case "StringCourse":
            if(_loc3_ == false)
            {
               this.api.ui.unloadUIComponent("StringCourse");
            }
            break;
         case "ColorfulTactic":
            if(this.api.datacenter.Game.isFight && this.api.datacenter.Game["\x18\x10\x02"])
            {
               this.api.gfx["\x15\x1c\x19"](this.api,false);
               this.api.gfx["\x15\x1c\x19"](this.api,true);
            }
            break;
         case "CreaturesMode":
            this.api.kernel.GameManager["\x16\x04\x0b"]();
            break;
         case "PointsOverHead":
         case "ChatEffects":
         case "GuildMessageSound":
         case "StartTurnSound":
         case "BannerShortcuts":
         case "TipsOnStart":
         case "DebugSizeIndex":
         case "ServerPortIndex":
         case "ViewAllMonsterInGroup":
         case "RegroupDamage":
         case "AutoHideSmiley":
            break;
         case "Buff":
            if(_loc3_)
            {
               this.api.ui.loadUIComponent("Buff","Buff");
            }
            else
            {
               this.api.ui.unloadUIComponent("Buff");
            }
            break;
         case "DisplayStyle":
            this.api.kernel.setDisplayStyle(_loc3_);
            break;
         case "DefaultQuality":
            this.api.kernel.setQuality(_loc3_);
            break;
         case "MovableBar":
            this.api.ui.getUIComponent("Banner")["\x17\b\x0b"](_loc3_ && (this.api.datacenter.Game.isFight || !this.getOption("HideSpellBar")));
            break;
         case "HideSpellBar":
            this.api.ui.getUIComponent("Banner")["\x17\b\x0b"](this.getOption("MovableBar") && (this.api.datacenter.Game.isFight || !_loc3_));
            break;
         case "MovableBarSize":
            this.api.ui.getUIComponent("Banner")["\x1a\x18\x02"](_loc3_);
            break;
         case "ShortcutSet":
            this.api.kernel.KeyManager.onSetChange(_loc3_);
            break;
         case "CharacterPreview":
            this.api.ui.getUIComponent("Inventory")["\x1a\x1c\x1c"](_loc3_);
            break;
         case "AudioMusicVol":
            this.api.kernel.AudioManager["\x19\x02\x0f"] = _loc3_;
            break;
         case "AudioEffectVol":
            this.api.kernel.AudioManager["\x17\f\r"] = _loc3_;
            break;
         case "AudioEnvVol":
            this.api.kernel.AudioManager["\x17\r\x11"] = _loc3_;
            break;
         case "AudioMusicMute":
            this.api.kernel.AudioManager["\x19\x02\x0e"] = _loc3_;
            break;
         case "AudioEffectMute":
            this.api.kernel.AudioManager["\x17\f\x05"] = _loc3_;
            break;
         case "AudioEnvMute":
            this.api.kernel.AudioManager["\x17\r\x10"] = _loc3_;
            break;
         case "TimestampInChat":
            this.api.electron.retroChatRefresh(undefined,_loc3_);
            this.api.kernel.ChatManager.aks_a_logs();
            break;
         case "EnableWidescreenPanels":
            this.api.electron.setWidescreenEnabled(_loc3_);
            var _loc5_ = dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"));
            if(_loc5_ != undefined)
            {
               _loc5_.configureUseFlashChat(this.api.datacenter.Basics.forceFlashChat || (!_loc3_ || !this.api.electron.isShowingWidescreenPanel));
            }
            break;
         case "MapFilters":
            if(_loc3_[dofus.graphics.gapi.ui.MapExplorer["\x17\x10\x17"]])
            {
               this.api.network.Conquest["\x1b\x19\x10"]();
               break;
            }
            this.api.network.Conquest["\x1b\x19\x11"]();
            break;
      }
      return true;
   }
   function onMovableBarOptionChanged()
   {
      var _loc2_ = dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"));
      if(_loc2_ != undefined)
      {
         var _loc3_ = _loc2_["\x16\x19\x0b"].replacementPanelsManager;
         if(_loc3_.currentReplacementPanel == dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.SHORTCUTS)
         {
            _loc3_.changeReplacementPanel(dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.MINIMAP,true);
         }
      }
      if(this.getOption("chatReplacementPanel") == dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.SHORTCUTS)
      {
         this.setOption("chatReplacementPanel",dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.MINIMAP);
      }
   }
}
