class dofus.aks.Subway extends dofus.aks.Handler
{
   function Subway(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function §\x18\x13\x1d§()
   {
      this.aks.send("Wv");
   }
   function §\x1b\x16\x11§(mapID)
   {
      this.aks.send("Wu" + mapID);
   }
   function §\x1a\x07\t§()
   {
      this.aks.send("Ww");
   }
   function §\x1a\x07\f§(mapID)
   {
      this.aks.send("Wp" + mapID);
   }
   function onCreate(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = new ank.utils.ExtendedArray();
      var _loc6_ = 1;
      while(_loc6_ < _loc3_.length)
      {
         var _loc7_ = _loc3_[_loc6_].split(";");
         var _loc8_ = Number(_loc7_[0]);
         var _loc9_ = Number(_loc7_[1]);
         var _loc10_ = this.api.lang["\x17\x18\x12"](_loc8_);
         var _loc11_ = 0;
         while(_loc11_ < _loc10_.length)
         {
            var _loc12_ = new dofus.datacenter.Subway(_loc10_[_loc11_],_loc9_);
            if(_loc5_[_loc12_["\x16\x17\r"]] == undefined)
            {
               _loc5_[_loc12_["\x16\x17\r"]] = new ank.utils.ExtendedArray();
            }
            _loc5_[_loc12_["\x16\x17\r"]].push(_loc12_);
            _loc11_ = _loc11_ + 1;
         }
         _loc6_ = _loc6_ + 1;
      }
      this.api.ui.loadUIComponent("Subway","Subway",{data:_loc5_});
   }
   function onLeave()
   {
      this.api.ui.unloadUIComponent("Subway");
   }
   function §\x19\x1b\n§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = new ank.utils.ExtendedArray();
      var _loc6_ = 1;
      while(_loc6_ < _loc3_.length)
      {
         var _loc7_ = _loc3_[_loc6_].split(";");
         var _loc8_ = Number(_loc7_[0]);
         var _loc9_ = false;
         var _loc10_ = -1;
         var _loc11_ = _loc7_[1];
         if(_loc11_.charAt(_loc11_.length - 1) == "*")
         {
            _loc9_ = true;
            _loc10_ = Number(_loc11_.substr(0,_loc11_.length - 1));
         }
         else
         {
            _loc10_ = Number(_loc11_);
         }
         _loc5_.push(new dofus.datacenter.["\x1a\x07\n"](_loc8_,_loc10_,_loc9_));
         _loc6_ = _loc6_ + 1;
      }
      this.api.ui.loadUIComponent("Subway","Subway",{data:_loc5_,type:dofus.graphics.gapi.ui.Subway["\x1b\f\x05"]});
   }
   function §\x19\x1b\x10§()
   {
      this.api.ui.unloadUIComponent("Subway");
   }
   function §\x19\x1e\r§()
   {
      this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_USE_SUBWAY"),"ERROR_CHAT");
   }
}
