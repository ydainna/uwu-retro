if(!dofus.graphics.gapi.ui.ForgemagusCraft)
{
   if(!dofus)
   {
      _global.dofus = new Object();
   }
   if(!dofus.graphics.)
   {
      _global.dofus.graphics. = new Object();
   }
   if(!dofus.graphics.gapi)
   {
      _global.dofus.graphics.gapi = new Object();
   }
   if(!dofus.graphics.gapi.ui)
   {
      _global.dofus.graphics.gapi.ui = new Object();
   }
   dofus.graphics.gapi.ui.ForgemagusCraft = function()
   {
      super();
      this._cgLocal._visible = false;
      this["\x1c\r\x05"]._visible = false;
   } extends dofus.graphics.gapi.core["\x17\t\n"];
   var _loc1_ = dofus.graphics.gapi.ui.ForgemagusCraft = function()
   {
      super();
      this._cgLocal._visible = false;
      this["\x1c\r\x05"]._visible = false;
   }.prototype;
   _loc1_["\x1e\x17\x13"] = function §\x1e\x17\x13§()
   {
      if(this._currentOverContainer != undefined && this._currentOverContainer.contentData != undefined)
      {
         return dofus.datacenter.Item(this._currentOverContainer.contentData);
      }
      return undefined;
   };
   _loc1_["\x01\x0e"] = function §\x01\x0e§()
   {
      return this["\x1c\x11\x13"];
   };
   _loc1_["\x17\x1c"] = function §\x17\x1c§(§\x19\n\x01§)
   {
      this["\x1d\x19\x0f"] = Number(_loc2_);
      return this.maxItem;
   };
   _loc1_["\x1c\x1d"] = function §\x1c\x1d§(nSkillId)
   {
      this["\x1d\x1c\x1c"] = Number(_loc2_);
      this["\x1d\x16\f"] = _global.api.lang["\x17\x1e\x14"](this["\x1d\x1c\x1c"]);
      return this.skillId;
   };
   _loc1_["\x11\x1a"] = function §\x11\x1a§(§\x17\n\x1c§)
   {
      this["\x1c\x0f\x06"].removeEventListener("modelChanged",this);
      this["\x1c\x0f\x06"] = _loc2_;
      this["\x1c\x0f\x06"].addEventListener("modelChanged",this);
      this.modelChanged();
      return this["\x1e\x18\x03"]();
   };
   _loc1_["\x17\n"] = function §\x17\n§(§\x17\x0b\x06§)
   {
      this["\x1c\x0f\x16"].removeEventListener("modelChanged",this);
      this["\x1c\x0f\x16"] = _loc2_;
      this["\x1c\x0f\x16"].addEventListener("modelChanged",this);
      this.modelChanged();
      return this.localDataProvider;
   };
   _loc1_["\x12\x12"] = function §\x12\x12§(§\x17\n\x1d§)
   {
      this["\x1c\x0f\b"].removeEventListener("modelChanged",this);
      this["\x1c\x0f\b"] = _loc2_;
      this["\x1c\x0f\b"].addEventListener("modelChanged",this);
      this.modelChanged();
      return this.distantDataProvider;
   };
   _loc1_.init = function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.ForgemagusCraft.CLASS_NAME);
      this.api.datacenter.Basics.aks_exchange_isForgemagus = true;
   };
   _loc1_.destroy = function destroy()
   {
      this.gapi.hideTooltip();
      this.api.datacenter.Basics.aks_exchange_isForgemagus = false;
   };
   _loc1_["\x16\x15\n"] = function §\x16\x15\n§()
   {
      this.api.network.Exchange.leave();
      return true;
   };
   _loc1_.createChildren = function createChildren()
   {
      this["\x1c\x06\x0f"] = false;
      this["\x1d\x0e\x12"]._visible = false;
      this.addToQueue({object:this,method:this.addListeners});
      this["\x1c\n\x18"] = this._btnFilterRunes;
      this.addToQueue({object:this,method:this.initData});
      this["\x18\x06\x0f"](true);
      this.addToQueue({object:this,method:this.initTexts});
   };
   _loc1_.addListeners = function addListeners()
   {
      this._cgGrid.addEventListener("dblClickItem",this);
      this._cgGrid.addEventListener("dropItem",this);
      this._cgGrid.addEventListener("dragItem",this);
      this._cgGrid.addEventListener("selectItem",this);
      this._cgGrid.addEventListener("overItem",this);
      this._cgGrid.addEventListener("outItem",this);
      this._cgLocal.addEventListener("dblClickItem",this);
      this._cgLocal.addEventListener("dropItem",this);
      this._cgLocal.addEventListener("dragItem",this);
      this._cgLocal.addEventListener("selectItem",this);
      this._cgLocal.addEventListener("overItem",this);
      this._cgLocal.addEventListener("outItem",this);
      this._ctrItem.addEventListener("dblClick",this);
      this._ctrItem.addEventListener("drag",this);
      this._ctrItem.addEventListener("drop",this);
      this._ctrItem.addEventListener("click",this);
      this._ctrSignature.addEventListener("dblClick",this);
      this._ctrSignature.addEventListener("drag",this);
      this._ctrSignature.addEventListener("drop",this);
      this._ctrSignature.addEventListener("click",this);
      this._ctrRune.addEventListener("dblClick",this);
      this._ctrRune.addEventListener("drag",this);
      this._ctrRune.addEventListener("drop",this);
      this._ctrRune.addEventListener("click",this);
      this["\x1c\r\x05"].addEventListener("selectItem",this);
      this["\x1c\r\x05"].addEventListener("overItem",this);
      this["\x1c\r\x05"].addEventListener("outItem",this);
      this._btnFilterEquipement.addEventListener("click",this);
      this._btnFilterNonEquipement.addEventListener("click",this);
      this._btnFilterRessoureces.addEventListener("click",this);
      this._btnFilterSoul.addEventListener("click",this);
      this._btnFilterCards.addEventListener("click",this);
      this._btnFilterEquipement.addEventListener("over",this);
      this._btnFilterNonEquipement.addEventListener("over",this);
      this._btnFilterRessoureces.addEventListener("over",this);
      this._btnFilterSoul.addEventListener("over",this);
      this._btnFilterCards.addEventListener("over",this);
      this._btnFilterEquipement.addEventListener("out",this);
      this._btnFilterNonEquipement.addEventListener("out",this);
      this._btnFilterRessoureces.addEventListener("out",this);
      this._btnFilterSoul.addEventListener("out",this);
      this._btnFilterCards.addEventListener("out",this);
      this._btnFilterRessoureces.addEventListener("out",this);
      this._btnFilterRunes.addEventListener("click",this);
      this._btnFilterRunes.addEventListener("over",this);
      this._btnFilterRunes.addEventListener("out",this);
      this._btnClose.addEventListener("click",this);
      this["\x1c\n\x0b"].addEventListener("click",this);
      this["\x1c\n\x03"].addEventListener("click",this);
      this.api.datacenter.Exchange.addEventListener("localKamaChange",this);
      this.api.datacenter.Exchange.addEventListener("distantKamaChange",this);
      this.api.datacenter.Player.addEventListener("kamaChanged",this);
      this.addToQueue({object:this,method:this.kamaChanged,params:[{value:this.api.datacenter.Player.Kama}]});
      this._cbTypes.addEventListener("itemSelected",this);
      this["\x1c\r\x05"]["\x19\x02\n"] = false;
      this._cgGrid["\x19\x02\n"] = false;
      this._cgLocal["\x19\x02\n"] = false;
      this._cgLocalSave["\x19\x02\n"] = false;
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
   };
   _loc1_.initTexts = function initTexts()
   {
      this["\x1e\x10\x11"].title = this.api.datacenter.Player.data.name;
      this["\x1c\x1b\x13"].text = this.api.lang.getText("CRAFTED_ITEM");
      this["\x1d\x01\x14"].text = this.api.lang.getText("SKILL") + " : " + this.api.lang["\x17\x1e\x15"](this["\x1d\x1c\x1c"]).d;
      this["\x1c\x19\x15"].text = this.api.lang.getText("FM_CRAFT_ITEM");
      this["\x1c\x1e\x17"].text = this.api.lang.getText("FM_CRAFT_RUNE");
      this["\x1d\x01\x13"].text = this.api.lang.getText("FM_CRAFT_SIGNATURE");
      this["\x1c\n\x0b"].label = this.api.lang.getText("APPLY_ONE_RUNE");
      this["\x1c\n\x03"].label = this.api.lang.getText("APPLY_MULTIPLE_RUNES");
   };
   _loc1_.initData = function initData()
   {
      this.dataProvider = this.api.datacenter.Exchange["\x18\f\n"];
      this["\x18\x17\x05"] = this.api.datacenter.Exchange["\x18\x17\x06"];
      this["\x17\b\x1b"] = this.api.datacenter.Exchange["\x17\b\x1c"];
      this["\x1b\x14\x14"](true);
   };
   _loc1_.updateDataVisually = function updateDataVisually()
   {
      if(this["\x1c\x05\x1b"])
      {
         return undefined;
      }
      var _loc2_ = this.api.datacenter.Basics[dofus.graphics.gapi.ui.ForgemagusCraft.CLASS_NAME + "_subfilter_" + this["\x1c\n\x18"]._name];
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
               _loc3_.push(_loc6_);
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
      this._cgGrid.dataProvider = _loc3_;
   };
   _loc1_["\x1b\x14\x14"] = function §\x1b\x14\x14§(bForceNow)
   {
      if(this._nUpdateFullDataVisuallyTimeout != undefined)
      {
         _global.clearTimeout(this._nUpdateFullDataVisuallyTimeout);
      }
      if(bForceNow)
      {
         this.updateDataVisually();
         return undefined;
      }
      var _loc3_ = _global.setTimeout(this,"updateDataVisually",150);
      this._nUpdateFullDataVisuallyTimeout = _loc3_;
   };
   _loc1_["\x1a\x1a\x1a"] = function §\x1a\x1a\x1a§(§\x19\x10\x07§)
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
   };
   _loc1_.updateLocalDataVisually = function updateLocalDataVisually()
   {
      if(this._nUpdateLocalDataVisuallyTimeout != undefined)
      {
         _global.clearTimeout(this._nUpdateLocalDataVisuallyTimeout);
         this._nUpdateLocalDataVisuallyTimeout = undefined;
      }
      this._cgLocal.dataProvider = this["\x1c\x0f\x16"];
      var _loc2_ = false;
      var _loc3_ = false;
      var _loc4_ = false;
      var _loc5_ = 0;
      while(_loc5_ < this["\x1c\x0f\x16"].length)
      {
         var _loc6_ = false;
         var _loc7_ = 0;
         while(_loc7_ < dofus.graphics.gapi.ui.ForgemagusCraft["\x18\x11\x02"].length)
         {
            if(dofus.graphics.gapi.ui.ForgemagusCraft["\x18\x11\x02"][_loc7_] == this["\x1c\x0f\x16"][_loc5_].unicID)
            {
               _loc4_ = true;
               this._ctrSignature.contentData = this["\x1c\x0f\x16"][_loc5_];
               _loc6_ = true;
               break;
            }
            _loc7_ = _loc7_ + 1;
         }
         var _loc8_ = 0;
         while(_loc8_ < dofus.graphics.gapi.ui.ForgemagusCraft["\x1b\x12\f"].length)
         {
            if(dofus.graphics.gapi.ui.ForgemagusCraft["\x1b\x12\f"][_loc8_] == this["\x1c\x0f\x16"][_loc5_].type)
            {
               _loc3_ = true;
               this._ctrRune.contentData = this["\x1c\x0f\x16"][_loc5_];
               _loc6_ = true;
               break;
            }
            _loc8_ = _loc8_ + 1;
         }
         if(!_loc6_)
         {
            _loc2_ = true;
            this._ctrItem.contentData = this["\x1c\x0f\x16"][_loc5_];
            if(this._ctrItem.contentData != undefined)
            {
               this["\x18\x06\x0f"](false);
               this["\x1c\x11\x13"]["\x18\x10\x17"] = dofus.datacenter.Item(this._ctrItem.contentData);
            }
         }
         _loc5_ = _loc5_ + 1;
      }
      if(!_loc2_)
      {
         this._ctrItem.contentData = undefined;
      }
      if(!_loc3_)
      {
         this._ctrRune.contentData = undefined;
      }
      if(!_loc4_)
      {
         this._ctrSignature.contentData = undefined;
      }
   };
   _loc1_["\x1b\x15\x0e"] = function §\x1b\x15\x0e§()
   {
      if(this._nUpdateLocalDataVisuallyTimeout != undefined)
      {
         return undefined;
      }
      var _loc2_ = _global.setTimeout(this,"updateLocalDataVisually",50);
      this._nUpdateLocalDataVisuallyTimeout = _loc2_;
   };
   _loc1_["\x1b\x14\x17"] = function §\x1b\x14\x17§()
   {
      this["\x1c\r\x05"].dataProvider = this["\x1c\x0f\b"];
      var _loc2_ = dofus.datacenter.Item(this["\x1c\r\x05"]["\x17\x15\x12"](0).contentData);
      if(_loc2_ != undefined)
      {
         this["\x18\x06\x0f"](false);
         this["\x1c\x11\x13"]["\x18\x10\x17"] = _loc2_;
      }
      this["\x1c\x05\x0e"] = true;
   };
   _loc1_["\x18\x06\x0f"] = function §\x18\x06\x0f§(§\x16\f\x12§)
   {
      this["\x1c\x11\x13"]._visible = !_loc2_;
      this["\x1e\x10\x14"]._visible = !_loc2_;
   };
   _loc1_.validateDrop = function validateDrop(§\x1b\t\x02§, §\x19\x13\x07§, §\x19\x10\x10§)
   {
      if(_loc4_ < 1 || _loc4_ == undefined)
      {
         return undefined;
      }
      if(_loc4_ > _loc3_.Quantity)
      {
         _loc4_ = _loc3_.Quantity;
      }
      switch(_loc2_)
      {
         case "_cgGrid":
            this.api.network.Exchange["\x19\x01\x01"](false,_loc3_,_loc4_);
            break;
         case "_cgLocal":
            this.api.network.Exchange["\x19\x01\x01"](true,_loc3_,_loc4_);
            break;
         case "_ctrItem":
         case "_ctrRune":
         case "_ctrSignature":
            var _loc5_ = false;
            var _loc6_ = false;
            switch(_loc2_)
            {
               case "_ctrItem":
                  if(this["\x1d\x16\f"] != _loc3_.type || !_loc3_["\x17\r\r"])
                  {
                     return undefined;
                  }
                  var _loc7_ = 0;
                  while(_loc7_ < this["\x1c\x0f\x16"].length)
                  {
                     var _loc8_ = false;
                     var _loc9_ = 0;
                     while(_loc9_ < dofus.graphics.gapi.ui.ForgemagusCraft["\x18\x11\x02"].length)
                     {
                        if(dofus.graphics.gapi.ui.ForgemagusCraft["\x18\x11\x02"][_loc9_] == this["\x1c\x0f\x16"][_loc7_].unicID)
                        {
                           _loc8_ = true;
                        }
                        _loc9_ = _loc9_ + 1;
                     }
                     var _loc10_ = 0;
                     while(_loc10_ < dofus.graphics.gapi.ui.ForgemagusCraft["\x1b\x12\f"].length)
                     {
                        if(dofus.graphics.gapi.ui.ForgemagusCraft["\x1b\x12\f"][_loc10_] == this["\x1c\x0f\x16"][_loc7_].type)
                        {
                           _loc8_ = true;
                        }
                        _loc10_ = _loc10_ + 1;
                     }
                     if(!_loc8_)
                     {
                        this.api.network.Exchange["\x19\x01\x01"](false,this["\x1c\x0f\x16"][_loc7_],this["\x1c\x0f\x16"][_loc7_].Quantity);
                     }
                     _loc7_ = _loc7_ + 1;
                  }
                  _loc5_ = true;
                  break;
               case "_ctrRune":
                  var _loc11_ = 0;
                  while(_loc11_ < this["\x1c\x0f\x16"].length)
                  {
                     var _loc12_ = 0;
                     while(_loc12_ < dofus.graphics.gapi.ui.ForgemagusCraft["\x1b\x12\f"].length)
                     {
                        if(dofus.graphics.gapi.ui.ForgemagusCraft["\x1b\x12\f"][_loc12_] == this["\x1c\x0f\x16"][_loc11_].type && this["\x1c\x0f\x16"][_loc11_].unicID != _loc3_.unicID)
                        {
                           this.api.network.Exchange["\x19\x01\x01"](false,this["\x1c\x0f\x16"][_loc11_],this["\x1c\x0f\x16"][_loc11_].Quantity);
                        }
                        _loc12_ = _loc12_ + 1;
                     }
                     _loc11_ = _loc11_ + 1;
                  }
                  break;
               case "_ctrSignature":
                  var _loc13_ = 0;
                  while(_loc13_ < this["\x1c\x0f\x16"].length)
                  {
                     var _loc14_ = 0;
                     while(_loc14_ < dofus.graphics.gapi.ui.ForgemagusCraft["\x18\x11\x02"].length)
                     {
                        if(dofus.graphics.gapi.ui.ForgemagusCraft["\x18\x11\x02"][_loc14_] == this["\x1c\x0f\x16"][_loc13_].unicID)
                        {
                           this.api.network.Exchange["\x19\x01\x01"](false,this["\x1c\x0f\x16"][_loc13_],this["\x1c\x0f\x16"][_loc13_].Quantity);
                        }
                        _loc14_ = _loc14_ + 1;
                     }
                     _loc13_ = _loc13_ + 1;
                  }
                  if(this["\x17\x15\x1b"]() < 100)
                  {
                     _loc6_ = true;
                     this.api.kernel.showMessage(undefined,this.api.lang.getText("CRAFT_LEVEL_DOESNT_ALLOW_A_SIGNATURE"),"ERROR_CHAT");
                  }
                  _loc5_ = true;
            }
            if(!_loc6_)
            {
               this.api.network.Exchange["\x19\x01\x01"](true,_loc3_,!_loc5_ ? _loc4_ : 1);
               break;
            }
      }
      if(this["\x1c\x05\x0e"])
      {
         this.api.datacenter.Exchange["\x16\x1b\x1d"]();
         this["\x1c\x05\x0e"] = false;
      }
   };
   _loc1_["\x17\x15\x1b"] = function §\x17\x15\x1b§()
   {
      var _loc2_ = this.api.datacenter.Player["\x18\x11\x0f"];
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         var _loc4_ = 0;
         while(_loc4_ < _loc2_[_loc3_].skills.length)
         {
            if(dofus.datacenter.["\x1b\x02\n"](dofus.datacenter.Job(_loc2_[_loc3_]).skills[_loc4_]).id == this["\x1d\x1c\x1c"])
            {
               return dofus.datacenter.Job(_loc2_[_loc3_]).level;
            }
            _loc4_ = _loc4_ + 1;
         }
         _loc3_ = _loc3_ + 1;
      }
      return 0;
   };
   _loc1_["\x1a\x19\x06"] = function §\x1a\x19\x06§()
   {
      if(this.api.datacenter.Exchange["\x18\x17\x06"].length == 0)
      {
         return undefined;
      }
      this.api.network.Exchange.ready();
   };
   _loc1_["\x16\x16\x03"] = function §\x16\x16\x03§(§\x19\x13\x07§)
   {
      return true;
   };
   _loc1_["\x1a\n\r"] = function §\x1a\n\r§()
   {
      this["\x1b\x1d\x02"] = new Array();
      var _loc2_ = 0;
      while(_loc2_ < this["\x1c\x0f\x16"].length)
      {
         var _loc3_ = this["\x1c\x0f\x16"][_loc2_];
         this["\x1b\x1d\x02"].push({id:_loc3_.ID,quantity:_loc3_.Quantity});
         _loc2_ = _loc2_ + 1;
      }
   };
   _loc1_["\x16\x1b\x13"] = function §\x16\x1b\x13§()
   {
      var _loc2_ = 0;
      while(_loc2_ < this["\x1c\x0f\x16"].length)
      {
         var _loc3_ = this["\x1c\x0f\x16"][_loc2_];
         this.api.network.Exchange["\x19\x01\x01"](false,_loc3_,_loc3_.Quantity);
         _loc2_ = _loc2_ + 1;
      }
   };
   _loc1_["\x1a\n\n"] = function §\x1a\n\n§()
   {
      if(this["\x1b\x1d\x02"] == undefined || this["\x1b\x1d\x02"].length == 0)
      {
         return false;
      }
      this["\x16\x1b\x13"]();
      var _loc2_ = 0;
      while(_loc2_ < this["\x1b\x1d\x02"].length)
      {
         var _loc3_ = this["\x1b\x1d\x02"][_loc2_];
         var _loc4_ = this["\x1c\x0f\x06"].findFirstItem("ID",_loc3_.id);
         if(_loc4_.index == -1)
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("CRAFT_NO_RESOURCE"),"ERROR_BOX",{name:"NotEnougth"});
            return false;
         }
         if(_loc4_.item.Quantity < _loc3_.quantity)
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("CRAFT_NOT_ENOUGHT",[_loc4_.item.name]),"ERROR_BOX",{name:"NotEnougth"});
            return false;
         }
         this.api.network.Exchange["\x19\x01\x01"](true,_loc4_.item,_loc3_.quantity);
         _loc2_ = _loc2_ + 1;
      }
      return true;
   };
   _loc1_["\x19\x07\n"] = function §\x19\x07\n§()
   {
      ank.utils.Timer.setTimer(this,"doNextCraft",this,this.doNextCraft,250);
   };
   _loc1_.doNextCraft = function doNextCraft()
   {
      if(this["\x1a\n\n"]() == false)
      {
         this["\x1b\x0b\x02"]();
      }
   };
   _loc1_["\x1b\x0b\x02"] = function §\x1b\x0b\x02§()
   {
      ank.utils.Timer.removeTimer(this,"doNextCraft");
      this["\x1c\x06\x0f"] = false;
      this._cgLocal.dataProvider = this.api.datacenter.Exchange["\x18\x17\x06"];
      this["\x1b\x14\x14"]();
      this["\x1b\x14\x17"]();
   };
   _loc1_.kamaChanged = function kamaChanged(oEvent)
   {
      this["\x1c\x19\x1c"].text = new ank.utils.ExtendedString(_loc2_.value)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
   };
   _loc1_.modelChanged = function modelChanged(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\x0f\x16"]:
            if(this["\x1c\x06\x0f"])
            {
               if(this["\x1c\x0f\x16"].length == 0)
               {
                  this["\x19\x07\n"]();
               }
               else if(this["\x1b\x1d\x02"].length != undefined && this["\x1b\x1d\x02"].length == this["\x1c\x0f\x16"].length)
               {
                  this["\x1a\x19\x06"]();
               }
            }
            else
            {
               this["\x1b\x15\x0e"]();
            }
            break;
         case this["\x1c\x0f\b"]:
            if(!this["\x1c\x06\x0f"] && !this["\x1c\x05\x1b"])
            {
               this["\x1b\x14\x17"]();
            }
            break;
         case this["\x1c\x0f\x06"]:
            if(!this["\x1c\x06\x0f"] && !this["\x1c\x05\x1b"])
            {
               this["\x1b\x14\x14"]();
            }
            break;
         default:
            if(!this["\x1c\x06\x0f"] && !this["\x1c\x05\x1b"])
            {
               this["\x1b\x14\x14"]();
               this["\x1b\x15\x0e"]();
               this["\x1b\x14\x17"]();
               break;
            }
      }
   };
   _loc1_.over = function over(oEvent)
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
            §§push(-20);
            §§push(_loc2_);
            §§push("target");
         default:
            this.api.ui.showTooltip(this.api.lang.getText("SOUL"),§§pop()[§§pop()],§§pop());
            break;
         case this._btnFilterRunes:
            this.api.ui.showTooltip(this.api.lang.getText("RUNES"),_loc2_.target,-20);
            break;
         case this._btnFilterCards:
            this.api.ui.showTooltip(this.api.lang.getText("CARDS"),_loc2_.target,-20);
      }
   };
   _loc1_.out = function out(oEvent)
   {
      this.api.ui.hideTooltip();
   };
   _loc1_["\x19\x16\t"] = function §\x19\x16\t§()
   {
      this["\x1c\x05\x1b"] = false;
      this["\x1d\x14\x1b"] = 1;
      this["\x1c\n\x03"].label = this.api.lang.getText("APPLY_MULTIPLE_RUNES");
      this["\x1c\n\x0b"].enabled = true;
   };
   _loc1_[undefined] = function §undefined§()
   {
      var _loc2_ = this[undefined][undefined][undefined] - 1;
      if(_loc2_ <= 1)
      {
         return undefined;
      }
      this[undefined] = true;
      this[undefined][undefined][undefined][undefined](_loc2_);
      this[undefined][undefined] = this[undefined][undefined][undefined](undefined);
      this[undefined][undefined] = false;
   };
   _loc1_[undefined] = function §undefined§()
   {
      if(this[undefined][undefined] == undefined || this[undefined][undefined] == undefined)
      {
         this[undefined][undefined][undefined](this[undefined][undefined][undefined](undefined),this[undefined][undefined][undefined](undefined),undefined);
         return true;
      }
      return false;
   };
   _loc1_[undefined] = function §undefined§(sShortcut)
   {
      var _loc3_ = true;
      var _loc0_ = null;
      if((_loc0_ = _loc2_) === undefined)
      {
         if(this[undefined]())
         {
            _loc3_ = false;
         }
         else
         {
            this[undefined]();
            this[undefined]();
            _loc3_ = false;
         }
      }
      return _loc3_;
   };
   _loc1_.click = function click(oEvent)
   {
      switch(_loc2_[undefined])
      {
         case this[undefined]:
            this[undefined]();
            break;
         case this[undefined]:
            if(this[undefined]())
            {
               return undefined;
            }
            this[undefined]();
            this[undefined]();
            break;
         case this[undefined]:
            if(this[undefined])
            {
               this[undefined][undefined][undefined][undefined]();
               return undefined;
            }
            if(this[undefined]())
            {
               return undefined;
            }
            this[undefined]();
            this[undefined]();
            this[undefined]({(undefined):this,(undefined):this[undefined]});
            break;
         case this[undefined]:
         case this[undefined]:
         case this[undefined]:
            if(_loc2_[undefined][undefined] == undefined)
            {
               this[undefined](true);
            }
            else
            {
               if(eval(undefined)[undefined](LL[undefined][undefined]))
               {
                  this[undefined][undefined][undefined][undefined](_loc2_[undefined][undefined]);
                  return undefined;
               }
               this[undefined](false);
               this[undefined][undefined] = _loc2_[undefined][undefined];
            }
            break;
         default:
            if(_loc2_[undefined] != this[undefined])
            {
               this[undefined][undefined] = false;
               this[undefined] = _loc2_[undefined];
               switch(_loc2_[undefined][undefined])
               {
                  case undefined:
                     this[undefined] = LL[undefined][undefined];
                     break;
                  case undefined:
                     this[undefined] = LL[undefined][undefined];
                     break;
                  case undefined:
                     this[undefined] = LL[undefined][undefined];
                     break;
                  case undefined:
                     this[undefined] = LL[undefined][undefined];
                     break;
                  case undefined:
                     this[undefined] = LL[undefined][undefined];
                     break;
                  case undefined:
                     this[undefined] = LL[undefined][undefined];
               }
               this[undefined](true);
               break;
            }
            _loc2_[undefined][undefined] = true;
            break;
      }
   };
   _loc1_[undefined] = function §undefined§(oEvent)
   {
      _loc2_[undefined] = this[undefined];
      this[undefined](_loc2_);
   };
   _loc1_[undefined] = function §undefined§(oEvent)
   {
      this[undefined](_loc2_);
   };
   _loc1_.drop = function drop(oEvent)
   {
      var _loc3_ = this.gapi["\x17\x16\x07"]();
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      if(_loc3_.isShortcut)
      {
         return undefined;
      }
      this.gapi.removeCursor();
      if(_loc3_.position == -2)
      {
         return undefined;
      }
      if(!this["\x16\x16\x03"](_loc3_))
      {
         return undefined;
      }
      var _loc4_ = false;
      var _loc5_ = false;
      switch(_loc2_.target)
      {
         case this._ctrItem:
            _loc4_ = _loc5_ = true;
            var _loc6_ = 0;
            while(_loc6_ < dofus.graphics.gapi.ui.ForgemagusCraft["\x1b\x12\f"].length)
            {
               if(dofus.graphics.gapi.ui.ForgemagusCraft["\x1b\x12\f"][_loc6_] == _loc3_.type)
               {
                  _loc4_ = false;
               }
               _loc6_ = _loc6_ + 1;
            }
            var _loc7_ = 0;
            while(_loc7_ < dofus.graphics.gapi.ui.ForgemagusCraft["\x18\x11\x02"].length)
            {
               if(dofus.graphics.gapi.ui.ForgemagusCraft["\x18\x11\x02"][_loc7_] == _loc3_.unicID)
               {
                  _loc4_ = false;
               }
               _loc7_ = _loc7_ + 1;
            }
            break;
         case this._ctrRune:
            var _loc8_ = 0;
            while(_loc8_ < dofus.graphics.gapi.ui.ForgemagusCraft["\x1b\x12\f"].length)
            {
               if(dofus.graphics.gapi.ui.ForgemagusCraft["\x1b\x12\f"][_loc8_] == _loc3_.type)
               {
                  _loc4_ = true;
               }
               _loc8_ = _loc8_ + 1;
            }
            break;
         case this._ctrSignature:
            var _loc9_ = 0;
            while(_loc9_ < dofus.graphics.gapi.ui.ForgemagusCraft["\x18\x11\x02"].length)
            {
               if(dofus.graphics.gapi.ui.ForgemagusCraft["\x18\x11\x02"][_loc9_] == _loc3_.unicID)
               {
                  _loc4_ = true;
               }
               _loc9_ = _loc9_ + 1;
            }
            _loc5_ = true;
      }
      if(!_loc4_)
      {
         return undefined;
      }
      if(!_loc5_ && _loc3_.Quantity > 1)
      {
         var _loc10_ = this.gapi.loadUIComponent("PopupQuantity","PopupQuantity",{value:1,max:_loc3_.Quantity,params:{targetType:"item",oItem:_loc3_,targetGrid:_loc2_.target._name}});
         _loc10_.addEventListener("validate",this);
      }
      else
      {
         this.validateDrop(_loc2_.target._name,_loc3_,1);
      }
   };
   _loc1_["\x1b\x14\x1c"] = function §\x1b\x14\x1c§(§\x19\x13\x07§)
   {
      var _loc3_ = new ank.utils.ExtendedArray();
      _loc3_.push(_loc2_);
      this["\x17\b\x1b"] = _loc3_;
   };
   _loc1_[undefined] = function §undefined§(oEvent)
   {
      var _loc3_ = _loc2_.target;
      var _loc4_ = dofus.datacenter.Item(_loc3_.contentData);
      _loc4_["\x1b\x01\b"](_loc3_,_loc4_.style);
      this._currentOverContainer = _loc3_;
   };
   _loc1_[undefined] = function §undefined§(oEvent)
   {
      this["{"][undefined]();
      this[undefined] = undefined;
   };
   _loc1_[undefined] = function §undefined§(oEvent)
   {
      var _loc3_ = _loc2_[undefined][undefined];
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      var _loc4_ = _loc3_[undefined];
      var _loc5_ = _loc2_[undefined][undefined];
      switch(_loc5_)
      {
         case undefined:
            if(this[undefined](_loc3_))
            {
               var _loc6_ = undefined;
               var _loc7_ = 0;
               while(_loc7_ < LL["{invalid_utf8=143}"]["{"][undefined][undefined][undefined][undefined] && _loc6_ == undefined)
               {
                  if(LL["{invalid_utf8=143}"]["{"][undefined][undefined][undefined][_loc7_] == _loc3_[undefined])
                  {
                     _loc6_ = undefined;
                  }
                  _loc7_ = _loc7_ + 1;
               }
               var _loc8_ = 0;
               while(_loc8_ < LL["{invalid_utf8=143}"]["{"][undefined][undefined][undefined][undefined] && _loc6_ == undefined)
               {
                  if(LL["{invalid_utf8=143}"]["{"][undefined][undefined][undefined][_loc8_] == _loc3_[undefined])
                  {
                     _loc6_ = undefined;
                  }
                  _loc8_ = _loc8_ + 1;
               }
               if(_loc6_ == undefined)
               {
                  _loc6_ = undefined;
               }
               this[undefined](_loc6_,_loc3_,_loc4_);
            }
            break;
         case undefined:
            this[undefined](undefined,_loc3_,_loc4_);
      }
   };
   _loc1_[undefined] = function §undefined§(oEvent)
   {
      this["{"][undefined]();
      if(_loc2_[undefined][undefined] == undefined)
      {
         return undefined;
      }
      this["{"][undefined](_loc2_[undefined][undefined]);
   };
   _loc1_[undefined] = function §undefined§(oEvent)
   {
      var _loc3_ = this["{"][undefined]();
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      if(_loc3_[undefined])
      {
         return undefined;
      }
      this["{"][undefined]();
      var _loc4_ = _loc2_[undefined][undefined][undefined][undefined];
      switch(_loc4_)
      {
         case undefined:
            if(_loc3_[undefined] == -1)
            {
               return undefined;
            }
            break;
         case undefined:
            if(_loc3_[undefined] == -2)
            {
               return undefined;
            }
            if(!this[undefined](_loc3_))
            {
               return undefined;
            }
            break;
      }
      if(_loc3_[undefined] > 1)
      {
         var _loc5_ = this["{"][undefined](undefined,undefined,{(undefined):1,(undefined):_loc3_[undefined],(undefined):{(undefined):undefined,(undefined):_loc3_,(undefined):_loc4_}});
         _loc5_[undefined](undefined,this);
      }
      else
      {
         this[undefined](_loc4_,_loc3_,1);
      }
   };
   _loc1_.selectItem = function selectItem(oEvent)
   {
      if(_loc2_[undefined][undefined] == undefined)
      {
         this[undefined](true);
      }
      else
      {
         if(eval(undefined)[undefined](LL[undefined][undefined]))
         {
            this[undefined][undefined][undefined][undefined](_loc2_[undefined][undefined]);
            return undefined;
         }
         this[undefined](false);
         this[undefined][undefined] = _loc2_[undefined][undefined];
      }
   };
   _loc1_.validate = function validate(oEvent)
   {
      switch(_loc2_[undefined][undefined])
      {
         case undefined:
            this[undefined](_loc2_[undefined][undefined],_loc2_[undefined][undefined],_loc2_[undefined]);
            break;
         case undefined:
            var _loc3_ = Number(_loc2_[undefined]);
            if(_loc3_ < 1 || (_loc3_ == undefined || eval(undefined)[undefined](_loc3_)))
            {
               _loc3_ = 1;
            }
            this[undefined] = _loc3_;
      }
   };
   _loc1_.itemSelected = function itemSelected(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_[undefined][undefined]) === undefined)
      {
         this[undefined] = this[undefined][undefined][undefined];
         this[undefined][undefined][undefined][LL["{invalid_utf8=143}"]["{"][undefined][undefined][undefined] + undefined + this[undefined][undefined]] = this[undefined];
         this[undefined]();
      }
   };
   _loc1_.addProperty("\x17\b\x1b",function()
   {
   }
   ,_loc1_[undefined]);
   _loc1_[undefined](undefined,function()
   {
   }
   ,_loc1_["\x11\x1a"]);
   _loc1_.addProperty("skillId",function()
   {
   }
   ,_loc1_[undefined]);
   _loc1_.addProperty("maxItem",function()
   {
   }
   ,_loc1_["\x17\x1c"]);
   _loc1_[undefined](undefined,_loc1_[undefined],function()
   {
   }
   );
   _loc1_[undefined](undefined,_loc1_[undefined],function()
   {
   }
   );
   _loc1_[undefined](undefined,function()
   {
   }
   ,_loc1_[undefined]);
   undefined(_loc1_,null,1);
   dofus.graphics.gapi.ui.ForgemagusCraft = function()
   {
      super();
      this._cgLocal._visible = false;
      this["\x1c\r\x05"]._visible = false;
   }[undefined] = undefined;
   dofus.graphics.gapi.ui.ForgemagusCraft = function()
   {
      super();
      this._cgLocal._visible = false;
      this["\x1c\r\x05"]._visible = false;
   }[undefined] = 38;
   dofus.graphics.gapi.ui.ForgemagusCraft = function()
   {
      super();
      this._cgLocal._visible = false;
      this["\x1c\r\x05"]._visible = false;
   }[undefined] = [26,78];
   dofus.graphics.gapi.ui.ForgemagusCraft = function()
   {
      super();
      this._cgLocal._visible = false;
      this["\x1c\r\x05"]._visible = false;
   }[undefined] = [7508];
   _loc1_[undefined] = false;
   _loc1_[undefined] = LL[undefined][undefined];
   _loc1_[undefined] = 0;
   _loc1_[undefined] = 1;
}
