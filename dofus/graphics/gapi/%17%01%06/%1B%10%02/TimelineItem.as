class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.§\x1b\x10\x02§.TimelineItem extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Timeline";
   var §\x1c\x04\x1a§ = false;
   function TimelineItem()
   {
      super();
   }
   function §\x1e\x1d\x15§()
   {
      return this["\x1c\x04\x1a"];
   }
   function §\x15\x17§(bHidden)
   {
      this["\x1c\x04\x1a"] = bHidden;
      return this["\x1e\x1d\x15"]();
   }
   function §\x1e\x15\x19§()
   {
      return this["\x1e\x10\x05"];
   }
   function §\t\x1c§()
   {
      return this["\x1d\x06\x01"];
   }
   function §\x11\x19§(§\x19\x12\x10§)
   {
      this._oData = _loc2_;
      this["\x1b\x15\x01"]();
      return this["\x1e\x18\x01"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls["\x1b\x10\x02"].TimelineItem.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this["\x18\x16\x13"],params:[this._oData.gfxFile]});
   }
   function §\x18\x16\x13§(§\x1a\x1b\x0f§)
   {
      this["\x1d\x06\x01"].contentPath = _loc2_;
      this["\x1d\x06\x01"].addEventListener("initialization",this);
      this.api.colors.addSprite(this["\x1d\x06\x01"],this._oData);
      this["\x1a\x17\x03"]();
      this["\x1b\x15\x01"]();
   }
   function §\x1a\x17\x03§()
   {
      var _loc2_ = new Color(this["\x1d\f\x01"]);
      _loc2_.setRGB(dofus.Constants["\x1b\x0f\x03"][this._oData["\x1e\r\x1d"]]);
   }
   function §\x1b\x15\x01§()
   {
      this["\x1d\f\x01"]._yscale = this._oData._lp / this._oData["\x1d\x06\n"] * 100;
   }
   function onRollOver()
   {
      this._mcBackRect._alpha = 50;
      this._oData.mc.onRollOver();
      this._oData.mc.showEffects(true);
   }
   function onRollOut()
   {
      this._mcBackRect._alpha = 100;
      this._oData.mc.onRollOut();
      this._oData.mc.showEffects(false);
   }
   function onRelease()
   {
      if(this._oData["\x18\x10\x0e"] && (this.api.datacenter.Game["\x18\x0b\t"] == 2 || this.api.datacenter.Game["\x18\x0b\t"] == 3))
      {
         this._oData.mc.onRelease();
      }
      else
      {
         var _loc2_ = this.gapi.getUIComponent("PlayerInfos");
         var _loc3_ = _loc2_ != undefined && this._oData != _loc2_.data;
         this.gapi.loadUIComponent("PlayerInfos","PlayerInfos",{data:this._oData},{bForceLoad:_loc3_});
      }
   }
   function initialization(oEvent)
   {
      var _loc3_ = _loc2_.target.content;
      _loc3_.attachMovie("staticR","anim",10);
      _loc3_._x = 15;
      _loc3_._y = 32;
      _loc3_._xscale = -80;
      _loc3_._yscale = 80;
   }
}
