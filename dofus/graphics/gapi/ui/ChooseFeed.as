if(!dofus.graphics.gapi.ui.ChooseFeed)
{
   if(!dofus)
   {
      _global.dofus = new Object();
   }
   if(!dofus.graphics.)
   {
      _global.dofus.graphics. = new Object();
   }
   if(!dofus.graphics.gapi)
   {
      _global.dofus.graphics.gapi = new Object();
   }
   if(!dofus.graphics.gapi.ui)
   {
      _global.dofus.graphics.gapi.ui = new Object();
   }
   dofus.graphics.gapi.ui.ChooseFeed = function()
   {
      super();
   } extends dofus.graphics.gapi["\x17\x01\x0f"]["\x17\t\n"];
   var _loc1_ = dofus.graphics.gapi.ui.ChooseFeed = function()
   {
      super();
   }.prototype;
   _loc1_["\x16\x0f"] = function §\x16\x0f§(§\x16\x07\x04§)
   {
      this["\x1b\x1c\x18"] = _loc2_;
      if(this["\x1c\x0f\x06"])
      {
         this["\x1b\x14\x14"]();
      }
      return this.itemsType;
   };
   _loc1_["\x16\n"] = function §\x16\n§(§\x19\x12\x10§)
   {
      this["\x1e\x03\x18"] = _loc2_;
      return this["\x01\x07"]();
   };
   _loc1_.init = function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.ChooseFeed.CLASS_NAME);
   };
   _loc1_.createChildren = function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
   };
   _loc1_.addListeners = function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this["\x1c\x0b\x10"].addEventListener("click",this);
      this._bgh.addEventListener("click",this);
      this._cgGrid.addEventListener("selectItem",this);
      this._cgGrid.addEventListener("overItem",this);
      this._cgGrid.addEventListener("outItem",this);
      this._cgGrid.addEventListener("dblClickItem",this);
      this._cgGrid["\x19\x02\n"] = false;
   };
   _loc1_.initTexts = function initTexts()
   {
      this["\x1c\x0b\x10"].label = this.api.lang.getText("VALIDATE");
      this["\x1e\x10\t"].title = this.api.lang.getText("FEED_ITEM");
      this["\x1c\x1b\x19"].text = this.api.lang.getText("SELECT_ITEM");
   };
   _loc1_["\x1b\x14\x14"] = function §\x1b\x14\x14§()
   {
      this["\x1c\x0f\x06"] = this.api.datacenter.Player.Inventory;
      this["\x1c\x11\x13"]._visible = false;
      this["\x1d\f\x14"]._visible = false;
      var _loc2_ = new ank.utils.ExtendedArray();
      for(var k in this["\x1c\x0f\x06"])
      {
         var _loc3_ = this["\x1c\x0f\x06"][k];
         var _loc4_ = 0;
         while(_loc4_ < this["\x1b\x1c\x18"].length)
         {
            if(_loc3_.type == this["\x1b\x1c\x18"][_loc4_] && (!_loc3_["\x1b\x02\r"] && (_loc3_.position == -1 && _loc3_["\x16\x15\x17"])))
            {
               _loc2_.push(_loc3_);
               break;
            }
            _loc4_ = _loc4_ + 1;
         }
      }
      if(_loc2_.length)
      {
         this._cgGrid.dataProvider = _loc2_;
      }
      else
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("ERROR_NO_FOOD_LIVING_ITEM",[this["\x1e\x03\x18"].name]),"ERROR_BOX",{name:"noItem",listener:this});
         this["\x16\x15\n"]();
      }
   };
   _loc1_["\x16\x15\n"] = function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   };
   _loc1_.validate = function validate(§\x19\x13\x07§, §\x19\n\x1c§)
   {
      if(!_loc2_.ID)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("SELECT_ITEM"),"ERROR_BOX",{name:"noSelection",listener:this});
         return undefined;
      }
      if(!_loc3_)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("CONFIRM_FOOD_LIVING_ITEM"),"CAUTION_YESNO",{name:"Confirm",params:{oItem:_loc2_},listener:this});
         return undefined;
      }
      this.api.kernel.SpeakingItemsManager["\x1b\x11\x10"](dofus.managers.SpeakingItemsManager.SPEAK_TRIGGER_FEED);
      this.api.network.Items["\x17\x0f\x0f"](this["\x1e\x03\x18"].ID,this["\x1e\x03\x18"].position,_loc2_.ID);
      this["\x16\x15\n"]();
   };
   _loc1_.click = function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._bgh:
         case this._btnClose:
         default:
            this["\x16\x15\n"]();
            break;
         case this["\x1c\x0b\x10"]:
            this.validate(this._cgGrid.selectedContentData);
      }
   };
   _loc1_.dblClickItem = function dblClickItem(oEvent)
   {
      this.validate(_loc2_.target.contentData);
   };
   _loc1_[undefined] = function §undefined§(oEvent)
   {
      this["\x04\x01\b\x0fN4P{invalid_utf8=157}\x02"]["{invalid_utf8=150}\x06"] = _loc2_["\x03)"]["\x18"];
      this["\x04\x01\b\x0fN4P{invalid_utf8=157}\x02"]["\b\x03#O{invalid_utf8=150}\x04"] = true;
      this["\x04\x01\b!{invalid_utf8=150}\x02"]["\b\x03#O{invalid_utf8=150}\x04"] = true;
      this["\x07"]["\b\x03#O{invalid_utf8=150}\x04"] = false;
   };
   _loc1_[""] = function §§(oEvent)
   {
      this[undefined][undefined](_loc2_[undefined][undefined][undefined],_loc2_[undefined],-20,undefined,_loc2_[undefined][undefined][undefined] + undefined);
   };
   _loc1_.outItem = function outItem(oEvent)
   {
      this["\b"]();
   };
   _loc1_[undefined] = function §undefined§(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_[undefined][undefined]) === undefined)
      {
         this[undefined](_loc2_[undefined][undefined],true);
      }
   };
   _loc1_[undefined](undefined,function()
   {
   }
   ,_loc1_["\x05"]);
   _loc1_["2{invalid_utf8=157}\x02"]("{invalid_utf8=197}\x05#{invalid_utf8=142}\b",function()
   {
   }
   ,_loc1_[undefined]);
   ""(_loc1_,null,1);
   dofus.graphics.gapi.ui.ChooseFeed = function()
   {
      super();
   }["\x06\x01#N\x12\x12{invalid_utf8=157}\x02"] = "";
}
