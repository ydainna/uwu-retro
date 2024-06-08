class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.GuildMembersViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "GuildMembersViewer";
   function GuildMembersViewer()
   {
      super();
   }
   function §\x18\x0e§(§\x17\x0b\x07§)
   {
      this["\x1c\x0f\x05"] = _loc2_;
      this["\x1b\x14\x14"](this["\x1c\x0f\x05"]);
      return this["\x03\x16"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.GuildMembersViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this["\x1c\x0e\x0f"].addEventListener("itemSelected",this);
      this["\x1c\x0e\x0f"].addEventListener("itemRollOver",this);
      this["\x1c\x0e\x0f"].addEventListener("itemRollOut",this);
      this["\x1c\x0b\x03"].addEventListener("click",this);
   }
   function initTexts()
   {
      this["\x1c\x0e\x0f"]["\x16\x1d\x12"] = ["","",this.api.lang.getText("NAME_BIG"),this.api.lang.getText("GUILD_RANK"),this.api.lang.getText("LEVEL_SMALL"),this.api.lang.getText("PERCENT_XP"),this.api.lang.getText("WIN_XP"),""];
      this["\x1c\x16\x17"].text = this.api.lang.getText("GUILD_MEMBERS_LIST");
      this["\x1d\x01\x12"].text = this.api.lang.getText("DISPLAY_OFFLINE_GUILD_MEMBERS");
   }
   function §\x1b\x14\x14§(§\x17\x0b\x07§)
   {
      var _loc3_ = 0;
      var _loc4_ = 0;
      while(_loc4_ < _loc2_.length)
      {
         if(_loc2_[_loc4_].state != 0)
         {
            _loc3_ = _loc3_ + 1;
         }
         _loc4_ = _loc4_ + 1;
      }
      this["\x1c\x15\x1a"].text = _loc3_ + " / " + String(_loc2_.length) + " " + ank.utils.["\x1a\x04\t"]["\x16\x1d\x15"](this.api.lang.getText("MEMBERS"),"m",_loc2_.length < 2);
      var _loc5_ = new ank.utils.ExtendedArray();
      if(!this["\x1c\x0b\x03"].selected)
      {
         var _loc6_ = 0;
         while(_loc6_ < _loc2_.length)
         {
            if(_loc2_[_loc6_].state != 0)
            {
               _loc5_.push(_loc2_[_loc6_]);
            }
            _loc6_ = _loc6_ + 1;
         }
      }
      else
      {
         _loc5_ = _loc2_;
      }
      var _loc7_ = 0;
      var _loc8_ = 0;
      while(_loc8_ < _loc2_.length)
      {
         _loc7_ += _loc2_[_loc8_].level;
         _loc8_ = _loc8_ + 1;
      }
      _loc7_ = Math.floor(_loc7_ / _loc2_.length);
      if(!_global.isNaN(_loc7_))
      {
         this["\x1d\x01\x03"].text = this.api.lang.getText("GUILD_AVG_MEMBERS_LEVEL") + " : " + _loc7_;
      }
      else
      {
         this["\x1d\x01\x03"].text = "";
      }
      this["\x1c\x0e\x0f"].dataProvider = _loc5_;
   }
   function itemSelected(oEvent)
   {
      var _loc3_ = _loc2_.row.item;
      if(_loc3_.name != this.api.datacenter.Player.Name)
      {
         if(_loc3_.state == 0)
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("USER_NOT_CONNECTED",[_loc3_.name]),"ERROR_CHAT");
         }
         else
         {
            this.api.kernel.GameManager["\x1a\x1e\x14"](undefined,{sPlayerName:_loc3_.name,sPlayerID:_loc3_.id,bNoGuildInvite:true,bShowJoinFriend:this.api.datacenter.Player.isAuthorized,bShowViewTtgCollection:_loc3_.hasTtgCollection});
         }
      }
   }
   function itemRollOver(oEvent)
   {
      _loc2_.row.cellRenderer_mc.over();
   }
   function itemRollOut(oEvent)
   {
      _loc2_.row.cellRenderer_mc.out();
   }
   function click(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this["\x1c\x0b\x03"])
      {
         this["\x1b\x14\x14"](this["\x1c\x0f\x05"]);
      }
   }
}
