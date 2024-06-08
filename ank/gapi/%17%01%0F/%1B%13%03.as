class ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x03§ extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function §\x1b\x13\x03§()
   {
      super();
   }
   function §\x0e\x17§(oAPI)
   {
      this["\x1e\x02\t"] = oAPI;
      return this["\x1e\x12\x05"]();
   }
   function §\x1e\x12\x05§()
   {
      if(this["\x1e\x02\t"] == undefined)
      {
         return this._parent.api;
      }
      return this["\x1e\x02\t"];
   }
   function §\x15\x02§(§\x1b\x02\x01§)
   {
      this["\x1e\n\x07"] = _loc2_;
      return this["\x1e\x1c\r"]();
   }
   function §\x1e\x1c\r§()
   {
      return this["\x1e\n\x07"];
   }
   function §\x16\x15\n§()
   {
      return false;
   }
   function §\x1b\x13\x13§()
   {
      this.gapi.unloadUIComponent(this["\x1e\n\x07"]);
   }
}
