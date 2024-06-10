class dofus.graphics.gapi.§\x17\x01\x06§.ItemSetViewer extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ItemSetViewer";
   function ItemSetViewer()
   {
      super();
   }
   function §\x16\x0e§(§\x19\x13\b§)
   {
      this.addToQueue({object:this,method:function(§\x1a\x02\x03§)
      {
         this["\x1e\x03\x1b"] = _loc2_;
         if(this["\x18\t\x1c"])
         {
            this["\x1b\x14\x14"]();
         }
      },params:[_loc2_]});
      return this.itemSet;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.ItemSetViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      var _loc2_ = 1;
      while(_loc2_ <= 8)
      {
         var _loc3_ = this["_ctr" + _loc2_];
         _loc3_.addEventListener("over",this);
         _loc3_.addEventListener("out",this);
         _loc2_ = _loc2_ + 1;
      }
   }
   function initTexts()
   {
      this["\x1c\x17\x0e"].text = this.api.lang.getText("ITEMSET_EFFECTS");
      this._lblItems.text = this.api.lang.getText("ITEMSET_EQUIPED_ITEMS");
   }
   function §\x1b\x14\x14§()
   {
      if(this["\x1e\x03\x1b"] != undefined)
      {
         var _loc2_ = this["\x1e\x03\x1b"].items;
         this["\x1e\x10\t"].title = this["\x1e\x03\x1b"].name;
         var _loc3_ = this["\x1e\x03\x1b"]["\x18\x10\x16"] != undefined ? this["\x1e\x03\x1b"]["\x18\x10\x16"] : 8;
         var _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var _loc5_ = _loc2_[_loc4_];
            var _loc6_ = this["_ctr" + (_loc4_ + 1)];
            _loc6_._visible = true;
            _loc6_.contentData = _loc5_.item;
            _loc6_["\x16\x10\t"] = !_loc5_.isEquiped ? "ItemSetViewerItemBorder" : "ItemSetViewerItemBorderNone";
            _loc4_ = _loc4_ + 1;
         }
         this["\x1d\x06\x14"].dataProvider = this["\x1e\x03\x1b"].effects;
         var _loc7_ = _loc3_ + 1;
         while(_loc7_ <= 8)
         {
            var _loc8_ = this["_ctr" + _loc7_];
            _loc8_._visible = false;
            _loc7_ = _loc7_ + 1;
         }
         this._visible = true;
      }
      else
      {
         ank.utils.Logger.err("[ItemSetViewer] le set n\'est pas défini");
         this._visible = false;
      }
   }
   function click(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "_btnClose")
      {
         this["\x17\x07\x19"]({type:"close"});
      }
   }
   function over(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_ctr1":
         case "_ctr2":
         case "_ctr3":
         case "_ctr4":
         case "_ctr5":
         case "_ctr6":
         case "_ctr7":
         case "_ctr8":
            var _loc3_ = _loc2_.target.contentData;
            var _loc4_ = _loc3_.name;
            this.gapi.showTooltip(_loc4_,_loc2_.target,-20,undefined,_loc3_.style + "ToolTip");
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
