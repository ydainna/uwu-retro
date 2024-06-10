class ank.gapi.§\x17\x01\x06§.§\x1a\x0e\x10§ extends ContextMenu
{
   function §\x1a\x0e\x10§(oAPI, callbackFunction)
   {
      super(callbackFunction);
      this.hideBuiltInItems();
      var §\x1a\b\x02§ = ank.gapi.controls["\x1a\x0e\x10"].prototype;
      this.onSelect = function()
      {
         eval("\x1a\b\x02").onRightClick(oAPI);
      };
   }
   function onRightClick(§\x16\x04\x05§)
   {
      _loc2_.ui.hideTooltip();
      var _loc3_ = ank.gapi.controls.PopupMenu["\x17\x03\x1b"];
      if(_loc3_ != undefined)
      {
         _loc3_.onMouseUp();
      }
      _loc2_["\x18\x1e\x11"]["\x1b\x0b\x07"](true);
      if(_loc2_.gfx["\x1a\x0e\x16"] != undefined && !(_loc2_.gfx["\x1a\x0e\x16"].data instanceof dofus.datacenter.["\x16\x19\x02"]))
      {
         _loc2_.gfx["\x19\x1d\x05"](_loc2_.gfx["\x1a\x0e\x16"],true);
         return undefined;
      }
      if(_loc2_.gfx["\x1a\x0e\x15"] != undefined)
      {
         _loc2_.gfx["\x19\x1a\x1a"](_loc2_.gfx["\x1a\x0e\x15"],true);
         return undefined;
      }
      var _loc4_ = _loc2_.ui.uiComponents;
      var _loc5_ = 0;
      while(_loc5_ < _loc4_.length)
      {
         var _loc6_ = _loc2_.ui.getUIComponent(_loc4_[_loc5_].name);
         if(_loc6_ != undefined)
         {
            var _loc7_ = _loc6_["\x17\x03\x19"];
            if(_loc7_ instanceof dofus.datacenter.Item)
            {
               _loc6_["\x18\x11\x05"]["\x17\x02\x05"](_loc7_);
               return undefined;
            }
            if(_loc7_ instanceof dofus.datacenter.["\x1b\x06\x06"])
            {
               _loc6_.createSpellActionPopupMenu(_loc7_);
               return undefined;
            }
            if(_loc7_ instanceof dofus.datacenter.InventoryShortcutItem)
            {
               _loc6_.createInventoryShortcutItemActionPopupMenu(_loc7_);
               return undefined;
            }
         }
         _loc5_ = _loc5_ + 1;
      }
      if(_loc2_.datacenter.Basics.inGame && _loc2_.datacenter.Player.isAuthorized)
      {
         var _loc8_ = _loc2_.kernel.AdminManager["\x17\x13\x17"](_loc2_.datacenter.Player.Name,true);
         _loc8_["\x15\x1d\x12"]("Client v" + dofus.Constants.VERSION + "." + dofus.Constants.SUBVERSION + "." + dofus.Constants.SUBSUBVERSION + " >>",this,this["\x1a\x07\x03"],[_loc2_]);
         _loc8_.items.unshift(_loc8_.items.pop());
         _loc8_.show(_root._xmouse,_root._ymouse,true);
      }
      else
      {
         this["\x1a\x07\x03"](_loc2_);
      }
   }
   function §\x1a\x07\x03§(api)
   {
      var _loc2_ = api.ui["\x17\x02\x19"]();
      _loc2_["\x15\x1e\x18"]("DOFUS RETRO Client v" + dofus.Constants.VERSION + "." + dofus.Constants.SUBVERSION + "." + dofus.Constants.SUBSUBVERSION);
      _loc2_["\x15\x1e\x18"]("Flash player " + System.capabilities.version);
      var o = new Object();
      var gapi = api.ui;
      o["\x1a\x13\t"] = function()
      {
         var _loc2_ = gapi["\x17\x02\x19"]();
         _loc2_["\x15\x1e\x18"](api.lang.getText("OPTION_DEFAULTQUALITY"));
         _loc2_["\x15\x1d\x12"](api.lang.getText("QUALITY_LOW"),o,o["\x1a\x19\x01"],["low"],o.getOption("DefaultQuality") != "low");
         _loc2_["\x15\x1d\x12"](api.lang.getText("QUALITY_MEDIUM"),o,o["\x1a\x19\x01"],["medium"],o.getOption("DefaultQuality") != "medium");
         _loc2_["\x15\x1d\x12"](api.lang.getText("QUALITY_HIGH"),o,o["\x1a\x19\x01"],["high"],o.getOption("DefaultQuality") != "high");
         _loc2_["\x15\x1d\x12"](api.lang.getText("QUALITY_BEST"),o,o["\x1a\x19\x01"],["best"],o.getOption("DefaultQuality") != "best");
         _loc2_.show();
      };
      o["\x1a\x19\x01"] = function(§\x1b\x07\x15§)
      {
         o.setOption("DefaultQuality",_loc2_);
      };
      o.setOption = function(sKey, §\x19\x02\x17§)
      {
         api.kernel.OptionsManager.setOption(_loc2_,_loc3_);
      };
      o.getOption = function(sKey)
      {
         return api.kernel.OptionsManager.getOption(_loc2_);
      };
      _loc2_["\x15\x1d\x12"](api.lang.getText("OPTION_DEFAULTQUALITY") + " >>",o,o["\x1a\x13\t"]);
      _loc2_["\x15\x1d\x12"](api.lang.getText("OPTIONS"),gapi,gapi.loadUIComponent,["Options","Options",{_y:(gapi["\x1a\x11\x07"] != 432 ? 0 : -50)},{bAlwaysOnTop:true}]);
      _loc2_["\x15\x1d\x12"](api.lang.getText("OPTION_MOVABLEBAR"),o,function(sKey, §\x19\x02\x17§)
      {
         o.setOption(_loc2_,_loc3_);
         api.kernel.OptionsManager.onMovableBarOptionChanged();
      }
      ,["MovableBar",!o.getOption("MovableBar")]);
      _loc2_.show(_root._xmouse,_root._ymouse,true);
   }
}
