class dofus.graphics.gapi.ui.FloatingTips extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "FloatingTips";
   static var §\x18\x1d\x04§ = 40;
   var §\x1c\x03\x14§ = false;
   var §\x1d\x1a\x14§ = 0;
   var §\x1d\x1a\x15§ = 0;
   function FloatingTips()
   {
      super();
   }
   function §\x1e\x13\x06§()
   {
      return this["\x1e\x02\x0e"];
   }
   function §\x0f\x15§(§\x1a\x02\x18§)
   {
      this["\x1e\x02\x0e"] = _loc2_;
      return this["\x1e\x13\x06"]();
   }
   function §\t\x10§()
   {
      return this["\x1d\x1d\x05"];
   }
   function §\x1d\x07§(§\x19\x10\x10§)
   {
      this["\x1d\x1d\x05"] = _loc2_;
      return this["\t\x10"]();
   }
   function §\f\x01§()
   {
      return this["\x1d\x1e\x13"];
   }
   function §\x1e\f§(§\x19\x10\x10§)
   {
      this["\x1d\x1e\x13"] = _loc2_;
      this["\x1a\n\x1c"]();
      return this["\f\x01"]();
   }
   function §\x06\x13§()
   {
      return new com.ankamagames.types["\x1a\x06\x02"](this._x,this._y);
   }
   function §\x1a\x11§(§\x1a\b\x0f§)
   {
      this._x = _loc2_.x;
      this._y = _loc2_.y;
      return this["\x06\x13"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.FloatingTips.CLASS_NAME);
      this["\x1e\x02\x0e"] = {left:0,top:0,right:this.gapi["\x1a\x11\t"],bottom:this.gapi["\x1a\x11\x07"]};
      this["\x1d\x1d\x05"] = 20;
   }
   function destroy()
   {
      Mouse.removeListener(this);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this["\x1a\n\x1c"]});
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._taTipsContent.addEventListener("href",this);
      Mouse.addListener(this);
      var §\x19\x02\x1d§ = this;
      this._winBackground.onPress = function()
      {
         eval("\x19\x02\x1d").drag();
      };
      this._winBackground.onRelease = this._winBackground.onReleaseOutside = function()
      {
         eval("\x19\x02\x1d").drop();
      };
      this._mcLearnMoreButton.onRelease = function()
      {
         eval("\x19\x02\x1d").click({target:eval("\x19\x02\x1d")._mcLearnMoreButton});
      };
   }
   function initTexts()
   {
      this._winBackground.title = this.api.lang.getText("TIPS_WORD");
      this["\x1c\x1a\x05"].text = this.api.lang.getText("LEARN_MORE");
   }
   function §\x1a\n\x1c§()
   {
      if(this._taTipsContent.text == undefined)
      {
         return undefined;
      }
      this._taTipsContent.text = "<p class=\'body\'>" + this.api.lang["\x17\x1a\r"](this["\x1d\x1e\x13"]).c + "</p>";
   }
   function move(§\x19\x10\x1a§, §\x19\x11\x05§)
   {
      this._x = _loc2_;
      this._y = _loc3_;
      this["\x1b\x04\x05"]();
      this.api.kernel.OptionsManager.setOption("FloatingTipsCoord",new com.ankamagames.types["\x1a\x06\x02"](this._x,this._y));
   }
   function §\x1b\x04\x05§()
   {
      var _loc2_ = this._x;
      var _loc3_ = this._y;
      var _loc4_ = this.getBounds();
      var _loc5_ = _loc3_ + _loc4_.yMin - this["\x1e\x02\x0e"].top;
      var _loc6_ = this["\x1e\x02\x0e"].bottom - _loc3_ - _loc4_.yMax;
      var _loc7_ = _loc2_ + _loc4_.xMin - this["\x1e\x02\x0e"].left;
      var _loc8_ = this["\x1e\x02\x0e"].right - _loc2_ - _loc4_.xMax;
      if(_loc5_ < this["\x1d\x1d\x05"])
      {
         _loc3_ = this["\x1e\x02\x0e"].top - _loc4_.yMin;
      }
      if(_loc6_ < this["\x1d\x1d\x05"])
      {
         _loc3_ = this["\x1e\x02\x0e"].bottom - _loc4_.yMax;
      }
      if(_loc7_ < this["\x1d\x1d\x05"])
      {
         _loc2_ = this["\x1e\x02\x0e"].left - _loc4_.xMin;
      }
      if(_loc8_ < this["\x1d\x1d\x05"])
      {
         _loc2_ = this["\x1e\x02\x0e"].right - _loc4_.xMax;
      }
      this._y = _loc3_;
      this._x = _loc2_;
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnClose":
            this["\x1b\x13\x13"]();
            break;
         case "_mcLearnMoreButton":
            this.api.ui.loadUIComponent("KnownledgeBase","KnownledgeBase",{article:this.api.lang["\x17\x1a\r"](this["\x1d\x1e\x13"]).l});
      }
   }
   function drag()
   {
      this["\x1d\x1a\x14"] = _root._xmouse - this._x;
      this["\x1d\x1a\x15"] = _root._ymouse - this._y;
      this["\x1c\x03\x14"] = true;
   }
   function drop()
   {
      this["\x1c\x03\x14"] = false;
   }
   function onMouseMove()
   {
      if(this["\x1c\x03\x14"])
      {
         this.move(_root._xmouse - this["\x1d\x1a\x14"],_root._ymouse - this["\x1d\x1a\x15"]);
      }
   }
   function href(oEvent)
   {
      this.api.kernel.TipsManager["\x19\x19\x1b"](_loc2_);
   }
}
