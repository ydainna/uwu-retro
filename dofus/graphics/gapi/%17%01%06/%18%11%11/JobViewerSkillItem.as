class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.§\x18\x11\x11§.JobViewerSkillItem extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function JobViewerSkillItem()
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
         this._mcArrow._visible = true;
         this["\x1d\x01\x14"].text = _loc4_.description;
         this["\x1d\x01\x17"].text = _loc4_["\x18\x0b\x1d"] != undefined ? _loc4_["\x18\x0b\x1d"] : "";
         this["\x1d\x01\x14"]["\x1a\x19\x18"](this["\x1d\x01\x17"].width - this["\x1d\x01\x17"].textWidth - 15,this["\x0e\x06"]);
         if(_loc4_.item != undefined)
         {
            if(_loc4_["\x1a\x03\r"] == _loc4_["\x1a\x03\x0e"])
            {
               var _loc5_ = "(#4s)  #1";
            }
            else
            {
               _loc5_ = "(#4s)  #1{~2 " + this["\x1d\r\t"].gapi.api.lang.getText("TO_RANGE") + " }#2";
            }
            this["\x1c\x1d\t"].text = ank.utils.PatternDecoder.getDescription(_loc5_,new Array(_loc4_["\x1a\x03\r"],_loc4_["\x1a\x03\x0e"],_loc4_["\x1a\x03\x0f"],Math.round(_loc4_["\x1a\x03\x10"] / 100) / 10));
            this["\x1c\r\x1c"].contentData = _loc4_.item;
         }
         else
         {
            var _loc6_ = this._parent._parent._parent._parent;
            var _loc7_ = ank.utils.PatternDecoder["\x16\x1d\x15"](this["\x1d\r\t"].gapi.api.lang.getText("SLOT"),"n",_loc4_["\x1a\x03\r"] < 2);
            var _loc8_ = "#1 " + _loc7_ + " (#2%)";
            this["\x1c\x1d\t"].text = ank.utils.PatternDecoder.getDescription(_loc8_,new Array(_loc4_["\x1a\x03\r"],_loc4_["\x1a\x03\x10"]));
            this["\x1c\r\x1c"].contentData = undefined;
         }
      }
      else if(this["\x1d\x01\x17"].text != undefined)
      {
         this._mcArrow._visible = false;
         this["\x1d\x01\x17"].text = "";
         this["\x1d\x01\x14"].text = "";
         this["\x1c\x1d\t"].text = "";
         this["\x1c\r\x1c"].contentData = undefined;
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
      this._mcArrow._visible = false;
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this["\x1c\r\x1c"].addEventListener("over",this);
      this["\x1c\r\x1c"].addEventListener("out",this);
   }
   function over(oEvent)
   {
      var _loc3_ = _loc2_.target.contentData;
      this["\x1d\r\t"]._parent._parent.gapi.showTooltip(_loc3_.name,_loc2_.target,-20);
   }
   function out(oEvent)
   {
      this["\x1d\r\t"]._parent._parent.gapi.hideTooltip();
   }
}
