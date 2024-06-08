class dofus.§\x18\x03\x10§.gapi.ui.BigStoreSearch extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "BigStoreSearch";
   var §\x1e\t\x03§ = "";
   function BigStoreSearch()
   {
      super();
   }
   function set isMonster(bIsMonster)
   {
      this._bIsMonster = bIsMonster;
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
      super.init(false,dofus.graphics.gapi.ui.BigStoreSearch.CLASS_NAME);
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
      if(this._bIsMonster)
      {
         this["\x1c\x1e\x19"].text = this.api.lang.getText("BIGSTORE_SEARCH_MONSTER_NAME");
      }
      else
      {
         this["\x1c\x1e\x19"].text = this.api.lang.getText("BIGSTORE_SEARCH_ITEM_NAME");
      }
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
      this["\x1b\x1d\n"] = new Array();
      if(this._bIsMonster)
      {
         var _loc3_ = this.api.lang["\x17\x1c\x04"]();
         for(var k in _loc3_)
         {
            var _loc4_ = _loc3_[k];
            if(_loc4_.s == true)
            {
               if(_loc4_.n)
               {
                  this["\x1b\x1d\n"].push({id:k,name:_loc4_.n.toUpperCase()});
               }
            }
         }
      }
      else
      {
         var _loc5_ = this.api.lang["\x17\x19\x1b"]();
         for(var k in _loc5_)
         {
            var _loc6_ = _loc5_[k];
            if(!(_loc6_.ep == undefined || _loc6_.ep > this.api.datacenter.Basics.aks_current_regional_version))
            {
               if(_loc2_[_loc6_.t] && (_loc6_.h != true && _loc6_.l <= this["\x1d\x19\x12"]))
               {
                  if(dofus.datacenter.["\x18\x10\x15"].isFullSoul(_loc6_.t))
                  {
                     continue;
                  }
                  this["\x1b\x1d\n"].push({id:k,name:_loc6_.nn});
               }
            }
         }
      }
   }
   function §\x1a\x12\t§(sText)
   {
      var _loc3_ = _loc2_.split(" ");
      var _loc4_ = new ank.utils.ExtendedArray();
      var _loc5_ = new Object();
      var _loc6_ = 0;
      while(_loc6_ < this["\x1b\x1d\n"].length)
      {
         var _loc7_ = this["\x1b\x1d\n"][_loc6_];
         var _loc8_ = this["\x1a\x12\x0b"](_loc3_,_loc7_.name);
         if(_loc8_)
         {
            _loc5_[_loc7_.id] = true;
         }
         _loc6_ += 1;
      }
      for(var k in _loc5_)
      {
         if(_loc5_[k] == true)
         {
            if(this._bIsMonster)
            {
               _loc4_.push(new dofus.datacenter..MonsterInBidHouse(Number(k)));
            }
            else
            {
               _loc4_.push(new dofus.datacenter.["\x18\x10\x15"](0,Number(k)));
            }
         }
      }
      this._lstItems.dataProvider = _loc4_;
      this["\x1c\x1e\x1a"].text = _loc4_.length == 0 ? this.api.lang.getText("NO_BIGSTORE_SEARCH_RESULT") : _loc4_.length + " " + ank.utils.["\x1a\x04\t"]["\x16\x1d\x15"](this.api.lang.getText(!this._bIsMonster ? "OBJECTS" : "MONSTER"),"m",_loc4_ < 2);
      this._btnView.enabled = false;
   }
   function §\x1a\x12\x0b§(§\x16\b\x07§, §\x1b\x03\x1d§)
   {
      var _loc4_ = _loc2_.length - 1;
      while(_loc4_ >= 0)
      {
         var _loc5_ = _loc2_[_loc4_];
         var _loc6_ = _loc3_.indexOf(_loc5_);
         if(_loc6_ == -1)
         {
            return false;
         }
         _loc3_ = _loc3_.substr(0,_loc6_) + _loc3_.substr(_loc6_ + _loc5_.length);
         _loc4_ -= 1;
      }
      return true;
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
            this.api.network.Exchange["\x16\r\x01"](_loc3_.type == undefined ? -1 : _loc3_.type,_loc3_.unicID);
            this.api.network.Exchange["\x17\x19\x14"](_loc3_.unicID);
      }
   }
   function change(oEvent)
   {
      var _loc3_ = new ank.utils.ExtendedString(this._tiSearch.text)["\x1b\x11\x13"]()["\x1a\x0b\x15"]();
      if(_loc3_.length >= 2)
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
