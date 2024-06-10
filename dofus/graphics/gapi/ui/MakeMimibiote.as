class dofus.§\x18\x03\x10§.gapi.ui.MakeMimibiote extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "MakeMimibiote";
   function MakeMimibiote()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.MakeMimibiote.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.initTexts});
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._btnValidate.addEventListener("click",this);
      this._ivInventoryViewer.addEventListener("dblClickItem",this);
      this._ivInventoryViewer.addEventListener("dropItem",this);
      this._ivInventoryViewer["\x16\x18\r"]["\x19\x02\n"] = false;
      this._cgItemToAttach.addEventListener("dblClickItem",this);
      this._cgItemToAttach.addEventListener("dropItem",this);
      this._cgItemToAttach.addEventListener("dragItem",this);
      this._cgItemToAttach.addEventListener("overItem",this);
      this._cgItemToAttach.addEventListener("outItem",this);
      this._cgItemToEat.addEventListener("dblClickItem",this);
      this._cgItemToEat.addEventListener("dropItem",this);
      this._cgItemToEat.addEventListener("dragItem",this);
      this._cgItemToEat.addEventListener("overItem",this);
      this._cgItemToEat.addEventListener("outItem",this);
      this._cgItemToAttach["\x19\x02\n"] = false;
      this._cgItemToEat["\x19\x02\n"] = false;
      this["\x1c\x0e\x02"].addEventListener("over",this);
      this["\x1c\x0e\x02"].addEventListener("out",this);
   }
   function initTexts()
   {
      this["\x1e\x10\x11"].title = this.api.datacenter.Player.data.name;
      this["\x1c\x1b\x0f"].text = this.api.lang.getText("CUSTOMIZE");
      this._btnValidate.label = this.api.lang.getText("VALIDATE");
   }
   function initData()
   {
      this._ivInventoryViewer.hideNonEquipementFilters();
      this._ivInventoryViewer["\x1a\x1e\x04"] = false;
      this._ivInventoryViewer.dataProvider = this.api.datacenter.Player.Inventory;
      this._cgItemToAttach.dataProvider = new ank.utils.ExtendedArray();
      this._cgItemToEat.dataProvider = new ank.utils.ExtendedArray();
      this["\x1c\r\x07"].dataProvider = new ank.utils.ExtendedArray();
      this["\x1a\x0b\x06"]();
   }
   function §\x1a\b\x0e§(§\x17\x03\x11§, §\x19\x13\x07§, §\x16\x10\x12§)
   {
      if(_loc3_ != undefined && !this["\x16\x16\x12"](_loc3_,_loc2_))
      {
         this["\x1a\x0b\x06"]();
         return undefined;
      }
      var _loc5_ = new ank.utils.ExtendedArray();
      _loc3_ = _loc3_.clone();
      _loc3_.Quantity = 1;
      if(!(!_loc4_ && _loc2_.dataProvider.length > 0))
      {
         if(_loc3_ != undefined)
         {
            _loc5_.push(_loc3_);
         }
      }
      _loc2_.dataProvider = _loc5_;
      this["\x1a\x0b\x06"]();
   }
   function §\x1a\f\t§(§\x17\x03\x11§)
   {
      this["\x1a\b\x0e"](_loc2_,undefined,false);
   }
   function §\x16\x16\x12§(§\x19\x13\x07§, §\x16\x18\x0e§)
   {
      if(!dofus.Constants["\x18\x0e\f"](_loc2_.superType))
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("ERROR_ITEM_NOT_SKINABLE"),"ERROR_CHAT");
         return false;
      }
      if(_loc2_.hasCustomSkinItem || _loc2_["\x1b\x02\r"])
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("ERROR_ITEM_ALREADY_SKINED"),"ERROR_CHAT");
         return false;
      }
      if(_loc2_["\x1b\x02\r"])
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("ERROR_ITEM_IS_LIVING_OBJECT"),"ERROR_CHAT");
         return false;
      }
      if(_loc3_ == this._cgItemToEat)
      {
         var _loc4_ = this._cgItemToAttach;
      }
      else
      {
         if(_loc2_.isCeremonial)
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("ERROR_ITEM_NOT_SKINABLE"),"ERROR_CHAT");
            return false;
         }
         _loc4_ = this._cgItemToEat;
      }
      var _loc5_ = _loc4_.dataProvider[0];
      if(_loc5_ != undefined)
      {
         if(_loc5_.type != _loc2_.type)
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("ERROR_ITEM_SHOULD_BE_SAME_TYPE"),"ERROR_CHAT");
            return false;
         }
         if(_loc5_.unicID == _loc2_.unicID)
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("ERROR_ITEM_SAME_ID"),"ERROR_CHAT");
            return false;
         }
         if(_loc3_ == this._cgItemToEat)
         {
            if(_loc5_.level < _loc2_.level)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("ERROR_SKIN_ITEM_SUPERIOR_LEVEL"),"ERROR_CHAT");
               return false;
            }
            if(_loc2_.isUndestroyable)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("ERROR_265"),"ERROR_CHAT");
               return false;
            }
         }
         else if(_loc2_.level < _loc5_.level)
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("ERROR_SKIN_ITEM_SUPERIOR_LEVEL"),"ERROR_CHAT");
            return false;
         }
      }
      return true;
   }
   function §\x1a\x0b\x06§()
   {
      var _loc2_ = false;
      if(this._cgItemToAttach.dataProvider.length > 0 && this._cgItemToEat.dataProvider.length > 0)
      {
         this._btnValidate.enabled = true;
         var _loc3_ = this._cgItemToAttach.dataProvider[0];
         var _loc4_ = this._cgItemToEat.dataProvider[0];
         if(this["\x1c\x0e\x02"].contentPath == undefined)
         {
            return undefined;
         }
         var _loc5_ = _loc3_.clone();
         if(_loc4_["\x1a\n\x05"] != undefined)
         {
            _loc5_.gfx = _loc4_["\x1a\n\x05"];
         }
         else
         {
            _loc5_.gfx = _loc4_.gfx;
         }
         this["\x1c\x0e\x02"].contentPath = _loc5_.iconFile;
         this._mcFiligrane.item = _loc5_;
         _loc2_ = true;
      }
      else
      {
         this._btnValidate.enabled = false;
      }
      if(!_loc2_)
      {
         this["\x1c\x0e\x02"].contentPath = "";
      }
      this._mcFiligrane._visible = _loc2_;
      this["\x1c\x0e\x02"]._visible = _loc2_;
   }
   function yes(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "AskYesNoCreateMimibiote")
      {
         var _loc3_ = this._cgItemToAttach.dataProvider[0];
         var _loc4_ = this._cgItemToEat.dataProvider[0];
         if(!(_loc3_ == undefined || _loc4_ == undefined))
         {
            this.api.network.Items["\x16\x06\x0e"](_loc3_.ID,_loc4_.ID);
            this["\x1b\x13\x13"]();
         }
      }
   }
   function click(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) !== this._btnValidate)
      {
         this["\x16\x15\n"]();
      }
      else
      {
         var _loc3_ = this._cgItemToEat.dataProvider[0];
         var _loc4_ = !_loc3_.isCeremonial ? "CONFIRM_MAKE_MIMIBIOTE" : "CONFIRM_MAKE_MIMIBIOTE_ON_CEREMONIAL";
         var _loc5_ = this.gapi.loadUIComponent("AskYesNo","AskYesNoCreateMimibiote",{title:this.api.lang.getText("QUESTION"),text:this.api.lang.getText(_loc4_)});
         _loc5_.addEventListener("yes",this);
      }
   }
   function dblClickItem(oEvent)
   {
      if(_loc2_.owner != undefined)
      {
         var _loc3_ = _loc2_.owner.dataProvider[0];
         if(_loc3_ == undefined)
         {
            return undefined;
         }
         var _loc4_ = _loc2_.owner._name;
         switch(_loc4_)
         {
            case "_cgItemToAttach":
               this["\x1a\f\t"](this._cgItemToAttach);
               break;
            case "_cgItemToEat":
               this["\x1a\f\t"](this._cgItemToEat);
         }
      }
      if(_loc2_.target != undefined)
      {
         if((_loc0_ = _loc2_.target) === this._ivInventoryViewer)
         {
            var _loc5_ = _loc2_.item;
            if(_loc5_ == undefined)
            {
               return undefined;
            }
            if(this._cgItemToAttach.dataProvider.length == 0)
            {
               this["\x1a\b\x0e"](this._cgItemToAttach,_loc5_,false);
            }
            else
            {
               this["\x1a\b\x0e"](this._cgItemToEat,_loc5_,true);
            }
         }
      }
   }
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this["\x1c\x0e\x02"])
      {
         var _loc3_ = this._mcFiligrane.item;
         if(_loc3_ != undefined)
         {
            _loc3_["\x1b\x01\b"](_loc2_.target,_loc3_.style);
         }
      }
   }
   function out(oEvent)
   {
      this.api.ui.hideTooltip();
   }
   function overItem(oEvent)
   {
      var _loc3_ = _loc2_.target.contentData;
      _loc3_["\x1b\x01\b"](_loc2_.target,_loc2_.target.contentData.style);
   }
   function outItem(oEvent)
   {
      this.gapi.hideTooltip();
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
      if(_loc2_.item != undefined)
      {
         var _loc3_ = _loc2_.item;
         var _loc4_ = this._cgItemToAttach.dataProvider[0];
         if(_loc4_ != undefined && _loc4_.ID == _loc3_.ID)
         {
            this["\x1a\f\t"](this._cgItemToAttach);
            return undefined;
         }
         var _loc5_ = this._cgItemToEat.dataProvider[0];
         if(_loc5_ != undefined && _loc5_.ID == _loc3_.ID)
         {
            this["\x1a\f\t"](this._cgItemToEat);
            return undefined;
         }
         return undefined;
      }
      _loc3_ = dofus.datacenter.Item(this.gapi["\x17\x16\x07"]());
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      if(_loc3_.isShortcut)
      {
         return undefined;
      }
      this.gapi.removeCursor();
      var _loc6_ = _loc2_.target._parent._parent;
      var _loc7_ = _loc6_._name;
      switch(_loc7_)
      {
         case "_cgItemToAttach":
            var _loc8_ = this._cgItemToEat.dataProvider[0];
            if(_loc8_ != undefined && _loc8_.unicID == _loc3_.unicID)
            {
               this["\x1a\f\t"](this._cgItemToEat);
            }
            this["\x1a\b\x0e"](_loc6_,_loc3_,true);
            break;
         case "_cgItemToEat":
            var _loc9_ = this._cgItemToAttach.dataProvider[0];
            if(_loc9_ != undefined && _loc9_.unicID == _loc3_.unicID)
            {
               this["\x1a\f\t"](this._cgItemToAttach);
            }
            this["\x1a\b\x0e"](_loc6_,_loc3_,true);
      }
   }
}
