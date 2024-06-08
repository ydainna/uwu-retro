class dofus.§\x17\x04\x19§.§\x1a\x05\t§ extends ank.battlefield.§\x17\x04\x19§.§\x1b\x07\x04§
{
   var §\x1e\r\x0b§ = false;
   function §\x1a\x05\t§(sID, §\x16\x1c\x16§, §\x1a\x1b\x1b§, §\x16\x17\x18§, §\x17\x07\x13§, §\x18\x02\x16§)
   {
      super();
      if(this.__proto__ == dofus.datacenter.["\x1a\x05\t"].prototype)
      {
         this.initialize(sID,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_);
      }
   }
   function initialize(sID, §\x16\x1c\x16§, §\x1a\x1b\x1b§, §\x16\x17\x18§, §\x17\x07\x13§, §\x18\x02\x16§)
   {
      super.initialize(sID,_loc4_,_loc5_,_loc6_,_loc7_);
      this.api = _global.api;
      this["\x1c\x11\x02"] = _loc8_;
      this["\x17\x13\x05"] = new dofus["\x18\x18\x0b"]["\x17\x13\x05"](this,this.api);
      this["\x16\x19\x06"] = new dofus["\x18\x18\x0b"]["\x16\x19\x06"](this,this.api);
      this["\x17\f\t"] = new dofus["\x18\x18\x0b"]["\x17\f\t"](this,this.api);
      if(sID == this.api.datacenter.Player.ID)
      {
         this["\x1b\x1e\t"] = this.api.datacenter.Player.AP;
         this["\x1d\x12\x0e"] = this.api.datacenter.Player.MP;
      }
      AsBroadcaster.initialize(this);
      eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
   }
   function updateLP(§\x17\t\x01§)
   {
      this.LP += Number(_loc2_);
      if(_loc2_ < 0 && this.api.datacenter.Game["\x18\r\x15"])
      {
         this.LPmax -= Math.floor((0 - _loc2_) * this.api.lang.getConfigText("PERMANENT_DAMAGE"));
         if(this.api.datacenter.Player.ID == this.id)
         {
            this.api.datacenter.Player.LPmax = this.LPmax;
            this.api.ui.getUIComponent("Banner").lpMaxChanged({value:this.LPmax});
            this.api.ui.getUIComponent("StatJob").lpMaxChanged({value:this.LPmax});
         }
         this.api.ui.getUIComponent("Timeline")["\x1b\x10\x03"]["\x1b\x14\f"]();
      }
      this.api.gfx.fightPointAnimManager.addLifePointAnim(this.id,_loc2_);
      if(_loc2_ < 0 && (!this.api.datacenter.Player.isSkippingFightAnimations && this.api.electron["\x18\x10\x11"]))
      {
         this.mc.setAnim("Hit");
      }
   }
   function updateAP(§\x17\x04\x14§, §\x16\x14\n§)
   {
      if(_loc3_ == undefined)
      {
         _loc3_ = false;
      }
      if(this.api.datacenter.Game["\x17\x03\x1a"] != this.id && _loc3_)
      {
         return undefined;
      }
      this.AP += Number(_loc2_);
      this.AP = Math.max(0,this.AP);
      this.api.gfx.fightPointAnimManager.addActionPointAnim(this.id,_loc2_);
   }
   function §\x18\t\b§(§\x16\x15\x01§)
   {
      if(_loc2_ == undefined)
      {
         _loc2_ = true;
      }
      if(_loc2_)
      {
         var _loc3_ = this["\x16\x19\x06"]["\x17\x1c\x03"]("1");
         this.AP = Number(this["\x16\x04\b"]) + Number(_loc3_);
      }
      else
      {
         this.AP = Number(this["\x16\x04\b"]);
      }
   }
   function updateMP(§\x17\t\x02§, §\x16\x14\n§)
   {
      if(_loc3_ == undefined)
      {
         _loc3_ = false;
      }
      if(this.api.datacenter.Game["\x17\x03\x1a"] != this.id && _loc3_)
      {
         return undefined;
      }
      var _loc4_ = Number(_loc2_);
      this.MP += _loc4_;
      this.MP = Math.max(0,this.MP);
      this.api.gfx.fightPointAnimManager.addMovePointAnim(this.id,_loc4_);
   }
   function §\x18\n\f§(§\x16\x15\x01§)
   {
      if(_loc2_ == undefined)
      {
         _loc2_ = true;
      }
      if(_loc2_)
      {
         var _loc3_ = this["\x16\x19\x06"]["\x17\x1c\x03"]("23");
         this.MP = Number(this["\x19\x01\x1b"]) + Number(_loc3_);
      }
      else
      {
         this.MP = Number(this["\x19\x01\x1b"]);
      }
   }
   function §\x1e\x1b\x05§()
   {
      return this["\x1c\x11\x02"];
   }
   function §\x14\x04§(§\x1b\x17\x16§)
   {
      this["\x1c\x11\x02"] = _loc2_;
      return this["\x1e\x1b\x05"]();
   }
   function §\x04\x1b§()
   {
      return this._name;
   }
   function §\x19\f§(§\x1b\x17\x16§)
   {
      this._name = _loc2_;
      return this["\x04\x1b"]();
   }
   function §\x02\x07§()
   {
      return this["\x1d\x06\x06"];
   }
   function §\x17\x04§(§\x1b\x17\x16§)
   {
      this["\x1d\x06\x06"] = Number(_loc2_);
      this.broadcastMessage("onSetLevel",_loc2_);
      return this["\x02\x07"]();
   }
   function §\r\x17§()
   {
      return this["\x1e\x11\x02"];
   }
   function §\x14§(§\x1b\x17\x16§)
   {
      this["\x1e\x11\x02"] = Number(_loc2_);
      this.broadcastMessage("onSetXP",_loc2_);
      return this["\r\x17"]();
   }
   function §\x02\x1a§()
   {
      return this._lp;
   }
   function §\x17\x0f§(§\x1b\x17\x16§)
   {
      if(this._lp == _loc2_)
      {
         return undefined;
      }
      this._lp = Number(_loc2_) <= 0 ? 0 : Number(_loc2_);
      this["\x17\x07\x19"]({type:"lpChanged",value:_loc2_,id:this.id});
      this.broadcastMessage("onSetLP",_loc2_,this.LP);
      return this["\x02\x1a"]();
   }
   function §\x02\x1b§()
   {
      return this["\x1d\x06\n"];
   }
   function §\x17\x10§(§\x1b\x17\x16§)
   {
      if(this["\x1d\x06\n"] == _loc2_)
      {
         return undefined;
      }
      this["\x1d\x06\n"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"lpMaxChanged",value:_loc2_});
      this.broadcastMessage("onSetLPmax",this.LPmax,_loc2_);
      return this["\x02\x1b"]();
   }
   function §\x1e\x12\x03§()
   {
      return this["\x1b\x1e\t"];
   }
   function §\x0e\x16§(§\x1b\x17\x16§)
   {
      if(this["\x1b\x1e\t"] == _loc2_)
      {
         return undefined;
      }
      this["\x1b\x1e\t"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"apChanged",value:_loc2_,id:this.id});
      this.broadcastMessage("onSetAP",_loc2_);
      return this["\x1e\x12\x03"]();
   }
   function §\x1e\x12\x06§()
   {
      return this["\x1b\x1e\r"];
   }
   function §\x0e\x18§(§\x1b\x17\x16§)
   {
      this["\x1b\x1e\r"] = Number(_loc2_);
      return this["\x1e\x12\x06"]();
   }
   function §\x04\x10§()
   {
      return this["\x1d\x12\x0e"];
   }
   function §\x19\x02§(§\x1b\x17\x16§)
   {
      if(this["\x1d\x12\x0e"] == _loc2_)
      {
         return undefined;
      }
      this["\x1d\x12\x0e"] = Number(_loc2_);
      this["\x17\x07\x19"]({type:"mpChanged",value:_loc2_,id:this.id});
      this.broadcastMessage("onSetMP",_loc2_);
      return this["\x04\x10"]();
   }
   function §\x04\x11§()
   {
      return this["\x1d\x12\x0f"];
   }
   function §\x19\x03§(§\x1b\x17\x16§)
   {
      this["\x1d\x12\x0f"] = Number(_loc2_);
      return this["\x04\x11"]();
   }
   function §\x01\x11§()
   {
      return this["\x1c\x11\x14"];
   }
   function §\x16\x13§(§\x1b\x17\x16§)
   {
      this["\x1c\x11\x14"] = Number(_loc2_);
      this.broadcastMessage("onSetKama",_loc2_);
      return this["\x01\x11"]();
   }
   function §\x0b\f§()
   {
      return this["\x1e\r\x1d"];
   }
   function §\x1e\x06§(§\x1b\x17\x16§)
   {
      this["\x1e\r\x1d"] = Number(_loc2_);
      return this["\x0b\f"]();
   }
   function §\r\x0b§()
   {
      return this["\x1b\x1b\x0f"][0];
   }
   function §\f\x05§()
   {
      var _loc2_ = this["\x1b\x18\x1a"].unicID;
      var _loc3_ = this.api.lang["\x17\x19\x1d"](_loc2_);
      if(_loc3_.an == undefined)
      {
         if(this.api.datacenter.Game["\x18\r\x15"])
         {
            return "anim0";
         }
         return "anim3";
      }
      return "anim" + _loc3_.an;
   }
   function §\x1e\x12\r§()
   {
      return dofus.Constants["\x16\x05\x10"] + this["\x18\x02\x15"] + ".swf";
   }
   function §\x16\x07§(§\x16\r\x1a§)
   {
      this["\x1e\r\x0b"] = _loc2_;
      return this["\x1e\x1e\x18"]();
   }
   function §\x1e\x1e\x18§(§\x16\r\x1a§)
   {
      return this["\x1e\r\x0b"];
   }
   function set pvpGain(§\x19\f\x13§)
   {
      this._nPvpGain = _loc2_;
   }
   function get pvpGain()
   {
      return this._nPvpGain;
   }
}
