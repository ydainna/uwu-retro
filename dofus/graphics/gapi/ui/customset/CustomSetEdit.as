class dofus.§\x18\x03\x10§.gapi.ui.customset.CustomSetEdit extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "CustomSetEdit";
   static var NAME_MIN_CHARS = 3;
   static var NAME_MAX_CHARS = 20;
   function CustomSetEdit()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.customset.CustomSetEdit.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function set rapidStuff(oRapidStuff)
   {
      this._oRapidStuff = oRapidStuff;
      this._nIcon = oRapidStuff.iconID;
      this._nIconID = oRapidStuff.iconID != 0 ? oRapidStuff.iconID : undefined;
   }
   function get rapidStuff()
   {
      return this._oRapidStuff;
   }
   function §\x14\x18§(nIcon)
   {
      this._nIcon = nIcon;
      return this["\x1e\x1c\x01"]();
   }
   function §\x1e\x1c\x01§()
   {
      return this._nIcon;
   }
   function createChildren()
   {
      this._eaIcons = new ank.utils.ExtendedArray();
      var _loc2_ = 1;
      while(_loc2_ <= dofus.Constants.CUSTOM_SET_ICONS_COUNT)
      {
         this._eaIcons.push({iconID:_loc2_,iconFile:dofus.Constants.CUSTOM_SET_ICONS + _loc2_ + ".swf"});
         _loc2_ = _loc2_ + 1;
      }
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
   }
   function initTexts()
   {
      this["\x1e\x10\t"].title = this.api.lang.getText("CUSTOM_SET_EDIT");
      this["\x1c\x1b\x0f"].text = this.api.lang.getText("NAME_BIG");
      this._lblIcon.text = this.api.lang.getText("ICON");
      this["\x1c\t\x10"].label = this.api.lang.getText("DELETE_WORD");
      this._btnSave.label = this.api.lang.getText("VALIDATE");
      this["\x1c\x11\x12"].text = this._oRapidStuff.name;
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this["\x1c\t\x10"].addEventListener("click",this);
      this._btnSave.addEventListener("click",this);
      this._cgGrid.addEventListener("selectItem",this);
      this._cgGrid.addEventListener("dblClickItem",this);
      this._cgGrid["\x19\x02\n"] = false;
   }
   function §\x18\t\x14§()
   {
      this["\x1c\t\x10"].enabled = !this._oRapidStuff.isEmptyRapidStuff;
      this._cgGrid.dataProvider = this._eaIcons;
      if(this._nIconID == undefined)
      {
         this._nIconID = 1;
      }
      this._cgGrid.selectedIndex = this._nIconID - 1;
      this["\x1c\x11\x12"].restrict = "\\-a-zA-Z0-9_.!?:;, ";
      this["\x1c\x11\x12"].maxChars = dofus.graphics.gapi.ui.customset.CustomSetEdit.NAME_MAX_CHARS;
      this["\x1a\x1a\x15"]();
   }
   function §\x1a\x1a\x15§()
   {
      this["\x1c\x11\x12"].setFocus();
   }
   function editSet(nIcon)
   {
      var _loc3_ = this["\x1c\x11\x12"].text;
      if(_loc3_.length < dofus.graphics.gapi.ui.customset.CustomSetEdit.NAME_MIN_CHARS || _loc3_.length > dofus.graphics.gapi.ui.customset.CustomSetEdit.NAME_MAX_CHARS)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("CUSTOM_SET_INVALID_NAME"),"ERROR_BOX");
         return undefined;
      }
      if(this._nIconID == undefined)
      {
         return undefined;
      }
      if(this._oRapidStuff.isEmptyRapidStuff)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("CUSTOM_SET_SAVED",[_loc3_]),"INFO_CHAT");
      }
      else
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("CUSTOM_SET_EDITED",[_loc3_]),"INFO_CHAT");
      }
      this.api.network.RapidStuff.editRapidStuff(this._oRapidStuff.id,this._nIconID,_loc3_);
      this["\x16\x15\n"]();
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnClose":
            this["\x16\x15\n"]();
            break;
         case "_btnSave":
            this.editSet(this._nIconID);
            break;
         case "\x1c\t\x10":
            var _loc3_ = this.gapi.loadUIComponent("AskYesNo","AskYesNoDeleteCustomSet",{title:this.api.lang.getText("QUESTION"),text:this.api.lang.getText("CONFIRM_DELETE_CUSTOM_SET")});
            _loc3_.addEventListener("yes",this);
      }
   }
   function selectItem(oEvent)
   {
      var _loc3_ = _loc2_.target;
      if(_loc3_.contentData == undefined || !_loc3_["\x17\x01\x05"])
      {
         this._cgGrid.selectedIndex = this._cgGrid.lastLoadedContentIndex;
         var _loc4_ = this._cgGrid.selectedContentData;
      }
      else
      {
         _loc4_ = _loc3_.contentData;
      }
      var _loc5_ = _loc4_.iconID;
      this._nIconID = _loc5_;
   }
   function dblClickItem(oEvent)
   {
      this.selectItem(_loc2_);
      this.editSet(this._nIconID);
   }
   function yes(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "AskYesNoDeleteCustomSet")
      {
         this.api.network.RapidStuff.deleteRapidStuff(this._oRapidStuff.id);
         this.api.kernel.showMessage(undefined,this.api.lang.getText("CUSTOM_SET_DELETED",[this._oRapidStuff.name]),"INFO_CHAT");
         this["\x16\x15\n"]();
      }
   }
}
