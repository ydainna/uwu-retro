class ank.gapi.§\x17\x01\x06§.Window extends ank.gapi.core.UIBasicComponent
{
   static var §\x16\x1b\x10§ = "Window";
   static var §\x18\x13\x18§ = 25;
   static var §\x18\x13\x1a§ = 5;
   static var §\x18\x13\x19§ = 5;
   var §\x1c\x03\x12§ = false;
   var §\x1c\x02\x14§ = true;
   var §\x1e\b\x0f§ = "none";
   var §\x1c\x02\x1d§ = false;
   var §\x1c\x05\x0b§ = false;
   function Window()
   {
      super();
   }
   function §\x1e\r§(sTitle)
   {
      this.addToQueue({object:this,method:function()
      {
         this._lblTitle.text = sTitle;
      }});
      return this["\f\x02"]();
   }
   function §\f\x02§()
   {
      return this._lblTitle.text;
   }
   function §\x11\b§(sContentPath)
   {
      this["\x1c\x02\x1d"] = false;
      this["\x1e\b\x0f"] = sContentPath;
      if(sContentPath == "none")
      {
         this.addToQueue({object:this,method:function()
         {
            this._ldrContent.contentPath = "";
         }});
      }
      else
      {
         this.addToQueue({object:this,method:function()
         {
            this._ldrContent.contentPath = sContentPath;
         }});
      }
      return this["\x1e\x16\x16"]();
   }
   function §\x1e\x16\x16§()
   {
      return this._ldrContent.contentPath;
   }
   function §\x11\x07§(oParams)
   {
      this.addToQueue({object:this,method:function()
      {
         this._ldrContent.contentParams = oParams;
      }});
      return this["\x1e\x16\x15"]();
   }
   function §\x1e\x16\x15§()
   {
      return this._ldrContent.contentParams;
   }
   function §\x1e\x16\x12§()
   {
      return this._ldrContent.content;
   }
   function §\x10\n§(§\x16\n\x01§)
   {
      this["\x1c\x02\x14"] = _loc2_;
      return this["\x1e\x15\b"]();
   }
   function §\x1e\x15\b§()
   {
      return this["\x1c\x02\x14"];
   }
   function §\x15\x06§(§\x16\r\x0e§)
   {
      this["\x1c\x05\x0b"] = _loc2_;
      this.useHandCursor = false;
      if(_loc2_)
      {
         this.onRelease = function()
         {
         };
      }
      else
      {
         delete this.onRelease;
      }
      return this["\x1e\x1c\x13"]();
   }
   function §\x1e\x1c\x13§()
   {
      return this["\x1c\x05\x0b"];
   }
   function §\x1a\x18\x1a§()
   {
      this._ldrContent._x = this._ldrContent._y = 0;
      var _loc2_ = this._ldrContent.content.getBounds(this);
      var _loc3_ = _loc2_.xMax - _loc2_.xMin;
      var _loc4_ = _loc2_.yMax - _loc2_.yMin;
      var _loc5_ = this.getStyle();
      var _loc6_ = _loc5_.cornerradius;
      var _loc7_ = _loc5_.borderwidth == undefined ? 0 : _loc5_.borderwidth;
      var _loc8_ = _loc5_.titleheight;
      this._ldrContent._x = _loc7_ - _loc2_.xMin;
      this._ldrContent._y = _loc7_ + _loc8_ - _loc2_.yMin;
      this["\x1a\x19\x18"](2 * _loc7_ + _loc3_,2 * _loc7_ + _loc8_ + _loc4_ + (typeof _loc6_ != "object" ? _loc6_ : Math.max(_loc6_.bl,_loc6_.br)));
   }
   function §\x18\t\x04§()
   {
      super.init(false,ank.gapi.controls.Window.CLASS_NAME);
   }
   function createChildren()
   {
      this.createEmptyMovieClip("_mcBorder",10);
      this.createEmptyMovieClip("\x1d\b\n",20);
      this.createEmptyMovieClip("\x1d\x10\x1b",30);
      this.attachMovie("GAPILoader","_ldrContent",40);
      this._ldrContent.addEventListener("complete",this);
      this.attachMovie("Label","_lblTitle",50,{_x:ank.gapi.controls.Window["\x18\x13\x19"],_y:ank.gapi.controls.Window["\x18\x13\x1a"]});
   }
   function size()
   {
      super.size();
      this["\x16\x05\f"]();
   }
   function §\x16\x05\f§()
   {
      this._lblTitle["\x1a\x19\x18"](this["\x1d"] - ank.gapi.controls.Window["\x18\x13\x19"],ank.gapi.controls.Window["\x18\x13\x18"]);
      if(this["\x1c\x05\x07"])
      {
         this.draw();
      }
      if(this["\x1c\x02\x14"])
      {
         this._x = (this.gapi["\x1a\x11\t"] - this["\x1d"]) / 2;
         this._y = (this.gapi["\x1a\x11\x07"] - this["\x0e\x06"]) / 2;
      }
   }
   function draw()
   {
      if(this["\x1e\b\x0f"] != "none" && !this["\x1c\x02\x1d"])
      {
         return undefined;
      }
      var _loc2_ = this.getStyle();
      this._lblTitle.styleName = _loc2_.titlestyle;
      var _loc3_ = _loc2_.cornerradius;
      var _loc4_ = _loc2_.bordercolor;
      var _loc5_ = _loc2_.borderwidth == undefined ? 0 : _loc2_.borderwidth;
      var _loc6_ = _loc2_.backgroundcolor;
      var _loc7_ = _loc2_.backgroundalpha == undefined ? 100 : _loc2_.backgroundalpha;
      var _loc8_ = _loc2_.backgroundrotation == undefined ? 0 : _loc2_.backgroundrotation;
      var _loc9_ = _loc2_.backgroundradient;
      var _loc10_ = _loc2_.backgroundratio;
      var _loc11_ = _loc2_.displaytitle == undefined ? true : _loc2_.displaytitle;
      var _loc12_ = _loc2_.titlecolor;
      var _loc13_ = _loc2_.titleheight;
      if(typeof _loc3_ == "object")
      {
         var _loc14_ = {tl:_loc3_.tl - _loc5_,tr:_loc3_.tr - _loc5_,br:_loc3_.bl - _loc5_,bl:_loc3_.bl - _loc5_};
      }
      else
      {
         _loc14_ = _loc3_ - _loc5_;
      }
      if(typeof _loc3_ == "object")
      {
         var _loc15_ = {tl:_loc3_.tl - _loc5_,tr:_loc3_.tr - _loc5_,br:0,bl:0};
      }
      else
      {
         _loc15_ = {tl:_loc3_ - _loc5_,tr:_loc3_ - _loc5_,bl:0,br:0};
      }
      this._mcBorder.clear();
      this["\x1d\b\n"].clear();
      this["\x1d\x10\x1b"].clear();
      this["\x17\n\x0f"](this._mcBorder,0,0,this["\x1d"],this["\x0e\x06"],_loc3_,_loc4_);
      this["\x17\n\x0f"](this["\x1d\b\n"],_loc5_,_loc5_,this["\x1d"] - 2 * _loc5_,this["\x0e\x06"] - 2 * _loc5_,_loc14_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_);
      if(_loc11_)
      {
         this["\x17\n\x0f"](this["\x1d\x10\x1b"],_loc5_,_loc5_,this["\x1d"] - 2 * _loc5_,_loc13_,_loc15_,_loc12_);
      }
   }
   function complete()
   {
      this["\x1c\x02\x1d"] = true;
      this["\x17\x07\x19"]({type:"complete"});
      this["\x1a\x18\x1a"]();
   }
}
