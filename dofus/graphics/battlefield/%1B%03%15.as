class dofus.§\x18\x03\x10§.battlefield.SmileyOverHead extends MovieClip
{
   function SmileyOverHead(nSmileyID)
   {
      super();
      this.drawClip(_loc3_);
   }
   function §\x1e\x1b\x11§()
   {
      return 20;
   }
   function §\r\x0e§()
   {
      return 20;
   }
   function drawClip(nSmileyID)
   {
      this.attachMovie("GAPILoader","_ldrSmiley",10,{_x:-10,_width:20,_height:20,scaleContent:true,contentPath:dofus.Constants["\x1b\x03\x16"] + _loc2_ + ".swf"});
   }
}
