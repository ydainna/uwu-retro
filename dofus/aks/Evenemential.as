class dofus.aks.Evenemential extends dofus.aks.Handler
{
   function Evenemential(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function sendAskWorldUniqueDropsStates()
   {
      this.aks.send("YD");
   }
   function sendRollDice(nDicesCount, nDiceMaxValue, sChatChannelSymbol)
   {
      this.aks.send("Yd" + nDicesCount + "|" + nDiceMaxValue + "|" + sChatChannelSymbol);
   }
   function onWorldUniqueDropsStates(sExtraData)
   {
      var _loc3_ = new ank.utils.["\x17\x0e\r"]();
      var _loc4_ = _loc2_.split("|");
      var _loc5_ = 0;
      while(_loc5_ < _loc4_.length)
      {
         var _loc6_ = _loc4_[_loc5_].split(";");
         var _loc7_ = Number(_loc6_[0]);
         var _loc8_ = _loc6_[1] == "1";
         var _loc9_ = new dofus.datacenter..evenemential.WorldUniqueDropState(_loc7_,_loc8_);
         _loc3_["\x15\x1d\x13"](_loc7_,_loc9_);
         _loc5_ = _loc5_ + 1;
      }
      this.api.datacenter.Basics.worldUniqueDropsStates = _loc3_;
   }
   function onDicesRollResult(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = _loc3_[0] == "E";
      if(_loc4_)
      {
         var _loc5_ = _loc3_[1];
         _loc3_ = _loc3_.slice(2);
         this.api.kernel.showMessage(undefined,this.api.lang.getText(_loc5_,_loc3_),"ERROR_CHAT");
         return undefined;
      }
      var _loc6_ = _loc3_[1];
      var _loc7_ = _loc3_[2];
      var _loc8_ = Number(_loc3_[3]);
      var _loc9_ = Number(_loc3_[4]);
      var _loc10_ = Number(_loc3_[5]);
      var _loc11_ = _loc3_.length <= 6 ? "" : "(" + this.api.lang.getText(_loc3_[6]) + ") ";
      var _loc12_ = this.api.kernel.ChatManager.getLinkName(_loc6_,_loc7_);
      var _loc13_ = this.api.kernel.DebugManager.getTimestampShort() + " " + _loc11_ + this.api.lang.getText("DICE_LAUNCH_RESULT",[_loc12_,_loc8_,_loc9_,_loc10_]);
      this.api.kernel.showMessage(undefined,_loc13_,"INFO_CHAT");
   }
}
