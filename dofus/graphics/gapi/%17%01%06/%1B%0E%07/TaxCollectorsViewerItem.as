class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.§\x1b\x0e\x07§.TaxCollectorsViewerItem extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function TaxCollectorsViewerItem()
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
      this["\x1e\x03\x18"]["\x1a\x05\x16"].removeEventListener("modelChanged",this);
      this["\x1e\x03\x18"]["\x16\x06\x1b"].removeEventListener("modelChanged",this);
      this["\x1e\x03\x18"] = _loc4_;
      if(_loc2_)
      {
         this["\x1c\x1b\x0f"].text = _loc4_.name;
         this["\x1c\x12\x15"].text = _loc4_.areaName;
         this["\x1d\x02\x0e"].text = _loc4_.subareaName;
         this._btnLocate.label = "[" + _loc4_.coordinates + "]";
         this._btnLocate._visible = true;
         this._mcIsMyTaxCollector._visible = _loc4_["\x18\x0e\x1c"];
         this["\x1b\x01\x06"]();
         if(!_global.isNaN(_loc4_.timer))
         {
            var _loc5_ = _loc4_.timer - (1275 - _loc4_["\x1b\x10\x06"]);
            var _loc6_ = _loc4_["\x18\x1a\x03"] / 1000;
            if(_loc5_ > 0)
            {
               this["\x1e\x10\x06"].startTimer(_loc5_ / 1000,_loc6_);
               this["\x1a\x1c\x1a"](!_global.isNaN(_loc4_.maxPlayerCount) ? _loc4_.maxPlayerCount : 0);
            }
            else
            {
               this["\x1e\x10\x06"].stopTimer();
               this["\x1a\x1c\x1a"](0);
            }
         }
         else
         {
            this["\x1e\x10\x06"].stopTimer();
            this["\x1a\x1c\x1a"](0);
         }
         _loc4_["\x1a\x05\x16"].addEventListener("modelChanged",this);
         _loc4_["\x16\x06\x1b"].addEventListener("modelChanged",this);
         this._btnAttackers.enabled = true;
         this["\x1b\x14\x03"]();
         this["\x1b\x15\x16"]();
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1c\x1b\x0f"].text = "";
         this["\x1c\x12\x15"].text = "";
         this["\x1d\x02\x0e"].text = "";
         this._btnLocate._visible = false;
         this["\x1d\x0b\x0b"]._visible = false;
         this["\x1d\x0b\x05"]._visible = false;
         this["\x1d\t\x1d"]._visible = false;
         this._btnState._visible = false;
         this._mcIsMyTaxCollector._visible = false;
         this["\x18\x06\x03"]();
         this["\x1e\x10\x06"].stopTimer();
         this._btnAttackers.enabled = false;
         this["\x1c\x12\x1c"]._visible = false;
      }
      else
      {
         this["\x18\x06\x03"]();
         this["\x1e\x10\x06"].stopTimer();
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
      this["\x1d\x0b\x0b"]._visible = false;
      this["\x1d\x0b\x05"]._visible = false;
      this["\x1d\t\x1d"]._visible = false;
      this._btnState._visible = false;
      this._btnAttackers.enabled = false;
      this["\x1c\x12\x1c"]._visible = false;
      this._mcIsMyTaxCollector._visible = false;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this._btnPlayer0._visible = this._btnPlayer1._visible = this._btnPlayer2._visible = this._btnPlayer3._visible = this._btnPlayer4._visible = this._btnPlayer5._visible = this._btnPlayer6._visible = false;
   }
   function addListeners()
   {
      this._btnPlayer0.addEventListener("click",this);
      this._btnPlayer1.addEventListener("click",this);
      this._btnPlayer2.addEventListener("click",this);
      this._btnPlayer3.addEventListener("click",this);
      this._btnPlayer4.addEventListener("click",this);
      this._btnPlayer5.addEventListener("click",this);
      this._btnPlayer6.addEventListener("click",this);
      this._btnPlayer0.addEventListener("over",this);
      this._btnPlayer1.addEventListener("over",this);
      this._btnPlayer2.addEventListener("over",this);
      this._btnPlayer3.addEventListener("over",this);
      this._btnPlayer4.addEventListener("over",this);
      this._btnPlayer5.addEventListener("over",this);
      this._btnPlayer6.addEventListener("over",this);
      this._btnAttackers.addEventListener("over",this);
      this._btnState.addEventListener("over",this);
      this._btnPlayer0.addEventListener("out",this);
      this._btnPlayer1.addEventListener("out",this);
      this._btnPlayer2.addEventListener("out",this);
      this._btnPlayer3.addEventListener("out",this);
      this._btnPlayer4.addEventListener("out",this);
      this._btnPlayer5.addEventListener("out",this);
      this._btnPlayer6.addEventListener("out",this);
      this._btnAttackers.addEventListener("out",this);
      this._btnState.addEventListener("out",this);
      this["\x1e\x10\x06"].addEventListener("endTimer",this);
      this._btnLocate.addEventListener("click",this);
      this._btnLocate.addEventListener("over",this);
      this._btnLocate.addEventListener("out",this);
   }
   function §\x1a\x1c\x1a§(§\x19\f\x07§)
   {
      this["\x1d\b\t"]._visible = true;
      var _loc3_ = 0;
      while(_loc3_ < _loc2_)
      {
         this["_btnPlayer" + _loc3_]._visible = true;
         _loc3_ = _loc3_ + 1;
      }
      var _loc4_ = _loc3_;
      while(_loc4_ < 7)
      {
         this["_btnPlayer" + _loc4_]._visible = false;
         _loc4_ = _loc4_ + 1;
      }
   }
   function §\x18\x06\x03§()
   {
      this["\x1d\b\t"]._visible = false;
      var _loc2_ = 0;
      while(_loc2_ < 7)
      {
         this["_btnPlayer" + _loc2_]._visible = false;
         _loc2_ = _loc2_ + 1;
      }
   }
   function §\x1b\x15\x16§()
   {
      var _loc2_ = this["\x1e\x03\x18"]["\x1a\x05\x16"];
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         var _loc4_ = this["_btnPlayer" + _loc3_];
         var _loc5_ = _loc2_[_loc3_];
         _loc4_["\x18\b\b"].data = _loc5_;
         if(_loc5_.prio)
         {
            _loc4_["\x18\b\b"].icon = "Exclamation";
         }
         else
         {
            _loc4_["\x18\b\b"].icon = "";
         }
         _loc4_.params = {player:_loc5_};
         _loc3_ = _loc3_ + 1;
      }
      var _loc6_ = _loc3_;
      while(_loc6_ < 7)
      {
         var _loc7_ = this["_btnPlayer" + _loc6_];
         _loc7_["\x18\b\b"].data = null;
         _loc7_["\x18\b\b"].icon = "";
         _loc7_.params = new Object();
         _loc6_ = _loc6_ + 1;
      }
   }
   function §\x1b\x14\x03§()
   {
      this["\x1c\x12\x1c"]._visible = true;
      if(this["\x1e\x03\x18"].state == 1)
      {
         var _loc2_ = this["\x1e\x03\x18"]["\x16\x06\x1b"].length;
         this["\x1c\x12\x1c"].text = String(_loc2_);
         this._btnAttackers._visible = _loc2_ > 0;
      }
      else
      {
         this["\x1c\x12\x1c"].text = "-";
      }
   }
   function §\x1b\x01\x06§()
   {
      this._btnState._visible = true;
      this["\x1d\x0b\x0b"]._visible = this["\x1e\x03\x18"].state == 2;
      this["\x1d\x0b\x05"]._visible = this["\x1e\x03\x18"].state == 1;
      this["\x1d\t\x1d"]._visible = this["\x1e\x03\x18"].state == 0;
      if(this["\x1e\x03\x18"]["\x18\x0e\x1c"])
      {
         this["\x1d\t\x1d"]._y = 3.2;
         this["\x1d\x0b\x05"]._y = 1.8;
         this["\x1d\x0b\x0b"]._y = 12;
      }
      else
      {
         this["\x1d\t\x1d"]._y = 11.2;
         this["\x1d\x0b\x05"]._y = 9.8;
         this["\x1d\x0b\x0b"]._y = 20;
      }
   }
   function click(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) !== this._btnLocate)
      {
         var _loc3_ = this["\x1d\r\t"].gapi.api;
         if(_loc3_.datacenter.Player.cantInteractWithTaxCollector)
         {
            return undefined;
         }
         var _loc4_ = _loc2_.target.params.player;
         var _loc5_ = _loc4_.id == undefined ? -1 : _loc4_.id;
         if(_loc4_.id == _loc3_.datacenter.Player.ID)
         {
            _loc3_.network.Guild["\x18\x14\x01"](this["\x1e\x03\x18"].id);
         }
         else
         {
            var _loc6_ = _loc3_.datacenter.Player.guildInfos;
            if(_loc6_["\x18\x0e\x15"] && _loc6_["\x17\x06\x11"] != this["\x1e\x03\x18"].id)
            {
               _loc3_.network.Guild["\x18\x14\x01"](_loc6_["\x17\x06\x11"]);
            }
            _loc3_.network.Guild["\x18\x11\x14"](this["\x1e\x03\x18"].id,_loc5_);
         }
      }
      else
      {
         this["\x1d\r\t"].gapi.loadUIComponent("MapExplorer","MapExplorer",{mapID:this["\x1e\x03\x18"].mapID});
      }
   }
   function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnLocate:
            this["\x1d\r\t"].gapi.showTooltip(this["\x1d\r\t"].gapi.api.lang.getText("LOCATE"),_loc2_.target,-20);
            break;
         case this._btnAttackers:
            if(!this["\x1c\x12\x1c"]._visible)
            {
               return undefined;
            }
            var _loc3_ = this["\x1e\x03\x18"]["\x16\x06\x1b"].length;
            if(_loc3_ == 0)
            {
               return undefined;
            }
            var _loc4_ = new String();
            var _loc5_ = 0;
            while(_loc5_ < _loc3_)
            {
               var _loc6_ = this["\x1e\x03\x18"]["\x16\x06\x1b"][_loc5_];
               _loc4_ += "\n" + _loc6_.name + " (" + _loc6_.level + ")";
               _loc5_ = _loc5_ + 1;
            }
            this["\x1d\r\t"].gapi.showTooltip(this["\x1d\r\t"].gapi.api.lang.getText("ATTACKERS") + " : " + _loc4_,_loc2_.target,40);
            break;
         case this._btnState:
            var _loc7_ = new String();
            switch(this["\x1e\x03\x18"].state)
            {
               case 0:
                  _loc7_ = this["\x1d\r\t"].gapi.api.lang.getText("TAX_IN_COLLECT");
                  break;
               case 1:
                  _loc7_ = this["\x1d\r\t"].gapi.api.lang.getText("TAX_IN_ENTERFIGHT");
                  break;
               case 2:
                  _loc7_ = this["\x1d\r\t"].gapi.api.lang.getText("TAX_IN_FIGHT");
            }
            if(this["\x1e\x03\x18"].showMoreInfo)
            {
               if(this["\x1e\x03\x18"].callerName != "?")
               {
                  _loc7_ += "\n" + this["\x1d\r\t"].gapi.api.lang.getText("OWNER_WORD") + " : " + this["\x1e\x03\x18"].callerName;
               }
               var _loc8_ = new ank.utils.ExtendedDate(this["\x1e\x03\x18"].startDate);
               if(_loc8_.getFullYear() != 1970)
               {
                  _loc7_ += "\n" + this["\x1d\r\t"].gapi.api.lang.getText("TAX_COLLECTOR_START_DATE",[_loc8_.getDatePadded(),_loc8_.getMonthPadded(),_loc8_.getDofusFullYear(this["\x1d\r\t"].gapi.api),_loc8_.getHoursPadded(),_loc8_.getMinutesPadded()]);
               }
               if(this["\x1e\x03\x18"].lastHarvesterName != "?")
               {
                  _loc7_ += "\n" + this["\x1d\r\t"].gapi.api.lang.getText("LAST_HARVESTER_NAME") + " : " + this["\x1e\x03\x18"].lastHarvesterName;
               }
               _loc8_ = new ank.utils.ExtendedDate(this["\x1e\x03\x18"].lastHarvestDate);
               if(_loc8_.getFullYear() != 1970)
               {
                  _loc7_ += "\n" + this["\x1d\r\t"].gapi.api.lang.getText("TAX_COLLECTOR_LAST_DATE",[_loc8_.getDatePadded(),_loc8_.getMonthPadded(),_loc8_.getDofusFullYear(this["\x1d\r\t"].gapi.api),_loc8_.getHoursPadded(),_loc8_.getMinutesPadded()]);
               }
               if(this["\x1e\x03\x18"]["\x18\x0e\x1c"])
               {
                  _loc7_ += "\n\n" + this["\x1d\r\t"].gapi.api.lang.getText("TAXCOLLECTOR_IS_MINE");
               }
               var _loc9_ = new Date();
               var _loc10_ = this["\x1e\x03\x18"].nextHarvestDate - _loc9_.valueOf();
            }
            this["\x1d\r\t"].gapi.showTooltip(_loc7_,_loc2_.target,40);
            break;
         default:
            var _loc11_ = _loc2_.target.params.player;
            if(_loc11_ != undefined)
            {
               var _loc12_ = _loc11_.name + " (" + _loc11_.level + ")";
               if(_loc11_.prio)
               {
                  _loc12_ += "\n" + this["\x1d\r\t"].gapi.api.lang.getText("PRIORITY_DEFENDER");
               }
               this["\x1d\r\t"].gapi.showTooltip(_loc12_,_loc2_.target,-20);
               break;
            }
      }
   }
   function out(oEvent)
   {
      this["\x1d\r\t"].gapi.hideTooltip();
   }
   function endTimer(oEvent)
   {
      this["\x1e\x10\x06"].stopTimer();
      this["\x1a\x1c\x1a"](0);
      this["\x1e\x03\x18"].state = 2;
      this["\x1b\x01\x06"]();
      this["\x1b\x14\x03"]();
      this["\x1d\r\t"].gapi.api.datacenter.Player.guildInfos["\x17\x06\x11"] = undefined;
   }
   function modelChanged(oEvent)
   {
      this["\x1d\r\t"].gapi.hideTooltip();
      this["\x1b\x14\x03"]();
      this["\x1b\x15\x16"]();
   }
}
