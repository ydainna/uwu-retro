class ank.gapi.§\x17\x01\x06§.Compass extends ank.gapi.core.UIBasicComponent
{
   static var §\x16\x1b\x10§ = "Compass";
   var §\x1c\x0b\x18§ = true;
   var §\x1e\x07\x16§ = "CompassNormalBackground";
   var §\x1e\x07\x11§ = "CompassNormalArrow";
   var §\x1e\x0b\x07§ = "CompassNormalNoArrow";
   function Compass()
   {
      super();
   }
   function §\x1e\x1a§(§\x16\x14\x07§)
   {
      this["\x1c\x0b\x18"] = _loc2_;
      return this["\f\x17"]();
   }
   function §\f\x17§()
   {
      return this["\x1c\x0b\x18"];
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
   function §\x0e\x1a§(§\x1a\x0f\x12§)
   {
      this["\x1e\x07\x11"] = _loc2_;
      return this["\x1e\x12\n"]();
   }
   function §\x1e\x12\n§()
   {
      return this["\x1e\x07\x11"];
   }
   function §\x19\x0e§(§\x1b\x04\n§)
   {
      this["\x1e\x0b\x07"] = _loc2_;
      return this["\x05\x06"]();
   }
   function §\x05\x06§()
   {
      return this["\x1e\x0b\x07"];
   }
   function §\x11\x10§(§\x15\x1c\x1c§)
   {
      this["\x1b\x1c\x0b"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x18\x13\x14"]();
      }
      return this.currentCoords;
   }
   function §\x1e\x02§(§\x16\x06\x11§)
   {
      this["\x1c\x01\b"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x18\x13\x14"]();
      }
      return this["\n\x1b"]();
   }
   function §\n\x1b§()
   {
      return this["\x1c\x01\b"];
   }
   function §\x0e\x10§(§\x19\x11\x10§)
   {
      this["\x1c\x01\b"] = _loc2_.targetCoords;
      this["\x1b\x1c\x0b"] = _loc2_.currentCoords;
      if(this["\x18\t\x1c"])
      {
         this.addToQueue({object:this,method:this["\x18\x13\x14"]});
      }
      return this.allCoords;
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.Compass.CLASS_NAME);
   }
   function createChildren()
   {
      this.attachMovie("GAPILoader","_ldrBack",10,{contentPath:this["\x1e\x07\x16"],centerContent:false,scaleContent:true});
      this.createEmptyMovieClip("_mcArrow",20);
      this._mcArrow.attachMovie("GAPILoader","_ldrArrow",10,{contentPath:this["\x1e\x0b\x07"],centerContent:false,scaleContent:true});
      if(this["\x1c\x0b\x18"])
      {
         this.addToQueue({object:this,method:this["\x18\x13\x14"]});
      }
   }
   function size()
   {
      super.size();
      this["\x16\x05\f"]();
   }
   function §\x16\x05\f§()
   {
      this._ldrBack["\x1a\x19\x18"](this["\x1d"],this["\x0e\x06"]);
      this._mcArrow._x = this["\x1d"] / 2;
      this._mcArrow._y = this["\x0e\x06"] / 2;
      this._mcArrow._ldrArrow["\x1a\x19\x18"](this["\x1d"],this["\x0e\x06"]);
      this._mcArrow._ldrArrow._x = (0 - this["\x1d"]) / 2;
      this._mcArrow._ldrArrow._y = (0 - this["\x0e\x06"]) / 2;
   }
   function §\x18\x13\x14§()
   {
      if(this["\x1b\x1c\x0b"] == undefined)
      {
         return undefined;
      }
      if(this["\x1b\x1c\x0b"].length == 0)
      {
         return undefined;
      }
      if(this["\x1c\x01\b"] == undefined)
      {
         return undefined;
      }
      if(this["\x1c\x01\b"].length == 0)
      {
         return undefined;
      }
      ank.utils.Timer.removeTimer(this,"compass");
      var _loc2_ = this["\x1c\x01\b"][0] - this["\x1b\x1c\x0b"][0];
      var _loc3_ = this["\x1c\x01\b"][1] - this["\x1b\x1c\x0b"][1];
      if(_loc2_ == 0 && _loc3_ == 0)
      {
         this._mcArrow._ldrArrow.contentPath = this["\x1e\x0b\x07"];
         this._mcArrow._ldrArrow.content._rotation = this._mcArrow._rotation;
         this._mcArrow._rotation = 0;
         this["\x1b\x03\x19"](0,1);
      }
      else
      {
         var _loc4_ = Math.atan2(_loc3_,_loc2_) * (180 / Math.PI);
         this._mcArrow._ldrArrow.contentPath = this["\x1e\x07\x11"];
         this._mcArrow._ldrArrow.content._rotation = this._mcArrow._rotation - _loc4_;
         this._mcArrow._rotation = _loc4_;
         this["\x1b\x03\x19"](_loc4_,1);
      }
   }
   function §\x1b\x03\x19§(§\x19\t\x1a§, §\x19\x0e\x15§)
   {
      this._mcArrow._ldrArrow.content._rotation += _loc3_;
      _loc3_ = (0 - this._mcArrow._ldrArrow.content._rotation) * 0.2 + _loc3_ * 0.7;
      if(Math.abs(_loc3_) > 0.01)
      {
         ank.utils.Timer.setTimer(this,"compass",this,this["\x1b\x03\x19"],50,[_loc2_,_loc3_]);
      }
      else
      {
         this._mcArrow._ldrArrow.content._rotation = 0;
      }
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
