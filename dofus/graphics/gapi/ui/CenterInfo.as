class dofus.graphics.gapi.ui.CenterInfo extends dofus.graphics.gapi.ui.CenterText
{
   static var §\x16\x1b\x10§ = "CenterInfo";
   function CenterInfo()
   {
      super();
   }
   function §\x1e\t§(sText)
   {
      this["\x1e\t\x04"] = _loc2_;
      return this.textInfo;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.CenterInfo.CLASS_NAME);
   }
   function §\x18\n\x14§()
   {
      super["\x18\n\x14"]();
      this["\x1d\x04\r"].text = this["\x1e\t\x04"];
      new org.flashdevelop.utils.FlashConnect.trace(this["\x1e\t\x04"],"dofus.graphics.gapi.ui.CenterInfo::initText","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/graphics/gapi/ui/CenterInfo.as",49);
   }
}
