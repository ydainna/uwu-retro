class dofus.§\x18\x03\x10§.gapi.ui.SpellForget extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "SpellForget";
   function SpellForget()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.SpellForget.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.initData});
   }
   function addListeners()
   {
      this._btnValidate.enabled = false;
      this._btnClose.addEventListener("click",this);
      this._btnCancel.addEventListener("click",this);
      this._btnValidate.addEventListener("click",this);
      this["\x1d\x07\x04"].addEventListener("itemSelected",this);
   }
   function initTexts()
   {
      this["\x1e\x10\t"].title = this.api.lang.getText("SPELL_FORGET");
      this["\x1c\x1b\x0f"].text = this.api.lang.getText("SPELLS_SHORTCUT");
      this["\x1c\x1a\x07"].text = this.api.lang.getText("LEVEL");
      this._btnValidate.label = this.api.lang.getText("VALIDATE");
      this._btnCancel.label = this.api.lang.getText("CANCEL_SMALL");
   }
   function initData()
   {
      var _loc2_ = this.api.datacenter.Player.Spells;
      var _loc3_ = new ank.utils.ExtendedArray();
      for(var k in _loc2_)
      {
         var _loc4_ = _loc2_[k];
         if(_loc4_["\x16\x1b\x0e"] != -1 && _loc4_.level > 1)
         {
            _loc3_.push(_loc4_);
         }
      }
      this["\x1d\x07\x04"].dataProvider = _loc3_;
   }
   function itemSelected(oEvent)
   {
      this._btnValidate.enabled = true;
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnValidate:
            var _loc3_ = dofus.datacenter.Spell(this["\x1d\x07\x04"].selectedItem);
            this.api.kernel.showMessage(this.api.lang.getText("SPELL_FORGET"),this.api.lang.getText("SPELL_FORGET_CONFIRM",[_loc3_.name]),"CAUTION_YESNO",{name:"SpellForget",listener:this,params:{spell:_loc3_}});
            break;
         case this._btnClose:
         case this._btnCancel:
            this.api.network.Spells["\x1b\x06\t"](-1);
            this["\x1b\x13\x13"]();
      }
   }
   function yes(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "AskYesNoSpellForget")
      {
         var _loc3_ = _loc2_.target.params.spell;
         this.api.network.Spells["\x1b\x06\t"](_loc3_.ID);
         this["\x1b\x13\x13"]();
      }
   }
}
