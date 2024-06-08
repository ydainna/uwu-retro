class dofus.§\x18\x03\x10§.gapi.ui.Inventory extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Inventory";
   static var §\x17\x01\x02§ = {type1:["_ctr0"],type2:["_ctr1"],type3:["_ctr2","_ctr4"],type4:["_ctr3"],type5:["_ctr5"],type6:["_ctrMount"],type8:["_ctr1"],type9:["_ctr8","_ctrMount"],type10:["_ctr6"],type11:["_ctr7"],type12:["_ctr8","_ctr16"],type13:["_ctr9","_ctr10","_ctr11","_ctr12","_ctr13","_ctr14"],type7:["_ctr15"],type23:["_ctr1"]};
   static var arrayInventory = [9,14,15,16,17,18,6,19,21,20,8,22];
   var §\x1d\x1c\x15§ = 0;
   function Inventory()
   {
      super();
   }
   function §\x1e\x17\x13§()
   {
      if(this._currentOverContainer != undefined && this._currentOverContainer.contentData != undefined)
      {
         return dofus.datacenter.["\x18\x10\x15"](this._currentOverContainer.contentData);
      }
      return undefined;
   }
   function §\x01\x0e§()
   {
      return this["\x1c\x11\x13"];
   }
   function §\x11\x1a§(§\x17\n\x1c§)
   {
      this["\x1c\x0f\x06"].removeEventListener("modelChanged",this);
      this["\x1c\x0f\x06"] = _loc2_;
      this["\x1c\x0f\x06"].addEventListener("modelChanged",this);
      this.modelChanged();
      return this["\x1e\x18\x03"]();
   }
   function §\x1a\x1c\x1c§(bShow)
   {
      if(_loc2_)
      {
         this["\x1e\x10\x19"]._visible = true;
         this["\x1e\r\x10"]._visible = true;
         this["\x1d\f\x10"]._x = this["\x1d\t\x0b"]._x;
         this["\x1d\f\x10"]._y = this["\x1d\t\x0b"]._y;
         this._isvItemSetViewer._x = this["\x1d\t\x0b"]._x;
         this._isvItemSetViewer._y = this["\x1d\t\x0b"]._y;
      }
      else
      {
         this["\x1e\x10\x19"]._visible = false;
         this["\x1e\r\x10"]._visible = false;
         this["\x1d\f\x10"]._x = this["\x1e\x10\x19"]._x;
         this["\x1d\f\x10"]._y = this["\x1e\x10\x19"]._y;
         this._isvItemSetViewer._x = this["\x1e\x10\x19"]._x;
         this._isvItemSetViewer._y = this["\x1e\x10\x19"]._y;
      }
   }
   function §\x1a\x1e\x07§(bShow)
   {
      this["\x1d\x06\x07"]._visible = _loc2_;
      this._winLivingItems._visible = _loc2_;
      if(_loc2_)
      {
         this["\x1e\x10\x19"]._visible = false;
         this["\x1e\r\x10"]._visible = false;
         this["\x1d\f\x10"]._x = this["\x1d\t\x0b"]._x;
         this["\x1d\f\x10"]._y = this["\x1d\t\x0b"]._y;
         this._isvItemSetViewer._x = this["\x1d\t\x0b"]._x;
         this._isvItemSetViewer._y = this["\x1d\t\x0b"]._y;
      }
      else
      {
         this["\x1a\x1c\x1c"](this.api.kernel.OptionsManager.getOption("CharacterPreview"));
      }
   }
   function §\x1a\x1e\x02§(§\x19\x13\x07§)
   {
      if(_loc2_ == undefined)
      {
         this["\x18\x06\x0f"](true);
         this["\x18\x06\x0e"](true);
      }
      else
      {
         this["\x18\x06\x0f"](false);
         var _loc3_ = _loc2_["\x16\x1c\x1b"]();
         if(_loc3_["\x1a\n\x05"])
         {
            _loc3_.gfx = _loc3_["\x1a\n\x05"];
         }
         this["\x1c\x11\x13"]["\x18\x10\x17"] = _loc3_;
         if(_loc2_["\x18\r\x1d"])
         {
            var _loc4_ = this.api.datacenter.Player.["\x18\x10\x1d"].getItemAt(_loc2_["\x18\x10\x1c"]);
            if(_loc4_ == undefined)
            {
               _loc4_ = new dofus.datacenter..ItemSet(_loc2_["\x18\x10\x1c"],"",[]);
            }
            this["\x18\x06\x0e"](false);
            this._isvItemSetViewer["\x18\x10\x1b"] = _loc4_;
         }
         else
         {
            this["\x18\x06\x0e"](true);
         }
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus..graphics.gapi.ui.Inventory.CLASS_NAME);
      this.gapi.getUIComponent("Banner")["\x1a\x1c\x10"].setCurrentTab("Items");
      this["\x1a\x1c\x1c"](this.api.kernel.OptionsManager.getOption("CharacterPreview"));
      this["\x1a\x1e\x07"](false);
   }
   function destroy()
   {
      this.gapi.hideTooltip();
      if(this.api.datacenter.Game["\x18\r\x15"])
      {
         this.gapi.getUIComponent("Banner")["\x1a\x1c\x10"].setCurrentTab("Spells");
      }
      if(this._popupQuantity != undefined)
      {
         this._popupQuantity["\x16\x15\n"]();
      }
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this["\x1e\x10\t"].onRelease = function()
      {
      };
      this["\x1e\x10\t"].useHandCursor = false;
      this._winLivingItems.onRelease = function()
      {
      };
      this._winLivingItems.useHandCursor = false;
      this.addToQueue({object:this,method:this["\x18\x06\t"]});
      this.addToQueue({object:this,method:this["\x18\t\x18"]});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
      this["\x18\x06\x0f"](true);
      this["\x18\x06\x0e"](true);
      this["\x1c\x0e\x04"] = this._ctr15;
      this["\x1c\x0e\x05"] = this._ctr1;
      this._ctrMount = this._ctr16;
      this["\x1d\x11\x0f"]._visible = false;
      this["\x1d\x11\x0f"].stop();
      this["\x1d\x11\r"]._visible = false;
      this["\x1d\x11\x0e"]._visible = false;
      Mouse.addListener(this);
      this.api.datacenter.Player..addEventListener("kamaChanged",this);
      this.api.datacenter.Player..addEventListener("mountChanged",this);
      this.api.datacenter.Player..addEventListener("nameChanged",this);
      this.addToQueue({object:this,method:this.kamaChanged,params:[{value:this.api.datacenter.Player..Kama}]});
      this.addToQueue({object:this,method:this.mountChanged});
      this.addToQueue({object:this,method:this.initTexts});
   }
   function draw()
   {
      var _loc2_ = this.getStyle();
      this.addToQueue({object:this,method:this["\x1a\x1a\x10"],params:[_loc2_]});
   }
   function §\x1a\x1a\x10§(§\x1a\x02\x0e§)
   {
      this["\x1c\x11\x13"].styleName = _loc2_.itenviewerstyle;
   }
   function §\x18\x06\t§()
   {
      if(this.api.datacenter.Basics.aks_current_regional_version < 20)
      {
         this._ctrMount._visible = false;
         this["\x1d\r\x1c"]._visible = false;
      }
      else
      {
         this._ctrMount._visible = true;
      }
   }
   function addListeners()
   {
      this._cgGrid.addEventListener("dropItem",this);
      this._cgGrid.addEventListener("dragItem",this);
      this._cgGrid.addEventListener("selectItem",this);
      this._cgGrid.addEventListener("overItem",this);
      this._cgGrid.addEventListener("outItem",this);
      this._cgGrid.addEventListener("dblClickItem",this);
      this._cgGrid["\x19\x02\n"] = false;
      this._btnFilterEquipement.addEventListener("click",this);
      this._btnFilterNonEquipement.addEventListener("click",this);
      this._btnFilterRessoureces.addEventListener("click",this);
      this._btnFilterQuest.addEventListener("click",this);
      this._btnFilterSoul.addEventListener("click",this);
      this._btnFilterCards.addEventListener("click",this);
      this._btnFilterEquipement.addEventListener("over",this);
      this._btnFilterNonEquipement.addEventListener("over",this);
      this._btnFilterRessoureces.addEventListener("over",this);
      this._btnFilterQuest.addEventListener("over",this);
      this._btnFilterSoul.addEventListener("over",this);
      this._btnFilterCards.addEventListener("over",this);
      this._btnFilterEquipement.addEventListener("out",this);
      this._btnFilterNonEquipement.addEventListener("out",this);
      this._btnFilterRessoureces.addEventListener("out",this);
      this._btnFilterQuest.addEventListener("out",this);
      this._btnFilterSoul.addEventListener("out",this);
      this._btnFilterCards.addEventListener("out",this);
      this._btnClose.addEventListener("click",this);
      this._btnCustomSet.addEventListener("click",this);
      this._btnCustomSet.addEventListener("over",this);
      this._btnCustomSet.addEventListener("out",this);
      this._btnFilterRunes.addEventListener("click",this);
      this._btnFilterRunes.addEventListener("over",this);
      this._btnFilterRunes.addEventListener("out",this);
      this["\x1c\x11\x13"].addEventListener("useItem",this);
      this["\x1c\x11\x13"].addEventListener("batchUseItem",this);
      this["\x1c\x11\x13"].addEventListener("destroyItem",this);
      this["\x1c\x11\x13"].addEventListener("reinitializeItem",this);
      this["\x1c\x11\x13"].addEventListener("unlinkSkinItem",this);
      this["\x1c\x11\x13"].addEventListener("destroyMimibiote",this);
      this["\x1c\x11\x13"].addEventListener("targetItem",this);
      this._cbTypes.addEventListener("itemSelected",this);
      for(var a in dofus..graphics.gapi.ui.Inventory["\x17\x01\x02"])
      {
         var _loc2_ = dofus..graphics.gapi.ui.Inventory["\x17\x01\x02"][a];
         var _loc3_ = 0;
         while(_loc3_ < _loc2_.length)
         {
            var _loc4_ = this[_loc2_[_loc3_]];
            _loc4_.addEventListener("over",this);
            _loc4_.addEventListener("out",this);
            if(_loc4_.toolTipText == undefined)
            {
               _loc4_.toolTipText = this.api.lang.getText(_loc4_ != this._ctrMount ? "INVENTORY_" + a.toUpperCase() : "MOUNT");
            }
            _loc3_ = _loc3_ + 1;
         }
      }
   }
   function initTexts()
   {
      switch(this["\x1c\n\x18"]._name)
      {
         case "_btnFilterEquipement":
            this["\x1c\x17\x18"].text = this.api.lang.getText("EQUIPEMENT");
            break;
         case "_btnFilterNonEquipement":
            this["\x1c\x17\x18"].text = this.api.lang.getText("NONEQUIPEMENT");
            break;
         case "_btnFilterRessoureces":
            this["\x1c\x17\x18"].text = this.api.lang.getText("RESSOURECES");
            break;
         case "_btnFilterSoul":
            this["\x1c\x17\x18"].text = this.api.lang.getText("SOUL");
            break;
         case "_btnFilterCards":
            this["\x1c\x17\x18"].text = this.api.lang.getText("CARDS");
            break;
         case "_btnFilterQuest":
            this["\x1c\x17\x18"].text = this.api.lang.getText("QUEST_OBJECTS");
            break;
         case "_btnFilterRunes":
            this["\x1c\x17\x18"].text = this.api.lang.getText("RUNES");
            break;
         case "_btnCustomSet":
            this["\x1c\x17\x18"].text = this.api.lang.getText("CUSTOM_SET");
      }
      this["\x1d\x04\t"].text = this.api.lang.getText("WEIGHT");
      this["\x1e\x10\x19"].title = this.api.lang.getText("CHARACTER_PREVIEW",[this.api.datacenter.Player..Name]);
      this["\x1e\x10\t"].title = this.api.lang.getText("INVENTORY");
      this["\x1c\x1b\x19"].text = this.api.lang.getText("SELECT_ITEM");
      this._winLivingItems.title = this.api.lang.getText("MANAGE_ITEM");
   }
   function §\x18\t\x18§()
   {
      switch(this.api.datacenter.Basics.inventory_filter)
      {
         case "customSet":
            this._btnCustomSet.selected = true;
            this.showCustomSet(true);
            this["\x1c\n\x18"] = this._btnCustomSet;
            break;
         case "runes":
            this._btnFilterRunes.selected = true;
            this["\x1b\x1e\x19"] = dofus.Constants.FILTER_RUNES;
            this["\x1c\n\x18"] = this._btnFilterRunes;
            break;
         case "soul":
            this._btnFilterSoul.selected = true;
            this["\x1b\x1e\x19"] = dofus.Constants.FILTER_SOUL;
            this["\x1c\n\x18"] = this._btnFilterSoul;
            break;
         case "cards":
            this._btnFilterCards.selected = true;
            this["\x1b\x1e\x19"] = dofus.Constants.FILTER_CARDS;
            this["\x1c\n\x18"] = this._btnFilterCards;
            break;
         case "nonequipement":
            this._btnFilterNonEquipement.selected = true;
            this["\x1b\x1e\x19"] = dofus.Constants["\x17\x11\x01"];
            this["\x1c\n\x18"] = this._btnFilterNonEquipement;
            break;
         case "resources":
            this._btnFilterRessoureces.selected = true;
            this["\x1b\x1e\x19"] = dofus.Constants.FILTER_RESSOURCES;
            this["\x1c\n\x18"] = this._btnFilterRessoureces;
            break;
         case "quest":
            this._btnFilterQuest.selected = true;
            this["\x1b\x1e\x19"] = dofus.Constants["\x17\x11\x02"];
            this["\x1c\n\x18"] = this._btnFilterQuest;
            break;
         case "equipement":
         default:
            this._btnFilterEquipement.selected = true;
            this["\x1b\x1e\x19"] = dofus.Constants["\x17\x10\x18"];
            this["\x1c\n\x18"] = this._btnFilterEquipement;
      }
      if(this["\x1c\n\x18"] != this._btnCustomSet)
      {
         this.showCustomSet(false);
      }
   }
   function §\x18\t\x14§()
   {
      this["\x1e\r\x10"].zoom = 250;
      this["\x1a\x0b\t"]();
      this.dataProvider = this.api.datacenter.Player.Inventory;
   }
   function §\x1a\x0b\t§()
   {
      var _loc2_ = ank.battlefield.datacenter..Sprite(this.api.datacenter.Player.data);
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      var _loc3_ = new ank.battlefield.datacenter..Sprite("viewer",ank.battlefield.mc.Sprite,_loc2_.gfxFile,undefined,5);
      _loc3_.color1 = _loc2_.color1;
      _loc3_.color2 = _loc2_.color2;
      _loc3_.color3 = _loc2_.color3;
      _loc3_.accessories = _loc2_.accessories;
      _loc3_.mount = _loc2_.mount;
      this["\x1e\r\x10"]["\x1b\x04\x1b"] = _loc2_;
      this["\x1e\r\x10"]["\x1b\x07\x06"] = _loc3_;
   }
   function §\x17\r\x04§(§\x19\x13\x07§)
   {
      var _loc3_ = _loc2_["\x1b\f\x0f"];
      if(_loc3_ != undefined)
      {
         for(var k in dofus..graphics.gapi.ui.Inventory["\x17\x01\x02"])
         {
            for(var i in dofus..graphics.gapi.ui.Inventory["\x17\x01\x02"][k])
            {
               var _loc4_ = this[dofus..graphics.gapi.ui.Inventory["\x17\x01\x02"][k][i]];
               _loc4_.enabled = false;
               _loc4_.selected = false;
            }
         }
         var _loc5_ = this.api.lang["\x17\x19\x19"](_loc3_);
         if(_loc5_)
         {
            for(var i in dofus..graphics.gapi.ui.Inventory["\x17\x01\x02"]["type" + _loc3_])
            {
               var _loc6_ = this[dofus..graphics.gapi.ui.Inventory["\x17\x01\x02"]["type" + _loc3_][i]];
               new org.flashdevelop.utils.FlashConnect.trace(_loc6_.contentPath,"dofus.graphics.gapi.ui.Inventory::enabledFromSuperType","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/graphics/gapi/ui/Inventory.as",580);
               if(!(_loc3_ == 9 && _loc6_.contentPath == ""))
               {
                  _loc6_.enabled = true;
                  _loc6_.selected = true;
               }
            }
         }
         else
         {
            for(var i in dofus..graphics.gapi.ui.Inventory["\x17\x01\x02"]["type" + _loc3_])
            {
               var _loc7_ = this[dofus..graphics.gapi.ui.Inventory["\x17\x01\x02"]["type" + _loc3_][i]];
               _loc7_.enabled = true;
               _loc7_.selected = true;
            }
         }
         if(_loc2_["\x19\x06\x0f"])
         {
            this["\x1d\x11\r"]._visible = true;
            this["\x1d\x11\x0e"]._visible = false;
            this["\x1c\x0e\x04"].content._alpha = 30;
            this["\x1d\x11\x0f"].play();
            this["\x1d\x11\x0f"]._visible = true;
         }
         if(_loc3_ == 7 && this.api.datacenter.Player.["\x1b\x18\x1b"]["\x19\x06\x0f"])
         {
            this["\x1d\x11\r"]._visible = false;
            this["\x1d\x11\x0e"]._visible = true;
            this["\x1c\x0e\x05"].content._alpha = 30;
            this["\x1d\x11\x0f"].play();
            this["\x1d\x11\x0f"]._visible = true;
         }
      }
      else
      {
         for(var k in dofus..graphics.gapi.ui.Inventory["\x17\x01\x02"])
         {
            for(var i in dofus..graphics.gapi.ui.Inventory["\x17\x01\x02"][k])
            {
               var _loc8_ = this[dofus..graphics.gapi.ui.Inventory["\x17\x01\x02"][k][i]];
               _loc8_.enabled = true;
               if(_loc8_.selected)
               {
                  _loc8_.selected = false;
               }
            }
         }
         if(this.api.datacenter.Player.["\x1b\x18\x1b"]["\x19\x06\x0f"])
         {
            this["\x1d\x11\x0f"].gotoAndStop(1);
            this["\x1d\x11\x0f"]._visible = true;
            this["\x1d\x11\r"]._visible = true;
         }
      }
   }
   function §\x1b\x14\x14§(§\x16\x0f\x18§)
   {
      var _loc3_ = this.api.datacenter.Basics[dofus..graphics.gapi.ui.Inventory.CLASS_NAME + "_subfilter_" + this["\x1c\n\x18"]._name];
      this["\x1d\x1c\x15"] = _loc3_ != undefined ? _loc3_ : 0;
      var _loc4_ = new Object();
      if(!_loc2_)
      {
         for(var k in dofus..graphics.gapi.ui.Inventory["\x17\x01\x02"])
         {
            for(var i in dofus..graphics.gapi.ui.Inventory["\x17\x01\x02"][k])
            {
               _loc4_[dofus..graphics.gapi.ui.Inventory["\x17\x01\x02"][k][i]] = true;
            }
         }
      }
      var _loc5_ = new ank.utils.ExtendedArray();
      var _loc6_ = new ank.utils.ExtendedArray();
      var _loc7_ = new Object();
      for(var k in this["\x1c\x0f\x06"])
      {
         var _loc8_ = this["\x1c\x0f\x06"][k];
         var _loc9_ = _loc8_.position;
         if(_loc9_ != -1)
         {
            if(!_loc2_)
            {
               var _loc10_ = this["_ctr" + _loc9_];
               _loc10_.contentData = _loc8_;
               delete _loc4_[_loc10_._name];
            }
         }
         else if(this["\x1b\x1e\x19"][_loc8_["\x1b\f\x0f"]])
         {
            if(_loc8_.type == this["\x1d\x1c\x15"] || this["\x1d\x1c\x15"] == 0)
            {
               _loc5_.push(_loc8_);
            }
            var _loc11_ = _loc8_.type;
            if(_loc7_[_loc11_] != true)
            {
               _loc6_.push({label:this.api.lang["\x17\x19\x1a"](_loc11_).n,id:_loc11_});
               _loc7_[_loc11_] = true;
            }
         }
      }
      _loc6_.sortOn("label");
      _loc6_.splice(0,0,{label:this.api.lang.getText("WITHOUT_TYPE_FILTER"),id:0});
      this._cbTypes.dataProvider = _loc6_;
      this["\x1a\x1a\x1a"](this["\x1d\x1c\x15"]);
      this._cgGrid.dataProvider = _loc5_;
      if(!_loc2_)
      {
         for(var k in _loc4_)
         {
            if(this[k] != this._ctrMount)
            {
               this[k].contentData = undefined;
            }
         }
      }
      this["\x1a\x0e\x01"]();
   }
   function §\x1a\x0e\x01§()
   {
      this["\x1c\x0e\x04"].content._alpha = 100;
      this["\x1c\x0e\x05"].content._alpha = 100;
      this["\x1d\x11\x0f"].gotoAndStop(1);
      if(this.api.datacenter.Player.["\x1b\x18\x1b"]["\x19\x06\x0f"])
      {
         this["\x1d\x11\x0f"]._visible = true;
         this["\x1d\x11\r"]._visible = true;
         this["\x1d\x11\x0e"]._visible = false;
      }
      else
      {
         this["\x1d\x11\x0f"]._visible = false;
         this["\x1d\x11\r"]._visible = false;
         this["\x1d\x11\x0e"]._visible = false;
      }
   }
   function §\x1a\x1a\x1a§(§\x19\x10\x07§)
   {
      var _loc3_ = this._cbTypes.dataProvider;
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         if(_loc3_[_loc4_].id == _loc2_)
         {
            this._cbTypes.selectedIndex = _loc4_;
            return undefined;
         }
         _loc4_ = _loc4_ + 1;
      }
      this["\x1d\x1c\x15"] = 0;
      this._cbTypes.selectedIndex = this["\x1d\x1c\x15"];
   }
   function askReinitialize(§\x19\x13\x07§)
   {
      var _loc3_ = this.gapi.loadUIComponent("AskYesNo","AskYesNoReinitialize",{title:this.api.lang.getText("QUESTION"),text:this.api.lang.getText("RESET_PET_CONFIRM"),params:{item:_loc2_}});
      _loc3_.addEventListener("yes",this);
   }
   function §\x16\x05\x1b§(§\x19\x13\x07§, nQuantity)
   {
      if(_loc2_.Quantity == 1)
      {
         var _loc4_ = this.gapi.loadUIComponent("AskYesNo","AskYesNoDestroy",{title:this.api.lang.getText("QUESTION"),text:this.api.lang.getText("DO_U_DESTROY",[_loc3_,_loc2_.name]),params:{item:_loc2_,quantity:_loc3_}});
         _loc4_.addEventListener("yes",this);
      }
      else
      {
         this.api.network.Items.destroy(_loc2_.ID,_loc3_);
      }
   }
   function §\x18\x06\x0f§(§\x16\f\x12§)
   {
      this["\x1c\x11\x13"]._visible = !_loc2_;
      this["\x1d\f\x13"]._visible = !_loc2_;
      this["\x1d\f\x14"]._visible = !_loc2_;
   }
   function §\x18\x06\x0e§(§\x16\f\x12§)
   {
      if(_loc2_)
      {
         this._isvItemSetViewer.removeMovieClip();
      }
      else if(this._isvItemSetViewer == undefined)
      {
         this.attachMovie("ItemSetViewer","_isvItemSetViewer",this.getNextHighestDepth(),{_x:this["\x1d\f\x10"]._x,_y:this["\x1d\f\x10"]._y});
      }
   }
   function showCustomSet(bShow)
   {
      this._cbTypes._visible = !_loc2_;
      this._cgGrid._visible = !_loc2_;
      if(_loc2_ && (this._isvItemSetViewer == undefined || this._isvItemSetViewer != "_isvItemSetViewer"))
      {
         this.attachMovie("UI_CustomSet","_icsCustomSet",this.getNextHighestDepth(),{_x:581,_y:147});
      }
      else
      {
         this._icsCustomSet.removeMovieClip();
      }
   }
   function nameChanged(oEvent)
   {
      this["\x1e\x10\x19"].title = this.api.lang.getText("CHARACTER_PREVIEW",[_loc2_.value]);
   }
   function kamaChanged(oEvent)
   {
      this["\x1c\x19\x1c"].text = new ank.utils.ExtendedString(_loc2_.value)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
   }
   function click(oEvent)
   {
      if(_loc2_.target == this._btnClose)
      {
         this["\x16\x15\n"]();
         return undefined;
      }
      if(this._mcArrowAnimation._visible)
      {
         this._mcArrowAnimation._visible = false;
      }
      if(_loc2_.target != this["\x1c\n\x18"])
      {
         this.api.sounds["\x17\x0e\x06"]["\x19\x19\x06"]();
         this["\x1c\n\x18"].selected = false;
         this["\x1c\n\x18"] = _loc2_.target;
         switch(_loc2_.target._name)
         {
            case "_btnCustomSet":
               this["\x1c\x17\x18"].text = this.api.lang.getText("CUSTOM_SET");
               this.showCustomSet(true);
               this.api.datacenter.Basics.inventory_filter = "customSet";
               break;
            case "_btnFilterRunes":
               this["\x1b\x1e\x19"] = dofus.Constants.FILTER_RUNES;
               this["\x1c\x17\x18"].text = this.api.lang.getText("RUNES");
               this.api.datacenter.Basics.inventory_filter = "runes";
               break;
            case "_btnFilterSoul":
               this["\x1b\x1e\x19"] = dofus.Constants.FILTER_SOUL;
               this["\x1c\x17\x18"].text = this.api.lang.getText("SOUL");
               this.api.datacenter.Basics.inventory_filter = "soul";
               break;
            case "_btnFilterCards":
               this["\x1b\x1e\x19"] = dofus.Constants.FILTER_CARDS;
               this["\x1c\x17\x18"].text = this.api.lang.getText("CARDS");
               this.api.datacenter.Basics.inventory_filter = "cards";
               break;
            case "_btnFilterEquipement":
               this["\x1b\x1e\x19"] = dofus.Constants["\x17\x10\x18"];
               this["\x1c\x17\x18"].text = this.api.lang.getText("EQUIPEMENT");
               this.api.datacenter.Basics.inventory_filter = "equipement";
               break;
            case "_btnFilterNonEquipement":
               this["\x1b\x1e\x19"] = dofus.Constants["\x17\x11\x01"];
               this["\x1c\x17\x18"].text = this.api.lang.getText("NONEQUIPEMENT");
               this.api.datacenter.Basics.inventory_filter = "nonequipement";
               break;
            case "_btnFilterRessoureces":
               this["\x1b\x1e\x19"] = dofus.Constants.FILTER_RESSOURCES;
               this["\x1c\x17\x18"].text = this.api.lang.getText("RESSOURECES");
               this.api.datacenter.Basics.inventory_filter = "resources";
               break;
            case "_btnFilterQuest":
               this["\x1b\x1e\x19"] = dofus.Constants["\x17\x11\x02"];
               this["\x1c\x17\x18"].text = this.api.lang.getText("QUEST_OBJECTS");
               this.api.datacenter.Basics.inventory_filter = "quest";
         }
         this["\x1b\x14\x14"](true);
         if(this["\x1c\n\x18"] != this._btnCustomSet)
         {
            this.showCustomSet(false);
         }
      }
      else
      {
         _loc2_.target.selected = true;
      }
   }
   function modelChanged(oEvent)
   {
      switch(_loc2_.eventName)
      {
         case "updateOne":
         case "updateAll":
      }
      this["\x1b\x14\x14"](false);
      this["\x18\x06\x0f"](true);
      this["\x18\x06\x0e"](true);
      this["\x1a\x1e\x07"](false);
   }
   function onMouseUp()
   {
      this.addToQueue({object:this,method:this["\x17\r\x04"]});
   }
   function dragItem(oEvent)
   {
      this.gapi.removeCursor();
      if(!this.api.datacenter.Player.checkCanMoveItem())
      {
         return undefined;
      }
      if(_loc2_.target.contentData == undefined)
      {
         return undefined;
      }
      if(_loc2_.target.contentData["\x18\r\x0b"])
      {
         return undefined;
      }
      this["\x17\r\x04"](_loc2_.target.contentData);
      this.gapi["\x1a\x15\x19"](_loc2_.target.contentData);
   }
   function dropItem(oEvent)
   {
      if(!this.api.datacenter.Player.checkCanMoveItem())
      {
         return undefined;
      }
      var _loc3_ = this.gapi["\x17\x16\x07"]();
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      if(_loc3_.isShortcut)
      {
         this.api.network.InventoryShortcuts.sendInventoryShortcutRemove(_loc3_.position);
         return undefined;
      }
      if(_loc2_.target._parent == this)
      {
         var _loc4_ = Number(_loc2_.target._name.substr(4));
      }
      else
      {
         if(_loc3_.position == -1)
         {
            this["\x1a\x0e\x01"]();
            return undefined;
         }
         _loc4_ = -1;
      }
      if(_loc3_.position == _loc4_)
      {
         this["\x1a\x0e\x01"]();
         return undefined;
      }
      this.gapi.removeCursor();
      if(_loc3_.Quantity > 1 && (_loc4_ == -1 || _loc4_ == 16))
      {
         var _loc5_ = this.gapi.loadUIComponent("PopupQuantity","PopupQuantity",{value:_loc3_.Quantity,max:_loc3_.Quantity,params:{type:"move",position:_loc4_,item:_loc3_}});
         _loc5_.addEventListener("validate",this);
         this._popupQuantity = _loc5_;
      }
      else
      {
         this.api.network.Items.movement(_loc3_.ID,_loc4_);
      }
   }
   function selectItem(oEvent)
   {
      if(Key.isDown(dofus.Constants["\x16\x19\x13"]) && _loc2_.target.contentData != undefined)
      {
         this.api.kernel.GameManager["\x18\n\x1d"](_loc2_.target.contentData);
      }
      else
      {
         this["\x1a\x1e\x02"](_loc2_.target.contentData);
         this["\x1a\x1e\x07"](_loc2_.target.contentData["\x1b\x02\r"] == true);
         if(_loc2_.target.contentData["\x1b\x02\r"])
         {
            this["\x1d\x06\x07"]["\x18\x10\x17"] = _loc2_.target.contentData;
         }
      }
   }
   function overItem(oEvent)
   {
      var _loc3_ = _loc2_.target;
      var _loc4_ = dofus.datacenter.["\x18\x10\x15"](_loc3_.contentData);
      _loc4_["\x1b\x01\b"](_loc3_,_loc4_.style);
      this._currentOverContainer = _loc3_;
   }
   function outItem(oEvent)
   {
      this.gapi.hideTooltip();
      this._currentOverContainer = undefined;
   }
   function dblClickItem(oEvent)
   {
      if(!this.api.datacenter.Player.checkCanMoveItem())
      {
         return undefined;
      }
      var _loc3_ = _loc2_.target.contentData;
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      if(!_loc3_.isEquiped)
      {
         if(_loc3_canUse && this.api.datacenter.Player.canUseObject)
         {
            if(Key.isDown(Key.CONTROL) || Key.isDown(Key.SHIFT))
            {
               this._popupQuantity = dofus..graphics.gapi.ui.Inventory.askBatchUseItem(this.api,_loc3_);
            }
            else
            {
               this.api.network.Items.use(_loc3_.ID);
            }
         }
         else if(this.api.lang.getConfigText("DOUBLE_CLICK_TO_EQUIP"))
         {
            this.api.network.Items["\x17\r\x17"](_loc3_);
         }
      }
      else
      {
         this.api.network.Items.movement(_loc3_.ID,-1);
      }
   }
   function §\x17\n\x11§()
   {
      if(!this.api.datacenter.Player.checkCanMoveItem())
      {
         return undefined;
      }
      var _loc2_ = this.gapi["\x17\x16\x07"]();
      if(_loc2_ != undefined && _loc2_.isShortcut)
      {
         return undefined;
      }
      if(!_loc2_["\x16\x16\x02"])
      {
         this.gapi.loadUIComponent("AskOk","AskOkCantDrop",{title:this.api.lang.getText("IMPOSSIBLE"),text:this.api.lang.getText("CANT_DROP_ITEM")});
         return undefined;
      }
      this.gapi.removeCursor();
      if(_loc2_.Quantity > 1)
      {
         var _loc3_ = this.gapi.loadUIComponent("PopupQuantity","PopupQuantity",{value:1,max:_loc2_.Quantity,params:{type:"drop",item:_loc2_}});
         _loc3_.addEventListener("validate",this);
         this._popupQuantity = _loc3_;
      }
      else if(this.api.kernel.OptionsManager.getOption("ConfirmDropItem"))
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("CONFIRM_DROP_ITEM"),"CAUTION_YESNO",{name:"ConfirmDropOne",params:{item:_loc2_},listener:this});
      }
      else
      {
         this.api.network.Items.drop(_loc2_.ID,1);
      }
   }
   function validate(oEvent)
   {
      switch(_loc2_.params.type)
      {
         case "destroy":
            if(_loc2_.value > 0 && !_global.isNaN(Number(_loc2_.value)))
            {
               var _loc3_ = Math.min(_loc2_.value,_loc2_.params.item.Quantity);
               this["\x16\x05\x1b"](_loc2_.params.item,_loc3_);
            }
            break;
         case "drop":
            this.gapi.removeCursor();
            if(_loc2_.value > 0 && !_global.isNaN(Number(_loc2_.value)))
            {
               if(this.api.kernel.OptionsManager.getOption("ConfirmDropItem"))
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("CONFIRM_DROP_ITEM"),"CAUTION_YESNO",{name:"ConfirmDrop",params:{item:_loc2_.params.item,minValue:_loc2_.value},listener:this});
               }
               else
               {
                  this.api.network.Items.drop(_loc2_.params.item.ID,Math.min(_loc2_.value,_loc2_.params.item.Quantity));
               }
            }
            break;
         case "move":
            if(_loc2_.value > 0 && !_global.isNaN(Number(_loc2_.value)))
            {
               this.api.network.Items.movement(_loc2_.params.item.ID,_loc2_.params.position,Math.min(_loc2_.value,_loc2_.params.item.Quantity));
               break;
            }
      }
   }
   function useItem(oEvent)
   {
      if(!_loc2_.itemcanUse || !this.api.datacenter.Player.canUseObject)
      {
         return undefined;
      }
      this.api.network.Items.use(_loc2_.item.ID);
   }
   function batchUseItem(oEvent)
   {
      var _loc3_ = _loc2_.item;
      if(!_loc3_canUse || !this.api.datacenter.Player.canUseObject)
      {
         return undefined;
      }
      this._popupQuantity = dofus..graphics.gapi.ui.Inventory.askBatchUseItem(this.api,_loc3_);
   }
   static function askBatchUseItem(api, §\x19\x13\x07§)
   {
      var _loc3_ = api.ui;
      var _loc4_ = "POPUP_QUANTITY_BATCH_USE_ITEM_DESCRIPTION";
      var _loc5_ = _loc2_.name;
      var _loc6_ = [function(§\x19\n\x0e§, §\x19\t\x19§, §\x19\x10\x10§)
      {
         return String(_loc4_);
      },_loc5_];
      var _loc7_ = Math.min(dofus.aks.Items.MAX_BATCH_ITEM_USE,_loc2_.Quantity);
      var _loc8_ = _loc3_.loadUIComponent("PopupQuantityWithDescription","PopupQuantity",{descriptionLangKey:_loc4_,descriptionLangKeyParams:_loc6_,value:1,max:_loc7_,params:{type:"batchUseItem",item:_loc2_}},{bForceLoad:true});
      var _loc9_ = new Object();
      _loc9_.validate = function(oEvent)
      {
         var _loc3_ = _loc2_.params.item.ID;
         api.network.Items.use(_loc3_,undefined,undefined,undefined,_loc2_.value);
      };
      _loc8_.addEventListener("validate",_loc9_);
      return _loc8_;
   }
   function reinitializeItem(oEvent)
   {
      this.askReinitialize(_loc2_.item);
   }
   function destroyItem(oEvent)
   {
      if(_loc2_.item.Quantity > 1)
      {
         var _loc3_ = this.gapi.loadUIComponent("PopupQuantity","PopupQuantity",{value:1,max:_loc2_.item.Quantity,params:{type:"destroy",item:_loc2_.item}});
         _loc3_.addEventListener("validate",this);
         this._popupQuantity = _loc3_;
      }
      else
      {
         this["\x16\x05\x1b"](_loc2_.item,1);
      }
   }
   function destroyMimibiote(oEvent)
   {
      var _loc3_ = _loc2_.item;
      var _loc4_ = !_loc3_.isSkinItemCeremonial ? "DO_U_DESTROY_MIMIBIOTE" : "DO_U_DESTROY_MIMIBIOTE_ON_CEREMONIAL";
      var _loc5_ = this.gapi.loadUIComponent("AskYesNo","AskYesNoDestroyMimibiote",{title:this.api.lang.getText("QUESTION"),text:this.api.lang.getText(_loc4_,[_loc3_.name]),params:{item:_loc3_}});
      _loc5_.addEventListener("yes",this);
   }
   function unlinkSkinItem(oEvent)
   {
      this.api.network.Items.destroyMimibiote(_loc2_.item.ID);
   }
   function targetItem(oEvent)
   {
      if(!_loc2_.item["\x16\x16\x15"] || !this.api.datacenter.Player.canUseObject)
      {
         return undefined;
      }
      this.api.kernel.GameManager["\x1b\r\b"](_loc2_.item);
      this["\x16\x15\n"]();
   }
   function yes(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "AskYesNoConfirmDropOne":
            this.api.network.Items.drop(_loc2_.target.params.item.ID,1);
            break;
         case "AskYesNoConfirmDrop":
            this.api.network.Items.drop(_loc2_.params.item.ID,Math.min(_loc2_.params.minValue,_loc2_.params.item.Quantity));
            break;
         case "AskYesNoDestroyMimibiote":
            this.api.network.Items.destroyMimibiote(_loc2_.target.params.item.ID);
            break;
         case "AskYesNoReinitialize":
            this.api.network.Items.reinitialize(_loc2_.target.params.item.ID);
            break;
         default:
            this.api.network.Items.destroy(_loc2_.target.params.item.ID,_loc2_.target.params.quantity);
      }
   }
   function itemSelected(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "_cbTypes")
      {
         this["\x1d\x1c\x15"] = this._cbTypes.selectedItem.id;
         this.api.datacenter.Basics[dofus..graphics.gapi.ui.Inventory.CLASS_NAME + "_subfilter_" + this["\x1c\n\x18"]._name] = this["\x1d\x1c\x15"];
         this["\x1b\x14\x14"]();
      }
   }
   function mountChanged(oEvent)
   {
      var _loc3_ = this.api.datacenter.Player.mount;
      if(_loc3_ != undefined)
      {
         this._ctrMount.contentPath = "UI_InventoryMountIcon";
         this["\x1d\r\x1c"]._visible = false;
      }
      else
      {
         this._ctrMount.contentPath = "";
         this["\x1d\r\x1c"]._visible = true;
      }
      this["\x18\x06\t"]();
   }
   function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnFilterEquipement:
            this.api.ui.showTooltip(this.api.lang.getText("EQUIPEMENT"),_loc2_.target,-20);
            break;
         case this._btnFilterNonEquipement:
            this.api.ui.showTooltip(this.api.lang.getText("NONEQUIPEMENT"),_loc2_.target,-20);
            break;
         case this._btnFilterRessoureces:
            this.api.ui.showTooltip(this.api.lang.getText("RESSOURECES"),_loc2_.target,-20);
            break;
         case this._btnFilterQuest:
            this.api.ui.showTooltip(this.api.lang.getText("QUEST_OBJECTS"),_loc2_.target,-20);
            break;
         case this._btnFilterSoul:
            this.api.ui.showTooltip(this.api.lang.getText("SOUL"),_loc2_.target,-20);
            break;
         case this._btnFilterCards:
            this.api.ui.showTooltip(this.api.lang.getText("CARDS"),_loc2_.target,-20);
            break;
         case this._btnFilterRunes:
            this.api.ui.showTooltip(this.api.lang.getText("RUNES"),_loc2_.target,-20);
            break;
         case this._btnCustomSet:
            this.api.ui.showTooltip(this.api.lang.getText("CUSTOM_SET"),_loc2_.target,-20);
            break;
         default:
            if(_loc2_.target.contentData != undefined)
            {
               this.overItem(_loc2_);
               break;
            }
            this.api.ui.showTooltip(_loc2_.target.toolTipText,_loc2_.target,-20);
            break;
      }
   }
   function out(oEvent)
   {
      this.api.ui.hideTooltip();
      if(this._currentOverContainer != undefined)
      {
         this.outItem(_loc2_);
      }
   }
}
