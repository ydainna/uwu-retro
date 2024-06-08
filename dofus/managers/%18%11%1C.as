class dofus.§\x18\x18\x0b§.§\x18\x11\x1c§ extends dofus.utils.§\x16\x04\x07§
{
   var §\x1c\x05\x14§ = true;
   var §\x1c\x07\r§ = new Array();
   var §\x1c\x03\x03§ = false;
   var §\x1c\b\x04§ = true;
   static var §\x1e\f\x10§ = null;
   var §\x1d\x18\t§ = 0;
   function §\x18\x11\x1c§(oAPI)
   {
      super();
      dofus["\x18\x18\x0b"].KeyManager["\x1e\f\x10"] = this;
      this.initialize(oAPI);
   }
   function §\x1e\x13\t§()
   {
      return this["\x1c\x05\x14"];
   }
   function §\x0f\x18§(§\x16\r\x11§)
   {
      this["\x1c\x05\x14"] = _loc2_;
      return this["\x1e\x13\t"]();
   }
   static function §\x17\x19\t§()
   {
      return dofus["\x18\x18\x0b"].KeyManager["\x1e\f\x10"];
   }
   function initialize(oAPI)
   {
      super.initialize(oAPI);
      Key.addListener(this);
      this["\x1b\x1b\x14"] = new Array();
      this["\x1b\x1e\x07"] = new Array();
      this.addToQueue({object:this,method:this["\x18\x16\x12"]});
   }
   function §\x15\x1e\x0f§(§\x1b\x03\x13§, §\x19\x13\x0e§)
   {
      if(this["\x1b\x1d\x15"] == undefined)
      {
         this["\x1b\x1d\x15"] = new Array();
      }
      var _loc4_ = 0;
      while(_loc4_ < this["\x1b\x1d\x15"].length)
      {
         if(String(this["\x1b\x1d\x15"][_loc4_].o) == String(_loc3_) && this["\x1b\x1d\x15"][_loc4_].m == _loc2_)
         {
            this["\x1a\f\x17"](this["\x1b\x1d\x15"][_loc4_].o);
         }
         _loc4_ = _loc4_ + 1;
      }
      this["\x1b\x1d\x15"].unshift({o:_loc3_,m:_loc2_});
   }
   function §\x1a\f\x17§(§\x19\x13\x0e§)
   {
      if(this["\x1b\x1d\x15"] == undefined)
      {
         return undefined;
      }
      var _loc3_ = new Array();
      var _loc4_ = 0;
      while(_loc4_ < this["\x1b\x1d\x15"].length)
      {
         if(this["\x1b\x1d\x15"][_loc4_].o == _loc2_)
         {
            _loc3_.push(_loc4_);
         }
         _loc4_ = _loc4_ + 1;
      }
      _loc3_.sort(Array.DESCENDING);
      var _loc5_ = 0;
      while(_loc5_ < _loc3_.length)
      {
         this["\x1b\x1d\x15"].splice(_loc3_[_loc5_],1);
         _loc5_ = _loc5_ + 1;
      }
   }
   function §\x15\x1d\x15§(§\x1b\x03\x13§, §\x19\x13\x0e§)
   {
      if(this["\x1b\x1d\x0e"] == undefined)
      {
         this["\x1b\x1d\x0e"] = new Array();
      }
      var _loc4_ = 0;
      while(_loc4_ < this["\x1b\x1d\x0e"].length)
      {
         if(String(this["\x1b\x1d\x0e"][_loc4_].o) == String(_loc3_) && this["\x1b\x1d\x0e"][_loc4_].m == _loc2_)
         {
            this["\x1b\x1d\x0e"][_loc4_] = undefined;
         }
         _loc4_ = _loc4_ + 1;
      }
      this["\x1b\x1d\x0e"].unshift({o:_loc3_,m:_loc2_});
   }
   function §\x1a\f\f§(§\x19\x13\x0e§)
   {
      if(this["\x1b\x1d\x0e"] == undefined)
      {
         return undefined;
      }
      var _loc3_ = new Array();
      var _loc4_ = 0;
      while(_loc4_ < this["\x1b\x1d\x0e"].length)
      {
         if(this["\x1b\x1d\x0e"][_loc4_].o == _loc2_)
         {
            _loc3_.push(_loc4_);
         }
         _loc4_ = _loc4_ + 1;
      }
      _loc3_.sort(Array.DESCENDING);
      var _loc5_ = 0;
      while(_loc5_ < _loc3_.length)
      {
         this["\x1b\x1d\x0e"].splice(_loc3_[_loc5_],1);
         _loc5_ = _loc5_ + 1;
      }
   }
   function §\x17\x16\x0f§(sShortcut)
   {
      return this.api.lang["\x17\x1a\x05"](this["\x1d\x15\x01"],_loc2_);
   }
   function §\x17\x16\x05§(sShortcut)
   {
      var _loc3_ = new Array();
      var _loc4_ = 0;
      while(_loc4_ < this["\x1b\x1b\x14"].length)
      {
         if(this["\x1b\x1b\x14"][_loc4_].d == _loc2_)
         {
            _loc3_.push({k:this["\x1b\x1b\x14"][_loc4_].k,c:this["\x1b\x1b\x14"][_loc4_].c,d:this["\x1b\x1b\x14"][_loc4_].l});
         }
         _loc4_ = _loc4_ + 1;
      }
      var _loc5_ = 0;
      while(_loc5_ < this["\x1b\x1e\x07"].length)
      {
         if(this["\x1b\x1e\x07"][_loc5_].d == _loc2_)
         {
            _loc3_.push({k:this["\x1b\x1e\x07"][_loc5_].k,c:this["\x1b\x1e\x07"][_loc5_].c,d:this["\x1b\x1e\x07"][_loc5_].l});
         }
         _loc5_ = _loc5_ + 1;
      }
      if(_loc3_.length == 1)
      {
         return _loc3_[0];
      }
      if(_loc3_.length == 2)
      {
         return {k:_loc3_[0].k,c:_loc3_[0].c,d:_loc3_[0].d,k2:_loc3_[1].k,c2:_loc3_[1].c,d2:_loc3_[1].d};
      }
      return undefined;
   }
   function §\x16\x1b\x1c§()
   {
      this["\x1e\x0b\b"].clear();
      this["\x18\x16\x12"]();
   }
   function §\x16\x05\x1a§(sShortcut, §\x16\r\x10§)
   {
      this.api.ui.loadUIComponent("AskCustomShortcut","AskCustomShortcut",{title:this.api.lang.getText("SHORTCUTS_CUSTOM"),ShortcutCode:_loc2_,IsAlt:_loc3_,Description:this.api.lang["\x17\x1a\x03"]()[_loc2_].d});
   }
   function §\x1a\x15\x1c§(sShortcut, §\x16\r\x10§, §\x19\t\x05§, §\x19\x05\x0f§, §\x1a\x0f\x15§)
   {
      if(_loc2_ == undefined || _loc3_ == undefined)
      {
         return undefined;
      }
      var _loc7_ = _loc2_ + (!_loc3_ ? "_MAIN" : "_ALT");
      if(_loc4_ == undefined)
      {
         this["\x1e\x0b\b"].data[_loc7_] = undefined;
      }
      else
      {
         if(_loc5_ == undefined)
         {
            _loc5_ = 0;
         }
         if(_loc6_ == undefined || _loc6_ == "")
         {
            _loc6_ = this.api.lang["\x17\x1a\b"](_loc4_);
            _loc6_ = this.api.lang["\x17\x15\x14"](_loc5_) + _loc6_;
         }
         this["\x1e\x0b\b"].data[_loc7_] = {s:_loc2_,a:_loc3_,k:_loc4_,c:_loc5_,i:_loc6_};
      }
      this["\x1e\x0b\b"].flush();
      this["\x18\x16\x12"]();
   }
   function §\x17\x16\t§(sShortcut, §\x16\r\x10§)
   {
      var _loc4_ = _loc2_ + (!_loc3_ ? "_MAIN" : "_ALT");
      return this["\x1e\x0b\b"].data[_loc4_];
   }
   function §\x18\r\r§(sShortcut, §\x16\r\x10§)
   {
      return this["\x17\x16\t"](_loc2_,_loc3_) != undefined;
   }
   function §\x17\x07\x02§(sShortcut, §\x16\r\x10§)
   {
      this["\x1a\x15\x1c"](_loc2_,_loc3_);
   }
   function §\x17\x15\x1d§()
   {
      var _loc2_ = Number(this.api.lang.getText("SHORTCUTS_DEFAULT_SET"));
      if(_loc2_ < 1)
      {
         _loc2_ = 1;
      }
      return _loc2_;
   }
   function §\x17\x07\x18§(§\x16\x0f\x06§)
   {
      this.dispatchShortcut(!_loc2_ ? "CTRL_STATE_CHANGED_OFF" : "CTRL_STATE_CHANGED_ON");
   }
   function §\x17\b\x01§(sShortcut)
   {
      if(!this["\x1c\x05\x14"])
      {
         return false;
      }
      if(_loc2_ == "SEND_CHAT_MSG")
      {
         return false;
      }
      if(this["\x1b\x1d\x15"] == undefined)
      {
         return true;
      }
      var _loc3_ = new Array();
      var _loc4_ = true;
      var _loc5_ = 0;
      while(_loc5_ < this["\x1b\x1d\x15"].length)
      {
         if(this["\x1b\x1d\x15"][_loc5_] == undefined || this["\x1b\x1d\x15"][_loc5_].o == undefined)
         {
            _loc3_.push(_loc5_);
         }
         else
         {
            var _loc6_ = eval(String(this["\x1b\x1d\x15"][_loc5_].o) + "." + this["\x1b\x1d\x15"][_loc5_].m).call(this["\x1b\x1d\x15"][_loc5_].o,_loc2_);
            if(_loc6_ != undefined && _loc6_ == false)
            {
               _loc4_ = false;
               break;
            }
         }
         _loc5_ = _loc5_ + 1;
      }
      _loc3_.sort(Array.DESCENDING);
      var _loc7_ = 0;
      while(_loc7_ < _loc3_.length)
      {
         this["\x1b\x1d\x15"].splice(_loc3_[_loc7_],1);
         _loc7_ = _loc7_ + 1;
      }
      if(_loc4_)
      {
         _loc4_ = this.onShortcut(_loc2_);
      }
      return _loc4_;
   }
   function §\x17\x07\x1b§(sKey)
   {
      if(!this["\x1c\x05\x14"])
      {
         return undefined;
      }
      if(this["\x1b\x1d\x0e"] == undefined)
      {
         return undefined;
      }
      if(this.api.ui.getUIComponent("AskOKWait") != undefined)
      {
         return undefined;
      }
      _loc2_ = new ank.utils.ExtendedString(_loc2_)["\x1b\x11\x13"]().toString();
      if(_loc2_.length == 0)
      {
         return undefined;
      }
      var _loc3_ = new Array();
      var _loc4_ = 0;
      while(_loc4_ < this["\x1b\x1d\x0e"].length)
      {
         if(this["\x1b\x1d\x0e"][_loc4_] == undefined || this["\x1b\x1d\x0e"][_loc4_].o == undefined)
         {
            _loc3_.push(_loc4_);
         }
         else
         {
            eval(String(this["\x1b\x1d\x0e"][_loc4_].o) + "." + this["\x1b\x1d\x0e"][_loc4_].m).call(this["\x1b\x1d\x0e"][_loc4_].o,_loc2_);
         }
         _loc4_ = _loc4_ + 1;
      }
      _loc3_.sort(Array.DESCENDING);
      var _loc5_ = 0;
      while(_loc5_ < _loc3_.length)
      {
         this["\x1b\x1d\x0e"].splice(_loc3_[_loc5_],1);
         _loc5_ = _loc5_ + 1;
      }
   }
   function §\x18\x16\x12§()
   {
      var _loc2_ = this.api.datacenter.Basics.dofusPseudo;
      if(_loc2_ != undefined)
      {
         var _loc3_ = new ank.utils.ExtendedString(_loc2_)["\x1a\r\n"]("#","_") + "_" + dofus.Constants["\x18\x03\b"];
         this["\x1e\x0b\b"] = SharedObject.getLocal(_loc3_);
      }
      if(this["\x1d\x15\x01"] == undefined)
      {
         this["\x1d\x15\x01"] = this.api.kernel.OptionsManager.getOption("ShortcutSet");
      }
      var _loc4_ = this.api.lang["\x17\x1a\x03"]();
      this["\x1b\x1e\x07"] = new Array();
      this["\x1b\x1b\x14"] = new Array();
      new org.flashdevelop.utils.FlashConnect.trace("Vidage des raccourcis...","dofus.managers.KeyManager::loadShortcuts","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/managers/KeyManager.as",377);
      for(var k in _loc4_)
      {
         var _loc5_ = this.api.lang["\x17\x1a\x05"](this["\x1d\x15\x01"],k);
         var _loc6_ = this["\x17\x16\t"](k,false);
         if(_loc6_ != undefined && !_loc4_[k].s)
         {
            if(_loc5_.o)
            {
               this["\x1b\x1e\x07"].push({k:_loc6_.k,c:_loc6_.c,o:_loc5_.o,d:k,l:_loc6_.i,s:_loc4_[k].s});
            }
            else
            {
               this["\x1b\x1b\x14"].push({k:_loc6_.k,c:_loc6_.c,o:_loc5_.o,d:k,l:_loc6_.i,s:_loc4_[k].s});
            }
         }
         else if(_loc5_.o)
         {
            this["\x1b\x1e\x07"].push({k:_loc5_.k,c:_loc5_.c,o:_loc5_.o,d:k,l:_loc5_.s,s:_loc4_[k].s});
         }
         else if(_loc5_.k != undefined)
         {
            this["\x1b\x1b\x14"].push({k:_loc5_.k,c:_loc5_.c,o:_loc5_.o,d:k,l:_loc5_.s,s:_loc4_[k].s});
         }
         var _loc7_ = this["\x17\x16\t"](k,true);
         if(_loc7_ != undefined && !_loc4_[k].s)
         {
            if(_loc5_.o)
            {
               this["\x1b\x1e\x07"].push({k:_loc7_.k,c:_loc7_.c,o:_loc5_.o,d:k,l:_loc7_.i,s:_loc4_[k].s});
            }
            else
            {
               this["\x1b\x1b\x14"].push({k:_loc7_.k,c:_loc7_.c,o:_loc5_.o,d:k,l:_loc7_.i,s:_loc4_[k].s});
            }
         }
         else if(!_global.isNaN(_loc5_.k2) && _loc5_.k2 != undefined)
         {
            if(_loc5_.o)
            {
               this["\x1b\x1e\x07"].push({k:_loc5_.k2,c:_loc5_.c2,o:_loc5_.o,d:k,l:_loc5_.s2,s:_loc4_[k].s});
            }
            else
            {
               this["\x1b\x1b\x14"].push({k:_loc5_.k2,c:_loc5_.c2,o:_loc5_.o,d:k,l:_loc5_.s2,s:_loc4_[k].s});
            }
         }
      }
      if(this["\x1b\x1e\x07"].length == 0 && this["\x1b\x1b\x14"].length == 0)
      {
         new org.flashdevelop.utils.FlashConnect.trace("No shortcuts...","dofus.managers.KeyManager::loadShortcuts","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/managers/KeyManager.as",430);
         this["\x1b\x1b\x14"].push({k:38,c:0,o:true,d:"HISTORY_UP"});
         this["\x1b\x1b\x14"].push({k:40,c:0,o:true,d:"HISTORY_DOWN"});
         this["\x1b\x1b\x14"].push({k:13,c:1,o:true,d:"GUILD_MESSAGE"});
         this["\x1b\x1b\x14"].push({k:13,c:0,o:true,d:"ACCEPT_CURRENT_DIALOG"});
         this["\x1b\x1b\x14"].push({k:70,c:1,o:true,d:"FULLSCREEN"});
         var _loc8_ = this.api.lang["\x17\x16\x0b"]();
         var _loc9_ = 0;
         while(_loc9_ < _loc8_.length)
         {
            this["\x1b\x1b\x14"].push({k:_loc8_[_loc9_].k,c:1,o:true,d:"CONSOLE"});
            _loc9_ = _loc9_ + 1;
         }
         var _loc10_ = 0;
         while(_loc10_ < _loc8_.length)
         {
            this["\x1b\x1b\x14"].push({k:_loc8_[_loc10_].k,c:2,o:true,d:"CONSOLESIZE"});
            _loc10_ = _loc10_ + 1;
         }
      }
   }
   function §\x1a\x07\x16§(§\x16\x05\x14§, §\x19\t\x05§, §\x16\n\t§, §\x16\x12\x0b§)
   {
      var _loc6_ = true;
      var _loc7_ = 0;
      while(_loc7_ < _loc2_.length)
      {
         if(Number(_loc2_[_loc7_].k) == _loc3_)
         {
            var _loc8_ = false;
            switch(_loc2_[_loc7_].c)
            {
               case 1:
                  if(_loc4_ && !_loc5_)
                  {
                     _loc8_ = true;
                  }
                  break;
               case 2:
                  if(!_loc4_ && _loc5_)
                  {
                     _loc8_ = true;
                  }
                  break;
               case 3:
                  if(_loc4_ && _loc5_)
                  {
                     _loc8_ = true;
                  }
                  break;
               default:
                  if(!_loc4_ && !_loc5_)
                  {
                     _loc8_ = true;
                     break;
                  }
            }
            if(_loc8_)
            {
               _loc6_ = this.dispatchShortcut(_loc2_[_loc7_].d);
            }
         }
         _loc7_ = _loc7_ + 1;
      }
      return _loc6_;
   }
   function §\x19\x1c\x18§(§\x19\x0e\x07§)
   {
      this["\x1d\x15\x01"] = _loc2_;
      this["\x18\x16\x12"]();
   }
   function onKeyDown()
   {
      var _loc2_ = Key.getCode();
      var _loc3_ = Key.getAscii();
      var _loc4_ = Key.isDown(Key.CONTROL);
      var _loc5_ = Key.isDown(Key.SHIFT);
      if(this["\x1c\x11\x17"] != _loc4_)
      {
         this["\x1c\x11\x17"] = _loc4_;
         this["\x17\x07\x18"](_loc4_);
      }
      if(this["\x1c\x07\r"][_loc2_] != undefined)
      {
         return undefined;
      }
      this["\x1c\x07\r"][_loc2_] = true;
      if(this.api.gfx["\x18\x18\x15"]["\x1a\x1d\x1a"] && !this.api.datacenter.Game["\x18\r\x15"])
      {
         this.api.gfx["\x1b\x13\x18"](true);
         this.api.gfx["\x18\x18\x15"]["\x1a\x1d\x1a"] = false;
      }
      if(this.api.gfx.spriteHandler["\x18\x0f\x15"])
      {
         this.api.gfx.spriteHandler["\x1a\x1e\x0e"](false);
      }
      if(this.api.gfx.spriteHandler["\x18\x0f\f"] && (!this.api.ui.isComponentHiddingSprites && !this.api.kernel.TutorialManager["\x18\x10\x07"]))
      {
         this.api.gfx.spriteHandler.hideSprites(false,1);
      }
      if(this.api.kernel["\x16\x01\r"]["\x1b\x15\x1d"](_loc3_,_loc2_))
      {
         return undefined;
      }
      if(this.api.datacenter.Player.isAuthorized && this.api.kernel["\x16\x01\r"].getBatchNodeByKey(_loc3_) != undefined)
      {
         return undefined;
      }
      if(!this["\x1a\x07\x16"](this["\x1b\x1b\x14"],_loc2_,_loc4_,_loc5_))
      {
         return undefined;
      }
      if(Selection.getFocus() != undefined)
      {
         return undefined;
      }
      if(!this["\x1a\x07\x16"](this["\x1b\x1e\x07"],_loc2_,_loc4_,_loc5_))
      {
         return undefined;
      }
      if(_loc3_ > 0)
      {
         this["\x17\x07\x1b"](String.fromCharCode(_loc3_));
      }
   }
   function onKeyUp()
   {
      if(this.api.gfx["\x18\x18\x15"]["\x1a\x1d\x1a"] && !this.api.datacenter.Game["\x18\r\x15"])
      {
         this.api.gfx["\x1b\x13\x18"](true);
         this.api.gfx["\x18\x18\x15"]["\x1a\x1d\x1a"] = false;
      }
      if(this.api.gfx.spriteHandler["\x18\x0f\x15"])
      {
         this.api.gfx.spriteHandler["\x1a\x1e\x0e"](false);
      }
      if(this.api.gfx.spriteHandler["\x18\x0f\f"] && (!this.api.ui.isComponentHiddingSprites && !this.api.kernel.TutorialManager["\x18\x10\x07"]))
      {
         this.api.gfx.spriteHandler.hideSprites(false,1);
      }
      var _loc2_ = Key.getCode();
      delete this["\x1c\x07\r"][_loc2_];
   }
   function onShortcut(sShortcut)
   {
      var _loc3_ = true;
      switch(_loc2_)
      {
         case "TOGGLE_FIGHT_INFOS":
            this.api.kernel.OptionsManager.setOption("ChatEffects",!this.api.kernel.OptionsManager.getOption("ChatEffects"));
            _loc3_ = false;
            break;
         case "ESCAPE":
            this.api.datacenter.Basics.gfx_canLaunch = false;
            if(!this.api.ui.removeCursor(true))
            {
               if(this.api.ui["\x16\x15\x0b"]() == false)
               {
                  this.api.ui.loadUIComponent("AskMainMenu","AskMainMenu");
               }
            }
            break;
         case "CONSOLE":
            if(this.api.datacenter.Player.isAuthorized)
            {
               this.api.ui.loadUIComponent("Debug","Debug",undefined,{bAlwaysOnTop:true});
               _loc3_ = false;
            }
            break;
         case "CONSOLESIZE":
            if(this.api.datacenter.Player.isAuthorized)
            {
               var _loc4_ = this.api.ui.getUIComponent("Debug");
               if(_loc4_ != undefined)
               {
                  _loc4_["\x16\x18\x1c"]();
               }
               _loc3_ = false;
            }
            break;
         case "GRID":
            this.api.kernel.OptionsManager.setOption("Grid");
            _loc3_ = false;
            break;
         case "SHOWMONSTERSTOOLTIP":
            if(!this.api.kernel.TutorialManager["\x18\x10\x07"])
            {
               this.api.gfx.spriteHandler["\x1a\x1e\x0e"](true);
            }
            _loc3_ = false;
            break;
         case "SHOWTRIGGERS":
            if(this.api.datacenter.Game["\x18\r\x15"] || 7789 - this["\x1d\x18\t"] < dofus.Constants["\x16\x1c\x14"])
            {
               break;
            }
            if(!this.api.datacenter.Game["\x18\r\x15"])
            {
               if(7929 - this["\x1d\x18\t"] >= dofus.Constants["\x16\x1c\x14"])
               {
                  this["\x1d\x18\t"] = 10054;
                  this.api.gfx["\x18\x18\x15"]["\x1b\x01\x10"]();
                  this.api.gfx["\x18\x18\x15"]["\x1a\x1d\r"]();
               }
               _loc3_ = false;
            }
            break;
         case "HIDESPRITES":
            if(!this.api.gfx.spriteHandler["\x18\x0f\f"] && !this.api.kernel.TutorialManager["\x18\x10\x07"])
            {
               this.api.gfx.spriteHandler.hideSprites(true,1);
            }
            _loc3_ = false;
            break;
         case "TRANSPARENCY":
            this.api.kernel.OptionsManager.setOption("Transparency",!this.api.gfx["\x16\f\x0f"]);
            _loc3_ = false;
            break;
         case "SPRITEINFOS":
            this.api.kernel.OptionsManager.setOption("SpriteInfos");
            _loc3_ = false;
            break;
         case "COORDS":
            this.api.kernel.OptionsManager.setOption("MapInfos");
            _loc3_ = false;
            break;
         case "STRINGCOURSE":
            this.api.kernel.OptionsManager.setOption("StringCourse");
            _loc3_ = false;
            break;
         case "COLORFULTACTIC":
            this.api.kernel.OptionsManager.setOption("ColorfulTactic");
            _loc3_ = false;
            break;
         case "SHOW_CELL":
            if(this.api.kernel.GameManager["\x1b\r\x06"]())
            {
               _loc3_ = false;
            }
            break;
         case "BUFF":
            this.api.kernel.OptionsManager.setOption("Buff");
            _loc3_ = false;
            break;
         case "MOVABLEBAR":
            this.api.kernel.OptionsManager.setOption("MovableBar",!this.api.kernel.OptionsManager.getOption("MovableBar"));
            _loc3_ = false;
            break;
         case "MOUNTING":
            this.api.network.Mount["\x1a\x0e\x0e"]();
            _loc3_ = false;
            break;
         case "FULLSCREEN":
            this.api.kernel.GameManager["\x18\x0e\x01"] = _loc0_ = !this.api.kernel.GameManager["\x18\x0e\x01"];
            getURL("FSCommand:" add "fullscreen",_loc0_);
            _loc3_ = false;
            break;
         case "ALLOWSCALE":
            this.api.kernel.GameManager["\x18\f\x12"] = _loc0_ = !this.api.kernel.GameManager["\x18\f\x12"];
            getURL("FSCommand:" add "allowscale",_loc0_);
            _loc3_ = false;
      }
      return _loc3_;
   }
}
