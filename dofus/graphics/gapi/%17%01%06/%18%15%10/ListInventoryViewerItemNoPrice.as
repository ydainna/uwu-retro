class dofus.graphics.gapi.§\x17\x01\x06§.§\x18\x15\x10§.ListInventoryViewerItemNoPrice extends ank.gapi.core.UIBasicComponent
{
   function ListInventoryViewerItemNoPrice()
   {
      super();
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      if(_loc2_)
      {
         this["\x1c\x1b\x0f"].text = !_loc2_ ? "" : (_loc4_.Quantity <= 1 ? "" : "x" + _loc4_.label + " ") + _loc4_.name;
         if(_loc4_.isMonsterInBidHouse)
         {
            if(this._mcMask == undefined)
            {
               var _loc5_ = this.createEmptyMovieClip("_mcMask",this.getNextHighestDepth());
               this["\x17\n\x0f"](_loc5_,0,0,20,20,0,0);
               this._ldrIcon.setMask(_loc5_);
            }
            this._ldrIcon._x = 10;
            this._ldrIcon._y = 16.5;
         }
         else
         {
            this._ldrIcon._x = 2;
            this._ldrIcon._y = 2;
         }
         this._ldrIcon.forceReload = !_loc4_.isMonsterInBidHouse ? false : true;
         this._ldrIcon.contentParams = _loc4_.params;
         this._ldrIcon.contentPath = !_loc2_ ? "" : _loc4_.iconFile;
         this["\x1c\x1b\x0f"].styleName = _loc4_.style != "" ? _loc4_.style + "LeftSmallLabel" : "BrownLeftSmallLabel";
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this._ldrIcon._x = 2;
         this._ldrIcon._y = 2;
         this["\x1c\x1b\x0f"].text = "";
         this._ldrIcon.contentPath = "";
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
   }
   function createChildren()
   {
      this["\x16\x05\f"]();
   }
   function size()
   {
      super.size();
      this.addToQueue({object:this,method:this["\x16\x05\f"]});
   }
   function §\x16\x05\f§()
   {
      this["\x1c\x1b\x0f"]["\x1a\x19\x18"](this["\x1d"] - 20,this["\x0e\x06"]);
   }
}
