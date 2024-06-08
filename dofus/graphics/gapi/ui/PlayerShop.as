class dofus.§\x18\x03\x10§.gapi.ui.PlayerShop extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "PlayerShop";
   static var §\x17\x06\x18§ = 500;
   function PlayerShop()
   {
      super();
   }
   function §\x11\x19§(§\x19\x12\x10§)
   {
      this._oData = _loc2_;
      return this["\x1e\x18\x01"]();
   }
   function §\x10\x1d§(§\x15\x1b\x1c§)
   {
      this["\x1c\r\x11"] = _loc2_;
      return this["\x1e\x16\x07"]();
   }
   function §\x1e\x17\x13§()
   {
      if(this._livInventory != undefined && this._livInventory["\x17\x03\x19"] != undefined)
      {
         return this._livInventory["\x17\x03\x19"];
      }
      if(this._livInventory2 != undefined && this._livInventory2["\x17\x03\x19"] != undefined)
      {
         return this._livInventory2["\x17\x03\x19"];
      }
      return undefined;
   }
   function §\x01\x0e§()
   {
      return this["\x1c\x11\x13"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.PlayerShop.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this.api.network.Exchange["\x18\x13\x1d"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
      this.addToQueue({object:this,method:this.initTexts});
      this["\x18\x06\x0f"](true);
      this["\x1a\x15\x06"](false);
   }
   function destroy()
   {
      if(this["\x1e\x0e\x10"] == undefined)
      {
         return undefined;
      }
      _global.clearTimeout(this["\x1e\x0e\x10"]);
   }
   function activateSwitchMerchantButtons()
   {
      this._btnViewNextMerchant.enabled = true;
      this._btnViewPreviousMerchant.enabled = true;
   }
   function addListeners()
   {
      this._livInventory.addEventListener("selectedItem",this);
      this._livInventory2.addEventListener("selectedItem",this);
      this._btnBuy.addEventListener("click",this);
      this._btnViewNextMerchant.addEventListener("click",this);
      this._btnViewPreviousMerchant.addEventListener("click",this);
      this._btnClose.addEventListener("click",this);
      this._ldrArtwork.addEventListener("complete",this);
      this._ldrArtwork.addEventListener("click",this);
      this.api.kernel.KeyManager.addShortcutsListener("onShortcut",this);
      if(this._oData != undefined)
      {
         this._oData.addEventListener("modelChanged",this);
      }
      else
      {
         ank.utils.Logger.err("[PlayerShop] il n\'y a pas de data");
      }
      this["\x1e\x0e\x10"] = _global.setTimeout(this,"activateSwitchMerchantButtons",dofus.graphics.gapi.ui.PlayerShop["\x17\x06\x18"]);
   }
   function initTexts()
   {
      this._btnBuy.label = this.api.lang.getText("BUY");
      this._btnViewNextMerchant.label = this.api.lang.getText("NEXT_WORD");
      this._btnViewPreviousMerchant.label = this.api.lang.getText("PREVIOUS_WORD");
      this["\x1e\x10\x11"].title = this.api.datacenter.Player.data.name;
      this["\x1e\x10\x12"].title = this._oData.name;
   }
   function §\x18\t\x14§()
   {
      this._livInventory.dataProvider = this.api.datacenter.Player.Inventory;
      this._livInventory["\x18\x11\x17"] = this.api.datacenter.Player;
      this._ldrArtwork.contentPath = dofus.Constants["\x16\x05\x10"] + this._oData.gfx + ".swf";
      this.modelChanged();
   }
   function §\x18\x06\x0f§(§\x16\f\x12§)
   {
      this["\x1c\x11\x13"]._visible = !_loc2_;
      this["\x1e\x10\x14"]._visible = !_loc2_;
      if(_loc2_)
      {
         this["\x1e\x05\t"] = undefined;
      }
   }
   function §\x1a\x15\x06§(§\x16\b\x0f§)
   {
      this._btnBuy._visible = _loc2_;
      this._mcBuyArrow._visible = _loc2_;
   }
   function §\x16\x06\b§(§\x19\f\x14§, §\x19\f\x10§)
   {
      var _loc4_ = Math.floor(this.api.datacenter.Player.Kama / _loc3_);
      if(_loc4_ > _loc2_)
      {
         _loc4_ = _loc2_;
      }
      var _loc5_ = this.gapi.loadUIComponent("PopupQuantity","PopupQuantity",{value:1,max:_loc4_,min:1,isMaxButtonValidationEnabled:false});
      _loc5_.addEventListener("validate",this);
   }
   function §\x1b\x17\x0b§(nQuantity)
   {
      if(_loc2_ <= 0)
      {
         return undefined;
      }
      _loc2_ = Math.min(this["\x1e\x05\t"].Quantity,_loc2_);
      if(this.api.datacenter.Player.Kama < this["\x1e\x05\t"].price * _loc2_)
      {
         this.gapi.loadUIComponent("AskOk","AskOkNotRich",{title:this.api.lang.getText("ERROR_WORD"),text:this.api.lang.getText("NOT_ENOUGH_RICH")});
         return undefined;
      }
      var _loc3_ = this.gapi.loadUIComponent("AskYesNo","AskYesNoBuy",{title:this.api.lang.getText("MERCHANT"),text:this.api.lang.getText("DO_U_BUY_ITEM_BIGSTORE",["x" + _loc2_ + " " + this["\x1e\x05\t"].name,new ank.utils.ExtendedString(this["\x1e\x05\t"].price * _loc2_)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3)]),params:{id:this["\x1e\x05\t"].ID,quantity:_loc2_,price:this["\x1e\x05\t"].price}});
      _loc3_.addEventListener("yes",this);
      this["\x18\x06\x0f"](true);
      this["\x1a\x15\x06"](false);
   }
   function yes(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "AskYesNoBuy")
      {
         this.api.network.Exchange.buy(_loc2_.target.params.id,_loc2_.target.params.quantity);
      }
   }
   function applyColor(§\x18\x1b\f§, §\x1b\x1b\x07§)
   {
      var _loc4_ = this["\x1c\r\x11"][_loc3_];
      if(_loc4_ == -1 || _loc4_ == undefined)
      {
         return undefined;
      }
      var _loc5_ = (_loc4_ & 16711680) >> 16;
      var _loc6_ = (_loc4_ & 65280) >> 8;
      var _loc7_ = _loc4_ & 255;
      var _loc8_ = new Color(_loc2_);
      var _loc9_ = new Object();
      _loc9_ = {ra:0,ga:0,ba:0,rb:_loc5_,gb:_loc6_,bb:_loc7_};
      _loc8_.setTransform(_loc9_);
   }
   function §\x1b\f\x1d§(§\x16\x10\x16§)
   {
      var _loc3_ = this.api.datacenter.["\x1b\x0f\b"]["\x1a\x1c\x0e"].id;
      var _loc4_ = new Array();
      var _loc5_ = this.api.gfx.spriteHandler.getSprites().getItems();
      for(var sID in _loc5_)
      {
         var _loc6_ = _loc5_[sID];
         if(_loc6_ instanceof dofus.datacenter.["\x19\x12\x19"])
         {
            _loc4_.push({id:sID,cellNum:_loc6_.cellNum});
         }
      }
      var _loc7_ = undefined;
      if(_loc4_.length > 1)
      {
         _loc4_.sortOn(["id"],Array.NUMERIC);
         var _loc8_ = 0;
         while(_loc8_ < _loc4_.length)
         {
            var _loc9_ = _loc4_[_loc8_].id;
            if(_loc9_ == _loc3_)
            {
               if(_loc2_)
               {
                  if(_loc8_ - 1 >= 0)
                  {
                     _loc7_ = _loc4_[_loc8_ - 1];
                  }
                  else
                  {
                     _loc7_ = _loc4_[_loc4_.length - 1];
                  }
               }
               else if(_loc8_ + 1 < _loc4_.length)
               {
                  _loc7_ = _loc4_[_loc8_ + 1];
               }
               else
               {
                  _loc7_ = _loc4_[0];
               }
               break;
            }
            _loc8_ = _loc8_ + 1;
         }
      }
      if(_loc7_ == null)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("NO_OTHER_MERCHANT_ON_MAP"),"ERROR_CHAT");
         return undefined;
      }
      this._btnViewNextMerchant.enabled = false;
      this._btnViewPreviousMerchant.enabled = false;
      this.api.network.Exchange["\x18\x13\x1d"]();
      this.api.kernel.GameManager["\x1b\t\x0f"](4,_loc7_.id,_loc7_.cellNum);
   }
   function modelChanged(oEvent)
   {
      this._livInventory2.dataProvider = this._oData["\x18\f\n"];
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_ldrArtwork":
            this.api.kernel.GameManager["\x1a\x1e\x14"](undefined,{sPlayerName:this._oData.name,sPlayerID:this._oData.characterID});
            break;
         case "_btnViewPreviousMerchant":
            this["\x1b\f\x1d"](true);
            break;
         case "_btnViewNextMerchant":
            this["\x1b\f\x1d"](false);
            break;
         case "_btnBuy":
            if(this["\x1e\x05\t"].Quantity > 1)
            {
               this["\x16\x06\b"](this["\x1e\x05\t"].Quantity,this["\x1e\x05\t"].price);
            }
            else
            {
               this["\x1b\x17\x0b"](1);
            }
            break;
         case "_btnClose":
            this["\x16\x15\n"]();
      }
   }
   function onShortcut(sShortcut)
   {
      if(_loc2_ == "CODE_NEXT" && this._btnViewNextMerchant.enabled)
      {
         this["\x1b\f\x1d"](false);
         return false;
      }
      if(_loc2_ == "CODE_PREVIOUS" && this._btnViewPreviousMerchant.enabled)
      {
         this["\x1b\f\x1d"](true);
         return false;
      }
      return true;
   }
   function selectedItem(oEvent)
   {
      if(_loc2_.item == undefined)
      {
         this["\x18\x06\x0f"](true);
         this["\x1a\x15\x06"](false);
      }
      else
      {
         this["\x1e\x05\t"] = _loc2_.item;
         this["\x18\x06\x0f"](false);
         this["\x1c\x11\x13"]["\x18\x10\x17"] = _loc2_.item;
         switch(_loc2_.target._name)
         {
            case "_livInventory":
               this["\x1a\x15\x06"](false);
               this._livInventory2["\x1a\x16\x14"](this._livInventory["\x17\x03\x12"]);
               break;
            case "_livInventory2":
               this["\x1a\x15\x06"](true);
               this._livInventory["\x1a\x16\x14"](this._livInventory2["\x17\x03\x12"]);
         }
      }
   }
   function validate(oEvent)
   {
      this["\x1b\x17\x0b"](_loc2_.value);
   }
   function complete(oEvent)
   {
      var ref = this;
      this._ldrArtwork.content.stringCourseColor = function(§\x18\x1b\f§, §\x1b\x1a\x1d§)
      {
         ref.applyColor(_loc2_,_loc3_);
      };
   }
}
