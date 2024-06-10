class dofus.§\x18\x03\x10§.gapi.ui.§\x1a\x04\x03§.§\x1a\x04\x04§ extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   function §\x1a\x04\x04§()
   {
      super();
   }
   function §\x11\x19§(§\x1a\x02\b§)
   {
      this["\x1e\x05\x1a"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1b\x14\x14"]();
      }
      return this["\x1e\x18\x01"]();
   }
   function §\x15\x13§(§\x16\r\x15§)
   {
      this["\x1c\x05\x17"] = _loc2_;
      this["\x1d\x0b\x12"]._visible = _loc2_;
      return this.isFollowing;
   }
   function §\x15\x1a§(§\x16\r\x17§)
   {
      this["\x1c\x05\x1a"] = _loc2_;
      this["\x1d\r\x04"]._visible = _loc2_;
      return this["\x1e\x1d\x19"]();
   }
   function §\x1e\x1d\x19§()
   {
      return this["\x1c\x05\x1a"];
   }
   function §\x1e\x1d\x16§(§\x16\r\x16§)
   {
      return this["\x1c\x05\x19"];
   }
   function §\x1a\x17\x02§(§\x1a\x02\b§)
   {
      if(_loc2_.life == undefined)
      {
         return undefined;
      }
      var _loc3_ = _loc2_.life.split(",");
      this["\x1d\f\x01"]._yscale = _loc3_[0] / _loc3_[1] * 100;
      this["\x1e\x05\x1a"].life = _loc2_.life;
   }
   function §\x1a\x15\x1d§(§\x1a\x02\b§)
   {
      if(this["\x17\t\x13"](_loc2_))
      {
         this["\x1e\x05\x1a"] = _loc2_;
         if(this["\x18\t\x1c"])
         {
            this["\x1b\x14\x14"]();
         }
      }
      else
      {
         this["\x1a\x17\x02"](_loc2_);
      }
   }
   function §\x17\t\x13§(§\x1a\x02\b§)
   {
      var _loc3_ = true;
      if(this["\x1e\x05\x1a"].accessories && (_loc2_.accessories.length == this["\x1e\x05\x1a"].accessories.length && _loc2_.id == this["\x1e\x05\x1a"].id))
      {
         var _loc4_ = this["\x1e\x05\x1a"].accessories;
         var _loc5_ = _loc2_.accessories;
         var _loc6_ = new Array();
         var _loc7_ = new Array();
         for(var i in _loc4_)
         {
            _loc6_.push(_loc4_[i].unicID);
         }
         for(var i in _loc5_)
         {
            _loc7_.push(_loc5_[i].unicID);
         }
         _loc6_.sort();
         _loc7_.sort();
         _loc3_ = !_loc6_ || _loc6_.join(",") != _loc7_.join(",");
      }
      return _loc3_;
   }
   function §\x18\t\x04§()
   {
      super.init(false);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this._mcBack._visible = false;
      this["\x1d\x0b\x12"]._visible = false;
      this["\x1d\f\x01"]._visible = false;
      this._btn._visible = false;
   }
   function addListeners()
   {
      this["\x1d\x06\x01"].addEventListener("initialization",this);
      this._btn.addEventListener("over",this);
      this._btn.addEventListener("out",this);
      this._btn.addEventListener("click",this);
   }
   function §\x1b\x14\x14§()
   {
      if(this["\x1e\x05\x1a"] != undefined)
      {
         this["\x1d\x06\x01"].contentPath = this["\x1e\x05\x1a"].gfxFile != undefined ? this["\x1e\x05\x1a"].gfxFile : "";
         this.api.colors.addSprite(this["\x1d\x06\x01"],this["\x1e\x05\x1a"]);
         this._mcBack._visible = true;
         this._btn.enabled = true;
         this._btn._visible = true;
         this["\x1d\f\x01"]._visible = true;
         this["\x1a\x17\x02"](this["\x1e\x05\x1a"].life);
         this["\x1c\x05\x19"] = true;
         this._visible = true;
      }
      else
      {
         this["\x1d\x06\x01"].contentPath = "";
         this._mcBack._visible = false;
         this["\x1d\x0b\x12"]._visible = false;
         this._btn.enabled = false;
         this._btn._visible = false;
         this["\x1d\f\x01"]._visible = false;
         this["\x1c\x05\x19"] = false;
         this._visible = false;
      }
   }
   function §\x18\x0e\x16§()
   {
      return this._parent["\x18\x13\x1c"] == this.api.datacenter.Player.ID;
   }
   function §\x18\x0e\x14§()
   {
      return this["\x1e\x05\x1a"].id == this.api.datacenter.Player.ID;
   }
   function §\x1a\x04\x05§()
   {
      this.api.network.Party["\x1b\x18\x1d"]();
      this.api.ui.loadUIAutoHideComponent("MapExplorer","MapExplorer");
   }
   function initialization(oEvent)
   {
      var _loc3_ = _loc2_.target.content;
      _loc3_.attachMovie("staticR","anim",10);
      _loc3_._xscale = -65;
      _loc3_._yscale = 65;
   }
   function over(oEvent)
   {
      var _loc3_ = this["\x1e\x05\x1a"].life.split(",");
      this["\x1d\f\x01"]._yscale = _loc3_[0] / _loc3_[1] * 100;
      this.gapi.showTooltip("<b>" + this["\x1e\x05\x1a"].name + "</b>\n" + this.api.lang.getText("LEVEL") + " : <b>" + this["\x1e\x05\x1a"].level + "</b>\n" + this.api.lang.getText("LIFEPOINTS") + " : " + _loc3_[0] + " / " + _loc3_[1],_loc2_.target,30);
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function click(oEvent)
   {
      this.api.kernel.GameManager["\x1a\x1e\x14"](undefined,{sPlayerName:this["\x1e\x05\x1a"].name,sPlayerID:this["\x1e\x05\x1a"].id,oPartyItem:this});
   }
   function §\x15\x1e\x04§(§\x1a\x06\x01§)
   {
      _loc2_["\x15\x1e\x18"](this.api.lang.getText("PARTY"));
      _loc2_["\x15\x1d\x12"](this.api.lang.getText("PARTY_WHERE"),this,this["\x1a\x04\x05"],[]);
      if(this["\x1e\x05\x1a"].id == this.api.datacenter.Player.ID)
      {
         _loc2_["\x15\x1d\x12"](this.api.lang.getText("LEAVE_PARTY"),this.api.network.Party,this.api.network.Party.leave,[]);
         if(this["\x18\x0e\x16"]())
         {
            if(this["\x1c\x05\x17"])
            {
               _loc2_["\x15\x1d\x12"](this.api.lang.getText("PARTY_STOP_FOLLOW_ME_ALL"),this.api.network.Party,this.api.network.Party["\x17\x11\x1a"],[true,this["\x1e\x05\x1a"].id]);
            }
            else
            {
               _loc2_["\x15\x1d\x12"](this.api.lang.getText("PARTY_FOLLOW_ME_ALL"),this.api.network.Party,this.api.network.Party["\x17\x11\x1a"],[false,this["\x1e\x05\x1a"].id]);
            }
         }
      }
      else
      {
         if(this["\x18\x0e\x14"])
         {
            if(this["\x1c\x05\x17"])
            {
               _loc2_["\x15\x1d\x12"](this.api.lang.getText("STOP_FOLLOW"),this.api.network.Party,this.api.network.Party["\x17\x11\x19"],[true,this["\x1e\x05\x1a"].id]);
            }
            else
            {
               _loc2_["\x15\x1d\x12"](this.api.lang.getText("FOLLOW"),this.api.network.Party,this.api.network.Party["\x17\x11\x19"],[false,this["\x1e\x05\x1a"].id]);
            }
         }
         if(this["\x18\x0e\x16"]())
         {
            if(this["\x1c\x05\x17"])
            {
               _loc2_["\x15\x1d\x12"](this.api.lang.getText("PARTY_STOP_FOLLOW_HIM_ALL"),this.api.network.Party,this.api.network.Party["\x17\x11\x1a"],[true,this["\x1e\x05\x1a"].id]);
            }
            else
            {
               _loc2_["\x15\x1d\x12"](this.api.lang.getText("PARTY_FOLLOW_HIM_ALL"),this.api.network.Party,this.api.network.Party["\x17\x11\x1a"],[false,this["\x1e\x05\x1a"].id]);
            }
            _loc2_["\x15\x1d\x12"](this.api.lang.getText("KICK_FROM_PARTY"),this.api.network.Party,this.api.network.Party.leave,[this["\x1e\x05\x1a"].id]);
         }
      }
   }
}
