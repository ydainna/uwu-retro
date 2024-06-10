class dofus.graphics.gapi.§\x17\x01\x06§.§\x16\x1e\x16§.ConquestZonesViewerVillageItem extends dofus.graphics.gapi.core.§\x17\t\n§
{
   function ConquestZonesViewerVillageItem()
   {
      super();
      this.api = _global.api;
      this["\x1d\x05\x02"]._alpha = 0;
      this["\x1d\x0e\x03"]._alpha = 0;
      this["\x1d\x07\x16"]._alpha = 0;
      this["\x1d\n\x19"]._alpha = 0;
      this["\x1d\n\x1b"]._alpha = 0;
      this["\x1d\n\x1a"]._alpha = 0;
      this["\x1d\x0e\x1c"]._alpha = 0;
      this["\x1d\x0f\x01"]._alpha = 0;
      this["\x1d\x0e\x1d"]._alpha = 0;
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
         this["\x1d\x04\x01"].text = this.api.lang["\x17\x1b\x06"](_loc4_.id).n;
         if(_loc4_.alignment == -1)
         {
            this["\x1d\x05\x02"]._alpha = 0;
            this["\x1d\x0e\x03"]._alpha = 100;
         }
         else
         {
            this["\x1d\x0e\x03"]._alpha = 0;
            this["\x1d\x05\x02"]._alpha = 100;
            this["\x1d\x05\x02"].contentPath = dofus.Constants["\x16\x02\x1c"] + _loc4_.alignment + ".swf";
         }
         if(_loc4_["\x17\t\x12"])
         {
            this["\x1d\n\x19"]._alpha = 0;
            this["\x1d\n\x1b"]._alpha = 100;
         }
         else
         {
            this["\x1d\n\x19"]._alpha = 100;
            this["\x1d\n\x1b"]._alpha = 0;
         }
         if(_loc4_["\x1a\x07\x04"])
         {
            this["\x1d\x0e\x1c"]._alpha = 0;
            this["\x1d\x0f\x01"]._alpha = 100;
         }
         else
         {
            this["\x1d\x0e\x1c"]._alpha = 100;
            this["\x1d\x0f\x01"]._alpha = 0;
         }
         var ref = this;
         this["\x1d\x07\x16"].onRollOver = function()
         {
            ref.over({target:this});
         };
         this["\x1d\x07\x16"].onRollOut = function()
         {
            ref.out({target:this});
         };
         this["\x1d\n\x1a"].onRollOver = function()
         {
            ref.over({target:this});
         };
         this["\x1d\n\x1a"].onRollOut = function()
         {
            ref.out({target:this});
         };
         this["\x1d\x0e\x1d"].onRollOver = function()
         {
            ref.over({target:this});
         };
         this["\x1d\x0e\x1d"].onRollOut = function()
         {
            ref.out({target:this});
         };
      }
      else if(this["\x1d\x04\x01"].text != undefined)
      {
         this["\x1d\x04\x01"].text = "";
         this["\x1d\x05\x02"]._alpha = 0;
         this["\x1d\x05\x02"].contentPath = undefined;
         this["\x1d\x0e\x03"]._alpha = 0;
         this["\x1d\x07\x16"]._alpha = 0;
         this["\x1d\n\x19"]._alpha = 0;
         this["\x1d\n\x1b"]._alpha = 0;
         this["\x1d\n\x1a"]._alpha = 0;
         this["\x1d\x0e\x1c"]._alpha = 0;
         this["\x1d\x0f\x01"]._alpha = 0;
         this["\x1d\x0e\x1d"]._alpha = 0;
      }
   }
   function over(§\x17\x0e\x03§)
   {
      switch(_loc2_.target)
      {
         case this["\x1d\x07\x16"]:
            this.api.ui.showTooltip(this.api.lang.getText("ALIGNMENT") + ": " + (this["\x1e\x03\x18"].alignment <= 0 ? (this["\x1e\x03\x18"].alignment != -1 ? this.api.lang.getText("NEUTRAL_WORD") : this.api.lang.getText("NON_ALIGNED")) : new dofus.datacenter.Alignment(this["\x1e\x03\x18"].alignment,1).name),_root._xmouse,_root._ymouse - 20);
            break;
         case this["\x1d\n\x1a"]:
            this.api.ui.showTooltip(!this["\x1e\x03\x18"]["\x17\t\x12"] ? this.api.lang.getText("CONQUEST_VILLAGE_DOOR_CLOSE") : this.api.lang.getText("CONQUEST_VILLAGE_DOOR_OPEN"),_root._xmouse,_root._ymouse - 20);
            break;
         case this["\x1d\x0e\x1d"]:
            this.api.ui.showTooltip(!this["\x1e\x03\x18"]["\x1a\x07\x04"] ? this.api.lang.getText("CONQUEST_VILLAGE_PRISM_CLOSE") : this.api.lang.getText("CONQUEST_VILLAGE_PRISM_OPEN"),_root._xmouse,_root._ymouse - 20);
      }
   }
   function out(§\x17\x0e\x03§)
   {
      this.api.ui.hideTooltip();
   }
}
