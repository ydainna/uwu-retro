class dofus.§\x18\x03\x10§.gapi.ui.FightsInfos extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "FightsInfos";
   function FightsInfos()
   {
      super();
   }
   function §\x1e\x1a\t§()
   {
      return this["\x1c\x0f\f"];
   }
   function set autoSelectFightID(§\x19\x07\x10§)
   {
      this._nAutoSelectFightID = _loc2_;
   }
   function §\x15\x1d\x0e§(§\x19\x07\x10§, §\x17\x0b\x19§, §\x17\x0b\x1a§)
   {
      var _loc6_ = this["\x1c\x0f\f"].findFirstItem("id",_loc2_);
      if(_loc6_.index != -1)
      {
         var _loc5_ = _loc6_.item;
      }
      _loc5_["\x15\x1e\x06"](1,_loc3_);
      _loc5_["\x15\x1e\x06"](2,_loc4_);
      this["\x1b\x01\f"](true,this["\x1e\x05\b"]);
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.FightsInfos.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this["\x1c\x0f\f"] = new ank.utils.ExtendedArray();
      this["\x1b\x01\f"](false);
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
      this.addToQueue({object:this.api.network.Fights,method:this.api.network.Fights["\x17\x1b\x01"]});
      this["\x1a\x18\x03"](this["\x1d\x10\x11"],dofus.Constants["\x1b\x0f\x03"][0]);
      this["\x1a\x18\x03"](this["\x1d\x10\x12"],dofus.Constants["\x1b\x0f\x03"][1]);
   }
   function initTexts()
   {
      this._btnClose2.label = this.api.lang.getText("CLOSE");
      this._btnJoin.label = this.api.lang.getText("JOIN_SMALL");
      this["\x1e\x10\t"].title = this.api.lang.getText("CURRENT_FIGTHS");
      this._dgFights["\x16\x1d\x12"] = [this.api.lang.getText("FIGHTERS_COUNT"),this.api.lang.getText("DURATION")];
      this["\x1c\x1c\x1a"].text = this.api.lang.getText("FIGHTERS");
      this["\x1e\x0f\x18"].text = this.api.lang.getText("SELECT_FIGHT_FOR_SPECTATOR");
      if(this["\x1d\x02\x1d"].text != undefined)
      {
         this["\x1d\x02\x1d"].text = "";
      }
      if(this["\x1d\x03\x02"].text != undefined)
      {
         this["\x1d\x03\x02"].text = "";
      }
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._btnClose2.addEventListener("click",this);
      this._btnJoin.addEventListener("click",this);
      this._dgFights.addEventListener("itemSelected",this);
      this["\x1d\x07\x07"].addEventListener("itemSelected",this);
      this["\x1d\x07\b"].addEventListener("itemSelected",this);
   }
   function §\x18\t\x14§()
   {
      this._dgFights.dataProvider = this["\x1c\x0f\f"];
   }
   function §\x1b\x01\f§(bShow, §\x19\x12\x1d§)
   {
      this["\x1d\x02\x1d"]._visible = _loc2_;
      this["\x1d\x03\x02"]._visible = _loc2_;
      this["\x1d\x07\x07"]._visible = _loc2_;
      this["\x1d\x07\b"]._visible = _loc2_;
      this["\x1d\b\x0f"]._visible = _loc2_;
      this["\x1d\x10\x11"]._visible = _loc2_;
      this["\x1d\x10\x12"]._visible = _loc2_;
      this["\x1e\x0f\x18"]._visible = !_loc2_;
      this._btnJoin.enabled = _loc2_;
      if(_loc2_)
      {
         this["\x1d\x02\x1d"].text = this.api.lang.getText("LEVEL") + " " + _loc3_["\x1b\x0e\x18"];
         this["\x1d\x03\x02"].text = this.api.lang.getText("LEVEL") + " " + _loc3_["\x1b\x0e\x1c"];
         this["\x1d\x07\x07"].dataProvider = _loc3_["\x1b\x0e\x19"];
         this["\x1d\x07\b"].dataProvider = _loc3_["\x1b\x0e\x1d"];
      }
   }
   function doAutoSelectFightIDRow()
   {
      var _loc2_ = this._nAutoSelectFightID;
      this._nAutoSelectFightID = undefined;
      if(_global.isNaN(_loc2_))
      {
         return undefined;
      }
      var _loc3_ = this["\x1c\x0f\f"].findFirstItem("id",_loc2_);
      var _loc4_ = _loc3_.index;
      if(_loc4_ == -1)
      {
         return undefined;
      }
      var _loc5_ = _loc3_.item;
      this._dgFights.selectedIndex = _loc4_;
      this["\x1e\x05\b"] = _loc5_;
      if(this["\x1e\x05\b"]["\x18\x05\x11"])
      {
         this["\x1b\x01\f"](true,this["\x1e\x05\b"]);
      }
      else
      {
         this.api.network.Fights["\x17\x16\x11"](this["\x1e\x05\b"].id);
         this["\x1b\x01\f"](false);
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnClose":
         case "_btnClose2":
            this["\x16\x15\n"]();
            break;
         case "_btnJoin":
            this.api.network.GameActions.joinChallengeAsSpectator(this["\x1e\x05\b"].id);
            this["\x16\x15\n"]();
      }
   }
   function itemSelected(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) !== "_dgFights")
      {
         new org.flashdevelop.utils.FlashConnect.trace(_loc2_.row,"dofus.graphics.gapi.ui.FightsInfos::itemSelected","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/graphics/gapi/ui/FightsInfos.as",279);
         if(_loc2_.row.item.type == "player")
         {
            var _loc3_ = _loc2_.row.item.id;
            var _loc4_ = _loc2_.row.item.name;
            if(this.api.datacenter.Player.isAuthorized && Key.isDown(Key.SHIFT))
            {
               var _loc5_ = "";
               var _loc6_ = false;
               var _loc7_ = 0;
               while(_loc7_ < this["\x1d\x07\x07"].dataProvider.length)
               {
                  var _loc8_ = this["\x1d\x07\x07"].dataProvider[_loc7_].name;
                  if(_loc8_ == _loc4_)
                  {
                     _loc6_ = true;
                  }
                  _loc5_ += _loc8_ + ",";
                  _loc7_ = _loc7_ + 1;
               }
               if(!_loc6_)
               {
                  _loc5_ = "";
                  var _loc9_ = 0;
                  while(_loc9_ < this["\x1d\x07\b"].dataProvider.length)
                  {
                     var _loc10_ = this["\x1d\x07\b"].dataProvider[_loc9_].name;
                     if(_loc10_ == _loc4_)
                     {
                        _loc6_ = true;
                     }
                     _loc5_ += _loc10_ + ",";
                     _loc9_ = _loc9_ + 1;
                  }
               }
               if(_loc6_)
               {
                  _loc5_ = _loc5_.substring(0,_loc5_.length - 1);
                  this.api.kernel.GameManager["\x1b\x01\x0b"](_loc5_);
               }
            }
            else
            {
               this.api.kernel.GameManager["\x1a\x1e\x14"](undefined,{sPlayerName:_loc4_,sPlayerID:_loc3_});
            }
         }
      }
      else
      {
         this["\x1e\x05\b"] = _loc2_.row.item;
         if(this["\x1e\x05\b"]["\x18\x05\x11"])
         {
            this["\x1b\x01\f"](true,this["\x1e\x05\b"]);
         }
         else
         {
            this.api.network.Fights["\x17\x16\x11"](this["\x1e\x05\b"].id);
            this["\x1b\x01\f"](false);
         }
      }
   }
}
