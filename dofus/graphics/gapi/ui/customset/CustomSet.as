class dofus.§\x18\x03\x10§.gapi.ui.customset.CustomSet extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "CustomSet";
   static var §\x18\x1a\n§ = 10;
   function CustomSet()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.customset.CustomSet.CLASS_NAME);
   }
   function destroy()
   {
      this.gapi.hideTooltip();
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.initData});
   }
   function addListeners()
   {
      this._btnSave.addEventListener("over",this);
      this._btnSave.addEventListener("out",this);
      this._btnSave.addEventListener("click",this);
      this._btnLoad.addEventListener("over",this);
      this._btnLoad.addEventListener("out",this);
      this._btnLoad.addEventListener("click",this);
      this._btnEdit.addEventListener("over",this);
      this._btnEdit.addEventListener("out",this);
      this._btnEdit.addEventListener("click",this);
      this.api.datacenter.Player.data.addListener(this);
      this.api.datacenter.Player.addEventListener("lpChanged",this);
      this.api.datacenter.Player.addEventListener("lpMaxChanged",this);
      this.api.datacenter.Player.addEventListener("apChanged",this);
      this.api.datacenter.Player.addEventListener("mpChanged",this);
      this.api.datacenter.Player.addEventListener("initiativeChanged",this);
      this.api.datacenter.Player.addEventListener("discernmentChanged",this);
      this.api.datacenter.Player.addEventListener("forceXtraChanged",this);
      this.api.datacenter.Player.addEventListener("vitalityXtraChanged",this);
      this.api.datacenter.Player.addEventListener("wisdomXtraChanged",this);
      this.api.datacenter.Player.addEventListener("chanceXtraChanged",this);
      this.api.datacenter.Player.addEventListener("agilityXtraChanged",this);
      this.api.datacenter.Player.addEventListener("intelligenceXtraChanged",this);
      this.api.datacenter.Player.addEventListener("rapidStuffPut",this);
      var _loc2_ = 0;
      while(_loc2_ < dofus.graphics.gapi.ui.customset.CustomSet["\x18\x1a\n"])
      {
         var _loc3_ = this["_ctr" + _loc2_];
         _loc3_.addEventListener("click",this);
         _loc3_.addEventListener("dblClick",this);
         _loc3_.addEventListener("over",this);
         _loc3_.addEventListener("out",this);
         _loc3_.addEventListener("selectItem",this);
         _loc2_ = _loc2_ + 1;
      }
   }
   function initTexts()
   {
      this["\x1c\x1a\x12"].text = this.api.lang.getText("LP");
      this["\x1c\x12\x11"].text = this.api.lang.getText("AP");
      this["\x1c\x1b\x0b"].text = this.api.lang.getText("MP");
      this["\x1c\x19\n"].text = this.api.lang.getText("INITIATIVE");
      this["\x1c\x16\x1a"].text = this.api.lang.getText("DISCERNMENT");
      this["\x1c\x18\x02"].text = this.api.lang.getText("FORCE");
      this["\x1d\x04\x05"].text = this.api.lang.getText("VITALITY");
      this["\x1d\x04\x14"].text = this.api.lang.getText("WISDOM");
      this["\x1c\x14\x18"].text = this.api.lang.getText("CHANCE");
      this["\x1c\x12\x06"].text = this.api.lang.getText("AGILITY");
      this["\x1c\x19\f"].text = this.api.lang.getText("INTEL");
      this._lblCustomSet.text = this.api.lang.getText("CUSTOM_SET_CHOOSE_SET");
   }
   function initData()
   {
      this._btnLoad.enabled = false;
      this._btnSave.enabled = false;
      this._btnEdit.enabled = false;
      var _loc2_ = this.api.datacenter.Player;
      var _loc3_ = 0;
      while(_loc3_ < dofus.datacenter.["\x18\x17\t"].MAX_RAPID_STUFFS_COUNT)
      {
         var _loc4_ = this["_ctr" + _loc3_];
         var _loc5_ = _loc2_.getRapidStuff(_loc3_);
         _loc4_.contentData = _loc5_;
         _loc3_ = _loc3_ + 1;
      }
      this.lpChanged({value:_loc2_.LP});
      this.lpMaxChanged({value:_loc2_.LPmax});
      this.apChanged({value:_loc2_.AP});
      this.mpChanged({value:_loc2_.MP});
      this.initiativeChanged({value:_loc2_.Initiative});
      this.discernmentChanged({value:_loc2_.Discernment});
      this.forceXtraChanged({value:_loc2_.ForceXtra});
      this.vitalityXtraChanged({value:_loc2_.VitalityXtra});
      this.wisdomXtraChanged({value:_loc2_.WisdomXtra});
      this.chanceXtraChanged({value:_loc2_.ChanceXtra});
      this.agilityXtraChanged({value:_loc2_.AgilityXtra});
      this.intelligenceXtraChanged({value:_loc2_.IntelligenceXtra});
   }
   function askLoadSet(oRapidStuff, bPopup)
   {
      if(this._oSelectedRapidStuff == undefined || oRapidStuff.isEmptyRapidStuff)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("CUSTOM_SET_INVALID_LOAD"),"ERROR_CHAT");
         return undefined;
      }
      if(bPopup)
      {
         var _loc4_ = this.gapi.loadUIComponent("AskYesNo","AskYesNoLoad",{title:this.api.lang.getText("QUESTION"),text:this.api.lang.getText("CUSTOM_SET_CONFIRM_LOAD")});
         _loc4_.addEventListener("yes",this);
      }
      else
      {
         this.api.network.RapidStuff.loadRapidStuff(this._oSelectedRapidStuff.id);
         this.api.kernel.showMessage(undefined,this.api.lang.getText("CUSTOM_SET_LOADED",[this._oSelectedRapidStuff.name]),"INFO_CHAT");
      }
   }
   function lpChanged(oEvent)
   {
      this["\x1c\x1a\x14"].text = this.api.datacenter.Player.LP + "/" + this.api.datacenter.Player.LPmax;
   }
   function lpMaxChanged(oEvent)
   {
      this["\x1c\x1a\x14"].text = this.api.datacenter.Player.LP + "/" + this.api.datacenter.Player.LPmax;
   }
   function apChanged(oEvent)
   {
      this["\x1c\x12\x14"].text = String(Math.max(0,_loc2_.value));
   }
   function mpChanged(oEvent)
   {
      this["\x1c\x1b\f"].text = String(Math.max(0,_loc2_.value));
   }
   function initiativeChanged(oEvent)
   {
      this["\x1c\x19\x0b"].text = String(_loc2_.value);
   }
   function discernmentChanged(oEvent)
   {
      this["\x1c\x16\x1b"].text = String(_loc2_.value);
   }
   function forceXtraChanged(oEvent)
   {
      this["\x1c\x18\x03"].text = this.api.datacenter.Player.Force + (_loc2_.value == 0 ? "" : (_loc2_.value <= 0 ? " (" : " (+") + String(_loc2_.value) + ")");
   }
   function vitalityXtraChanged(oEvent)
   {
      this["\x1d\x04\x06"].text = this.api.datacenter.Player.Vitality + (_loc2_.value == 0 ? "" : (_loc2_.value <= 0 ? " (" : " (+") + String(_loc2_.value) + ")");
   }
   function wisdomXtraChanged(oEvent)
   {
      this["\x1d\x04\x15"].text = this.api.datacenter.Player.Wisdom + (_loc2_.value == 0 ? "" : (_loc2_.value <= 0 ? " (" : " (+") + String(_loc2_.value) + ")");
   }
   function chanceXtraChanged(oEvent)
   {
      this["\x1c\x14\x19"].text = this.api.datacenter.Player.Chance + (_loc2_.value == 0 ? "" : (_loc2_.value <= 0 ? " (" : " (+") + String(_loc2_.value) + ")");
   }
   function agilityXtraChanged(oEvent)
   {
      this["\x1c\x12\x07"].text = this.api.datacenter.Player.Agility + (_loc2_.value == 0 ? "" : (_loc2_.value <= 0 ? " (" : " (+") + String(_loc2_.value) + ")");
   }
   function intelligenceXtraChanged(oEvent)
   {
      this["\x1c\x19\r"].text = this.api.datacenter.Player.Intelligence + (_loc2_.value == 0 ? "" : (_loc2_.value <= 0 ? " (" : " (+") + String(_loc2_.value) + ")");
   }
   function rapidStuffPut(oEvent)
   {
      var _loc3_ = _loc2_.value;
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      var _loc4_ = this["_ctr" + _loc3_.id];
      _loc4_.contentData = _loc3_;
      if(this._oSelectedRapidStuff != undefined && this._oSelectedRapidStuff.id == _loc3_.id)
      {
         this.onSelectedRapidStuff(_loc3_);
      }
   }
   function §\x1b\x13\x1a§()
   {
      var _loc2_ = 0;
      while(_loc2_ <= dofus.graphics.gapi.ui.customset.CustomSet["\x18\x1a\n"])
      {
         var _loc3_ = this["_ctr" + _loc2_];
         if(_loc3_.selected)
         {
            _loc3_.selected = false;
            this._oSelectedRapidStuff = undefined;
         }
         _loc2_ = _loc2_ + 1;
      }
      this._btnLoad.enabled = false;
      this._btnSave.enabled = false;
      this._btnEdit.enabled = false;
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnSave":
            if(this._oSelectedRapidStuff == undefined)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CUSTOM_SET_INVALID_SAVE"),"ERROR_CHAT");
               return undefined;
            }
            var _loc3_ = this.gapi.loadUIComponent("AskYesNo","AskYesNoSave",{title:this.api.lang.getText("QUESTION"),text:this.api.lang.getText("CONFIRM_CUSTOM_SET")});
            _loc3_.addEventListener("yes",this);
            break;
         case "_btnLoad":
            this.askLoadSet(this._oSelectedRapidStuff,false);
            break;
         case "_btnEdit":
            if(this._oSelectedRapidStuff == undefined)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CUSTOM_SET_INVALID_EDIT"),"ERROR_CHAT");
               return undefined;
            }
            var _loc4_ = this.api.ui.loadUIComponent("CustomSetEdit","CustomSetEdit",{rapidStuff:this._oSelectedRapidStuff});
            break;
         default:
            this.selectItem(_loc2_);
      }
   }
   function selectItem(oEvent)
   {
      this["\x1b\x13\x1a"]();
      _loc2_.target.selected = true;
      var _loc3_ = _loc2_.target;
      var _loc4_ = dofus.datacenter..RapidStuff(_loc3_.contentData);
      this.onSelectedRapidStuff(_loc4_);
   }
   function onSelectedRapidStuff(oRapidStuff)
   {
      if(oRapidStuff != undefined)
      {
         this._btnSave.enabled = !oRapidStuff.isEmptyRapidStuff;
         this._btnLoad.enabled = !oRapidStuff.isEmptyRapidStuff;
         this._lblCustomSet.text = oRapidStuff.name.length <= 0 ? this.api.lang.getText("CUSTOM_SET_EMPTY_SLOT") : oRapidStuff.name;
      }
      else
      {
         this._btnSave.enabled = false;
         this._btnLoad.enabled = false;
         this._lblCustomSet.text = this.api.lang.getText("CUSTOM_SET_EMPTY_SLOT");
      }
      this._oSelectedRapidStuff = oRapidStuff;
      this._btnEdit.enabled = true;
   }
   function over(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnSave":
            break;
         case "_ctr0":
         case "_ctr1":
         case "_ctr2":
         case "_ctr3":
         case "_ctr4":
         case "_ctr5":
         case "_ctr6":
         case "_ctr7":
         case "_ctr8":
         case "_ctr9":
            var _loc3_ = _loc2_.target.contentData;
            if(_loc3_ != undefined && !_loc3_.isEmptyRapidStuff)
            {
               this.gapi.showTooltip(this.api.lang.getText("CUSTOM_SET_EQUIP"),_loc2_.target,-20);
            }
            else
            {
               this.gapi.showTooltip(this.api.lang.getText("CUSTOM_SET_SELECT_SLOT"),_loc2_.target,-20);
            }
            break;
         default:
            this.gapi.showTooltip(_loc2_.target.contentData.name,_loc2_.target,-20);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function yes(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "AskYesNoSave":
            this.api.network.RapidStuff.saveRapidStuff(this._oSelectedRapidStuff.id);
            this.api.kernel.showMessage(undefined,this.api.lang.getText("CUSTOM_SET_SAVED",[this._oSelectedRapidStuff.name]),"INFO_CHAT");
            break;
         case "AskYesNoLoad":
            this.api.network.RapidStuff.loadRapidStuff(this._oSelectedRapidStuff.id);
            this.api.kernel.showMessage(undefined,this.api.lang.getText("CUSTOM_SET_LOADED",[this._oSelectedRapidStuff.name]),"INFO_CHAT");
      }
   }
   function dblClick(oEvent)
   {
      this.selectItem(_loc2_);
      var _loc3_ = _loc2_.target.contentData;
      this.askLoadSet(_loc3_,false);
   }
}
