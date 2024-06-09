class dofus.§\x18\x03\x10§.gapi.ui.GameResult extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "GameResult";
   static var §\x18\x1a\x1b§ = 11;
   static var §\x18\x1b\n§ = 6;
   function GameResult()
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
      super.init(false,dofus.graphics.gapi.ui.GameResult.CLASS_NAME);
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
      this._winBackground.title = this.api.lang.getText("GAME_RESULTS") + " - " + this.api.lang.getText("TURNS_NUMBER") + " : " + this._oData.currentTableTurn;
      this["\x1c\x17\n"].text = this.api.kernel.GameManager["\x17\x17\x01"](this._oData.duration,true);
      this["\x1c\x13\x18"].text = this.api.lang.getText("GAME_RESULTS_BONUS") + " :";
      this["\x1e\t\n"].value = this.api.datacenter.Basics.aks_game_end_bonus;
      if(this._oData.challenges && this._oData.challenges.length)
      {
         this["\x1c\x14\x17"]._visible = true;
         this["\x1c\x14\x17"].text = this.api.lang.getText("FIGHT_CHALLENGE_BONUS") + " :";
      }
      this._btnClose.label = this.api.lang.getText("CLOSE");
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this["\x1e\t\n"].addEventListener("over",this);
      this["\x1e\t\n"].addEventListener("out",this);
      this._btnMinimize.addEventListener("click",this);
      this._btnCross.addEventListener("click",this);
   }
   function initData()
   {
      var _loc2_ = this._oData.winners.length;
      var _loc3_ = this._oData.loosers.length;
      var _loc4_ = this._oData.collectors.length;
      var _loc5_ = _loc2_ + _loc3_ + _loc4_;
      var _loc6_ = Math.min(_loc2_,dofus.graphics.gapi.ui.GameResult["\x18\x1b\n"]) * 20 + 65 + Math.min(_loc3_,dofus.graphics.gapi.ui.GameResult["\x18\x1b\n"]) * 20 + 65;
      if(_loc4_ > 0)
      {
         _loc6_ += Math.min(_loc4_,dofus.graphics.gapi.ui.GameResult["\x18\x1b\n"]) * 20 + 65;
      }
      var _loc7_ = _loc6_ + 32;
      var _loc8_ = ((_loc5_ <= dofus.graphics.gapi.ui.GameResult["\x18\x1a\x1b"] ? this.gapi["\x1a\x11\x07"] : 550) - _loc7_) / 2;
      var _loc9_ = this._winBackground._x + 10;
      var _loc10_ = _loc8_ + 32;
      var _loc11_ = Math.min(_loc2_,dofus.graphics.gapi.ui.GameResult["\x18\x1b\n"]) * 20 + 55 + _loc10_;
      var _loc12_ = Math.min(_loc3_,dofus.graphics.gapi.ui.GameResult["\x18\x1b\n"]) * 20 + 55 + _loc11_;
      switch(this._oData["\x17\x10\x02"])
      {
         case 0:
            var _loc13_ = "UI_GameResultTeam";
            if(this["\x1e\t\n"].value == -1)
            {
               this["\x1e\t\n"]._visible = false;
               this["\x1c\x13\x18"]._visible = false;
            }
            break;
         case 1:
            _loc13_ = "UI_GameResultTeamPVP";
            this["\x1c\x13\x18"]._visible = false;
            this["\x1d\t\x11"]._visible = false;
            this["\x1e\t\n"]._visible = false;
      }
      this.attachMovie(_loc13_,"_tWinners",10,{dataProvider:this._oData.winners,title:this.api.lang.getText("WINNERS"),_x:_loc9_,_y:_loc10_});
      this.attachMovie(_loc13_,"_tLoosers",20,{dataProvider:this._oData.loosers,title:this.api.lang.getText("LOOSERS"),_x:_loc9_,_y:_loc11_});
      if(_loc4_ > 0)
      {
         this.attachMovie(_loc13_,"_tCollectors",30,{dataProvider:this._oData.collectors,title:this.api.lang.getText("GUILD_TAXCOLLECTORS"),_x:_loc9_,_y:_loc12_});
      }
      this._winBackground._y = _loc8_;
      this._winBackground["\x1a\x19\x18"](undefined,_loc7_);
      this["\x1c\x17\n"]._y = _loc8_ + 5;
      this._btnCross._y = _loc8_ + 9;
      this._btnMinimize._y = _loc8_ + 9;
      this._btnClose._y = this._winBackground._y + this._winBackground._height;
      this["\x1c\x13\x18"]._y = this._winBackground._y + 25;
      this["\x1e\t\n"]._y = this._winBackground._y + 30;
      if(this._oData.challenges && this._oData.challenges.length)
      {
         this["\x1c\x14\x17"]._y = this["\x1c\x13\x18"]._y + 17;
         this["\x1d\t\x11"]._y = this["\x1c\x13\x18"]._y + 18;
         var _loc15_ = 0;
         while(_loc15_ < this._oData.challenges.length)
         {
            var _loc14_ = dofus.graphics.gapi.controls.FightChallengeIcon(this.attachMovie("FightChallengeIcon","fci" + _loc15_,this.getNextHighestDepth(),{challenge:this._oData.challenges[_loc15_],displayUiOnClick:false}));
            _loc14_._height = _loc0_ = 17;
            _loc14_._width = _loc0_;
            _loc14_._x = _loc15_ * (_loc14_._width + 5) + this["\x1d\t\x11"]._x;
            _loc14_._y = this["\x1d\t\x11"]._y;
            _loc15_ = _loc15_ + 1;
         }
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnClose:
         case this._btnCross:
            this["\x16\x15\n"]();
            break;
         case this._btnMinimize:
            if(this._oData.currentPlayerInfos.length != 0)
            {
               this.api.ui.loadUIComponent("GameResultLight","GameResultLight",{data:this._oData},{bAlwaysOnTop:false});
               this.api.kernel.OptionsManager.setOption("UseLightEndFightUI",true);
               this["\x16\x15\n"]();
               break;
            }
            this.api.kernel.showMessage(undefined,this.api.lang.getText("ERROR_248"),"ERROR_CHAT");
            break;
      }
   }
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this["\x1e\t\n"])
      {
         this.gapi.showTooltip(this.api.lang.getText("GAME_RESULTS_BONUS_TOOLTIP",[this["\x1e\t\n"].value]),this["\x1e\t\n"],-20);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
