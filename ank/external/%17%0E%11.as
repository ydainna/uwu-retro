class ank.external.§\x17\x0e\x11§
{
   function §\x17\x0e\x11§()
   {
      eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
      ank..external.ExternalConnector.getInstance().addEventListener("onExternalConnectionFaild",this);
   }
   function §\x17\x1d\x03§()
   {
      return this["\x1e\x04\x1c"];
   }
   function §\x1a\x18\x14§(oParams)
   {
      this["\x1e\x04\x1c"] = _loc2_;
   }
   function removeListeners()
   {
      ank..external.ExternalConnector.getInstance().removeEventListener("onExternalConnectionFaild",this);
   }
   function onExternalConnectionFaild(oEvent)
   {
      this["\x17\x07\x19"]({type:"onExternalError"});
   }
}
