class dofus.§\x18\x03\x10§.gapi.ui.Craft extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Craft";
   static var §\x18\x03\x17§ = 38;
   static var §\x17\x11\x04§ = 10000;
   var §\x1c\x05\x0e§ = false;
   var §\x1b\x1e\x19§ = dofus.Constants.FILTER_RESSOURCES;
   var §\x1d\x1c\x15§ = 0;
   var §\x1d\x14\x1b§ = 1;
   var §\x1d\x18\x03§ = 0;
   static var §\x19\x03\x0e§ = 1000;
   function Craft()
   {
      super();
      if(!_global.api.lang.getConfigText("ENABLE_LOOP_CRAFTING"))
      {
         this["\x1c\n\x11"]._visible = false;
      }
      if(!_global.api.lang.getConfigText("ENABLE_LOOP_CRAFTING_FM"))
      {
         this["\x1c\x0b\x0e"]._visible = false;
      }
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
   function §\x17\x1c§(§\x19\n\x01§)
   {
      this["\x1d\x19\x0f"] = Number(_loc2_);
      return this.maxItem;
   }
   function §\x1c\x1d§(§\x19\x0e\x0b§)
   {
      this["\x1d\x1c\x1c"] = Number(_loc2_);
      this["\x1c\x0b\x0e"]._visible = false;
      this["\x1c\b\x1c"]._visible = false;
      if(_global.api.lang.getConfigText("ENABLE_LOOP_CRAFTING"))
      {
         this["\x1c\n\x11"]._visible = true;
      }
      this["\x1c\t\x0f"]._visible = true;
      this["\x1c\n\x05"]._visible = true;
      this._btnValidate._visible = true;
      return this.skillId;
   }
   function §\x11\x1a§(§\x17\n\x1c§)
   {
      this["\x1c\x0f\x06"].removeEventListener("modelChanged",this);
      this["\x1c\x0f\x06"] = _loc2_;
      this["\x1c\x0f\x06"].addEventListener("modelChanged",this);
      this.modelChanged();
      return this["\x1e\x18\x03"]();
   }
   function §\x17\n§(§\x17\x0b\x06§)
   {
      this["\x1c\x0f\x16"].removeEventListener("modelChanged",this);
      this["\x1c\x0f\x16"] = _loc2_;
      this["\x1c\x0f\x16"].addEventListener("modelChanged",this);
      this.modelChanged();
      return this.localDataProvider;
   }
   function §\x12\x12§(§\x17\n\x1d§)
   {
      this["\x1c\x0f\b"].removeEventListener("modelChanged",this);
      this["\x1c\x0f\b"] = _loc2_;
      this["\x1c\x0f\b"].addEventListener("modelChanged",this);
      this.modelChanged();
      return this.distantDataProvider;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Craft.CLASS_NAME);
   }
   function destroy()
   {
      this.gapi.hideTooltip();
   }
   function §\x16\x15\n§()
   {
      this.api.network.Exchange["\x18\x13\x1d"]();
      return true;
   }
   function createChildren()
   {
      this["\x1c\x06\x0f"] = false;
      this["\x1d\x0e\x12"]._visible = false;
      this["\x1a\x1e\x15"](undefined,false);
      this["\x1e\x10\x0f"].swapDepths(this.getNextHighestDepth());
      this["\x1a\x1d\b"](false);
      this["\x1a\x1c\x18"](false);
      this.addToQueue({object:this,method:this.addListeners});
      this["\x1c\n\x18"] = this._btnFilterRessoureces;
      this.addToQueue({object:this,method:this["\x1a\x0f\x18"]});
      this.addToQueue({object:this,method:this.initData});
      this["\x18\x06\x0f"](true);
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this["\x18\t\x1a"]});
   }
   function addListeners()
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
      this["\x1c\r\x05"].addEventListener("selectItem",this);
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
      this._btnFilterRunes.addEventListener("click",this);
      this._btnFilterRunes.addEventListener("over",this);
      this._btnFilterRunes.addEventListener("out",this);
      this._btnClose.addEventListener("click",this);
      this["\x1c\n\x11"].addEventListener("click",this);
      this["\x1c\x0b\x0e"].addEventListener("click",this);
      this["\x1c\b\x1c"].addEventListener("click",this);
      this.api.datacenter.Exchange.addEventListener("localKamaChange",this);
      this.api.datacenter.Exchange.addEventListener("distantKamaChange",this);
      this.api.datacenter.Player.addEventListener("kamaChanged",this);
      this.addToQueue({object:this,method:this.kamaChanged,params:[{value:this.api.datacenter.Player.Kama}]});
      this._btnValidate.addEventListener("click",this);
      this["\x1c\t\x0f"].addEventListener("click",this);
      this["\x1c\n\x05"].addEventListener("click",this);
      this["\x1c\x0e\x01"].addEventListener("over",this);
      this["\x1c\x0e\x01"].addEventListener("out",this);
      this._cbTypes.addEventListener("itemSelected",this);
      this._cgGrid["\x19\x02\n"] = false;
      this["\x1c\r\x05"]["\x19\x02\n"] = false;
      this._cgLocal["\x19\x02\n"] = false;
      this._cgLocalSave["\x19\x02\n"] = false;
   }
   function initTexts()
   {
      this["\x1e\x10\x11"].title = this.api.datacenter.Player.data.name;
      this["\x1e\x10\x10"].title = this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Exchange["\x17\b\x1d"]).name;
      this._btnValidate.label = this.api.lang.getText("COMBINE");
      this["\x1c\t\x0f"].label = this.api.lang.getText("RECEIPTS");
      this["\x1c\n\x11"].label = this.api.lang.getText("QUANTITY_SMALL") + ": 1";
      this["\x1c\b\x1c"].label = this.api.lang.getText("APPLY_ONE_RUNE");
      this["\x1c\x0b\x0e"].label = this.api.lang.getText("TRIES_WORD") + ": 1";
      this["\x1c\x1b\x13"].text = this.api.lang.getText("CRAFTED_ITEM");
      this["\x1e\x10\x0f"].title = this.api.lang.getText("RECEIPTS_FROM_JOB");
      this["\x1d\x01\x14"].text = this.api.lang.getText("SKILL") + " : " + this.api.lang["\x17\x1e\x15"](this["\x1d\x1c\x1c"]).d;
   }
   function initData()
   {
      this.dataProvider = this.api.datacenter.Exchange["\x18\f\n"];
      this["\x18\x17\x05"] = this.api.datacenter.Exchange["\x18\x17\x06"];
      this["\x17\b\x1b"] = this.api.datacenter.Exchange["\x17\b\x1c"];
   }
   function §\x1a\x0f\x18§()
   {
      this["\x1d\x19\x16"] = this["\x1e\x10\x15"]._x + this["\x1e\x10\x15"].width;
      this["\x1d\x15\x1a"] = this["\x1e\x10\x15"]._x - this["\x1e\x10\x10"]._x;
      this["\x1d\x18\x1b"] = this._cgLocal._x - this["\x1e\x10\x15"]._x;
      this["\x1d\x13\x15"] = this["\x1e\x10\x15"].width - this._cgLocal.width;
      this["\x1d\x12\x1d"] = this["\x1e\x10\x15"]._x - this._mcArrow._x;
      this["\x1d\x18\r"] = this["\x1c\x1b\x13"]._x - this["\x1e\x10\x10"]._x;
      this["\x1d\x13\x14"] = this["\x1c\r\x05"]._x - this["\x1e\x10\x10"]._x;
   }
   function §\x1a\x1c\x18§(bShow)
   {
      this["\x1e\x10\x15"]._visible = _loc2_;
      this._mcArrow._visible = _loc2_;
      this["\x1e\x10\x10"]._visible = _loc2_;
      this["\x1c\x1b\x13"]._visible = _loc2_;
      this["\x1c\r\x05"]._visible = _loc2_;
      this._cgLocal._visible = _loc2_;
   }
   function §\x18\t\x1a§()
   {
      this._cgLocal["\x1b\x18\x01"] = this["\x1d\x19\x0f"];
      if(this["\x1d\x19\x0f"] == undefined)
      {
         this["\x1d\x19\x0f"] = 12;
      }
      var _loc2_ = dofus.graphics.gapi.ui.Craft["\x18\x03\x17"] * this["\x1d\x19\x0f"];
      var _loc3_ = Math.max(304,_loc2_);
      this._cgLocal["\x1a\x19\x18"](_loc2_);
      this._cgLocal._x = this["\x1d\x19\x16"] - _loc2_ - this["\x1d\x13\x15"] / 2;
      this["\x1e\x10\x15"]["\x1a\x19\x18"](_loc3_ + this["\x1d\x13\x15"]);
      this["\x1e\x10\x15"]._x = this["\x1d\x19\x16"] - _loc3_ - this["\x1d\x13\x15"];
      this._mcArrow._x = this["\x1e\x10\x15"]._x - this["\x1d\x12\x1d"];
      this["\x1e\x10\x10"]._x = this["\x1e\x10\x15"]._x - this["\x1d\x15\x1a"];
      this["\x1c\x1b\x13"]._x = this["\x1e\x10\x10"]._x + this["\x1d\x18\r"];
      this["\x1c\r\x05"]._x = this["\x1e\x10\x10"]._x + this["\x1d\x13\x14"];
      this["\x1c\x0e\x01"]._x = this["\x1c\r\x05"]._x;
      this._mcFiligrane._x = this["\x1c\r\x05"]._x;
      this["\x1a\x1c\x18"](true);
   }
   function §\x1b\x14\x14§()
   {
      if(this["\x1c\x05\x1b"])
      {
         return undefined;
      }
      var _loc2_ = this.api.datacenter.Basics[dofus.graphics.gapi.ui.Craft.CLASS_NAME + "_subfilter_" + this["\x1c\n\x18"]._name];
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
            else if(this["\x1d\x1c\x15"] == dofus.graphics.gapi.ui.Craft["\x17\x11\x04"] && this.api.kernel.GameManager["\x18\x0e\r"](_loc6_.unicID,this["\x1d\x1c\x1c"],this["\x1d\x19\x0f"]))
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
      _loc4_.splice(0,0,{label:this.api.lang.getText("TYPE_FILTER_ONLY_USEFUL"),id:dofus.graphics.gapi.ui.Craft["\x17\x11\x04"]});
      _loc4_.splice(0,0,{label:this.api.lang.getText("WITHOUT_TYPE_FILTER"),id:0});
      this._cbTypes.dataProvider = _loc4_;
      this["\x1a\x1a\x1a"](this["\x1d\x1c\x15"]);
      this._cgGrid.dataProvider = _loc3_;
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
   function §\x1b\x15\x0e§()
   {
      this._cgLocal.dataProvider = this["\x1c\x0f\x16"];
   }
   function §\x1b\x14\x17§()
   {
      this["\x1c\r\x05"].dataProvider = this["\x1c\x0f\b"];
      var _loc2_ = dofus.datacenter.["\x18\x10\x15"](this["\x1c\r\x05"]["\x17\x15\x12"](0).contentData);
      if(_loc2_ != undefined)
      {
         this["\x18\x06\x0f"](false);
         this["\x1c\x11\x13"]["\x18\x10\x17"] = _loc2_;
      }
      this["\x1c\x05\x0e"] = true;
   }
   function §\x18\x06\x0f§(§\x16\f\x12§)
   {
      this["\x1c\x11\x13"]._visible = !_loc2_;
      this["\x1e\x10\x14"]._visible = !_loc2_;
   }
   function validateDrop(§\x1b\t\x02§, §\x19\x13\x07§, §\x19\x10\x10§)
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
      }
      if(this["\x1c\x05\x0e"])
      {
         this.api.datacenter.Exchange["\x16\x1b\x1d"]();
         this["\x1c\x05\x0e"] = false;
      }
   }
   function §\x1a\x19\x06§()
   {
      if(this.api.datacenter.Exchange["\x18\x17\x06"].length == 0)
      {
         return undefined;
      }
      this.api.network.Exchange.ready();
   }
   function §\x16\x16\x03§(§\x19\x13\x07§)
   {
      var _loc3_ = this.api.datacenter.Exchange["\x18\x17\x06"].findFirstItem("ID",_loc2_.ID);
      var _loc4_ = this.api.datacenter.Exchange["\x18\x17\x06"].length;
      if(_loc3_.index == -1 && _loc4_ >= this["\x1d\x19\x0f"])
      {
         return false;
      }
      return true;
   }
   function §\x1a\x1d\b§(bShow)
   {
      if(_loc2_)
      {
         var _loc3_ = this.attachMovie("CraftViewer","_cvCraftViewer",this.getNextHighestDepth());
         _loc3_._x = this["\x1d\x0e\x12"]._x;
         _loc3_._y = this["\x1d\x0e\x12"]._y;
         _loc3_["\x1b\x02\t"] = new dofus.datacenter.["\x1b\x02\n"](this["\x1d\x1c\x1c"],this["\x1d\x19\x0f"]);
      }
      else
      {
         this._cvCraftViewer.removeMovieClip();
      }
      this["\x1e\x10\x0f"]._visible = _loc2_;
   }
   function §\x15\x1d\x06§(§\x19\x0f\f§)
   {
      if(this["\x1d\x18\x03"] + dofus.graphics.gapi.ui.Craft["\x19\x03\x0e"] < 10952)
      {
         this["\x1d\x18\x03"] = 6983;
         var _loc3_ = this.api.lang["\x17\x1e\x15"](this["\x1d\x1c\x1c"]).cl;
         var _loc4_ = 0;
         while(_loc4_ < _loc3_.length)
         {
            var _loc5_ = _loc3_[_loc4_];
            if(_loc2_ == _loc5_)
            {
               var _loc6_ = this.api.lang["\x17\x15\x19"](_loc5_);
               var _loc8_ = 0;
               var _loc9_ = new Array();
               var _loc11_ = 0;
               while(_loc11_ < _loc6_.length)
               {
                  var _loc12_ = _loc6_[_loc11_];
                  var _loc13_ = _loc12_[0];
                  var _loc14_ = _loc12_[1];
                  var _loc7_ = false;
                  var _loc15_ = 0;
                  while(_loc15_ < this["\x1c\x0f\x06"].length)
                  {
                     var _loc10_ = this["\x1c\x0f\x06"][_loc15_];
                     if(_loc13_ == _loc10_.unicID)
                     {
                        if(_loc14_ <= _loc10_.Quantity && _loc10_.position == -1)
                        {
                           _loc8_ = _loc8_ + 1;
                           _loc7_ = true;
                           _loc9_.push({item:_loc10_,qty:_loc14_});
                           break;
                        }
                     }
                     _loc15_ = _loc15_ + 1;
                  }
                  if(!_loc7_)
                  {
                     break;
                  }
                  _loc11_ = _loc11_ + 1;
               }
               if(_loc7_ && _loc6_.length == _loc8_)
               {
                  var _loc17_ = new Array();
                  var _loc19_ = 0;
                  while(_loc19_ < this._cgLocal.dataProvider.length)
                  {
                     var _loc16_ = this._cgLocal.dataProvider[_loc19_];
                     var _loc18_ = _loc16_.Quantity;
                     if(!(_loc18_ < 1 || _loc18_ == undefined))
                     {
                        _loc17_.push({Add:false,ID:_loc16_.ID,Quantity:_loc18_});
                     }
                     _loc19_ = _loc19_ + 1;
                  }
                  var _loc20_ = 0;
                  while(_loc20_ < _loc9_.length)
                  {
                     _loc16_ = _loc9_[_loc20_].item;
                     _loc18_ = _loc9_[_loc20_].qty;
                     if(!(_loc18_ < 1 || _loc18_ == undefined))
                     {
                        _loc17_.push({Add:true,ID:_loc16_.ID,Quantity:_loc18_});
                     }
                     _loc20_ = _loc20_ + 1;
                  }
                  this.api.network.Exchange["\x19\x01\x02"](_loc17_);
               }
               else
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("DONT_HAVE_ALL_INGREDIENT"),"ERROR_BOX");
               }
               break;
            }
            _loc4_ = _loc4_ + 1;
         }
      }
      return undefined;
   }
   function §\x1a\n\r§()
   {
      this["\x1b\x1d\x02"] = new Array();
      var _loc2_ = 0;
      while(_loc2_ < this["\x1c\x0f\x16"].length)
      {
         var _loc3_ = this["\x1c\x0f\x16"][_loc2_];
         this["\x1b\x1d\x02"].push({id:_loc3_.ID,quantity:_loc3_.Quantity});
         _loc2_ = _loc2_ + 1;
      }
   }
   function §\x16\x1b\x13§()
   {
      var _loc2_ = 0;
      while(_loc2_ < this["\x1c\x0f\x16"].length)
      {
         var _loc3_ = this["\x1c\x0f\x16"][_loc2_];
         this.api.network.Exchange["\x19\x01\x01"](false,_loc3_,_loc3_.Quantity);
         _loc2_ = _loc2_ + 1;
      }
   }
   function §\x1a\n\n§()
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
   }
   function §\x19\x07\n§()
   {
      ank.utils.Timer.setTimer(this,"doNextCraft",this,this.doNextCraft,250);
   }
   function doNextCraft()
   {
      if(this["\x1a\n\n"]() == false)
      {
         this["\x1b\x0b\x02"]();
      }
   }
   function §\x1b\x0b\x02§()
   {
      ank.utils.Timer.removeTimer(this,"doNextCraft");
      this["\x1c\x06\x0f"] = false;
      this._cgLocal.dataProvider = this.api.datacenter.Exchange["\x18\x17\x06"];
      this["\x1b\x14\x14"]();
      this["\x1b\x14\x17"]();
   }
   function §\x1a\x1e\x15§(§\x18\x10\x14§, §\x16\b\b§)
   {
      if(this["\x1c\x0e\x01"].contentPath == undefined)
      {
         return undefined;
      }
      this._mcFiligrane._visible = _loc3_;
      this["\x1c\x0e\x01"]._visible = _loc3_;
      this["\x1c\x0e\x01"].contentPath = !_loc3_ ? "" : _loc2_.iconFile;
      this._mcFiligrane.itemName = _loc2_.name;
   }
   function kamaChanged(oEvent)
   {
      this["\x1c\x19\x1c"].text = new ank.utils.ExtendedString(_loc2_.value)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
   }
   function modelChanged(oEvent)
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
               var _loc3_ = this.api.kernel.GameManager["\x16\x03\x12"](this.api.kernel.GameManager["\x18\x1c\x16"](this["\x1c\x0f\x16"]),this["\x1d\x1c\x1c"],this["\x1d\x19\x0f"]);
               if(_loc3_ != undefined)
               {
                  this["\x1a\x1e\x15"](new dofus.datacenter.["\x18\x10\x15"](-1,_loc3_,1,0,"",0),true);
               }
               else
               {
                  this["\x1a\x1e\x15"](undefined,false);
               }
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
         case this._btnFilterRunes:
            this.api.ui.showTooltip(this.api.lang.getText("RUNES"),_loc2_.target,-20);
            break;
         case this._btnFilterCards:
            this.api.ui.showTooltip(this.api.lang.getText("CARDS"),_loc2_.target,-20);
            break;
         case this["\x1c\x0e\x01"]:
            if(this._mcFiligrane.itemName != undefined)
            {
               this.gapi.showTooltip(this._mcFiligrane.itemName,this["\x1c\x0e\x01"],-22);
               break;
            }
      }
   }
   function out(oEvent)
   {
      this.api.ui.hideTooltip();
   }
   function §\x19\x16\t§()
   {
      this["\x1c\x05\x1b"] = false;
      this._btnValidate.label = this.api.lang.getText("COMBINE");
      this["\x1d\x14\x1b"] = 1;
      this["\x1c\n\x11"].label = this.api.lang.getText("QUANTITY_SMALL") + ": 1";
      this["\x1c\x0b\x0e"].label = this.api.lang.getText("TRIES_WORD") + ": 1";
      this["\x1c\b\x1c"].label = this.api.lang.getText("APPLY_ONE_RUNE");
      this["\x1b\x14\x14"]();
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
   function §\x1a\r\b§()
   {
      this["\x1c\x05\x1b"] = true;
      this._btnValidate.label = this["\x1c\b\x1c"].label = this.api.lang.getText("STOP_WORD");
      this.api.network.Exchange["\x1a\r\b"](this["\x1d\x14\x1b"] - 1);
   }
   function click(oEvent)
   {
      if(_loc2_.target == this._btnClose)
      {
         this["\x16\x15\n"]();
         return undefined;
      }
      if(_loc2_.target == this["\x1c\n\x11"])
      {
         var _loc3_ = 99;
         var _loc4_ = 0;
         var _loc5_ = 10000000;
         var _loc8_ = 0;
         while(_loc8_ < this["\x1c\x0f\x16"].length)
         {
            var _loc7_ = false;
            var _loc9_ = 0;
            while(_loc9_ < this["\x1c\x0f\x06"].length)
            {
               if(this["\x1c\x0f\x16"][_loc8_].ID == this["\x1c\x0f\x06"][_loc9_].ID)
               {
                  _loc7_ = true;
                  var _loc6_ = Math.floor(this["\x1c\x0f\x06"][_loc9_].Quantity / this["\x1c\x0f\x16"][_loc8_].Quantity);
                  if(_loc6_ < _loc5_)
                  {
                     _loc5_ = _loc6_;
                  }
               }
               _loc9_ = _loc9_ + 1;
            }
            if(!_loc7_)
            {
               break;
            }
            _loc8_ = _loc8_ + 1;
         }
         if(_loc7_)
         {
            _loc4_ = 1;
            _loc3_ = _loc5_ + 1;
            if(_loc4_ > _loc5_)
            {
               _loc4_ = _loc5_;
            }
         }
         else
         {
            _loc3_ = 0;
            _loc4_ = 0;
         }
         var _loc10_ = this.gapi.loadUIComponent("PopupQuantity","PopupQuantity",{value:1,max:_loc3_,params:{targetType:"repeat"}});
         _loc10_.addEventListener("validate",this);
         return undefined;
      }
      if(_loc2_.target == this["\x1c\x0b\x0e"])
      {
         var _loc11_ = this.gapi.loadUIComponent("PopupQuantity","PopupQuantity",{value:1,max:99,params:{targetType:"tries"}});
         _loc11_.addEventListener("validate",this);
         return undefined;
      }
      if(_loc2_.target == this._btnValidate || _loc2_.target == this["\x1c\b\x1c"])
      {
         if(this["\x1c\x05\x1b"])
         {
            this.api.network.Exchange["\x1b\x0b\x03"]();
            return undefined;
         }
         if(this["\x1c\x0f\x16"].length == 0)
         {
            return undefined;
         }
         var _loc12_ = this.api.kernel.GameManager["\x16\x03\x12"](this.api.kernel.GameManager["\x18\x1c\x16"](this["\x1c\x0f\x16"]),this["\x1d\x1c\x1c"],this["\x1d\x19\x0f"]);
         if(_loc12_ == undefined && this.api.kernel.OptionsManager.getOption("AskForWrongCraft"))
         {
            this.api.kernel.showMessage(this.api.lang.getText("INFORMATIONS"),this.api.lang.getText("WRONG_CRAFT_CONFIRM"),"CAUTION_YESNO",{name:"confirmWrongCraft",listener:this});
         }
         else
         {
            this["\x1b\x17\x15"]();
         }
         return undefined;
      }
      if(_loc2_.target == this["\x1c\t\x0f"])
      {
         this["\x1a\x1d\b"](_loc2_.target.selected);
         return undefined;
      }
      if(_loc2_.target == this["\x1c\n\x05"])
      {
         this.api.network.Exchange["\x1a\r\x10"]();
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
               this["\x1c\x17\x18"].text = this.api.lang.getText("EQUIPEMENT");
               break;
            case "_btnFilterNonEquipement":
               this["\x1b\x1e\x19"] = dofus.Constants["\x17\x11\x01"];
               this["\x1c\x17\x18"].text = this.api.lang.getText("NONEQUIPEMENT");
               break;
            case "_btnFilterRessoureces":
               this["\x1b\x1e\x19"] = dofus.Constants.FILTER_RESSOURCES;
               this["\x1c\x17\x18"].text = this.api.lang.getText("RESSOURECES");
               break;
            case "_btnFilterSoul":
               this["\x1b\x1e\x19"] = dofus.Constants.FILTER_SOUL;
               this["\x1c\x17\x18"].text = this.api.lang.getText("SOUL");
               break;
            case "_btnFilterRunes":
               this["\x1b\x1e\x19"] = dofus.Constants.FILTER_RUNES;
               this["\x1c\x17\x18"].text = this.api.lang.getText("RUNES");
               break;
            case "_btnFilterCards":
               this["\x1b\x1e\x19"] = dofus.Constants.FILTER_CARDS;
               this["\x1c\x17\x18"].text = this.api.lang.getText("CARDS");
         }
         this["\x1b\x14\x14"](true);
      }
      else
      {
         _loc2_.target.selected = true;
      }
   }
   function §\x1b\x17\x15§()
   {
      if(this["\x1d\x14\x1b"] > 1)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("CRAFT_LOOP_START",[this["\x1d\x14\x1b"]]),"INFO_CHAT");
         this["\x1a\x1d\b"](false);
         this["\x1c\t\x0f"].selected = false;
         this["\x1a\n\r"]();
         this["\x1a\x19\x06"]();
         this.addToQueue({object:this,method:this["\x1a\r\b"]});
      }
      else
      {
         this["\x1a\n\r"]();
         this["\x1a\x19\x06"]();
      }
   }
   function §\x1b\x14\x1c§(§\x19\x13\x07§)
   {
      var _loc3_ = new ank.utils.ExtendedArray();
      _loc3_.push(_loc2_);
      this["\x17\b\x1b"] = _loc3_;
   }
   function dblClickItem(oEvent)
   {
      var _loc3_ = _loc2_.target.contentData;
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      var _loc4_ = !Key.isDown(Key.CONTROL) ? 1 : _loc3_.Quantity;
      var _loc5_ = _loc2_.owner._name;
      switch(_loc5_)
      {
         case "_cgGrid":
            if(this["\x16\x16\x03"](_loc3_))
            {
               this.validateDrop("_cgLocal",_loc3_,_loc4_);
            }
            break;
         case "_cgLocal":
            this.validateDrop("_cgGrid",_loc3_,_loc4_);
      }
   }
   function dragItem(oEvent)
   {
      this.gapi.removeCursor();
      if(_loc2_.target.contentData == undefined)
      {
         return undefined;
      }
      this.gapi["\x1a\x15\x19"](_loc2_.target.contentData);
   }
   function dropItem(oEvent)
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
      var _loc4_ = _loc2_.target._parent._parent._name;
      switch(_loc4_)
      {
         case "_cgGrid":
            if(_loc3_.position == -1)
            {
               return undefined;
            }
            break;
         case "_cgLocal":
            if(_loc3_.position == -2)
            {
               return undefined;
            }
            if(!this["\x16\x16\x03"](_loc3_))
            {
               return undefined;
            }
            break;
      }
      if(_loc3_.Quantity > 1)
      {
         var _loc5_ = this.gapi.loadUIComponent("PopupQuantity","PopupQuantity",{value:1,max:_loc3_.Quantity,params:{targetType:"item",oItem:_loc3_,targetGrid:_loc4_}});
         _loc5_.addEventListener("validate",this);
      }
      else
      {
         this.validateDrop(_loc4_,_loc3_,1);
      }
   }
   function selectItem(oEvent)
   {
      if(_loc2_.target.contentData == undefined)
      {
         this["\x18\x06\x0f"](true);
      }
      else
      {
         if(Key.isDown(dofus.Constants["\x16\x19\x13"]))
         {
            this.api.kernel.GameManager["\x18\n\x1d"](_loc2_.target.contentData);
            return undefined;
         }
         this["\x18\x06\x0f"](false);
         this["\x1c\x11\x13"]["\x18\x10\x17"] = _loc2_.target.contentData;
      }
   }
   function validate(oEvent)
   {
      switch(_loc2_.params.targetType)
      {
         case "item":
            this.validateDrop(_loc2_.params.targetGrid,_loc2_.params.oItem,_loc2_.value);
            break;
         case "repeat":
            var _loc3_ = Number(_loc2_.value);
            if(_loc3_ < 1 || (_loc3_ == undefined || _global.isNaN(_loc3_)))
            {
               _loc3_ = 1;
            }
            this["\x1c\n\x11"].label = this.api.lang.getText("QUANTITY_SMALL") + ": " + _loc3_;
            this["\x1d\x14\x1b"] = _loc3_;
      }
   }
   function itemSelected(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "_cbTypes")
      {
         this["\x1d\x1c\x15"] = this._cbTypes.selectedItem.id;
         this.api.datacenter.Basics[dofus.graphics.gapi.ui.Craft.CLASS_NAME + "_subfilter_" + this["\x1c\n\x18"]._name] = this["\x1d\x1c\x15"];
         this["\x1b\x14\x14"]();
      }
   }
   function yes()
   {
      this["\x1b\x17\x15"]();
   }
}
