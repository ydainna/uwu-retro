class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.FightChallengeViewer extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x03§
{
   var §\x1c\x11\x1c§ = 0;
   function FightChallengeViewer()
   {
      super();
   }
   function §\x1b\x14\x01§()
   {
      this["\x1d\x10\x14"].gotoAndStop(this.challenge.state + 1);
   }
   function createChildren()
   {
      this._btnView._visible = this.challenge["\x1b\x01\n"];
      this.update();
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\n\x14"]});
   }
   function §\x18\n\x14§()
   {
      var _loc2_ = dofus.utils.["\x16\x04\x06"](this.api);
      var _loc3_ = _loc2_.lang["\x17\x17\x15"](this.challenge.id);
      this["\x1e\x10\t"].title = _loc2_.lang.getText("CURRENT_FIGHT_CHALLENGE");
      if(this.challenge["\x1b\r\x1c"])
      {
         var _loc4_ = _loc2_.datacenter.Sprites.getItemAt(this.challenge["\x1b\r\x1c"]).name + " (" + _loc2_.lang.getText("LEVEL_SMALL") + " " + _loc2_.datacenter.Sprites.getItemAt(this.challenge["\x1b\r\x1c"]).mc.data.Level + ")";
         this["\x1e\r\x14"].text = _loc3_.d.split("%1").join(_loc4_);
      }
      else
      {
         this["\x1e\r\x14"].text = _loc3_.d;
      }
      this["\x1d\x03\t"].text = _loc2_.lang.getText("LOOT");
      this["\x1d\x03\x13"].text = _loc2_.lang.getText("WORD_XP");
      this._lblTitle.text = _loc3_.n;
      this["\x1c\x13\x19"].text = "+" + (this.challenge["\x1b\x0f\x01"] + this.challenge["\x16\t\x03"]) + "%";
      this["\x1c\x13\x1c"].text = "+" + (this.challenge["\x1b\x0f\x04"] + this.challenge["\x16\t\x07"]) + "%";
   }
   function addListeners()
   {
      this._lblTitle.addEventListener("change",this);
      this._btnClose.addEventListener("click",this);
      this._btnView.addEventListener("click",this);
      this._btnView.onRelease = this["\x1b\x17\x1b"](this,"click",this._btnView);
      this._btnView.onRollOver = this["\x1b\x17\x1b"](this,"over",this._btnView);
      this._btnView.onRollOut = this["\x1b\x17\x1b"](this,"out",this._btnView);
      this["\x1d\x10\x14"].onRollOver = this["\x1b\x17\x1b"](this,"over",this["\x1d\x10\x14"]);
      this["\x1d\x10\x14"].onRollOut = this["\x1b\x17\x1b"](this,"out",this["\x1d\x10\x14"]);
      this["\x1c\x13\x19"].onRollOver = this["\x1b\x17\x1b"](this,"over",this["\x1c\x13\x19"]);
      this["\x1c\x13\x19"].onRollOut = this["\x1b\x17\x1b"](this,"out",this["\x1c\x13\x19"]);
      this["\x1d\x03\t"].onRollOver = this["\x1b\x17\x1b"](this,"over",this["\x1d\x03\t"]);
      this["\x1d\x03\t"].onRollOut = this["\x1b\x17\x1b"](this,"out",this["\x1d\x03\t"]);
      this["\x1c\x13\x1c"].onRollOver = this["\x1b\x17\x1b"](this,"over",this["\x1c\x13\x1c"]);
      this["\x1c\x13\x1c"].onRollOut = this["\x1b\x17\x1b"](this,"out",this["\x1c\x13\x1c"]);
      this["\x1d\x03\x13"].onRollOver = this["\x1b\x17\x1b"](this,"over",this["\x1d\x03\x13"]);
      this["\x1d\x03\x13"].onRollOut = this["\x1b\x17\x1b"](this,"out",this["\x1d\x03\x13"]);
      this["\x1e\r\x14"].addEventListener("resize",this);
   }
   function §\x1b\x17\x1b§(context, callback, target)
   {
      return function()
      {
         context[callback]({target:target});
      };
   }
   function click(§\x17\n\x16§)
   {
      switch(_loc2_.target)
      {
         case this._btnClose:
            this.unloadMovie();
            break;
         case this._btnView:
            if(6756 - this["\x1c\x11\x1c"] >= 1000)
            {
               this.unloadMovie();
               dofus.utils.["\x16\x04\x06"](this.api).network.Game["\x1a\x1d\x0e"](this.challenge.id);
               this["\x1c\x11\x1c"] = 3484;
               break;
            }
      }
   }
   function over(§\x17\n\x16§)
   {
      loop0:
      switch(_loc2_.target)
      {
         case this._btnView:
            this.gapi.showTooltip(this.api.lang.getText("VIEW_CHALENGE_TARGET"),_loc2_.target,40);
            break;
         case this["\x1c\x13\x1c"]:
         case this["\x1d\x03\x13"]:
            this.gapi.showTooltip(this.api.lang.getText("BASIC_BONUS") + " : " + this.challenge["\x16\t\x07"] + "%\n" + this.api.lang.getText("GROUP_BONUS") + " : " + this.challenge["\x1b\x0f\x04"] + "%",_loc2_.target,40);
            break;
         case this["\x1c\x13\x19"]:
         case this["\x1d\x03\t"]:
            §§push(40);
            §§push(_loc2_.target);
            §§push("BASIC_BONUS");
            §§push(1);
            §§push(this.api);
            §§push("lang");
         default:
            this.gapi.showTooltip(§§pop()[§§pop()].getText() + " : " + this.challenge["\x16\t\x03"] + "%\n" + this.api.lang.getText("GROUP_BONUS") + " : " + this.challenge["\x1b\x0f\x01"] + "%",§§pop(),§§pop());
            break;
         case this["\x1d\x10\x14"]:
            switch(this.challenge.state)
            {
               case 0:
                  this.gapi.showTooltip(this.api.lang.getText("CURRENT_FIGHT_CHALLENGE"),_loc2_.target,40);
                  break loop0;
               case 1:
                  this.gapi.showTooltip(this.api.lang.getText("FIGHT_CHALLENGE_DONE"),_loc2_.target,40);
                  break loop0;
               case 2:
                  this.gapi.showTooltip(this.api.lang.getText("FIGHT_CHALLENGE_FAILED"),_loc2_.target,40);
            }
      }
   }
   function out(§\x17\n\x16§)
   {
      this.gapi.hideTooltip();
   }
   function change(§\x17\n\x16§)
   {
      this._lblTitle._y += (this._lblTitle.height - this._lblTitle.textHeight) / 2;
   }
}
