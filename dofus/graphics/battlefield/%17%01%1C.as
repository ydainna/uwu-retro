class dofus.graphics.battlefield.§\x17\x01\x1c§ extends ank.gapi.core.UIBasicComponent
{
   function §\x17\x01\x1c§(§\x16\b\x11§, §\x19\x13\x07§)
   {
      super();
      this.initialize();
      this.drawClip(_loc3_,_loc4_);
   }
   function §\x1e\x1b\x11§()
   {
      return 33;
   }
   function §\r\x0e§()
   {
      return 62;
   }
   function initialize()
   {
      this.attachMovie("CraftResultOverHeadBubble","_mcBack",10);
   }
   function §\x1a\x0e\x0b§()
   {
      this._mcBack._yscale = -100;
      this._mcBack._y += this._mcBack._height - 7;
   }
   function drawClip(§\x16\b\x11§, §\x19\x13\x07§)
   {
      if(_loc3_ == undefined)
      {
         this.attachMovie("CraftResultOverHeadCross","_mcCross",40);
         this._ldrItem.removeMovieClip();
      }
      else
      {
         this.attachMovie("GAPILoader","_ldrItem",20,{_x:6,_y:4,_width:20,_height:20,scaleContent:true,contentPath:_loc3_.iconFile});
         this._mcCross.removeMovieClip();
      }
      if(!_loc2_)
      {
         this.attachMovie("CraftResultOverHeadMiss","_mcMiss",30);
      }
      else
      {
         this._mcMiss.removeMovieClip();
      }
   }
}
