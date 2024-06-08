class dofus.§\x18\x03\x10§.gapi.ui.FightChallenge extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "FightChallenge";
   function FightChallenge()
   {
      super();
   }
   function §\x1e\x15\x0b§()
   {
      return this["\x1b\x1b\x1b"];
   }
   function §\x15\x1d\x04§(§\x17\x0f\t§)
   {
      this["\x1b\x1b\x1b"].push(_loc2_);
      this["\x1b\x15\r"]();
   }
   function §\x16\x1b\x12§()
   {
      var _loc2_ = 0;
      while(_loc2_ < this["\x1b\x1b\x1a"].length)
      {
         dofus.graphics.gapi.controls.FightChallengeIcon(this["\x1b\x1b\x1a"][_loc2_]).unloadMovie();
         dofus.graphics.gapi.controls.FightChallengeIcon(this["\x1b\x1b\x1a"][_loc2_]).removeMovieClip();
         _loc2_ = _loc2_ + 1;
      }
      this["\x1b\x1b\x1a"] = new Array();
      this["\x1b\x1b\x1b"] = new ank.utils.ExtendedArray();
      this.FightChallengeViewer.unloadMovie();
      this._visible = false;
   }
   function §\x1b\x14\n§(§\x18\b\f§, §\x1b\f\x07§)
   {
      var _loc4_ = 0;
      while(_loc4_ < this["\x1b\x1b\x1a"].length)
      {
         if(dofus.graphics.gapi.controls.FightChallengeIcon(this["\x1b\x1b\x1a"][_loc4_]).challenge.id == _loc2_)
         {
            dofus.graphics.gapi.controls.FightChallengeIcon(this["\x1b\x1b\x1a"][_loc4_]).challenge.state = !_loc3_ ? 2 : 1;
            dofus.graphics.gapi.controls.FightChallengeIcon(this["\x1b\x1b\x1a"][_loc4_])["\x1b\x14\x01"]();
            this.FightChallengeViewer["\x1b\x14\x01"]();
         }
         _loc4_ = _loc4_ + 1;
      }
      var _loc5_ = 0;
      while(_loc5_ < this["\x1b\x1b\x1b"].length)
      {
         if(dofus.datacenter.["\x17\x0f\x15"](this["\x1b\x1b\x1b"][_loc5_]).id == _loc2_)
         {
            this["\x1b\x1b\x1b"][_loc5_].state = !_loc3_ ? 2 : 1;
         }
         _loc5_ = _loc5_ + 1;
      }
   }
   function §\x18\t\x04§()
   {
      this["\x1b\x1b\x1b"] = new ank.utils.ExtendedArray();
      super.init(false,dofus.graphics.gapi.ui.FightChallenge.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._btnOpenClose.addEventListener("click",this);
      this._btnOpenClose.addEventListener("over",this);
      this._btnOpenClose.addEventListener("out",this);
   }
   function §\x1b\x15\r§()
   {
      this["\x1b\x1b\x1a"] = new Array();
      this._visible = this["\x1b\x1b\x1b"].length > 0;
      var _loc3_ = 0;
      while(_loc3_ < this["\x1b\x1b\x1b"].length)
      {
         var _loc2_ = dofus.graphics.gapi.controls.FightChallengeIcon(this.attachMovie("FightChallengeIcon","FightChallengeIcon" + _loc3_,_loc3_ + 1,{challenge:this["\x1b\x1b\x1b"][_loc3_]}));
         _loc2_._x = this._btnOpenClose._x;
         _loc2_._y = this._btnOpenClose._y + 15 + (6 + _loc2_._height) * _loc3_;
         _loc2_.addEventListener("over",this);
         this["\x1b\x1b\x1a"].push(_loc2_);
         _loc2_._visible = !this._btnOpenClose.selected;
         _loc3_ = _loc3_ + 1;
      }
   }
   function click(§\x17\n\x16§)
   {
      var _loc3_ = 0;
      while(_loc3_ < this["\x1b\x1b\x1a"].length)
      {
         this["\x1b\x1b\x1a"][_loc3_]._visible = !this._btnOpenClose.selected;
         _loc3_ = _loc3_ + 1;
      }
   }
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._btnOpenClose)
      {
         this.gapi.showTooltip(this.api.lang.getText("PARTY_OPEN_CLOSE"),_loc2_.target,20);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
