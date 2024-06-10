class dofus.graphics.gapi.ui.StringCourse extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "StringCourse";
   function StringCourse()
   {
      super();
   }
   function §\x19\f§(sName)
   {
      this["\x1e\x0b\x06"] = _loc2_;
      return this["\x04\x1b"]();
   }
   function §\x17\x03§(§\x1b\x02\x1c§)
   {
      this["\x1e\n\x18"] = _loc2_;
      return this["\x02\x06"]();
   }
   function §\x14\x02§(§\x1a\x1b\x1a§)
   {
      this["\x1e\t\x1a"] = _loc2_;
      return this["\x1e\x1b\x01"]();
   }
   function §\x10\x1d§(§\x15\x1b\x1c§)
   {
      this["\x1c\r\x11"] = _loc2_;
      return this["\x1e\x16\x07"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.StringCourse.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this["\x18\x15\x17"]});
   }
   function §\x18\x15\x17§()
   {
      this["\x1d\x06\x05"].addEventListener("error",this);
      this["\x1d\x06\x05"].addEventListener("complete",this);
      this["\x1d\x06\x05"].contentPath = this["\x1e\t\x1a"];
   }
   function §\x1b\x13\x11§()
   {
      this["\x1d\x06\x05"].contentPath = "";
      this["\x1c\x1b\x0f"].text = "";
      this["\x1c\x1a\x07"].text = "";
   }
   function applyColor(§\x18\x1b\f§, §\x1b\x1b\x07§)
   {
      var _loc4_ = this["\x1c\r\x11"][_loc3_];
      if(_loc4_ == -1 || _loc4_ == undefined)
      {
         return undefined;
      }
      var _loc5_ = (_loc4_ & 16711680) >> 16;
      var _loc6_ = (_loc4_ & 65280) >> 8;
      var _loc7_ = _loc4_ & 255;
      var _loc8_ = new Color(_loc2_);
      var _loc9_ = new Object();
      _loc9_ = {ra:0,ga:0,ba:0,rb:_loc5_,gb:_loc6_,bb:_loc7_};
      _loc8_.setTransform(_loc9_);
   }
   function complete(oEvent)
   {
      this["\x1c\x1b\x0f"].text = this["\x1e\x0b\x06"];
      this["\x1c\x1a\x07"].text = this["\x1e\n\x18"];
      var ref = this;
      this["\x1d\x06\x05"].content.stringCourseColor = function(§\x18\x1b\f§, §\x1b\x1a\x1d§)
      {
         ref.applyColor(_loc2_,_loc3_);
      };
      this["\x1d\x07\x18"].play();
   }
   function error(oEvent)
   {
      this["\x1b\x13\x13"]();
   }
}
