class ank.gapi.§\x17\x01\x06§.list.DefaultCellRenderer extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function DefaultCellRenderer()
   {
      super();
   }
   function setState(§\x1b\b\x15§)
   {
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      if(_loc2_)
      {
         this._lblText.text = _loc3_;
         if(_loc4_.icon != undefined)
         {
            this._lblText._x = this._nIconOffset;
            this.attachMovie("GAPILoader","_ldrIcon",100,{_x:-5,_y:-5,_height:15,_width:15,contentPath:_loc4_.icon,centerContent:true,scaleContent:true});
         }
         else
         {
            this._ldrIcon.removeMovieClip();
            this._lblText._x = 0;
         }
      }
      else if(this._lblText.text != undefined)
      {
         this._lblText.text = "";
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
   }
   function createChildren()
   {
      this.attachMovie("Label","_lblText",10,{styleName:this.getStyle().defaultstyle});
      this._nIconOffset = this._lblText._x + 20;
   }
   function size()
   {
      super.size();
      this._lblText["\x1a\x19\x18"](this["\x1d"],this["\x0e\x06"]);
   }
   function draw()
   {
      var _loc2_ = this.getStyle();
      this._lblText.styleName = _loc2_.defaultstyle;
   }
}
