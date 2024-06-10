class dofus.graphics.gapi.ui.Spells extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Spells";
   static var §\x1b\r\x14§ = ["Guild","Water","Fire","Earth","Air"];
   static var §\x1b\r\x16§ = ["SPELL_TAB_GUILD_TITLE","SPELL_TAB_WATER_TITLE","SPELL_TAB_FIRE_TITLE","SPELL_TAB_EARTH_TITLE","SPELL_TAB_AIR_TITLE"];
   function Spells()
   {
      super();
   }
   function §\t\x19§()
   {
      return this._sfivSpellFullInfosViewer;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Spells.CLASS_NAME);
      this.gapi.getUIComponent("Banner")["\x1a\x1c\x10"].setCurrentTab("Spells");
   }
   function destroy()
   {
      this.gapi.hideTooltip();
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this["\x1d\x1c\x14"] = 0;
      this["\x1d\x10\f"]._visible = false;
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.initTexts});
      this["\x18\x06\x1b"](true);
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this["\x1c\x0e\x14"].addEventListener("itemRollOver",this);
      this["\x1c\x0e\x14"].addEventListener("itemRollOut",this);
      this["\x1c\x0e\x14"].addEventListener("itemDrag",this);
      this["\x1c\x0e\x14"].addEventListener("itemSelected",this);
      this["\x1c\f\x1b"].addEventListener("itemSelected",this);
      this.api.datacenter.Player.addEventListener("bonusSpellsChanged",this);
      this.api.datacenter.Player.Spells.addEventListener("modelChanged",this);
   }
   function initData()
   {
      this["\x1b\x14\x06"]();
   }
   function initTexts()
   {
      this._winBackground.title = this.api.lang.getText("YOUR_SPELLS");
      this["\x1c\x0e\x14"]["\x16\x1d\x12"] = [this.api.lang.getText("NAME_BIG"),this.api.lang.getText("LEVEL")];
      this["\x1c\x13\x1a"].text = this.api.lang.getText("SPELL_BOOST_POINT");
      this["\x1d\x02\x02"].text = this.api.lang.getText("SPELL_TYPE");
      var _loc2_ = new ank.utils.ExtendedArray();
      _loc2_.push({label:this.api.lang.getText("WITHOUT_TYPE_FILTER"),type:-2});
      _loc2_.push({label:this.api.lang.getText("UPGRADABLE"),type:-1});
      _loc2_.push({label:this.api.lang.getText("SPELL_TAB_GUILD"),type:0});
      _loc2_.push({label:this.api.lang.getText("SPELL_TAB_WATER"),type:1});
      _loc2_.push({label:this.api.lang.getText("SPELL_TAB_FIRE"),type:2});
      _loc2_.push({label:this.api.lang.getText("SPELL_TAB_EARTH"),type:3});
      _loc2_.push({label:this.api.lang.getText("SPELL_TAB_AIR"),type:4});
      this["\x1c\f\x1b"].dataProvider = _loc2_;
      this["\x1c\f\x1b"].selectedIndex = 2;
   }
   function §\x1b\x16\x07§()
   {
      var _loc2_ = this.api.datacenter.Player.Spells;
      var _loc3_ = new ank.utils.ExtendedArray();
      for(var k in _loc2_)
      {
         var _loc4_ = _loc2_[k];
         if(_loc4_["\x16\x1b\x0e"] != -1 && (_loc4_["\x16\x1b\x0e"] == this["\x1d\x1c\x14"] || (this["\x1d\x1c\x14"] == -2 || this["\x1d\x1c\x14"] == -1)))
         {
            if(this["\x1d\x1c\x14"] == -1 && !this["\x16\x15\x19"](_loc4_))
            {
               continue;
            }
            _loc3_.push(_loc4_);
         }
      }
      if(this.api.kernel.OptionsManager.getOption("SeeAllSpell") && this.api.datacenter.Basics.canUseSeeAllSpell)
      {
         var _loc5_ = this.api.lang.getClassText(this.api.datacenter.Player.Guild).s;
         var _loc6_ = 0;
         while(_loc6_ < _loc5_.length)
         {
            var _loc7_ = _loc5_[_loc6_];
            var _loc8_ = false;
            var _loc9_ = 0;
            while(_loc9_ < _loc3_.length && !_loc8_)
            {
               _loc8_ = _loc3_[_loc9_].ID == _loc7_;
               _loc9_ = _loc9_ + 1;
            }
            var _loc10_ = new dofus.datacenter.Spell(_loc7_,1);
            if(!_loc8_ && (_loc10_["\x16\x1b\x0e"] == this["\x1d\x1c\x14"] || this["\x1d\x1c\x14"] == -2))
            {
               _loc3_.push(_loc10_);
            }
            _loc6_ = _loc6_ + 1;
         }
      }
      _loc3_.sortOn("_minPlayerLevel",Array.NUMERIC);
      this["\x1c\x0e\x14"].dataProvider = _loc3_;
   }
   function §\x1b\x14\x06§(§\x19\x10\x10§)
   {
      this["\x1c\x13\x18"].text = _loc2_ != undefined ? String(_loc2_) : String(this.api.datacenter.Player.BonusPointsSpell);
      this["\x1b\x16\x07"]();
   }
   function §\x18\x06\x1b§(§\x16\f\x12§, §\x1a\x02\x06§)
   {
      this["\x1e\b\x02"]._visible = !_loc2_;
      if(_loc3_ != undefined)
      {
         this["\x1e\b\x02"].spell = _loc3_;
      }
   }
   function §\x1a\x1d\n§(bShow)
   {
      this._sfivSpellFullInfosViewer.removeMovieClip();
      if(_loc2_)
      {
         this.attachMovie("SpellFullInfosViewer","_sfivSpellFullInfosViewer",this.getNextHighestDepth(),{_x:this["\x1d\x10\f"]._x,_y:this["\x1d\x10\f"]._y});
         this._sfivSpellFullInfosViewer.addEventListener("close",this);
      }
   }
   function §\x16\x10\x06§(§\x1a\x02\x06§)
   {
      this.api.sounds["\x17\x0e\x06"]["\x19\x1d\x02"]();
      if(this["\x16\x15\x19"](_loc2_) != undefined)
      {
         var _loc3_ = new dofus.datacenter.Spell(_loc2_.ID,_loc2_.level + 1);
         if(this.api.datacenter.Player.Level < _loc3_["\x18\x1d\x06"])
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("LEVEL_NEED_TO_BOOST",[_loc3_["\x18\x1d\x06"]]),"ERROR_BOX");
            return false;
         }
         this["\x18\x06\x1b"](true);
         this.api.network.Spells.boost(_loc2_.ID);
         this._sfivSpellFullInfosViewer.spell = _loc3_;
         return true;
      }
      return false;
   }
   function §\x17\x15\x17§(§\x1a\x02\x06§)
   {
      return _loc2_.level >= _loc2_["\x18\x19\x19"] ? -1 : dofus.Constants["\x1b\x06\x16"][_loc2_.level];
   }
   function §\x16\x15\x19§(§\x1a\x02\x06§)
   {
      if(_loc2_ != undefined)
      {
         if(this["\x17\x15\x17"](_loc2_) > this.api.datacenter.Player.BonusPointsSpell)
         {
            return false;
         }
         if(_loc2_.level < _loc2_["\x18\x19\x19"])
         {
            return true;
         }
      }
      return false;
   }
   function click(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "_btnClose")
      {
         this["\x16\x15\n"]();
      }
   }
   function itemDrag(oEvent)
   {
      if(_loc2_.row.item == undefined)
      {
         return undefined;
      }
      if(this.api.datacenter.Basics.canUseSeeAllSpell && this.api.datacenter.Player.Level < _loc2_.row.item._minPlayerLevel)
      {
         return undefined;
      }
      this.gapi.removeCursor();
      this.gapi["\x1a\x15\x19"](_loc2_.row.item,undefined,true);
   }
   function itemRollOver(oEvent)
   {
   }
   function itemRollOut(oEvent)
   {
   }
   function itemSelected(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\x0e\x14"]:
            if(_loc2_.row.item != undefined)
            {
               if(this._sfivSpellFullInfosViewer.spell.ID != _loc2_.row.item.ID)
               {
                  this["\x1a\x1d\n"](true);
                  this._sfivSpellFullInfosViewer.spell = _loc2_.row.item;
               }
               else
               {
                  this["\x1a\x1d\n"](false);
               }
            }
            break;
         case this["\x1c\f\x1b"]:
            this["\x1d\x1c\x14"] = _loc2_.target.selectedItem.type;
            this["\x1b\x16\x07"]();
      }
   }
   function bonusSpellsChanged(oEvent)
   {
      this["\x1b\x14\x06"](_loc2_.value);
   }
   function close(oEvent)
   {
      this["\x1a\x1d\n"](false);
   }
   function modelChanged(oEvent)
   {
      switch(_loc2_.eventName)
      {
         case "updateOne":
         case "updateAll":
      }
      this["\x1b\x16\x07"]();
      this["\x18\x06\x1b"](true);
   }
}
