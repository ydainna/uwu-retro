class dofus.§\x18\x03\x10§.gapi.ui.KnownledgeBase extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "KnownledgeBase";
   static var §\x17\b\x14§ = 1;
   static var §\x17\b\x13§ = 2;
   static var §\x17\b\x16§ = 3;
   static var §\x17\b\x12§ = 4;
   static var §\x1b\n\x04§ = 1;
   static var §\x1b\n\x03§ = 2;
   function KnownledgeBase()
   {
      super();
      this["\x1b\r\x04"](dofus.graphics.gapi.ui.KnownledgeBase["\x17\b\x14"],true);
      this._btnMaximize._visible = false;
   }
   function §\x0e\x1d§(§\x19\x03\x13§)
   {
      this.addToQueue({object:this,method:this["\x17\b\x04"],params:[_loc2_]});
      return this.article;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.KnownledgeBase.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this["\x18\n\x14"]});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
      this.addToQueue({object:this,method:this["\x1a\n\x0e"]});
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function §\x18\n\x14§()
   {
      this._winBackground.title = this.api.lang.getText("KB_TITLE");
      this["\x1c\x1e\x19"].text = this.api.lang.getText("KB_SEARCH");
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._btnMaximize.addEventListener("click",this);
      this._btnMaximize.addEventListener("over",this);
      this._btnMaximize.addEventListener("out",this);
      this._btnMinimize.addEventListener("click",this);
      this._btnMinimize.addEventListener("over",this);
      this._btnMinimize.addEventListener("out",this);
      this._lstCategories.addEventListener("itemSelected",this);
      this._lstArticles.addEventListener("itemSelected",this);
      this._lstSearch.addEventListener("itemSelected",this);
      this["\x1e\r\x12"].addEventListener("href",this);
      this._mcBtnCategory.onRelease = function()
      {
         this._parent.click({target:this});
      };
      this._mcBtnArticle.onRelease = function()
      {
         this._parent.click({target:this});
      };
      this._tiSearch.addEventListener("change",this);
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
   }
   function §\x18\t\x14§()
   {
      var _loc2_ = this.api.lang["\x17\x1a\x0b"]();
      _loc2_.sortOn("o",Array.NUMERIC | Array.DESCENDING);
      this["\x1c\x0e\x1d"] = new ank.utils.ExtendedArray();
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         if(_loc2_[_loc3_] != undefined && (this.api.datacenter.Basics.aks_current_regional_version != undefined && _loc2_[_loc3_].ep <= this.api.datacenter.Basics.aks_current_regional_version))
         {
            this["\x1c\x0e\x1d"].push(_loc2_[_loc3_]);
         }
         _loc3_ = _loc3_ + 1;
      }
      this._lstCategories.dataProvider = this["\x1c\x0e\x1d"];
      var _loc4_ = this.api.lang["\x17\x1a\n"]();
      _loc4_.sortOn("o",Array.NUMERIC | Array.DESCENDING);
      this["\x1c\x0e\x1a"] = new ank.utils.ExtendedArray();
      var _loc5_ = 0;
      while(_loc5_ < _loc4_.length)
      {
         if(_loc4_[_loc5_] != undefined && (this.api.datacenter.Basics.aks_current_regional_version != undefined && _loc4_[_loc5_].ep <= this.api.datacenter.Basics.aks_current_regional_version))
         {
            this["\x1c\x0e\x1a"].push(_loc4_[_loc5_]);
         }
         _loc5_ = _loc5_ + 1;
      }
      this["\x17\x13\x11"]();
   }
   function §\x1a\n\x0e§()
   {
      switch(this.api.datacenter.Basics.kbDisplayType)
      {
         case dofus.graphics.gapi.ui.KnownledgeBase["\x17\b\x14"]:
            this["\x1b\r\x04"](dofus.graphics.gapi.ui.KnownledgeBase["\x17\b\x14"]);
            break;
         case dofus.graphics.gapi.ui.KnownledgeBase["\x17\b\x13"]:
            this["\x17\b\x05"](this.api.datacenter.Basics.kbCategory);
            break;
         case dofus.graphics.gapi.ui.KnownledgeBase["\x17\b\x12"]:
            this["\x17\b\x04"](this.api.datacenter.Basics.kbArticle);
            break;
         case dofus.graphics.gapi.ui.KnownledgeBase["\x17\b\x16"]:
            this._tiSearch.text = this.api.datacenter.Basics.kbSearch;
      }
   }
   function §\x1b\r\x0b§(§\x19\x0f\x01§)
   {
      if(this["\x1d\x15\x04"] == _loc2_)
      {
         return undefined;
      }
      var _loc3_ = this.api.ui.getUIComponent("KnownledgeBase");
      switch(_loc2_)
      {
         case dofus.graphics.gapi.ui.KnownledgeBase["\x1b\n\x04"]:
            this._btnMaximize._visible = true;
            this._btnMinimize._visible = false;
            _loc3_._y = 352;
            break;
         case dofus.graphics.gapi.ui.KnownledgeBase["\x1b\n\x03"]:
            this._btnMaximize._visible = false;
            this._btnMinimize._visible = true;
            _loc3_._y = 0;
      }
      this["\x1d\x15\x04"] = _loc2_;
   }
   function §\x1b\r\x04§(§\x19\x06\x05§, §\x16\n\x1c§)
   {
      if(this["\x1d\x14\x0f"] == _loc2_)
      {
         return undefined;
      }
      switch(_loc2_)
      {
         case dofus.graphics.gapi.ui.KnownledgeBase["\x17\b\x14"]:
            this._lstCategories._visible = true;
            this._lstArticles._visible = false;
            this["\x1c\x14\x13"]._visible = false;
            this["\x1d\t\x0e"]._visible = false;
            this._mcArrowUp._visible = false;
            this["\x1d\b\x15"]._visible = false;
            this._mcBtnCategory._visible = false;
            this["\x1c\x12\x1b"]._visible = false;
            this["\x1d\b\x07"]._visible = false;
            this["\x1d\b\x13"]._visible = false;
            this._mcBtnArticle._visible = false;
            this["\x1e\r\x12"]._visible = false;
            this._lstSearch._visible = false;
            this["\x1d\t\t"]._visible = false;
            this["\x1d\b\x06"]._visible = false;
            break;
         case dofus.graphics.gapi.ui.KnownledgeBase["\x17\b\x13"]:
            this._lstCategories._visible = false;
            this._lstArticles._visible = true;
            this["\x1c\x14\x13"]._visible = true;
            this["\x1d\t\x0e"]._visible = true;
            this._mcArrowUp._visible = true;
            this["\x1d\b\x15"]._visible = true;
            this._mcBtnCategory._visible = true;
            this["\x1c\x12\x1b"]._visible = false;
            this["\x1d\b\x07"]._visible = false;
            this["\x1d\b\x13"]._visible = false;
            this._mcBtnArticle._visible = false;
            this["\x1e\r\x12"]._visible = false;
            this._lstSearch._visible = false;
            this["\x1d\t\t"]._visible = false;
            this["\x1d\b\x06"]._visible = false;
            break;
         case dofus.graphics.gapi.ui.KnownledgeBase["\x17\b\x16"]:
            this._lstCategories._visible = false;
            this._lstArticles._visible = false;
            this["\x1c\x14\x13"]._visible = false;
            this["\x1d\t\x0e"]._visible = false;
            this._mcArrowUp._visible = false;
            this["\x1d\b\x15"]._visible = false;
            this._mcBtnCategory._visible = false;
            this["\x1c\x12\x1b"]._visible = false;
            this["\x1d\b\x07"]._visible = false;
            this["\x1d\b\x13"]._visible = false;
            this._mcBtnArticle._visible = false;
            this["\x1e\r\x12"]._visible = false;
            this._lstSearch._visible = true;
            this["\x1d\t\t"]._visible = false;
            this["\x1d\b\x06"]._visible = false;
            break;
         case dofus.graphics.gapi.ui.KnownledgeBase["\x17\b\x12"]:
            this._lstCategories._visible = false;
            this._lstArticles._visible = false;
            this["\x1c\x14\x13"]._visible = true;
            this["\x1d\t\x0e"]._visible = true;
            this._mcArrowUp._visible = false;
            this["\x1d\b\x15"]._visible = true;
            this._mcBtnCategory._visible = false;
            this["\x1c\x12\x1b"]._visible = true;
            this["\x1d\b\x07"]._visible = true;
            this["\x1d\b\x13"]._visible = true;
            this._mcBtnArticle._visible = true;
            this["\x1e\r\x12"]._visible = true;
            this._lstSearch._visible = false;
            this["\x1d\t\t"]._visible = true;
            this["\x1d\b\x06"]._visible = true;
      }
      this["\x1d\x14\x0f"] = _loc2_;
      if(_loc3_ !== true)
      {
         this.api.datacenter.Basics.kbDisplayType = _loc2_;
      }
   }
   function §\x17\x13\x11§()
   {
      this["\x1c\x0f\x10"] = new ank.utils.ExtendedArray();
      var _loc2_ = 0;
      while(_loc2_ < this["\x1c\x0e\x1a"].length)
      {
         var _loc3_ = 0;
         while(_loc3_ < this["\x1c\x0e\x1a"][_loc2_].k.length)
         {
            this["\x1c\x0f\x10"].push({name:new ank.utils.ExtendedString(this["\x1c\x0e\x1a"][_loc2_].k[_loc3_])["\x1a\x0b\x15"]().toUpperCase(),i:this["\x1c\x0e\x1a"][_loc2_].i});
            _loc3_ = _loc3_ + 1;
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   function §\x1a\x12\n§(§\x1b\n\x1d§)
   {
      var _loc3_ = _loc2_.split(" ");
      var _loc4_ = new ank.utils.ExtendedArray();
      var _loc5_ = new ank.utils.ExtendedArray();
      var _loc6_ = new Array();
      var _loc7_ = 0;
      var _loc8_ = new Array();
      var _loc9_ = -1;
      var _loc10_ = 0;
      while(_loc10_ < this["\x1c\x0f\x10"].length)
      {
         var _loc11_ = this["\x1c\x0f\x10"][_loc10_];
         var _loc12_ = this["\x1a\x12\x0b"](_loc3_,_loc11_.name,_loc7_);
         if(_loc12_ != 0)
         {
            _loc6_.push({i:_loc11_.i,w:_loc12_});
            _loc7_ = _loc12_;
         }
         _loc10_ = _loc10_ + 1;
      }
      var _loc13_ = 0;
      while(_loc13_ < _loc6_.length)
      {
         if(!_loc8_[_loc6_[_loc13_].i] && _loc6_[_loc13_].w >= _loc7_)
         {
            var _loc14_ = this["\x1c\x0e\x1a"].findFirstItem("i",_loc6_[_loc13_].i).item;
            _loc4_.push(_loc14_);
            _loc8_[_loc6_[_loc13_].i] = true;
         }
         _loc13_ = _loc13_ + 1;
      }
      _loc4_.sortOn("c",Array.NUMERIC | Array.DESCENDING);
      var _loc15_ = 0;
      while(_loc15_ < _loc4_.length)
      {
         if(_loc4_[_loc15_].n != "" && _loc4_[_loc15_].n != undefined)
         {
            if(_loc9_ != _loc4_[_loc15_].c)
            {
               _loc5_.push(this.api.lang["\x17\x1a\f"](_loc4_[_loc15_].c));
               _loc9_ = _loc4_[_loc15_].c;
            }
            _loc5_.push(_loc4_[_loc15_]);
         }
         _loc15_ = _loc15_ + 1;
      }
      this._lstSearch.dataProvider = _loc5_;
   }
   function §\x1a\x12\x0b§(§\x16\b\x07§, §\x1b\x03\x1d§, §\x19\n\f§)
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
   function §\x17\b\x05§(§\x19\x04\f§, §\x16\n\x16§)
   {
      var _loc4_ = new ank.utils.ExtendedArray();
      var _loc5_ = 0;
      while(_loc5_ < this["\x1c\x0e\x1a"].length)
      {
         if(this["\x1c\x0e\x1a"][_loc5_].c == _loc2_)
         {
            _loc4_.push(this["\x1c\x0e\x1a"][_loc5_]);
         }
         _loc5_ = _loc5_ + 1;
      }
      this._lstArticles.dataProvider = _loc4_;
      this["\x1c\x14\x13"].text = this["\x1c\x0e\x1d"].findFirstItem("i",_loc2_).item.n;
      if(_loc3_ !== true)
      {
         this["\x1b\r\x04"](dofus.graphics.gapi.ui.KnownledgeBase["\x17\b\x13"]);
      }
      this.api.datacenter.Basics.kbCategory = _loc2_;
   }
   function §\x17\b\x04§(§\x19\x03\x13§)
   {
      var _loc3_ = this["\x1c\x0e\x1a"].findFirstItem("i",_loc2_).item;
      this["\x1c\x12\x1b"].text = _loc3_.n;
      this["\x17\b\x05"](_loc3_.c,true);
      this["\x1e\r\x12"].text = "<p class=\'body\'>" + _loc3_.a + "</p>";
      this["\x1b\r\x04"](dofus.graphics.gapi.ui.KnownledgeBase["\x17\b\x12"]);
      this.api.datacenter.Basics.kbArticle = _loc2_;
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnClose":
            this["\x16\x15\n"]();
            break;
         case "_mcBtnCategory":
            this["\x1b\r\x04"](dofus.graphics.gapi.ui.KnownledgeBase["\x17\b\x14"]);
            break;
         case "_mcBtnArticle":
            this["\x1b\r\x04"](dofus.graphics.gapi.ui.KnownledgeBase["\x17\b\x13"]);
            break;
         case "_btnMaximize":
            this["\x1b\r\x0b"](dofus.graphics.gapi.ui.KnownledgeBase["\x1b\n\x03"]);
            break;
         case "_btnMinimize":
            this["\x1b\r\x0b"](dofus.graphics.gapi.ui.KnownledgeBase["\x1b\n\x04"]);
      }
   }
   function over(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnMinimize":
            this.gapi.showTooltip(this.api.lang.getText("WINDOW_MINIMIZE"),_loc2_.target,20);
            break;
         case "_btnMaximize":
            this.gapi.showTooltip(this.api.lang.getText("WINDOW_MAXIMIZE"),_loc2_.target,20);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function itemSelected(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_lstCategories":
            this["\x17\b\x05"](Number(_loc2_.row.item.i));
            break;
         case "_lstArticles":
            this["\x17\b\x04"](Number(_loc2_.row.item.i));
            break;
         case "_lstSearch":
            var _loc3_ = _loc2_.row.item;
            if(_loc3_.c > 0)
            {
               this["\x1c\x12\x1b"].text = _loc3_.n;
               this["\x1c\x14\x13"].text = this["\x1c\x0e\x1d"].findFirstItem("i",_loc3_.c).item.n;
               this["\x1e\r\x12"].text = _loc3_.a;
               this["\x1b\r\x04"](dofus.graphics.gapi.ui.KnownledgeBase["\x17\b\x12"]);
               break;
            }
            this["\x1c\x14\x13"].text = _loc3_.n;
            var _loc4_ = _loc3_.i;
            var _loc5_ = new ank.utils.ExtendedArray();
            var _loc6_ = 0;
            while(_loc6_ < this["\x1c\x0e\x1a"].length)
            {
               if(this["\x1c\x0e\x1a"][_loc6_].c == _loc4_)
               {
                  _loc5_.push(this["\x1c\x0e\x1a"][_loc6_]);
               }
               _loc6_ = _loc6_ + 1;
            }
            this._lstArticles.dataProvider = _loc5_;
            this["\x1b\r\x04"](dofus.graphics.gapi.ui.KnownledgeBase["\x17\b\x13"]);
            break;
      }
   }
   function change(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "_tiSearch")
      {
         var _loc3_ = this._tiSearch.text;
         if(_loc3_.length > 0)
         {
            this["\x1b\r\x04"](dofus.graphics.gapi.ui.KnownledgeBase["\x17\b\x16"]);
            this["\x1a\x12\n"](new ank.utils.ExtendedString(_loc3_)["\x1a\x0b\x15"]().toUpperCase());
         }
         else
         {
            this["\x1b\r\x04"](dofus.graphics.gapi.ui.KnownledgeBase["\x17\b\x14"]);
         }
         this.api.datacenter.Basics.kbSearch = this._tiSearch.text;
      }
   }
   function href(oEvent)
   {
      this.api.kernel["\x1b\x10\x0b"]["\x19\x19\x1b"](_loc2_);
   }
   function onShortcut(sShortcut)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_) === "ACCEPT_CURRENT_DIALOG")
      {
         if(this._tiSearch["\x17\x11\x18"])
         {
            this.change({target:this._tiSearch});
         }
      }
   }
}
