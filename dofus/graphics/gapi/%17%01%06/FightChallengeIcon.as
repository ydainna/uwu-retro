class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.FightChallengeIcon extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   var displayUiOnClick = true;
   var §\x1c\x11\x1c§ = 0;
   function FightChallengeIcon()
   {
      super();
   }
   function §\x1b\x14\x01§()
   {
      switch(this.challenge.state)
      {
         case 1:
            this._ldrState.contentPath = "ChallengeOK";
            break;
         case 2:
            this._ldrState.contentPath = "ChallengeKO";
      }
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\t\x12"]});
   }
   function §\x18\t\x12§()
   {
      new org.flashdevelop.utils.FlashConnect.trace(this.challenge.id + " : " + this.challenge["\x18\b\t"],"dofus.graphics.gapi.controls.FightChallengeIcon::initCpt","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/graphics/gapi/controls/FightChallengeIcon.as",66);
      this._ldr.contentPath = this.challenge["\x18\b\t"];
      this.update();
   }
   function addListeners()
   {
      if(this.displayUiOnClick)
      {
         this.onRelease = this["\x19\x17\x03"](this.api,this._parent,this,this.challenge);
      }
      this.onRollOver = this["\x1b\x17\x1b"](this,"over",this);
      this.onRollOut = this["\x1b\x17\x1b"](this,"out",this);
   }
   function §\x19\x17\x03§(§\x19\x11\x11§, attachTarget, §\x1a\x05\x05§, challenge)
   {
      return function()
      {
         if(attachTarget.FightChallengeViewer.challenge === challenge)
         {
            MovieClip(attachTarget.FightChallengeViewer).removeMovieClip();
         }
         else
         {
            MovieClip(attachTarget.FightChallengeViewer).removeMovieClip();
            attachTarget.attachMovie("FightChallengeViewer","FightChallengeViewer",attachTarget.getNextHighestDepth(),{challenge:challenge});
         }
      };
   }
   function over(§\x17\n\x16§)
   {
      var _loc3_ = this.api.lang["\x17\x17\x15"](this.challenge.id);
      var _loc4_ = "<b>" + _loc3_.n + "</b>\n";
      if(1752 - this["\x1c\x11\x1c"] >= 2400 && (this.challenge["\x1b\x01\n"] && this.challenge.state == 0))
      {
         dofus.utils.["\x16\x04\x06"](this.api).network.Game["\x1a\x1d\x0e"](this.challenge.id);
         this["\x1c\x11\x1c"] = 2382;
      }
      _loc4_ += this.challenge.description + "\n";
      _loc4_ += this.api.lang.getText("LOOT");
      _loc4_ += " : +" + (this.challenge["\x1b\x0f\x01"] + this.challenge["\x16\t\x03"]) + "%\n";
      _loc4_ += this.api.lang.getText("WORD_XP");
      _loc4_ += " : +" + (this.challenge["\x1b\x0f\x04"] + this.challenge["\x16\t\x07"]) + "%\n";
      _loc4_ += this.api.lang.getText("STATE") + " : ";
      switch(this.challenge.state)
      {
         case 0:
            _loc4_ += this.api.lang.getText("CURRENT_FIGHT_CHALLENGE");
            break;
         case 1:
            _loc4_ += this.api.lang.getText("FIGHT_CHALLENGE_DONE");
            break;
         case 2:
            _loc4_ += this.api.lang.getText("FIGHT_CHALLENGE_FAILED");
      }
      this.gapi.showTooltip(_loc4_,_loc2_.target,40);
   }
   function out(§\x17\n\x16§)
   {
      this.gapi.hideTooltip();
   }
   function §\x1b\x17\x1b§(context, callback, target)
   {
      return function()
      {
         context[callback]({target:target});
      };
   }
}
