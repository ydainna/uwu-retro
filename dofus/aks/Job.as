class dofus.aks.Job extends dofus.aks.Handler
{
   function Job(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function §\x16\x18\x19§(§\x19\b\x1d§, §\x1a\x03\x11§, §\x18\x1d\b§)
   {
      this.aks.send("JO" + _loc2_ + "|" + _loc3_ + "|" + _loc4_);
   }
   function §\x19\x1c\x1a§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = this.api.datacenter.Player["\x18\x11\x0f"];
      var _loc5_ = 0;
      while(_loc5_ < _loc3_.length)
      {
         var _loc6_ = _loc3_[_loc5_].split(";");
         var _loc7_ = Number(_loc6_[0]);
         var _loc8_ = new ank.utils.ExtendedArray();
         var _loc9_ = _loc6_[1].split(",");
         var _loc10_ = _loc9_.length;
         while(true)
         {
            _loc10_;
            if(_loc10_-- <= 0)
            {
               break;
            }
            var _loc11_ = _loc9_[_loc10_].split("~");
            _loc8_.push(new dofus.datacenter.["\x1b\x02\n"](_loc11_[0],_loc11_[1],_loc11_[2],_loc11_[3],_loc11_[4]));
         }
         var _loc12_ = new dofus.datacenter..Job(_loc7_,_loc8_);
         var _loc13_ = _loc4_.findFirstItem("id",_loc7_);
         if(_loc13_.index != -1)
         {
            _loc4_["\x1b\x15\x05"](_loc13_.index,_loc12_);
         }
         else
         {
            _loc4_.push(_loc12_);
         }
         _loc5_ = _loc5_ + 1;
      }
   }
   function §\x19\x1e\x16§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = this.api.datacenter.Player["\x18\x11\x0f"];
      var _loc5_ = _loc3_.length;
      while(true)
      {
         _loc5_;
         if(_loc5_-- <= 0)
         {
            break;
         }
         var _loc6_ = _loc3_[_loc5_].split(";");
         var _loc7_ = Number(_loc6_[0]);
         var _loc8_ = Number(_loc6_[1]);
         var _loc9_ = Number(_loc6_[2]);
         var _loc10_ = Number(_loc6_[3]);
         var _loc11_ = Number(_loc6_[4]);
         var _loc12_ = _loc4_.findFirstItem("id",_loc7_);
         if(_loc12_.index != -1)
         {
            var _loc13_ = _loc12_.item;
            _loc13_.level = _loc8_;
            _loc13_["\x1b\x1a\x0b"] = _loc9_;
            _loc13_["\x1b\x1a\t"] = _loc11_;
            _loc13_.xp = _loc10_;
            _loc4_["\x1b\x15\x05"](_loc12_.index,_loc13_);
         }
      }
   }
   function §\x19\x19\x17§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      this.api.kernel.showMessage(this.api.lang.getText("INFORMATIONS"),this.api.lang.getText("NEW_JOB_LEVEL",[this.api.lang["\x17\x1a\x02"](_loc4_).n,_loc5_]),"ERROR_BOX",{name:"NewJobLevel"});
   }
   function §\x19\x1b\x1c§(§\x1a\x1b\r§)
   {
      var _loc3_ = Number(_loc2_);
      var _loc4_ = this.api.datacenter.Player["\x18\x11\x0f"];
      var _loc5_ = _loc4_.findFirstItem("id",_loc3_);
      if(_loc5_.index != -1)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("REMOVE_JOB",[_loc5_.item.name]),"INFO_CHAT");
         _loc4_["\x1a\f\x0b"](_loc5_.index,1);
      }
   }
   function §\x19\x1a\x1d§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      var _loc6_ = Number(_loc3_[2]);
      this.api.datacenter.Player["\x18\x11\x0f"][_loc4_]["\x1a\x01\b"] = new dofus.datacenter.["\x18\x11\x0e"](_loc5_,_loc6_);
   }
}
