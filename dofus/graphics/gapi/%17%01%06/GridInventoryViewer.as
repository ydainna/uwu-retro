class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.GridInventoryViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.InventoryViewer
{
   static var §\x16\x1b\x10§ = "GridInventoryViewer";
   var §\x1c\b\x0b§ = true;
   var §\x1c\x02\x17§ = false;
   var §\x1c\x02\x16§ = false;
   function GridInventoryViewer()
   {
      super();
   }
   function §\x1e\x15\t§()
   {
      return this._cgGrid;
   }
   function §\x1e\x17\x13§()
   {
      if(this._currentOverContainer != undefined && this._currentOverContainer.contentData != undefined)
      {
         return dofus.datacenter.["\x18\x10\x15"](this._currentOverContainer.contentData);
      }
      return undefined;
   }
   function §\x1e\x15\x16§()
   {
      return this["\x1c\x02\x17"];
   }
   function §\x1e\x15\x15§()
   {
      return this["\x1c\x02\x16"];
   }
   function §\x10\x15§(§\x16\n\x04§)
   {
      this["\x1c\x02\x17"] = _loc2_;
      return this["\x1e\x15\x16"]();
   }
   function §\x10\x14§(§\x16\n\x03§)
   {
      this["\x1c\x02\x16"] = _loc2_;
      return this["\x1e\x15\x15"]();
   }
   function §\x1c\x19§(§\x16\x12\x12§)
   {
      this["\x1c\b\x0b"] = _loc2_;
      this["\x1c\t\x16"]._visible = this["\x1c\x19\x1c"]._visible = this["\x1d\f\x17"]._visible = this["\x1d\f\x18"]._visible = _loc2_;
      return this.showKamas;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.GridInventoryViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this["\x1e\x03\n"] = this._cgGrid;
      this.addToQueue({object:this,method:this.addListeners});
      super.createChildren();
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.initTexts});
   }
   function addListeners()
   {
      super.addListeners();
      this._cgGrid.addEventListener("dropItem",this);
      this._cgGrid.addEventListener("dragItem",this);
      this._cgGrid.addEventListener("selectItem",this);
      this._cgGrid.addEventListener("overItem",this);
      this._cgGrid.addEventListener("outItem",this);
      this._cgGrid.addEventListener("dblClickItem",this);
      this["\x1c\t\x16"].onRelease = function()
      {
         this._parent["\x16\x06\x03"]();
      };
   }
   function initTexts()
   {
   }
   function initData()
   {
      this.modelChanged();
      this.kamaChanged({value:this["\x1e\x04\x02"].Kama});
   }
   function validateDrop(§\x1b\r\x1b§, §\x19\x13\x07§, nQuantity)
   {
      _loc4_ = Number(_loc4_);
      if(_loc4_ < 1 || _global.isNaN(_loc4_))
      {
         return undefined;
      }
      if(_loc4_ > _loc3_.Quantity)
      {
         _loc4_ = _loc3_.Quantity;
      }
      this["\x17\x07\x19"]({type:"dropItem",item:_loc3_,quantity:_loc4_,owner:this});
   }
   function §\x1b\x17\x11§(nQuantity)
   {
      _loc2_ = Number(_loc2_);
      if(_loc2_ < 1 || _global.isNaN(_loc2_))
      {
         return undefined;
      }
      if(_loc2_ > this["\x1e\x04\x02"].Kama)
      {
         _loc2_ = this["\x1e\x04\x02"].Kama;
      }
      this["\x17\x07\x19"]({type:"dragKama",quantity:_loc2_});
   }
   function §\x16\x06\x03§()
   {
      var _loc2_ = this["\x1e\x04\x02"].Kama == undefined ? 0 : Number(this["\x1e\x04\x02"].Kama);
      var _loc3_ = this.gapi.loadUIComponent("PopupQuantity","PopupQuantity",{value:_loc2_,max:_loc2_,params:{targetType:"kama"}});
      _loc3_.addEventListener("validate",this);
   }
   function §\x1a\x1e\x12§(§\x19\x10\n§)
   {
      var _loc3_ = 0;
      while(_loc3_ < this._cgGrid.dataProvider.length)
      {
         if(_loc2_ == this._cgGrid.dataProvider[_loc3_].unicID)
         {
            this._cgGrid["\x1a\x1b\x04"](_loc3_ / this._cgGrid["\x1b\x18\x01"]);
            this._cgGrid.selectedIndex = _loc3_;
            return true;
         }
         _loc3_ = _loc3_ + 1;
      }
      return false;
   }
   function dragItem(oEvent)
   {
      if(_loc2_.target.contentData == undefined)
      {
         return undefined;
      }
      this.gapi.removeCursor();
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
      var _loc4_ = _loc3_.Quantity;
      if(this["\x16\x1a\x17"])
      {
         _loc4_ = this.api.datacenter.Player["\x17\x1d\x07"](_loc3_,false);
      }
      else if(this["\x16\x1a\x11"])
      {
         _loc4_ = this.api.datacenter.Player["\x17\x1d\x07"](_loc3_,true);
      }
      if(_loc4_ <= 0)
      {
         this.api.kernel.showMessage(this.api.lang.getText("INFORMATIONS"),this.api.lang.getText("SRV_MSG_6"),"ERROR_BOX",{name:undefined});
      }
      else if(_loc4_ > 1)
      {
         var _loc5_ = this.gapi.loadUIComponent("PopupQuantity","PopupQuantity",{value:1,max:_loc4_,params:{targetType:"item",oItem:_loc3_}});
         _loc5_.addEventListener("validate",this);
      }
      else
      {
         this.validateDrop(this._cgGrid,_loc3_,1);
      }
   }
   function selectItem(oEvent)
   {
      if(Key.isDown(dofus.Constants["\x16\x19\x13"]) && _loc2_.target.contentData != undefined)
      {
         this.api.kernel.GameManager["\x18\n\x1d"](_loc2_.target.contentData);
         return undefined;
      }
      this["\x17\x07\x19"]({type:"selectedItem",item:_loc2_.target.contentData});
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
      this["\x17\x07\x19"]({type:_loc2_.type,item:_loc2_.target.contentData,target:this,targets:_loc2_.targets,index:_loc2_.target.id,owner:this});
   }
   function validate(oEvent)
   {
      switch(_loc2_.params.targetType)
      {
         case "item":
            this.validateDrop(this._cgGrid,_loc2_.params.oItem,_loc2_.value);
            break;
         case "kama":
            this["\x1b\x17\x11"](_loc2_.value);
      }
   }
}
