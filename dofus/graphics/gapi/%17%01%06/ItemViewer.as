class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.ItemViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ItemViewer";
   var §\x1c\x0b\x1a§ = false;
   var §\x1c\x03\r§ = false;
   var §\x1c\b\x15§ = false;
   var §\x1e\b\x19§ = "Effects";
   function ItemViewer()
   {
      super();
   }
   function §\x01§(§\x16\x14\t§)
   {
      this["\x1c\x0b\x1a"] = _loc2_;
      return this["\f\x18"]();
   }
   function §\f\x18§()
   {
      return this["\x1c\x0b\x1a"];
   }
   function §\x12\b§(§\x16\n\f§)
   {
      this["\x1c\x03\r"] = _loc2_;
      return this["\x1e\x18\x11"]();
   }
   function §\x1e\x18\x11§()
   {
      return this["\x1c\x03\r"];
   }
   function §\x1e\x01§(§\x16\x13\b§)
   {
      this["\x1c\b\x15"] = _loc2_;
      return this["\n\x1a"]();
   }
   function §\n\x1a§()
   {
      return this["\x1c\b\x15"];
   }
   function §\x12\x0f§(§\x16\n\x14§)
   {
      this["\x1c\x07\x0e"] = _loc2_;
      return this["\x1e\x18\x19"]();
   }
   function §\x1e\x18\x19§()
   {
      return this["\x1c\x07\x0e"];
   }
   function set showBaseEffects(bShowBaseEffects)
   {
      this["\x1c\b\x05"] = bShowBaseEffects;
   }
   function get showBaseEffects()
   {
      return this["\x1c\b\x05"];
   }
   function §\x14\f§(§\x16\n\x10§)
   {
      this["\x1c\x03\f"] = !_loc2_;
      this["\x1e\x0f\n"]._visible = this["\x1c\x03\f"];
      this["\x1e\x0f\n"]["\x1a\x11\x0f"] = this["\x1c\x03\f"];
      return this["\x1e\x1b\x12"]();
   }
   function §\x1e\x1b\x12§()
   {
      return this["\x1c\x03\f"];
   }
   function §\x16\x0b§(§\x19\x13\x07§)
   {
      this["\x1e\x03\x18"] = _loc2_;
      this.addToQueue({object:this,method:this["\x1a\x1e\x01"],params:[_loc2_]});
      return this["\x01\t"]();
   }
   function §\x01\t§()
   {
      return this["\x1e\x03\x18"];
   }
   function §\x12\x11§(§\x19\x06\x07§)
   {
      this["\x1d\x15\x15"] = _loc2_ + 2;
      return this.displayWidth;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.ItemViewer.CLASS_NAME);
   }
   function §\x16\x05\f§()
   {
      this["\x1d\x06\x17"]._width = this["\x1d\x15\x15"] - this["\x1d\x06\x17"]._x;
      this["\x1e\x0f\n"]._width = this["\x1d\x15\x15"] - this["\x1e\x0f\n"]._x - 1;
      this["\x1d\x10\x1b"]._width = this["\x1d\x15\x15"] - this["\x1d\x10\x1b"]._x;
      this["\x1c\x1a\x07"]._x = this["\x1d\x15\x15"] - (316 - this["\x1c\x1a\x07"]._x);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this._btnTabCharacteristics._visible = false;
      this._pbEthereal._visible = false;
      this._ldrTwoHanded._visible = false;
   }
   function initTexts()
   {
      this._btnTabEffects.label = this.api.lang.getText("EFFECTS");
      this._btnTabConditions.label = this.api.lang.getText("CONDITIONS");
      this._btnTabCharacteristics.label = this.api.lang.getText("CHARACTERISTICS");
   }
   function addListeners()
   {
      this._btnAction.addEventListener("click",this);
      this._btnAction.addEventListener("over",this);
      this._btnAction.addEventListener("out",this);
      this["\x1c\t\x13"].addEventListener("over",this);
      this["\x1c\t\x13"].addEventListener("out",this);
      this._btnUnlink.addEventListener("click",this);
      this._btnTabEffects.addEventListener("click",this);
      this._btnTabCharacteristics.addEventListener("click",this);
      this._btnTabConditions.addEventListener("click",this);
      this._pbEthereal.addEventListener("over",this);
      this._pbEthereal.addEventListener("out",this);
      this._ldrTwoHanded.addEventListener("over",this);
      this._ldrTwoHanded.addEventListener("out",this);
   }
   function §\x1a\x1e\x01§(§\x19\x13\x07§)
   {
      if(_loc2_ != undefined)
      {
         this["\x1c\x1b\x0f"].text = _loc2_.name;
         if(_loc2_.style == "")
         {
            this["\x1c\x1b\x0f"].styleName = "WhiteLeftMediumBoldLabel";
         }
         else
         {
            this["\x1c\x1b\x0f"].styleName = _loc2_.style + "LeftMediumBoldLabel";
         }
         this["\x1c\x1a\x07"].text = this.api.lang.getText("LEVEL_SMALL") + _loc2_.level;
         this["\x1e\x0f\n"].text = _loc2_.description;
         this._ldrIcon.contentParams = _loc2_.params;
         this._ldrIcon.contentPath = _loc2_.iconFile;
         this.getItemEffects(this["\x1c\b\x05"]);
         if(_loc2_.superType == 2)
         {
            this._btnTabCharacteristics._visible = true;
         }
         else
         {
            if(this["\x1e\b\x19"] == "Characteristics")
            {
               this.setCurrentTab("Effects");
            }
            this._btnTabCharacteristics._visible = false;
         }
         this._txtPriceLabel._visible = this["\x1c\x07\x0e"];
         if(this["\x1c\x07\x0e"])
         {
            var _loc3_ = _loc2_.price != undefined ? this.api.lang.getText("UNIT_PRICE") + " : " + new ank.utils.ExtendedString(_loc2_.price)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) : "";
            if(_loc2_.averagePrice != undefined && _loc2_.averagePrice != -1)
            {
               _loc3_ = "<u>Avg</u> : " + new ank.utils.ExtendedString(_loc2_.averagePrice)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + ", " + _loc3_;
            }
         }
         if(!_loc2_.hasCustomMoneyItemId)
         {
            this["\x1d\f\x17"]._visible = this["\x1c\x07\x0e"];
            this._ldrMoneyIcon._visible = false;
         }
         else
         {
            this["\x1d\f\x17"]._visible = false;
            this._ldrMoneyIcon._visible = this["\x1c\x07\x0e"];
            if(this["\x1c\x07\x0e"])
            {
               var _loc4_ = new dofus.datacenter.["\x18\x10\x15"](0,_loc2_.customMoneyItemId);
               this._ldrMoneyIcon.contentParams = _loc4_.params;
               this._ldrMoneyIcon.contentPath = _loc4_.iconFile;
               _loc3_ = _loc3_ + "x " + _loc4_.name;
            }
         }
         if(this["\x1c\x07\x0e"])
         {
            this._txtPriceLabel.text = _loc3_;
         }
         this["\x1d\x04\t"].text = _loc2_.weight + " " + ank.utils.PatternDecoder["\x16\x1d\x15"](this._parent.api.lang.getText("PODS"),"m",_loc2_.weight < 2);
         if(dofus.Constants.DEBUG)
         {
            var _loc5_ = " (" + _loc2_.type + "/" + _loc2_.gfx;
            _loc5_ += ")";
            this["\x1d\x04\t"].text += _loc5_;
         }
         if(_loc2_.durability != -1 && _loc2_.durability != undefined)
         {
            this._pbEthereal["\x18\x19\x12"] = _loc2_.durabilityMax;
            this._pbEthereal.value = _loc2_.durability;
            this._pbEthereal._visible = true;
            if(this._pbEthereal.value / this._pbEthereal["\x18\x19\x12"] < 0.2)
            {
               this._pbEthereal.styleName = "EtherealCriticalProgressBar";
            }
            else
            {
               this._pbEthereal.styleName = "EtherealNormalProgressBar";
            }
            this._pbEthereal._width = !(_loc2_.hasSkinItem || _loc2_.hasCustomSkinItem) ? 62 : 40;
         }
         else if(_loc2_.skinDurability != -1 && _loc2_.skinDurability != undefined)
         {
            this._pbEthereal["\x18\x19\x12"] = _loc2_.skinDurabilityMax;
            this._pbEthereal.value = _loc2_.skinDurability;
            this._pbEthereal._visible = true;
            if(this._pbEthereal.value / this._pbEthereal["\x18\x19\x12"] < 0.2)
            {
               this._pbEthereal.styleName = "SkinDurabilityCriticalProgressBar";
            }
            else
            {
               this._pbEthereal.styleName = "SkinDurabilityNormalProgressBar";
            }
            this._pbEthereal._width = !(_loc2_.hasSkinItem || _loc2_.hasCustomSkinItem) ? 62 : 40;
         }
         else
         {
            this._pbEthereal._visible = false;
         }
         this._btnUnlink._visible = _loc2_.hasSkinItem || _loc2_.hasCustomSkinItem;
         this._ldrTwoHanded._visible = _loc2_["\x19\x06\x0f"];
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1c\x1b\x0f"].text = "";
         this["\x1c\x1a\x07"].text = "";
         this["\x1e\x0f\n"].text = "";
         this._ldrIcon.contentPath = "";
         this._ldrMoneyIcon.contentPath = "";
         this["\x1d\x06\x17"]["\x1a\x0b\x16"]();
         this._txtPriceLabel.text = "";
         this["\x1d\x04\t"].text = "";
         this._pbEthereal._visible = false;
         this._ldrTwoHanded._visible = false;
         this["\x1d\f\x17"]._visible = false;
         this._ldrMoneyIcon._visible = false;
         this._txtPriceLabel._visible = false;
      }
   }
   function §\x1b\x14\x13§()
   {
      var _loc2_ = new ank.utils.ExtendedArray();
      loop3:
      switch(this["\x1e\b\x19"])
      {
         case "Effects":
            var _loc3_ = this["\x1e\x03\x18"]["\x1b\x18\x02"];
            for(var s in _loc3_)
            {
               _loc2_.push(_loc3_[s]);
            }
            break;
         case "Characteristics":
            var _loc4_ = this["\x1e\x03\x18"]["\x16\x19\x05"];
            for(var s in _loc4_)
            {
               if(_loc4_[s].length > 0)
               {
                  _loc2_.push(_loc4_[s]);
               }
            }
            break;
         case "Conditions":
            var _loc5_ = this["\x1e\x03\x18"]["\x16\x1e\f"];
            §§enumerate(_loc5_);
            while(true)
            {
               var _loc0_ = null;
               if((_loc0_ = §§enumeration()) == null)
               {
                  break loop3;
               }
               var s = _loc0_;
               if(_loc5_[s].length > 0)
               {
                  _loc2_.push(_loc5_[s]);
               }
            }
      }
      _loc2_.reverse();
      this["\x1d\x06\x17"].dataProvider = _loc2_;
   }
   function setCurrentTab(§\x1b\x04\x07§)
   {
      var _loc3_ = this["_btnTab" + this["\x1e\b\x19"]];
      var _loc4_ = this["_btnTab" + _loc2_];
      _loc3_.selected = true;
      _loc3_.enabled = true;
      _loc4_.selected = false;
      if(_loc2_ != "Effects")
      {
         _loc4_.enabled = false;
      }
      this["\x1e\b\x19"] = _loc2_;
      this.getItemEffects(this["\x1c\b\x05"]);
   }
   function getItemEffects(bShowBaseEffects)
   {
      if(bShowBaseEffects)
      {
         if(this["\x1e\b\x19"] == "Effects")
         {
            var _loc3_ = dofus.datacenter.["\x18\x10\x15"].getBaseItemEffects(this["\x1e\x03\x18"].unicID);
            var _loc4_ = dofus.datacenter.["\x18\x10\x15"]["\x17\x19\x11"](_loc3_,_loc3_,true,this["\x1e\x03\x18"].isReallyEnhanceable);
            var _loc5_ = new ank.utils.ExtendedArray();
            for(var s in _loc4_)
            {
               if(_loc4_[s].description.length > 0)
               {
                  _loc5_.push(_loc4_[s]);
               }
            }
            _loc5_.reverse();
            this["\x1d\x06\x17"].dataProvider = _loc5_;
         }
         else
         {
            this["\x1b\x14\x13"]();
         }
      }
      else
      {
         this["\x1b\x14\x13"]();
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnTabEffects":
            if(this["\x1e\b\x19"] == "Effects")
            {
               var _loc3_ = this["_btnTab" + this["\x1e\b\x19"]];
               _loc3_.selected = false;
               this["\x1c\b\x05"] = !this["\x1c\b\x05"];
               this.getItemEffects(this["\x1c\b\x05"]);
            }
            else
            {
               this.setCurrentTab("Effects");
            }
            break;
         case "_btnTabCharacteristics":
            this.setCurrentTab("Characteristics");
            break;
         case "_btnTabConditions":
            this.setCurrentTab("Conditions");
            break;
         case "_btnAction":
            this["\x17\x02\x05"](this["\x1e\x03\x18"]);
            break;
         case "_btnUnlink":
            if(this.api.ui.getUIComponent("Inventory") == undefined)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_BECAUSE_BUSY"),"ERROR_CHAT");
               break;
            }
            if(this["\x1e\x03\x18"].hasCustomSkinItem)
            {
               this["\x17\x07\x19"]({type:"destroyMimibiote",item:this["\x1e\x03\x18"]});
               break;
            }
            if(this["\x1e\x03\x18"].hasSkinItem)
            {
               this["\x17\x07\x19"]({type:"unlinkSkinItem",item:this["\x1e\x03\x18"]});
            }
            break;
      }
   }
   function §\x17\x02\x05§(§\x19\x13\x07§)
   {
      var _loc3_ = this.api.ui["\x17\x02\x19"]();
      _loc3_["\x15\x1e\x18"](_loc2_.name);
      if(this["\x1c\x0b\x1a"] && _loc2_canUse)
      {
         _loc3_["\x15\x1d\x12"](this.api.lang.getText("CLICK_TO_USE"),this,this["\x17\x07\x19"],[{type:"useItem",item:_loc2_}]);
         _loc3_["\x15\x1d\x12"](this.api.lang.getText("CLICK_TO_BATCH_USE"),this,this["\x17\x07\x19"],[{type:"batchUseItem",item:_loc2_}]);
      }
      _loc3_["\x15\x1d\x12"](this.api.lang.getText("CLICK_TO_INSERT"),this.api.kernel.GameManager,this.api.kernel.GameManager["\x18\n\x1d"],[_loc2_]);
      if(this["\x1c\b\x15"] && _loc2_["\x16\x16\x15"])
      {
         _loc3_["\x15\x1d\x12"](this.api.lang.getText("CLICK_TO_TARGET"),this,this["\x17\x07\x19"],[{type:"targetItem",item:_loc2_}]);
      }
      _loc3_["\x15\x1d\x12"](this.api.lang.getText("ASSOCIATE_RECEIPTS"),this.api.ui,this.api.ui.loadUIComponent,["ItemUtility","ItemUtility",{item:_loc2_},{bAlwaysOnTop:true}]);
      if(this["\x1c\x03\r"])
      {
         if(_loc2_["\x16\x16\x01"] || _loc2_.isUndestroyable)
         {
            _loc3_["\x15\x1d\x12"](this.api.lang.getText("CLICK_TO_DESTROY"),this,this["\x17\x07\x19"],[{type:"destroyItem",item:_loc2_}],!_loc2_.isUndestroyable);
         }
         if(_loc2_.hasCustomSkinItem)
         {
            _loc3_["\x15\x1d\x12"](this.api.lang.getText("CLICK_TO_DESTROY_MIMIBIOTE"),this,this["\x17\x07\x19"],[{type:"destroyMimibiote",item:_loc2_}],true);
         }
         if(_loc2_.hasSkinItem)
         {
            _loc3_["\x15\x1d\x12"](this.api.lang.getText("REMOVE_CEREMONIAL"),this,this["\x17\x07\x19"],[{type:"unlinkSkinItem",item:_loc2_}],true);
         }
      }
      if(_loc2_.canBeReinitializedByPlayer)
      {
         _loc3_["\x15\x1d\x12"](this.api.lang.getText("RESET_PET"),this,this["\x17\x07\x19"],[{type:"reinitializeItem",item:_loc2_}]);
      }
      for(var s in _loc2_.effects)
      {
         var _loc4_ = _loc2_.effects[s];
         if(_loc4_.type == 995)
         {
            _loc3_["\x15\x1d\x12"](this.api.lang.getText("VIEW_MOUNT_DETAILS"),this.api.network.Mount,this.api.network.Mount.data,[_loc4_["\x1a\x03\r"],_loc4_["\x1a\x03\x0e"]]);
            break;
         }
      }
      _loc3_.show(_root._xmouse,_root._ymouse);
   }
   function over(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_pbEthereal":
            if(this["\x1e\x03\x18"].durability != -1 && this["\x1e\x03\x18"].durability != undefined)
            {
               var _loc3_ = 812;
               var _loc4_ = this["\x1e\x03\x18"].durability;
               var _loc5_ = this["\x1e\x03\x18"].durabilityMax;
            }
            else
            {
               _loc3_ = 2149;
               _loc4_ = this["\x1e\x03\x18"].skinDurability;
               _loc5_ = this["\x1e\x03\x18"].skinDurabilityMax;
            }
            var _loc6_ = this.api.lang["\x17\x17\x05"](_loc3_).d;
            var _loc7_ = ank.utils.PatternDecoder.getDescription(_loc6_,[undefined,_loc4_,_loc5_]);
            this.gapi.showTooltip(_loc7_,_loc2_.target,-20);
            break;
         case "_ldrTwoHanded":
            this.gapi.showTooltip(this.api.lang.getText("TWO_HANDS_WEAPON"),this._ldrTwoHanded,-20);
            break;
         case "\x1c\t\x13":
            this.gapi.showTooltip(this["\x1e\x03\x18"].description,this["\x1c\t\x13"],-4,{bTopAlign:true});
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
