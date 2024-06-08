class dofus.aks.Mount extends dofus.aks.Handler
{
   function Mount(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function §\x1a\r\x05§(§\x1b\x03\x1d§)
   {
      this.aks.send("Rn" + _loc2_,true);
   }
   function §\x18\x12\x03§()
   {
      this.aks.send("Rf");
   }
   function §\x1a\x1b\x06§(§\x19\x10\x10§)
   {
      this.aks.send("Rx" + _loc2_,true);
   }
   function §\x1a\x0e\x0e§()
   {
      this.aks.send("Rr",false);
   }
   function data(§\x19\n\x17§, §\x1b\n\x16§)
   {
      this.aks.send("Rd" + _loc2_ + "|" + _loc3_,true);
   }
   function §\x1a\x03\x15§(§\x19\x0e\x18§)
   {
      this.aks.send("Rp" + _loc2_,true);
   }
   function §\x1a\f\x11§(§\x19\x04\x12§)
   {
      this.aks.send("Ro" + _loc2_,true);
   }
   function §\x18\x1e\x0b§(§\x19\f\x10§)
   {
      this.aks.send("Rs" + _loc2_,true);
   }
   function §\x18\x1e\n§(§\x19\f\x10§)
   {
      this.aks.send("Rb" + _loc2_,true);
   }
   function §\x18\x13\x1d§()
   {
      this.aks.send("Rv");
   }
   function §\x16\x17\n§()
   {
      this.aks.send("Rc");
   }
   function §\x19\x16\x1c§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_.charAt(0);
      switch(_loc3_)
      {
         case "+":
            this.api.datacenter.Player.mount = this["\x17\x02\x14"](_loc2_.substr(1));
            break;
         case "-":
            this["\x1b\x13\x0e"]();
            break;
         case "E":
            this["\x17\r\x16"](_loc2_.charAt(1));
      }
   }
   function §\x19\x1e\x16§(§\x1a\x1b\r§)
   {
      var _loc3_ = Number(_loc2_);
      if(!_global.isNaN(_loc3_))
      {
         this.api.datacenter.Player.mountXPPercent = _loc3_;
      }
   }
   function §\x19\x1a\x10§(§\x1a\x1b\r§)
   {
      this.api.datacenter.Player.mount.name = _loc2_;
   }
   function onData(§\x1a\x1b\r§)
   {
      var _loc3_ = this["\x17\x02\x14"](_loc2_);
      this.api.ui.loadUIComponent("MountViewer","MountViewer",{mount:_loc3_});
   }
   function §\x19\x1a\n§(§\x1a\x1b\r§)
   {
      this.api.datacenter.["\x18\x18\x0e"].resetMountPark();
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_.shift());
      var _loc5_ = 0;
      while(_loc5_ < _loc3_.length)
      {
         var _loc6_ = _loc3_[_loc5_].split(";");
         var _loc7_ = Number(_loc6_[0]);
         var _loc8_ = Number(_loc6_[1]);
         var _loc9_ = Number(_loc6_[2]);
         var _loc10_ = Number(_loc6_[3]);
         var _loc11_ = _loc6_[4];
         var _loc12_ = _loc6_[5];
         var _loc13_ = this.api.kernel["\x16\x19\t"]["\x17\x02\x0f"](_loc12_);
         var _loc14_ = Number(_loc6_[6]);
         var _loc15_ = new dofus.datacenter.["\x18\x1e\t"](_loc7_,_loc8_,_loc9_,undefined,_loc10_,_loc11_,_loc13_,this.api.datacenter.["\x18\x18\x0e"].id,_loc4_,_loc14_);
         this.api.datacenter.["\x18\x18\x0e"].addMountPark(_loc15_);
         _loc5_ = _loc5_ + 1;
      }
   }
   function §\x19\x1c\n§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_.charAt(0);
      switch(_loc3_)
      {
         case "+":
            this.api.datacenter.Player.isRiding = true;
            break;
         case "-":
            this.api.datacenter.Player.isRiding = false;
      }
   }
   function §\x19\x1a\x0b§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_.split("|");
      this.api.ui.loadUIComponent("MountParkSale","MountParkSale",{defaultPrice:Number(_loc3_[1]),§\x18\x0b\x01§:Number(_loc3_[2])});
   }
   function §\x19\x19\x16§()
   {
      this.api.ui.unloadUIComponent("MountParkSale");
   }
   function §\x17\r\x16§(§\x17\r\x1c§)
   {
      switch(_loc2_)
      {
         case "-":
            var _loc3_ = this.api.lang.getText("MOUNT_ERROR_INVENTORY_NOT_EMPTY");
            break;
         case "+":
            _loc3_ = this.api.lang.getText("MOUNT_ERROR_ALREADY_HAVE_ONE");
            break;
         case "r":
            _loc3_ = this.api.lang.getText("MOUNT_ERROR_RIDE");
      }
      this.api.kernel.showMessage(undefined,_loc3_,"ERROR_CHAT");
   }
   function §\x1b\x13\x0e§()
   {
      this.api.datacenter.Player.mount = undefined;
   }
   function §\x17\x02\x14§(§\x1b\x05\x03§, §\x19\x06\x19§)
   {
      var _loc4_ = _loc2_.split(":");
      var _loc5_ = Number(_loc4_[1]);
      var _loc6_ = new dofus.datacenter..Mount(_loc5_,undefined,_loc3_);
      _loc6_.ID = _loc4_[0];
      _loc6_.ancestors = _loc4_[2].split(",");
      var _loc7_ = _loc4_[3].split(",");
      _loc6_["\x16\x17\x01"] = new ank.utils.ExtendedArray();
      var _loc8_ = 0;
      while(_loc8_ < _loc7_.length)
      {
         var _loc9_ = Number(_loc7_[_loc8_]);
         if(_loc9_ != 0 && !_global.isNaN(_loc9_))
         {
            _loc6_["\x16\x17\x01"].push({label:this.api.lang["\x17\x1c\n"](_loc9_).n,data:_loc9_});
         }
         _loc8_ = _loc8_ + 1;
      }
      _loc6_.name = _loc4_[4] != "" ? _loc4_[4] : this.api.lang.getText("NO_NAME");
      _loc6_["\x1a\x1b\f"] = Number(_loc4_[5]);
      var _loc10_ = _loc4_[6].split(",");
      _loc6_.xp = Number(_loc10_[0]);
      _loc6_["\x1b\x1a\x0b"] = Number(_loc10_[1]);
      _loc6_["\x1b\x1a\t"] = Number(_loc10_[2]);
      _loc6_.level = Number(_loc4_[7]);
      _loc6_.mountable = !!Number(_loc4_[8]);
      _loc6_.podsMax = Number(_loc4_[9]);
      _loc6_.wild = !!Number(_loc4_[10]);
      var _loc11_ = _loc4_[11].split(",");
      _loc6_.stamina = Number(_loc11_[0]);
      _loc6_.staminaMax = Number(_loc11_[1]);
      var _loc12_ = _loc4_[12].split(",");
      _loc6_.maturity = Number(_loc12_[0]);
      _loc6_.maturityMax = Number(_loc12_[1]);
      var _loc13_ = _loc4_[13].split(",");
      _loc6_.energy = Number(_loc13_[0]);
      _loc6_.energyMax = Number(_loc13_[1]);
      var _loc14_ = _loc4_[14].split(",");
      _loc6_.serenity = Number(_loc14_[0]);
      _loc6_.serenityMin = Number(_loc14_[1]);
      _loc6_.serenityMax = Number(_loc14_[2]);
      var _loc15_ = _loc4_[15].split(",");
      _loc6_.love = Number(_loc15_[0]);
      _loc6_.loveMax = Number(_loc15_[1]);
      _loc6_.fecondation = Number(_loc4_[16]);
      _loc6_.fecondable = !!Number(_loc4_[17]);
      _loc6_["\x1a\x16\x06"](_loc4_[18]);
      var _loc16_ = _loc4_[19].split(",");
      _loc6_.tired = Number(_loc16_[0]);
      _loc6_.tiredMax = Number(_loc16_[1]);
      var _loc17_ = _loc4_[20].split(",");
      _loc6_.reprod = Number(_loc17_[0]);
      _loc6_.reprodMax = Number(_loc17_[1]);
      return _loc6_;
   }
}
