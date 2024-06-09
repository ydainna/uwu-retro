class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.MouseShortcuts extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x1b\r\x15§ = "Spells";
   static var §\x1b\r\x13§ = "Items";
   static var §\x16\x1b\x10§ = "MouseShortcuts";
   static var §\x18\x1a\n§ = 31;
   static var §\x1b\x19\x13§ = {ra:50,rb:0,ga:50,gb:0,ba:70,bb:0};
   var §\x1e\b\x19§ = "Items";
   function MouseShortcuts()
   {
      super();
   }
   function §\x1e\x17\x13§()
   {
      if(this._currentOverContainer != undefined && this._currentOverContainer.contentData != undefined)
      {
         return this._currentOverContainer.contentData;
      }
      return undefined;
   }
   function §\x1e\x17\x17§()
   {
      return this["\x1e\b\x19"];
   }
   function §\x18\f§(§\x16\b\b§)
   {
      this._ctrCC._visible = _loc2_;
      return this.meleeVisible;
   }
   function set tabVisible(§\x16\b\b§)
   {
      this._btnTabItems._visible = _loc2_;
      this._btnTabSpells._visible = _loc2_;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.MouseShortcuts.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
   }
   function §\x17\x15\x12§(§\x19\b\x0b§)
   {
      return this["_ctr" + _loc2_];
   }
   function §\x1a\x15\x15§(§\x19\b\x0b§, §\x16\x17\x11§)
   {
      this["_ctr" + _loc2_] = _loc3_;
   }
   function spellMove(§\x19\x0e\x17§, §\x19\f\r§)
   {
      var _loc4_ = this.api.datacenter.Player.Spells;
      var _loc5_ = _loc4_.findFirstItem("ID",_loc2_).item;
      if(_loc5_ == undefined)
      {
         return undefined;
      }
      var _loc6_ = _loc4_.findFirstItem("position",_loc3_).item;
      if(_loc6_ != undefined)
      {
         _loc6_.position = undefined;
      }
      _loc5_.position = _loc3_;
      if(this["\x1e\b\x19"] != "Spells")
      {
         return undefined;
      }
      this["\x17\x15\x12"](_loc3_).contentData = _loc5_;
      this.addToQueue({object:this,method:this["\x1a\x19\x1b"]});
   }
   function spellRemove(§\x19\f\r§)
   {
      var _loc3_ = this.api.datacenter.Player.Spells;
      var _loc4_ = _loc3_.findFirstItem("position",_loc2_).item;
      if(_loc4_ == undefined)
      {
         return undefined;
      }
      _loc4_.position = undefined;
      if(this["\x1e\b\x19"] != "Spells")
      {
         return undefined;
      }
      this["\x17\x15\x12"](_loc2_).contentData = undefined;
      this.addToQueue({object:this,method:this["\x1a\x19\x1b"]});
   }
   function initData()
   {
   }
   function initTexts()
   {
      this._btnTabSpells.label = this.api.lang.getText("BANNER_TAB_SPELLS");
      this._btnTabItems.label = this.api.lang.getText("BANNER_TAB_ITEMS");
   }
   function addListeners()
   {
      this._btnTabSpells.addEventListener("click",this);
      this._btnTabItems.addEventListener("click",this);
      this._btnTabSpells.addEventListener("over",this);
      this._btnTabItems.addEventListener("over",this);
      this._btnTabSpells.addEventListener("out",this);
      this._btnTabItems.addEventListener("out",this);
      var _loc2_ = 1;
      while(_loc2_ < dofus.graphics.gapi.controls.MouseShortcuts["\x18\x1a\n"])
      {
         var _loc3_ = this["_ctr" + _loc2_];
         _loc3_.addEventListener("click",this);
         _loc3_.addEventListener("dblClick",this);
         _loc3_.addEventListener("over",this);
         _loc3_.addEventListener("out",this);
         _loc3_.addEventListener("drag",this);
         _loc3_.addEventListener("drop",this);
         _loc3_.addEventListener("onContentLoaded",this);
         _loc3_.params = {position:_loc2_};
         _loc2_ = _loc2_ + 1;
      }
      this._ctrCC.addEventListener("click",this);
      this._ctrCC.addEventListener("over",this);
      this._ctrCC.addEventListener("out",this);
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
      this.api.datacenter.Player.Spells.addEventListener("modelChanged",this);
      this.api.datacenter.Player.Inventory.addEventListener("modelChanged",this);
      this.api.datacenter.Player.InventoryShortcuts.addEventListener("modelChanged",this);
   }
   function §\x16\x1c\r§()
   {
      var _loc2_ = this.api.datacenter.Player.Spells;
      for(var k in _loc2_)
      {
         if(!_global.isNaN(_loc2_[k].position))
         {
            var _loc3_ = this["_ctr" + _loc2_[k].position];
            _loc3_["\x1a\x1e\x05"] = false;
            this["\x1a\x18\x04"](_loc3_.content,dofus.Constants["\x19\x0b\x13"]);
         }
      }
      this["\x1a\x18\x04"](this._ctrCC.content,dofus.Constants["\x19\x0b\x13"]);
   }
   function §\x1a\x19\x1b§()
   {
      if(this["\x1e\b\x19"] != "Spells")
      {
         return undefined;
      }
      var _loc2_ = this.api.datacenter.Player.Spells;
      for(var k in _loc2_)
      {
         if(!_global.isNaN(_loc2_[k].position))
         {
            this["\x1a\x19\x1c"](_loc2_[k].position);
         }
      }
      this["\x1a\x19\x1c"](0);
   }
   function §\x1a\x17\r§()
   {
      if(this["\x1e\b\x19"] != "Items")
      {
         return undefined;
      }
      var _loc2_ = this.api.datacenter.Player.InventoryShortcuts.getItems();
      for(var k in _loc2_)
      {
         var _loc3_ = _loc2_[k].position;
         if(!(_global.isNaN(_loc3_) && _loc3_ < 1))
         {
            this["\x1a\x17\x0e"](_loc3_);
         }
      }
      this["\x1a\x19\x1c"](0);
   }
   function §\x1b\x16\x07§()
   {
      if(this["\x1e\b\x19"] != "Spells")
      {
         return undefined;
      }
      this._ctrCC.contentData = new dofus.datacenter.["\x1b\x06\x06"](dofus.datacenter.["\x16\x1c\x1d"].CLOSE_COMBAT_SPELL_ID,1);
      if(this._ctrCC["\x17\x01\x05"])
      {
         this._ctrCC.content.applyColors();
      }
      var _loc2_ = new Array();
      var _loc3_ = 1;
      while(_loc3_ < dofus.graphics.gapi.controls.MouseShortcuts["\x18\x1a\n"])
      {
         _loc2_[_loc3_] = true;
         _loc3_ = _loc3_ + 1;
      }
      var _loc4_ = this.api.datacenter.Player.Spells;
      for(var k in _loc4_)
      {
         var _loc5_ = _loc4_[k];
         var _loc6_ = _loc5_.position;
         if(!_global.isNaN(_loc6_))
         {
            var _loc7_ = this["_ctr" + _loc6_];
            _loc7_.contentData = _loc5_;
            if(_loc7_["\x17\x01\x05"])
            {
               _loc7_.content.applyColors();
            }
            _loc2_[_loc6_] = false;
         }
      }
      var _loc8_ = 1;
      while(_loc8_ < dofus.graphics.gapi.controls.MouseShortcuts["\x18\x1a\n"])
      {
         if(_loc2_[_loc8_])
         {
            this["_ctr" + _loc8_].contentData = undefined;
         }
         _loc8_ = _loc8_ + 1;
      }
      this.addToQueue({object:this,method:this["\x1a\x19\x1b"]});
   }
   function §\x1b\x15\t§()
   {
      if(this["\x1e\b\x19"] != "Items")
      {
         return undefined;
      }
      var _loc2_ = new Array();
      var _loc3_ = 1;
      while(_loc3_ < dofus.graphics.gapi.controls.MouseShortcuts["\x18\x1a\n"])
      {
         _loc2_[_loc3_] = true;
         _loc3_ = _loc3_ + 1;
      }
      var _loc4_ = this.api.datacenter.Player.InventoryShortcuts.getItems();
      for(var k in _loc4_)
      {
         var _loc5_ = _loc4_[k];
         if(!_global.isNaN(_loc5_.position))
         {
            var _loc6_ = _loc5_.position;
            var _loc7_ = this["_ctr" + _loc6_];
            _loc7_.contentData = _loc5_;
            this["\x1a\x18\x04"](_loc7_.content,!_loc5_.findRealItem() ? dofus.Constants["\x18\b\x15"] : dofus.Constants["\x19\x0b\x13"]);
            _loc2_[_loc6_] = false;
         }
      }
      var _loc8_ = 1;
      while(_loc8_ < dofus.graphics.gapi.controls.MouseShortcuts["\x18\x1a\n"])
      {
         if(_loc2_[_loc8_])
         {
            this["_ctr" + _loc8_].contentData = undefined;
         }
         _loc8_ = _loc8_ + 1;
      }
      this.addToQueue({object:this,method:this["\x1a\x17\r"]});
   }
   function §\x1a\x19\x1c§(§\x19\b\x14§)
   {
      var _loc3_ = _loc2_ != 0 ? this["_ctr" + _loc2_] : this._ctrCC;
      var _loc4_ = _loc2_ != 0 ? _loc3_.contentData : this.api.datacenter.Player.Spells[0];
      if(_loc4_ == undefined)
      {
         return undefined;
      }
      if(this.api.kernel.TutorialManager["\x18\x10\x07"])
      {
         _loc5_.can = true;
      }
      else
      {
         var _loc5_ = this.api.datacenter.Player["\x1b\x06\x12"]["\x16\x19\x1b"](_loc4_.ID);
      }
      if(_loc5_.can == false)
      {
         switch(_loc5_.type)
         {
            case "NOT_IN_REQUIRED_STATE":
            case "IN_FORBIDDEN_STATE":
               this["\x1a\x18\x04"](_loc3_.content,dofus.graphics.gapi.controls.MouseShortcuts["\x1b\x19\x13"]);
               if(_loc5_.params[1])
               {
                  _loc3_["\x1a\x1e\x05"] = true;
                  _loc3_.label = _loc5_.params[1];
               }
               else
               {
                  _loc3_["\x1a\x1e\x05"] = false;
               }
               break;
            case "NOT_ENOUGH_AP":
            case "CANT_SUMMON_MORE_CREATURE":
            case "CANT_LAUNCH_MORE":
            case "CANT_RELAUNCH":
            case "NOT_IN_FIGHT":
               _loc3_["\x1a\x1e\x05"] = false;
               this["\x1a\x18\x04"](_loc3_.content,dofus.Constants["\x18\b\x15"]);
               break;
            case "CANT_LAUNCH_BEFORE":
               this["\x1a\x18\x04"](_loc3_.content,dofus.Constants["\x18\b\x15"]);
               _loc3_["\x1a\x1e\x05"] = true;
               _loc3_.label = _loc5_.params[0];
         }
      }
      else
      {
         _loc3_["\x1a\x1e\x05"] = false;
         this["\x1a\x18\x04"](_loc3_.content,dofus.Constants["\x19\x0b\x13"]);
      }
   }
   function §\x1a\x17\x0e§(§\x19\b\x14§)
   {
      var _loc3_ = this["_ctr" + _loc2_];
      var _loc4_ = dofus.datacenter..InventoryShortcutItem(_loc3_.contentData);
      if(_loc4_ == undefined)
      {
         return undefined;
      }
      this["\x1a\x18\x04"](_loc3_.content,!_loc4_.findRealItem() ? dofus.Constants["\x18\b\x15"] : dofus.Constants["\x19\x0b\x13"]);
      _loc3_["\x1a\x1e\x05"] = _loc4_.label != undefined;
   }
   function §\x1b\x14\x13§()
   {
      switch(this["\x1e\b\x19"])
      {
         case "Spells":
            this["\x1b\x16\x07"]();
            this._ctrCC._visible = !this.api.datacenter.Player.isMutant;
            break;
         case "Items":
            this["\x1b\x15\t"]();
            this._ctrCC._visible = false;
      }
   }
   function setCurrentTab(§\x1b\x04\x07§)
   {
      if(_loc2_ != this["\x1e\b\x19"])
      {
         var _loc3_ = this["_btnTab" + this["\x1e\b\x19"]];
         var _loc4_ = this["_btnTab" + _loc2_];
         _loc3_.selected = true;
         _loc3_.enabled = true;
         _loc4_.selected = false;
         _loc4_.enabled = false;
         this["\x1e\b\x19"] = _loc2_;
         this["\x1b\x14\x13"]();
      }
   }
   function onShortcut(sShortcut)
   {
      var _loc3_ = true;
      switch(_loc2_)
      {
         case "SWAP":
            this.setCurrentTab(this["\x1e\b\x19"] != "Spells" ? "Spells" : "Items");
            _loc3_ = false;
            break;
         case "SH0":
            this.click({target:this._ctrCC});
            _loc3_ = false;
            break;
         case "SH1":
            this.click({target:this._ctr1,keyBoard:true});
            _loc3_ = false;
            break;
         case "SH2":
            this.click({target:this._ctr2,keyBoard:true});
            _loc3_ = false;
            break;
         case "SH3":
            this.click({target:this._ctr3,keyBoard:true});
            _loc3_ = false;
            break;
         case "SH4":
            this.click({target:this._ctr4,keyBoard:true});
            _loc3_ = false;
            break;
         case "SH5":
            this.click({target:this._ctr5,keyBoard:true});
            _loc3_ = false;
            break;
         case "SH6":
            this.click({target:this._ctr6,keyBoard:true});
            _loc3_ = false;
            break;
         case "SH7":
            this.click({target:this._ctr7,keyBoard:true});
            _loc3_ = false;
            break;
         case "SH8":
            this.click({target:this._ctr8,keyBoard:true});
            _loc3_ = false;
            break;
         case "SH9":
            this.click({target:this._ctr9,keyBoard:true});
            _loc3_ = false;
            break;
         case "SH10":
            this.click({target:this._ctr10,keyBoard:true});
            _loc3_ = false;
            break;
         case "SH11":
            this.click({target:this._ctr11,keyBoard:true});
            _loc3_ = false;
            break;
         case "SH12":
            this.click({target:this._ctr12,keyBoard:true});
            _loc3_ = false;
            break;
         case "SH13":
            this.click({target:this._ctr13,keyBoard:true});
            _loc3_ = false;
            break;
         case "SH14":
            this.click({target:this._ctr14,keyBoard:true});
            _loc3_ = false;
      }
      return _loc3_;
   }
   function click(oEvent)
   {
      loop0:
      switch(_loc2_.target._name)
      {
         case "_btnTabSpells":
            this.api.sounds["\x17\x0e\x06"]["\x19\x14\x12"]();
            this.setCurrentTab("Spells");
            break;
         case "_btnTabItems":
            this.api.sounds["\x17\x0e\x06"]["\x19\x14\x12"]();
            this.setCurrentTab("Items");
            break;
         case "_ctrCC":
            if(this._ctrCC._visible)
            {
               if(this.api.kernel.TutorialManager["\x18\x10\x07"])
               {
                  this.api.kernel.TutorialManager["\x19\x1e\x0f"]({code:"CC_CONTAINER_SELECT"});
                  break;
               }
               this.api.kernel.GameManager["\x1b\r\n"](this.api.datacenter.Player.Spells[0],false);
            }
            break;
         default:
            switch(this["\x1e\b\x19"])
            {
               case "Spells":
                  this.api.sounds["\x17\x0e\x06"]["\x19\x14\x13"]();
                  if(this.api.kernel.TutorialManager["\x18\x10\x07"])
                  {
                     this.api.kernel.TutorialManager["\x19\x1e\x0f"]({code:"SPELL_CONTAINER_SELECT",params:[Number(_loc2_.target._name.substr(4))]});
                     break loop0;
                  }
                  if(this.gapi.getUIComponent("Spells") != undefined)
                  {
                     return undefined;
                  }
                  var _loc3_ = _loc2_.target.contentData;
                  if(_loc3_ == undefined)
                  {
                     return undefined;
                  }
                  this.api.kernel.GameManager["\x1b\r\n"](_loc3_,true);
                  break loop0;
               case "Items":
                  if(this.api.kernel.TutorialManager["\x18\x10\x07"])
                  {
                     this.api.kernel.TutorialManager["\x19\x1e\x0f"]({code:"OBJECT_CONTAINER_SELECT",params:[Number(_loc2_.target._name.substr(4))]});
                     break loop0;
                  }
                  var _loc4_ = _loc2_.target.contentData;
                  var _loc5_ = _loc4_ == undefined ? undefined : _loc4_.realLinkedItem;
                  if(_loc5_ == undefined)
                  {
                     return undefined;
                  }
                  if(Key.isDown(dofus.Constants["\x16\x19\x13"]))
                  {
                     this.api.kernel.GameManager["\x18\n\x1d"](_loc5_);
                     return undefined;
                  }
                  var _loc6_ = this.gapi.getUIComponent("Inventory");
                  if(_loc6_ != undefined)
                  {
                     _loc6_["\x1a\x1e\x02"](_loc5_);
                     break loop0;
                  }
                  if(!this.api.datacenter.Player.checkCanMoveItem())
                  {
                     return undefined;
                  }
                  if(_loc2_.keyBoard)
                  {
                     if(_loc5_.isEquiped)
                     {
                        this.api.network.Items.movement(_loc5_.ID,-1);
                        return undefined;
                     }
                     if(this.api.network.Items["\x17\r\x17"](_loc5_))
                     {
                        return undefined;
                     }
                  }
                  if(this.api.datacenter.Player.canUseObject)
                  {
                     if(_loc5_["\x16\x16\x15"])
                     {
                        this.api.kernel.GameManager["\x1b\r\b"](_loc5_);
                        break loop0;
                     }
                     if(_loc5_canUse && _loc2_.keyBoard)
                     {
                        if(Key.isDown(Key.CONTROL) || Key.isDown(Key.SHIFT))
                        {
                           dofus.graphics.gapi.ui.Inventory.askBatchUseItem(this.api,_loc5_);
                           break loop0;
                        }
                        this.api.network.Items.use(_loc5_.ID);
                     }
                  }
                  break loop0;
            }
      }
   }
   function dblClick(oEvent)
   {
      switch(this["\x1e\b\x19"])
      {
         case "Spells":
            if((_loc0_ = _loc2_.target._name) !== "_ctrCC")
            {
               var _loc3_ = _loc2_.target.contentData;
            }
            else
            {
               _loc3_ = this.api.datacenter.Player.Spells[0];
            }
            if(_loc3_ == undefined)
            {
               return undefined;
            }
            this.gapi["\x18\x16\x19"]("SpellInfos","SpellInfos",{spell:_loc3_},{bStayIfPresent:true});
            break;
         case "Items":
            if(!this.api.datacenter.Player.checkCanMoveItem())
            {
               return undefined;
            }
            var _loc4_ = _loc2_.target.contentData;
            var _loc5_ = _loc4_ == undefined ? undefined : _loc4_.realLinkedItem;
            if(_loc5_ == undefined)
            {
               return undefined;
            }
            if(!_loc5_.isEquiped)
            {
               if(!_loc5_canUse || !this.api.datacenter.Player.canUseObject)
               {
                  this.api.network.Items["\x17\r\x17"](_loc5_);
               }
               else if(Key.isDown(Key.CONTROL) || Key.isDown(Key.SHIFT))
               {
                  dofus.graphics.gapi.ui.Inventory.askBatchUseItem(this.api,_loc5_);
               }
               else
               {
                  this.api.network.Items.use(_loc5_.ID);
               }
               break;
            }
            this.api.network.Items.movement(_loc5_.ID,-1);
            break;
      }
   }
   function over(oEvent)
   {
      if(!this.gapi["\x18\r\f"]())
      {
         return undefined;
      }
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) !== "_ctrCC")
      {
         switch(this["\x1e\b\x19"])
         {
            case "Spells":
               this._currentOverContainer = _loc2_.target;
               var _loc6_ = _loc2_.target.contentData;
               if(_loc6_ != undefined)
               {
                  this.gapi.showTooltip("<b>" + _loc6_.name + "</b> - " + (_loc6_["\x16\x04\x03"] >= 1 ? _loc6_["\x16\x04\x03"] : "1") + " " + this.api.lang.getText("AP") + (_loc6_["\x15\x1c\x1b"] <= 0 ? "" : "\n(" + this.api.lang.getText("ACTUAL_CRITICAL_CHANCE") + ": 1/" + _loc6_["\x15\x1c\x1b"] + ")"),_loc2_.target,-4,{bXLimit:true,bYLimit:false,bTopAlign:true});
               }
               break;
            case "Items":
               this._currentOverContainer = _loc2_.target;
               var _loc7_ = _loc2_.target.contentData;
               if(_loc7_ != undefined)
               {
                  var _loc8_ = "<b>" + _loc7_.name + "</b>";
                  if(this.gapi.getUIComponent("Inventory") == undefined)
                  {
                     if(_loc7_canUse && _loc7_["\x16\x16\x15"])
                     {
                        _loc8_ += "\n" + this.api.lang.getText("HELP_SHORTCUT_DBLCLICK_CLICK");
                     }
                     else
                     {
                        if(_loc7_canUse)
                        {
                           _loc8_ += "\n" + this.api.lang.getText("HELP_SHORTCUT_DBLCLICK");
                        }
                        if(_loc7_["\x16\x16\x15"])
                        {
                           _loc8_ += "\n" + this.api.lang.getText("HELP_SHORTCUT_CLICK");
                        }
                     }
                  }
                  this.gapi.showTooltip(_loc8_,_loc2_.target,-4,{bXLimit:true,bYLimit:false,bTopAlign:true});
                  break;
               }
         }
      }
      else
      {
         var _loc3_ = this.api.datacenter.Player.Spells[0];
         var _loc4_ = this.api.kernel.GameManager["\x17\x15\x1a"](_loc3_["\x17\x03\b"]);
         var _loc5_ = "<b>" + _loc3_.name + "</b> - ";
         _loc5_ += !_loc3_.isUnusable ? _loc3_["\x16\x04\x03"] + " " + this.api.lang.getText("AP") : this.api.lang.getText("UNUSABLE");
         _loc5_ += !!_global.isNaN(_loc4_) ? "\n\n" : "\n(" + this.api.lang.getText("ACTUAL_CRITICAL_CHANCE") + ": 1/" + _loc4_ + ")" + "\n\n";
         _loc5_ += _loc3_["\x17\x07\t"];
         this.gapi.showTooltip(_loc5_,_loc2_.target,-4,{bXLimit:true,bYLimit:false,bTopAlign:true});
      }
   }
   function out(oEvent)
   {
      this._currentOverContainer = undefined;
      this.gapi.hideTooltip();
   }
   function drag(oEvent)
   {
      var _loc3_ = _loc2_.target.contentData;
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      switch(this["\x1e\b\x19"])
      {
         case "Spells":
            if(this.gapi.getUIComponent("Spells") == undefined && !Key.isDown(Key.SHIFT))
            {
               return undefined;
            }
            break;
         case "Items":
            if(this.gapi.getUIComponent("Inventory") == undefined && !Key.isDown(Key.SHIFT))
            {
               return undefined;
            }
            break;
      }
      this.gapi.removeCursor();
      this.gapi["\x1a\x15\x19"](_loc3_,undefined,this["\x1e\b\x19"] == "Spells");
   }
   function onContentLoaded(oEvent)
   {
      if(this["\x1e\b\x19"] != "Spells")
      {
         return undefined;
      }
      var _loc3_ = _loc2_.content;
      _loc3_.applyColors();
   }
   function drop(oEvent)
   {
      switch(this["\x1e\b\x19"])
      {
         case "Spells":
            var _loc0_ = null;
            §§push(_loc0_ = _loc2_.target);
            if(this.gapi.getUIComponent("Spells") == undefined && !Key.isDown(Key.SHIFT))
            {
               return undefined;
            }
            var _loc3_ = this.gapi["\x17\x16\x07"]();
            if(_loc3_ == undefined)
            {
               return undefined;
            }
            this.gapi.removeCursor();
            var _loc4_ = _loc3_.position;
            var _loc5_ = _loc2_.target.params.position;
            if(_loc4_ == _loc5_)
            {
               return undefined;
            }
            this.api.network.Spells["\x19\x01\x10"](_loc3_.ID,_loc5_);
            break;
         case "Items":
            if(this.gapi.getUIComponent("Inventory") == undefined && !Key.isDown(Key.SHIFT))
            {
               return undefined;
            }
            var _loc6_ = this.gapi["\x17\x16\x07"]();
            if(_loc6_ == undefined)
            {
               return undefined;
            }
            var _loc7_ = _loc6_.ID;
            if(_loc7_ == -1)
            {
               return undefined;
            }
            this.gapi.removeCursor();
            var _loc8_ = _loc2_.target.params.position;
            if(_loc6_.isShortcut && _loc6_.position == _loc8_)
            {
               return undefined;
            }
            if(_loc6_.isShortcut)
            {
               this.api.network.InventoryShortcuts.sendInventoryShortcutMove(_loc6_.position,_loc8_);
               break;
            }
            this.api.network.InventoryShortcuts.sendInventoryShortcutAdd(_loc8_,_loc7_);
            break;
      }
      §§pop();
   }
   function modelChanged(oEvent)
   {
      switch(_loc2_.eventName)
      {
         case "updateOne":
         case "updateAll":
      }
      if(_loc2_.target == this.api.datacenter.Player.Spells)
      {
         this["\x1b\x16\x07"]();
      }
      else
      {
         this["\x1b\x15\t"]();
      }
   }
}
