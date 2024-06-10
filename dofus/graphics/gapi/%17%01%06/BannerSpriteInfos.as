class dofus.graphics.gapi.§\x17\x01\x06§.BannerSpriteInfos extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "BannerSpriteInfos";
   static var STATES_ICONS_COUNT = 5;
   function BannerSpriteInfos()
   {
      super();
   }
   function §\x11\x19§(§\x19\x12\x10§)
   {
      this["\x1e\x05\x1a"] = _loc2_;
      return this["\x1e\x18\x01"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.BannerSpriteInfos.CLASS_NAME);
   }
   function §\x1b\x14\x01§(§\x19\x12\x10§)
   {
      this.removeSpriteListeners();
      this.data = _loc2_;
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this["\x15\x1e\x13"]});
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.initData});
   }
   function addListeners()
   {
      this["\x1d\x06\x01"].addEventListener("initialization",this);
      var _loc2_ = 1;
      while(_loc2_ <= dofus.graphics.gapi.controls.BannerSpriteInfos.STATES_ICONS_COUNT)
      {
         var _loc3_ = this["_ldrState" + _loc2_];
         _loc3_.addEventListener("initialization",this);
         _loc2_ = _loc2_ + 1;
      }
      this["\x1d\x06\x01"].addEventListener("complete",this);
      this["\x15\x1e\x13"]();
   }
   function removeSpriteListeners()
   {
      this["\x1e\x05\x1a"].removeEventListener("apChanged",this);
      this["\x1e\x05\x1a"].removeEventListener("mpChanged",this);
      this["\x1e\x05\x1a"].removeEventListener("lpChanged",this);
      this["\x1e\x05\x1a"].removeEventListener("resistancesChanged",this);
      this["\x1e\x05\x1a"].removeEventListener("statesChanged",this);
   }
   function §\x15\x1e\x13§()
   {
      this["\x1e\x05\x1a"].addEventListener("apChanged",this);
      this["\x1e\x05\x1a"].addEventListener("mpChanged",this);
      this["\x1e\x05\x1a"].addEventListener("lpChanged",this);
      this["\x1e\x05\x1a"].addEventListener("resistancesChanged",this);
      this["\x1e\x05\x1a"].addEventListener("statesChanged",this);
   }
   function canUpdate(oEvent)
   {
      return this["\x1e\x05\x1a"].id == _loc2_.id;
   }
   function apChanged(oEvent)
   {
      if(this.canUpdate(_loc2_))
      {
         this["\x1c\x12\x11"].text = String(Math.max(0,_loc2_.value));
      }
   }
   function mpChanged(oEvent)
   {
      if(this.canUpdate(_loc2_))
      {
         this["\x1c\x1b\x0b"].text = String(Math.max(0,_loc2_.value));
      }
   }
   function lpChanged(oEvent)
   {
      if(this.canUpdate(_loc2_))
      {
         this["\x1c\x1a\x12"].text = String(_loc2_.value);
      }
   }
   function resistancesChanged(oEvent)
   {
      this.updateResistances();
   }
   function statesChanged(oEvent)
   {
      this.updateStates();
   }
   function initTexts()
   {
      this["\x1c\x1e\t"].text = this.api.lang.getText("RESISTANCES");
      this._lblStates.text = this.api.lang.getText("STATES");
   }
   function initData()
   {
      this["\x1c\x1b\x0f"].text = this["\x1e\x05\x1a"].name;
      this["\x1c\x1a\x07"].text = this.api.lang.getText("LEVEL") + " " + this["\x1e\x05\x1a"].Level;
      this["\x1c\x1a\x12"].text = !_global.isNaN(this["\x1e\x05\x1a"].LP) ? this["\x1e\x05\x1a"].LP : "";
      this["\x1c\x12\x11"].text = !_global.isNaN(this["\x1e\x05\x1a"].AP) ? String(Math.max(0,this["\x1e\x05\x1a"].AP)) : "";
      this["\x1c\x1b\x0b"].text = !_global.isNaN(this["\x1e\x05\x1a"].MP) ? String(Math.max(0,this["\x1e\x05\x1a"].MP)) : "";
      this._ldrCandy.contentPath = "Candy";
      this._ldrBuff.contentPath = "Dojo";
      this._ldrCandy._visible = this["\x1e\x05\x1a"].hasCandy == "1";
      this._ldrBuff._visible = this["\x1e\x05\x1a"].hasBuff == "1";
      this._lblAverageDamages.text = this["\x1e\x05\x1a"].averageDamages;
      this["\x1d\x06\x01"].contentPath = this["\x1e\x05\x1a"]["\x16\x05\x0e"];
      var _loc2_ = 1;
      while(_loc2_ <= dofus.graphics.gapi.controls.BannerSpriteInfos.STATES_ICONS_COUNT)
      {
         var _loc3_ = this["_ldrState" + _loc2_];
         _loc3_.contentPath = dofus.Constants.STATESICON_FILE;
         _loc2_ = _loc2_ + 1;
      }
      this["\x1d\x17\x01"] = this["\x1e\x05\x1a"].id;
      this.updateResistances();
      this.updateStates();
   }
   function updateResistances()
   {
      var _loc2_ = this["\x1e\x05\x1a"]["\x1a\x0e\x02"];
      this["\x1c\x1b\x11"].text = _loc2_[0] != undefined ? _loc2_[0] + "%" : "0%";
      this["\x1c\x17\x0b"].text = _loc2_[1] != undefined ? _loc2_[1] + "%" : "0%";
      this["\x1c\x17\x1d"].text = _loc2_[2] != undefined ? _loc2_[2] + "%" : "0%";
      this["\x1d\x04\b"].text = _loc2_[3] != undefined ? _loc2_[3] + "%" : "0%";
      this["\x1c\x12\t"].text = _loc2_[4] != undefined ? _loc2_[4] + "%" : "0%";
      this["\x1c\x17\x07"].text = _loc2_[5] != undefined ? _loc2_[5] + "%" : "0%";
      this["\x1c\x17\b"].text = _loc2_[6] != undefined ? _loc2_[6] + "%" : "0%";
   }
   function updateStates()
   {
      var _loc2_ = 1;
      while(_loc2_ <= dofus.graphics.gapi.controls.BannerSpriteInfos.STATES_ICONS_COUNT)
      {
         var _loc3_ = this["_ldrState" + _loc2_];
         var _loc4_ = this["_lblState" + _loc2_];
         _loc4_.text = "";
         _loc3_.content["\x1d\x10\x14"].removeMovieClip();
         _loc2_ = _loc2_ + 1;
      }
      var _loc5_ = this["\x1e\x05\x1a"]["\x1b\t\x17"];
      if(_loc5_ != undefined)
      {
         var _loc6_ = 0;
         for(var nState in _loc5_)
         {
            if(_loc5_[nState] == true && this.api.lang.getStateIsDisplayedBanner(Number(nState)))
            {
               _loc6_ = _loc6_ + 1;
               var _loc7_ = this["_ldrState" + _loc6_];
               var _loc8_ = this["_lblState" + _loc6_];
               _loc8_.text = this.api.lang.getStateShortText(Number(nState)) != "" ? String(this.api.lang.getStateShortText(Number(nState))) : String(this.api.lang["\x18\x01\x0e"](Number(nState)));
               this.setStateOnLoader(_loc7_,Number(nState));
            }
         }
      }
   }
   function setStateOnLoader(§\x18\x13\x1b§, §\x19\x0e\x1d§)
   {
      if(_loc2_.loaded)
      {
         delete _loc2_.tempVars;
         var _loc4_ = "State_" + _loc3_;
         var _loc5_ = _loc2_.content.attachMovie(_loc4_,"\x1d\x10\x14",_loc2_.content.getNextHighestDepth());
      }
      else
      {
         _loc2_.tempVars = {fightStateToPut:_loc3_};
      }
   }
   function applyColor(§\x18\x1b\f§, §\x1b\x1b\x07§)
   {
      var _loc4_ = 0;
      switch(_loc3_)
      {
         case 1:
            _loc4_ = this["\x1e\x05\x1a"].color1;
            break;
         case 2:
            _loc4_ = this["\x1e\x05\x1a"].color2;
            break;
         case 3:
            _loc4_ = this["\x1e\x05\x1a"].color3;
      }
      if(_loc4_ == -1 || _loc4_ == undefined)
      {
         return undefined;
      }
      var _loc5_ = (_loc4_ & 16711680) >> 16;
      var _loc6_ = (_loc4_ & 65280) >> 8;
      var _loc7_ = _loc4_ & 255;
      var _loc8_ = new Color(_loc2_);
      var _loc9_ = new Object();
      _loc9_ = {ra:0,ga:0,ba:0,rb:_loc5_,gb:_loc6_,bb:_loc7_};
      _loc8_.setTransform(_loc9_);
   }
   function initialization(oEvent)
   {
      var _loc3_ = _loc2_.target;
      var _loc4_ = _loc3_.content;
      if(_loc3_ == this["\x1d\x06\x01"])
      {
         var _loc5_ = _loc4_._mcMask;
         _loc4_._x = 0 - _loc5_._x;
         _loc4_._y = 0 - _loc5_._y;
         this["\x1d\x06\x01"]._xscale = 10000 / _loc5_._xscale;
         this["\x1d\x06\x01"]._yscale = 10000 / _loc5_._yscale;
      }
      else if(_loc3_.tempVars)
      {
         this.setStateOnLoader(_loc3_,_loc3_.tempVars.fightStateToPut);
      }
   }
   function complete(oEvent)
   {
      var ref = this;
      this["\x1d\x06\x01"].content.stringCourseColor = function(§\x18\x1b\f§, §\x1b\x1a\x1d§)
      {
         ref.applyColor(_loc2_,_loc3_);
      };
   }
}
