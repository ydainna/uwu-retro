class dofus.graphics.gapi.§\x17\x01\x06§.PointsViewer extends ank.gapi.core.UIBasicComponent
{
   static var §\x16\x1b\x10§ = "PointsViewer";
   function PointsViewer()
   {
      super();
   }
   function §\x0f\x0b§(§\x1a\x10\x02§)
   {
      this["\x1e\x07\x18"] = _loc2_;
      return this["\x1e\x12\x19"]();
   }
   function §\x1e\b§(§\x19\x0f\x15§)
   {
      this["\x1d\x1e\x07"] = _loc2_;
      return this.textColor;
   }
   function §\x04§(§\x19\x10\x10§)
   {
      _loc2_ = Number(_loc2_);
      if(_global.isNaN(_loc2_))
      {
         return undefined;
      }
      this["\x1e\x01\x03"] = _loc2_;
      this["\x16\x04\x15"]();
      this.useHandCursor = false;
      return this["\f\x1c"]();
   }
   function §\f\x1c§()
   {
      return this["\x1e\x01\x03"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.PointsViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.attachMovie(this["\x1e\x07\x18"],"_mcBg",this["\x1e\x10\x01"].getDepth() - 1);
      this["\x1e\x10\x01"].textColor = this["\x1d\x1e\x07"];
   }
   function §\x16\x04\x15§()
   {
      this["\x1e\x10\x01"].text = String(this["\x1e\x01\x03"]);
   }
   function onRollOver()
   {
      this["\x17\x07\x19"]({type:"over"});
   }
   function onRollOut()
   {
      this["\x17\x07\x19"]({type:"out"});
   }
}
