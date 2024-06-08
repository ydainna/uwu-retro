class dofus.§\x18\x03\x10§.gapi.ui.§\x17\x12\x13§.§\x17\x12\x14§ extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function §\x17\x12\x14§()
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
      if(_loc2_)
      {
         this["\x1e\x03\x18"] = _loc4_;
         this["\x1c\x1b\x0f"].text = _loc4_.name;
         if(_loc4_.level != undefined)
         {
            this["\x1c\x1a\x07"].text = _loc4_.level;
         }
         else
         {
            this["\x1c\x1a\x07"].text = "";
         }
         this["\x1d\x0b\x0b"]._visible = _loc4_.state == "IN_MULTI";
         this["\x1d\x05\r"].contentPath = dofus.Constants["\x18\x04\x16"] + _loc4_["\x18\x02\x16"] + ".swf";
         if(_loc4_.alignement != -1)
         {
            this["\x1d\x05\x01"].contentPath = dofus.Constants["\x16\x02\x1c"] + _loc4_.alignement + ".swf";
         }
         else
         {
            this["\x1d\x05\x01"].contentPath = "";
         }
         this._btnRemove._visible = true;
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1c\x1b\x0f"].text = "";
         this["\x1c\x1a\x07"].text = "";
         this["\x1d\x05\x01"].contentPath = "";
         this["\x1d\x0b\x0b"]._visible = false;
         this["\x1d\x05\r"].contentPath = "";
         this._btnRemove._visible = false;
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
      this["\x1d\x0b\x0b"]._visible = false;
      this._btnRemove._visible = false;
      this.api = this["\x1d\r\t"].gapi.api;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._btnRemove.addEventListener("click",this);
      this["\x1d\x0b\x0b"].onRollOver = function()
      {
         this._parent.over({target:this});
      };
      this["\x1d\x0b\x0b"].onRollOut = function()
      {
         this._parent.out({target:this});
      };
      this["\x1d\x0b\x0b"].onRelease = function()
      {
         this._parent.click({target:this});
      };
   }
   function click(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) !== "\x1d\x0b\x0b")
      {
         if(this["\x1e\x03\x18"].account != undefined)
         {
            this["\x1d\r\t"]._parent._parent["\x1a\f\x05"]("*" + this["\x1e\x03\x18"].account);
         }
         else
         {
            this["\x1d\r\t"]._parent._parent["\x1a\f\x05"](this["\x1e\x03\x18"].name);
         }
      }
      else
      {
         this.api.network.GameActions.joinChallengeAsSpectator(0,this["\x1e\x03\x18"].id);
      }
   }
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) !== "\x1d\x0b\x0b")
      {
         this.api.ui.showTooltip(this.api.lang.getText("PSEUDO_DOFUS",[this["\x1e\x03\x18"].account]),_loc2_.row.cellRenderer_mc,-20);
      }
      else
      {
         this.api.ui.showTooltip(this.api.lang.getText("CLICK_TO_JOIN_AS_SPECTATOR"),this["\x1d\x0b\x0b"],-20);
      }
   }
   function out(oEvent)
   {
      this["\x1d\r\t"].gapi.api.ui.hideTooltip();
   }
}
