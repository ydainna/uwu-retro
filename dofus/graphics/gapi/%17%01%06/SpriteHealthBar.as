class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.SpriteHealthBar extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "SpriteHealthBar";
   function SpriteHealthBar()
   {
      super();
   }
   function set lifeCurrentValue(§\x19\x10\x10§)
   {
      this._nCurrentValue = _loc2_;
   }
   function get lifeCurrentValue()
   {
      return this._nCurrentValue;
   }
   function set lifeMinValue(§\x19\x10\x10§)
   {
      this._nMinValue = _loc2_;
   }
   function get lifeMinValue()
   {
      return this._nMinValue;
   }
   function set lifeMaxValue(§\x19\x10\x10§)
   {
      this._nMaxValue = _loc2_;
   }
   function get lifeMaxValue()
   {
      return this._nMaxValue;
   }
   function set realWidth(§\x19\x10\x10§)
   {
      this._nWidth = _loc2_;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.SpriteHealthBar.CLASS_NAME);
   }
   function createChildren()
   {
      this.setWholeBarWidth();
      this.initTextField();
      this._mcBar._width = this._mcBarHighlight._width = this.getHealthBarWidth();
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._parent["\x1e\x05\x1a"].addEventListener("lpChanged",this);
      this._parent["\x1e\x05\x1a"].addEventListener("lpMaxChanged",this);
   }
   function initTextField()
   {
      this.createTextField("\x1e\x10\x01",101,0,-1,this._nWidth,this._height);
      this["\x1e\x10\x01"].embedFonts = true;
      this["\x1e\x10\x01"].text = String(this._nCurrentValue);
      this["\x1e\x10\x01"].setTextFormat(new TextFormat("Font2",10,16777215,false,false,false,null,null,"center"));
   }
   function getHealthBarWidth()
   {
      this._nPreviousWidth = this._nCurrentWidth;
      var _loc2_ = this._nCurrentValue - this._nMinValue;
      var _loc3_ = this._nMaxValue - this._nMinValue;
      var _loc4_ = Math.round(_loc2_ / _loc3_ * this._nWidth);
      if(_loc4_ > this._nWidth)
      {
         _loc4_ = this._nWidth;
      }
      this._nCurrentWidth = _loc4_;
      return _loc4_;
   }
   function animHealthBar(§\x18\x1b\f§, nCurrentValue, nNewValue)
   {
      ank.utils.TweenAnimation.width(_loc2_,mx.transitions.easing.Strong.easeIn,nCurrentValue,nNewValue,0.5,true);
   }
   function setWholeBarWidth()
   {
      this._mcBar._width = this._mcBarHighlight._width = this._mcBorder._width = this["\x1d\b\n"]._width = this._nWidth;
   }
   function §\x1b\x14\x14§()
   {
      this.initTextField();
      this._mcBar._width = this._mcBarHighlight._width = this.getHealthBarWidth();
      if(this.api.kernel.OptionsManager.getOption("AnimateHPBar"))
      {
         var _loc2_ = this._nPreviousWidth - this._nCurrentWidth;
         if(_loc2_ > 0)
         {
            var _loc3_ = new flash.geom.ColorTransform(1,1,0,1,1,150,0,0);
            var _loc4_ = new flash.geom.Transform(this._mcBarHighlight);
            _loc4_.colorTransform = _loc3_;
            this.animHealthBar(this._mcBarHighlight,this._nPreviousWidth,this._nCurrentWidth);
         }
         else
         {
            var _loc5_ = new flash.geom.ColorTransform(0,1,1,1,1,150,0,0);
            var _loc6_ = new flash.geom.Transform(this._mcBarHighlight);
            _loc6_.colorTransform = _loc5_;
            this.animHealthBar(this._mcBar,this._nPreviousWidth,this._nCurrentWidth);
         }
      }
   }
   function lpChanged(oEvent)
   {
      if(this._nUpdateTimeout != undefined)
      {
         _global.clearTimeout(this._nUpdateTimeout);
      }
      var _loc3_ = _global.setTimeout(this,"\x1b\x14\x14",50);
      this._nUpdateTimeout = _loc3_;
      this._nCurrentValue = _loc2_.value;
   }
   function lpMaxChanged(oEvent)
   {
      this._nMaxValue = _loc2_.value;
   }
}
