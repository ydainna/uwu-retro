class dofus.§\x18\x03\x10§.gapi.ui.SecureCraft extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "SecureCraft";
   static var §\x1a\n\x03§ = {ra:70,rb:0,ga:70,gb:0,ba:70,bb:0};
   static var §\x19\x0b\b§ = {ra:100,rb:0,ga:100,gb:0,ba:100,bb:0};
   static var §\x18\x03\x17§ = 33;
   static var §\x17\x06\x19§ = 3000;
   static var §\x17\x11\x04§ = 10000;
   var §\x1c\x05\r§ = false;
   var §\x1b\x1e\x19§ = dofus.Constants.FILTER_RESSOURCES;
   var §\x1d\x1c\x15§ = 0;
   static var secureCraftNotified = false;
   var §\x1d\x18\x03§ = 0;
   static var §\x19\x03\x0e§ = 1000;
   function SecureCraft()
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
   function §\x17\x1c§(§\x19\n\x01§)
   {
      this["\x1d\x19\x0f"] = Number(_loc2_);
      return this.maxItem;
   }
   function §\x1c\x1d§(§\x19\x0e\x0b§)
   {
      this["\x1d\x1c\x1c"] = Number(_loc2_);
      this["\x1d\x16\f"] = _global.api.lang["\x17\x1e\x14"](this["\x1d\x1c\x1c"]);
      return this.skillId;
   }
   function §\x1e\x1d\x03§()
   {
      return this.api.datacenter.Basics.aks_exchange_echangeType == 13;
   }
   function §\x11\x1a§(§\x17\n\x1c§)
   {
      this["\x1c\x0f\x06"].removeEventListener("modelChange",this);
      this["\x1c\x0f\x06"] = _loc2_;
      this["\x1c\x0f\x06"].addEventListener("modelChanged",this);
      this.modelChanged({target:this["\x1c\x0f\x06"]});
      return this["\x1e\x18\x03"]();
   }
   function §\x17\n§(§\x17\x0b\x06§)
   {
      this["\x1c\x0f\x16"].removeEventListener("modelChange",this);
      this["\x1c\x0f\x16"] = _loc2_;
      this["\x1c\x0f\x16"].addEventListener("modelChanged",this);
      this.modelChanged({target:this["\x1c\x0f\x16"]});
      return this.localDataProvider;
   }
   function §\x12\x12§(§\x17\n\x1d§)
   {
      this["\x1c\x0f\b"].removeEventListener("modelChange",this);
      this["\x1c\x0f\b"] = _loc2_;
      this["\x1c\x0f\b"].addEventListener("modelChanged",this);
      this.modelChanged({target:this["\x1c\x0f\b"]});
      return this.distantDataProvider;
   }
   function §\x11\t§(§\x17\n\x19§)
   {
      this["\x1c\x0f\x01"].removeEventListener("modelChange",this);
      this["\x1c\x0f\x01"] = _loc2_;
      this["\x1c\x0f\x01"].addEventListener("modelChanged",this);
      this.modelChanged({target:this["\x1c\x0f\x01"]});
      return this.coopDataProvider;
   }
   function §\x1a\x06§(§\x17\x0b\x0b§)
   {
      this["\x1c\x0f\x1d"].removeEventListener("modelChange",this);
      this["\x1c\x0f\x1d"] = _loc2_;
      this["\x1c\x0f\x1d"].addEventListener("modelChanged",this);
      this.modelChanged({target:this["\x1c\x0f\x1d"]});
      return this.payDataProvider;
   }
   function §\x1a\x07§(§\x17\x0b\f§)
   {
      this["\x1c\x10\x02"].removeEventListener("modelChange",this);
      this["\x1c\x10\x02"] = _loc2_;
      this["\x1c\x10\x02"].addEventListener("modelChanged",this);
      this.modelChanged({target:this["\x1c\x10\x02"]});
      return this.payIfSuccessDataProvider;
   }
   function §\x1b\b§(§\x17\x0b\x0f§)
   {
      this["\x1c\x10\x07"].removeEventListener("modelChange",this);
      this["\x1c\x10\x07"] = _loc2_;
      this["\x1c\x10\x07"].addEventListener("modelChanged",this);
      this.modelChanged();
      return this.readyDataProvider;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.SecureCraft.CLASS_NAME);
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
      this["\x1d\x0e\x12"]._visible = false;
      this["\x1e\x10\x0f"].swapDepths(this.getNextHighestDepth());
      this["\x1a\x1e\x15"](undefined,false);
      this["\x1a\x1d\b"](false);
      this.addToQueue({object:this,method:this.addListeners});
      this["\x1c\n\x18"] = this._btnFilterRessoureces;
      this.addToQueue({object:this,method:this["\x1a\x0f\x18"]});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
      this["\x18\x06\x0f"](true);
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this["\x18\t\x1a"]});
      this.api.datacenter.Player.addEventListener("kamaChanged",this);
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
      this["\x1c\r\x05"].addEventListener("overItem",this);
      this["\x1c\r\x05"].addEventListener("outItem",this);
      this["\x1c\r\x04"].addEventListener("selectItem",this);
      this["\x1c\r\x04"].addEventListener("overItem",this);
      this["\x1c\r\x04"].addEventListener("outItem",this);
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
      this._btnFilterRunes.addEventListener("out",this);
      this._btnFilterRunes.addEventListener("click",this);
      this._btnFilterRunes.addEventListener("over",this);
      this._btnClose.addEventListener("click",this);
      this.api.datacenter.Exchange.addEventListener("localKamaChange",this);
      this.api.datacenter.Exchange.addEventListener("distantKamaChange",this);
      this.api.datacenter.Exchange.addEventListener("payKamaChange",this);
      this.api.datacenter.Exchange.addEventListener("payIfSuccessKamaChange",this);
      this._btnValidate.addEventListener("click",this);
      this["\x1c\t\x0f"].addEventListener("click",this);
      this._btnPrivateMessage.addEventListener("click",this);
      this["\x1c\n\f"].addEventListener("click",this);
      this._mcFiligrane.onRollOver = function()
      {
         this._parent.over({target:this});
      };
      this._mcFiligrane.onRollOut = function()
      {
         this._parent.out({target:this});
      };
      this._cbTypes.addEventListener("itemSelected",this);
      this._cgPay.addEventListener("selectItem",this);
      this._cgPayIfSuccess.addEventListener("selectItem",this);
      this["\x1c\n\x10"].addEventListener("click",this);
      this["\x1c\x0b\x11"].addEventListener("click",this);
      if(this["\x18\r\x05"])
      {
         this._cgPay.addEventListener("dblClickItem",this);
         this._cgPay.addEventListener("dropItem",this);
         this._cgPayIfSuccess.addEventListener("dblClickItem",this);
         this._cgPayIfSuccess.addEventListener("dropItem",this);
      }
      this["\x1d\x0e\r"].onRelease = function()
      {
         this._parent["\x1b\r\x01"](2);
      };
      this["\x1d\x0e\f"].onRelease = function()
      {
         this._parent["\x1b\r\x01"](1);
      };
      this["\x1c\r\x04"]["\x19\x02\n"] = false;
      this["\x1c\r\x05"]["\x19\x02\n"] = false;
      this._cgGrid["\x19\x02\n"] = false;
      this._cgLocal["\x19\x02\n"] = false;
      this._cgPay["\x19\x02\n"] = false;
      this._cgPayIfSuccess["\x19\x02\n"] = false;
   }
   function initTexts()
   {
      this["\x1e\x10\x11"].title = this.api.datacenter.Player.data.name;
      this["\x1e\x10\x10"].title = this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Exchange["\x17\b\x1d"]).name;
      this._btnValidate.label = this.api.lang.getText("COMBINE");
      this["\x1c\x0b\x11"].label = this.api.lang.getText("VALIDATE");
      this["\x1c\t\x0f"].label = this.api.lang.getText("RECEIPTS");
      this._btnPrivateMessage.label = this.api.lang.getText("WISPER_MESSAGE");
      this["\x1c\n\x10"].label = this.api.lang.getText("WISPER_MESSAGE");
      this["\x1c\n\f"].label = this.api.lang.getText("PAY");
      this["\x1c\x1b\x13"].text = this.api.lang.getText("CRAFTED_ITEM");
      this["\x1e\x10\x0f"].title = this.api.lang.getText("RECEIPTS_FROM_JOB");
      this["\x1d\x01\x14"].text = this.api.lang.getText("SKILL") + " : " + this.api.lang["\x17\x1e\x15"](this["\x1d\x1c\x1c"]).d;
      this["\x1e\x10\x10"].title = this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Exchange["\x17\b\x1d"]).name;
      this["\x1c\x19\x1c"].text = new ank.utils.ExtendedString(this.api.datacenter.Player.Kama)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
      this["\x1d\x0e\x0f"]._visible = this["\x18\r\x05"];
      this["\x1d\x0e\x0e"]._visible = this["\x18\r\x05"];
      this["\x1c\x1c\x11"].text = this.api.lang.getText("PAY");
      this["\x1c\x1c\x12"].text = this.api.lang.getText("GRANT_IF_SUCCESS");
   }
   function §\x18\t\x14§()
   {
      this.dataProvider = this.api.datacenter.Exchange["\x18\f\n"];
      this["\x18\x17\x05"] = this.api.datacenter.Exchange["\x18\x17\x06"];
      this["\x17\b\x1b"] = this.api.datacenter.Exchange["\x17\b\x1c"];
      this["\x17\x01\n"] = this.api.datacenter.Exchange["\x17\x01\x0b"];
      this["\x1a\x04\n"] = this.api.datacenter.Exchange["\x1a\x04\x0b"];
      this["\x1a\x04\f"] = this.api.datacenter.Exchange["\x1a\x04\r"];
      this["\x1a\n\x01"] = this.api.datacenter.Exchange["\x1a\n\x02"];
      this["\x1b\r\t"](false);
      this["\x1b\r\x01"](1);
      this["\x1a\x1e\x15"](undefined,false);
   }
   function §\x1b\x15\x04§()
   {
      this.api.datacenter.Exchange["\x18\f\n"] = this.api.datacenter.Player.Inventory.deepClone();
      this.dataProvider = this.api.datacenter.Exchange["\x18\f\n"];
      this["\x1b\r\t"](false);
   }
   function §\x1a\x0f\x18§()
   {
   }
   function §\x18\t\x1a§()
   {
      if(this["\x1d\x19\x0f"] == undefined)
      {
         this["\x1d\x19\x0f"] = 9;
      }
      this._cgLocal["\x1b\x18\x01"] = this["\x1d\x19\x0f"];
      this["\x1c\r\x05"]["\x1b\x18\x01"] = this["\x1d\x19\x0f"];
      var _loc2_ = dofus.graphics.gapi.ui.SecureCraft["\x18\x03\x17"] * this["\x1d\x19\x0f"];
      this._cgLocal["\x1a\x19\x18"](_loc2_);
      this._cgLocal._x = this["\x1e\x10\x15"]._x + this["\x1e\x10\x15"].width - _loc2_ - 10;
      this["\x1c\r\x05"]["\x1a\x19\x18"](_loc2_);
      this["\x1c\r\x05"]._x = this["\x1e\x10\x10"]._x + 10;
   }
   function §\x1b\x14\x14§()
   {
      var _loc2_ = this.api.datacenter.Basics[dofus.graphics.gapi.ui.SecureCraft.CLASS_NAME + "_subfilter_" + this["\x1c\n\x18"]._name];
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
               var _loc8_ = 0;
               if(this["\x1e\b\x13"] == "_cgPay")
               {
                  _loc8_ = this["\x17\x1d\x0e"](this["\x1c\x10\x02"],_loc6_.unicID);
               }
               else if(this["\x1e\b\x13"] == "_cgPayIfSuccess")
               {
                  _loc8_ = this["\x17\x1d\x0e"](this["\x1c\x0f\x1d"],_loc6_.unicID);
               }
               else if(this["\x1e\b\x13"] == "_cgGrid")
               {
                  if(this["\x1e\b\x12"] == "_cgPay")
                  {
                     _loc8_ = this["\x17\x1d\x0e"](this["\x1c\x10\x02"],_loc6_.unicID);
                  }
                  else if(this["\x1e\b\x12"] == "_cgPayIfSuccess")
                  {
                     _loc8_ = this["\x17\x1d\x0e"](this["\x1c\x0f\x1d"],_loc6_.unicID);
                  }
               }
               _loc6_.Quantity -= _loc8_;
               _loc3_.push(_loc6_);
            }
            else if(this["\x1d\x1c\x15"] == dofus.graphics.gapi.ui.SecureCraft["\x17\x11\x04"] && this.api.kernel.GameManager["\x18\x0e\r"](_loc6_.unicID,this["\x1d\x1c\x1c"],this["\x1d\x19\x0f"]))
            {
               _loc3_.push(_loc6_);
            }
            var _loc9_ = _loc6_.type;
            if(_loc5_[_loc9_] != true)
            {
               _loc4_.push({label:this.api.lang["\x17\x19\x1a"](_loc9_).n,id:_loc9_});
               _loc5_[_loc9_] = true;
            }
         }
      }
      _loc4_.sortOn("label");
      _loc4_.splice(0,0,{label:this.api.lang.getText("TYPE_FILTER_ONLY_USEFUL"),id:dofus.graphics.gapi.ui.SecureCraft["\x17\x11\x04"]});
      _loc4_.splice(0,0,{label:this.api.lang.getText("WITHOUT_TYPE_FILTER"),id:0});
      this._cbTypes.dataProvider = _loc4_;
      this["\x1a\x1a\x1a"](this["\x1d\x1c\x15"]);
      this._cgGrid.dataProvider = _loc3_;
   }
   function §\x17\x1d\x0e§(§\x17\x0b\x02§, §\x19\b\x18§)
   {
      for(var §\x1a\b\x15§ in _loc2_)
      {
         if(_loc2_[eval("\x1a\b\x15")].unicID == _loc3_)
         {
            return _loc2_[eval("\x1a\b\x15")].Quantity;
         }
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
   function §\x1b\x15\x0e§()
   {
      this._cgLocal.dataProvider = this["\x1c\x0f\x16"];
      this["\x1c\x05\r"] = true;
      this.hideButtonValidate(true);
      ank.utils.Timer.setTimer(this,"securecraft",this,this.hideButtonValidate,dofus.graphics.gapi.ui.SecureCraft["\x17\x06\x19"],[false]);
   }
   function §\x1b\x14\x11§()
   {
      this["\x1c\r\x04"].dataProvider = this["\x1c\x0f\x01"];
      this._mcFiligrane._visible = this["\x1c\x04\x02"] = this["\x1c\x0f\x01"] == undefined;
      var _loc2_ = dofus.datacenter.["\x18\x10\x15"](this["\x1c\r\x04"]["\x17\x15\x12"](0).contentData);
      if(_loc2_ != undefined)
      {
         this["\x18\x06\x0f"](false);
         this["\x1c\x11\x13"]["\x18\x10\x17"] = _loc2_;
      }
   }
   function §\x1b\x15\x13§(bShow)
   {
      this._cgPay.dataProvider = this["\x1c\x0f\x1d"];
      if(!_loc2_)
      {
         return undefined;
      }
      this["\x1b\r\t"](true);
      this.hideButtonValidate(true);
      ank.utils.Timer.setTimer(this,"securecraft",this,this.hideButtonValidate,dofus.graphics.gapi.ui.SecureCraft["\x17\x06\x19"],[false]);
   }
   function §\x1b\x15\x14§(bShow)
   {
      this._cgPayIfSuccess.dataProvider = this["\x1c\x10\x02"];
      if(!_loc2_)
      {
         return undefined;
      }
      this["\x1b\r\t"](true);
      this.hideButtonValidate(true);
      ank.utils.Timer.setTimer(this,"securecraft",this,this.hideButtonValidate,dofus.graphics.gapi.ui.SecureCraft["\x17\x06\x19"],[false]);
   }
   function §\x1b\x14\x17§()
   {
      this["\x1c\r\x05"].dataProvider = this["\x1c\x0f\b"];
      this["\x1c\x05\r"] = true;
      this.hideButtonValidate(true);
      ank.utils.Timer.setTimer(this,"securecraft",this,this.hideButtonValidate,dofus.graphics.gapi.ui.SecureCraft["\x17\x06\x19"],[false]);
   }
   function §\x1b\x15\x19§()
   {
      var _loc2_ = !this["\x1c\x10\x07"][0] ? dofus.graphics.gapi.ui.SecureCraft["\x19\x0b\b"] : dofus.graphics.gapi.ui.SecureCraft["\x1a\n\x03"];
      this["\x1a\x18\x04"](this["\x1e\x10\x15"],_loc2_);
      this["\x1a\x18\x04"](this._btnValidate,_loc2_);
      this["\x1a\x18\x04"](this._cgLocal,_loc2_);
      _loc2_ = !this["\x1c\x10\x07"][1] ? dofus.graphics.gapi.ui.SecureCraft["\x19\x0b\b"] : dofus.graphics.gapi.ui.SecureCraft["\x1a\n\x03"];
      this["\x1a\x18\x04"](this["\x1e\x10\x10"],_loc2_);
      this["\x1a\x18\x04"](this["\x1c\r\x05"],_loc2_);
   }
   function hideButtonValidate(§\x16\f\x12§)
   {
      var _loc3_ = !_loc2_ ? dofus.graphics.gapi.ui.SecureCraft["\x19\x0b\b"] : dofus.graphics.gapi.ui.SecureCraft["\x1a\n\x03"];
      this["\x1a\x18\x04"](this._btnValidate,_loc3_);
      this._btnValidate.enabled = !_loc2_;
   }
   function §\x18\x06\x0f§(§\x16\f\x12§)
   {
      this["\x1c\x11\x13"]._visible = !_loc2_;
      this["\x1e\x10\x14"]._visible = !_loc2_;
   }
   function validateDrop(§\x1b\n\x19§, §\x19\x13\x07§, §\x19\x10\x10§)
   {
      if(_loc4_ < 1 || _loc4_ == undefined)
      {
         return undefined;
      }
      if(_loc4_ > _loc3_.Quantity)
      {
         _loc4_ = _loc3_.Quantity;
      }
      this["\x1e\b\x13"] = _loc2_;
      switch(_loc2_)
      {
         case "_cgGrid":
            if(!this["\x1c\x07\t"])
            {
               this.api.network.Exchange["\x19\x01\x01"](false,_loc3_,_loc4_);
            }
            else
            {
               this.api.network.Exchange["\x19\x01\x04"](this["\x1d\x1a\x1c"],false,_loc3_.ID,_loc4_);
            }
            break;
         case "_cgLocal":
            this.api.network.Exchange["\x19\x01\x01"](true,_loc3_,_loc4_);
            break;
         case "_cgPay":
            this.api.network.Exchange["\x19\x01\x04"](1,true,_loc3_.ID,_loc4_);
            break;
         case "_cgPayIfSuccess":
            this.api.network.Exchange["\x19\x01\x04"](2,true,_loc3_.ID,_loc4_);
      }
      if(this["\x1c\x05\r"])
      {
         this.api.datacenter.Exchange["\x16\x1b\x1b"]();
         this["\x1c\x05\r"] = false;
      }
   }
   function §\x1a\x19\x06§()
   {
      var _loc2_ = this["\x18\x02\x02"]();
      if(_loc2_.length == 0)
      {
         return undefined;
      }
      if(_loc2_.length > this["\x1d\x19\x0f"])
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("NOT_ENOUGHT_CRAFT_SLOT",[this["\x1d\x19\x0f"]]),"ERROR_BOX",{name:"NotEnoughtCraftSlot"});
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
         return undefined;
      }
      this["\x16\x1b\x13"]();
      var _loc2_ = 0;
      while(_loc2_ < this["\x1b\x1d\x02"].length)
      {
         var _loc3_ = this["\x1b\x1d\x02"][_loc2_];
         var _loc4_ = this["\x1c\x0f\x06"].findFirstItem("ID",_loc3_.id);
         if(_loc4_.index != -1)
         {
            if(_loc4_.item.Quantity < _loc3_.quantity)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CRAFT_NOT_ENOUGHT",[_loc4_.item.name]),"ERROR_BOX",{name:"NotEnougth"});
               return undefined;
            }
            this.api.network.Exchange["\x19\x01\x01"](true,_loc4_.item,_loc3_.quantity);
         }
         else
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("CRAFT_NO_RESOURCE"),"ERROR_BOX",{name:"NotEnougth"});
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   function §\x1a\x1e\x15§(§\x18\x10\x14§, §\x16\b\b§)
   {
      if(this["\x1c\x0e\x01"].contentPath == undefined)
      {
         return undefined;
      }
      this._mcFiligrane._visible = this["\x1c\x04\x02"] = _loc3_;
      this["\x1c\x0e\x01"]._visible = _loc3_;
      this["\x1c\x0e\x01"].contentPath = !_loc3_ ? "" : _loc2_.iconFile;
      this._mcFiligrane.itemName = _loc2_.name;
   }
   function §\x1b\x15\x17§()
   {
      var _loc2_ = this.api.kernel.GameManager["\x16\x03\x12"](this["\x18\x02\x02"](),this["\x1d\x1c\x1c"],this["\x1d\x19\x0f"]);
      if(_loc2_ != undefined)
      {
         this["\x1a\x1e\x15"](new dofus.datacenter.["\x18\x10\x15"](-1,_loc2_,1,0,"",0),true);
      }
      else
      {
         this["\x1a\x1e\x15"](undefined,false);
      }
   }
   function §\x18\x02\x02§()
   {
      var _loc2_ = this.api.kernel.GameManager;
      return _loc2_["\x18\x1c\x16"](_loc2_["\x18\x1c\x15"](this["\x1c\x0f\x16"],this["\x1c\x0f\b"]));
   }
   function §\x1b\r\t§(bShow)
   {
      if(_loc2_ == undefined && this["\x1c\x07\t"] == undefined)
      {
         return undefined;
      }
      if(_loc2_ == undefined)
      {
         this["\x1c\x07\t"] = !this["\x1c\x07\t"];
      }
      else
      {
         if(this["\x1c\x07\t"] == _loc2_)
         {
            return undefined;
         }
         this["\x1c\x07\t"] = _loc2_;
      }
      this.gapi.removeCursor();
      this["\x1e\x10\x15"]._visible = !this["\x1c\x07\t"];
      this._cgLocal._visible = !this["\x1c\x07\t"];
      this._btnPrivateMessage._visible = !this["\x1c\x07\t"];
      this["\x1e\x10\x10"]._visible = !this["\x1c\x07\t"];
      this["\x1c\r\x05"]._visible = !this["\x1c\x07\t"];
      this["\x1c\n\f"]._visible = !this["\x1c\x07\t"];
      this["\x1e\x10\x0e"]._visible = !this["\x1c\x07\t"];
      this["\x1c\x1b\x13"]._visible = !this["\x1c\x07\t"];
      this._mcFiligrane._visible = !this["\x1c\x07\t"] ? this["\x1c\x04\x02"] : false;
      this["\x1c\x0e\x01"]._visible = !this["\x1c\x07\t"] ? this["\x1c\x04\x02"] : false;
      this["\x1c\r\x04"]._visible = !this["\x1c\x07\t"];
      this["\x1c\t\x0f"]._visible = !this["\x1c\x07\t"];
      this._btnValidate._visible = !this["\x1c\x07\t"];
      this._mcArrow._visible = !this["\x1c\x07\t"];
      this["\x1e\x10\x18"]._visible = this["\x1c\x07\t"];
      this["\x1c\n\x10"]._visible = this["\x1c\x07\t"];
      this["\x1c\x0b\x11"]._visible = this["\x1c\x07\t"];
      this["\x1e\x10\x14"]._y = !this["\x1c\x07\t"] ? 30 : 57;
      this["\x1c\x11\x13"]._y = !this["\x1c\x07\t"] ? 30 : 57;
      this["\x1d\t\x05"]._visible = this["\x1c\x07\t"];
      this._mcBlinkPay_TripleFramerate._visible = this["\x1c\x07\t"];
      this._cgPay._visible = this["\x1c\x07\t"];
      this["\x1c\x1c\x14"]._visible = this["\x1c\x07\t"];
      this["\x1d\x0e\x0f"]._visible = this["\x1c\x07\t"];
      this["\x1c\x1c\x11"]._visible = this["\x1c\x07\t"];
      this["\x1c\n\x0e"]._visible = this["\x1c\x07\t"] && this["\x18\r\x05"];
      this["\x1d\t\x06"]._visible = this["\x1c\x07\t"];
      this._mcBlinkPayIfSuccess_TripleFramerate._visible = this["\x1c\x07\t"];
      this._cgPayIfSuccess._visible = this["\x1c\x07\t"];
      this["\x1c\x1c\x13"]._visible = this["\x1c\x07\t"];
      this["\x1d\x0e\x0e"]._visible = this["\x1c\x07\t"];
      this["\x1c\x1c\x12"]._visible = this["\x1c\x07\t"];
      this["\x1c\n\r"]._visible = this["\x1c\x07\t"] && this["\x18\r\x05"];
      this["\x1b\r\x01"]();
   }
   function §\x1b\r\x01§(§\x19\f\x01§)
   {
      if(_loc2_ != undefined)
      {
         this["\x1d\x1a\x1c"] = _loc2_;
      }
      this["\x1d\x0e\f"]._visible = this["\x1c\x07\t"] && this["\x18\r\x05"];
      this["\x1d\x0e\r"]._visible = this["\x1c\x07\t"] && this["\x18\r\x05"];
      this["\x1d\x0e\f"]._alpha = this["\x1d\x1a\x1c"] != 1 ? 0 : 100;
      this["\x1d\x0e\r"]._alpha = this["\x1d\x1a\x1c"] != 2 ? 0 : 100;
      if(this["\x18\r\x05"])
      {
         if(this["\x1d\x1a\x1c"] == 1)
         {
            this._cgPayIfSuccess.removeEventListener("dragItem",this);
            this._cgPay.addEventListener("dragItem",this);
         }
         else
         {
            this._cgPay.removeEventListener("dragItem",this);
            this._cgPayIfSuccess.addEventListener("dragItem",this);
         }
      }
   }
   function §\x1b\x17\x11§(nQuantity)
   {
      if(_loc2_ > this.api.datacenter.Player.Kama)
      {
         _loc2_ = this.api.datacenter.Player.Kama;
      }
      this.api.network.Exchange["\x19\x01\x05"](this["\x1d\x1a\x1c"],_loc2_);
   }
   function §\x16\x06\x03§(§\x19\f\x01§)
   {
      this["\x1b\r\x01"](_loc2_);
      var _loc3_ = this.gapi.loadUIComponent("PopupQuantity","PopupQuantity",{value:this.api.datacenter.Exchange.localKama,max:this.api.datacenter.Player.Kama,params:{targetType:"kama"}});
      _loc3_.addEventListener("validate",this);
   }
   function §\x16\x16\x1b§(§\x19\x13\x07§)
   {
      if(this["\x1d\x16\f"] == undefined || this["\x18\x0f\x06"]())
      {
         return true;
      }
      if(_loc2_.type == 78)
      {
         return true;
      }
      var _loc3_ = false;
      var _loc4_ = 0;
      while(_loc4_ < dofus.graphics.gapi.ui.ForgemagusCraft["\x18\x11\x02"].length)
      {
         if(dofus.graphics.gapi.ui.ForgemagusCraft["\x18\x11\x02"][_loc4_] == _loc2_.unicID)
         {
            return true;
         }
         _loc4_ = _loc4_ + 1;
      }
      var _loc5_ = 0;
      while(_loc5_ < dofus.graphics.gapi.ui.ForgemagusCraft["\x1b\x12\f"].length)
      {
         if(dofus.graphics.gapi.ui.ForgemagusCraft["\x1b\x12\f"][_loc5_] == _loc2_.type)
         {
            return true;
         }
         _loc5_ = _loc5_ + 1;
      }
      if(this["\x1d\x16\f"] != _loc2_.type || !_loc2_["\x17\r\r"])
      {
         return false;
      }
      return true;
   }
   function §\x1b\x17\x15§()
   {
      this["\x1a\x1d\b"](false);
      this["\x1c\t\x0f"].selected = false;
      this["\x1a\n\r"]();
      this["\x1a\x19\x06"]();
   }
   function §\x18\x0f\x06§()
   {
      return _global.isNaN(this["\x1d\x16\f"]);
   }
   function §\x15\x1d\x06§(§\x19\x0f\f§)
   {
      if(this["\x1d\x18\x03"] + dofus.graphics.gapi.ui.SecureCraft["\x19\x03\x0e"] < 10092)
      {
         this["\x1d\x18\x03"] = 5122;
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
               var _loc10_ = 0;
               while(_loc10_ < _loc6_.length)
               {
                  var _loc11_ = _loc6_[_loc10_];
                  var _loc12_ = _loc11_[0];
                  var _loc13_ = _loc11_[1];
                  var _loc7_ = false;
                  var _loc14_ = 0;
                  while(_loc14_ < this["\x1c\x0f\x06"].length)
                  {
                     if(_loc12_ == this["\x1c\x0f\x06"][_loc14_].unicID)
                     {
                        if(_loc13_ <= this["\x1c\x0f\x06"][_loc14_].Quantity)
                        {
                           _loc8_ = _loc8_ + 1;
                           _loc7_ = true;
                           _loc9_.push({item:this["\x1c\x0f\x06"][_loc14_],qty:_loc13_});
                           break;
                        }
                     }
                     _loc14_ = _loc14_ + 1;
                  }
                  if(!_loc7_)
                  {
                     break;
                  }
                  _loc10_ = _loc10_ + 1;
               }
               if(_loc7_ && _loc6_.length == _loc8_)
               {
                  var _loc16_ = new Array();
                  var _loc18_ = 0;
                  while(_loc18_ < this._cgLocal.dataProvider.length)
                  {
                     var _loc15_ = this._cgLocal.dataProvider[_loc18_];
                     var _loc17_ = _loc15_.Quantity;
                     if(!(_loc17_ < 1 || _loc17_ == undefined))
                     {
                        _loc16_.push({Add:false,ID:_loc15_.ID,Quantity:_loc17_});
                     }
                     _loc18_ = _loc18_ + 1;
                  }
                  var _loc19_ = 0;
                  while(_loc19_ < _loc9_.length)
                  {
                     _loc15_ = _loc9_[_loc19_].item;
                     _loc17_ = _loc9_[_loc19_].qty;
                     if(!(_loc17_ < 1 || _loc17_ == undefined))
                     {
                        _loc16_.push({Add:true,ID:_loc15_.ID,Quantity:_loc17_});
                     }
                     _loc19_ = _loc19_ + 1;
                  }
                  this.api.network.Exchange["\x19\x01\x02"](_loc16_);
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
   function kamaChanged(oEvent)
   {
      this["\x1c\x19\x1c"].text = new ank.utils.ExtendedString(_loc2_.value)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
   }
   function modelChanged(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\x0f\x16"]:
            this["\x1b\x15\x0e"]();
            this["\x1b\x15\x17"]();
            break;
         case this["\x1c\x0f\b"]:
            this["\x1b\x14\x17"]();
            this["\x1b\x15\x17"]();
            if(this["\x1c\x0f\b"].length > 0)
            {
               this["\x1c\r\x04"].dataProvider = new ank.utils.ExtendedArray();
            }
            break;
         case this["\x1c\x0f\x06"]:
            this["\x1b\x14\x14"]();
            this["\x1b\x15\x17"]();
            break;
         case this["\x1c\x0f\x01"]:
            this["\x1b\x14\x11"]();
            this["\x1b\x15\x17"]();
            break;
         case this["\x1c\x0f\x1d"]:
            this["\x1b\x15\x13"](true);
            break;
         case this["\x1c\x10\x02"]:
            this["\x1b\x15\x14"](true);
            break;
         case this["\x1c\x10\x07"]:
            this["\x1b\x15\x19"]();
            break;
         default:
            this["\x1b\x14\x14"]();
            this["\x1b\x15\x0e"]();
            this["\x1b\x14\x17"]();
            this["\x1b\x14\x11"]();
            this["\x1b\x15\x13"]();
            this["\x1b\x15\x14"]();
            this["\x1b\x15\x17"]();
      }
   }
   function over(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnFilterEquipement":
            this.api.ui.showTooltip(this.api.lang.getText("EQUIPEMENT"),_loc2_.target,-20);
            break;
         case "_btnFilterNonEquipement":
            this.api.ui.showTooltip(this.api.lang.getText("NONEQUIPEMENT"),_loc2_.target,-20);
            break;
         case "_btnFilterRessoureces":
            this.api.ui.showTooltip(this.api.lang.getText("RESSOURECES"),_loc2_.target,-20);
            break;
         case "_btnFilterSoul":
            this.api.ui.showTooltip(this.api.lang.getText("SOUL"),_loc2_.target,-20);
            break;
         case "_btnFilterRunes":
            this.api.ui.showTooltip(this.api.lang.getText("RUNES"),_loc2_.target,-20);
            break;
         case "_btnFilterCards":
            this.api.ui.showTooltip(this.api.lang.getText("CARDS"),_loc2_.target,-20);
            break;
         case "_mcFiligrane":
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
   function click(oEvent)
   {
      if(_loc2_.target == this._btnClose)
      {
         this["\x16\x15\n"]();
         return undefined;
      }
      if(_loc2_.target == this._btnValidate)
      {
         var _loc3_ = this.api.kernel.GameManager["\x16\x03\x12"](this["\x18\x02\x02"](),this["\x1d\x1c\x1c"],this["\x1d\x19\x0f"]);
         new org.flashdevelop.utils.FlashConnect.trace("nItemId : " + _loc3_,"dofus.graphics.gapi.ui.SecureCraft::click","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/graphics/gapi/ui/SecureCraft.as",1327);
         new org.flashdevelop.utils.FlashConnect.trace("AskForWrongCraft : " + this.api.kernel.OptionsManager.getOption("AskForWrongCraft"),"dofus.graphics.gapi.ui.SecureCraft::click","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/graphics/gapi/ui/SecureCraft.as",1328);
         new org.flashdevelop.utils.FlashConnect.trace("isNotForgemagus() : " + this["\x18\x0f\x06"](),"dofus.graphics.gapi.ui.SecureCraft::click","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/graphics/gapi/ui/SecureCraft.as",1329);
         if(_loc3_ == undefined && (this.api.kernel.OptionsManager.getOption("AskForWrongCraft") && this["\x18\x0f\x06"]()))
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
      if(_loc2_.target == this._btnPrivateMessage || _loc2_.target == this["\x1c\n\x10"])
      {
         this.api.kernel.GameManager["\x16\x06\x07"](this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Exchange["\x17\b\x1d"]).name);
      }
      if(_loc2_.target == this["\x1c\n\f"] || _loc2_.target == this["\x1c\x0b\x11"])
      {
         this["\x1e\b\x12"] = undefined;
         this["\x1e\b\x13"] = undefined;
         this["\x1b\r\t"]();
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
      var _loc3_ = _loc2_.target.contentData;
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      var _loc4_ = !Key.isDown(Key.CONTROL) ? 1 : _loc3_.Quantity;
      var _loc5_ = _loc2_.owner._name;
      this["\x1e\b\x12"] = _loc5_;
      switch(_loc5_)
      {
         case "_cgGrid":
            if(!this["\x16\x16\x03"](_loc3_))
            {
               return undefined;
            }
            if(!this["\x16\x16\x1b"](_loc3_))
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("WRONG_ITEM_TYPE"),"ERROR_CHAT");
               return undefined;
            }
            if(!this["\x1c\x07\t"])
            {
               var _loc6_ = "_cgLocal";
            }
            else
            {
               if(!this["\x18\r\x05"])
               {
                  return undefined;
               }
               _loc6_ = this["\x1d\x1a\x1c"] != 1 ? "_cgPayIfSuccess" : "_cgPay";
            }
            break;
         case "_cgLocal":
            _loc6_ = "_cgGrid";
            break;
         case "_cgPay":
            this["\x1b\r\x01"](1);
            _loc6_ = "_cgGrid";
            break;
         case "_cgPayIfSuccess":
            this["\x1b\r\x01"](2);
            _loc6_ = "_cgGrid";
      }
      this.validateDrop(_loc6_,_loc3_,_loc4_);
   }
   function dragItem(oEvent)
   {
      this.gapi.removeCursor();
      if(_loc2_.target.contentData == undefined)
      {
         return undefined;
      }
      this["\x1e\b\x12"] = _loc2_.target._parent._parent._name;
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
            if(!this["\x1c\x07\t"])
            {
               if(_loc3_.position == -1)
               {
                  return undefined;
               }
            }
            break;
         case "_cgLocal":
            if(_loc3_.position == -2)
            {
               return undefined;
            }
            if(!this["\x16\x16\x1b"](_loc3_))
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("WRONG_ITEM_TYPE"),"ERROR_CHAT");
               return undefined;
            }
            if(!this["\x16\x16\x03"](_loc3_))
            {
               return undefined;
            }
            break;
         case "_cgPay":
            if(this["\x1e\b\x12"] == "_cgPay" || this["\x1e\b\x12"] == "_cgPayIfSuccess")
            {
               return undefined;
            }
            this["\x1b\r\x01"](1);
            break;
         case "_cgPayIfSuccess":
            if(this["\x1e\b\x12"] == "_cgPay" || this["\x1e\b\x12"] == "_cgPayIfSuccess")
            {
               return undefined;
            }
            this["\x1b\r\x01"](2);
            break;
      }
      if(_loc3_.Quantity > 1 && !(_loc4_ == "_cgGrid" && (this["\x1e\b\x12"] == "_cgPay" || this["\x1e\b\x12"] == "_cgPayIfSuccess")))
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
         case "kama":
            this["\x1b\x17\x11"](_loc2_.value);
      }
   }
   function itemSelected(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "_cbTypes")
      {
         this["\x1d\x1c\x15"] = this._cbTypes.selectedItem.id;
         this.api.datacenter.Basics[dofus.graphics.gapi.ui.SecureCraft.CLASS_NAME + "_subfilter_" + this["\x1c\n\x18"]._name] = this["\x1d\x1c\x15"];
         this["\x1b\x14\x14"]();
      }
   }
   function localKamaChange(oEvent)
   {
      this.hideButtonValidate(true);
      ank.utils.Timer.setTimer(this,"securecraft",this,this.hideButtonValidate,dofus.graphics.gapi.ui.SecureCraft["\x17\x06\x19"],[false]);
   }
   function payKamaChange(oEvent)
   {
      this["\x1b\r\t"](true);
      if(dofus.Constants.TRIPLEFRAMERATE)
      {
         this._mcBlinkPay_TripleFramerate.play();
      }
      else
      {
         this["\x1d\t\x05"].play();
      }
      this["\x1d\x17\x0f"] = _loc2_.value;
      if(_global.isNaN(this["\x1d\x17\x10"]) || this["\x1d\x17\x10"] == undefined)
      {
         this["\x1d\x17\x10"] = 0;
      }
      if(this["\x18\r\x05"])
      {
         this["\x1c\x19\x1c"].text = new ank.utils.ExtendedString(this.api.datacenter.Player.Kama - this["\x1d\x17\x0f"] - this["\x1d\x17\x10"])["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
      }
      this["\x1c\x1c\x14"].text = new ank.utils.ExtendedString(_loc2_.value)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
      this.hideButtonValidate(true);
      ank.utils.Timer.setTimer(this,"securecraft",this,this.hideButtonValidate,dofus.graphics.gapi.ui.SecureCraft["\x17\x06\x19"],[false]);
   }
   function payIfSuccessKamaChange(oEvent)
   {
      this["\x1b\r\t"](true);
      if(dofus.Constants.TRIPLEFRAMERATE)
      {
         this._mcBlinkPayIfSuccess_TripleFramerate.play();
      }
      else
      {
         this["\x1d\t\x06"].play();
      }
      this["\x1d\x17\x10"] = _loc2_.value;
      if(_global.isNaN(this["\x1d\x17\x0f"]) || this["\x1d\x17\x0f"] == undefined)
      {
         this["\x1d\x17\x0f"] = 0;
      }
      if(this["\x18\r\x05"])
      {
         this["\x1c\x19\x1c"].text = new ank.utils.ExtendedString(this.api.datacenter.Player.Kama - this["\x1d\x17\x0f"] - this["\x1d\x17\x10"])["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
      }
      this["\x1c\x1c\x13"].text = new ank.utils.ExtendedString(_loc2_.value)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
      this.hideButtonValidate(true);
      ank.utils.Timer.setTimer(this,"securecraft",this,this.hideButtonValidate,dofus.graphics.gapi.ui.SecureCraft["\x17\x06\x19"],[false]);
   }
   function yes()
   {
      this["\x1b\x17\x15"]();
   }
}
