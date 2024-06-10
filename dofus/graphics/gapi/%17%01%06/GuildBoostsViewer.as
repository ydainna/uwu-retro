class dofus.graphics.gapi.§\x17\x01\x06§.GuildBoostsViewer extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "GuildBoostsViewer";
   function GuildBoostsViewer()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.GuildBoostsViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this._btnBoostWisdom._visible = false;
      this._btnBoostPod._visible = false;
      this._btnBoostPop._visible = false;
      this._btnBoostPP._visible = false;
   }
   function addListeners()
   {
      this["\x1d\x07\x04"].addEventListener("itemSelected",this);
      this._btnBoostPP.addEventListener("click",this);
      this._btnBoostWisdom.addEventListener("click",this);
      this._btnBoostPod.addEventListener("click",this);
      this._btnBoostPop.addEventListener("click",this);
      this._btnBoostPP.addEventListener("over",this);
      this._btnBoostWisdom.addEventListener("over",this);
      this._btnBoostPod.addEventListener("over",this);
      this._btnBoostPop.addEventListener("over",this);
      this._btnBoostPP.addEventListener("out",this);
      this._btnBoostWisdom.addEventListener("out",this);
      this._btnBoostPod.addEventListener("out",this);
      this._btnBoostPop.addEventListener("out",this);
   }
   function initTexts()
   {
      this["\x1c\x1a\x12"].text = this.api.lang.getText("LIFEPOINTS");
      this["\x1c\x13\x18"].text = this.api.lang.getText("DAMAGES_BONUS");
      this["\x1c\x14\b"].text = this.api.lang.getText("DISCERNMENT");
      this["\x1c\x14\n"].text = this.api.lang.getText("WISDOM");
      this["\x1c\x14\x02"].text = this.api.lang.getText("WEIGHT");
      this["\x1c\x14\x06"].text = this.api.lang.getText("TAX_COLLECTOR_COUNT");
      this["\x1c\x14\x04"].text = this.api.lang.getText("GUILD_BONUSPOINTS");
      this["\x1c\x1a\x07"].text = this.api.lang.getText("LEVEL_SMALL");
      this["\x1d\x02\x18"].text = this.api.lang.getText("GUILD_TAXSPELLS");
      this["\x1d\x02\x16"].text = this.api.lang.getText("GUILD_TAXCHARACTERISTICS");
      this["\x1c\x16\x17"].text = this.api.lang.getText("GUILD_RIGHTS_BOOST") + " " + this.api.lang.getText("OF") + " " + this.api.lang.getText("TAXCOLLECTOR").toLowerCase();
   }
   function §\x1b\x14\x14§()
   {
      this.gapi.hideTooltip();
      var _loc2_ = this.api.datacenter.Player.guildInfos;
      this["\x1c\x1a\x14"].text = _loc2_["\x1b\x0e\x0b"] + "";
      this["\x1c\x13\x1b"].text = _loc2_["\x1b\x0e\x03"] + "";
      this["\x1c\x14\x03"].text = _loc2_["\x1b\x0e\f"] + "";
      this["\x1c\x14\t"].text = _loc2_["\x1b\x0e\x0e"] + "";
      this["\x1c\x14\x0b"].text = _loc2_["\x1b\x0e\x10"] + "";
      this["\x1c\x14\x07"].text = _loc2_["\x1b\x0e\r"] + "";
      this["\x1c\x14\x05"].text = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("POINTS",[_loc2_["\x16\x10\x05"]]),"m",_loc2_["\x16\x10\x05"] < 2);
      this["\x1d\x07\x04"].dataProvider = _loc2_["\x1b\x0e\x0f"];
      var _loc3_ = _loc2_["\x1a\x05\x15"]["\x16\x16\b"] && _loc2_["\x16\x10\x05"] > 0;
      this._btnBoostPod._visible = _loc3_ && _loc2_["\x16\x15\x19"]("w");
      this._btnBoostPP._visible = _loc3_ && _loc2_["\x16\x15\x19"]("p");
      this._btnBoostWisdom._visible = _loc3_ && _loc2_["\x16\x15\x19"]("x");
      this._btnBoostPop._visible = _loc3_ && _loc2_["\x16\x15\x19"]("c");
   }
   function itemSelected(oEvent)
   {
      this.gapi.loadUIComponent("SpellInfos","SpellInfos",{spell:_loc2_.row.item});
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnBoostPod":
            this.api.sounds["\x17\x0e\x06"]["\x19\x18\t"]();
            this.api.network.Guild["\x16\x10\x04"]("w");
            break;
         case "_btnBoostPP":
            this.api.sounds["\x17\x0e\x06"]["\x19\x18\t"]();
            this.api.network.Guild["\x16\x10\x04"]("p");
            break;
         case "_btnBoostWisdom":
            this.api.sounds["\x17\x0e\x06"]["\x19\x18\t"]();
            this.api.network.Guild["\x16\x10\x04"]("x");
            break;
         case "_btnBoostPop":
            this.api.sounds["\x17\x0e\x06"]["\x19\x18\t"]();
            this.api.network.Guild["\x16\x10\x04"]("c");
      }
   }
   function over(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnBoostPod":
            var _loc3_ = this.api.datacenter.Player.guildInfos["\x17\x14\x16"]("w");
            var _loc4_ = this.api.lang["\x17\x18\r"]("w");
            this.gapi.showTooltip(this.api.lang.getText("COST") + " : " + _loc3_.cost + " " + this.api.lang.getText("POUR") + " " + _loc3_.count + " (max : " + _loc4_ + ")",_loc2_.target,-20);
            break;
         case "_btnBoostPP":
            var _loc5_ = this.api.datacenter.Player.guildInfos["\x17\x14\x16"]("p");
            var _loc6_ = this.api.lang["\x17\x18\r"]("p");
            this.gapi.showTooltip(this.api.lang.getText("COST") + " : " + _loc5_.cost + " " + this.api.lang.getText("POUR") + " " + _loc5_.count + " (max : " + _loc6_ + ")",_loc2_.target,-20);
            break;
         case "_btnBoostWisdom":
            var _loc7_ = this.api.datacenter.Player.guildInfos["\x17\x14\x16"]("x");
            var _loc8_ = this.api.lang["\x17\x18\r"]("x");
            this.gapi.showTooltip(this.api.lang.getText("COST") + " : " + _loc7_.cost + " " + this.api.lang.getText("POUR") + " " + _loc7_.count + " (max : " + _loc8_ + ")",_loc2_.target,-20);
            break;
         case "_btnBoostPop":
            var _loc9_ = this.api.datacenter.Player.guildInfos["\x17\x14\x16"]("c");
            var _loc10_ = this.api.lang["\x17\x18\r"]("c");
            this.gapi.showTooltip(this.api.lang.getText("COST") + " : " + _loc9_.cost + " " + this.api.lang.getText("POUR") + " " + _loc9_.count + " (max : " + _loc10_ + ")",_loc2_.target,-20);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function yes(oEvent)
   {
   }
}
