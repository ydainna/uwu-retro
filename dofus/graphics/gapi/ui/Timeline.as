class dofus.§\x18\x03\x10§.gapi.ui.Timeline extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Timeline";
   static var §\x16\x13\t§ = false;
   static var §\x1a\x01\x0b§ = 40;
   static var §\x1b\x13\t§ = 350;
   static var §\x1b\x13\b§ = 39;
   function Timeline()
   {
      super();
   }
   static function §\x1e\x1e\x1b§()
   {
      return dofus.graphics.gapi.ui.Timeline["\x16\x13\t"];
   }
   function §\x1b\x14\x01§()
   {
      this["\x1e\x0e\x1b"].update();
   }
   function nextTurn(§\x18\b\f§, §\x16\x15\x02§)
   {
      this["\x1a\n\x1b"]();
      this["\x1e\x0e\x1b"].nextTurn(_loc2_,_loc3_);
   }
   function §\x0b\x1b§()
   {
      return this["\x1e\x0e\x1b"];
   }
   function §\x18\x06\r§(§\x18\b\f§)
   {
      this["\x1e\x0e\x1b"]["\x18\x06\r"](_loc2_);
   }
   function §\x1a\x1d\x1d§(§\x18\b\f§)
   {
      this["\x1e\x0e\x1b"]["\x1a\x1d\x1d"](_loc2_);
   }
   function §\x1b\t\x0b§(§\x19\x06\f§)
   {
      this["\x1e\x0e\x1b"]["\x1b\t\x0b"](_loc2_);
   }
   function §\x1b\n\x1c§()
   {
      this["\x1e\x0e\x1b"]["\x1b\n\x1c"]();
   }
   function §\x1a\n\x1b§()
   {
      this["\x1e\x0f\x1c"].text = String(this.api.datacenter.Game.currentTableTurn);
      this._txtTableTurnUp.text = String(this.api.datacenter.Game.currentTableTurn);
   }
   function over(oEvent)
   {
      if(!this.gapi["\x18\r\f"]())
      {
         return undefined;
      }
      switch(_loc2_.target._name)
      {
         case "_mcTableTurnUp":
         case "_mcTableTurnDown":
            var _loc3_ = this.api.lang.getText("TURNS_NUMBER") + " : " + this.api.datacenter.Game.currentTableTurn;
            var _loc4_ = _root._xmouse;
            var _loc5_ = _root._ymouse - 20;
            this.gapi.showTooltip(_loc3_,_loc4_,_loc5_);
      }
   }
   function out()
   {
      this.gapi.hideTooltip();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Timeline.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      if(dofus.graphics.gapi.ui.Timeline["\x16\x13\t"])
      {
         this["\x19\x01\r"](0 - dofus.graphics.gapi.ui.Timeline["\x1b\x13\t"]);
         var _loc2_ = this.api.ui.getUIComponent("FightOptionButtons");
         if(_loc2_ != undefined && _loc2_["\x1c\t\x1b"]._y == 370)
         {
            _loc2_["\x18\x1e\x17"](dofus.graphics.gapi.ui.Timeline["\x1a\x01\x0b"]);
         }
         var _loc3_ = this.api.ui.getUIComponent("Party");
         if(_loc3_ != undefined && _loc3_["\x1c\t\x05"]._y == 41)
         {
            _loc3_["\x19\x01\x12"](dofus.graphics.gapi.ui.Timeline["\x1b\x13\b"]);
         }
         this._btnUp._visible = false;
         this["\x1e\x0f\x1c"]._visible = false;
         this._mcTableTurnDown._visible = false;
      }
      else
      {
         this._btnDown._visible = false;
         this._txtTableTurnUp._visible = false;
         this._mcTableTurnUp._visible = false;
      }
      this["\x1a\n\x1b"]();
   }
   function addListeners()
   {
      this._btnUp.addEventListener("click",this);
      this._btnDown.addEventListener("click",this);
      this._mcTableTurnDown.onRollOver = function()
      {
         this._parent.over({target:this});
      };
      this._mcTableTurnDown.onRollOut = function()
      {
         this._parent.out({target:this});
      };
      this._mcTableTurnUp.onRollOver = function()
      {
         this._parent.over({target:this});
      };
      this._mcTableTurnUp.onRollOut = function()
      {
         this._parent.out({target:this});
      };
   }
   function click(oEvent)
   {
      var _loc3_ = _loc2_.target._name;
      switch(_loc3_)
      {
         case "_btnUp":
            dofus.graphics.gapi.ui.Timeline["\x16\x13\t"] = true;
            this._btnUp._visible = false;
            this._btnDown._visible = true;
            this._txtTableTurnUp._visible = true;
            this["\x1e\x0f\x1c"]._visible = false;
            this._mcTableTurnUp._visible = true;
            this._mcTableTurnDown._visible = false;
            this["\x19\x01\r"](0 - dofus.graphics.gapi.ui.Timeline["\x1b\x13\t"]);
            this.api.ui.getUIComponent("FightOptionButtons")["\x18\x1e\x17"](dofus.graphics.gapi.ui.Timeline["\x1a\x01\x0b"]);
            this.api.ui.getUIComponent("Party")["\x19\x01\x12"](dofus.graphics.gapi.ui.Timeline["\x1b\x13\b"]);
            break;
         case "_btnDown":
            dofus.graphics.gapi.ui.Timeline["\x16\x13\t"] = false;
            this._btnUp._visible = true;
            this._btnDown._visible = false;
            this._txtTableTurnUp._visible = false;
            this["\x1e\x0f\x1c"]._visible = true;
            this._mcTableTurnUp._visible = false;
            this._mcTableTurnDown._visible = true;
            this["\x19\x01\r"](dofus.graphics.gapi.ui.Timeline["\x1b\x13\t"]);
            this.api.ui.getUIComponent("FightOptionButtons")["\x18\x1e\x17"](0 - dofus.graphics.gapi.ui.Timeline["\x1a\x01\x0b"]);
            this.api.ui.getUIComponent("Party")["\x19\x01\x12"](0 - dofus.graphics.gapi.ui.Timeline["\x1b\x13\b"]);
      }
   }
   function destroy()
   {
      if(dofus.graphics.gapi.ui.Timeline["\x16\x13\t"])
      {
         var _loc2_ = this.api.ui.getUIComponent("FightOptionButtons");
         if(_loc2_ != undefined && _loc2_["\x1c\t\x1b"]._y == 370 + dofus.graphics.gapi.ui.Timeline["\x1a\x01\x0b"])
         {
            _loc2_["\x18\x1e\x17"](0 - dofus.graphics.gapi.ui.Timeline["\x1a\x01\x0b"]);
         }
         var _loc3_ = this.api.ui.getUIComponent("Party");
         if(_loc3_ != undefined && _loc3_["\x1c\t\x05"]._y == 41 + dofus.graphics.gapi.ui.Timeline["\x1b\x13\b"])
         {
            _loc3_["\x19\x01\x12"](0 - dofus.graphics.gapi.ui.Timeline["\x1b\x13\b"]);
         }
      }
   }
   function §\x19\x01\r§(§\x19\x06\b§)
   {
      this["\x1e\x0e\x1b"]._y += _loc2_;
      this._btnUp._y += _loc2_;
      this._btnDown._y += _loc2_;
      this["\x1e\x0f\x1c"]._y += _loc2_;
      this._txtTableTurnUp._y += _loc2_;
      this._mcTableTurnDown._y += _loc2_;
      this._mcTableTurnUp._y += _loc2_;
   }
}
