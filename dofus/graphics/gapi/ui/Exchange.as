class dofus.graphics.gapi.ui.Exchange extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Exchange";
   static var §\x1a\n\x03§ = {ra:70,rb:0,ga:70,gb:0,ba:70,bb:0};
   static var §\x19\x0b\b§ = {ra:100,rb:0,ga:100,gb:0,ba:100,bb:0};
   static var §\x17\x06\x19§ = 3000;
   var §\x1d\x15\x19§ = false;
   var §\x1b\x1e\x19§ = dofus.Constants["\x17\x10\x18"];
   var §\x1d\x1c\x15§ = 0;
   function Exchange()
   {
      super();
   }
   function §\x1e\x17\x13§()
   {
      if(this._currentOverContainer != undefined && this._currentOverContainer.contentData != undefined)
      {
         return dofus.datacenter.Item(this._currentOverContainer.contentData);
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
   function §\x17\n§(§\x17\x0b\x06§)
   {
      this["\x1c\x0f\x16"].removeEventListener("modelChange",this);
      this["\x1c\x0f\x16"] = _loc2_;
      this["\x1c\x0f\x16"].addEventListener("modelChanged",this);
      this.modelChanged();
      return this.localDataProvider;
   }
   function §\x12\x12§(§\x17\n\x1d§)
   {
      this["\x1c\x0f\b"].removeEventListener("modelChange",this);
      this["\x1c\x0f\b"] = _loc2_;
      this["\x1c\x0f\b"].addEventListener("modelChanged",this);
      this.modelChanged();
      return this.distantDataProvider;
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
      super.init(false,dofus.graphics.gapi.ui.Exchange.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this.api.network.Exchange.leave();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this["\x1c\n\x18"] = this._btnFilterEquipement;
      this.addToQueue({object:this,method:this.initData});
      this["\x18\x06\x0f"](true);
      this.addToQueue({object:this,method:this.initTexts});
      this._btnPrivateChat._visible = this.api.datacenter.Exchange["\x17\b\x1d"] > 0;
      this.gapi["\x1b\x13\x12"]();
   }
   function destroy()
   {
      if(this["\x1e\x0e\x0e"] == undefined)
      {
         return undefined;
      }
      _global.clearTimeout(this["\x1e\x0e\x0e"]);
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
      this["\x1c\r\x05"]["\x19\x02\n"] = false;
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
      this._btnFilterRunes.addEventListener("out",this);
      this._btnFilterRunes.addEventListener("over",this);
      this._btnFilterRunes.addEventListener("click",this);
      this._btnClose.addEventListener("click",this);
      this.api.datacenter.Exchange.addEventListener("localKamaChange",this);
      this.api.datacenter.Exchange.addEventListener("distantKamaChange",this);
      this._btnValidate.addEventListener("click",this);
      this._btnPrivateChat.addEventListener("click",this);
      this._cbTypes.addEventListener("itemSelected",this);
   }
   function initTexts()
   {
      this["\x1c\x17\x18"].text = this.api.lang.getText("EQUIPEMENT");
      this["\x1e\x10\x11"].title = this.api.datacenter.Player.data.name;
      this["\x1e\x10\x10"].title = this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Exchange["\x17\b\x1d"]).name;
      this._btnValidate.label = this.api.lang.getText("ACCEPT");
      this["\x1c\x19\x1c"].text = new ank.utils.ExtendedString(this.api.datacenter.Player.Kama)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
      this._btnPrivateChat.label = this.api.lang.getText("WISPER_MESSAGE");
   }
   function initData()
   {
      this.dataProvider = this.api.datacenter.Exchange["\x18\f\n"];
      this["\x18\x17\x05"] = this.api.datacenter.Exchange["\x18\x17\x06"];
      this["\x17\b\x1b"] = this.api.datacenter.Exchange["\x17\b\x1c"];
      this["\x1a\n\x01"] = this.api.datacenter.Exchange["\x1a\n\x02"];
   }
   function §\x1b\x14\x14§()
   {
      var _loc2_ = this.api.datacenter.Basics[dofus.graphics.gapi.ui.Exchange.CLASS_NAME + "_subfilter_" + this["\x1c\n\x18"]._name];
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
   function §\x19\x16\x0e§()
   {
      _global.clearTimeout(this["\x1e\x0e\x0e"]);
      this["\x1e\x0e\x0e"] = _global.setTimeout(this,"hideButtonValidate",dofus.graphics.gapi.ui.Exchange["\x17\x06\x19"],false);
   }
   function §\x1b\x15\x0e§()
   {
      this._cgLocal.dataProvider = this["\x1c\x0f\x16"];
      this.hideButtonValidate(true);
      this["\x19\x16\x0e"]();
   }
   function §\x1b\x14\x17§()
   {
      this["\x1c\r\x05"].dataProvider = this["\x1c\x0f\b"];
      this.hideButtonValidate(true);
      this["\x19\x16\x0e"]();
   }
   function §\x1b\x15\x19§()
   {
      var _loc2_ = !this["\x1c\x10\x07"][0] ? dofus.graphics.gapi.ui.Exchange["\x19\x0b\b"] : dofus.graphics.gapi.ui.Exchange["\x1a\n\x03"];
      this["\x1a\x18\x04"](this["\x1e\x10\x15"],_loc2_);
      this["\x1a\x18\x04"](this._btnValidate,_loc2_);
      this["\x1a\x18\x04"](this._cgLocal,_loc2_);
      _loc2_ = !this["\x1c\x10\x07"][1] ? dofus.graphics.gapi.ui.Exchange["\x19\x0b\b"] : dofus.graphics.gapi.ui.Exchange["\x1a\n\x03"];
      this["\x1a\x18\x04"](this["\x1e\x10\x10"],_loc2_);
      this["\x1a\x18\x04"](this["\x1c\r\x05"],_loc2_);
   }
   function hideButtonValidate(§\x16\f\x12§)
   {
      var _loc3_ = !_loc2_ ? dofus.graphics.gapi.ui.Exchange["\x19\x0b\b"] : dofus.graphics.gapi.ui.Exchange["\x1a\n\x03"];
      this["\x1a\x18\x04"](this._btnValidate,_loc3_);
      this._btnValidate.enabled = !_loc2_;
   }
   function §\x18\x06\x0f§(§\x16\f\x12§)
   {
      this["\x1c\x11\x13"]._visible = !_loc2_;
      this["\x1e\x10\x14"]._visible = !_loc2_;
   }
   function §\x18\x1e\x1a§(§\x16\x02\x06§, §\x16\b\x11§)
   {
      var _loc4_ = new Array();
      var _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         var _loc6_ = _loc2_[_loc5_];
         _loc4_.push({Add:_loc3_,ID:_loc6_.ID,Quantity:_loc6_.Quantity});
         _loc5_ = _loc5_ + 1;
      }
      this.api.network.Exchange["\x19\x01\x02"](_loc4_);
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
   }
   function §\x1b\x17\x11§(nQuantity)
   {
      if(_loc2_ > this.api.datacenter.Player.Kama)
      {
         _loc2_ = this.api.datacenter.Player.Kama;
      }
      this.api.network.Exchange["\x19\x01\x03"](_loc2_);
   }
   function §\x16\x06\x03§()
   {
      var _loc2_ = this.gapi.loadUIComponent("PopupQuantity","PopupQuantity",{value:this.api.datacenter.Exchange.localKama,max:this.api.datacenter.Player.Kama,min:0,params:{targetType:"kama"}});
      _loc2_.addEventListener("validate",this);
   }
   function modelChanged(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\x10\x07"]:
            this["\x1b\x15\x19"]();
            break;
         case this["\x1c\x0f\x16"]:
            this["\x1b\x15\x0e"]();
            break;
         case this["\x1c\x0f\b"]:
            this["\x1b\x14\x17"]();
            break;
         case this["\x1c\x0f\x06"]:
            this["\x1b\x14\x14"]();
            break;
         default:
            this["\x1b\x14\x14"]();
            this["\x1b\x15\x0e"]();
            this["\x1b\x14\x17"]();
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnClose":
            this["\x16\x15\n"]();
            break;
         case "_btnValidate":
            this.api.network.Exchange.ready();
            break;
         case "_btnPrivateChat":
            if(this.api.datacenter.Exchange["\x17\b\x1d"] > 0)
            {
               this.api.kernel.GameManager["\x16\x06\x07"](this.api.datacenter.Sprites.getItemAt(this.api.datacenter.Exchange["\x17\b\x1d"]).name);
            }
            break;
         default:
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
               break;
            }
            _loc2_.target.selected = true;
            break;
      }
   }
   function overItem(oEvent)
   {
      var _loc3_ = _loc2_.target;
      var _loc4_ = dofus.datacenter.Item(_loc3_.contentData);
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
      var _loc4_ = _loc2_.targets;
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      var _loc5_ = Key.isDown(dofus.Constants["\x1a\x13\x11"]);
      var _loc6_ = !_loc5_ ? 1 : _loc3_.Quantity;
      var _loc7_ = _loc2_.owner._name;
      switch(_loc7_)
      {
         case "_cgGrid":
            if(_loc5_ && _loc4_.length > 1)
            {
               this["\x18\x1e\x1a"](_loc4_,true);
            }
            else
            {
               this.validateDrop("_cgLocal",_loc3_,_loc6_);
            }
            break;
         case "_cgLocal":
            if(_loc5_ && _loc4_.length > 1)
            {
               this["\x18\x1e\x1a"](_loc4_,false);
               break;
            }
            this.validateDrop("_cgGrid",_loc3_,_loc6_);
            break;
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
         case "kama":
            this["\x1b\x17\x11"](_loc2_.value);
      }
   }
   function localKamaChange(oEvent)
   {
      this["\x1c\x1a\x0f"].text = new ank.utils.ExtendedString(_loc2_.value)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
      this["\x1c\x19\x1c"].text = new ank.utils.ExtendedString(this.api.datacenter.Player.Kama - _loc2_.value)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
      this.hideButtonValidate(true);
      this["\x19\x16\x0e"]();
   }
   function distantKamaChange(oEvent)
   {
      if(dofus.Constants.TRIPLEFRAMERATE)
      {
         this._mcBlink_TripleFramerate.play();
      }
      else
      {
         this._mcBlink.play();
      }
      this["\x1c\x17\x06"].text = new ank.utils.ExtendedString(_loc2_.value)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
      this.hideButtonValidate(true);
      this["\x19\x16\x0e"]();
   }
   function itemSelected(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "_cbTypes")
      {
         this["\x1d\x1c\x15"] = this._cbTypes.selectedItem.id;
         this.api.datacenter.Basics[dofus.graphics.gapi.ui.Exchange.CLASS_NAME + "_subfilter_" + this["\x1c\n\x18"]._name] = this["\x1d\x1c\x15"];
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
         case this._btnFilterRunes:
            this.api.ui.showTooltip(this.api.lang.getText("RUNES"),_loc2_.target,-20);
            break;
         case this._btnFilterCards:
            this.api.ui.showTooltip(this.api.lang.getText("CARDS"),_loc2_.target,-20);
      }
   }
   function out(oEvent)
   {
      this.api.ui.hideTooltip();
   }
}
