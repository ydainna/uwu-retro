class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.ConquestJoinViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ConquestJoinViewer";
   static var §\x1b\x0f\x05§ = 7;
   static var §\x1a\r\x18§ = 35;
   var §\x1d\x1e\r§ = -1;
   var §\x1d\x19\x1a§ = -1;
   var §\x1d\x1e\x10§ = -1;
   function ConquestJoinViewer()
   {
      super();
   }
   function §\x13\b§(§\x1b\x17\x16§)
   {
      if(_loc2_ != 0 && this["\x1c\x19\x1b"].text == undefined)
      {
         return undefined;
      }
      switch(Number(_loc2_))
      {
         case 0:
            this["\x1c\x19\x1b"]._visible = _loc0_ = false;
            this["\x1c\x19\x1a"]._visible = _loc0_;
            this["\x1d\x0b\x07"]._visible = _loc0_;
            break;
         case -1:
            this["\x1c\x19\x1b"].text = this.api.lang.getText("CONQUEST_JOIN_FIGHT_NOFIGHT");
            this["\x1c\x19\x1b"]._visible = _loc0_ = true;
            this["\x1c\x19\x1a"]._visible = _loc0_;
            this["\x1d\x0b\x07"]._visible = _loc0_;
            this["\x1c\x07\x05"] = true;
            break;
         case -2:
            this["\x1c\x19\x1b"].text = this.api.lang.getText("CONQUEST_JOIN_FIGHT_INFIGHT");
            this["\x1c\x19\x1b"]._visible = _loc0_ = true;
            this["\x1c\x19\x1a"]._visible = _loc0_;
            this["\x1d\x0b\x07"]._visible = _loc0_;
            this["\x1c\x07\x05"] = true;
            break;
         case -3:
            this["\x1c\x19\x1b"].text = this.api.lang.getText("CONQUEST_JOIN_FIGHT_NONE");
            this["\x1c\x19\x1b"]._visible = _loc0_ = true;
            this["\x1c\x19\x1a"]._visible = _loc0_;
            this["\x1d\x0b\x07"]._visible = _loc0_;
            this["\x1c\x07\x05"] = true;
      }
      return this.error;
   }
   function §\x1e\n§(§\x1b\x17\x16§)
   {
      this["\x1d\x1e\r"] = _loc2_;
      this.updateTimer();
      return this.timer;
   }
   function §\x18\x07§(§\x1b\x17\x16§)
   {
      this["\x1d\x19\x1a"] = _loc2_;
      this.updateTimer();
      return this.maxTimer;
   }
   function §\x1e\x0b§(§\x1b\x17\x16§)
   {
      this["\x1d\x1e\x10"] = _loc2_;
      this.updateTimer();
      return this.timerReference;
   }
   function §\x18\x06§(§\x1b\x17\x16§)
   {
      this["\x1d\x19\x15"] = _loc2_;
      this["\x1a\x1c\x1a"](_loc2_);
      return this.maxTeamPositions;
   }
   function §\x19\x11§(§\x1b\x17\x16§)
   {
      this["\x1c\x07\x05"] = _loc2_;
      return this["\x05\x0b"]();
   }
   function §\x05\x0b§()
   {
      return this["\x1c\x07\x05"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.ConquestJoinViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      var _loc2_ = 0;
      while(_loc2_ < dofus.graphics.gapi.controls.ConquestJoinViewer["\x1b\x0f\x05"])
      {
         this._btnPlayer._visible = false;
         _loc2_ = _loc2_ + 1;
      }
      var _loc3_ = 0;
      while(_loc3_ < dofus.graphics.gapi.controls.ConquestJoinViewer["\x1a\r\x18"])
      {
         this._btnReservist._visible = false;
         _loc3_ = _loc3_ + 1;
      }
   }
   function addListeners()
   {
      this.api.datacenter.Conquest["\x1a\x05\x16"].removeEventListener("modelChanged",this);
      this.api.datacenter.Conquest["\x16\x06\x1b"].removeEventListener("modelChanged",this);
      var _loc2_ = 0;
      while(_loc2_ < dofus.graphics.gapi.controls.ConquestJoinViewer["\x1b\x0f\x05"])
      {
         var _loc3_ = ank.gapi.controls.Button(this["_btnPlayer" + _loc2_]);
         _loc3_.addEventListener("click",this);
         _loc3_.addEventListener("over",this);
         _loc3_.addEventListener("out",this);
         _loc2_ = _loc2_ + 1;
      }
      var _loc4_ = 0;
      while(_loc4_ < dofus.graphics.gapi.controls.ConquestJoinViewer["\x1a\r\x18"])
      {
         var _loc5_ = ank.gapi.controls.Button(this["_btnReservist" + _loc4_]);
         _loc5_.addEventListener("click",this);
         _loc5_.addEventListener("over",this);
         _loc5_.addEventListener("out",this);
         _loc4_ = _loc4_ + 1;
      }
      this._btnAttackers.addEventListener("over",this);
      this._btnAttackers.addEventListener("out",this);
      this.api.datacenter.Conquest["\x1a\x05\x16"].addEventListener("modelChanged",this);
      this.api.datacenter.Conquest["\x16\x06\x1b"].addEventListener("modelChanged",this);
      this["\x1e\x10\x06"].addEventListener("endTimer",this);
   }
   function initTexts()
   {
      this["\x1d\x02\x1b"].text = this.api.lang.getText("CONQUEST_JOIN_FIGHTERS");
      this["\x1c\x1e\n"].text = this.api.lang.getText("CONQUEST_JOIN_RESERVISTS");
      this["\x1c\x19\x1a"].text = this.api.lang.getText("CONQUEST_JOIN_FIGHT");
      this["\x1c\x12\x1d"].text = this.api.lang.getText("ATTACKERS");
   }
   function initData()
   {
      this["\x1c\x12\x1c"].text = String(this.api.datacenter.Conquest["\x16\x06\x1b"].length);
      this["\x1b\x15\x16"]();
   }
   function §\x1b\x15\x16§()
   {
      var _loc2_ = this.api.datacenter.Conquest["\x1a\x05\x16"];
      var _loc3_ = 0;
      var _loc4_ = 0;
      var _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         var _loc6_ = _loc2_[_loc5_];
         var _loc7_ = null;
         if(_loc6_.reservist)
         {
            _loc4_;
            _loc7_ = this["_btnReservist" + _loc4_++];
         }
         else
         {
            _loc3_;
            _loc7_ = this["_btnPlayer" + _loc3_++];
         }
         _loc7_["\x18\b\b"].data = _loc6_;
         _loc7_.params = {player:_loc6_};
         _loc5_ = _loc5_ + 1;
      }
      var _loc8_ = _loc3_;
      while(_loc8_ < dofus.graphics.gapi.controls.ConquestJoinViewer["\x1b\x0f\x05"])
      {
         var _loc9_ = this["_btnPlayer" + _loc8_];
         _loc9_["\x18\b\b"].data = null;
         _loc9_.params = new Object();
         _loc8_ = _loc8_ + 1;
      }
      var _loc10_ = _loc4_;
      while(_loc10_ < dofus.graphics.gapi.controls.ConquestJoinViewer["\x1a\r\x18"])
      {
         var _loc11_ = this["_btnReservist" + _loc10_];
         _loc11_["\x18\b\b"].data = null;
         _loc11_.params = new Object();
         _loc10_ = _loc10_ + 1;
      }
   }
   function §\x1b\x14\x03§()
   {
      var _loc2_ = this.api.datacenter.Conquest["\x16\x06\x1b"].length;
      this["\x1c\x12\x1c"].text = String(_loc2_);
      this._btnAttackers._visible = _loc2_ > 0;
   }
   function updateTimer()
   {
      if(!_global.isNaN(this["\x1d\x1e\r"]) && (this["\x1d\x1e\r"] > 0 && (!_global.isNaN(this["\x1d\x19\x1a"]) && (this["\x1d\x19\x1a"] > 0 && (!_global.isNaN(this["\x1d\x1e\x10"]) && this["\x1d\x1e\x10"] > 0)))))
      {
         var _loc2_ = this["\x1d\x1e\r"] - (9202 - this["\x1d\x1e\x10"]);
         var _loc3_ = this["\x1d\x19\x1a"] / 1000;
         if(_loc2_ > 0)
         {
            this["\x1e\x10\x06"].startTimer(_loc2_ / 1000,_loc3_);
            this["\x1a\x1c\x1a"](!_global.isNaN(this["\x1d\x19\x15"]) ? this["\x1d\x19\x15"] : 0);
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
   }
   function §\x1a\x1c\x1a§(§\x19\f\x07§)
   {
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
   function click(oEvent)
   {
      if(this.api.datacenter.Player.cantInteractWithPrism)
      {
         return undefined;
      }
      var _loc3_ = _loc2_.target.params.player;
      if(_loc3_ != undefined)
      {
         if(_loc3_.id == this.api.datacenter.Player.ID)
         {
            this.api.network.Conquest["\x1a\x07\x06"]();
         }
         else
         {
            var _loc4_ = this.api.datacenter.Conquest["\x1a\x05\x16"].findFirstItem("id",this.api.datacenter.Player.ID);
            if(_loc4_.index == -1)
            {
               return undefined;
            }
            if(_loc3_.reservist)
            {
               if(_loc4_.item.reservist)
               {
                  return undefined;
               }
               var _loc5_ = this.api.ui["\x17\x02\x19"]();
               _loc5_["\x15\x1e\x18"](_loc3_.name);
               _loc5_["\x15\x1d\x12"](this.api.lang.getText("CONQUEST_SWITCH_AS_RESERVIST"),this.api.network.Conquest,this.api.network.Conquest["\x1b\r\x02"],[_loc3_.id]);
               _loc5_.show(_root._xmouse,_root._ymouse);
            }
            else
            {
               if(!_loc4_.item.reservist)
               {
                  return undefined;
               }
               var _loc6_ = this.api.ui["\x17\x02\x19"]();
               _loc6_["\x15\x1e\x18"](_loc3_.name);
               _loc6_["\x15\x1d\x12"](this.api.lang.getText("CONQUEST_SWITCH_AS_PLAYER"),this.api.network.Conquest,this.api.network.Conquest["\x1b\r\x02"],[_loc3_.id]);
               _loc6_.show(_root._xmouse,_root._ymouse);
            }
         }
      }
      else
      {
         this.api.network.Conquest["\x1a\x07\x05"]();
      }
   }
   function modelChanged(§\x17\x0e\x03§)
   {
      this.api.ui.hideTooltip();
      this["\x1b\x14\x03"]();
      this["\x1b\x15\x16"]();
   }
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) !== this._btnAttackers)
      {
         var _loc7_ = _loc2_.target.params.player;
         if(_loc7_ != undefined)
         {
            this.api.ui.showTooltip(_loc7_.name + " (" + _loc7_.level + ")",_loc2_.target,-20);
         }
      }
      else
      {
         var _loc3_ = this.api.datacenter.Conquest["\x16\x06\x1b"].length;
         if(_loc3_ == 0)
         {
            return undefined;
         }
         var _loc4_ = new String();
         var _loc5_ = 0;
         while(_loc5_ < _loc3_)
         {
            var _loc6_ = this.api.datacenter.Conquest["\x16\x06\x1b"][_loc5_];
            _loc4_ += "\n" + _loc6_.name + " (" + _loc6_.level + ")";
            _loc5_ = _loc5_ + 1;
         }
         this.api.ui.showTooltip(this.api.lang.getText("ATTACKERS") + " : " + _loc4_,_loc2_.target,40);
      }
   }
   function out(oEvent)
   {
      this.api.ui.hideTooltip();
   }
   function endTimer(oEvent)
   {
      this["\x1e\x10\x06"].stopTimer();
      this["\x1a\x1c\x1a"](0);
      this["\x1b\x14\x03"]();
   }
}
