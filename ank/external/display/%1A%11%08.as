class ank.external.display.§\x1a\x11\b§ extends ank.external.§\x17\x0e\x11§
{
   function §\x1a\x11\b§()
   {
      super();
      ank..external.ExternalConnector.getInstance().addEventListener("onScreenResolutionError",this);
      ank..external.ExternalConnector.getInstance().addEventListener("onScreenResolutionSuccess",this);
   }
   function §\x1a\f\x0f§()
   {
      super["\x1a\f\x0f"]();
      ank..external.ExternalConnector.getInstance().removeEventListener("onScreenResolutionError",this);
      ank..external.ExternalConnector.getInstance().removeEventListener("onScreenResolutionSuccess",this);
   }
   function enable(§\x19\x10\x18§, §\x19\b\x03§, §\x19\x03\x1c§)
   {
      ank..external.ExternalConnector.getInstance()["\x1a\b\x04"]("ScreenResolutionEnable",_loc2_,_loc3_,_loc4_);
   }
   function disable()
   {
      ank..external.ExternalConnector.getInstance()["\x1a\b\x04"]("ScreenResolutionDisable");
   }
   function onScreenResolutionError(oEvent)
   {
      this["\x17\x07\x19"]({type:"onScreenResolutionError"});
   }
   function onScreenResolutionSuccess(oEvent)
   {
      this["\x17\x07\x19"]({type:"onScreenResolutionSuccess"});
   }
}
