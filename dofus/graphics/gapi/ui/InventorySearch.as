class dofus.§\x18\x03\x10§.gapi.ui.InventorySearch extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "InventorySearch";
   static var §\x18\x1d\f§ = 2;
   var §\x1e\t\x03§ = "";
   function InventorySearch()
   {
      super();
   }
   function §\x1e\x15§(§\x16\x07\x04§)
   {
      this["\x1c\x01\x0e"] = _loc2_;
      return this["\f\x0f"]();
   }
   function §\x18\x02§(§\x19\n\x04§)
   {
      this["\x1d\x19\x12"] = _loc2_;
      return this["\x03\r"]();
   }
   function §\x12\x03§(sText)
   {
      this["\x1e\t\x03"] = _loc2_;
      return this.defaultSearch;
   }
   function §\x19\x14§(§\x19\x11\f§)
   {
      this["\x1e\x04\x1d"] = _loc2_;
      return this.oParent;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.InventorySearch.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this.gapi.hideTooltip();
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
      this["\x17\x13\x11"]();
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._btnClose2.addEventListener("click",this);
      this._btnView.addEventListener("click",this);
      this._tiSearch.addEventListener("change",this);
      this._lstItems.addEventListener("itemSelected",this);
   }
   function initTexts()
   {
      this._winBackground.title = this.api.lang.getText("BIGSTORE_SEARCH");
      this["\x1c\x1e\x19"].text = this.api.lang.getText("INVENTORY_SEARCH_ITEM_NAME",[dofus.graphics.gapi.ui.InventorySearch["\x18\x1d\f"]]);
      this._btnClose2.label = this.api.lang.getText("CLOSE");
      this._btnView.label = this.api.lang.getText("BIGSTORE_SEARCH_VIEW");
      this._tiSearch.text = this["\x1e\t\x03"];
      this._tiSearch.setFocus();
   }
   function §\x17\x13\x11§()
   {
      var _loc2_ = new Object();
      for(var k in this["\x1c\x01\x0e"])
      {
         _loc2_[this["\x1c\x01\x0e"][k]] = true;
      }
      var _loc3_ = this._oDataProvider;
      this["\x1b\x1d\n"] = new Array();
      for(var k in _loc3_)
      {
         var _loc4_ = _loc3_[k];
         this["\x1b\x1d\n"].push({id:_loc4_.unicID,name:_loc4_.nameUppercase,quantity:_loc4_.Quantity});
      }
   }
   function §\x1a\x12\t§(sText)
   {
      var _loc3_ = _loc2_.split(" ");
      var _loc4_ = new ank.utils.ExtendedArray();
      var _loc5_ = new Object();
      var _loc6_ = 0;
      var _loc7_ = 0;
      while(_loc7_ < this["\x1b\x1d\n"].length)
      {
         var _loc8_ = this["\x1b\x1d\n"][_loc7_];
         var _loc9_ = this["\x1a\x12\x0b"](_loc3_,_loc8_.name,_loc6_);
         if(_loc9_ != 0)
         {
            _loc5_[_loc8_.id] = {wordCount:_loc9_,quantity:_loc8_.quantity};
            _loc6_ = _loc9_;
         }
         _loc7_ = _loc7_ + 1;
      }
      for(var k in _loc5_)
      {
         if(_loc5_[k].wordCount >= _loc6_)
         {
            _loc4_.push(new dofus.datacenter.["\x18\x10\x15"](0,Number(k),_loc5_[k].quantity));
         }
      }
      this._lstItems.dataProvider = _loc4_;
      this["\x1c\x1e\x1a"].text = _loc4_.length != 0 ? _loc4_.length + " " + ank.utils.["\x1a\x04\t"]["\x16\x1d\x15"](this.api.lang.getText("OBJECTS"),"m",_loc4_ < 2) : this.api.lang.getText("NO_INVENTORY_SEARCH_RESULT");
      this._btnView.enabled = false;
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
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnClose":
         case "_btnClose2":
            this["\x16\x15\n"]();
            break;
         case "_btnView":
            var _loc3_ = this._lstItems.selectedItem;
            this["\x17\x07\x19"]({type:"select",value:_loc3_.unicID});
            this["\x16\x15\n"]();
      }
   }
   function change(oEvent)
   {
      var _loc3_ = new ank.utils.ExtendedString(this._tiSearch.text)["\x1b\x11\x13"]()["\x1a\x0b\x15"]();
      if(_loc3_.length >= dofus.graphics.gapi.ui.InventorySearch["\x18\x1d\f"])
      {
         this["\x1a\x12\t"](_loc3_.toUpperCase());
      }
      else
      {
         this._lstItems.dataProvider = new ank.utils.ExtendedArray();
         if(this["\x1c\x1e\x1a"].text != undefined)
         {
            this["\x1c\x1e\x1a"].text = "";
         }
      }
      this["\x1e\x04\x1d"].defaultSearch = this._tiSearch.text;
   }
   function itemSelected(oEvent)
   {
      this._btnView.enabled = true;
   }
}
