class dofus.§\x18\x03\x10§.gapi.ui.§\x1a\x1c\x10§.§\x1a\x1c\x11§ extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function §\x1a\x1c\x11§()
   {
      super();
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      if(_loc2_)
      {
         if(_loc4_.c)
         {
            this._btnMain._visible = false;
            this._btnAlt._visible = false;
            this["\x1e\x07\x05"]._visible = true;
            this["\x1c\x16\x17"].styleName = "GrayLeftSmallBoldLabel";
            this["\x1c\x16\x17"].text = _loc4_.d;
         }
         else
         {
            var _loc5_ = _global.api;
            this._btnMain._visible = true;
            this._btnAlt._visible = true;
            this["\x1e\x07\x05"]._visible = false;
            this["\x1c\x16\x17"].styleName = "BrownLeftSmallLabel";
            this["\x1c\x16\x17"].text = "    " + _loc4_.d;
            if(_loc4_.s.k != undefined)
            {
               if(_loc4_.s.d == undefined || (_loc4_.s.d == "" || new ank.utils.ExtendedString(_loc4_.s.d)["\x1b\x11\x13"]().toString() == ""))
               {
                  this._btnMain.label = _loc5_.lang["\x17\x15\x14"](_loc4_.s.c) + _loc5_.lang["\x17\x1a\b"](_loc4_.s.k);
               }
               else
               {
                  this._btnMain.label = _loc4_.s.d;
               }
            }
            else
            {
               this._btnMain.label = _loc5_.lang.getText("KEY_UNDEFINED");
            }
            if(_loc4_.s.k2 != undefined)
            {
               if(_loc4_.s.d2 == undefined || (_loc4_.s.d2 == "" || new ank.utils.ExtendedString(_loc4_.s.d2)["\x1b\x11\x13"]().toString() == ""))
               {
                  this._btnAlt.label = _loc5_.lang["\x17\x15\x14"](_loc4_.s.c2) + _loc5_.lang["\x17\x1a\b"](_loc4_.s.k2);
               }
               else
               {
                  this._btnAlt.label = _loc4_.s.d2;
               }
            }
            else
            {
               this._btnAlt.label = _loc5_.lang.getText("KEY_UNDEFINED");
            }
            this._btnMain.enabled = this._btnAlt.enabled = !_loc4_.l;
         }
         this["\x1e\f\x14"] = _loc4_.k;
      }
      else if(this["\x1c\x16\x17"].text != undefined)
      {
         this["\x1c\x16\x17"].styleName = "BrownLeftSmallLabel";
         this["\x1c\x16\x17"].text = "";
         this["\x1e\x07\x05"]._visible = false;
         this._btnMain._visible = false;
         this._btnMain.label = "";
         this._btnAlt._visible = false;
         this._btnAlt.label = "";
         this["\x1e\f\x14"] = undefined;
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
      this["\x1e\x07\x05"]._visible = false;
      this._btnMain._visible = false;
      this._btnAlt._visible = false;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._btnMain.addEventListener("click",this);
      this._btnAlt.addEventListener("click",this);
   }
   function click(oEvent)
   {
      if(this["\x1e\f\x14"] == undefined)
      {
         return undefined;
      }
      var _loc3_ = _global.api;
      switch(_loc2_.target._name)
      {
         case "_btnMain":
            _loc3_.kernel.KeyManager["\x16\x05\x1a"](this["\x1e\f\x14"],false);
            break;
         case "_btnAlt":
            _loc3_.kernel.KeyManager["\x16\x05\x1a"](this["\x1e\f\x14"],true);
      }
   }
}
