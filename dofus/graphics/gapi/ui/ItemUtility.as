class dofus.§\x18\x03\x10§.gapi.ui.ItemUtility extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ItemUtility";
   function ItemUtility()
   {
      super();
   }
   function §\x16\n§(§\x19\x13\x07§)
   {
      this["\x1e\x03\x18"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1a\x12\x04"](_loc2_);
      }
      return this["\x01\x07"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.ItemUtility.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.initData});
      this["\x18\x06\x06"](true);
      this["\x18\x06\x15"](true);
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._cbReceiptTypes.addEventListener("itemSelected",this);
   }
   function initTexts()
   {
      this["\x1e\x10\x1a"].title = this["\x1e\x03\x18"].name;
      this["\x1c\x1e\x01"].text = this.api.lang.getText("ITEM_TYPE");
      this["\x1c\x1b\x18"].text = this.api.lang.getText("ITEM_UTILITY_NO_CRAFTS");
      this["\x1c\x1b\x1a"].text = this.api.lang.getText("ITEM_UTILITY_NO_RECEIPT");
      this["\x1c\x16\x07"].text = this.api.lang.getText("ITEM_UTILITY_CRAFTS");
      this["\x1c\x1d\x1d"].text = this.api.lang.getText("ITEM_UTILITY_RECEIPT");
   }
   function initData()
   {
      if(this["\x1e\x03\x18"] != undefined)
      {
         this["\x1a\x12\x04"](this["\x1e\x03\x18"]);
      }
   }
   function §\x1a\x12\x04§(§\x19\x13\x07§)
   {
      this["\x1c\x10\t"] = new ank.utils.ExtendedArray();
      var _loc3_ = this.api.lang["\x17\x14\b"]();
      var _loc4_ = new Array();
      for(var a in _loc3_)
      {
         if(a == _loc2_.unicID)
         {
            var _loc5_ = new ank.utils.ExtendedArray();
            _loc5_.push(this["\x17\x02\f"](Number(a),_loc3_));
            this["\x1d\x06\x1a"].dataProvider = _loc5_;
         }
         else
         {
            var _loc6_ = _loc3_[a];
            var _loc7_ = 0;
            while(_loc7_ < _loc6_.length)
            {
               if(_loc6_[_loc7_][0] == _loc2_.unicID)
               {
                  _loc4_.push(a);
               }
               _loc7_ = _loc7_ + 1;
            }
         }
      }
      var _loc8_ = new ank.utils.ExtendedArray();
      _loc8_.push({label:this.api.lang.getText("WITHOUT_TYPE_FILTER"),id:0});
      var _loc9_ = new Object();
      if(_loc4_.length > 0)
      {
         var _loc10_ = 0;
         while(_loc10_ < _loc4_.length)
         {
            var _loc11_ = this["\x17\x02\f"](_loc4_[_loc10_],_loc3_);
            var _loc12_ = _loc11_["\x17\x01\x19"].type;
            if(!_loc9_[_loc12_])
            {
               _loc8_.push({label:this.api.lang["\x17\x19\x1a"](_loc12_).n,id:_loc12_});
               _loc9_[_loc12_] = true;
            }
            this["\x1c\x10\t"].push(_loc11_);
            _loc10_ = _loc10_ + 1;
         }
         this._cbReceiptTypes.dataProvider = _loc8_;
         this._cbReceiptTypes.selectedIndex = 0;
         this["\x1d\x06\x13"].dataProvider = this["\x1c\x10\t"];
         this["\x18\x06\x06"](false);
      }
      else
      {
         this["\x18\x06\x06"](true);
      }
      this["\x18\x06\x15"](this["\x1d\x06\x1a"].dataProvider.length != 1);
   }
   function §\x17\x02\f§(§\x19\x05\x0e§, §\x15\x1b\b§)
   {
      var _loc4_ = _loc3_[_loc2_];
      var _loc5_ = new Object();
      _loc5_["\x17\x01\x19"] = new dofus.datacenter.Item(0,_loc2_,1);
      _loc5_.items = new Array();
      var _loc6_ = 0;
      while(_loc6_ < _loc4_.length)
      {
         var _loc7_ = _loc4_[_loc6_][0];
         var _loc8_ = _loc4_[_loc6_][1];
         var _loc9_ = new dofus.datacenter.Item(0,_loc7_,_loc8_);
         _loc5_.items.push(_loc9_);
         _loc6_ = _loc6_ + 1;
      }
      return _loc5_;
   }
   function §\x18\x06\x15§(§\x16\f\x12§)
   {
      this["\x1d\x06\x1a"]._visible = !_loc2_;
      this["\x1c\x1b\x1a"]._visible = _loc2_;
   }
   function §\x18\x06\x06§(§\x16\f\x12§)
   {
      this["\x1d\x06\x13"]._visible = !_loc2_;
      this._cbReceiptTypes.enabled = !_loc2_;
      this["\x1c\x1b\x18"]._visible = _loc2_;
   }
   function §\x1a\x19\x07§(§\x19\x10\x07§)
   {
      var _loc3_ = new ank.utils.ExtendedArray();
      if(_loc2_ == 0)
      {
         _loc3_ = this["\x1c\x10\t"];
      }
      else
      {
         var _loc4_ = 0;
         while(_loc4_ < this["\x1c\x10\t"].length)
         {
            var _loc5_ = this["\x1c\x10\t"][_loc4_];
            if(_loc5_["\x17\x01\x19"].type == _loc2_)
            {
               _loc3_.push(_loc5_);
            }
            _loc4_ = _loc4_ + 1;
         }
      }
      this["\x1d\x06\x13"].dataProvider = _loc3_;
      var _loc6_ = this._cbReceiptTypes.dataProvider;
      var _loc7_ = 0;
      while(_loc7_ < _loc6_.length)
      {
         if(_loc6_[_loc7_].id == _loc2_)
         {
            this._cbReceiptTypes.selectedIndex = _loc7_;
            return undefined;
         }
         _loc7_ = _loc7_ + 1;
      }
   }
   function click(oEvent)
   {
      if(_loc2_.target == this._btnClose)
      {
         this["\x16\x15\n"]();
         return undefined;
      }
   }
   function itemSelected(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "_cbReceiptTypes")
      {
         this["\x1a\x19\x07"](this._cbReceiptTypes.selectedItem.id);
      }
   }
}
