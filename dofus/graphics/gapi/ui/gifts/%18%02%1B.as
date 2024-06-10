class dofus.graphics.gapi.ui.gifts.§\x18\x02\x1b§ extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Gifts";
   function §\x18\x02\x1b§()
   {
      super();
   }
   function §\x11\x19§(§\x19\x12\x10§)
   {
      this._oData = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
      }
      return this["\x1e\x18\x01"]();
   }
   function §\x1e\x18\x01§()
   {
      return this._oData;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.gifts["\x18\x02\x1b"].CLASS_NAME);
   }
   function createChildren()
   {
      this["\x1d\x0f\x17"]._visible = false;
      this["\x1d\x0f\x17"].stop();
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this["\x1d\x06\x01"].addEventListener("initialization",this);
      this._btnBack.addEventListener("click",this);
      this._btnBack.addEventListener("over",this);
      this._btnBack.addEventListener("out",this);
   }
   function §\x1b\x14\x14§()
   {
      if(this._oData != undefined)
      {
         this["\x1c\x1b\x0f"].text = this._oData.name;
         this["\x1c\x1a\x07"].text = this.api.lang.getText("LEVEL") + " " + this._oData.Level;
         this["\x1d\x06\x01"].contentPath = this._oData.gfxFile;
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1c\x1b\x0f"].text = "";
         this["\x1d\x06\x01"].contentPath = "";
      }
   }
   function initialization(oEvent)
   {
      var _loc3_ = _loc2_.clip;
      this.gapi.api.colors.addSprite(_loc3_,this._oData);
      _loc3_.attachMovie("staticF","mcAnim",10);
   }
   function click(oEvent)
   {
      if(this._bEnabled)
      {
         this["\x17\x07\x19"]({type:"onSpriteSelected",data:this._oData});
      }
   }
   function over(oEvent)
   {
      if(this._bEnabled)
      {
         this["\x1d\x0f\x17"]._visible = true;
         this["\x1d\x0f\x17"].play();
      }
   }
   function out(oEvent)
   {
      if(this._bEnabled)
      {
         this["\x1d\x0f\x17"]._visible = false;
         this["\x1d\x0f\x17"].stop();
      }
   }
}
