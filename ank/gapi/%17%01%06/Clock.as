class ank.gapi.§\x17\x01\x06§.Clock extends ank.gapi.core.UIBasicComponent
{
   static var §\x16\x1b\x10§ = "Clock";
   var §\x1c\x05\x02§ = false;
   var §\x1c\x06\x12§ = false;
   function Clock()
   {
      super();
   }
   function §\x0f\x0b§(§\x1a\x10\x02§)
   {
      this["\x1e\x07\x16"] = _loc2_;
      return this["\x1e\x12\x19"]();
   }
   function §\x1e\x12\x19§()
   {
      return this["\x1e\x07\x16"];
   }
   function §\x0e\x1b§(§\x1a\x0f\x13§)
   {
      this["\x1e\x07\x12"] = _loc2_;
      return this["\x1e\x12\x0b"]();
   }
   function §\x1e\x12\x0b§()
   {
      return this["\x1e\x07\x12"];
   }
   function §\x0e\x1c§(§\x1a\x0f\x14§)
   {
      this["\x1e\x07\x13"] = _loc2_;
      return this["\x1e\x12\f"]();
   }
   function §\x1e\x12\f§()
   {
      return this["\x1e\x07\x13"];
   }
   function §\x14\x13§(§\x19\b\x05§)
   {
      this["\x1d\x16\x1a"] = _loc2_ % 12;
      if(this["\x18\t\x1c"])
      {
         this["\x18\x13\x14"]();
      }
      return this["\x1e\x1b\x19"]();
   }
   function §\x1e\x1b\x19§()
   {
      return this["\x1d\x16\x1a"];
   }
   function §\x18\x16§(§\x19\n\x12§)
   {
      this["\x1d\x1a\x03"] = _loc2_ % 59;
      if(this["\x18\t\x1c"])
      {
         this["\x18\x13\x14"]();
      }
      return this["\x04\x03"]();
   }
   function §\x04\x03§()
   {
      return this["\x1d\x1a\x03"];
   }
   function §\x1e\x19§(§\x1a\x02\x15§)
   {
      this["\x1e\x06\x07"] = _loc2_;
      return this.updateFunction;
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.Clock.CLASS_NAME);
   }
   function createChildren()
   {
      this.attachMovie("GAPILoader","_ldrBack",10,{contentPath:this["\x1e\x07\x16"],centerContent:false,scaleContent:true});
      this.attachMovie("GAPILoader","_ldrArrowHours",20,{contentPath:this["\x1e\x07\x12"],centerContent:false,scaleContent:true});
      this.attachMovie("GAPILoader","_ldrArrowMinutes",30,{contentPath:this["\x1e\x07\x13"],centerContent:false,scaleContent:true});
      this._ldrArrowHours._visible = false;
      this._ldrArrowMinutes._visible = false;
      this.addToQueue({object:this,method:this["\x18\x13\x14"]});
   }
   function size()
   {
      super.size();
      this["\x16\x05\f"]();
   }
   function §\x16\x05\f§()
   {
      this._ldrBack["\x1a\x19\x18"](this["\x1d"],this["\x0e\x06"]);
      this._ldrArrowHours["\x1a\x19\x18"](this["\x1d"],this["\x0e\x06"]);
      this._ldrArrowMinutes["\x1a\x19\x18"](this["\x1d"],this["\x0e\x06"]);
   }
   function §\x18\x13\x14§()
   {
      if(this["\x1e\x06\x07"] != undefined)
      {
         var _loc2_ = this["\x1e\x06\x07"].method.apply(this["\x1e\x06\x07"].object);
         ank.utils.Timer.setTimer(this,"clock",this,this["\x18\x13\x14"],30000);
         this["\x1d\x16\x1a"] = _loc2_[0];
         this["\x1d\x1a\x03"] = _loc2_[1];
      }
      var _loc3_ = 30 * this["\x1d\x16\x1a"] + 6 * this["\x1d\x1a\x03"] / 12 - 90;
      var _loc4_ = 6 * this["\x1d\x1a\x03"] - 90;
      this._ldrArrowHours.content._rotation = _loc3_;
      this._ldrArrowMinutes.content._rotation = _loc4_;
      this._ldrArrowHours._visible = true;
      this._ldrArrowMinutes._visible = true;
   }
   function onRelease()
   {
      this["\x17\x07\x19"]({type:"click"});
   }
   function onReleaseOutside()
   {
      this.onRollOut();
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
