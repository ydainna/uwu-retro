class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.§\x1b\x0e\x07§.§\x1b\x0e\b§ extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function §\x1b\x0e\b§()
   {
      super();
   }
   function §\x11\x19§(§\x19\x12\x10§)
   {
      if(_loc2_ != this._oData)
      {
         this._oData = _loc2_;
         this.addToQueue({object:this,method:this["\x1a\x19\x1d"]});
      }
      return this["\x1e\x18\x01"]();
   }
   function §\x14\x18§(sPath)
   {
      this._ldrIcon.contentPath = sPath;
      return this["\x1e\x1c\x01"]();
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
      this["\x1d\x06\x01"].addEventListener("initialization",this);
   }
   function §\x1a\x19\x1d§()
   {
      this["\x1d\x06\x01"].contentPath = this._oData.gfxFile != undefined ? this._oData.gfxFile : "";
   }
   function initialization(oEvent)
   {
      var _loc3_ = _loc2_.clip;
      _global.GAC.addSprite(_loc3_,this._oData);
      _loc3_.attachMovie("staticR","mcAnim",10);
      _loc3_._xscale = -80;
      _loc3_._yscale = 80;
   }
}
