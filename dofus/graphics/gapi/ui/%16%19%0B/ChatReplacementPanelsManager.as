class dofus.§\x18\x03\x10§.gapi.ui.§\x16\x19\x0b§.ChatReplacementPanelsManager
{
   static var NO_REPLACEMENT_PANEL = -1;
   static var MINIMAP = 0;
   static var SHORTCUTS = 1;
   static var FULL_WIDTH_FIGHTER_EFFECTS = 1001;
   var _bCurrentPanelInstanciated = false;
   function ChatReplacementPanelsManager(§\x16\x04\x05§, chat)
   {
      this._api = _loc2_;
      this._chat = chat;
      this._nCurrentPanel = dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.NO_REPLACEMENT_PANEL;
   }
   function §\x1e\x12\x05§()
   {
      return this._api;
   }
   function §\x1e\x15\x13§()
   {
      return this._chat;
   }
   function get currentReplacementPanel()
   {
      return this._nCurrentPanel;
   }
   function get currentTemporaryReplacementPanel()
   {
      return this._nCurrentTemporaryPanel;
   }
   function set currentTemporaryReplacementPanel(nCurrentTemporaryReplacementPanel)
   {
      this._nCurrentTemporaryPanel = nCurrentTemporaryReplacementPanel;
   }
   function get isCurrentReplacementPanelTemporary()
   {
      return this._nCurrentTemporaryPanel != undefined && this._nCurrentTemporaryPanel == this._nCurrentPanel;
   }
   function instanciateCurrentReplacementPanel(aPanelArgs)
   {
      if(this._bCurrentPanelInstanciated)
      {
         return undefined;
      }
      this._bCurrentPanelInstanciated = true;
      switch(this._nCurrentPanel)
      {
         case dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.MINIMAP:
            this.instanciateMiniMap();
            break;
         case dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.SHORTCUTS:
            this.instanciateShortcuts();
            break;
         case dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.FULL_WIDTH_FIGHTER_EFFECTS:
            this.instanciateFighterEffectsPanel(aPanelArgs);
      }
      if(this._nCurrentPanel == dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.MINIMAP)
      {
         this._chat._mcMiniMapReplacementPanel._visible = true;
      }
      else
      {
         this._chat._mcReplacementPanel.setMask(this._chat._mcReplacementPanelMask);
         this._chat._mcReplacementPanel.addEventListener("click",this);
      }
   }
   function removeCurrentReplacementPanel()
   {
      if(!this._bCurrentPanelInstanciated)
      {
         return undefined;
      }
      this._bCurrentPanelInstanciated = false;
      this._chat._mcMiniMapReplacementPanel._visible = false;
      this._chat._mcReplacementPanel.removeEventListener("click",this);
      this._chat._mcReplacementPanel.removeMovieClip();
   }
   function instanciateMiniMap()
   {
      if(this._chat._mcMiniMapReplacementPanel == undefined)
      {
         var _loc2_ = 150;
         var _loc3_ = {_x:_loc2_,_y:this._chat._mcReplacementPanelMask._y,contentPath:"\x18\x18\x0e",enabled:true,showHintsMaxDistance:15,customBgScaleWidth:this._chat._mcReplacementPanelMask._width,customBgScaleHeight:this._chat._mcReplacementPanelMask._height,customBgScaleX:0 - _loc2_,customBgScaleY:0,customBgColor:14012330};
         var _loc4_ = this._chat.attachMovie("MiniMap","_mcMiniMapReplacementPanel",dofus.graphics.gapi.controls.Chat.MINIMAP_REPLACEMENT_PANEL_DEPTH,_loc3_);
         _loc4_.addEventListener("click",this);
      }
      this._chat._mcMiniMapReplacementPanel.setMask(this._chat._mcReplacementPanelMask);
   }
   function instanciateShortcuts()
   {
      var _loc2_ = {_x:0,_y:0};
      this._chat.attachMovie("ShortcutsChatReplacementPanel","_mcReplacementPanel",dofus.graphics.gapi.controls.Chat.REPLACEMENT_PANEL_DEPTH,_loc2_);
      this.api.kernel.OptionsManager.setOption("MovableBar",false);
      this._chat._mcMiniMapReplacementPanel.removeEventListener("click",this);
      this._chat._mcMiniMapReplacementPanel.removeMovieClip();
   }
   function instanciateFighterEffectsPanel(aPanelArgs)
   {
      var _loc3_ = !(aPanelArgs != undefined && aPanelArgs.length > 0) ? undefined : aPanelArgs[0];
      var _loc4_ = {_x:0,_y:0,§\x1b\x07\x06§:_loc3_};
      this._chat.attachMovie("FighterEffectsReplacementPanel","_mcReplacementPanel",dofus.graphics.gapi.controls.Chat.REPLACEMENT_PANEL_DEPTH,_loc4_);
   }
   function changeReplacementPanel(nPanelWished, bUpdateOption, aPanelArgs)
   {
      var _loc6_ = dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"));
      if(_loc6_ == undefined || _loc6_.useFlashChat)
      {
         return undefined;
      }
      if(this._nCurrentTemporaryPanel != undefined)
      {
         if(nPanelWished == dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.SHORTCUTS && this._nCurrentTemporaryPanel == dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.FULL_WIDTH_FIGHTER_EFFECTS)
         {
            this._nCurrentTemporaryPanel = undefined;
            var _loc5_ = nPanelWished;
         }
         else
         {
            _loc5_ = this._nCurrentTemporaryPanel;
         }
      }
      else
      {
         _loc5_ = nPanelWished;
      }
      var _loc7_ = _loc5_ != this._nCurrentPanel;
      var _loc8_ = nPanelWished != this.api.kernel.OptionsManager.getOption("chatReplacementPanel");
      this._nCurrentPanel = _loc5_;
      if(_loc8_ && bUpdateOption)
      {
         this.api.kernel.OptionsManager.setOption("chatReplacementPanel",nPanelWished);
      }
      if(_loc7_)
      {
         this.removeCurrentReplacementPanel();
      }
      if(_loc5_ != dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.NO_REPLACEMENT_PANEL)
      {
         this.instanciateCurrentReplacementPanel(aPanelArgs);
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_mcReplacementPanel":
         case "_mcReplacementPanelMask":
         case "_mcMiniMapReplacementPanel":
         case "_mcMiniMap":
         case "_mcMiniMapMask":
            var _loc3_ = this.api.ui["\x17\x02\x19"]();
            var _loc4_ = this.api.kernel.OptionsManager.getOption("chatReplacementPanel");
            _loc3_["\x15\x1e\x18"](this.api.lang.getText("SHOW"));
            _loc3_["\x15\x1d\x12"](this.api.lang.getText("BANNER_MAP"),this,this.changeReplacementPanel,[dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.MINIMAP,true],_loc4_ != dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.MINIMAP);
            _loc3_["\x15\x1d\x12"](this.api.lang.getText("BANNER_SHORTCUTS_BAR"),this,this.changeReplacementPanel,[dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.SHORTCUTS,true],_loc4_ != dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.SHORTCUTS);
            _loc3_.show(_root._xmouse,_root._ymouse,true);
      }
   }
}
