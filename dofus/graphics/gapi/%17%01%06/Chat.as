class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.Chat extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Chat";
   static var §\x1a\x01\x06§ = 350;
   static var XTRA_MASK_OPEN_OFFSET = 300;
   static var REPLACEMENT_PANEL_DEPTH = 10;
   static var MINIMAP_REPLACEMENT_PANEL_DEPTH = 9;
   static var HIDDEN_ITEM = 12009;
   var §\x1c\x07\x07§ = false;
   function Chat()
   {
      super();
   }
   function get replacementPanelsManager()
   {
      return this._replacementPanelsManager;
   }
   function get shortcutsReplacementPanel()
   {
      if(this.replacementPanelsManager.currentReplacementPanel != dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.SHORTCUTS)
      {
         return undefined;
      }
      return dofus.graphics.gapi.controls["\x16\x19\x0b"].ShortcutsChatReplacementPanel(this._mcReplacementPanel);
   }
   function get miniMapReplacementPanel()
   {
      if(this.replacementPanelsManager.currentReplacementPanel != dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.MINIMAP)
      {
         return undefined;
      }
      return dofus.graphics.gapi.controls.MiniMap(this._mcMiniMapReplacementPanel);
   }
   function get fightSpectatorReplacementPanel()
   {
      if(this.replacementPanelsManager.currentReplacementPanel != dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.FULL_WIDTH_FIGHTER_EFFECTS)
      {
         return undefined;
      }
      return dofus.graphics.gapi.controls["\x16\x19\x0b"].FighterEffectsReplacementPanel(this._mcReplacementPanel);
   }
   function §\x1e\x1a\x0e§()
   {
      return this._chatFilters.filters;
   }
   function §\b\x12§()
   {
      return this["\x1e\x0f\x02"].selectable;
   }
   function §\x1c\b§(§\x16\x12\x05§)
   {
      this["\x1e\x0f\x02"].selectable = _loc2_;
      return this["\b\x12"]();
   }
   function get isAutoScrollingEnabled()
   {
      return this["\x1e\x0f\x02"].isAutoScrollingEnabled;
   }
   function set isAutoScrollingEnabled(bAutoScrolling)
   {
      this["\x1e\x0f\x02"].isAutoScrollingEnabled = bAutoScrolling;
   }
   function §\x1a\x01\x03§(§\x16\x10\x07§)
   {
      var _loc3_ = dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"));
      if(_loc3_ != undefined && (!_loc3_.useFlashChat && !_loc2_))
      {
         return undefined;
      }
      if(_loc2_ == !this["\x1c\x07\x07"])
      {
         return undefined;
      }
      if(!_loc2_ && this.api.datacenter.Player.isAuthorized)
      {
         if(this.api.kernel.OptionsManager.getOption("DebugSizeIndex") != dofus.graphics.gapi.ui.Debug.CONSOLE_MINIMIZED)
         {
            var _loc4_ = dofus.graphics.gapi.ui.Debug(this.api.ui.getUIComponent("Debug"));
            if(_loc4_ != undefined)
            {
               this.api.kernel.OptionsManager.setOption("DebugSizeIndex",dofus.graphics.gapi.ui.Debug.CONSOLE_MINIMIZED);
               _loc4_["\x16\x04\x12"](false);
            }
         }
      }
      this._btnOpenClose.selected = !_loc2_;
      if(_loc2_)
      {
         var _loc5_ = -1;
      }
      else
      {
         _loc5_ = 1;
      }
      this["\x1e\x0f\x02"]["\x1a\x19\x18"](this["\x1e\x0f\x02"].width,this["\x1e\x0f\x02"].height + _loc5_ * dofus.graphics.gapi.controls.Chat["\x1a\x01\x06"]);
      var _loc6_ = this._mcReplacementPanelMask._height + _loc5_ * dofus.graphics.gapi.controls.Chat.XTRA_MASK_OPEN_OFFSET;
      this._mcReplacementPanelMask._height = _loc6_;
      var _loc7_ = this.miniMapReplacementPanel;
      if(_loc7_ != undefined)
      {
         _loc7_.customBgScaleHeight = this._mcReplacementPanelMask._height;
         _loc7_["\x1a\x19\r"](dofus.graphics.gapi.controls.MiniMap.SCALE_CUSTOM,true);
      }
      this._y -= _loc5_ * dofus.graphics.gapi.controls.Chat["\x1a\x01\x06"];
      this["\x1c\x07\x07"] = !_loc2_;
   }
   function useReplacementPanel(nReplacementPanel, §\x15\x1b\t§)
   {
      var _loc4_ = nReplacementPanel == dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.NO_REPLACEMENT_PANEL;
      this._chatFilters._visible = _loc4_;
      this["\x1e\x0f\x02"]._visible = _loc4_;
      this._mcReplacementPanel._visible = !_loc4_;
      this._mcMiniMapReplacementPanel._visible = nReplacementPanel == dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager.MINIMAP && (!_loc4_ && !this._replacementPanelsManager.isCurrentReplacementPanelTemporary);
      this._mcReplacementPanelMask._visible = !_loc4_;
      this.addToQueue({object:this._replacementPanelsManager,method:this._replacementPanelsManager.changeReplacementPanel,params:[nReplacementPanel,undefined,_loc3_]});
   }
   function useTemporaryReplacementPanel(nReplacementPanel, §\x15\x1b\t§)
   {
      this._replacementPanelsManager.currentTemporaryReplacementPanel = nReplacementPanel;
      this.addToQueue({object:this._replacementPanelsManager,method:this._replacementPanelsManager.changeReplacementPanel,params:[nReplacementPanel,undefined,_loc3_]});
   }
   function removeTemporaryReplacementPanel()
   {
      this.replacementPanelsManager.currentTemporaryReplacementPanel = undefined;
      var _loc2_ = this.api.kernel.OptionsManager.getOption("chatReplacementPanel");
      this.addToQueue({object:this._replacementPanelsManager,method:this._replacementPanelsManager.changeReplacementPanel,params:[_loc2_]});
   }
   function §\x1a\x1a\x13§(sText)
   {
      this["\x1e\x0f\x02"].text = _loc2_;
   }
   function §\x1b\x16\x04§()
   {
      this._sSmileys.update();
   }
   function §\x18\x06\x1a§(§\x16\f\x12§)
   {
      this._sSmileys._visible = !_loc2_;
      this["\x1c\b\x10"] = !_loc2_;
   }
   function §\x1a\x1e\x1c§(bShow)
   {
      this._btnSitDown._visible = _loc2_;
   }
   function §\x1a\x12\x1a§(§\x19\x07\x16§, §\x16\x12\x04§)
   {
      this._chatFilters["\x1a\x12\x1a"](_loc2_,_loc3_);
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.Chat.CLASS_NAME);
      this._replacementPanelsManager = new dofus.graphics.gapi.ui["\x16\x19\x0b"].ChatReplacementPanelsManager(this.api,this);
      this.api.kernel.ChatManager["\x1b\x15\x1a"]();
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this["\x18\x06\x1a"](true);
   }
   function addListeners()
   {
      this._btnOpenClose.addEventListener("click",this);
      this._btnSmileys.addEventListener("click",this);
      this._btnSitDown.addEventListener("click",this);
      this._btnOpenClose.addEventListener("over",this);
      this._btnSmileys.addEventListener("over",this);
      this._btnSitDown.addEventListener("over",this);
      this._btnOpenClose.addEventListener("out",this);
      this._btnSmileys.addEventListener("out",this);
      this._btnSitDown.addEventListener("out",this);
      this._sSmileys.addEventListener("selectSmiley",this);
      this._sSmileys.addEventListener("selectEmote",this);
      this["\x1e\x0f\x02"].addEventListener("href",this);
      this._chatFilters.addEventListener("filterChanged",this);
      var §\x16\x19\x0b§ = this;
      this._mcReplacementPanelMask.onRelease = function()
      {
         var _loc2_ = new Object();
         _loc2_.target = this;
         eval("\x16\x19\x0b").replacementPanelsManager.click(_loc2_);
      };
      this.api.kernel.ChatManager.aks_a_logs();
   }
   function filterChanged(oEvent)
   {
      this["\x17\x07\x19"]({type:"filterChanged",filter:_loc2_.filter,selected:_loc2_.selected});
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnSitDown":
            this.api.sounds["\x17\x0e\x06"]["\x19\x14\x10"]();
            var _loc3_ = this.api.lang["\x17\x17\n"]("sit");
            if(_loc3_ != undefined)
            {
               this.api.network.Emotes["\x1b\x16\x15"](_loc3_);
            }
            break;
         case "_btnSmileys":
            this.api.sounds["\x17\x0e\x06"]["\x19\x14\x10"]();
            this["\x18\x06\x1a"](this["\x1c\b\x10"]);
            break;
         case "_btnOpenClose":
            this.api.sounds["\x17\x0e\x06"]["\x19\x14\x10"]();
            this["\x1a\x01\x03"](!_loc2_.target.selected);
      }
   }
   function over(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnSmileys":
            this.gapi.showTooltip(this.api.lang.getText("CHAT_SHOW_SMILEYS"),_loc2_.target,-20,{bXLimit:true,bYLimit:false});
            break;
         case "_btnOpenClose":
            this.gapi.showTooltip(this.api.lang.getText("CHAT_SHOW_MORE"),_loc2_.target,-33,{bXLimit:true,bYLimit:false});
            break;
         case "_btnSitDown":
            this.gapi.showTooltip(this.api.lang.getText("SITDOWN_TOOLTIP"),_loc2_.target,-46,{bXLimit:true,bYLimit:false});
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function selectSmiley(oEvent)
   {
      if(!this.api.datacenter.Player.data.isInMove)
      {
         this["\x17\x07\x19"](_loc2_);
         if(this.api.kernel.OptionsManager.getOption("AutoHideSmileys"))
         {
            this["\x18\x06\x1a"](true);
            this._btnSmileys.selected = false;
         }
      }
   }
   function selectEmote(oEvent)
   {
      if(!this.api.datacenter.Player.data.isInMove)
      {
         this["\x17\x07\x19"](_loc2_);
         if(this.api.kernel.OptionsManager.getOption("AutoHideSmileys"))
         {
            this["\x18\x06\x1a"](true);
         }
         this._btnSmileys.selected = false;
      }
   }
   function href(oEvent)
   {
      this["\x17\x07\x19"](_loc2_);
   }
}
