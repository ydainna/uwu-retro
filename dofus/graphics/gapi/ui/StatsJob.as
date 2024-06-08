class dofus.§\x18\x03\x10§.gapi.ui.StatsJob extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "StatsJob";
   function StatsJob()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.StatsJob.CLASS_NAME);
   }
   function destroy()
   {
      this.gapi.hideTooltip();
      if(this._popupQuantity != undefined)
      {
         this._popupQuantity["\x16\x15\n"]();
      }
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
      this.addToQueue({object:this,method:this.initTexts});
      this["\x1d\x11\x19"]._visible = false;
      this._btnClosePanel._visible = false;
      if(Key.isDown(Key.SHIFT))
      {
         this["\x1b\x01\x07"]();
      }
      this.api.datacenter.Player.data.addListener(this);
      this.api.datacenter.Player.addEventListener("nameChanged",this);
      this.api.datacenter.Player.addEventListener("levelChanged",this);
      this.api.datacenter.Player.addEventListener("xpChanged",this);
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
      this.api.datacenter.Player.addEventListener("bonusPointsChanged",this);
      this.api.datacenter.Player.addEventListener("energyChanged",this);
      this.api.datacenter.Player.addEventListener("energyMaxChanged",this);
      this.api.datacenter.Player.addEventListener("alignmentChanged",this);
   }
   function addListeners()
   {
      this._ctrAlignment.addEventListener("click",this);
      this._ctrJob0.addEventListener("click",this);
      this._ctrJob1.addEventListener("click",this);
      this._ctrJob2.addEventListener("click",this);
      this._ctrSpe0.addEventListener("click",this);
      this._ctrSpe1.addEventListener("click",this);
      this._ctrSpe2.addEventListener("click",this);
      this._ctrAlignment.addEventListener("over",this);
      this._ctrJob0.addEventListener("over",this);
      this._ctrJob1.addEventListener("over",this);
      this._ctrJob2.addEventListener("over",this);
      this._ctrSpe0.addEventListener("over",this);
      this._ctrSpe1.addEventListener("over",this);
      this._ctrSpe2.addEventListener("over",this);
      this._ctrAlignment.addEventListener("out",this);
      this._ctrJob0.addEventListener("out",this);
      this._ctrJob1.addEventListener("out",this);
      this._ctrJob2.addEventListener("out",this);
      this._ctrSpe0.addEventListener("out",this);
      this._ctrSpe1.addEventListener("out",this);
      this._ctrSpe2.addEventListener("out",this);
      this._btn10.addEventListener("click",this);
      this._btn10.addEventListener("over",this);
      this._btn10.addEventListener("out",this);
      this._btn11.addEventListener("click",this);
      this._btn11.addEventListener("over",this);
      this._btn11.addEventListener("out",this);
      this._btn12.addEventListener("click",this);
      this._btn12.addEventListener("over",this);
      this._btn12.addEventListener("out",this);
      this._btn13.addEventListener("click",this);
      this._btn13.addEventListener("over",this);
      this._btn13.addEventListener("out",this);
      this._btn14.addEventListener("click",this);
      this._btn14.addEventListener("over",this);
      this._btn14.addEventListener("out",this);
      this._btn15.addEventListener("click",this);
      this._btn15.addEventListener("over",this);
      this._btn15.addEventListener("out",this);
      this.api.datacenter.Game.addEventListener("stateChanged",this);
      this._btnClose.addEventListener("click",this);
      this._btnClosePanel.addEventListener("click",this);
      this._mcMoreStats.onRelease = function()
      {
         this._parent.click({target:this});
      };
   }
   function §\x18\t\x14§()
   {
      var _loc2_ = this.api.datacenter.Player;
      this.levelChanged({value:_loc2_.Level});
      this.xpChanged({value:_loc2_.XP});
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
      this.bonusPointsChanged({value:_loc2_.BonusPoints});
      this.energyChanged({value:_loc2_.Energy});
      this.alignmentChanged({alignment:_loc2_.alignment});
      var _loc3_ = this.api.datacenter.Player["\x18\x11\x0f"];
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         var _loc5_ = _loc3_[_loc4_];
         var _loc6_ = _loc5_["\x1b\x06\x03"];
         if(_loc6_ != 0)
         {
            var _loc7_ = 0;
            while(_loc7_ < 3)
            {
               var _loc8_ = this["_ctrSpe" + _loc7_];
               if(_loc8_.contentData == undefined)
               {
                  _loc8_.contentData = _loc5_;
                  break;
               }
               _loc7_ = _loc7_ + 1;
            }
         }
         else
         {
            var _loc9_ = 0;
            while(_loc9_ < 3)
            {
               var _loc10_ = this["_ctrJob" + _loc9_];
               if(_loc10_.contentData == undefined)
               {
                  _loc10_.contentData = _loc5_;
                  break;
               }
               _loc9_ = _loc9_ + 1;
            }
         }
         _loc4_ = _loc4_ + 1;
      }
      this["\x1c\x1b\x0f"].text = this.api.datacenter.Player.Name;
      this["\x15\x1c\x18"](!this.api.datacenter.Game["\x18\r\x15"] && this.api.datacenter.["\x18\x18\x0e"].bCanBoostStats);
   }
   function initTexts()
   {
      this["\x1c\x17\x12"].text = this.api.lang.getText("ENERGY");
      if(this.api.datacenter.Basics.aks_current_server["\x1b\x12\n"] == dofus.datacenter.["\x1a\x14\x05"]["\x1a\x14\x10"])
      {
         this["\x1c\x17\x12"]._alpha = 50;
         this["\x1d\x0e\t"]._visible = false;
      }
      this["\x1c\x14\x1c"].text = this.api.lang.getText("CHARACTERISTICS");
      this["\x1c\x1b\x0e"].text = this.api.lang.getText("MY_JOBS");
      this["\x1d\x04\x18"].text = this.api.lang.getText("EXPERIMENT");
      this["\x1c\x1a\x12"].text = this.api.lang.getText("LIFEPOINTS");
      this["\x1c\x12\x11"].text = this.api.lang.getText("ACTIONPOINTS");
      this["\x1c\x1b\x0b"].text = this.api.lang.getText("MOVEPOINTS");
      this["\x1c\x19\n"].text = this.api.lang.getText("INITIATIVE");
      this["\x1c\x16\x1a"].text = this.api.lang.getText("DISCERNMENT");
      this["\x1c\x18\x02"].text = this.api.lang.getText("FORCE");
      this["\x1d\x04\x05"].text = this.api.lang.getText("VITALITY");
      this["\x1d\x04\x14"].text = this.api.lang.getText("WISDOM");
      this["\x1c\x14\x18"].text = this.api.lang.getText("CHANCE");
      this["\x1c\x12\x06"].text = this.api.lang.getText("AGILITY");
      this["\x1c\x19\f"].text = this.api.lang.getText("INTELLIGENCE");
      this["\x1c\x14\x11"].text = this.api.lang.getText("CHARACTERISTICS_POINTS");
      this["\x1d\x01\x18"].text = this.api.lang.getText("SPECIALIZATIONS");
      this._mcMoreStats.onRollOver = function()
      {
         this._parent.gapi.showTooltip(this._parent.api.lang.getText("MORE_STATS"),this,-20);
      };
      this._mcMoreStats.onRollOut = function()
      {
         this._parent.gapi.hideTooltip();
      };
   }
   function getStatsCostString(oBoost)
   {
      return "<b><u>" + this.api.lang.getText("COST") + " :" + "</u> " + oBoost.cost + "</b> " + this.api.lang.getText("POUR") + " <b>" + oBoost.count + "</b>";
   }
   function §\x1b\x01\x07§()
   {
      this["\x18\x05\x1b"]();
      this["\x18\x06\x10"]();
      if(this._svStats == undefined)
      {
         this.attachMovie("StatsViewer","_svStats",this.getNextHighestDepth(),{_x:this["\x1d\x11\x19"]._x,_y:this["\x1d\x11\x19"]._y});
         this._btnClosePanel._visible = true;
         this._btnClosePanel.swapDepths(this.getNextHighestDepth());
         this._btnClosePanel._x += 35;
      }
      else
      {
         this["\x18\x07\x02"]();
      }
   }
   function §\x18\x07\x02§()
   {
      if(this._svStats != undefined)
      {
         this._btnClosePanel._x -= 35;
      }
      this._svStats.removeMovieClip();
      this._btnClosePanel._visible = false;
   }
   function §\x1a\x1e\x03§(§\x19\x13\t§)
   {
      this["\x18\x05\x1b"]();
      this["\x18\x07\x02"]();
      if(_loc2_ == undefined)
      {
         this["\x18\x06\x10"]();
         return undefined;
      }
      if(this._jvJob == undefined)
      {
         this.attachMovie("JobViewer","_jvJob",this.getNextHighestDepth(),{_x:this["\x1d\x11\x19"]._x,_y:this["\x1d\x11\x19"]._y});
      }
      else if(this["\x1e\x02\x1d"].id == _loc2_.id)
      {
         this["\x18\x06\x10"]();
         return undefined;
      }
      this._btnClosePanel._visible = true;
      this._btnClosePanel.swapDepths(this.getNextHighestDepth());
      this._jvJob["\x18\x11\f"] = _loc2_;
      this["_ctr" + (this["\x1e\x02\x1d"]["\x1b\x06\x03"] != 0 ? "Spe" : "Job") + this["\x1e\x02\x1d"].id].selected = false;
      this["_ctr" + (_loc2_["\x1b\x06\x03"] != 0 ? "Spe" : "Job") + _loc2_.id].selected = true;
      this["\x1e\x02\x1d"] = _loc2_;
   }
   function §\x18\x06\x10§()
   {
      this["_ctr" + (this["\x1e\x02\x1d"]["\x1b\x06\x03"] != 0 ? "Spe" : "Job") + this["\x1e\x02\x1d"].id].selected = false;
      this._jvJob.removeMovieClip();
      delete this["\x1e\x02\x1d"];
      this._btnClosePanel._visible = false;
   }
   function §\x1a\x1c\x14§()
   {
      this["\x18\x06\x10"]();
      this["\x18\x07\x02"]();
      if(this._avAlignment == undefined)
      {
         this.attachMovie("AlignmentViewer","_avAlignment",this.getNextHighestDepth(),{_x:this["\x1d\x11\x19"]._x,_y:this["\x1d\x11\x19"]._y});
         this._btnClosePanel._visible = true;
         this._btnClosePanel.swapDepths(this.getNextHighestDepth());
      }
      else
      {
         this["\x18\x05\x1b"]();
      }
   }
   function §\x18\x05\x1b§()
   {
      this._avAlignment.removeMovieClip();
      this._btnClosePanel._visible = false;
   }
   function §\x15\x1c\x18§(§\x16\b\x0e§)
   {
      var _loc3_ = 10;
      while(_loc3_ < 16)
      {
         this["_btn" + _loc3_].enabled = _loc2_;
         _loc3_ = _loc3_ + 1;
      }
   }
   function §\x1b\x14\x0b§(§\x19\x05\x01§)
   {
      var _loc3_ = this.api.datacenter.Player["\x17\x14\x16"](_loc2_).cost;
      var _loc4_ = this["_btn" + _loc2_];
      if(_loc3_ <= this.api.datacenter.Player.BonusPoints)
      {
         _loc4_._visible = true;
      }
      else
      {
         _loc4_._visible = false;
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnClosePanel":
            this["\x18\x06\x10"]();
            this["\x18\x05\x1b"]();
            this["\x18\x07\x02"]();
            break;
         case "_ctrAlignment":
            if(this.api.datacenter.Player.data.alignment.index == 0)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("NEED_ALIGNMENT"),"ERROR_BOX");
            }
            else
            {
               this["\x1a\x1c\x14"]();
            }
            break;
         case "_btn10":
         case "_btn11":
         case "_btn12":
         case "_btn13":
         case "_btn14":
         case "_btn15":
            this.api.sounds["\x17\x0e\x06"]["\x19\x1d\f"]();
            var _loc3_ = Number(_loc2_.target._name.substr(4));
            if(this.api.datacenter.Player["\x16\x15\x19"](_loc3_))
            {
               var _loc4_ = this.api.datacenter.Player["\x17\x14\x16"](_loc3_);
               var nCost = _loc4_.cost;
               var _loc5_ = _loc4_.possibleCount;
               var nCapital = this.api.datacenter.Player.BonusPoints;
               if(Key.isDown(Key.CONTROL) || Key.isDown(Key.SHIFT))
               {
                  var _loc6_ = "POPUP_QUANTITY_STATS_BOOST_DESCRIPTION";
                  var _loc7_ = [this.getStatsCostString(_loc4_),function(§\x19\n\x0e§, §\x19\t\x19§, §\x19\x10\x10§)
                  {
                     return String(_loc4_ * nCost);
                  },function(§\x19\n\x0e§, §\x19\t\x19§, §\x19\x10\x10§)
                  {
                     return String(nCapital - _loc4_ * nCost);
                  },function(§\x19\n\x0e§, §\x19\t\x19§, §\x19\x10\x10§)
                  {
                     return String(_loc4_);
                  }];
                  var _loc8_ = this.gapi.loadUIComponent("PopupQuantityWithDescription","PopupQuantity",{descriptionLangKey:_loc6_,descriptionLangKeyParams:_loc7_,value:1,max:_loc5_,isMaxButtonValidationEnabled:false,params:{targetType:"charac",characteristicID:_loc3_}});
                  _loc8_.addEventListener("validate",this);
                  this._popupQuantity = _loc8_;
               }
               else
               {
                  this.api.network.Account.boost(_loc3_,1);
               }
            }
            break;
         case "_btnClose":
            this["\x16\x15\n"]();
            break;
         case "_mcMoreStats":
            this["\x1b\x01\x07"]();
            break;
         default:
            this["\x1a\x1e\x03"](_loc2_.target.contentData);
      }
   }
   function validate(oEvent)
   {
      var _loc3_ = _loc2_.value;
      var _loc0_ = null;
      if((_loc0_ = _loc2_.params.targetType) === "charac")
      {
         var _loc4_ = _loc2_.params.characteristicID;
         this.api.network.Account.boost(_loc4_,_loc3_);
      }
   }
   function over(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btn10":
         case "_btn11":
         case "_btn12":
         case "_btn13":
         case "_btn14":
         case "_btn15":
            var _loc3_ = Number(_loc2_.target._name.substr(4));
            var _loc4_ = this.api.datacenter.Player["\x17\x14\x16"](_loc3_);
            this.gapi.showTooltip(this.getStatsCostString(_loc4_),_loc2_.target,-20);
            break;
         case "_ctrAlignment":
            this.gapi.showTooltip(this.api.datacenter.Player.alignment.name,_loc2_.target,_loc2_.target.height + 5);
            break;
         default:
            this.gapi.showTooltip(_loc2_.target.contentData.name,_loc2_.target,-20);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function nameChanged(oEvent)
   {
      this["\x1c\x1b\x0f"].text = _loc2_.value;
   }
   function levelChanged(oEvent)
   {
      this["\x1c\x1a\x07"].text = this.api.lang.getText("LEVEL") + " " + String(_loc2_.value);
   }
   function xpChanged(oEvent)
   {
      this._pbXP["\x18\x1d\x03"] = this.api.datacenter.Player.XPlow;
      this._pbXP["\x18\x19\x12"] = this.api.datacenter.Player.Level != 200 ? this.api.datacenter.Player.XPhigh : -1;
      this._pbXP.value = oEvent.value;
      this["\x1d\x11\x1b"].onRollOver = function()
      {
         this._parent.gapi.showTooltip(new ank.utils.ExtendedString(oEvent.value)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + " / " + new ank.utils.ExtendedString(this._parent._pbXP["\x18\x19\x12"])["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3),this,-10);
      };
      this["\x1d\x11\x1b"].onRollOut = function()
      {
         this._parent.gapi.hideTooltip();
      };
   }
   function lpChanged(oEvent)
   {
      this["\x1c\x1a\x14"].text = String(_loc2_.value);
   }
   function lpMaxChanged(oEvent)
   {
      this["\x1c\x1a\x13"].text = String(_loc2_.value);
   }
   function apChanged(oEvent)
   {
      this["\x1c\x12\x14"].text = String(Math.max(0,_loc2_.value));
   }
   function mpChanged(oEvent)
   {
      this["\x1c\x1b\f"].text = String(Math.max(0,_loc2_.value));
   }
   function forceXtraChanged(oEvent)
   {
      this["\x1c\x18\x03"].text = this.api.datacenter.Player.Force + (_loc2_.value == 0 ? "" : (_loc2_.value <= 0 ? " (" : " (+") + String(_loc2_.value) + ")");
      this["\x1b\x14\x0b"](10);
   }
   function vitalityXtraChanged(oEvent)
   {
      this["\x1d\x04\x06"].text = this.api.datacenter.Player.Vitality + (_loc2_.value == 0 ? "" : (_loc2_.value <= 0 ? " (" : " (+") + String(_loc2_.value) + ")");
      this["\x1b\x14\x0b"](11);
   }
   function wisdomXtraChanged(oEvent)
   {
      this["\x1d\x04\x15"].text = this.api.datacenter.Player.Wisdom + (_loc2_.value == 0 ? "" : (_loc2_.value <= 0 ? " (" : " (+") + String(_loc2_.value) + ")");
      this["\x1b\x14\x0b"](12);
   }
   function chanceXtraChanged(oEvent)
   {
      this["\x1c\x14\x19"].text = this.api.datacenter.Player.Chance + (_loc2_.value == 0 ? "" : (_loc2_.value <= 0 ? " (" : " (+") + String(_loc2_.value) + ")");
      this["\x1b\x14\x0b"](13);
   }
   function agilityXtraChanged(oEvent)
   {
      this["\x1c\x12\x07"].text = this.api.datacenter.Player.Agility + (_loc2_.value == 0 ? "" : (_loc2_.value <= 0 ? " (" : " (+") + String(_loc2_.value) + ")");
      this["\x1b\x14\x0b"](14);
   }
   function intelligenceXtraChanged(oEvent)
   {
      this["\x1c\x19\r"].text = this.api.datacenter.Player.Intelligence + (_loc2_.value == 0 ? "" : (_loc2_.value <= 0 ? " (" : " (+") + String(_loc2_.value) + ")");
      this["\x1b\x14\x0b"](15);
   }
   function bonusPointsChanged(oEvent)
   {
      this["\x1c\x14\x12"].text = String(_loc2_.value);
   }
   function energyChanged(oEvent)
   {
      if(this.api.datacenter.Basics.aks_current_server["\x1b\x12\n"] != dofus.datacenter.["\x1a\x14\x05"]["\x1a\x14\x10"])
      {
         this["\x1d\x0b\x04"].onRollOver = function()
         {
            this._parent.gapi.showTooltip(new ank.utils.ExtendedString(oEvent.value)["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3) + " / " + new ank.utils.ExtendedString(Math.max(10000,this._parent["\x1e\x06\x0f"]["\x18\x19\x12"]))["\x15\x1e\x01"](this._parent.api.lang.getConfigText("THOUSAND_SEPARATOR"),3),this,-10);
         };
         this["\x1d\x0b\x04"].onRollOut = function()
         {
            this._parent.gapi.hideTooltip();
         };
         this["\x1e\x06\x0f"]["\x18\x19\x12"] = this.api.datacenter.Player.EnergyMax;
         this["\x1e\x06\x0f"].value = oEvent.value;
      }
      else
      {
         this["\x1e\x06\x0f"]._alpha = 50;
         this["\x1e\x06\x0f"].enabled = false;
      }
   }
   function energyMaxChanged(oEvent)
   {
      this["\x1e\x06\x0f"]["\x18\x19\x12"] = _loc2_.value;
   }
   function alignmentChanged(oEvent)
   {
      this._ctrAlignment.contentPath = _loc2_.alignment.iconFile;
   }
   function initiativeChanged(oEvent)
   {
      this["\x1c\x19\x0b"].text = String(_loc2_.value);
   }
   function discernmentChanged(oEvent)
   {
      this["\x1c\x16\x1b"].text = String(_loc2_.value);
   }
   function stateChanged(oEvent)
   {
      this["\x15\x1c\x18"](!(_loc2_.value > 1 && _loc2_.value != undefined));
   }
}
