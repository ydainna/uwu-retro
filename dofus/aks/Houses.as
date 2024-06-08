class dofus.aks.Houses extends dofus.aks.Handler
{
   function Houses(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function §\x18\x12\x01§(§\x19\b\x0b§)
   {
      this.aks.send("hQ" + _loc2_);
   }
   function §\x18\x13\x1d§()
   {
      this.aks.send("hV");
   }
   function sell(§\x19\f\x10§)
   {
      this.aks.send("hS" + _loc2_,true);
   }
   function buy(§\x19\f\x10§)
   {
      this.aks.send("hB" + _loc2_,true);
   }
   function state()
   {
      this.aks.send("hG",true);
   }
   function §\x1a\x1c\x07§()
   {
      this.aks.send("hG+",true);
   }
   function §\x1b\x13\x1d§()
   {
      this.aks.send("hG-",true);
   }
   function §\x1a\x0e\x13§(§\x19\r\x13§)
   {
      this.aks.send("hG" + _loc2_,true);
   }
   function §\x19\x1b\x12§(sExtraData)
   {
      var _loc3_ = new ank.utils.["\x17\x0e\r"]();
      var _loc4_ = _loc2_.split("|");
      var _loc5_ = Number(_loc4_[0]);
      _loc4_.shift();
      _loc4_.reverse();
      var _loc6_ = 0;
      while(_loc6_ < _loc4_.length)
      {
         var _loc7_ = _loc4_[_loc6_].split(";");
         var _loc8_ = _loc7_[0];
         var _loc9_ = _loc7_[1];
         var _loc10_ = _loc7_[2];
         var _loc11_ = _loc7_[3];
         var _loc12_ = this.api.kernel.CharactersManager["\x17\x02\x0f"](_loc7_[4]);
         var _loc13_ = _loc7_[5] == "1";
         var _loc14_ = _loc7_[6] == "1";
         var _loc15_ = this.api.kernel.HouseManager.getHouseByInstance(_loc5_,_loc8_);
         _loc15_.instanceID = _loc8_;
         _loc15_["\x1a\x03\x06"] = _loc9_;
         _loc15_.price = _loc10_;
         _loc15_["\x18\r\x1b"] = _loc10_ > 0;
         _loc15_["\x18\x04\x07"] = _loc11_;
         _loc15_["\x18\x04\x01"] = _loc12_;
         _loc15_.isHuntTargetInside = _loc13_;
         _loc15_["\x18\x0e\x17"] = _loc14_;
         _loc15_["\x18\x17\x07"] = _loc9_ == this.api.datacenter.Basics.dofusPseudo;
         _loc3_["\x15\x1d\x13"](_loc8_,_loc15_);
         _loc6_ = _loc6_ + 1;
      }
      this.api.datacenter.Houses["\x15\x1d\x13"](_loc5_,_loc3_);
   }
   function §\x19\x1a\x02§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      var _loc6_ = _loc3_[2] == "1";
      var _loc7_ = this.api.kernel.HouseManager.getHouseByInstance(_loc4_,_loc5_);
      _loc7_["\x18\x0e\x17"] = _loc6_;
   }
   function §\x19\x16\x0b§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      var _loc6_ = Number(_loc3_[2]);
      var _loc7_ = this.api.kernel.HouseManager.getHouseByInstance(_loc4_,_loc5_);
      _loc7_.price = _loc6_;
      this.api.ui.loadUIComponent("HouseSale","HouseSale",{house:_loc7_});
   }
   function §\x19\x1c\x10§(bSuccess, sExtraData)
   {
      var _loc4_ = _loc3_.split("|");
      var _loc5_ = Number(_loc4_[0]);
      var _loc6_ = Number(_loc4_[1]);
      var _loc7_ = Number(_loc4_[2]);
      var _loc8_ = this.api.kernel.HouseManager.getHouseByInstance(_loc5_,_loc6_);
      var _loc9_ = _loc7_ > 0;
      _loc8_["\x18\r\x1b"] = _loc9_;
      _loc8_.price = _loc7_;
      var _loc10_ = new ank.utils.ExtendedString(_loc7_)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
      if(_loc9_)
      {
         if(_loc2_)
         {
            this.api.kernel.showMessage(this.api.lang.getText("INFORMATIONS"),this.api.lang.getText("HOUSE_SELL",[_loc8_.name,_loc10_],"ERROR_BOX",{name:"SellHouse"}));
         }
         else
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_SELL_HOUSE"),"ERROR_BOX",{name:"SellHouse"});
         }
      }
      else
      {
         this.api.kernel.showMessage(this.api.lang.getText("INFORMATIONS"),this.api.lang.getText("HOUSE_NOSELL",[_loc8_.name]),"ERROR_BOX",{name:"NoSellHouse"});
      }
   }
   function §\x19\x15\x01§(bSuccess, sExtraData)
   {
      if(_loc2_)
      {
         var _loc4_ = _loc3_.split("|");
         var _loc5_ = Number(_loc4_[0]);
         var _loc6_ = Number(_loc4_[1]);
         var _loc7_ = Number(_loc4_[2]);
         var _loc8_ = this.api.kernel.HouseManager.getHouseByInstance(_loc5_,_loc6_);
         var _loc9_ = new ank.utils.ExtendedString(_loc7_)["\x15\x1e\x01"](this.api.lang.getConfigText("THOUSAND_SEPARATOR"),3);
         this.api.kernel.showMessage(this.api.lang.getText("INFORMATIONS"),this.api.lang.getText("HOUSE_BUY",[_loc8_.name,_loc9_],"ERROR_BOX",{name:"BuyHouse"}));
         _loc8_["\x18\r\x1b"] = false;
         _loc8_.price = 0;
      }
      else
      {
         var _loc0_ = null;
         if((_loc0_ = _loc3_.charAt(0)) === "C")
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_BUY_HOUSE",[_loc3_.substr(1)]),"ERROR_BOX",{name:"BuyHouse"});
         }
      }
   }
   function §\x19\x19\x16§()
   {
      this.api.ui.unloadUIComponent("HouseSale");
   }
   function §\x19\x18\n§(sExtraData)
   {
      var _loc3_ = _loc2_.split(";");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      var _loc6_ = _loc3_[2];
      var _loc7_ = this.api.kernel.CharactersManager["\x17\x02\x0f"](_loc3_[3]);
      var _loc8_ = Number(_loc3_[4]);
      var _loc9_ = !_global.isNaN(_loc8_);
      var _loc10_ = this.api.kernel.HouseManager.getHouseByInstance(_loc4_,_loc5_);
      _loc10_["\x18\x0f\x14"] = _loc9_;
      _loc10_["\x18\x04\x07"] = _loc6_;
      _loc10_["\x18\x04\x01"] = _loc7_;
      _loc10_["\x18\x04\t"] = _loc8_;
   }
   function onInformations(sExtraData)
   {
      var _loc3_ = _loc2_.split(";");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      var _loc6_ = _loc3_[2] == "1";
      var _loc7_ = _loc3_[3] == "1";
      var _loc8_ = _loc3_[4] == "1";
      var _loc9_ = this.api.kernel.HouseManager.getHouseByInstance(_loc4_,_loc5_);
      _loc9_["\x1a\x03\x06"] = this.api.datacenter.Basics.dofusPseudo;
      _loc9_.instanceID = _loc5_;
      _loc9_["\x18\r\x1b"] = _loc6_;
      _loc9_["\x18\x17\x07"] = true;
      _loc9_["\x18\x0e\x17"] = _loc7_;
      _loc9_["\x18\x0f\x14"] = _loc8_;
      this.api.datacenter.["\x18\x18\x0e"].isMyHome = _loc9_["\x18\x17\x07"];
      var _loc10_ = this.api.lang["\x17\x18\x18"]();
      this.api.ui.loadUIComponent("HouseIndoor","HouseIndoor",{skills:_loc10_,house:_loc9_},{bStayIfPresent:true});
   }
}
