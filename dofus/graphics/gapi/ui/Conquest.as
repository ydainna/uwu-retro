class dofus.§\x18\x03\x10§.gapi.ui.Conquest extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Conquest";
   var §\x1e\b\x19§ = "Stats";
   function Conquest()
   {
      super();
   }
   function §\x11\x14§(§\x1b\b\x1b§)
   {
      this["\x1e\b\x19"] = _loc2_;
      return this["\x1e\x17\x17"]();
   }
   function §\x1a\x1c\t§(§\x1a\x07\x1c§)
   {
      for(var i in _loc2_)
      {
         this._mcTabViewer[i] = _loc2_[i];
      }
   }
   function §\x1a\x15\x02§(§\x1b\x19\x0e§, §\x16\x04\x1a§)
   {
      this["\x1e\x01\x0e"] = _loc2_;
      this["\x1d\x12\x1c"] = _loc3_;
      this.addToQueue({object:this,method:this["\x1b\x14\x05"]});
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Conquest.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      switch(this["\x1e\b\x19"])
      {
         case "Zones":
            if(!this.api.kernel.OptionsManager.isMapConquestFilterEnabled)
            {
               this.api.network.Conquest["\x1b\x19\x11"]();
            }
            break;
         case "Join":
            if(!dofus.graphics.gapi.controls.ConquestJoinViewer(this._mcTabViewer).noUnsubscribe)
            {
               this.api.network.Conquest["\x1a\x07\b"]();
               break;
            }
      }
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this["\x1d\x0e\x12"]._visible = false;
      this["\x1d\x0f\x05"]._visible = false;
      this["\x1d\x0f\x06"]._visible = false;
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.setCurrentTab,params:[this["\x1e\b\x19"]]});
   }
   function addListeners()
   {
      this.api.datacenter.Player.addEventListener("rankChanged",this);
      this.api.datacenter.Player.addEventListener("alignmentChanged",this);
      this._btnClose.addEventListener("click",this);
      this._btnTabJoin.addEventListener("click",this);
      this._btnTabStats.addEventListener("click",this);
      this._btnTabZones.addEventListener("click",this);
      this._ctrAlignment.addEventListener("over",this);
      this._ctrAlignment.addEventListener("out",this);
      var ref = this;
      this["\x1d\b\x10"].onRollOver = function()
      {
         ref.over({target:this});
      };
      this["\x1d\b\x10"].onRollOut = function()
      {
         ref.out({target:this});
      };
   }
   function initTexts()
   {
      this._lblTitle.text = this.api.lang.getText("CONQUEST_WORD") + " " + this.api.lang.getText("AND") + " " + this.api.lang.getText("HUNT");
      this["\x1c\x18\r"].text = this.api.lang.getText("RANK");
      this["\x1c\x13\b"].text = this.api.lang.getText("BALANCE_WORD");
      this._btnTabStats.label = this.api.lang.getText("STATS");
      this._btnTabZones.label = this.api.lang.getText("ZONES_WORD");
      this._btnTabJoin.label = this.api.lang.getText("DEFEND");
   }
   function initData()
   {
      this.rankChanged({rank:this.api.datacenter.Player.rank});
      this.alignmentChanged({alignment:this.api.datacenter.Player.alignment});
      this.api.network.Conquest["\x1a\r\x14"]();
   }
   function setCurrentTab(§\x1b\x04\x07§)
   {
      this["\x1d\n\x04"].removeMovieClip();
      var _loc3_ = this["_btnTab" + this["\x1e\b\x19"]];
      var _loc4_ = this["_btnTab" + _loc2_];
      _loc3_.selected = true;
      _loc3_.enabled = true;
      _loc4_.selected = false;
      _loc4_.enabled = false;
      switch(this["\x1e\b\x19"])
      {
         case "Zones":
            if(!this.api.kernel.OptionsManager.isMapConquestFilterEnabled)
            {
               this.api.network.Conquest["\x1b\x19\x11"]();
            }
            break;
         case "Join":
            if(!dofus.graphics.gapi.controls.ConquestJoinViewer(this._mcTabViewer).noUnsubscribe)
            {
               this.api.network.Conquest["\x1a\x07\b"]();
               break;
            }
      }
      this["\x1e\b\x19"] = _loc2_;
      this["\x1b\x14\x13"]();
   }
   function §\x1b\x14\x13§()
   {
      this._mcTabViewer.removeMovieClip();
      switch(this["\x1e\b\x19"])
      {
         case "Stats":
            this.attachMovie("ConquestStatsViewer","_mcTabViewer",this.getNextHighestDepth(),{_x:this["\x1d\x0e\x12"]._x,_y:this["\x1d\x0e\x12"]._y});
            break;
         case "Zones":
            this.attachMovie("ConquestZonesViewer","_mcTabViewer",this.getNextHighestDepth(),{_x:this["\x1d\x0e\x12"]._x,_y:this["\x1d\x0e\x12"]._y});
            if(!this.api.kernel.OptionsManager.isMapConquestFilterEnabled)
            {
               this.api.network.Conquest["\x1b\x19\x10"]();
            }
            break;
         case "Join":
            this.attachMovie("ConquestJoinViewer","_mcTabViewer",this.getNextHighestDepth(),{_x:this["\x1d\x0e\x12"]._x,_y:this["\x1d\x0e\x12"]._y});
            this.api.network.Conquest["\x1a\x07\x07"]();
      }
   }
   function §\x1b\x14\x05§()
   {
      var _loc2_ = this.api.lang["\x17\x13\x1a"]();
      var _loc3_ = new String();
      for(var i in _loc2_)
      {
         if(this["\x1e\x01\x0e"] >= _loc2_[i].s && this["\x1e\x01\x0e"] <= _loc2_[i].e)
         {
            _loc3_ = String(_loc2_[i].n);
            this["\x1e\x07\x1a"] = String(_loc2_[i].d);
         }
      }
      this["\x1c\x13\t"].text = this["\x1e\x01\x0e"] + "%" + (_loc3_.length <= 0 ? "" : " (" + _loc3_ + ")");
   }
   function destroy()
   {
      switch(this["\x1e\b\x19"])
      {
         case "Zones":
            if(!this.api.kernel.OptionsManager.isMapConquestFilterEnabled)
            {
               this.api.network.Conquest["\x1b\x19\x11"]();
            }
            break;
         case "Join":
            this.api.network.Conquest["\x1a\x07\b"]();
      }
   }
   function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._ctrAlignment:
            this.gapi.showTooltip(this.api.datacenter.Player.alignment.name,_loc2_.target,_loc2_.target.height + 5);
            break;
         case this["\x1d\b\x10"]:
            var _loc3_ = new String();
            if(this["\x1e\x07\x1a"].length > 0)
            {
               _loc3_ += this["\x1e\x07\x1a"];
            }
            if(!_global.isNaN(this["\x1e\x01\x0e"]))
            {
               _loc3_ += "\n\n" + this.api.lang.getText("CONQUEST_WORLD_BALANCE") + ": " + this["\x1e\x01\x0e"] + "%";
            }
            if(!_global.isNaN(this["\x1d\x12\x1c"]))
            {
               _loc3_ += "\n" + this.api.lang.getText("CONQUEST_ZONE_BALANCE") + ": " + this["\x1d\x12\x1c"] + "%";
            }
            this.gapi.showTooltip(_loc3_,_loc2_.target,-20);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnClose:
            this["\x16\x15\n"]();
            break;
         case this._btnTabJoin:
         case this._btnTabStats:
         case this._btnTabZones:
            this.setCurrentTab(_loc2_.target._name.substr(7));
      }
   }
   function rankChanged(oEvent)
   {
      this._rRank = dofus.datacenter..Rank(_loc2_.rank);
      if(this._rRank.enable && this["\x1d\x02\b"].text != undefined)
      {
         var _loc3_ = this.api.datacenter.Player.alignment.index;
         if(_loc3_ == 0)
         {
            this["\x1c\x18\x0e"].text = this.api.lang["\x17\x1d\x19"](0,0);
         }
         else
         {
            this["\x1c\x18\x0e"].text = _loc2_.rank.value + " (" + this.api.lang["\x17\x1d\x19"](_loc3_,this._rRank.value) + ")";
         }
         this["\x1d\x02\b"].text = this.api.lang.getText("PVP_MODE") + " (" + this.api.lang.getText("ACTIVE") + ")";
         this["\x1d\x0f\x05"]._visible = true;
         this["\x1d\x0f\x06"]._visible = false;
      }
      else if(this["\x1d\x02\b"].text != undefined)
      {
         this["\x1c\x18\x0e"].text = "-";
         this["\x1d\x02\b"].text = this.api.lang.getText("PVP_MODE") + " (" + this.api.lang.getText("INACTIVE") + ")";
         this["\x1d\x0f\x05"]._visible = false;
         this["\x1d\x0f\x06"]._visible = true;
      }
   }
   function alignmentChanged(oEvent)
   {
      this._ctrAlignment.contentPath = _loc2_.alignment.iconFile;
   }
}
