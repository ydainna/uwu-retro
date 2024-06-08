class dofus.§\x18\x03\x10§.gapi.ui.CreateGuild extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "CreateGuild";
   var _nBackDefaultColor = 14933949;
   var _nUpDefaultColor = 0;
   var §\x1e\b\x19§ = "Back";
   static var §\x18\x05\x16§ = ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"];
   function CreateGuild()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      this["\x1d\x13\x03"] = this._nBackDefaultColor;
      this["\x1d\x1e\x1c"] = this._nUpDefaultColor;
      super.init(false,dofus.graphics.gapi.ui.CreateGuild.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      if(this._bEnabled)
      {
         this.api.network.Guild["\x18\x13\x1d"]();
         return true;
      }
      return false;
   }
   function createChildren()
   {
      this["\x1c\x0e\x1c"] = new ank.utils.ExtendedArray();
      var _loc2_ = 1;
      while(_loc2_ <= dofus.Constants["\x17\f\x17"])
      {
         this["\x1c\x0e\x1c"].push({iconFile:dofus.Constants["\x17\f\x15"] + _loc2_ + ".swf"});
         _loc2_ = _loc2_ + 1;
      }
      this["\x1c\x10\x16"] = new ank.utils.ExtendedArray();
      var _loc3_ = 1;
      while(_loc3_ <= dofus.Constants["\x17\f\x18"])
      {
         this["\x1c\x10\x16"].push({iconFile:dofus.Constants["\x17\f\x16"] + _loc3_ + ".swf"});
         _loc3_ = _loc3_ + 1;
      }
      this["\x1d\x13\b"] = random(dofus.Constants["\x17\f\x17"]);
      this["\x1e\x01\x02"] = random(dofus.Constants["\x17\f\x18"]);
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x1a\x1a\x15"]});
      this.addToQueue({object:this,method:this["\x1b\x14\x13"]});
      this.addToQueue({object:this,method:this["\x1b\x14\x04"]});
      this.addToQueue({object:this,method:this["\x1b\x16\f"]});
   }
   function initTexts()
   {
      this["\x1e\x10\t"].title = this.api.lang.getText("GUILD_CREATION");
      this["\x1c\x1b\x0f"].text = this.api.lang.getText("GUILD_NAME");
      this["\x1c\x17\x11"].text = this.api.lang.getText("EMBLEM");
      this["\x1c\x15\x07"].text = this.api.lang.getText("CREATE_COLOR");
      this._btnCancel.label = this.api.lang.getText("CANCEL_SMALL");
      this._btnCreate.label = this.api.lang.getText("CREATE");
      this._btnTabBack.label = this.api.lang.getText("EMBLEM_BACK");
      this._btnTabUp.label = this.api.lang.getText("EMBLEM_UP");
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._btnCancel.addEventListener("click",this);
      this._btnCreate.addEventListener("click",this);
      this._btnTabBack.addEventListener("click",this);
      this._btnTabUp.addEventListener("click",this);
      this["\x1c\r\x15"].addEventListener("change",this);
      this._cgGrid.addEventListener("selectItem",this);
      this._cgGrid["\x19\x02\n"] = false;
   }
   function §\x1a\x1a\x15§()
   {
      this["\x1c\x11\x12"].setFocus();
   }
   function §\x1b\x14\x13§()
   {
      switch(this["\x1e\b\x19"])
      {
         case "Back":
            this["\x1c\r\x15"]["\x1a\x15\x11"](this["\x1d\x13\x03"]);
            this._cgGrid.dataProvider = this["\x1c\x0e\x1c"];
            this._cgGrid.selectedIndex = this["\x1d\x13\b"] - 1;
            break;
         case "Up":
            this["\x1c\r\x15"]["\x1a\x15\x11"](this["\x1d\x1e\x1c"]);
            this._cgGrid.dataProvider = this["\x1c\x10\x16"];
            this._cgGrid.selectedIndex = this["\x1e\x01\x02"] - 1;
      }
   }
   function setCurrentTab(§\x1b\x04\x07§)
   {
      var _loc3_ = this["_btnTab" + this["\x1e\b\x19"]];
      var _loc4_ = this["_btnTab" + _loc2_];
      _loc3_.selected = true;
      _loc3_.enabled = true;
      _loc4_.selected = false;
      _loc4_.enabled = false;
      this["\x1e\b\x19"] = _loc2_;
      this["\x1b\x14\x13"]();
   }
   function §\x1b\x14\x04§()
   {
      this._eEmblem.backID = this["\x1d\x13\b"];
      this._eEmblem.backColor = this["\x1d\x13\x03"];
   }
   function §\x1b\x16\f§()
   {
      this._eEmblem.upID = this["\x1e\x01\x02"];
      this._eEmblem.upColor = this["\x1d\x1e\x1c"];
   }
   function §\x1a\x16\x07§(§\x16\x0b\t§)
   {
      this._btnCancel.enabled = this._bEnabled;
      this._btnClose.enabled = this._bEnabled;
      this._btnCreate.enabled = this._bEnabled;
   }
   static function d2h(§\x17\x04\x0e§)
   {
      if(_loc2_ > 255)
      {
         _loc2_ = 255;
      }
      return dofus.graphics.gapi.ui.CreateGuild.HEX_CHARS[Math.floor(_loc2_ / 16)] + dofus.graphics.gapi.ui.CreateGuild.HEX_CHARS[_loc2_ % 16];
   }
   function §\x17\b\x07§()
   {
      var _loc2_ = this["\x1e\b\x19"] != "Back" ? this["\x1d\x1e\x1c"] : this["\x1d\x13\x03"];
      var _loc3_ = (_loc2_ & 16711680) >> 16;
      var _loc4_ = (_loc2_ & 65280) >> 8;
      var _loc5_ = _loc2_ & 255;
      var _loc6_ = dofus.graphics.gapi.ui.CreateGuild.d2h(_loc3_) + dofus.graphics.gapi.ui.CreateGuild.d2h(_loc4_) + dofus.graphics.gapi.ui.CreateGuild.d2h(_loc5_);
      if(_loc2_ == undefined || _loc2_ == -1)
      {
         _loc6_ = "";
      }
      var _loc7_ = this.gapi.loadUIComponent("PopupHexa","PopupHexa",{value:_loc6_,params:{targetType:"colorCode"}});
      _loc7_.addEventListener("validate",this);
   }
   function resetColor()
   {
      if(this["\x1e\b\x19"] == "Back")
      {
         this["\x1d\x13\x03"] = this._nBackDefaultColor;
         this["\x1c\r\x15"]["\x1a\x15\x11"](this._nBackDefaultColor);
      }
      else
      {
         this["\x1d\x1e\x1c"] = this._nUpDefaultColor;
         this["\x1c\r\x15"]["\x1a\x15\x11"](this._nBackDefaultColor);
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnClose":
         case "_btnCancel":
            this.api.network.Guild["\x18\x13\x1d"]();
            break;
         case "_btnCreate":
            var _loc3_ = this["\x1c\x11\x12"].text;
            if(_loc3_ == undefined || _loc3_.length < 3)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("BAD_GUILD_NAME"),"ERROR_BOX");
               return undefined;
            }
            if(this["\x1d\x13\b"] == undefined || this["\x1e\x01\x02"] == undefined)
            {
               return undefined;
            }
            if(this.api.lang.getConfigText("GUILD_NAME_FILTER"))
            {
               var _loc4_ = new dofusutils.["\x19\x03\n"]["\x19\x03\x0b"](_loc3_);
               var _loc5_ = new dofusutils.["\x19\x03\n"]["\x1a\x0f\x01"]["\x19\x03\r"]();
               var _loc6_ = _loc4_["\x18\x10\f"](_loc5_);
               if(!_loc6_.IS_SUCCESS)
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("INVALID_GUILD_NAME") + "\r\n" + _loc6_.toString("\r\n"),"ERROR_BOX");
                  return undefined;
               }
            }
            this.enabled = false;
            this.api.network.Guild["\x17\x02\x04"](this["\x1d\x13\b"],this["\x1d\x13\x03"],this["\x1e\x01\x02"],this["\x1d\x1e\x1c"],_loc3_);
            break;
         case "_btnTabBack":
            this.setCurrentTab("Back");
            break;
         case "_btnTabUp":
            this.setCurrentTab("Up");
      }
   }
   function change(oEvent)
   {
      switch(this["\x1e\b\x19"])
      {
         case "Back":
            if(Key.isDown(Key.SHIFT))
            {
               this["\x17\b\x07"]();
            }
            else if(Key.isDown(Key.CONTROL))
            {
               this.resetColor();
            }
            else
            {
               this["\x1d\x13\x03"] = _loc2_.value;
            }
            this["\x1b\x14\x04"]();
            break;
         case "Up":
            if(Key.isDown(Key.SHIFT))
            {
               this["\x17\b\x07"]();
            }
            else if(Key.isDown(Key.CONTROL))
            {
               this.resetColor();
            }
            else
            {
               this["\x1d\x1e\x1c"] = _loc2_.value;
            }
            this["\x1b\x16\f"]();
      }
   }
   function selectItem(oEvent)
   {
      switch(this["\x1e\b\x19"])
      {
         case "Back":
            if(_loc2_.owner.selectedIndex == undefined)
            {
               return undefined;
            }
            this["\x1d\x13\b"] = _loc2_.owner.selectedIndex + 1;
            this["\x1b\x14\x04"]();
            break;
         case "Up":
            if(_loc2_.owner.selectedIndex == undefined)
            {
               return undefined;
            }
            this["\x1e\x01\x02"] = _loc2_.owner.selectedIndex + 1;
            this["\x1b\x16\f"]();
            break;
      }
   }
   function validate(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.params.targetType) === "colorCode")
      {
         if(!(_global.isNaN(_loc2_.value) || (_loc2_.value > 16777215 || _loc2_.value == undefined)))
         {
            if(this["\x1e\b\x19"] == "Back")
            {
               this["\x1d\x13\x03"] = _loc2_.value;
               this["\x1b\x14\x04"]();
            }
            else
            {
               this["\x1d\x1e\x1c"] = _loc2_.value;
               this["\x1b\x16\f"]();
            }
            this["\x1c\r\x15"]["\x1a\x15\x11"](_loc2_.value);
         }
      }
   }
}
