class dofus.aks.Quests extends dofus.aks.Handler
{
   function Quests(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function §\x17\x1b\x01§()
   {
      this.api.datacenter.Player.questBook = new dofus.datacenter.["\x1a\b\x1a"]();
      this.aks.send("QL");
   }
   function §\x18\x01\x0f§(§\x19\f\x1b§, §\x19\x05\x1b§)
   {
      this.aks.send("QS" + _loc2_ + (_loc3_ == undefined ? "" : "|" + (_loc3_ <= 0 ? _loc3_ : "+" + _loc3_)));
   }
   function onList(sExtraData)
   {
      var _loc3_ = _loc2_;
      var _loc4_ = 0;
      var _loc5_ = new Array();
      if(_loc2_.length != 0)
      {
         var _loc6_ = _loc2_.split("|");
         var _loc7_ = 0;
         while(_loc7_ < _loc6_.length)
         {
            var _loc8_ = _loc6_[_loc7_].split(";");
            var _loc9_ = Number(_loc8_[0]);
            var _loc10_ = _loc8_[1] == "1";
            var _loc11_ = Number(_loc8_[2]);
            var _loc12_ = _loc8_[3] == "1";
            var _loc13_ = _loc8_[4] == "1";
            if(!_loc10_)
            {
               _loc4_ = _loc4_ + 1;
            }
            var _loc14_ = new dofus.datacenter.["\x1a\b\x19"](_loc9_,_loc10_,_loc11_,_loc12_,_loc13_);
            _loc5_.push(_loc14_);
            _loc7_ = _loc7_ + 1;
         }
      }
      this.api.datacenter.Player.questBook["\x1a\t\x02"]["\x1a\r\x0b"](0,_loc5_);
      this.api.ui.getUIComponent("Quests")["\x1a\x18\x16"](_loc4_);
      this.api.ui.getUIComponent("Temporis").setQuests(_loc5_);
   }
   function §\x19\x1d\r§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = _loc3_[0].split(";");
      var _loc5_ = Number(_loc4_[0]);
      var _loc6_ = _loc4_[1] == "1";
      var _loc7_ = _loc4_[2] == "1";
      var _loc8_ = Number(_loc3_[1]);
      var _loc9_ = _loc3_[2];
      var _loc10_ = new ank.utils.ExtendedArray();
      var _loc11_ = _loc3_[3];
      var _loc12_ = _loc11_.length != 0 ? _loc11_.split(";") : new Array();
      _loc12_.reverse();
      var _loc13_ = _loc3_[4];
      var _loc14_ = _loc13_.length != 0 ? _loc13_.split(";") : new Array();
      var _loc15_ = _loc3_[5].split(";");
      var _loc16_ = _loc15_[0];
      var _loc17_ = _loc15_[1].split(",");
      var _loc18_ = _loc9_.split(";");
      var _loc19_ = 0;
      while(_loc19_ < _loc18_.length)
      {
         var _loc20_ = _loc18_[_loc19_].split(",");
         var _loc21_ = Number(_loc20_[0]);
         var _loc22_ = _loc20_[1] == "1";
         var _loc23_ = new dofus.datacenter.["\x1a\t\x01"](_loc21_,_loc22_);
         _loc10_.push(_loc23_);
         _loc19_ = _loc19_ + 1;
      }
      var _loc24_ = this.api.datacenter.Player.questBook;
      var _loc25_ = _loc24_["\x17\x1d\x0f"](_loc5_);
      if(_loc25_ != null)
      {
         var _loc26_ = new dofus.datacenter.["\x1a\t\x07"](_loc8_,1,_loc6_,_loc7_,_loc10_,_loc12_,_loc14_,_loc16_,_loc17_);
         _loc25_["\x15\x1e\x19"](_loc26_);
         this.api.ui.getUIComponent("Quests")["\x1a\x1a\f"](_loc26_);
      }
      else
      {
         ank.utils.Logger.err("[onStep] Impossible de trouver l\'objet de quête");
      }
   }
}
