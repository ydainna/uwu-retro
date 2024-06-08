class dofus.§\x18\x03\x10§.gapi.ui.Debug extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var CONSOLE_MEDIUM = 0;
   static var CONSOLE_MINIMIZED = 1;
   static var CONSOLE_MAXSIZE = 2;
   static var §\x16\x1b\x10§ = "Debug";
   static var §\x18\x1c\x19§ = 200;
   static var §\x16\r\x03§ = 370;
   static var FILE_OUTPUT_STATE = 0;
   function Debug()
   {
      super();
   }
   function set tiCommandLine(sText)
   {
      this._tiCommandLine.text = _loc2_;
   }
   function §\x1a\x18\x1c§(§\x1b\x07\x12§)
   {
      if(this["\x1c\x1d\x07"].text == undefined)
      {
         return undefined;
      }
      this["\x1c\x1d\x07"].text = _loc2_ + " > ";
      this._tiCommandLine._x = this["\x1c\x1d\x07"]._x + this["\x1c\x1d\x07"].textWidth + 2;
      this["\x1c\x1d\x07"]["\x1a\x18\x1a"]("left");
   }
   function §\x1a\x17\x17§(§\x1b\x03\b§)
   {
      if(this["\x1c\r\x0f"].text == undefined)
      {
         return undefined;
      }
      this["\x1c\r\x0f"].text = _loc2_;
   }
   function §\x11\x04§(§\x1a\x10\x1b§)
   {
      this["\x1e\b\x0b"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x18\t\r"]();
      }
      return this.command;
   }
   function §\x1a\n\x15§()
   {
      if(this["\x1d\x1b\x19"] != undefined)
      {
         _global.clearTimeout(this["\x1d\x1b\x19"]);
      }
      var _loc2_ = _global.setTimeout(this,"realRefresh",dofus.Constants["\x17\x06\x15"]);
      this["\x1d\x1b\x19"] = _loc2_;
   }
   function realRefresh()
   {
      this["\x18\t\x14"](true);
   }
   function clear()
   {
      this.api.datacenter.Basics.aks_a_logs = "";
      this["\x1a\x17\x17"]("");
   }
   function §\x1a\x1d\x11§()
   {
      if(this._fps == undefined)
      {
         this.attachMovie("fpsWindow","_fps",this.getNextHighestDepth(),{_x:96,_y:140});
      }
      else
      {
         this._fps.removeMovieClip();
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Debug.CLASS_NAME);
   }
   function destroy()
   {
      this.api.datacenter.Basics.aks_debug_command_line = this._tiCommandLine.text;
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
      this.addToQueue({object:this,method:this["\x16\x04\x12"]});
      this.addToQueue({object:this,method:this["\x18\t\r"]});
      this.addToQueue({object:this,method:this["\x18\x15\x0f"]});
   }
   function §\x18\x15\x0f§()
   {
      this._tiCommandLine.onSetFocus = function()
      {
         this._parent.onSetFocus();
      };
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this["\x1c\t\x0b"].addEventListener("click",this);
      this["\x1c\t\r"].addEventListener("click",this);
      this._btnMinimize.addEventListener("click",this);
      this["\x1c\r\x0f"].addEventListener("href",this);
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
   }
   function §\x18\t\x19§()
   {
      this._tiCommandLine.setFocus();
   }
   function §\x18\t\x14§(§\x16\x11\x04§)
   {
      if(_loc2_ == undefined)
      {
         _loc2_ = false;
      }
      if(this["\x1c\r\x0f"].text == undefined)
      {
         return undefined;
      }
      this["\x1c\r\x0f"].text = this.api.datacenter.Basics.aks_a_logs;
      this["\x1a\x18\x1c"](this.api.datacenter.Basics.aks_a_prompt);
      if(!_loc2_)
      {
         this._tiCommandLine.text = this.api.datacenter.Basics.aks_debug_command_line;
      }
   }
   function §\x18\t\r§()
   {
      this._tiCommandLine.text = this["\x1e\b\x0b"];
      this["\x18\t\x19"]();
      this.addToQueue({objet:this,method:this["\x1a\x05\x03"]});
   }
   function §\x1a\x05\x03§()
   {
      this._tiCommandLine.setFocus();
      Selection.setSelection(this._tiCommandLine.text.length,1000);
   }
   function §\x16\x04\x12§(bSetFocus)
   {
      if(bSetFocus == undefined)
      {
         bSetFocus = true;
      }
      switch(this.api.kernel.OptionsManager.getOption("DebugSizeIndex"))
      {
         case 0:
            this["\x18\x19\x11"](dofus.graphics.gapi.ui.Debug["\x18\x1c\x19"]);
            break;
         case 1:
            this["\x18\x1d\x02"]();
            break;
         case 2:
            this["\x18\x19\x11"](dofus.graphics.gapi.ui.Debug["\x16\r\x03"]);
      }
      if(bSetFocus)
      {
         this["\x18\t\x19"]();
      }
   }
   function §\x18\x1d\x02§()
   {
      this["\x1c\r\x0f"]._visible = false;
      this["\x1e\f\n"]["\x1a\x19\x18"](undefined,20);
      this["\x1e\f\x04"]._y = this._tiCommandLine._y = this["\x1c\x1d\x07"]._y = this["\x1c\r\x0f"]._y;
   }
   function §\x18\x19\x11§(§\x19\b\x03§)
   {
      this["\x1c\r\x0f"]._visible = true;
      this["\x1c\r\x0f"]["\x1a\x19\x18"](undefined,_loc2_);
      this["\x1e\f\n"]["\x1a\x19\x18"](undefined,_loc2_ + 20);
      this["\x1e\f\x04"]._y = this._tiCommandLine._y = this["\x1c\x1d\x07"]._y = this["\x1c\r\x0f"]._y + _loc2_;
   }
   function onSetFocus()
   {
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
   }
   static function doConsoleHistoryUp(§\x16\x04\x05§)
   {
      var _loc3_ = dofus.graphics.gapi.ui.Debug(_loc2_.ui.getUIComponent("Debug"));
      var _loc4_ = _loc2_.kernel.DebugConsole["\x17\x18\x16"]().value;
      if(_loc3_ != undefined)
      {
         _loc3_._tiCommandLine.text = _loc4_;
         _loc3_.addToQueue({object:_loc3_,method:_loc3_["\x1a\x05\x03"]});
      }
      _loc2_.electron.retroConsoleSetPromptText(_loc4_);
   }
   static function doConsoleHistoryDown(§\x16\x04\x05§)
   {
      var _loc3_ = dofus.graphics.gapi.ui.Debug(_loc2_.ui.getUIComponent("Debug"));
      var _loc4_ = _loc2_.kernel.DebugConsole["\x17\x18\x15"]().value;
      if(_loc3_ != undefined)
      {
         _loc3_._tiCommandLine.text = _loc4_;
         _loc3_.addToQueue({object:_loc3_,method:_loc3_["\x1a\x05\x03"]});
      }
      _loc2_.electron.retroConsoleSetPromptText(_loc4_);
   }
   static function askShowAutoCompleteResult(§\x16\x04\x05§, sText)
   {
      Selection.setFocus(null);
      if(dofus.graphics.gapi.ui.Debug._nAutoCompleteTimeout != undefined)
      {
         _global.clearTimeout(dofus.graphics.gapi.ui.Debug._nAutoCompleteTimeout);
      }
      var _loc4_ = _global.setTimeout(_loc2_.kernel.DebugConsole,"doConsoleAutoComplete",100,_loc2_,_loc3_);
      dofus.graphics.gapi.ui.Debug._nAutoCompleteTimeout = _loc4_;
   }
   function onShortcut(sShortcut)
   {
      var _loc3_ = true;
      switch(_loc2_)
      {
         case "HISTORY_UP":
            if(this["\x18\r\x19"]())
            {
               dofus.graphics.gapi.ui.Debug.doConsoleHistoryUp(this.api);
               _loc3_ = false;
            }
            break;
         case "HISTORY_DOWN":
            if(this["\x18\r\x19"]())
            {
               dofus.graphics.gapi.ui.Debug.doConsoleHistoryDown(this.api);
               _loc3_ = false;
            }
            break;
         case "AUTOCOMPLETE":
            if(this["\x18\r\x19"]())
            {
               dofus.graphics.gapi.ui.Debug.askShowAutoCompleteResult(this.api,this._tiCommandLine.text);
               _loc3_ = false;
            }
            break;
         case "TEAM_MESSAGE":
            if(this["\x18\r\x19"]())
            {
               var _loc4_ = this.api.kernel.OptionsManager.getOption("DebugSizeIndex") + 1;
               _loc4_ %= 3;
               this.api.kernel.OptionsManager.setOption("DebugSizeIndex",_loc4_);
               this["\x16\x04\x12"]();
            }
            break;
         case "ACCEPT_CURRENT_DIALOG":
            if(this["\x18\r\x19"]())
            {
               var _loc5_ = new ank.utils.ExtendedString(this._tiCommandLine.text)["\x1b\x11\x13"]().toString();
               if(_loc5_.length == 0)
               {
                  if(this.api.electron.isShowingWidescreenPanel)
                  {
                     _loc3_ = false;
                     this.api.electron.focusWidescreenPanelIfPossible();
                  }
                  break;
               }
               _loc3_ = false;
               if(this._tiCommandLine.text != undefined)
               {
                  this._tiCommandLine.text = "";
               }
               this.api.kernel.DebugConsole.process(_loc5_);
               break;
            }
            var _loc6_ = dofus.graphics.gapi.ui.Banner(this.gapi.getUIComponent("Banner"));
            if(Selection.getFocus() != undefined && !(_loc6_ != undefined && (_loc6_["\x18\r\x03"]() && !_loc6_["\x16\x19\x0f"]())))
            {
               break;
            }
            _loc3_ = false;
            this._tiCommandLine.setFocus();
            break;
      }
      return _loc3_;
   }
   function §\x18\r\x19§()
   {
      return this._tiCommandLine["\x17\x11\x18"];
   }
   function §\x16\x1d\x18§()
   {
      return this._tiCommandLine.text != undefined && this._tiCommandLine.text != "";
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnClose:
            this["\x16\x15\n"]();
            break;
         case this["\x1c\t\x0b"]:
            this.clear();
            break;
         case this["\x1c\t\r"]:
            System.setClipboard(this["\x1c\r\x0f"].text);
            break;
         case this._btnMinimize:
            this["\x16\x18\x1c"]();
      }
   }
   function §\x16\x18\x1c§()
   {
      var _loc2_ = this.api.kernel.OptionsManager.getOption("DebugSizeIndex") + 1;
      _loc2_ %= 3;
      this.api.kernel.OptionsManager.setOption("DebugSizeIndex",_loc2_);
      this["\x16\x04\x12"]();
   }
   function href(oEvent, §\x16\x04\x05§)
   {
      dofus.graphics.gapi.ui.Debug.onHref(_loc2_,this.api);
   }
   static function onHref(oEvent, §\x16\x04\x05§, oCustomPopupPosition)
   {
      var _loc5_ = _loc2_.params.split(",");
      var _loc6_ = String(_loc5_.shift());
      switch(_loc6_)
      {
         case "AppendReportPenal":
            var _loc7_ = dofus.graphics.gapi.ui.MakeReport(_loc3_.ui.getUIComponent("MakeReport"));
            if(_loc7_ == undefined)
            {
               _loc3_.kernel.showMessage(undefined,"MakeReport UI not found","COMMANDS_CHAT");
               break;
            }
            var _loc8_ = _loc3_.datacenter.["\x1b\x0f\b"].Report;
            var _loc9_ = _global.unescape(_loc5_[0]);
            if(_loc8_.penal == undefined)
            {
               _loc8_.penal = _loc9_;
            }
            else
            {
               _loc8_.penal += "\n" + _loc9_;
            }
            _loc7_["\x1b\x14\x01"](true);
            break;
         case "AppendReportDescription":
            var _loc10_ = dofus.graphics.gapi.ui.MakeReport(_loc3_.ui.getUIComponent("MakeReport"));
            if(_loc10_ == undefined)
            {
               _loc3_.kernel.showMessage(undefined,"MakeReport UI not found","COMMANDS_CHAT");
               break;
            }
            var _loc11_ = _loc3_.datacenter.["\x1b\x0f\b"].Report;
            var _loc12_ = _global.unescape(_loc5_[0]);
            if(_loc11_.description == undefined)
            {
               _loc11_.description = _loc12_;
            }
            else
            {
               _loc11_.description += "\n" + _loc12_;
            }
            _loc10_["\x1b\x14\x01"](true);
            break;
         case "AppendReportComplementary":
            var _loc13_ = dofus.graphics.gapi.ui.MakeReport(_loc3_.ui.getUIComponent("MakeReport"));
            if(_loc13_ == undefined)
            {
               _loc3_.kernel.showMessage(undefined,"MakeReport UI not found","COMMANDS_CHAT");
               break;
            }
            var _loc14_ = _loc3_.datacenter.["\x1b\x0f\b"].Report;
            var _loc15_ = _global.unescape(_loc5_[0]);
            if(_loc14_.complementary == undefined)
            {
               _loc14_.complementary = _loc15_;
            }
            else
            {
               _loc14_.complementary += "\n" + _loc15_;
            }
            _loc13_["\x1b\x14\x01"](true);
            break;
         case "ShowPlayerPopupMenu":
            if(!_loc3_.datacenter.Basics.inGame)
            {
               break;
            }
            _loc3_.kernel.GameManager["\x1a\x1e\x14"](undefined,{sPlayerID:_global.unescape(_loc5_[0]),sPlayerName:_global.unescape(_loc5_[1]),oCustomPopupPosition:oCustomPopupPosition});
            break;
         case "ExecCmd":
            var _loc16_ = _loc5_.shift() == "true";
            var _loc17_ = _global.unescape(_loc5_.join(","));
            if(_loc16_)
            {
               _loc3_.kernel["\x16\x01\r"].sendCommand(_loc17_);
               break;
            }
            _loc3_.kernel["\x16\x01\r"].prepareCommand(_loc17_);
            break;
      }
   }
}
