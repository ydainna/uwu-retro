class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.SpouseViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "SpouseViewer";
   function SpouseViewer()
   {
      super();
   }
   function §\x1d\x0e§(§\x1a\x02\x07§)
   {
      this["\x1e\x05\x19"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1b\x14\x14"]();
      }
      return this.spouse;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.SpouseViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
      this.addToQueue({object:this,method:this.initTexts});
      this["\x1d\f\t"]._visible = false;
   }
   function addListeners()
   {
      this._btnJoin.addEventListener("click",this);
      this["\x1c\t\f"].addEventListener("click",this);
      this["\x1d\f\t"].onRollOver = function()
      {
         this._parent.over({target:this});
      };
      this["\x1d\f\t"].onRollOut = function()
      {
         this._parent.out({target:this});
      };
      this["\x1d\f\t"].onRelease = function()
      {
         this._parent.click({target:this});
      };
   }
   function §\x18\t\x14§()
   {
      this["\x1b\x14\x14"]();
   }
   function initTexts()
   {
      this._btnJoin.label = this.api.lang.getText("JOIN_SMALL");
      if(this["\x1e\x05\x19"].isFollow)
      {
         this["\x1c\t\f"].label = this.api.lang.getText("STOP_FOLLOW");
      }
      else
      {
         this["\x1c\t\f"].label = this.api.lang.getText("FOLLOW");
      }
      this["\x1c\x1d\x01"].text = this.api.lang.getText("LOCALISATION");
   }
   function §\x1b\x14\x14§()
   {
      if(this["\x1e\x05\x19"] != undefined)
      {
         this["\x1e\x10\t"].title = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("SPOUSE"),this["\x1e\x05\x19"]["\x1a\x1b\f"],true);
         this._lblSpouse.text = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("SPOUSE"),this["\x1e\x05\x19"]["\x1a\x1b\f"],true);
         this["\x1c\x1b\x0f"].text = this["\x1e\x05\x19"].name;
         this.api.colors.addSprite(this._ldrArtwork,this["\x1e\x05\x19"]);
         this._ldrArtwork.contentPath = dofus.Constants["\x18\x04\x15"] + this["\x1e\x05\x19"].gfx + ".swf";
         if(this["\x1e\x05\x19"].isConnected && this["\x1c\x15\x12"].text != undefined)
         {
            this["\x1d\f\t"]._visible = this["\x1e\x05\x19"].isInFight;
            this["\x1c\x1a\x07"].text = !_global.isNaN(this["\x1e\x05\x19"].level) ? this.api.lang.getText("LEVEL") + " " + this["\x1e\x05\x19"].level : "";
            this["\x1c\x12\x15"].text = this.api.kernel["\x18\x18\x18"]["\x17\x1b\x0b"](this["\x1e\x05\x19"].mapID);
            this["\x1c\x15\x12"].text = "";
            this._btnJoin.enabled = !this.api.datacenter.Game.isFight;
            this["\x1c\t\f"].enabled = true;
         }
         else if(this["\x1c\x1a\x07"].text != undefined)
         {
            this["\x1d\f\t"]._visible = false;
            this["\x1c\x1a\x07"].text = "";
            this["\x1c\x12\x15"].text = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("SPOUSE_NOT_CONNECTED"),this["\x1e\x05\x19"]["\x1a\x1b\f"],true);
            this["\x1c\x15\x12"].text = "";
            this._btnJoin.enabled = false;
            this["\x1c\t\f"].enabled = false;
         }
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnJoin:
            if(!this.api.datacenter.Game.isFight)
            {
               this.api.network.Friends.join("S");
            }
            break;
         case this["\x1c\t\f"]:
            if(this["\x1e\x05\x19"].isConnected)
            {
               if(this["\x1e\x05\x19"].isFollow)
               {
                  this.api.network.Friends.compass(true);
               }
               else
               {
                  this.api.network.Friends.compass(false);
               }
               this["\x1e\x05\x19"].isFollow = !this["\x1e\x05\x19"].isFollow;
               this.initTexts();
            }
            break;
         case this["\x1d\f\t"]:
            this.api.network.GameActions.joinChallengeAsSpectator(0,this["\x1e\x05\x19"].id);
      }
   }
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this["\x1d\f\t"])
      {
         this.api.ui.showTooltip(this.api.lang.getText("CLICK_TO_JOIN_AS_SPECTATOR"),this["\x1d\f\t"],-20);
      }
   }
   function out(oEvent)
   {
      this.api.ui.hideTooltip();
   }
}
