class dofus.graphics.gapi.ui.§\x1b\f\x03§.§\x1b\f\x04§ extends dofus.graphics.gapi.core.§\x17\t\n§
{
   function §\x1b\f\x04§()
   {
      super();
      this["\x1d\x11\x11"]._visible = false;
      this["\x1d\x11\x12"]._visible = false;
      this.api = _global.api;
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
         this["\x1c\x15\x19"].text = _loc4_.cost;
         this["\x1c\x15\x14"].text = _loc4_.coordinates;
         this["\x1c\x1b\x0f"].text = _loc4_.name;
         this["\x1c\x12\x15"].text = _loc4_.areaName;
         if(_loc4_.areaName == undefined)
         {
            this["\x1c\x1b\x0f"]._y = 3;
         }
         this._btnLocate._visible = true;
         this._mcKamas._visible = _loc4_.cost > 0;
         if(this["\x1e\x03\x18"]["\x16\x06\x1c"])
         {
            this["\x1d\x11\x11"]._visible = true;
            this["\x1d\x11\x12"]._visible = true;
            var ref = this;
            this["\x1d\x11\x12"].onRollOver = function()
            {
               ref.over({target:this});
            };
            this["\x1d\x11\x12"].onRollOut = function()
            {
               ref.out({target:this});
            };
         }
         else
         {
            this["\x1d\x11\x11"]._visible = false;
            this["\x1d\x11\x12"]._visible = false;
         }
      }
      else if(this["\x1c\x15\x19"].text != undefined)
      {
         this["\x1c\x15\x19"].text = "";
         this["\x1c\x15\x14"].text = "";
         this["\x1c\x1b\x0f"].text = "";
         this["\x1c\x12\x15"].text = "";
         this._btnLocate._visible = false;
         this["\x1d\x11\x11"]._visible = false;
         this["\x1d\x11\x12"]._visible = false;
         this._mcKamas._visible = false;
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._btnLocate.addEventListener("click",this);
   }
   function click(oEvent)
   {
      this.api.kernel.GameManager.updateCompass(this["\x1e\x03\x18"].x,this["\x1e\x03\x18"].y,true);
   }
   function over(§\x17\x0e\x03§)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this["\x1d\x11\x12"])
      {
         this.api.ui.showTooltip(this.api.lang.getText("CONQUEST_NEAR_PRISM_UNDER_ATTACK"),_root._xmouse,_root._ymouse);
      }
   }
   function out(§\x17\x0e\x03§)
   {
      this.api.ui.hideTooltip();
   }
}
