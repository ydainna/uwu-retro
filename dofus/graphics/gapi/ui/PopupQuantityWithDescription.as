class dofus.§\x18\x03\x10§.gapi.ui.PopupQuantityWithDescription extends dofus.§\x18\x03\x10§.gapi.ui.PopupQuantity
{
   static var §\x16\x1b\x10§ = "PopupQuantityWithDescription";
   function PopupQuantityWithDescription()
   {
      super();
   }
   function get descriptionLangKey()
   {
      return this._sDescriptionLangKey;
   }
   function set descriptionLangKey(sDescriptionLangKey)
   {
      this._sDescriptionLangKey = sDescriptionLangKey;
   }
   function get descriptionLangKeyParams()
   {
      return this._aDescriptionLangKeyParams;
   }
   function set descriptionLangKeyParams(aDescriptionLangKeyParams)
   {
      this._aDescriptionLangKeyParams = aDescriptionLangKeyParams;
   }
   function refreshDescription()
   {
      if(this._sDescriptionLangKey == undefined)
      {
         return undefined;
      }
      var _loc2_ = this._winBackground.content;
      if(this._aDescriptionLangKeyParams == undefined)
      {
         var _loc3_ = undefined;
      }
      else
      {
         _loc3_ = new Array();
         var _loc4_ = 0;
         while(_loc4_ < this._aDescriptionLangKeyParams.length)
         {
            var _loc5_ = this._aDescriptionLangKeyParams[_loc4_];
            if(_loc5_ instanceof Function)
            {
               var _loc6_ = _loc5_;
               _loc3_.push(_loc6_.apply(this,[this["\x1d\x19\x1d"],this["\x1d\x19\t"],this["\x1e\x01\x03"]]));
            }
            else
            {
               switch(_loc5_)
               {
                  case "value":
                     _loc3_.push(this["\x1e\x01\x03"]);
                     break;
                  case "min":
                     _loc3_.push(this["\x1d\x19\x1d"]);
                     break;
                  case "max":
                     _loc3_.push(this["\x1d\x19\t"]);
                     break;
                  default:
                     _loc3_.push(_loc5_);
               }
            }
            _loc4_ = _loc4_ + 1;
         }
      }
      _loc2_["\x1e\x0f\n"].text = this.api.lang.getText(this._sDescriptionLangKey,_loc3_);
   }
   function §\x18\n\x16§()
   {
      super["\x18\n\x16"]();
      this.refreshDescription();
   }
   function change(oEvent)
   {
      super.change(_loc3_);
      this.refreshDescription();
   }
}
