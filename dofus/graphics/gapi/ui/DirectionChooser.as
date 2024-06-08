class dofus.§\x18\x03\x10§.gapi.ui.DirectionChooser extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "DirectionChooser";
   function DirectionChooser()
   {
      super();
   }
   function §\x1d\x1d§(§\x18\x1c\x03§)
   {
      this["\x1d\x10\x0e"] = _loc2_;
      return this.target;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.DirectionChooser.CLASS_NAME);
   }
   function createChildren()
   {
      var _loc2_ = this.api.gfx["\x18\x02\x12"]();
      var _loc3_ = {x:this["\x1d\x10\x0e"]._x,y:this["\x1d\x10\x0e"]._y};
      this["\x1d\x10\x0e"]._parent.localToGlobal(_loc3_);
      this["\x1d\b\x04"]._x = _loc3_.x;
      this["\x1d\b\x04"]._y = _loc3_.y;
      this["\x1d\b\x04"]._xscale = this["\x1d\b\x04"]._yscale = _loc2_;
      this["\x1c\x0b\n"] = this["\x1d\b\x04"]["\x1c\x0b\n"];
      this["\x1c\x0b\r"] = this["\x1d\b\x04"]["\x1c\x0b\r"];
      this["\x1c\t\x03"] = this["\x1d\b\x04"]["\x1c\t\x03"];
      this._btnBR = this["\x1d\b\x04"]._btnBR;
      this["\x1c\x0b\x06"] = this["\x1d\b\x04"]["\x1c\x0b\x06"];
      this["\x1c\n\x02"] = this["\x1d\b\x04"]["\x1c\n\x02"];
      this["\x1c\n\x12"] = this["\x1d\b\x04"]["\x1c\n\x12"];
      this["\x1c\t\x02"] = this["\x1d\b\x04"]["\x1c\t\x02"];
      if(!this.allDirections)
      {
         this["\x1c\x0b\x06"]._visible = false;
         this["\x1d\b\x04"]["\x1d\x10\x03"]._visible = false;
         this["\x1c\t\x02"]._visible = false;
         this["\x1d\b\x04"]["\x1d\x0f\x1d"]._visible = false;
         this["\x1c\n\x02"]._visible = false;
         this["\x1d\b\x04"]["\x1d\x10\x01"]._visible = false;
         this["\x1c\n\x12"]._visible = false;
         this["\x1d\b\x04"]["\x1d\x10\x02"]._visible = false;
      }
      this.out({target:this["\x1c\x0b\x06"]});
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this["\x1c\x0b\n"].addEventListener("click",this);
      this["\x1c\x0b\r"].addEventListener("click",this);
      this["\x1c\t\x03"].addEventListener("click",this);
      this._btnBR.addEventListener("click",this);
      this["\x1c\x0b\x06"].addEventListener("click",this);
      this["\x1c\n\x02"].addEventListener("click",this);
      this["\x1c\n\x12"].addEventListener("click",this);
      this["\x1c\t\x02"].addEventListener("click",this);
      this["\x1c\x0b\n"].addEventListener("over",this);
      this["\x1c\x0b\r"].addEventListener("over",this);
      this["\x1c\t\x03"].addEventListener("over",this);
      this._btnBR.addEventListener("over",this);
      this["\x1c\x0b\x06"].addEventListener("over",this);
      this["\x1c\n\x02"].addEventListener("over",this);
      this["\x1c\n\x12"].addEventListener("over",this);
      this["\x1c\t\x02"].addEventListener("over",this);
      this["\x1c\x0b\n"].addEventListener("out",this);
      this["\x1c\x0b\r"].addEventListener("out",this);
      this["\x1c\t\x03"].addEventListener("out",this);
      this._btnBR.addEventListener("out",this);
      this["\x1c\x0b\x06"].addEventListener("out",this);
      this["\x1c\n\x02"].addEventListener("out",this);
      this["\x1c\n\x12"].addEventListener("out",this);
      this["\x1c\t\x02"].addEventListener("out",this);
   }
   function click(oEvent)
   {
      var _loc3_ = 0;
      switch(_loc2_.target)
      {
         case this["\x1c\n\x12"]:
            _loc3_ = 0;
            break;
         case this._btnBR:
            _loc3_ = 1;
            break;
         case this["\x1c\t\x02"]:
            _loc3_ = 2;
            break;
         case this["\x1c\t\x03"]:
            _loc3_ = 3;
            break;
         case this["\x1c\n\x02"]:
            _loc3_ = 4;
            break;
         case this["\x1c\x0b\n"]:
            _loc3_ = 5;
            break;
         case this["\x1c\x0b\x06"]:
            _loc3_ = 6;
            break;
         case this["\x1c\x0b\r"]:
            _loc3_ = 7;
      }
      this.api.network.Emotes["\x1a\x16\x04"](_loc3_);
      this["\x1b\x13\x13"]();
   }
   function over(oEvent)
   {
      _loc2_.target._alpha = 80;
      this.onMouseUp = undefined;
   }
   function out(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) !== this["\x1c\x0b\x06"])
      {
         _loc2_.target._alpha = 100;
      }
      else
      {
         this["\x1c\x0b\x06"]._alpha = 0;
      }
      this.onMouseUp = this["\x1e\x04\x16"];
   }
   function §\x1e\x04\x16§()
   {
      this["\x1b\x13\x13"]();
   }
   function onMouseUp()
   {
      this.out();
   }
}
