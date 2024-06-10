class dofus.graphics.gapi.§\x17\x01\x06§.§\x18\x03\x1d§.GuildBoostsViewerSpell extends ank.gapi.core.UIBasicComponent
{
   static var §\x16\x1d\x11§ = {ra:60,rb:0,ga:60,gb:0,ba:60,bb:0};
   static var §\x19\x0b\x11§ = {ra:100,rb:0,ga:100,gb:0,ba:100,bb:0};
   function GuildBoostsViewerSpell()
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
         this["\x1c\x1b\x0f"].text = _loc4_.name;
         this["\x1c\x1a\x07"].text = _loc4_.level == 0 ? "-" : _loc4_.level;
         this._ldrIcon.forceReload = true;
         this._ldrIcon.contentParams = _loc4_.params;
         this._ldrIcon.contentPath = _loc4_.iconFile;
         this._mcBorder._visible = true;
         this._mcBack._visible = true;
         var _loc5_ = this["\x1d\r\t"].gapi.api.datacenter.Player.guildInfos;
         this._btnBoost._visible = _loc5_["\x1a\x05\x15"]["\x16\x16\b"] && _loc5_["\x16\x15\x19"]("s",_loc4_.ID);
         if(_loc4_.level == 0)
         {
            this["\x1a\x18\x04"](this._ldrIcon,dofus.graphics.gapi.controls["\x18\x03\x1d"].GuildBoostsViewerSpell["\x16\x1d\x11"]);
            this._mcCross._visible = true;
         }
         else
         {
            this["\x1a\x18\x04"](this._ldrIcon,dofus.graphics.gapi.controls["\x18\x03\x1d"].GuildBoostsViewerSpell["\x19\x0b\x11"]);
            this._mcCross._visible = false;
         }
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1c\x1b\x0f"].text = "";
         this["\x1c\x1a\x07"].text = "";
         this._ldrIcon.contentPath = "";
         this._mcBorder._visible = false;
         this._mcBack._visible = false;
         this._mcCross._visible = false;
         this._btnBoost._visible = false;
         this["\x1a\x18\x04"](this._ldrIcon,dofus.graphics.gapi.controls["\x18\x03\x1d"].GuildBoostsViewerSpell["\x19\x0b\x11"]);
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
      this._mcBorder._visible = false;
      this._mcBack._visible = false;
      this._mcCross._visible = false;
      this._btnBoost._visible = false;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._btnBoost.addEventListener("click",this);
      this._btnBoost.addEventListener("over",this);
      this._btnBoost.addEventListener("out",this);
   }
   function click(oEvent)
   {
      this["\x1d\r\t"].gapi.api.network.Guild["\x16\x10\x06"](this["\x1e\x03\x18"].ID);
   }
   function over(oEvent)
   {
      var _loc3_ = this["\x1d\r\t"].gapi.api;
      var _loc4_ = _loc3_.datacenter.Player.guildInfos["\x17\x14\x16"]("s",this["\x1e\x03\x18"].ID);
      this["\x1d\r\t"].gapi.showTooltip(_loc3_.lang.getText("COST") + " : " + _loc4_.cost,_loc2_.target,-20);
   }
   function out(oEvent)
   {
      this["\x1d\r\t"].gapi.hideTooltip();
   }
}
