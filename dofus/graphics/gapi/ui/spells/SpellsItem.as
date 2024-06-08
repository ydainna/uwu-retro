class dofus.§\x18\x03\x10§.gapi.ui.spells.SpellsItem extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function SpellsItem()
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
         _loc4_.sortName = _loc4_.name;
         _loc4_.sortLevel = _loc4_.level;
         var _loc5_ = this["\x1d\r\t"]._parent._parent.api;
         this["\x1c\x1b\x0f"].text = _loc4_.name;
         this["\x1c\x1a\x07"].text = _loc5_.lang.getText("LEVEL_SMALL") + " " + _loc4_.level;
         this["\x1c\x1d\f"].text = (_loc4_["\x1a\t\x14"] == 0 ? "" : _loc4_["\x1a\t\x14"] + "-") + _loc4_["\x1a\t\x13"] + " " + _loc5_.lang.getText("RANGE");
         this["\x1c\x12\x11"].text = _loc4_["\x16\x04\x03"] + " " + _loc5_.lang.getText("AP");
         this._ldrIcon.forceReload = true;
         this._ldrIcon.contentParams = _loc4_.params;
         this._ldrIcon.contentPath = _loc4_.iconFile;
         if(this._ldrIcon.loaded)
         {
            this._ldrIcon.content.applyColors();
         }
         var _loc6_ = this["\x1d\r\t"]._parent._parent["\x16\x15\x19"](_loc4_) && _loc5_.datacenter.Basics.canUseSeeAllSpell;
         var _loc7_ = this["\x1d\r\t"]._parent._parent["\x17\x15\x17"](_loc4_);
         this._btnBoost.enabled = true;
         this._btnBoost._visible = _loc6_;
         this["\x1c\x14\x01"].text = !(_loc7_ != -1 && _loc5_.datacenter.Basics.canUseSeeAllSpell) ? "" : _loc5_.lang.getText("POINT_NEED_TO_BOOST_SPELL",[_loc7_]);
         if(_loc5_.datacenter.Basics.canUseSeeAllSpell && _loc5_.datacenter.Player.Level < _loc4_._minPlayerLevel)
         {
            var _loc8_ = 50;
            this["\x1c\x1b\x0f"]._alpha = _loc8_;
            this._ldrIcon._alpha = _loc8_;
            this["\x1c\x12\x11"]._alpha = _loc8_;
            this["\x1c\x1d\f"]._alpha = _loc8_;
            this["\x1c\x1a\x07"]._visible = false;
            this["\x1c\x14\x01"]._visible = false;
            this._btnBoost._visible = false;
         }
         else
         {
            this["\x1c\x1b\x0f"]._alpha = 100;
            this._ldrIcon._alpha = 100;
            this["\x1c\x12\x11"]._alpha = 100;
            this["\x1c\x1d\f"]._alpha = 100;
            this["\x1c\x1a\x07"]._alpha = 100;
            this["\x1c\x1a\x07"]._visible = true;
            this["\x1c\x14\x01"]._visible = true;
         }
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1c\x1b\x0f"].text = "";
         this["\x1c\x1a\x07"].text = "";
         this["\x1c\x14\x01"].text = "";
         this["\x1c\x1d\f"].text = "";
         this["\x1c\x12\x11"].text = "";
         this._ldrIcon.contentPath = "";
         this._btnBoost._visible = false;
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
      this._btnBoost._visible = false;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._ldrIcon.addEventListener("complete",this);
      this._btnBoost.addEventListener("click",this);
      this._btnBoost.addEventListener("over",this);
      this._btnBoost.addEventListener("out",this);
   }
   function complete(oEvent)
   {
      var _loc3_ = this["\x1d\r\t"]._parent._parent.api;
      var _loc4_ = _loc2_.clip;
      _loc4_.applyColors();
   }
   function click(oEvent)
   {
      var _loc3_ = this["\x1d\r\t"]._parent._parent.api;
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._btnBoost)
      {
         if(!_loc3_.datacenter.Player.isAuthorized)
         {
            _loc3_.kernel.showMessage(_loc3_.lang.getText("UPGRADE_SPELL"),_loc3_.lang.getText("UPGRADE_SPELL_WARNING",[this["\x1d\r\t"]._parent._parent["\x17\x15\x17"](this["\x1e\x03\x18"]),this["\x1e\x03\x18"].name,String(this["\x1e\x03\x18"].level + 1)]),"CAUTION_YESNO",{name:"UpgradeSpellWarning",listener:this});
         }
         else
         {
            this.yes();
         }
      }
   }
   function yes(oEvent)
   {
      if(this["\x1d\r\t"]._parent._parent["\x16\x10\x06"](this["\x1e\x03\x18"]))
      {
         this._btnBoost.enabled = false;
         if(this["\x1c\x14\x01"].text != undefined)
         {
            this["\x1c\x14\x01"].text = "";
         }
      }
   }
   function over(oEvent)
   {
      var _loc3_ = this["\x1d\r\t"]._parent._parent.api;
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._btnBoost)
      {
         _loc3_.ui.showTooltip(_loc3_.lang.getText("CLICK_HERE_FOR_SPELL_BOOST",[this["\x1d\r\t"]._parent._parent["\x17\x15\x17"](this["\x1e\x03\x18"]),this["\x1e\x03\x18"].name,String(this["\x1e\x03\x18"].level + 1)]),_loc2_.target,-30,{bXLimit:true,bYLimit:false});
      }
   }
   function out(oEvent)
   {
      var _loc3_ = this["\x1d\r\t"]._parent._parent.api;
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._btnBoost)
      {
         _loc3_.ui.hideTooltip();
      }
   }
}
