class dofus.§\x18\x03\x10§.gapi.ui.ItemSummoner extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ItemSummoner";
   function ItemSummoner()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.ItemSummoner.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this["\x18\x06\x0f"](true);
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
   }
   function initTexts()
   {
      this["\x1e\x10\t"].title = "Liste des objets";
      this["\x1c\x1e\x19"].text = this.api.lang.getText("BIGSTORE_SEARCH_ITEM_NAME");
      this["\x1d\x03\x18"].text = this.api.lang.getText("TYPE");
      this["\x1c\x1d\t"].text = this.api.lang.getText("QUANTITY");
      this._btnCancel.label = this.api.lang.getText("CANCEL_SMALL");
      this._btnSelect.label = this.api.lang.getText("VALIDATE");
      this._tiSearch.setFocus();
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._btnCancel.addEventListener("click",this);
      this._btnSelect.addEventListener("click",this);
      this._tiSearch.addEventListener("change",this);
      this["\x1c\f\x1b"].addEventListener("itemSelected",this);
      this["\x1d\x06\x0b"].addEventListener("itemSelected",this);
      this["\x1d\x06\x0b"].addEventListener("itemDrag",this);
      this._cgGrid.addEventListener("dropItem",this);
      this._cgGrid.addEventListener("selectItem",this);
      this._cgGrid.addEventListener("dragItem",this);
      this._cgGrid["\x19\x02\n"] = false;
   }
   function initData()
   {
      this["\x1c\x0f\x13"] = new ank.utils.ExtendedArray();
      this["\x1e\x0e\x17"].restrict = "0-9";
      this["\x1e\x0e\x17"].text = "1";
      var _loc2_ = new ank.utils.ExtendedArray();
      var _loc3_ = this.api.lang["\x17\x14\t"]();
      for(var a in _loc3_)
      {
         _loc2_.push({label:_loc3_[a].n,id:a});
      }
      _loc2_.sortOn("label");
      this["\x1c\f\x1b"].dataProvider = _loc2_;
      this["\x1c\x0f\x0e"] = new ank.utils.ExtendedArray();
      this._cgGrid.dataProvider = this["\x1c\x0f\x0e"];
      _loc2_.splice(0,0,{label:"All",id:0});
      this["\x1c\f\x1b"].dataProvider = _loc2_;
      this["\x1c\x01\x0e"] = new Array();
      var _loc4_ = 0;
      while(_loc4_ < this["\x1c\f\x1b"].dataProvider.length)
      {
         this["\x1c\x01\x0e"].push(this["\x1c\f\x1b"].dataProvider[_loc4_].id);
         _loc4_ = _loc4_ + 1;
      }
      this["\x1c\f\x1b"].selectedIndex = 0;
      this["\x17\x13\x11"]();
      this.change();
   }
   function §\x18\x06\x0f§(§\x16\f\x12§)
   {
      this["\x1e\x10\x14"]._visible = !_loc2_;
      this["\x1c\x11\x13"]._visible = !_loc2_;
   }
   function §\x17\x13\x11§(§\x16\b\b§)
   {
      var _loc3_ = new Object();
      for(var k in this["\x1c\x01\x0e"])
      {
         _loc3_[this["\x1c\x01\x0e"][k]] = true;
      }
      var _loc4_ = this.api.lang["\x17\x19\x1b"]();
      this["\x1c\x0f\x13"] = new ank.utils.ExtendedArray();
      this["\x1c\x0f\x14"] = new ank.utils.ExtendedArray();
      for(var k in _loc4_)
      {
         var _loc5_ = _loc4_[k];
         if(!(_loc5_.ep != undefined && _loc5_.ep > this.api.datacenter.Basics.aks_current_regional_version))
         {
            if(!_loc5_.et)
            {
               if(_loc3_[_loc5_.t])
               {
                  this["\x1c\x0f\x13"].push({id:k,name:_loc5_.nn});
                  this["\x1c\x0f\x14"].push(new dofus.datacenter.Item(0,Number(k)));
               }
            }
         }
      }
      this["\x1c\x1c\x03"].text = this["\x1c\x0f\x14"].length + " " + ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("OBJECTS"),"m",this["\x1c\x0f\x14"].length < 2);
   }
   function §\x1a\x12\t§(sText)
   {
      var _loc3_ = _loc2_.split(" ");
      var _loc4_ = new ank.utils.ExtendedArray();
      var _loc5_ = new Object();
      var _loc6_ = 0;
      var _loc7_ = 0;
      while(_loc7_ < this["\x1c\x0f\x13"].length)
      {
         var _loc8_ = this["\x1c\x0f\x13"][_loc7_];
         var _loc9_ = this["\x1a\x12\x0b"](_loc3_,_loc8_.name,_loc6_);
         if(_loc9_ != 0)
         {
            _loc5_[_loc8_.id] = _loc9_;
            _loc6_ = _loc9_;
         }
         _loc7_ = _loc7_ + 1;
      }
      for(var k in _loc5_)
      {
         if(_loc5_[k] >= _loc6_)
         {
            _loc4_.push(new dofus.datacenter.Item(0,Number(k)));
         }
      }
      this["\x1d\x06\x0b"].dataProvider = _loc4_;
   }
   function §\x1a\x12\x0b§(§\x16\b\x07§, sName, §\x19\n\f§)
   {
      var _loc5_ = 0;
      var _loc6_ = _loc2_.length;
      while(_loc6_ >= 0)
      {
         var _loc7_ = _loc2_[_loc6_];
         if(_loc3_.indexOf(_loc7_) != -1)
         {
            _loc5_ = _loc5_ + 1;
         }
         else if(_loc5_ + _loc6_ < _loc4_)
         {
            return 0;
         }
         _loc6_ = _loc6_ - 1;
      }
      return _loc5_;
   }
   function validateDrop(§\x18\b\x11§, nQuantity)
   {
      var _loc4_ = false;
      for(var i in this["\x1c\x0f\x0e"])
      {
         if(_loc2_["\x17\r\x15"](this["\x1c\x0f\x0e"][i]))
         {
            this["\x1c\x0f\x0e"][i].Quantity += _loc3_;
            this._cgGrid.modelChanged();
            _loc4_ = true;
            break;
         }
      }
      if(!_loc4_)
      {
         _loc2_.Quantity = _loc3_;
         this["\x1c\x0f\x0e"].push(_loc2_);
      }
   }
   function §\x1b\f\x0b§()
   {
      for(var i in this["\x1c\x0f\x0e"])
      {
         var _loc2_ = dofus.datacenter.Item(this["\x1c\x0f\x0e"][i]);
         this.api.network.Basics.autorisedCommand("getitem " + _loc2_.unicID + " " + _loc2_.Quantity);
      }
      this["\x1c\x0f\x0e"] = new ank.utils.ExtendedArray();
      this._cgGrid.dataProvider = this["\x1c\x0f\x0e"];
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnClose":
         case "_btnCancel":
            this["\x17\x07\x19"]({type:"cancel"});
            this["\x16\x15\n"]();
         case "_btnSelect":
            if(this["\x1c\x0f\x0e"].length == 0)
            {
               this["\x17\x07\x19"]({type:"cancel"});
               this["\x16\x15\n"]();
            }
            this["\x1b\f\x0b"]();
      }
   }
   function change(oEvent)
   {
      if(this._tiSearch.text.length >= 2)
      {
         this["\x1a\x12\t"](new ank.utils.ExtendedString(this._tiSearch.text)["\x1a\x0b\x15"]().toUpperCase());
      }
      else if(this["\x1d\x06\x0b"].dataProvider != this["\x1c\x0f\x14"])
      {
         this["\x1d\x06\x0b"].dataProvider = this["\x1c\x0f\x14"];
      }
   }
   function itemSelected(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\f\x1b"]:
            this["\x1c\x01\x0e"] = new Array();
            if(this["\x1c\f\x1b"].selectedItem.id != 0)
            {
               this["\x1c\x01\x0e"].push(this["\x1c\f\x1b"].selectedItem.id);
            }
            else
            {
               var _loc3_ = 0;
               while(_loc3_ < this["\x1c\f\x1b"].dataProvider.length)
               {
                  if(this["\x1c\f\x1b"].dataProvider[_loc3_].id != 0)
                  {
                     this["\x1c\x01\x0e"].push(this["\x1c\f\x1b"].dataProvider[_loc3_].id);
                  }
                  _loc3_ = _loc3_ + 1;
               }
            }
            this["\x17\x13\x11"]();
            this.change();
            break;
         case this["\x1d\x06\x0b"]:
            var _loc4_ = this["\x1d\x06\x0b"].selectedItem;
            if(_loc4_ == undefined)
            {
               this["\x18\x06\x0f"](true);
               break;
            }
            if(Key.isDown(dofus.Constants["\x16\x19\x13"]))
            {
               this.api.kernel.GameManager["\x18\n\x1d"](_loc4_);
               return undefined;
            }
            this["\x18\x06\x0f"](false);
            this["\x1c\x11\x13"]["\x18\x10\x17"] = _loc4_;
            break;
      }
   }
   function itemDrag(oEvent)
   {
      if(_loc2_.row.item == undefined)
      {
         return undefined;
      }
      this.gapi.removeCursor();
      this.gapi["\x1a\x15\x19"](_loc2_.row.item);
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
      var _loc3_ = dofus.datacenter.Item(this.gapi["\x17\x16\x07"]());
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      if(_loc3_.isShortcut)
      {
         return undefined;
      }
      if(String(_loc2_.target).indexOf("_cgGrid") > -1)
      {
         if(Key.isDown(Key.CONTROL))
         {
            var _loc4_ = this.gapi.loadUIComponent("PopupQuantity","PopupQuantity",{value:1,max:99,params:{targetType:"validateDrop",item:_loc3_}});
            _loc4_.addEventListener("validate",this);
         }
         else
         {
            this.validateDrop(_loc3_,1);
         }
      }
      this.gapi.removeCursor();
   }
   function validate(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.params.targetType) === "validateDrop")
      {
         this.validateDrop(dofus.datacenter.Item(_loc2_.params.item),_loc2_.value);
      }
   }
   function selectItem(oEvent)
   {
      var _loc3_ = dofus.datacenter.Item(_loc2_.target.contentData);
      if(_loc3_ == undefined)
      {
         this["\x18\x06\x0f"](true);
      }
      else
      {
         if(Key.isDown(dofus.Constants["\x16\x19\x13"]))
         {
            this.api.kernel.GameManager["\x18\n\x1d"](_loc3_);
            return undefined;
         }
         if(Key.isDown(Key.CONTROL))
         {
            var _loc4_ = new ank.utils.ExtendedArray();
            for(var i in this["\x1c\x0f\x0e"])
            {
               if(this["\x1c\x0f\x0e"][i].unicID != _loc3_.unicID)
               {
                  _loc4_.push(this["\x1c\x0f\x0e"][i]);
               }
            }
            this["\x1c\x0f\x0e"] = _loc4_;
            this._cgGrid.modelChanged();
         }
         else
         {
            this["\x18\x06\x0f"](false);
            this["\x1c\x11\x13"]["\x18\x10\x17"] = _loc3_;
         }
      }
   }
}
