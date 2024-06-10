class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.§\x16\x19\x0b§.ShortcutsChatReplacementPanel extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ShortcutsChatReplacementPanel";
   static var §\x18\x1a\n§ = 16;
   function ShortcutsChatReplacementPanel()
   {
      super();
   }
   function get miniMap()
   {
      return this._mcMiniMap;
   }
   function §\x1d\x10§(§\x1a\x02\t§)
   {
      this["\x1e\x05\x1b"] = _loc2_;
      return this["\n\x01"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.chat.ShortcutsChatReplacementPanel.CLASS_NAME);
      this._banner = dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"));
      this._mouseShortcuts = this._banner["\x1a\x1c\x10"];
   }
   function createChildren()
   {
      this.showMiniMap(true);
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
   }
   function §\x1b\x16\t§(§\x1a\x02\t§)
   {
      this.api.ui.hideTooltip();
      this["\x1e\x05\x1b"] = _loc2_;
      this.addToQueue({object:this,method:this.initData});
   }
   function §\x17\x15\x12§(§\x19\b\x0b§)
   {
      return this["_ctr" + _loc2_];
   }
   function §\x1a\x15\x15§(§\x19\b\x0b§, §\x16\x17\x11§)
   {
      this["_ctr" + _loc2_] = _loc3_;
   }
   function initData()
   {
      this["\x1d\x06\x14"].scrollFromEverywhere = true;
      if(this["\x1e\x05\x1b"] == undefined)
      {
         this["\x1c\x1b\x0f"].text = "";
         this["\x1d\x06\x14"].dataProvider = undefined;
      }
      else
      {
         this["\x1c\x1b\x0f"].text = this["\x1e\x05\x1b"].name + " (" + this.api.lang.getText("LEVEL_SMALL") + this["\x1e\x05\x1b"].Level + ")";
         this["\x1d\x06\x14"].dataProvider = this["\x1e\x05\x1b"]["\x17\f\t"]["\x17\x17\x04"]();
      }
   }
   function showMiniMap(bShow)
   {
      if(_loc2_)
      {
         this.instanciateMiniMap();
      }
      this._mcMiniMap._visible = _loc2_;
      this._mcMiniMapMask._visible = _loc2_;
   }
   function instanciateMiniMap()
   {
      if(this._mcMiniMap == undefined)
      {
         var _loc2_ = 72;
         var _loc3_ = {_x:_loc2_,_y:this._mcMiniMapMask._y,contentPath:"\x18\x18\x0e",enabled:true,showHintsMaxDistance:10,customBgScaleWidth:this._mcMiniMapMask._width,customBgScaleHeight:this._mcMiniMapMask._height,customBgScaleX:0 - _loc2_,customBgScaleY:0,customBgColor:14012330};
         var _loc4_ = this.attachMovie("MiniMap","_mcMiniMap",this.getNextHighestDepth(),_loc3_);
         _loc4_.addEventListener("click",this._banner.chat.replacementPanelsManager);
      }
      this._mcMiniMap.setMask(this._mcMiniMapMask);
   }
   function initTexts()
   {
   }
   function addListeners()
   {
      var _loc2_ = 0;
      while(_loc2_ < dofus.graphics.gapi.controls.chat.ShortcutsChatReplacementPanel["\x18\x1a\n"])
      {
         var _loc3_ = this["_ctr" + _loc2_];
         var _loc4_ = 15 + _loc2_;
         this._mouseShortcuts["\x1a\x15\x15"](_loc4_,_loc3_);
         _loc3_.addEventListener("click",this._mouseShortcuts);
         _loc3_.addEventListener("dblClick",this._mouseShortcuts);
         _loc3_.addEventListener("over",this._mouseShortcuts);
         _loc3_.addEventListener("out",this._mouseShortcuts);
         _loc3_.addEventListener("drag",this._mouseShortcuts);
         _loc3_.addEventListener("drop",this._mouseShortcuts);
         _loc3_.addEventListener("onContentLoaded",this._mouseShortcuts);
         _loc3_.params = {position:_loc4_};
         _loc2_ = _loc2_ + 1;
      }
      this._mouseShortcuts["\x1b\x14\x13"]();
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
      var §\x16\x19\x0b§ = this._banner.chat;
      this._mcMiniMapMask.onRelease = function()
      {
         var _loc2_ = new Object();
         _loc2_.target = this;
         eval("\x16\x19\x0b").replacementPanelsManager.click(_loc2_);
      };
   }
   function onShortcut(§\x1a\x1c\x0f§)
   {
      var _loc3_ = 0;
      while(_loc3_ < dofus.graphics.gapi.controls.chat.ShortcutsChatReplacementPanel["\x18\x1a\n"])
      {
         if(_loc2_ == "MOVABLEBAR_SH" + _loc3_)
         {
            var _loc4_ = 15 + _loc3_;
            var _loc5_ = this._mouseShortcuts["\x17\x15\x12"](_loc4_);
            if(_loc5_ != undefined)
            {
               _loc5_["\x17\r\x01"]();
               return false;
            }
         }
         _loc3_ = _loc3_ + 1;
      }
      return true;
   }
}
