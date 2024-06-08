class dofus.§\x18\x03\x10§.gapi.ui.§\x1a\x05\x11§.§\x1a\x05\x12§ extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   function §\x1a\x05\x12§()
   {
      super();
      this.api = _global.api;
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      if(_loc2_)
      {
         this._ldrIcon["\x17\x12\x07"]();
         this._ldrIcon.contentPath = dofus.Constants["\x17\f\b"];
         this["\x1c\x16\x17"].text = _loc4_.getDescription(false);
         this["\x1c\x1e\x03"].text = _loc4_["\x1a\x0b\x13"];
         this["\x1d\x01\x1a"].text = _loc4_["\x1b\x06\x0f"];
         var ref = this;
         this["\x1d\f\f"].onRollOver = function()
         {
            ref.over({target:this});
         };
         this["\x1d\f\f"].onRollOut = function()
         {
            ref.out({target:this});
         };
         this["\x1e\x03\x18"] = _loc4_;
      }
      else if(this["\x1d\x01\x1a"].text != undefined)
      {
         this._ldrIcon.contentPath = "";
         this["\x1c\x16\x17"].text = "";
         this["\x1c\x1e\x03"].text = "";
         this["\x1d\x01\x1a"].text = "";
         delete this["\x1d\f\f"].onRollOver;
         delete this["\x1d\f\f"].onRollOut;
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
      this._ldrIcon.addEventListener("initialization",this);
   }
   function initialization(oEvent)
   {
      var _loc3_ = this._ldrIcon.content.attachMovie("Icon_" + this["\x1e\x03\x18"]["\x16\x19\x04"],"_mcIcon",10,{operator:this["\x1e\x03\x18"].operator});
      _loc3_.__proto__ = dofus.graphics.battlefield.EffectIcon.prototype;
      var _loc4_ = dofus.graphics.battlefield.EffectIcon(_loc3_);
      _loc4_.initialize(this["\x1e\x03\x18"].operator,1);
   }
   function over(§\x17\x0e\x03§)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this["\x1d\f\f"])
      {
         if(this["\x1e\x03\x18"]["\x1b\x06\x07"].length > 0)
         {
            this.api.ui.showTooltip(this["\x1e\x03\x18"]["\x1b\x06\x07"],_root._xmouse,_root._ymouse - 30);
         }
      }
   }
   function out(§\x17\x0e\x03§)
   {
      this.api.ui.hideTooltip();
   }
}
