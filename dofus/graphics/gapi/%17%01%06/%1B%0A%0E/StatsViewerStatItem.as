class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.§\x1b\n\x0e§.StatsViewerStatItem extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function StatsViewerStatItem()
   {
      super();
   }
   function §\x17\x07§(§\x18\x1b\x17§)
   {
      this["\x1d\r\t"] = _loc2_;
      return this.list;
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      if(_loc2_)
      {
         this["\x1e\x03\x18"] = _loc4_;
         if(_loc4_.isCat)
         {
            this["\x1d\t\r"]._visible = true;
            this._ldrIcon.contentPath = "";
            this["\x1c\x14\x14"].text = _loc4_.name;
            this["\x1c\x1b\x0f"].text = "";
            this["\x1c\x13\x0b"].text = "";
            this._lblItems.text = "";
            this["\x1c\x12\n"].text = "";
            this["\x1c\x14\x01"].text = "";
            this["\x1d\x03\x15"].text = "";
         }
         else
         {
            this["\x1d\t\r"]._visible = false;
            if(_loc4_.p != undefined)
            {
               this._ldrIcon.contentPath = _loc4_.p;
            }
            else
            {
               this._ldrIcon.contentPath = "";
            }
            this["\x1c\x14\x14"].text = "";
            this["\x1c\x1b\x0f"].text = _loc4_.name;
            if(_loc4_.s != 0)
            {
               this["\x1c\x13\x0b"].text = _loc4_.s;
               if(_loc4_.s > 0)
               {
                  this["\x1c\x13\x0b"].styleName = "GreenCenterSmallLabel";
               }
               else
               {
                  this["\x1c\x13\x0b"].styleName = "RedCenterSmallLabel";
               }
            }
            else
            {
               this["\x1c\x13\x0b"].text = "-";
               this["\x1c\x13\x0b"].styleName = "BrownCenterSmallLabel";
            }
            if(_loc4_.i != 0)
            {
               this._lblItems.text = _loc4_.i;
               if(_loc4_.i > 0)
               {
                  this._lblItems.styleName = "GreenCenterSmallLabel";
               }
               else
               {
                  this._lblItems.styleName = "RedCenterSmallLabel";
               }
            }
            else
            {
               this._lblItems.text = "-";
               this._lblItems.styleName = "BrownCenterSmallLabel";
            }
            if(_loc4_.d != 0)
            {
               this["\x1c\x12\n"].text = _loc4_.d;
               if(_loc4_.d > 0)
               {
                  this["\x1c\x12\n"].styleName = "GreenCenterSmallLabel";
               }
               else
               {
                  this["\x1c\x12\n"].styleName = "RedCenterSmallLabel";
               }
            }
            else
            {
               this["\x1c\x12\n"].text = "-";
               this["\x1c\x12\n"].styleName = "BrownCenterSmallLabel";
            }
            if(_loc4_.b != 0)
            {
               this["\x1c\x14\x01"].text = _loc4_.b;
               if(_loc4_.b > 0)
               {
                  this["\x1c\x14\x01"].styleName = "GreenCenterSmallLabel";
               }
               else
               {
                  this["\x1c\x14\x01"].styleName = "RedCenterSmallLabel";
               }
            }
            else
            {
               this["\x1c\x14\x01"].text = "-";
               this["\x1c\x14\x01"].styleName = "BrownCenterSmallLabel";
            }
            var _loc5_ = _loc4_.b + _loc4_.d + _loc4_.i + _loc4_.s;
            if(_loc5_ != 0)
            {
               this["\x1d\x03\x15"].text = String(_loc5_);
               if(_loc5_ > 0)
               {
                  this["\x1d\x03\x15"].styleName = "GreenCenterSmallLabel";
               }
               else
               {
                  this["\x1d\x03\x15"].styleName = "RedCenterSmallLabel";
               }
            }
            else
            {
               this["\x1d\x03\x15"].text = "-";
               this["\x1d\x03\x15"].styleName = "BrownCenterSmallLabel";
            }
         }
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1d\t\r"]._visible = false;
         this._ldrIcon.contentPath = "";
         this["\x1c\x14\x14"].text = "";
         this["\x1c\x1b\x0f"].text = "";
         this["\x1c\x13\x0b"].text = "";
         this["\x1c\x13\x0b"].styleName = "BrownCenterSmallLabel";
         this._lblItems.text = "";
         this._lblItems.styleName = "BrownCenterSmallLabel";
         this["\x1c\x12\n"].text = "";
         this["\x1c\x12\n"].styleName = "BrownCenterSmallLabel";
         this["\x1c\x14\x01"].text = "";
         this["\x1c\x14\x01"].styleName = "BrownCenterSmallLabel";
         this["\x1d\x03\x15"].text = "";
         this["\x1d\x03\x15"].styleName = "BrownCenterSmallLabel";
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
      this["\x1d\t\r"]._visible = false;
   }
}
