class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.§\x17\x02\x02§.CraftViewerCraftItem extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function CraftViewerCraftItem()
   {
      super();
   }
   function §\x17\x07§(§\x18\x1b\x17§)
   {
      this["\x1d\r\t"] = _loc2_;
      return this.list;
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      this["\x1e\x03\x18"] = _loc4_;
      if(_loc2_)
      {
         this._ctrItemIcon.contentData = _loc4_["\x17\x01\x19"];
         this._ctrItemIcon._visible = true;
         this["\x1c\x19\x13"].text = _loc4_["\x17\x01\x19"].name + " (" + this["\x1d\r\t"]._parent.api.lang.getText("LEVEL_SMALL") + " " + _loc4_["\x17\x01\x19"].level + ")";
         this["\x1d\x11\x01"].onRollOver = function()
         {
            this._parent["\x19\x1e\x03"]();
         };
         this["\x1d\x11\x01"].onRollOut = function()
         {
            this._parent["\x19\x1e\x02"]();
         };
         this["\x1d\x11\x01"].onRelease = function()
         {
            this._parent.click({target:{_name:"_lblItemIcon"}});
         };
         if(_loc4_["\x1b\x02\t"] != undefined)
         {
            this["\x1d\x01\x14"].text = "(" + _loc4_["\x1b\x02\t"].description + " " + this["\x1d\r\t"]._parent.api.lang.getText("ON") + " " + _loc4_["\x1b\x02\t"]["\x18\x0b\x1d"] + ")";
         }
         var _loc5_ = _loc4_.items;
         var _loc6_ = _loc5_.length;
         var _loc7_ = 0;
         while(_loc7_ < _loc6_)
         {
            var _loc8_ = _loc5_[_loc7_];
            this["_ctr" + _loc7_]._visible = true;
            this["_ctr" + _loc7_].contentData = _loc8_;
            this["_lblPlus" + _loc7_]._visible = true;
            _loc7_ = _loc7_ + 1;
         }
         var _loc9_ = _loc6_;
         while(_loc9_ < 8)
         {
            this["_ctr" + _loc9_]._visible = false;
            this["_lblPlus" + _loc9_]._visible = false;
            _loc9_ = _loc9_ + 1;
         }
      }
      else if(this["\x1c\x19\x13"].text != undefined)
      {
         this._ctrItemIcon.contentData = "";
         this._ctrItemIcon._visible = false;
         this["\x1c\x19\x13"].text = "";
         this["\x1d\x01\x14"].text = "";
         var _loc10_ = 0;
         while(_loc10_ < 8)
         {
            this["_ctr" + _loc10_]._visible = false;
            this["_lblPlus" + _loc10_]._visible = false;
            _loc10_ = _loc10_ + 1;
         }
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
      this._ctrItemIcon._visible = false;
      var _loc3_ = 0;
      while(_loc3_ < 8)
      {
         this["_ctr" + _loc3_]._visible = this["_lblPlus" + _loc3_]._visible = false;
         _loc3_ = _loc3_ + 1;
      }
      this.addToQueue({object:this,method:this.addListeners});
   }
   function size()
   {
      super.size();
   }
   function addListeners()
   {
      var _loc2_ = 0;
      while(_loc2_ < 8)
      {
         this["_ctr" + _loc2_].addEventListener("over",this);
         this["_ctr" + _loc2_].addEventListener("out",this);
         this["_ctr" + _loc2_].addEventListener("click",this);
         _loc2_ = _loc2_ + 1;
      }
      this._ctrItemIcon.addEventListener("click",this);
   }
   function §\x1a\x15\x16§(§\x19\b\x14§, §\x19\x13\x07§)
   {
      this["_ctr" + _loc2_].contentData = _loc3_;
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_ctrItemIcon":
         case "_lblItemIcon":
            if(Key.isDown(dofus.Constants["\x16\x19\x13"]) && this["\x1e\x03\x18"] != undefined)
            {
               this["\x1d\r\t"]._parent.gapi.api.kernel.GameManager["\x18\n\x1d"](this["\x1e\x03\x18"]["\x17\x01\x19"],"","=");
               var _loc3_ = 0;
               while(_loc3_ < this["\x1e\x03\x18"].items.length)
               {
                  var _loc4_ = this["\x1e\x03\x18"].items[_loc3_];
                  this["\x1d\r\t"]._parent.gapi.api.kernel.GameManager["\x18\n\x1d"](_loc4_,_loc4_.Quantity + "x",_loc3_ >= this["\x1e\x03\x18"].items.length - 1 ? "" : "+");
                  _loc3_ = _loc3_ + 1;
               }
            }
            else
            {
               this["\x1d\r\t"]._parent["\x17\x01\x19"](this._ctrItemIcon.contentData);
            }
            break;
         default:
            var _loc5_ = _loc2_.target.contentData;
            if(Key.isDown(dofus.Constants["\x16\x19\x13"]) && _loc5_ != undefined)
            {
               this["\x1d\r\t"]._parent.gapi.api.kernel.GameManager["\x18\n\x1d"](_loc5_);
               break;
            }
            this["\x1d\r\t"]._parent["\x17\x01\x19"](_loc5_);
            break;
      }
   }
   function §\x19\x1e\x03§()
   {
      switch(this["\x1e\x03\x18"]["\x17\x07\x0f"])
      {
         case 1:
            var _loc2_ = this["\x1d\r\t"]._parent.gapi.api.lang.getText("CRAFT_DIFFICULTY1");
            break;
         case 2:
            _loc2_ = this["\x1d\r\t"]._parent.gapi.api.lang.getText("CRAFT_DIFFICULTY2");
            break;
         case 3:
            _loc2_ = this["\x1d\r\t"]._parent.gapi.api.lang.getText("CRAFT_DIFFICULTY3");
      }
      if(_loc2_ != undefined)
      {
         this["\x1d\r\t"]._parent.gapi.showTooltip(_loc2_,this["\x1d\x11\x01"],15);
      }
   }
   function §\x19\x1e\x02§()
   {
      this["\x1d\r\t"]._parent.gapi.hideTooltip();
   }
   function over(oEvent)
   {
      var _loc3_ = _loc2_.target.contentData;
      this["\x1d\r\t"]._parent.gapi.showTooltip("x" + _loc3_.Quantity + " - " + _loc3_.name,_loc2_.target,-20);
   }
   function out(oEvent)
   {
      this["\x1d\r\t"]._parent.gapi.hideTooltip();
   }
}
