class dofus.aks.ChooseReward extends dofus.aks.Handler
{
   static var ICONS_NEEDED = 6;
   function ChooseReward(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function onData(§\x1a\x1b\r§)
   {
      if(_loc2_.length != 0)
      {
         var _loc3_ = new Array();
         var _loc4_ = _loc2_.split("|");
         var _loc5_ = _loc4_[3];
         var _loc6_ = 0;
         while(_loc6_ < 3)
         {
            var _loc7_ = new Array();
            var _loc8_ = _loc4_[_loc6_].split(";");
            var _loc9_ = new dofus.datacenter.["\x18\x10\x15"](undefined,_loc8_[0]);
            var _loc10_ = _loc8_[2].slice(14);
            var _loc11_ = new dofus.datacenter.["\x18\x10\x15"](undefined,undefined,1,0,String(_loc10_));
            var _loc12_ = _loc8_[1].split(",");
            var _loc13_ = 0;
            while(_loc13_ < dofus.aks.ChooseReward.ICONS_NEEDED)
            {
               _loc7_.push(new dofus.datacenter.["\x18\x10\x15"](undefined,_loc12_[_loc13_]));
               _loc13_ = _loc13_ + 1;
            }
            var _loc14_ = new Object();
            _loc14_.fakeItems = _loc7_;
            _loc14_.realItem = _loc9_;
            _loc14_.bonusEffects = _loc11_;
            _loc3_.push(_loc14_);
            _loc6_ = _loc6_ + 1;
         }
         if(dofus.aks.ChooseReward.TOKENS_ARRAY == undefined)
         {
            dofus.aks.ChooseReward.TOKENS_ARRAY = _loc4_[4].split(";");
            var _loc15_ = 1;
            while(_loc15_ < dofus.aks.ChooseReward.TOKENS_ARRAY.length)
            {
               dofus.aks.ChooseReward.TOKENS_ARRAY[_loc15_] = Number(dofus.aks.ChooseReward.TOKENS_ARRAY[_loc15_ - 1]) + Number(dofus.aks.ChooseReward.TOKENS_ARRAY[_loc15_]);
               _loc15_ = _loc15_ + 1;
            }
         }
         if(this.api.ui.getUIComponent("ChooseReward") == undefined)
         {
            this.api.ui.loadUIComponent("ChooseReward","ChooseReward",{items:_loc3_,tokens:dofus.aks.ChooseReward.TOKENS_ARRAY,currentRoom:_loc5_},{bAlwaysOnTop:true});
         }
      }
   }
}
