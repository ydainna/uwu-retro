class dofus.aks.Emotes extends dofus.aks.Handler
{
   function Emotes(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function §\x1b\x16\x15§(§\x19\x06\x13§)
   {
      if(this.api.datacenter.Game["\x18\r\x15"])
      {
         return undefined;
      }
      if(3734 - this.api.datacenter.Basics.aks_emote_lastActionTime < dofus.Constants["\x16\x1c\x14"])
      {
         return undefined;
      }
      this.api.datacenter.Basics.aks_emote_lastActionTime = 1846;
      this.aks.send("eU" + _loc2_,true);
   }
   function §\x1a\x16\x04§(§\x19\x06\x01§)
   {
      this.aks.send("eD" + _loc2_,true);
   }
   function §\x19\x1e\f§(bSuccess, §\x1a\x1b\r§)
   {
      if(this.api.datacenter.Game["\x18\r\x15"])
      {
         return undefined;
      }
      if(!_loc2_)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_USE_EMOTE"),"ERROR_CHAT");
         return undefined;
      }
      var _loc4_ = _loc3_.split("|");
      var _loc5_ = _loc4_[0];
      var _loc6_ = Number(_loc4_[1]);
      var _loc7_ = Number(_loc4_[2]);
      if(_loc6_ != 1 && (_loc6_ != 19 && !this.api.electron["\x18\x10\x11"]) || this.api.kernel.ChatManager["\x18\f\x16"](this.api.datacenter.["\x1b\x07\x0e"].getItemAt(_loc5_).name))
      {
         return undefined;
      }
      var _loc8_ = !_global.isNaN(_loc6_) ? "emote" + _loc6_ : "static";
      this.api.gfx["\x17\x01\b"](_loc5_);
      if(_global.isNaN(_loc7_) && _global.isNaN(_loc6_))
      {
         this.api.gfx["\x1a\x16\x17"](_loc5_,_loc8_);
      }
      else
      {
         this.api.gfx["\x1a\x1a\x0b"](_loc5_,_loc8_,true,_loc7_);
      }
   }
   function §\x19\x19\x1c§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      var _loc6_ = this.api.datacenter.Player;
      _loc6_["\x16\x1c\x02"]();
      var _loc7_ = 0;
      while(_loc7_ < 32)
      {
         if((_loc4_ >> _loc7_ & 1) == 1)
         {
            if(this.api.lang["\x17\x17\x0b"](_loc7_ + 1) != undefined)
            {
               _loc6_["\x15\x1d\t"](_loc7_ + 1);
            }
         }
         _loc7_ = _loc7_ + 1;
      }
      var _loc8_ = 0;
      while(_loc8_ < 32)
      {
         if((_loc5_ >> _loc8_ & 1) == 1)
         {
            if(this.api.lang["\x17\x17\x0b"](_loc8_ + 1) != undefined)
            {
               _loc6_["\x15\x1d\t"](_loc8_ + 1);
            }
         }
         _loc8_ = _loc8_ + 1;
      }
      this["\x1a\n\x15"]();
   }
   function §\x19\x13\x1b§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = _loc3_[1] == "0";
      if(!_loc5_)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("NEW_EMOTE",[this.api.lang["\x17\x17\x0b"](_loc4_).n]),"INFO_CHAT");
      }
      this["\x1a\n\x15"]();
   }
   function §\x19\x1b\x1c§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = _loc3_[1] == "0";
      if(!_loc5_)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("REMOVE_EMOTE",[this.api.lang["\x17\x17\x0b"](_loc4_).n]),"INFO_CHAT");
      }
      this["\x1a\n\x15"]();
   }
   function §\x19\x16\x12§(§\x1a\x1b\r§)
   {
      if(this.api.datacenter.Game["\x18\r\x15"])
      {
         return undefined;
      }
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = _loc3_[0];
      var _loc5_ = Number(_loc3_[1]);
      var _loc6_ = this.api.gfx["\x18\x01\b"](_loc4_)["\x16\x03\x17"];
      this.api.gfx["\x1a\x1a\x05"](_loc4_,_loc5_);
      this.api.gfx["\x1a\x1a\x03"](_loc4_,_loc6_);
   }
   function §\x1a\n\x15§()
   {
      this.api.ui.getUIComponent("Banner")["\x1b\x16\x04"]();
      this.api.ui.getUIComponent("Banner")["\x1a\x1e\x1d"](true);
   }
}
