class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.InventoryViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "InventoryViewer";
   var §\x1c\x02\x04§ = true;
   var §\x1c\x04\x03§ = true;
   var §\x1d\x1c\x15§ = 0;
   var §\x1d\x18\x02§ = 0;
   var §\x1d\x17\x1c§ = -1;
   function InventoryViewer()
   {
      super();
   }
   function §\x11\x1a§(§\x17\n\x1c§)
   {
      this["\x1c\x0f\x06"].removeEventListener("modelChanged",this);
      this["\x1c\x0f\x06"] = _loc2_;
      this["\x1c\x0f\x06"].addEventListener("modelChanged",this);
      if(this["\x18\t\x1c"])
      {
         this.modelChanged();
      }
      return this["\x1e\x18\x03"]();
   }
   function §\x1e\x18\x03§()
   {
      return this["\x1c\x0f\x06"];
   }
   function §\x16\x14§(§\x19\x13\n§)
   {
      _loc2_.removeEventListener("kamaChanged",this);
      this["\x1e\x04\x02"] = _loc2_;
      _loc2_.addEventListener("kamaChanged",this);
      if(this["\x18\t\x1c"])
      {
         this.kamaChanged();
      }
      return this.kamasProvider;
   }
   function §\x0f\x05§(§\x16\t\x0b§)
   {
      this["\x1c\x02\x04"] = _loc2_;
      return this.autoFilter;
   }
   function §\x13\x10§(§\x16\x0b\x13§)
   {
      this["\x1c\x04\x03"] = _loc2_;
      return this.filterAtStart;
   }
   function §\x1e\x17\f§()
   {
      return this["\x1d\x14\x10"];
   }
   function §\x1e\x17\x1d§()
   {
      return this["\x1c\x11\x07"];
   }
   function §\x11\x18§(§\x18\b\x0f§)
   {
      this["\x1c\x11\x07"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this.modelChanged();
      }
      return this["\x1e\x17\x1d"]();
   }
   function §\b\x15§()
   {
      return this["\x1e\x03\n"].selectedIndex;
   }
   function hideNonEquipementFilters()
   {
      this["\x1c\n\x06"]._x = this._btnFilterNonEquipement._x;
      this._btnFilterNonEquipement._visible = false;
      this._btnFilterRessoureces._visible = false;
      this._btnFilterSoul._visible = false;
      this._btnFilterCards._visible = false;
      this._btnFilterRunes._visible = false;
   }
   function hideNonCardsFilters()
   {
      this["\x1c\n\x06"]._x = this._btnFilterNonEquipement._x;
      this._btnFilterCards._x = this._btnFilterEquipement._x;
      this._btnFilterEquipement._visible = false;
      this._btnFilterNonEquipement._visible = false;
      this._btnFilterRessoureces._visible = false;
      this._btnFilterSoul._visible = false;
      this._btnFilterRunes._visible = false;
      this["\x1a\x16\x14"](4);
   }
   function §\x1a\x16\x14§(§\x19\x07\x16§)
   {
      if(_loc2_ == this["\x1d\x14\x10"])
      {
         return undefined;
      }
      switch(_loc2_)
      {
         case dofus.Constants["\x17\x10\x1b"]:
            this.click({target:this._btnFilterEquipement});
            this._btnFilterEquipement.selected = true;
            break;
         case dofus.Constants["\x17\x10\x1c"]:
            this.click({target:this._btnFilterNonEquipement});
            this._btnFilterNonEquipement.selected = true;
            break;
         case dofus.Constants.FILTER_ID_RESSOURCES:
            this.click({target:this._btnFilterRessoureces});
            this._btnFilterRessoureces.selected = true;
            break;
         case dofus.Constants.FILTER_ID_SOUL:
            this.click({target:this._btnFilterSoul});
            this._btnFilterSoul.selected = true;
            break;
         case dofus.Constants.FILTER_ID_CARDS:
            this.click({target:this._btnFilterCards});
            this._btnFilterCards.selected = true;
            break;
         case dofus.Constants.FILTER_ID_RUNES:
            this.click({target:this._btnFilterRunes});
            this._btnFilterRunes.selected = true;
      }
   }
   function createChildren()
   {
      if(this["\x1c\x04\x03"])
      {
         if(this["\x1c\x02\x04"])
         {
            this.addToQueue({object:this,method:this["\x1a\x18\x19"]});
         }
         else
         {
            this.addToQueue({object:this,method:this["\x1a\x16\x14"],params:[this["\x17\x16\r"]()]});
         }
      }
   }
   function addListeners()
   {
      this._btnFilterEquipement.addEventListener("click",this);
      this._btnFilterNonEquipement.addEventListener("click",this);
      this._btnFilterRessoureces.addEventListener("click",this);
      this._btnFilterSoul.addEventListener("click",this);
      this._btnFilterCards.addEventListener("click",this);
      this._btnFilterRunes.addEventListener("click",this);
      this["\x1c\n\x06"].addEventListener("click",this);
      this._btnFilterEquipement.addEventListener("over",this);
      this._btnFilterNonEquipement.addEventListener("over",this);
      this._btnFilterRessoureces.addEventListener("over",this);
      this._btnFilterSoul.addEventListener("over",this);
      this._btnFilterCards.addEventListener("over",this);
      this._btnFilterRunes.addEventListener("over",this);
      this["\x1c\n\x06"].addEventListener("over",this);
      this._btnFilterEquipement.addEventListener("out",this);
      this._btnFilterNonEquipement.addEventListener("out",this);
      this._btnFilterRessoureces.addEventListener("out",this);
      this._btnFilterSoul.addEventListener("out",this);
      this._btnFilterCards.addEventListener("out",this);
      this._btnFilterRunes.addEventListener("out",this);
      this["\x1c\n\x06"].addEventListener("out",this);
      this._cbTypes.addEventListener("itemSelected",this);
   }
   function §\x17\x16\r§()
   {
      return dofus.Constants["\x17\x10\x1b"];
   }
   function §\x1a\x18\x19§()
   {
      var _loc2_ = new Array({count:0,id:dofus.Constants["\x17\x10\x1b"]},{count:0,id:dofus.Constants["\x17\x10\x1c"]},{count:0,id:dofus.Constants.FILTER_ID_RESSOURCES},{count:0,id:dofus.Constants.FILTER_ID_SOUL},{count:0,id:dofus.Constants.FILTER_ID_CARDS},{count:0,id:dofus.Constants.FILTER_ID_RUNES});
      for(var k in this["\x1c\x0f\x06"])
      {
         var _loc3_ = this["\x1c\x0f\x06"][k].superType;
         if(dofus.Constants["\x17\x10\x18"][_loc3_])
         {
            _loc2_[0].count++;
         }
         if(dofus.Constants["\x17\x11\x01"][_loc3_])
         {
            _loc2_[1].count++;
         }
         if(dofus.Constants.FILTER_RESSOURCES[_loc3_])
         {
            _loc2_[2].count++;
         }
         if(dofus.Constants.FILTER_SOUL[_loc3_])
         {
            _loc2_[3].count++;
         }
         if(dofus.Constants.FILTER_CARDS[_loc3_])
         {
            _loc2_[4].count++;
         }
         if(dofus.Constants.FILTER_RUNES[_loc3_])
         {
            _loc2_[5].count++;
         }
      }
      _loc2_.reverse.sortOn("count");
      this["\x1a\x16\x14"](_loc2_[0].id);
   }
   function §\x1b\x14\x14§()
   {
      var _loc2_ = this.api.datacenter.Basics[dofus.graphics.gapi.controls.InventoryViewer.CLASS_NAME + "_subfilter_" + this["\x1c\n\x18"]._name + "_" + this._name];
      this["\x1d\x1c\x15"] = _loc2_ != undefined ? _loc2_ : 0;
      var _loc3_ = new ank.utils.ExtendedArray();
      var _loc4_ = new ank.utils.ExtendedArray();
      var _loc5_ = new Object();
      for(var k in this["\x1c\x0f\x06"])
      {
         var _loc6_ = this["\x1c\x0f\x06"][k];
         var _loc7_ = _loc6_.position;
         if(_loc7_ == -1 && this["\x1b\x1e\x19"][_loc6_.superType])
         {
            if(_loc6_.type == this["\x1d\x1c\x15"] || this["\x1d\x1c\x15"] == 0)
            {
               if(this["\x1c\x11\x07"] == null || this["\x1c\x11\x07"] == undefined || this["\x1c\x11\x07"]["\x18\x0e\x0b"](_loc6_))
               {
                  _loc3_.push(_loc6_);
               }
            }
            var _loc8_ = _loc6_.type;
            if(_loc5_[_loc8_] != true)
            {
               _loc4_.push({label:this.api.lang["\x17\x19\x1a"](_loc8_).n,id:_loc8_});
               _loc5_[_loc8_] = true;
            }
         }
      }
      _loc4_.sortOn("label");
      _loc4_.splice(0,0,{label:this.api.lang.getText("WITHOUT_TYPE_FILTER"),id:0});
      this._cbTypes.dataProvider = _loc4_;
      this["\x1a\x1a\x1a"](this["\x1d\x1c\x15"]);
      this["\x1e\x03\n"].dataProvider = _loc3_;
      this["\x1b\x04\x13"](this["\x1e\b\x18"]);
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
   function §\x1a\x1e\x19§()
   {
      var _loc2_ = this.gapi.loadUIComponent("InventorySearch","InventorySearch",{_oDataProvider:this["\x1e\x03\n"].dataProvider},{bAlwaysOnTop:true});
      _loc2_.addEventListener("select",this);
   }
   function §\x1b\x04\x13§(§\x1a\x1b\x0e§)
   {
      if(!_loc2_)
      {
         return undefined;
      }
      this["\x1e\x03\n"].dataProvider.sortOn(_loc2_,Array.NUMERIC);
      this["\x1e\b\x18"] = _loc2_;
      this["\x1d\x18\x02"] = this["\x1e\x03\n"].dataProvider.length;
      this["\x1d\x17\x1c"] = this["\x1d\x14\x10"];
      this["\x1e\x03\n"].modelChanged();
   }
   function modelChanged()
   {
      this["\x1b\x14\x14"]();
   }
   function kamaChanged(oEvent)
   {
      if(_loc2_.value == undefined)
      {
         this["\x1c\x19\x1c"].text = "0";
      }
      else
      {
         this["\x1c\x19\x1c"].text = new ank.utils.ExtendedString(_loc2_.value)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
      }
   }
   function click(oEvent)
   {
      if(_loc2_.target == this["\x1c\n\x06"])
      {
         var _loc3_ = this.api.ui["\x17\x02\x19"]();
         _loc3_["\x15\x1d\x12"](this.api.lang.getText("INVENTORY_SEARCH"),this,this["\x1a\x1e\x19"]);
         _loc3_["\x15\x1d\x12"](this.api.lang.getText("INVENTORY_DATE_SORT"),this,this["\x1b\x04\x13"],["_itemDateId"]);
         _loc3_["\x15\x1d\x12"](this.api.lang.getText("INVENTORY_NAME_SORT"),this,this["\x1b\x04\x13"],["_itemName"]);
         _loc3_["\x15\x1d\x12"](this.api.lang.getText("INVENTORY_TYPE_SORT"),this,this["\x1b\x04\x13"],["_itemType"]);
         _loc3_["\x15\x1d\x12"](this.api.lang.getText("INVENTORY_LEVEL_SORT"),this,this["\x1b\x04\x13"],["_itemLevel"]);
         _loc3_["\x15\x1d\x12"](this.api.lang.getText("INVENTORY_POD_SORT"),this,this["\x1b\x04\x13"],["_itemWeight"]);
         _loc3_["\x15\x1d\x12"](this.api.lang.getText("INVENTORY_QTY_SORT"),this,this["\x1b\x04\x13"],["_nQuantity"]);
         _loc3_.show(_root._xmouse,_root._ymouse);
         return undefined;
      }
      if(_loc2_.target != this["\x1c\n\x18"])
      {
         this["\x1c\n\x18"].selected = false;
         this["\x1c\n\x18"] = _loc2_.target;
         switch(_loc2_.target._name)
         {
            case "_btnFilterEquipement":
               this["\x1b\x1e\x19"] = dofus.Constants["\x17\x10\x18"];
               this["\x1d\x14\x10"] = dofus.Constants["\x17\x10\x1b"];
               break;
            case "_btnFilterNonEquipement":
               this["\x1b\x1e\x19"] = dofus.Constants["\x17\x11\x01"];
               this["\x1d\x14\x10"] = dofus.Constants["\x17\x10\x1c"];
               break;
            case "_btnFilterRessoureces":
               this["\x1b\x1e\x19"] = dofus.Constants.FILTER_RESSOURCES;
               this["\x1d\x14\x10"] = dofus.Constants.FILTER_ID_RESSOURCES;
               break;
            case "_btnFilterSoul":
               this["\x1b\x1e\x19"] = dofus.Constants.FILTER_SOUL;
               this["\x1d\x14\x10"] = dofus.Constants.FILTER_ID_SOUL;
               break;
            case "_btnFilterCards":
               this["\x1b\x1e\x19"] = dofus.Constants.FILTER_CARDS;
               this["\x1d\x14\x10"] = dofus.Constants.FILTER_ID_CARDS;
               break;
            case "_btnFilterRunes":
               this["\x1b\x1e\x19"] = dofus.Constants.FILTER_RUNES;
               this["\x1d\x14\x10"] = dofus.Constants.FILTER_ID_RUNES;
         }
         this["\x1b\x14\x14"]();
      }
      else
      {
         _loc2_.target.selected = true;
      }
   }
   function select(oEvent)
   {
      var _loc3_ = _loc2_.value;
      var _loc4_ = 0;
      while(_loc4_ < this["\x1e\x03\n"].dataProvider.length)
      {
         if(_loc3_ == this["\x1e\x03\n"].dataProvider[_loc4_].unicID)
         {
            this["\x1e\x03\n"]["\x1a\x1b\x04"](Math.floor(_loc4_ / this["\x1e\x03\n"]["\x1b\x18\x01"]));
            this["\x1e\x03\n"].selectedIndex = _loc4_;
         }
         _loc4_ = _loc4_ + 1;
      }
   }
   function itemSelected(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "_cbTypes")
      {
         this["\x1d\x1c\x15"] = this._cbTypes.selectedItem.id;
         this.api.datacenter.Basics[dofus.graphics.gapi.controls.InventoryViewer.CLASS_NAME + "_subfilter_" + this["\x1c\n\x18"]._name + "_" + this._name] = this["\x1d\x1c\x15"];
         this["\x1b\x14\x14"]();
      }
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
         case this._btnFilterSoul:
            this.api.ui.showTooltip(this.api.lang.getText("SOUL"),_loc2_.target,-20);
            break;
         case this._btnFilterCards:
            this.api.ui.showTooltip(this.api.lang.getText("CARDS"),_loc2_.target,-20);
            break;
         case this._btnFilterRunes:
            this.api.ui.showTooltip(this.api.lang.getText("RUNES"),_loc2_.target,-20);
            break;
         case this["\x1c\n\x06"]:
            this.api.ui.showTooltip(this.api.lang.getText("SEARCH_AND_SORT"),_loc2_.target,-20);
      }
   }
   function out(oEvent)
   {
      this.api.ui.hideTooltip();
   }
}
