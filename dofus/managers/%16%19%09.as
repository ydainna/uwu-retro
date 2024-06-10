class dofus.§\x18\x18\x0b§.CharactersManager extends dofus.utils.ApiElement
{
   static var §\x1e\f\x10§ = null;
   function CharactersManager(oAPI)
   {
      dofus.managers.CharactersManager["\x1e\f\x10"] = this;
      super.initialize(oAPI);
   }
   static function getInstance()
   {
      return dofus.managers.CharactersManager["\x1e\f\x10"];
   }
   function setLocalPlayerData(§\x19\b\x0b§, sName, §\x19\x12\x10§)
   {
      var _loc5_ = this.api.datacenter.Player;
      _loc5_["\x16\x1b\x11"]();
      _loc5_.ID = _loc2_;
      _loc5_.Name = _loc3_;
      _loc5_.Guild = _loc4_.guild;
      _loc5_.Level = _loc4_.level;
      _loc5_.Sex = _loc4_.sex;
      _loc5_.color1 = _loc4_.color1 != -1 ? Number("0x" + _loc4_.color1) : _loc4_.color1;
      _loc5_.color2 = _loc4_.color2 != -1 ? Number("0x" + _loc4_.color2) : _loc4_.color2;
      _loc5_.color3 = _loc4_.color3 != -1 ? Number("0x" + _loc4_.color3) : _loc4_.color3;
      var _loc6_ = _loc4_.items.split(";");
      var _loc7_ = 0;
      while(_loc7_ < _loc6_.length)
      {
         var _loc8_ = _loc6_[_loc7_];
         if(_loc8_.length != 0)
         {
            var _loc9_ = this.getItemObjectFromData(_loc8_);
            if(_loc9_ != undefined)
            {
               _loc5_["\x15\x1d\x12"](_loc9_);
            }
         }
         _loc7_ = _loc7_ + 1;
      }
      _loc5_["\x1b\x14\x0f"]();
   }
   function §\x1b\x15\x10§(§\x1a\x02\b§)
   {
      var _loc3_ = this.api.datacenter.Player;
      if(_loc3_.Name != _loc2_.name)
      {
         _loc3_.Name = _loc2_.name;
         this.api.electron.updateWindowTitle(_loc3_.Name);
         this.api.electron.setIngameDiscordActivity();
      }
      if(_loc3_.color1 != _loc2_.color1 || (_loc3_.color2 != _loc2_.color2 || _loc3_.color3 != _loc2_.color3))
      {
         _loc3_.color1 = _loc2_.color1;
         _loc3_.color2 = _loc2_.color2;
         _loc3_.color3 = _loc2_.color3;
         this.api.ui.getUIComponent("Banner").circleXtra["\x1b\x14\x02"](true);
         this.api.ui.getUIComponent("Inventory")["\x1a\x0b\t"]();
      }
      if(_loc3_.Sex != _loc2_.Sex)
      {
         _loc3_.Sex = _loc2_.Sex;
         this.api.ui.getUIComponent("Inventory")["\x1a\x0b\t"]();
      }
   }
   function §\x17\x02\n§(sID, sName, §\x19\x12\x10§)
   {
      if(this.api.datacenter.Player.isAuthorized && _loc4_.gfxID == ank.battlefield.datacenter..Sprite.ANGELS_OF_THE_WORLD_SPRITE_ID)
      {
         _loc4_.gfxID = ank.battlefield.datacenter..Sprite.ANGELS_OF_THE_WORLD_REPLACEMENT_SPRITE_ID;
      }
      var _loc5_ = this.api.datacenter.Sprites.getItemAt(sID);
      if(_loc5_ == undefined)
      {
         _loc5_ = new dofus.datacenter.["\x16\x19\x02"](sID,ank.battlefield.mc.Sprite,dofus.Constants["\x16\x1c\x1a"] + _loc4_.gfxID + ".swf",_loc4_.cell,_loc4_.dir,_loc4_.gfxID,_loc4_.title);
         this.api.datacenter.Sprites.addItemAt(sID,_loc5_);
      }
      _loc5_.GameActionsManager.init();
      _loc5_.cellNum = Number(_loc4_.cell);
      _loc5_.scaleX = _loc4_.scaleX;
      _loc5_.scaleY = _loc4_.scaleY;
      _loc5_.name = _loc3_;
      _loc5_.Guild = Number(_loc4_.spriteType);
      _loc5_.Level = Number(_loc4_.level);
      _loc5_.Sex = _loc4_.sex == undefined ? 1 : _loc4_.sex;
      _loc5_.color1 = _loc4_.color1 != -1 ? Number("0x" + _loc4_.color1) : _loc4_.color1;
      _loc5_.color2 = _loc4_.color2 != -1 ? Number("0x" + _loc4_.color2) : _loc4_.color2;
      _loc5_.color3 = _loc4_.color3 != -1 ? Number("0x" + _loc4_.color3) : _loc4_.color3;
      _loc5_.Aura = _loc4_.aura == undefined ? 0 : _loc4_.aura;
      _loc5_["\x18\x1c\x14"] = _loc4_.merchant != "1" ? false : true;
      _loc5_.serverID = Number(_loc4_.serverID);
      _loc5_.alignment = _loc4_.alignment;
      _loc5_.rank = _loc4_.rank;
      _loc5_.mount = _loc4_.mount;
      _loc5_.isDead = _loc4_.isDead == 1;
      _loc5_["\x17\x05\x11"] = Number(_loc4_.isDead);
      _loc5_.deathCount = Number(_loc4_.deathCount);
      _loc5_.lvlMax = Number(_loc4_.lvlMax);
      _loc5_.pvpGain = Number(_loc4_.pvpGain);
      _loc5_.hasTtgCollection = _loc4_.hasTtgCollection;
      _loc5_.hasCandy = _loc4_.hasCandy;
      _loc5_.hasBuff = _loc4_.hasBuff;
      this["\x1a\x1a\x01"](_loc5_,_loc4_.accessories);
      if(_loc4_.LP != undefined)
      {
         _loc5_.LP = _loc4_.LP;
      }
      if(_loc4_.LPmax != undefined)
      {
         _loc5_.LPmax = _loc4_.LPmax;
      }
      if(_loc4_.AP != undefined)
      {
         _loc5_.AP = _loc4_.AP;
      }
      if(_loc4_.AP != undefined)
      {
         _loc5_["\x16\x04\b"] = _loc4_.AP;
      }
      if(_loc4_.MP != undefined)
      {
         _loc5_.MP = _loc4_.MP;
      }
      if(_loc4_.MP != undefined)
      {
         _loc5_["\x19\x01\x1b"] = _loc4_.MP;
      }
      if(_loc4_["\x1a\x0e\x02"] != undefined)
      {
         _loc5_["\x1a\x0e\x02"] = _loc4_["\x1a\x0e\x02"];
      }
      _loc5_["\x1b\x0e\x15"] = _loc4_["\x1b\x0e\x14"] != undefined ? _loc4_["\x1b\x0e\x14"] : null;
      if(_loc4_.emote != undefined && _loc4_.emote.length != 0)
      {
         _loc5_.direction = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x01\x07"](_loc4_.dir);
         if(_loc4_.emoteTimer != undefined && _loc4_.emote.length != 0)
         {
            _loc5_["\x1b\t\n"] = _loc4_.emoteTimer;
         }
         _loc5_["\x1b\t\t"] = "EmoteStatic" + _loc4_.emote;
      }
      if(_loc4_["\x18\x04\x07"] != undefined)
      {
         _loc5_["\x18\x04\x07"] = _loc4_["\x18\x04\x07"];
      }
      _loc5_["\x17\f\x14"] = this["\x17\x02\x0f"](_loc4_["\x17\f\x14"]);
      if(_loc4_.restrictions != undefined)
      {
         _loc5_.restrictions = _global.parseInt(_loc4_.restrictions,36);
      }
      if(sID == this.api.datacenter.Player.ID)
      {
         this["\x1b\x15\x10"](_loc5_);
         if(!this.api.datacenter.Player.haveFakeAlignment)
         {
            this.api.datacenter.Player.alignment = _loc5_.alignment.clone();
         }
      }
      return _loc5_;
   }
   function §\x17\x02\r§(sID, sName, §\x19\x12\x10§)
   {
      var _loc5_ = this.api.datacenter.Sprites.getItemAt(sID);
      if(_loc5_ == undefined)
      {
         _loc5_ = new dofus.datacenter.Creature(sID,ank.battlefield.mc.Sprite,dofus.Constants["\x16\x1c\x1a"] + _loc4_.gfxID + ".swf",_loc4_.cell,_loc4_.dir,_loc4_.gfxID);
         this.api.datacenter.Sprites.addItemAt(sID,_loc5_);
      }
      _loc5_.GameActionsManager.init();
      _loc5_.cellNum = _loc4_.cell;
      _loc5_.name = _loc3_;
      _loc5_["\x1a\x06\x15"] = _loc4_["\x1a\x06\x15"];
      _loc5_.scaleX = _loc4_.scaleX;
      _loc5_.scaleY = _loc4_.scaleY;
      _loc5_["\x19\x0b\x04"] = _loc4_["\x19\x0b\x04"];
      _loc5_.color1 = _loc4_.color1 != -1 ? Number("0x" + _loc4_.color1) : _loc4_.color1;
      _loc5_.color2 = _loc4_.color2 != -1 ? Number("0x" + _loc4_.color2) : _loc4_.color2;
      _loc5_.color3 = _loc4_.color3 != -1 ? Number("0x" + _loc4_.color3) : _loc4_.color3;
      this["\x1a\x1a\x01"](_loc5_,_loc4_.accessories);
      if(_loc4_.LP != undefined)
      {
         _loc5_.LP = _loc4_.LP;
      }
      if(_loc4_.LPmax != undefined)
      {
         _loc5_.LPmax = _loc4_.LPmax;
      }
      if(_loc4_.AP != undefined)
      {
         _loc5_.AP = _loc4_.AP;
      }
      if(_loc4_.AP != undefined)
      {
         _loc5_["\x16\x04\b"] = _loc4_.AP;
      }
      if(_loc4_.MP != undefined)
      {
         _loc5_.MP = _loc4_.MP;
      }
      if(_loc4_.MP != undefined)
      {
         _loc5_["\x19\x01\x1b"] = _loc4_.MP;
      }
      if(_loc4_["\x1a\x0e\x02"] != undefined)
      {
         _loc5_["\x1a\x0e\x02"] = _loc4_["\x1a\x0e\x02"];
      }
      if(_loc4_.summoned != undefined)
      {
         _loc5_["\x18\x0f\x1d"] = _loc4_.summoned;
      }
      _loc5_["\x1b\x0e\x15"] = _loc4_["\x1b\x0e\x14"] != undefined ? _loc4_["\x1b\x0e\x14"] : null;
      return _loc5_;
   }
   function §\x17\x02\x12§(sID, sName, §\x19\x12\x10§)
   {
      var _loc5_ = this.api.datacenter.Sprites.getItemAt(sID);
      if(_loc5_ == undefined)
      {
         _loc5_ = new dofus.datacenter.["\x18\x1d\x18"](sID,ank.battlefield.mc.Sprite,dofus.Constants["\x16\x1c\x1a"] + _loc4_.gfxID + ".swf",_loc4_.cell,_loc4_.dir,_loc4_.gfxID);
         this.api.datacenter.Sprites.addItemAt(sID,_loc5_);
      }
      _loc5_.GameActionsManager.init();
      _loc5_.cellNum = _loc4_.cell;
      _loc5_.name = _loc3_;
      _loc5_.scaleX = _loc4_.scaleX;
      _loc5_.scaleY = _loc4_.scaleY;
      _loc5_["\x19\x0b\x04"] = _loc4_["\x19\x0b\x04"];
      _loc5_["\x1a\x06\x15"] = _loc4_["\x1a\x06\x15"];
      _loc5_.color1 = _loc4_.color1 != -1 ? Number("0x" + _loc4_.color1) : _loc4_.color1;
      _loc5_.color2 = _loc4_.color2 != -1 ? Number("0x" + _loc4_.color2) : _loc4_.color2;
      _loc5_.color3 = _loc4_.color3 != -1 ? Number("0x" + _loc4_.color3) : _loc4_.color3;
      this["\x1a\x1a\x01"](_loc5_,_loc4_.accessories);
      if(_loc4_.LP != undefined)
      {
         _loc5_.LP = _loc4_.LP;
      }
      if(_loc4_.LPmax != undefined)
      {
         _loc5_.LPmax = _loc4_.LPmax;
      }
      if(_loc4_.AP != undefined)
      {
         _loc5_.AP = _loc4_.AP;
      }
      if(_loc4_.AP != undefined)
      {
         _loc5_["\x16\x04\b"] = _loc4_.AP;
      }
      if(_loc4_.MP != undefined)
      {
         _loc5_.MP = _loc4_.MP;
      }
      if(_loc4_.MP != undefined)
      {
         _loc5_["\x19\x01\x1b"] = _loc4_.MP;
      }
      if(_loc4_.summoned != undefined)
      {
         _loc5_["\x18\x0f\x1d"] = _loc4_.summoned;
      }
      _loc5_["\x1b\x0e\x15"] = _loc4_["\x1b\x0e\x14"] != undefined ? _loc4_["\x1b\x0e\x14"] : null;
      return _loc5_;
   }
   function §\x17\x02\x13§(sID, sName, §\x19\x12\x10§)
   {
      var _loc5_ = this.api.datacenter.Sprites.getItemAt(sID);
      if(_loc5_ == undefined)
      {
         _loc5_ = new dofus.datacenter.["\x18\x1d\x19"](sID,ank.battlefield.mc.Sprite,dofus.Constants["\x16\x1c\x1a"] + _loc4_.gfxID + ".swf",_loc4_.cell,_loc4_.dir,_loc4_["\x16\x0f\x1c"]);
         this.api.datacenter.Sprites.addItemAt(sID,_loc5_);
      }
      _loc5_.GameActionsManager.init();
      _loc5_.cellNum = _loc4_.cell;
      _loc5_.name = _loc3_;
      _loc5_.Level = _loc4_.level;
      _loc5_.scaleX = _loc4_.scaleX;
      _loc5_.scaleY = _loc4_.scaleY;
      _loc5_["\x19\x0b\x04"] = _loc4_["\x19\x0b\x04"];
      _loc5_.color1 = _loc4_.color1 != -1 ? Number("0x" + _loc4_.color1) : _loc4_.color1;
      _loc5_.color2 = _loc4_.color2 != -1 ? Number("0x" + _loc4_.color2) : _loc4_.color2;
      _loc5_.color3 = _loc4_.color3 != -1 ? Number("0x" + _loc4_.color3) : _loc4_.color3;
      this["\x1a\x1a\x01"](_loc5_,_loc4_.accessories);
      return _loc5_;
   }
   function §\x17\x02\x16§(sID, §\x19\x10\n§, §\x19\x12\x10§)
   {
      var _loc5_ = this.api.datacenter.Sprites.getItemAt(sID);
      if(_loc5_ == undefined)
      {
         _loc5_ = new dofus.datacenter.["\x19\x0b\x07"](sID,ank.battlefield.mc.Sprite,dofus.Constants["\x16\x1c\x1a"] + _loc4_.gfxID + ".swf",_loc4_.cell,_loc4_.dir,_loc4_.gfxID,_loc4_.customArtwork);
         this.api.datacenter.Sprites.addItemAt(sID,_loc5_);
      }
      _loc5_.GameActionsManager.init();
      _loc5_.cellNum = _loc4_.cell;
      _loc5_.unicID = _loc3_;
      _loc5_.scaleX = _loc4_.scaleX;
      _loc5_.scaleY = _loc4_.scaleY;
      _loc5_.color1 = _loc4_.color1 != -1 ? Number("0x" + _loc4_.color1) : _loc4_.color1;
      _loc5_.color2 = _loc4_.color2 != -1 ? Number("0x" + _loc4_.color2) : _loc4_.color2;
      _loc5_.color3 = _loc4_.color3 != -1 ? Number("0x" + _loc4_.color3) : _loc4_.color3;
      this["\x1a\x1a\x01"](_loc5_,_loc4_.accessories);
      if(_loc4_["\x17\x0e\x14"] >= 0)
      {
         _loc5_["\x17\x0e\x14"] = _loc4_["\x17\x0e\x14"];
      }
      return _loc5_;
   }
   function §\x17\x02\x17§(sID, sName, §\x19\x12\x10§)
   {
      var _loc5_ = this.api.datacenter.Sprites.getItemAt(sID);
      if(_loc5_ == undefined)
      {
         _loc5_ = new dofus.datacenter.["\x19\x12\x19"](sID,ank.battlefield.mc.Sprite,dofus.Constants["\x16\x1c\x1a"] + _loc4_.gfxID + ".swf",_loc4_.cell,_loc4_.dir,_loc4_.gfxID);
         this.api.datacenter.Sprites.addItemAt(sID,_loc5_);
      }
      _loc5_.GameActionsManager.init();
      _loc5_.cellNum = _loc4_.cell;
      _loc5_.name = _loc3_;
      _loc5_.scaleX = _loc4_.scaleX;
      _loc5_.scaleY = _loc4_.scaleY;
      _loc5_.color1 = _loc4_.color1 != -1 ? Number("0x" + _loc4_.color1) : _loc4_.color1;
      _loc5_.color2 = _loc4_.color2 != -1 ? Number("0x" + _loc4_.color2) : _loc4_.color2;
      _loc5_.color3 = _loc4_.color3 != -1 ? Number("0x" + _loc4_.color3) : _loc4_.color3;
      this["\x1a\x1a\x01"](_loc5_,_loc4_.accessories);
      if(_loc4_["\x18\x04\x07"] != undefined)
      {
         _loc5_["\x18\x04\x07"] = _loc4_["\x18\x04\x07"];
      }
      _loc5_["\x17\f\x14"] = this["\x17\x02\x0f"](_loc4_["\x17\f\x14"]);
      _loc5_["\x19\x12\x1c"] = _loc4_["\x19\x12\x1c"];
      _loc5_.characterID = _loc4_.characterID;
      return _loc5_;
   }
   function §\x17\x02\x1c§(sID, sName, §\x19\x12\x10§)
   {
      var _loc5_ = this.api.datacenter.Sprites.getItemAt(sID);
      if(_loc5_ == undefined)
      {
         _loc5_ = new dofus.datacenter.["\x1b\x0e\x04"](sID,ank.battlefield.mc.Sprite,dofus.Constants["\x16\x1c\x1a"] + _loc4_.gfxID + ".swf",_loc4_.cell,_loc4_.dir,_loc4_.gfxID,_loc4_["\x18\x0e\x1c"]);
         this.api.datacenter.Sprites.addItemAt(sID,_loc5_);
      }
      _loc5_.GameActionsManager.init();
      _loc5_.cellNum = _loc4_.cell;
      _loc5_.scaleX = _loc4_.scaleX;
      _loc5_.scaleY = _loc4_.scaleY;
      _loc5_.name = this.api.lang["\x17\x18\x05"](_loc3_.split(","));
      _loc5_.Level = _loc4_.level;
      _loc5_["\x18\x0e\x1c"] = _loc4_["\x18\x0e\x1c"];
      if(_loc4_["\x18\x04\x07"] != undefined)
      {
         _loc5_["\x18\x04\x07"] = _loc4_["\x18\x04\x07"];
      }
      _loc5_["\x17\f\x14"] = this["\x17\x02\x0f"](_loc4_["\x17\f\x14"]);
      if(_loc4_.LP != undefined)
      {
         _loc5_.LP = _loc4_.LP;
      }
      if(_loc4_.LPmax != undefined)
      {
         _loc5_.LPmax = _loc4_.LPmax;
      }
      if(_loc4_.AP != undefined)
      {
         _loc5_.AP = _loc4_.AP;
      }
      if(_loc4_.AP != undefined)
      {
         _loc5_["\x16\x04\b"] = _loc4_.AP;
      }
      if(_loc4_.MP != undefined)
      {
         _loc5_.MP = _loc4_.MP;
      }
      if(_loc4_.MP != undefined)
      {
         _loc5_["\x19\x01\x1b"] = _loc4_.MP;
      }
      if(_loc4_["\x1a\x0e\x02"] != undefined)
      {
         _loc5_["\x1a\x0e\x02"] = _loc4_["\x1a\x0e\x02"];
      }
      _loc5_["\x1b\x0e\x15"] = _loc4_["\x1b\x0e\x14"] != undefined ? _loc4_["\x1b\x0e\x14"] : null;
      return _loc5_;
   }
   function §\x17\x02\x1b§(sID, sName, §\x19\x12\x10§)
   {
      var _loc5_ = this.api.datacenter.Sprites.getItemAt(sID);
      if(_loc5_ == undefined)
      {
         _loc5_ = new dofus.datacenter.["\x1a\x07\x0b"](sID,ank.battlefield.mc.Sprite,dofus.Constants["\x16\x1c\x1a"] + _loc4_.gfxID + ".swf",_loc4_.cell,_loc4_.dir,_loc4_.gfxID);
         this.api.datacenter.Sprites.addItemAt(sID,_loc5_);
      }
      _loc5_.GameActionsManager.init();
      _loc5_.cellNum = _loc4_.cell;
      _loc5_.scaleX = _loc4_.scaleX;
      _loc5_.scaleY = _loc4_.scaleY;
      _loc5_["\x18\x15\n"] = Number(_loc3_);
      _loc5_.Level = _loc4_.level;
      _loc5_.alignment = _loc4_.alignment;
      return _loc5_;
   }
   function §\x17\x02\x18§(sID, sName, §\x19\x12\x10§)
   {
      var _loc5_ = this.api.datacenter.Sprites.getItemAt(sID);
      if(_loc5_ == undefined)
      {
         _loc5_ = new dofus.datacenter.["\x1a\x03\x14"](sID,ank.battlefield.mc.Sprite,dofus.Constants["\x16\x1c\x1a"] + _loc4_.gfxID + ".swf",_loc4_.cell,_loc4_.dir,_loc4_.gfxID,_loc4_.modelID);
         this.api.datacenter.Sprites.addItemAt(sID,_loc5_);
      }
      _loc5_.GameActionsManager.init();
      _loc5_.cellNum = _loc4_.cell;
      _loc5_.name = _loc3_;
      _loc5_.scaleX = _loc4_.scaleX;
      _loc5_.scaleY = _loc4_.scaleY;
      _loc5_["\x1a\x03\x06"] = _loc4_["\x1a\x03\x06"];
      _loc5_.level = _loc4_.level;
      return _loc5_;
   }
   function §\x17\x02\x15§(sID, §\x19\x12\x10§)
   {
      var _loc4_ = this.api.datacenter.Sprites.getItemAt(sID);
      if(_loc4_ == undefined)
      {
         _loc4_ = new dofus.datacenter.["\x19\x02\x13"](sID,ank.battlefield.mc.Sprite,dofus.Constants["\x16\x1c\x1a"] + _loc3_.gfxID + ".swf",_loc3_.cell,_loc3_.dir,_loc3_.gfxID);
         this.api.datacenter.Sprites.addItemAt(sID,_loc4_);
      }
      _loc4_.GameActionsManager.init();
      _loc4_.scaleX = _loc3_.scaleX;
      _loc4_.scaleY = _loc3_.scaleY;
      _loc4_.cellNum = Number(_loc3_.cell);
      _loc4_.Guild = Number(_loc3_.spriteType);
      _loc4_["\x1a\x06\x15"] = Number(_loc3_["\x1a\x06\x15"]);
      _loc4_.Sex = _loc3_.sex == undefined ? 1 : _loc3_.sex;
      _loc4_["\x1a\x1d\x1c"] = _loc3_["\x1a\x1d\x1c"];
      _loc4_["\x18\x1d\x1a"] = _loc3_["\x18\x1d\x1a"];
      _loc4_.playerName = _loc3_.playerName;
      this["\x1a\x1a\x01"](_loc4_,_loc3_.accessories);
      if(_loc3_.LP != undefined)
      {
         _loc4_.LP = _loc3_.LP;
      }
      if(_loc3_.LPmax != undefined)
      {
         _loc4_.LPmax = _loc3_.LPmax;
      }
      if(_loc3_.AP != undefined)
      {
         _loc4_.AP = _loc3_.AP;
      }
      if(_loc3_.AP != undefined)
      {
         _loc4_["\x16\x04\b"] = _loc3_.AP;
      }
      if(_loc3_.MP != undefined)
      {
         _loc4_.MP = _loc3_.MP;
      }
      if(_loc3_.MP != undefined)
      {
         _loc4_["\x19\x01\x1b"] = _loc3_.MP;
      }
      _loc4_["\x1b\x0e\x15"] = _loc3_["\x1b\x0e\x14"] != undefined ? _loc3_["\x1b\x0e\x14"] : null;
      if(_loc3_.emote != undefined && _loc3_.emote.length != 0)
      {
         _loc4_.direction = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x01\x07"](_loc3_.dir);
         if(_loc3_.emoteTimer != undefined && _loc3_.emote.length != 0)
         {
            _loc4_["\x1b\t\n"] = _loc3_.emoteTimer;
         }
         _loc4_["\x1b\t\t"] = "EmoteStatic" + _loc3_.emote;
      }
      if(_loc3_.restrictions != undefined)
      {
         _loc4_.restrictions = _global.parseInt(_loc3_.restrictions,36);
      }
      return _loc4_;
   }
   function getItemObjectFromData(sData)
   {
      if(_loc2_.length == 0)
      {
         return null;
      }
      var _loc3_ = _loc2_.split("~");
      var _loc4_ = _global.parseInt(_loc3_[0],16);
      var _loc5_ = _global.parseInt(_loc3_[1],16);
      var _loc6_ = _global.parseInt(_loc3_[2],16);
      var _loc7_ = _loc3_[3].length != 0 ? _global.parseInt(_loc3_[3],16) : -1;
      var _loc8_ = _loc3_[4];
      var _loc9_ = new dofus.datacenter.Item(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_);
      _loc9_["\x1a\x06\x1d"] = this.api.lang.getConfigText("SELL_PRICE_MULTIPLICATOR");
      return _loc9_;
   }
   function §\x18\x01\x05§(sData)
   {
      var _loc3_ = _loc2_.split("~");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      var _loc6_ = _loc3_[2];
      var _loc7_ = new dofus.datacenter.["\x1b\x06\x06"](_loc4_,_loc5_,_loc6_);
      return _loc7_;
   }
   function §\x17\x1c\x0f§(sData)
   {
      var _loc3_ = new Object();
      var _loc4_ = _loc2_.split(",");
      if(_loc4_.length == 2)
      {
         _loc3_.name = this.api.lang["\x17\x18\x05"](_loc4_);
         _loc3_.type = "taxcollector";
      }
      else if(_global.isNaN(Number(_loc2_)))
      {
         _loc3_.name = _loc2_;
         _loc3_.type = "player";
      }
      else
      {
         _loc3_.name = this.api.lang["\x17\x1c\t"](Number(_loc2_)).n;
         _loc3_.type = "monster";
      }
      return _loc3_;
   }
   function §\x1a\x1a\x01§(§\x1a\x02\b§, §\x1a\x0f\x07§)
   {
      if(_loc3_.length != 0)
      {
         var _loc4_ = new Array();
         var _loc5_ = _loc3_.split(",");
         var _loc6_ = 0;
         while(_loc6_ < _loc5_.length)
         {
            if(_loc5_[_loc6_].indexOf("~") != -1)
            {
               var _loc10_ = _loc5_[_loc6_].split("~");
               var _loc7_ = _global.parseInt(_loc10_[0],16);
               var _loc9_ = _global.parseInt(_loc10_[1]);
               var _loc8_ = _global.parseInt(_loc10_[2]) - 1;
               if(_loc8_ < 0)
               {
                  _loc8_ = 0;
               }
            }
            else
            {
               _loc7_ = _global.parseInt(_loc5_[_loc6_],16);
               _loc9_ = undefined;
               _loc8_ = undefined;
            }
            if(!_global.isNaN(_loc7_))
            {
               var _loc11_ = new dofus.datacenter.["\x15\x1b\x15"](_loc7_,_loc9_,_loc8_);
               _loc4_[_loc6_] = _loc11_;
            }
            _loc6_ = _loc6_ + 1;
         }
         _loc2_.accessories = _loc4_;
      }
   }
   function §\x17\x02\x0f§(§\x1a\x13\x12§)
   {
      if(_loc2_ != undefined)
      {
         var _loc3_ = _loc2_.split(",");
         var _loc4_ = _global.parseInt(_loc3_[0],36);
         var _loc5_ = _global.parseInt(_loc3_[2],36);
         if(_loc4_ < 1 || _loc4_ > dofus.Constants["\x17\f\x17"])
         {
            _loc4_ = 1;
         }
         if(_loc5_ < 1 && _loc5_ != -1 || _loc5_ > dofus.Constants["\x17\f\x18"])
         {
            _loc5_ = 1;
         }
         var _loc6_ = new Object();
         _loc6_.backID = _loc4_;
         _loc6_.backColor = _global.parseInt(_loc3_[1],36);
         _loc6_.upID = _loc5_;
         _loc6_.upColor = _global.parseInt(_loc3_[3],36);
         return _loc6_;
      }
      return undefined;
   }
}
