class dofus.graphics.gapi.ui.GameResultLight extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "GameResultLight";
   function GameResultLight()
   {
      super();
   }
   function §\x11\x19§(§\x19\x12\x10§)
   {
      this._oData = _loc2_;
      return this["\x1e\x18\x01"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.GameResultLight.CLASS_NAME);
      this["\x1c\x14\x17"]._visible = false;
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
      this.gapi["\x1b\x13\x12"]();
   }
   function initTexts()
   {
      this._winBackground.title = this.api.lang.getText("GAME_RESULTS");
      this["\x1c\x13\x18"].text = this.api.lang.getText("GAME_RESULTS_BONUS") + " :";
      this["\x1e\t\n"].value = this.api.datacenter.Basics.aks_game_end_bonus;
      if(this._oData.challenges && this._oData.challenges.length)
      {
         this["\x1c\x14\x17"]._visible = true;
         this["\x1c\x14\x17"].text = this.api.lang.getText("FIGHT_CHALLENGE_BONUS") + " :";
      }
   }
   function addListeners()
   {
      this["\x1e\t\n"].addEventListener("over",this);
      this["\x1e\t\n"].addEventListener("out",this);
      this._btnMaximize.addEventListener("click",this);
      this._btnCross.addEventListener("click",this);
      this._mcRollOver.onRollOver = function()
      {
         this._parent.over({target:this});
      };
      this._mcRollOver.onRollOut = function()
      {
         this._parent.out({target:this});
      };
   }
   function initData()
   {
      var _loc3_ = this._oData.currentPlayerInfosWithChest.length > 0;
      var _loc4_ = this._oData.collectors[0].items.length > 0;
      switch(this._oData["\x17\x10\x02"])
      {
         case 0:
            var _loc2_ = "UI_GameResultTeamLight";
            if(this["\x1e\t\n"].value == -1)
            {
               this["\x1e\t\n"]._visible = false;
               this["\x1c\x13\x18"]._visible = false;
            }
            break;
         case 1:
            if(!this.api.datacenter.Player.rank.enable)
            {
               _loc2_ = "UI_GameResultTeamLight";
            }
            else
            {
               _loc2_ = "UI_GameResultTeamLightPVP";
            }
            this["\x1c\x13\x18"]._visible = false;
            this["\x1d\t\x11"]._visible = false;
            this["\x1e\t\n"]._visible = false;
      }
      !_loc3_ ? this.attachMovie(_loc2_,"_tCurrentPlayer",10,{dataProvider:this._oData.currentPlayerInfos}) : this.attachMovie(_loc2_,"_tCurrentPlayer",10,{dataProvider:this._oData.currentPlayerInfosWithChest});
      if(this._oData.challenges && this._oData.challenges.length)
      {
         this["\x1c\x14\x17"]._y = this["\x1c\x13\x18"]._y + 17;
         this["\x1d\t\x11"]._y = this["\x1c\x13\x18"]._y + 18;
         var _loc6_ = 0;
         while(_loc6_ < this._oData.challenges.length)
         {
            var _loc5_ = dofus.graphics.gapi.controls.FightChallengeIcon(this.attachMovie("FightChallengeIcon","fci" + _loc6_,this.getNextHighestDepth(),{challenge:this._oData.challenges[_loc6_],displayUiOnClick:false}));
            _loc5_._height = _loc0_ = 17;
            _loc5_._width = _loc0_;
            _loc5_._x = _loc6_ * (_loc5_._width + 5) + this["\x1d\t\x11"]._x - _loc6_ * 43;
            _loc5_._y = this["\x1d\t\x11"]._y;
            _loc6_ = _loc6_ + 1;
         }
      }
      if(_loc4_)
      {
         this._ldrCollector.enabled = true;
         this._ldrCollector.contentPath = dofus.Constants["\x18\x04\x16"] + "6000.swf";
         this._ldrCollector.addEventListener("over",this);
         this._ldrCollector.addEventListener("out",this);
      }
      if(_loc3_)
      {
         if(_loc4_)
         {
            this._ldrChest._x += 20;
         }
         this._ldrChest.enabled = true;
         this._ldrChest.contentPath = dofus.Constants["\x18\x04\x16"] + "1083.swf";
         this._ldrChest.addEventListener("over",this);
         this._ldrChest.addEventListener("out",this);
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnCross:
            this["\x16\x15\n"]();
            break;
         case this._btnMaximize:
            this.api.ui.loadUIComponent("GameResult","GameResult",{data:this._oData},{bAlwaysOnTop:true});
            this.api.kernel.OptionsManager.setOption("UseLightEndFightUI",false);
            this["\x16\x15\n"]();
      }
   }
   function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1e\t\n"]:
            this.gapi.showTooltip(this.api.lang.getText("GAME_RESULTS_BONUS_TOOLTIP",[this["\x1e\t\n"].value]),_loc2_.target,-8,{bXLimit:true,bYLimit:false,bTopAlign:true});
            break;
         case this._mcRollOver:
            this.gapi.showTooltip(this.api.lang.getText("TURNS_NUMBER") + " : <b>" + this._oData.currentTableTurn + "</b>\n" + this.api.lang.getText("DURATION") + " : " + this.api.kernel.GameManager["\x17\x17\x01"](this._oData.duration,true),_loc2_.target,-8,{bXLimit:true,bYLimit:false,bTopAlign:true});
            break;
         case this._ldrChest:
            this.gapi.showTooltip(this.api.lang.getText("INFOS_211"),_loc2_.target,-8,{bXLimit:true,bYLimit:false,bTopAlign:true});
            break;
         case this._ldrCollector:
            if(this._sDrop == undefined)
            {
               this._sDrop = this.api.lang.getText("TAX_COLLECTOR_HAS_HARVEST") + " : \n\n";
               var _loc3_ = 0;
               while(_loc3_ < this._oData.collectors[0].items.length)
               {
                  var _loc4_ = this._oData.collectors[0].items[_loc3_];
                  if(_loc3_ > 0)
                  {
                     this._sDrop += "\n";
                  }
                  this._sDrop += _loc4_.Quantity + " x " + _loc4_.name;
                  _loc3_ = _loc3_ + 1;
               }
            }
            this.gapi.showTooltip(this._sDrop,_loc2_.target,-8,{bXLimit:true,bYLimit:false,bTopAlign:true});
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
