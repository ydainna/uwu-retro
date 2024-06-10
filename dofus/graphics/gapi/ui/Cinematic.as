class dofus.graphics.gapi.ui.Cinematic extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Cinematic";
   var _nFrameToStart = 2;
   var _bCanCancel = true;
   var _bDisplayNpc = true;
   var _bDisplayMonster = true;
   function Cinematic()
   {
      super();
   }
   function §\x13\x0e§(§\x1a\x1b\x0f§)
   {
      this["\x1e\t\x11"] = _loc2_;
      return this["\x1e\x1a\f"]();
   }
   function §\x1c\x0b§(§\x1a\x02\x01§)
   {
      this["\x1e\x05\n"] = _loc2_;
      return this["\b\x17"]();
   }
   function §\x0f\x0b§(§\x16\x14\x17§)
   {
      this["\x1d\b\n"]._visible = _loc2_;
      return this["\x1e\x12\x19"]();
   }
   function __set__banner(§\x16\x14\x17§)
   {
      this.api.ui.getUIComponent("Banner")._visible = _loc2_;
      return this.banner;
   }
   function set npc(§\x16\x14\x17§)
   {
      this._bDisplayNpc = _loc2_;
   }
   function §\x18\x17§(§\x16\x14\x17§)
   {
      this._bDisplayMonster = _loc2_;
      return this.monster;
   }
   function set frameToStart(nFrameToStart)
   {
      this._nFrameToStart = nFrameToStart;
   }
   function set canCancel(bCanCancel)
   {
      this._bCanCancel = bCanCancel;
      return this["\x1e\x13\x1d"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Cinematic.CLASS_NAME);
   }
   function destroy()
   {
      _root._quality = this["\x1e\x0b\x10"];
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\x16\x02"]});
   }
   function §\x1b\t\f§(§\x18\x1b\x12§)
   {
      if(!this["\x1d\b\n"]._visible)
      {
         this.api.ui.getUIComponent("NpcDialog")._visible = false;
         this.api.ui.getUIComponent("GameResult")._visible = false;
         this.api.ui.getUIComponent("GameResultLight")._visible = false;
      }
      if(!this._bDisplayNpc)
      {
         this.api.gfx.SpriteHandler.hideSprites(true,2);
      }
      if(!this._bDisplayMonster)
      {
         this.api.gfx.SpriteHandler.hideSprites(true,3);
      }
      _loc2_.gotoAndPlay(this._nFrameToStart);
      this._btnCancel._visible = this._bCanCancel || this.api.datacenter.Player.isAuthorized;
   }
   function addListeners()
   {
      this["\x1d\x05\x13"].addEventListener("initialization",this);
      this["\x1d\x05\x13"].addEventListener("complete",this);
      this._btnCancel.addEventListener("click",this);
      this._btnCancel.addEventListener("over",this);
      this._btnCancel.addEventListener("out",this);
   }
   function §\x18\x16\x02§()
   {
      this["\x1d\x05\x13"].contentPath = this["\x1e\t\x11"];
      if(_root._quality == "HIGH")
      {
         this["\x1e\x0b\x10"] = _root._quality;
         _root._quality = "MEDIUM";
      }
      this["\x1d\x04\n"].text = this.api.lang.getText("LOADING");
   }
   function initialization(oEvent)
   {
      this["\x1d\x04\n"]._visible = false;
      _loc2_.target.content.cinematic = this;
      this.addToQueue({object:this,method:this["\x1b\t\f"],params:[_loc2_.target.content]});
   }
   function complete(oEvent)
   {
      _loc2_.target.stop();
      _loc2_.target.content.stop();
      _loc2_.target.content.cinematic.stop();
   }
   function click(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._btnCancel)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("LEAVE_CINEMATIC"),"CAUTION_YESNO",{name:"Cinematic",listener:this});
      }
   }
   function over(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._btnCancel)
      {
         this.gapi.showTooltip(this.api.lang.getText("CANCEL_CINEMATIC"),_loc2_.target,-20);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function onCinematicFinished()
   {
      this["\x17\x07\x19"]({type:"cinematicFinished"});
      this["\x1e\x05\n"].onActionEnd();
      if(this["\x1e\x0b\x10"] != undefined)
      {
         _root._quality = this["\x1e\x0b\x10"];
      }
      if(!this._bDisplayNpc)
      {
         this.api.gfx.SpriteHandler.hideSprites(false,2);
      }
      if(!this._bDisplayMonster)
      {
         this.api.gfx.SpriteHandler.hideSprites(false,3);
      }
      if(!this["\x1d\b\n"]._visible)
      {
         this.api.ui.getUIComponent("NpcDialog")._visible = true;
         this.api.ui.getUIComponent("GameResult")._visible = true;
         this.api.ui.getUIComponent("GameResultLight")._visible = true;
      }
      if(!this.api.ui.getUIComponent("Banner")._visible)
      {
         this.api.ui.getUIComponent("Banner")._visible = true;
      }
      this["\x1b\x13\x13"]();
   }
   function onSubtitle(§\x1b\x0f\x1b§, §\x19\x0f\x04§)
   {
      new org.flashdevelop.utils.FlashConnect.trace("Sub : " + _loc2_,"dofus.graphics.gapi.ui.Cinematic::onSubtitle","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/graphics/gapi/ui/Cinematic.as",249);
      var _loc4_ = this["\x1e\t\x11"].substring(0,this["\x1e\t\x11"].toLowerCase().indexOf(".swf"));
      while(_loc4_.indexOf("/") > -1)
      {
         _loc4_ = _loc4_.substr(_loc4_.indexOf("/") + 1);
      }
      var _loc5_ = Number(_loc4_);
      var _loc6_ = this.api.lang["\x18\x01\x13"](_loc5_,_loc3_);
      if(_loc6_ != undefined)
      {
         _loc2_.text = _loc6_;
      }
   }
   function yes(oEvent)
   {
      this.onCinematicFinished();
   }
}
