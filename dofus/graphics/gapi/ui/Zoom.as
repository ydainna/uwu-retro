class dofus.§\x18\x03\x10§.gapi.ui.Zoom extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Zoom";
   function Zoom()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Zoom.CLASS_NAME);
      this._visible = false;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._btnCancel.addEventListener("click",this);
      this._btnCancel.addEventListener("over",this);
      this._btnCancel.addEventListener("out",this);
      this["\x1e\x10\x07"].addEventListener("change",this);
      this["\x1e\x10\x07"].min = this.api.gfx["\x18\x02\x12"]();
      var _loc2_ = this.createEmptyMovieClip("\x18\x1e\x14",this.getNextHighestDepth());
      var oAPI = this.api;
      _loc2_.onMouseUp = function()
      {
         oAPI["\x18\x1e\x11"]["\x1b\x0b\x07"](false);
      };
      Mouse.addListener(this);
   }
   function §\x1a\x1b\n§()
   {
      this.api.kernel.GameManager.zoomGfx(this["\x1e\x10\x07"].value,this["\x1e\x01\x1b"],this["\x1e\x02\x04"]);
   }
   function onMouseWheel(§\x19\x10\x10§, §\x18\x1b\f§)
   {
      if(!dofus.graphics.gapi.ui.Zoom["\x18\x10\x13"]())
      {
         return undefined;
      }
      if(this["\x1e\x10\x07"].value == 100)
      {
         this["\x1e\x01\x1b"] = _root._xmouse;
         this["\x1e\x02\x04"] = _root._ymouse;
      }
      this["\x1e\x10\x07"].value += _loc2_ * 10;
      this["\x1a\x1b\n"]();
   }
   static function §\x18\x10\x13§()
   {
      return Key.isDown(Key.CONTROL) && !Key.isDown(Key.SHIFT);
   }
}
