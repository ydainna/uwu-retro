class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.§\x18\x04\x05§.GuildMembersViewerMember extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   var _nIconOffset = 15;
   var §\x17\x12\x1b§ = 150;
   function GuildMembersViewerMember()
   {
      super();
   }
   function §\x17\x07§(§\x18\x1b\x17§)
   {
      this["\x1d\r\t"] = _loc2_;
      return this.list;
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      var _loc5_ = _global.api;
      if(_loc2_)
      {
         this["\x1e\x03\x18"] = _loc4_;
         var _loc6_ = this["\x1d\r\t"].gapi.api.datacenter.Player.guildInfos["\x1a\x05\x15"];
         var _loc7_ = _loc4_["\x1a\x0e\x13"]["\x18\f\x1a"];
         this["\x1c\x1b\x0f"].text = _loc4_.name;
         this["\x1c\x1d\x10"].text = this["\x1d\r\t"].gapi.api.datacenter.Player.guildInfos.getRankName(_loc4_.rank);
         this["\x1c\x1a\x07"].text = _loc4_.level;
         this["\x1c\x1c\x16"].text = _loc4_.percentxp + "%";
         this["\x1d\x04\x13"].text = new ank.utils.ExtendedString(_loc4_.winxp)["\x15\x1e\x01"](_loc5_.lang.getConfigText("THOUSAND_SEPARATOR"),3);
         this._btnBann._visible = _loc4_["\x18\x0e\x14"] || _loc6_["\x16\x15\x13"];
         this._btnProfil._visible = true;
         this["\x1d\x05\r"].contentPath = dofus.Constants["\x18\x04\x16"] + _loc4_.gfx + ".swf";
         this["\x1d\x0b\x0b"]._visible = _loc4_.state == 2;
         this["\x1d\x0e\x06"]._visible = _loc4_.state == 0;
         this._mcOver.hint = _loc4_.lastConnection;
         if(_loc7_)
         {
            this["\x1c\x1d\x10"]._x = this._nOriginalLblX + this._nIconOffset;
            this.attachMovie("GAPILoader","_ldrIcon",100,{_x:this._nOriginalLblX - 8,_y:this["\x1c\x1d\x10"]._y - 5,_height:15,_width:15,contentPath:"GuildMemberCrown",centerContent:true,scaleContent:true});
         }
         else
         {
            this._ldrIcon.removeMovieClip();
            this["\x1c\x1d\x10"]._x = this._nOriginalLblX;
         }
         this["\x1d\x05\x01"].contentPath = dofus.Constants["\x16\x02\x1c"] + _loc4_.alignement + ".swf";
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1c\x1b\x0f"].text = "";
         this["\x1c\x1d\x10"].text = "";
         this["\x1c\x1a\x07"].text = "";
         this["\x1c\x1c\x16"].text = "";
         this["\x1d\x04\x13"].text = "";
         this._btnBann._visible = false;
         this._btnProfil._visible = false;
         this["\x1d\x05\r"].contentPath = "";
         this["\x1d\x05\x01"].contentPath = "";
         this["\x1d\x0b\x0b"]._visible = false;
         this["\x1d\x0e\x06"]._visible = false;
         this._ldrIcon.removeMovieClip();
         this["\x1c\x1d\x10"]._x = this._nOriginalLblX;
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
      this._btnBann._visible = false;
      this._btnProfil._visible = false;
      this["\x1d\x0b\x0b"]._visible = false;
      this["\x1d\x0e\x06"]._visible = false;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this._nOriginalLblX = this["\x1c\x1d\x10"]._x;
   }
   function addListeners()
   {
      this._btnBann.addEventListener("click",this);
      this._btnProfil.addEventListener("click",this);
      this["\x1d\x0b\x0b"].onRollOver = function()
      {
         this._parent.over({target:this});
      };
      this["\x1d\x0b\x0b"].onRollOut = function()
      {
         this._parent.out({target:this});
      };
      this["\x1d\x0b\x0b"].onRelease = function()
      {
         this._parent.click({target:this});
      };
   }
   function click(oEvent)
   {
      var _loc3_ = this["\x1d\r\t"].gapi.api;
      switch(_loc2_.target._name)
      {
         case "_btnBann":
            var _loc4_ = _loc3_.datacenter.Player.guildInfos.members.length;
            if(this["\x1e\x03\x18"]["\x1a\x0e\x13"]["\x18\f\x1a"] && _loc4_ > 1)
            {
               this["\x1d\r\t"].gapi.api.kernel.showMessage(undefined,_loc3_.lang.getText("GUILD_BOSS_CANT_BE_BANN"),"ERROR_BOX");
            }
            else if(this["\x1e\x03\x18"]["\x18\x0e\x14"])
            {
               _loc3_.kernel.showMessage(undefined,_loc3_.lang.getText("DO_U_DELETE_YOU") + (_loc4_ <= 1 ? "\n" + _loc3_.lang.getText("DELETE_GUILD_CAUTION") : ""),"CAUTION_YESNO",{name:"DeleteMember",listener:this,params:{name:this["\x1e\x03\x18"].name}});
            }
            else
            {
               _loc3_.kernel.showMessage(undefined,_loc3_.lang.getText("DO_U_DELETE_MEMBER",[this["\x1e\x03\x18"].name]),"CAUTION_YESNO",{name:"DeleteMember",listener:this,params:{name:this["\x1e\x03\x18"].name}});
            }
            break;
         case "_btnProfil":
            this["\x1d\r\t"].gapi.loadUIComponent("GuildMemberInfos","GuildMemberInfos",{member:this["\x1e\x03\x18"]});
            break;
         case "\x1d\x0b\x0b":
            _loc3_.network.GameActions.joinChallengeAsSpectator(0,this["\x1e\x03\x18"].id);
      }
   }
   function yes(oEvent)
   {
      this["\x1d\r\t"].gapi.api.network.Guild["\x16\b\x19"](_loc2_.params.name);
   }
   function over(oEvent)
   {
      var _loc3_ = this["\x1d\r\t"].gapi.api;
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) !== "\x1d\x0b\x0b")
      {
         if(this["\x1e\x03\x18"].state != 0)
         {
            return undefined;
         }
         var _loc4_ = this["\x1e\x03\x18"].lastConnection;
         var _loc5_ = Math.floor(_loc4_ / 744);
         _loc4_ -= _loc5_ * 24 * 31;
         var _loc6_ = Math.floor(_loc4_ / 24);
         _loc4_ -= _loc6_ * 24;
         var _loc7_ = _loc4_;
         if(_loc5_ < 0)
         {
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
         }
         var _loc8_ = " " + _loc3_.lang.getText("AND") + " ";
         var _loc9_ = "";
         if(_loc5_ > 0)
         {
            if(_loc6_ == 0)
            {
               var _loc10_ = ank.utils.PatternDecoder["\x16\x1d\x15"](_loc3_.lang.getText("MONTHS"),"m",_loc5_ == 1);
               _loc9_ += _loc5_ + " " + _loc10_;
            }
            else
            {
               var _loc11_ = ank.utils.PatternDecoder["\x16\x1d\x15"](_loc3_.lang.getText("MONTHS"),"m",_loc5_ == 1);
               var _loc12_ = ank.utils.PatternDecoder["\x16\x1d\x15"](_loc3_.lang.getText("DAYS"),"m",_loc6_ == 1);
               _loc9_ += _loc5_ + " " + _loc11_ + _loc8_ + _loc6_ + " " + _loc12_;
            }
         }
         else if(_loc6_ != 0)
         {
            var _loc13_ = ank.utils.PatternDecoder["\x16\x1d\x15"](_loc3_.lang.getText("DAYS"),"m",_loc6_ == 1);
            _loc9_ += _loc6_ + " " + _loc13_;
         }
         else
         {
            _loc9_ += _loc3_.lang.getText("A_CONNECTED_TODAY");
         }
         _loc3_.ui.showTooltip(_loc3_.lang.getText("GUILD_LAST_CONNECTION",[_loc9_]),this._mcOver,-20);
      }
      else
      {
         _loc3_.ui.showTooltip(_loc3_.lang.getText("CLICK_TO_JOIN_AS_SPECTATOR"),this["\x1d\x0b\x0b"],-20);
      }
   }
   function out(oEvent)
   {
      this["\x1d\r\t"].gapi.api.ui.hideTooltip();
   }
}
