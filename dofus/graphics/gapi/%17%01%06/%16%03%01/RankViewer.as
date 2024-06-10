class dofus.graphics.gapi.§\x17\x01\x06§.§\x16\x03\x01§.RankViewer extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "RankViewer";
   function RankViewer()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls["\x16\x03\x01"].RankViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this["\x1d\x0f\x05"]._visible = false;
      this["\x1d\x0f\x06"]._visible = false;
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
   }
   function initTexts()
   {
      this["\x1d\x02\b"].text = this.api.lang.getText("PVP_MODE");
      this["\x1c\x19\t"].text = this.api.lang.getText("INFORMATIONS");
      this["\x1c\x16\x1c"].text = this.api.lang.getText("DISGRACE_POINTS");
      this["\x1c\x18\x19"].text = this.api.lang.getText("HONOUR_POINTS");
      this["\x1c\x1d\x10"].text = this.api.lang.getText("RANK");
      this["\x1e\x0f\x10"].text = this.api.lang.getText("RANK_SYSTEM_INFO");
   }
   function addListeners()
   {
      this.api.datacenter.Player.addEventListener("rankChanged",this);
      this._btnEnabled.addEventListener("click",this);
      this._btnEnabled.addEventListener("over",this);
      this._btnEnabled.addEventListener("out",this);
      this._btnDisgraceSanction.addEventListener("click",this);
      this._btnDisgraceSanction.addEventListener("over",this);
      this._btnDisgraceSanction.addEventListener("out",this);
   }
   function initData()
   {
      this["\x1e\x06\r"]["\x18\x19\x12"] = this.api.lang["\x17\x1b\x12"]();
      this.rankChanged({rank:this.api.datacenter.Player.rank});
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnEnabled":
            if(this.api.datacenter.Player.rank.enable)
            {
               this.api.network.Game["\x16\x05\x1c"]();
            }
            else
            {
               this.api.network.Game["\x19\x1b\x13"]("",true);
            }
            break;
         case "_btnDisgraceSanction":
            this.api.kernel.GameManager.showDisgraceSanction();
      }
   }
   function rankChanged(oEvent)
   {
      this["\x1e\x05\x04"] = _loc2_.rank;
      var _loc3_ = this.api.lang["\x17\x18\b"](this["\x1e\x05\x04"].value);
      this["\x1e\x06\x10"]["\x18\x19\x12"] = _loc3_.max;
      this["\x1e\x06\x10"]["\x18\x1d\x03"] = _loc3_.min;
      this["\x1e\x06\x10"].value = this["\x1e\x05\x04"]["\x18\x07\r"];
      this["\x1d\f\x06"].onRollOver = function()
      {
         this._parent.gapi.showTooltip(new ank.utils.ExtendedString(this._parent["\x1e\x05\x04"]["\x18\x07\r"])["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + " / " + new ank.utils.ExtendedString(this._parent["\x1e\x06\x10"]["\x18\x19\x12"])["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3),this,-10);
      };
      this["\x1d\f\x06"].onRollOut = function()
      {
         this._parent.gapi.hideTooltip();
      };
      this["\x1e\x06\r"].value = this["\x1e\x05\x04"].disgrace;
      this["\x1d\n\x16"].onRollOver = function()
      {
         this._parent.gapi.showTooltip(new ank.utils.ExtendedString(this._parent["\x1e\x05\x04"].disgrace)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + " / " + new ank.utils.ExtendedString(this._parent["\x1e\x06\r"]["\x18\x19\x12"])["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3),this,-10);
      };
      this["\x1d\n\x16"].onRollOut = function()
      {
         this._parent.gapi.hideTooltip();
      };
      if(this["\x1e\x05\x04"].enable && this["\x1c\x1d\x11"].text != undefined)
      {
         var _loc4_ = this.api.datacenter.Player.alignment.index;
         if(_loc4_ == 0)
         {
            this["\x1c\x1d\x12"].text = this.api.lang["\x17\x1d\x19"](0,0);
         }
         else
         {
            this["\x1c\x1d\x12"].text = _loc2_.rank.value + " (" + this.api.lang["\x17\x1d\x19"](_loc4_,this["\x1e\x05\x04"].value) + ")";
         }
         this["\x1c\x16\x1c"]._visible = true;
         this["\x1d\n\x16"]._visible = true;
         this["\x1e\x06\r"]._visible = true;
         this["\x1c\x1d\x10"].text = this.api.lang.getText("RANK");
         this["\x1c\x1d\x11"].text = "";
         this["\x1d\x02\b"].text = this.api.lang.getText("PVP_MODE") + " (" + this.api.lang.getText("ACTIVE") + ")";
         this["\x1d\x0f\x05"]._visible = true;
         this["\x1d\x0f\x06"]._visible = false;
         this._btnEnabled.label = this.api.lang.getText("DISABLE");
      }
      else if(this["\x1c\x1d\x12"].text != undefined)
      {
         this["\x1c\x16\x1c"]._visible = false;
         this["\x1d\n\x16"]._visible = false;
         this["\x1e\x06\r"]._visible = false;
         this["\x1c\x1d\x12"].text = "";
         this["\x1c\x1d\x10"].text = "";
         this["\x1c\x1d\x11"].text = this.api.lang.getText("PVP_MODE_DISABLED");
         this["\x1d\x02\b"].text = this.api.lang.getText("PVP_MODE") + " (" + this.api.lang.getText("INACTIVE") + ")";
         this["\x1d\x0f\x05"]._visible = false;
         this["\x1d\x0f\x06"]._visible = true;
         this._btnEnabled.label = this.api.lang.getText("ENABLE");
      }
      this._btnDisgraceSanction._visible = this.api.datacenter.Player.rank.disgrace > 0;
   }
   function over(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnEnabled":
            this.gapi.showTooltip(this.api.lang.getText(!this["\x1e\x05\x04"].enable ? "ENABLE_PVP" : "DISABLE_PVP"),this._btnEnabled,-20);
            break;
         case "_btnDisgraceSanction":
            this.gapi.showTooltip(this.api.lang.getText("DISGRACE_SANCTION_TOOLTIP"),this._btnDisgraceSanction,-20);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
