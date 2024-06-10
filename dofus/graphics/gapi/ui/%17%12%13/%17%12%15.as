class dofus.graphics.gapi.ui.§\x17\x12\x13§.§\x17\x12\x15§ extends ank.gapi.core.UIBasicComponent
{
   function §\x17\x12\x15§()
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
         this["\x1c\x1b\x0f"].text = _loc4_.account;
         this._btnRemove._visible = true;
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1c\x1b\x0f"].text = "";
         this._btnRemove._visible = false;
      }
   }
   function remove()
   {
      this["\x1e\x03\x18"].owner["\x1a\f\x05"](this["\x1e\x03\x18"].name);
   }
   function §\x18\t\x04§()
   {
      super.init(false);
      this._btnRemove._visible = false;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._btnRemove.addEventListener("click",this);
   }
   function click(oEvent)
   {
      this["\x1d\r\t"]._parent._parent["\x1a\f\x05"]("*" + this["\x1e\x03\x18"].account);
   }
}
