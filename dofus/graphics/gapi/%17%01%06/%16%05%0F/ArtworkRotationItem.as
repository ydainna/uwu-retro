class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.§\x16\x05\x0f§.ArtworkRotationItem extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   static var §\x16\x1b\x10§ = "ArtworkRotationItem";
   static var §\x1a\n\x10§ = [0,45,89,134,178];
   static var §\x18\x03\x11§ = [0,35,70,106,141];
   static var §\x16\x0e\x14§ = [0,25,50,75,100];
   static var §\x1a\x04\x16§ = [100,75,50,25,0];
   function ArtworkRotationItem()
   {
      super();
      this["\x1d\x07\x17"]._visible = false;
   }
   function §\x1c\x11§(§\x19\x0e\b§)
   {
      this["\x1d\x1c\x1a"] = Number(_loc2_);
      return this["\b\x1c"]();
   }
   function §\x1b\x1b§(§\x19\r\x1a§)
   {
      this["\x1d\x1c\t"] = Number(_loc2_);
      return this.scale;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls["\x16\x05\x0f"].ArtworkRotationItem.CLASS_NAME);
   }
   function §\x18\x15\x14§(§\x19\x05\x05§)
   {
      var _loc3_ = dofus.Constants["\x18\x04\x14"] + _loc2_ + this["\x1d\x1c\x1a"] + ".swf";
      this._ldrArtwork.addEventListener("initialization",this);
      this._ldrArtwork.contentPath = _loc3_;
      this["\x1d\x07\x17"]["\x16\x15\x06"] = true;
      this["\x1d\x07\x17"]._xscale = this["\x1d\x07\x17"]._yscale = 85;
      this._ldrArtwork.setMask(this["\x1d\x07\x17"]);
   }
   function §\x16\x1d\n§(§\x16\x0f\x15§, §\x16\b\x17§)
   {
      if(_loc3_ == undefined)
      {
         _loc3_ = false;
      }
      var §\x19\t\x0e§ = dofus.graphics.gapi.controls["\x16\x05\x0f"].ArtworkRotationItem["\x1a\n\x10"].length;
      var §\x17\x03\x10§ = new Color(this._ldrArtwork);
      var §\x1a\x02\x10§ = new Object();
      var §\x19\b\b§ = !_loc2_ ? 0 : eval("\x19\t\x0e") - 1;
      if(!_loc3_)
      {
         eval("\x1a\x02\x10").ra = dofus.graphics.gapi.controls["\x16\x05\x0f"].ArtworkRotationItem["\x1a\x04\x16"][eval("\x19\b\b")];
         eval("\x1a\x02\x10").rb = dofus.graphics.gapi.controls["\x16\x05\x0f"].ArtworkRotationItem["\x1a\n\x10"][eval("\x19\b\b")];
         eval("\x1a\x02\x10").ga = dofus.graphics.gapi.controls["\x16\x05\x0f"].ArtworkRotationItem["\x1a\x04\x16"][eval("\x19\b\b")];
         eval("\x1a\x02\x10").gb = dofus.graphics.gapi.controls["\x16\x05\x0f"].ArtworkRotationItem["\x18\x03\x11"][eval("\x19\b\b")];
         eval("\x1a\x02\x10").ba = dofus.graphics.gapi.controls["\x16\x05\x0f"].ArtworkRotationItem["\x1a\x04\x16"][eval("\x19\b\b")];
         eval("\x1a\x02\x10").bb = dofus.graphics.gapi.controls["\x16\x05\x0f"].ArtworkRotationItem["\x16\x0e\x14"][eval("\x19\b\b")];
         eval("\x17\x03\x10").setTransform(eval("\x1a\x02\x10"));
      }
      else
      {
         var nInc = !_loc2_ ? 1 : -1;
         this.onEnterFrame = function()
         {
            eval("\x1a\x02\x10").ra = dofus.graphics.gapi.controls["\x16\x05\x0f"].ArtworkRotationItem["\x1a\x04\x16"][eval("\x19\b\b")];
            eval("\x1a\x02\x10").rb = dofus.graphics.gapi.controls["\x16\x05\x0f"].ArtworkRotationItem["\x1a\n\x10"][eval("\x19\b\b")];
            eval("\x1a\x02\x10").ga = dofus.graphics.gapi.controls["\x16\x05\x0f"].ArtworkRotationItem["\x1a\x04\x16"][eval("\x19\b\b")];
            eval("\x1a\x02\x10").gb = dofus.graphics.gapi.controls["\x16\x05\x0f"].ArtworkRotationItem["\x18\x03\x11"][eval("\x19\b\b")];
            eval("\x1a\x02\x10").ba = dofus.graphics.gapi.controls["\x16\x05\x0f"].ArtworkRotationItem["\x1a\x04\x16"][eval("\x19\b\b")];
            eval("\x1a\x02\x10").bb = dofus.graphics.gapi.controls["\x16\x05\x0f"].ArtworkRotationItem["\x16\x0e\x14"][eval("\x19\b\b")];
            eval("\x17\x03\x10").setTransform(eval("\x1a\x02\x10"));
            set("\x19\b\b",eval("\x19\b\b") + nInc);
            if(eval("\x19\b\b") >= eval("\x19\t\x0e") || eval("\x19\b\b") < 0)
            {
               this["\x1e\x04\x06"] = eval("\x1a\x02\x10");
               delete this.onEnterFrame;
            }
         };
      }
   }
   function initialization(oEvent)
   {
      _loc2_.clip._xscale = _loc2_.clip._yscale = this["\x1d\x1c\t"];
   }
}
