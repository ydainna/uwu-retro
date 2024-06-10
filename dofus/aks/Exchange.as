class dofus.aks.Exchange extends dofus.aks.Handler
{
   var §\x1c\x11\x1b§ = -1;
   function Exchange(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function §\x18\x13\x1d§()
   {
      this.aks.send("EV",true);
   }
   function §\x1a\r\x13§(§\x1b\x12\t§, §\x18\b\f§, §\x16\x17\x18§)
   {
      this.aks.send("ER" + _loc2_ + "|" + (!(_loc3_ == undefined || _global.isNaN(_loc3_)) ? _loc3_ : "") + (!(_loc4_ == undefined || _global.isNaN(_loc4_)) ? "|" + _loc4_ : ""),true);
   }
   function §\x1a\x1c\r§(§\x19\b\x0b§)
   {
      this.aks.send("Es" + _loc2_);
   }
   function §\x15\x1b\x0f§()
   {
      this.aks.send("EA",false);
   }
   function ready()
   {
      this.aks.send("EK",true);
   }
   function §\x19\x01\x01§(§\x16\b\x11§, §\x19\x13\x07§, nQuantity, §\x19\f\x10§)
   {
      if(this["\x1c\x11\x1b"] == _loc3_.ID && _loc2_ == this["\x1c\x11\x1a"])
      {
         return undefined;
      }
      if(_loc4_ == _loc3_.Quantity)
      {
         this["\x1c\x11\x1b"] = _loc3_.ID;
         this["\x1c\x11\x1a"] = _loc2_;
      }
      else
      {
         this["\x1c\x11\x1b"] = -1;
      }
      this.aks.send("EMO" + (!_loc2_ ? "-" : "+") + _loc3_.ID + "|" + _loc4_ + (_loc5_ != undefined ? "|" + _loc5_ : ""),true);
   }
   function §\x19\x01\x02§(§\x16\x02\x06§)
   {
      var _loc3_ = "";
      var _loc8_ = 0;
      while(_loc8_ < _loc2_.length)
      {
         var _loc4_ = _loc2_[_loc8_].Add;
         var _loc5_ = _loc2_[_loc8_].ID;
         var _loc6_ = _loc2_[_loc8_].Quantity;
         var _loc7_ = _loc2_[_loc8_].Price;
         _loc3_ += (!_loc4_ ? "-" : "+") + _loc5_ + "|" + _loc6_ + (_loc7_ != undefined ? "|" + _loc7_ : "");
         _loc8_ = _loc8_ + 1;
      }
      this.aks.send("EMO" + _loc3_,true,undefined,true);
   }
   function §\x19\x01\x04§(§\x19\x07\x1b§, §\x16\b\x11§, §\x19\b\x0b§, nQuantity, §\x19\f\x10§)
   {
      this.aks.send("EP" + _loc2_ + "O" + (!_loc3_ ? "-" : "+") + _loc4_ + "|" + _loc5_ + (_loc6_ != undefined ? "|" + _loc6_ : ""),true);
   }
   function §\x19\x01\x03§(nQuantity)
   {
      this.aks.send("EMG" + _loc2_,true);
   }
   function §\x19\x01\x05§(§\x19\x07\x1b§, nQuantity)
   {
      this.aks.send("EP" + _loc2_ + "G" + _loc3_,true);
   }
   function sell(§\x18\b\f§, §\x1a\b\x18§)
   {
      this.aks.send("ES" + _loc2_ + "|" + _loc3_,true);
   }
   function buy(§\x19\b\x0b§, nQuantity)
   {
      this.aks.send("EB" + _loc2_ + "|" + _loc3_,true);
   }
   function §\x19\x12\x1a§()
   {
      this.aks.send("EQ",true);
   }
   function §\x16\x06\x05§()
   {
      this.aks.send("Eq",true);
   }
   function §\x16\r\x02§(§\x19\x10\x07§)
   {
      this.aks.send("EHT" + _loc2_);
   }
   function §\x16\f\x1c§(§\x19\x10\n§)
   {
      this.aks.send("EHl" + _loc2_);
   }
   function bigStoreSoulList(sMonstersList)
   {
      this.aks.send("EHM" + sMonstersList);
   }
   function §\x16\f\x1b§(§\x19\b\x0b§, §\x19\f\x1a§, §\x19\f\x10§)
   {
      this.aks.send("EHB" + _loc2_ + "|" + _loc3_ + "|" + _loc4_,true);
   }
   function §\x16\r\x01§(§\x19\x10\x06§, §\x19\x10\n§)
   {
      this.aks.send("EHS" + _loc2_ + "|" + _loc3_);
   }
   function §\x1a\x18\x1d§(§\x16\b\b§)
   {
      this.aks.send("EW" + (!_loc2_ ? "-" : "+"),false);
   }
   function §\x17\x15\x18§(§\x19\b\x1c§)
   {
      this.aks.send("EJF" + _loc2_,true);
   }
   function §\x1a\b\f§(§\x19\n\x17§)
   {
      this.aks.send("Erp" + _loc2_,true);
   }
   function §\x1a\b\t§(§\x19\n\x17§)
   {
      this.aks.send("Erg" + _loc2_,true);
   }
   function §\x1a\b\b§(§\x19\n\x17§)
   {
      this.aks.send("Erc" + _loc2_,true);
   }
   function §\x1a\b\x0b§(§\x19\x04\x15§)
   {
      this.aks.send("ErC" + _loc2_,true);
   }
   function §\x1a\b\n§(§\x19\n\x17§)
   {
      this.aks.send("Efp" + _loc2_,true);
   }
   function §\x1a\b\r§(§\x19\n\x17§)
   {
      this.aks.send("Efg" + _loc2_,true);
   }
   function §\x18\x12\x05§(§\x19\n\x17§)
   {
      this.aks.send("Eff" + _loc2_,false);
   }
   function §\x18\x12\x04§(§\x19\n\x17§)
   {
      this.aks.send("Erf" + _loc2_,false);
   }
   function §\x17\x19\x14§(§\x19\b\x18§)
   {
      this.aks.send("EHP" + _loc2_,false);
   }
   function §\x1a\r\x10§()
   {
      this.aks.send("EL",false);
   }
   function §\x1a\r\b§(§\x19\b\x07§)
   {
      this["\x1d\x17\r"] = _loc2_;
      this.aks.send("EMR" + _loc2_,false);
      this.api.datacenter.Basics.isCraftLooping = true;
   }
   function §\x1b\x0b\x03§()
   {
      this.aks.send("EMr",false);
   }
   function §\x19\x1c\x04§(bSuccess, sExtraData)
   {
      if(_loc2_)
      {
         var _loc4_ = _loc3_.split("|");
         var _loc5_ = _loc4_[0];
         var _loc6_ = _loc4_[1];
         var _loc7_ = Number(_loc4_[2]);
         var _loc8_ = this.api.datacenter.Player.ID != _loc5_ ? _loc5_ : _loc6_;
         if(_loc7_ == 12 || _loc7_ == 13)
         {
            var _loc9_ = new dofus.datacenter.["\x1a\x12\x0e"](_loc8_);
         }
         else
         {
            _loc9_ = new dofus.datacenter.Exchange(_loc8_);
         }
         this.api.datacenter.Exchange = _loc9_;
         if(this.api.datacenter.Player.ID == _loc5_)
         {
            var _loc10_ = this.api.datacenter.Sprites.getItemAt(_loc6_);
            switch(_loc7_)
            {
               case 1:
                  var _loc11_ = "WAIT_FOR_EXCHANGE";
                  break;
               case 12:
                  _loc11_ = "WAIT_FOR_CRAFT_CLIENT";
                  break;
               case 13:
                  _loc11_ = "WAIT_FOR_CRAFT_ARTISAN";
            }
            this.api.kernel.showMessage(this.api.lang.getText("EXCHANGE"),this.api.lang.getText(_loc11_,[_loc10_.name]),"INFO_CANCEL",{name:"Exchange",listener:this});
         }
         else
         {
            var _loc12_ = this.api.datacenter.Sprites.getItemAt(_loc5_);
            if(this.api.kernel.ChatManager.isBlacklisted(_loc12_.name))
            {
               this["\x18\x13\x1d"]();
               return undefined;
            }
            this.api.kernel.showMessage(undefined,this.api.lang.getText("CHAT_A_WANT_EXCHANGE",[this.api.kernel.ChatManager.getLinkName(_loc12_.id,_loc12_.name)]),"INFO_CHAT");
            switch(_loc7_)
            {
               case 1:
                  var _loc13_ = "A_WANT_EXCHANGE";
                  break;
               case 12:
                  _loc13_ = "A_WANT_CRAFT_CLIENT";
                  break;
               case 13:
                  _loc13_ = "A_WANT_CRAFT_ARTISAN";
            }
            this.api.electron.makeNotification(this.api.lang.getText(_loc13_,[_loc12_.name]));
            this.api.kernel.showMessage(this.api.lang.getText("EXCHANGE"),this.api.lang.getText(_loc13_,[_loc12_.name]),"CAUTION_YESNOIGNORE",{name:"Exchange",player:_loc12_.name,listener:this,params:{player:_loc12_.name}});
         }
      }
      else
      {
         var _loc14_ = _loc3_.charAt(0);
         switch(_loc14_)
         {
            case "O":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("ALREADY_EXCHANGE"),"ERROR_CHAT");
               break;
            case "T":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("NOT_NEAR_CRAFT_TABLE"),"ERROR_CHAT");
               break;
            case "J":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("ERROR_85"),"ERROR_CHAT");
               break;
            case "o":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("ERROR_70"),"ERROR_CHAT");
               break;
            case "S":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("ERROR_62"),"ERROR_CHAT");
               break;
            case "I":
            default:
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_EXCHANGE"),"ERROR_CHAT");
         }
      }
   }
   function §\x19\x14\x06§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]) / 10;
      var _loc6_ = Number(_loc3_[2]);
      this.api.kernel.GameManager["\x16\x06\x05"](_loc4_,_loc5_,_loc6_);
   }
   function §\x19\x1b\x18§(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0) == "1";
      var _loc4_ = Number(_loc2_.substr(1));
      var _loc5_ = _loc4_ != this.api.datacenter.Player.ID ? 1 : 0;
      this.api.datacenter.Exchange["\x1a\n\x02"]["\x1b\x15\x05"](_loc5_,_loc3_);
   }
   function onLeave(bSuccess, sExtraData)
   {
      delete this.api.datacenter.Basics.aks_exchange_echangeType;
      delete this.api.datacenter.Exchange;
      this.api.ui.unloadUIComponent("AskYesNoIgnoreExchange");
      this.api.ui.unloadUIComponent("AskCancelExchange");
      if(this.api.ui.getUIComponent("Exchange"))
      {
         if(_loc3_ == "a")
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("EXCHANGE_OK"),"INFO_CHAT");
         }
         else
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("EXCHANGE_CANCEL"),"INFO_CHAT");
         }
      }
      this.api.ui.unloadUIComponent("Exchange");
      this.api.ui.unloadUIComponent("Craft");
      this.api.ui.unloadUIComponent("NpcShop");
      this.api.ui.unloadUIComponent("PlayerShop");
      this.api.ui.unloadUIComponent("TaxCollectorStorage");
      this.api.ui.unloadUIComponent("PlayerShopModifier");
      this.api.ui.unloadUIComponent("Storage");
      this.api.ui.unloadUIComponent("BigStoreSell");
      this.api.ui.unloadUIComponent("BigStoreBuy");
      this.api.ui.unloadUIComponent("SecureCraft");
      this.api.ui.unloadUIComponent("CrafterList");
      this.api.ui.unloadUIComponent("ItemUtility");
      this.api.ui.unloadUIComponent("MountStorage");
      this.api.ui.unloadUIComponent("MountParkSale");
      this.api.ui.unloadUIComponent("HouseSale");
      this.api.ui.unloadUIComponent("CardsRecycler");
      this.api.ui.unloadUIComponent("CardsUpgrader");
      if(dofus.Constants.SAVING_THE_WORLD)
      {
         dofus["\x1a\x0f\x1a"].getInstance()["\x19\x07\x05"]();
      }
   }
   function onCreate(bSuccess, sExtraData)
   {
      if(!_loc2_)
      {
         return undefined;
      }
      this["\x1c\x11\x1b"] = -1;
      var _loc4_ = _loc3_.split("|");
      var _loc5_ = Number(_loc4_[0]);
      var _loc6_ = _loc4_[1];
      this.api.datacenter.Basics.aks_exchange_echangeType = _loc5_;
      var _loc7_ = this.api.datacenter.["\x1b\x0f\b"];
      switch(_loc5_)
      {
         case 0:
         case 4:
            _loc7_["\x1a\x1c\x0e"] = new dofus.datacenter.["\x1a\x1c\x0e"]();
            var _loc8_ = this.api.datacenter.Sprites.getItemAt(_loc6_);
            _loc7_["\x1a\x1c\x0e"].id = _loc8_.id;
            _loc7_["\x1a\x1c\x0e"].name = _loc8_.name;
            _loc7_["\x1a\x1c\x0e"].gfx = _loc8_.gfxID;
            var _loc9_ = new Array();
            _loc9_[1] = _loc8_.color1 != undefined ? _loc8_.color1 : -1;
            _loc9_[2] = _loc8_.color2 != undefined ? _loc8_.color2 : -1;
            _loc9_[3] = _loc8_.color3 != undefined ? _loc8_.color3 : -1;
            if(_loc5_ == 0)
            {
               this.api.ui.loadUIComponent("NpcShop","NpcShop",{data:_loc7_["\x1a\x1c\x0e"],colors:_loc9_});
            }
            else if(_loc5_ == 4)
            {
               _loc7_["\x1a\x1c\x0e"].characterID = _loc8_.characterID;
               this.api.ui.loadUIComponent("PlayerShop","PlayerShop",{data:_loc7_["\x1a\x1c\x0e"],colors:_loc9_});
            }
            break;
         case 1:
            this.api.datacenter.Exchange["\x18\f\n"] = this.api.datacenter.Player.Inventory.deepClone();
            this.api.ui.unloadUIComponent("AskYesNoIgnoreExchange");
            this.api.ui.unloadUIComponent("AskCancelExchange");
            this.api.ui.loadUIComponent("Exchange","Exchange");
            break;
         case 2:
         case 9:
         case 17:
         case 18:
         case 3:
            if(_loc5_ == 3)
            {
               this.api.datacenter.Exchange = new dofus.datacenter.Exchange();
            }
            else
            {
               this.api.datacenter.Exchange = new dofus.datacenter.Exchange(Number(_loc6_));
            }
            this.api.datacenter.Exchange["\x18\f\n"] = this.api.datacenter.Player.Inventory.deepClone();
            if(_loc5_ == 3)
            {
               _loc4_ = _loc6_.split(";");
               var _loc10_ = Number(_loc4_[0]);
               var _loc11_ = Number(_loc4_[1]);
               if(_global.api.lang["\x17\x1e\x14"](_loc11_) > 0)
               {
                  this.api.ui.loadUIComponent("ForgemagusCraft","Craft",{skillId:_loc11_,maxItem:_loc10_},{nHideSprites:1});
               }
               else
               {
                  this.api.ui.loadUIComponent("Craft","Craft",{skillId:_loc11_,maxItem:_loc10_});
               }
            }
            else
            {
               this.api.ui.unloadUIComponent("AskYesNoIgnoreExchange");
               this.api.ui.unloadUIComponent("AskCancelExchange");
               this.api.ui.loadUIComponent("Exchange","Exchange");
            }
            break;
         case 5:
            _loc7_.Storage = new dofus.datacenter.Storage();
            this.api.ui.loadUIComponent("Storage","Storage",{data:_loc7_.Storage},{nHideSprites:1});
            break;
         case 8:
            _loc7_.Storage = new dofus.datacenter.TaxCollectorStorage();
            var _loc12_ = this.api.datacenter.Sprites.getItemAt(_loc6_);
            _loc7_.Storage.name = _loc12_.name;
            _loc7_.Storage.gfx = _loc12_.gfxID;
            this.api.ui.loadUIComponent("TaxCollectorStorage","TaxCollectorStorage",{data:_loc7_.Storage});
            break;
         case 6:
            _loc7_["\x1a\x1c\x0e"] = new dofus.datacenter.["\x1a\x1c\x0e"]();
            this.api.ui.loadUIComponent("PlayerShopModifier","PlayerShopModifier",{data:_loc7_["\x1a\x1c\x0e"]});
            break;
         case 10:
            _loc7_["\x1a\x1c\x0e"] = new dofus.datacenter.["\x16\f\x1a"]();
            _loc4_ = _loc6_.split(";");
            var _loc13_ = _loc4_[0].split(",");
            _loc7_["\x1a\x1c\x0e"].quantity1 = Number(_loc13_[0]);
            _loc7_["\x1a\x1c\x0e"].quantity2 = Number(_loc13_[1]);
            _loc7_["\x1a\x1c\x0e"].quantity3 = Number(_loc13_[2]);
            _loc7_["\x1a\x1c\x0e"].types = _loc4_[1].split(",");
            _loc7_["\x1a\x1c\x0e"]["\x1b\x0e\x02"] = Number(_loc4_[2]);
            _loc7_["\x1a\x1c\x0e"]["\x18\x19\x19"] = Number(_loc4_[3]);
            _loc7_["\x1a\x1c\x0e"]["\x18\x19\x16"] = Number(_loc4_[4]);
            _loc7_["\x1a\x1c\x0e"].npcID = Number(_loc4_[5]);
            _loc7_["\x1a\x1c\x0e"].maxSellTime = Number(_loc4_[6]);
            this.api.ui.loadUIComponent("BigStoreSell","BigStoreSell",{data:_loc7_["\x1a\x1c\x0e"]},{nHideSprites:1});
            break;
         case 11:
            _loc7_["\x1a\x1c\x0e"] = new dofus.datacenter.["\x16\f\x1a"]();
            _loc4_ = _loc6_.split(";");
            var _loc14_ = _loc4_[0].split(",");
            _loc7_["\x1a\x1c\x0e"].quantity1 = Number(_loc14_[0]);
            _loc7_["\x1a\x1c\x0e"].quantity2 = Number(_loc14_[1]);
            _loc7_["\x1a\x1c\x0e"].quantity3 = Number(_loc14_[2]);
            _loc7_["\x1a\x1c\x0e"].types = _loc4_[1].split(",");
            _loc7_["\x1a\x1c\x0e"]["\x1b\x0e\x02"] = Number(_loc4_[2]);
            _loc7_["\x1a\x1c\x0e"]["\x18\x19\x19"] = Number(_loc4_[3]);
            _loc7_["\x1a\x1c\x0e"]["\x18\x19\x16"] = Number(_loc4_[4]);
            _loc7_["\x1a\x1c\x0e"].npcID = Number(_loc4_[5]);
            _loc7_["\x1a\x1c\x0e"].maxSellTime = Number(_loc4_[6]);
            this.api.ui.loadUIComponent("BigStoreBuy","BigStoreBuy",{data:_loc7_["\x1a\x1c\x0e"]},{nHideSprites:1});
            break;
         case 12:
         case 13:
            this.api.datacenter.Exchange["\x18\f\n"] = this.api.datacenter.Player.Inventory.deepClone();
            _loc4_ = _loc6_.split(";");
            var _loc15_ = Number(_loc4_[0]);
            var _loc16_ = Number(_loc4_[1]);
            this.api.ui.unloadUIComponent("AskYesNoIgnoreExchange");
            this.api.ui.unloadUIComponent("AskCancelExchange");
            this.api.ui.loadUIComponent("SecureCraft","SecureCraft",{skillId:_loc16_,maxItem:_loc15_});
            if(!dofus.graphics.gapi.ui.SecureCraft.secureCraftNotified)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("SECURECRAFT_NOTIFICATION"),"ERROR_CHAT");
               dofus.graphics.gapi.ui.SecureCraft.secureCraftNotified = true;
            }
            break;
         case 14:
            var _loc17_ = new ank.utils.ExtendedArray();
            var _loc18_ = _loc6_.split(";");
            var _loc19_ = 0;
            while(_loc19_ < _loc18_.length)
            {
               var _loc20_ = Number(_loc18_[_loc19_]);
               _loc17_.push({label:this.api.lang["\x17\x1a\x02"](_loc20_).n,id:_loc20_});
               _loc19_ = _loc19_ + 1;
            }
            this.api.ui.loadUIComponent("CrafterList","CrafterList",{crafters:new ank.utils.ExtendedArray(),jobs:_loc17_});
            break;
         case 15:
            this.api.ui.unloadUIComponent("Mount");
            _loc7_.Storage = new dofus.datacenter.Storage();
            this.api.ui.loadUIComponent("Storage","Storage",{isMount:true,data:_loc7_.Storage});
            break;
         case 16:
            var _loc21_ = new ank.utils.ExtendedArray();
            var _loc22_ = new ank.utils.ExtendedArray();
            _loc4_ = _loc6_.split("~");
            var _loc23_ = _loc4_[0].split(";");
            var _loc24_ = _loc4_[1].split(";");
            if(_loc23_ != undefined)
            {
               var _loc25_ = 0;
               while(_loc25_ < _loc23_.length)
               {
                  if(_loc23_[_loc25_] != "")
                  {
                     _loc21_.push(this.api.network.Mount["\x17\x02\x14"](_loc23_[_loc25_]));
                  }
                  _loc25_ = _loc25_ + 1;
               }
            }
            if(_loc24_ != undefined)
            {
               var _loc26_ = 0;
               while(_loc26_ < _loc24_.length)
               {
                  if(_loc24_[_loc26_] != "")
                  {
                     _loc22_.push(this.api.network.Mount["\x17\x02\x14"](_loc24_[_loc26_]));
                  }
                  _loc26_ = _loc26_ + 1;
               }
            }
            this.api.ui.loadUIComponent("MountStorage","MountStorage",{mounts:_loc21_,parkMounts:_loc22_});
      }
   }
   function §\x19\x16\x07§(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0) == "+";
      var _loc4_ = Number(_loc2_.substr(1));
      this.api.kernel.showMessage(undefined,this.api.lang.getText(!_loc3_ ? "CRAFTER_REFERENCE_REMOVE" : "CRAFTER_REFERENCE_ADD",[this.api.lang["\x17\x1a\x02"](_loc4_).n]),"INFO_CHAT");
   }
   function §\x19\x16\x06§(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0) == "+";
      var _loc4_ = _loc2_.substr(1).split(";");
      var _loc5_ = this.api.ui.getUIComponent("CrafterList").crafters;
      var _loc6_ = Number(_loc4_[0]);
      var _loc7_ = _loc4_[1];
      var _loc8_ = _loc5_.findFirstItem("id",_loc7_);
      if(_loc3_)
      {
         var _loc9_ = _loc4_[2];
         var _loc10_ = Number(_loc4_[3]);
         var _loc11_ = Number(_loc4_[4]);
         var _loc12_ = !!Number(_loc4_[5]);
         var _loc13_ = Number(_loc4_[6]);
         var _loc14_ = Number(_loc4_[7]);
         var _loc15_ = _loc4_[8].split(",");
         var _loc16_ = _loc4_[9];
         var _loc17_ = _loc4_[10].split(",");
         var _loc18_ = new dofus.datacenter.["\x17\x01\x16"](_loc7_,_loc9_);
         _loc18_["\x18\x11\f"] = new dofus.datacenter.Job(_loc6_,new ank.utils.ExtendedArray(),new dofus.datacenter.["\x18\x11\x0e"](Number(_loc17_[0]),Number(_loc17_[1])));
         _loc18_["\x18\x11\f"].level = _loc10_;
         _loc18_["\x18\x18\x17"] = _loc11_;
         _loc18_.inWorkshop = _loc12_;
         _loc18_.breedId = _loc13_;
         _loc18_.sex = _loc14_;
         _loc18_.color1 = _loc15_[0];
         _loc18_.color2 = _loc15_[1];
         _loc18_.color3 = _loc15_[2];
         this.api.kernel.CharactersManager["\x1a\x1a\x01"](_loc18_,_loc16_);
         if(_loc8_.index != -1)
         {
            _loc5_["\x1b\x15\x05"](_loc8_.index,_loc18_);
         }
         else
         {
            _loc5_.push(_loc18_);
         }
      }
      else if(_loc8_.index != -1)
      {
         _loc5_["\x1a\f\x0b"](_loc8_.index,1);
      }
   }
   function §\x19\x1a\r§(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0);
      var _loc4_ = false;
      switch(_loc3_)
      {
         case "~":
            _loc4_ = true;
         case "+":
            this.api.ui.getUIComponent("MountStorage").mounts.push(this.api.network.Mount["\x17\x02\x14"](_loc2_.substr(1),_loc4_));
            break;
         case "-":
            var _loc5_ = Number(_loc2_.substr(1));
            var _loc6_ = this.api.ui.getUIComponent("MountStorage").mounts;
            for(var a in _loc6_)
            {
               if(_loc6_[a].ID == _loc5_)
               {
                  _loc6_["\x1a\f\x0b"](Number(a),1);
               }
            }
            break;
         case "E":
      }
   }
   function §\x19\x1a\n§(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0);
      loop1:
      switch(_loc3_)
      {
         case "+":
            this.api.ui.getUIComponent("MountStorage").parkMounts.push(this.api.network.Mount["\x17\x02\x14"](_loc2_.substr(1)));
            break;
         case "-":
            var _loc4_ = Number(_loc2_.substr(1));
            var _loc5_ = this.api.ui.getUIComponent("MountStorage").parkMounts;
            §§enumerate(_loc5_);
            while(true)
            {
               if((_loc0_ = §§enumeration()) == null)
               {
                  break loop1;
               }
               var a = _loc0_;
               if(_loc5_[a].ID == _loc4_)
               {
                  _loc5_["\x1a\f\x0b"](Number(a),1);
               }
            }
            break;
         case "E":
      }
   }
   function §\x19\x16\x05§(bSuccess, sExtraData)
   {
      if(this.api.datacenter.Basics.aks_exchange_isForgemagus || !this.api.datacenter.Basics.isCraftLooping)
      {
         this.api.datacenter.Exchange["\x16\x1c\x07"]();
      }
      var _loc4_ = this.api.datacenter.Basics.aks_exchange_echangeType;
      if(_loc4_ == 12 || _loc4_ == 13)
      {
         var _loc5_ = this.api.datacenter.Exchange;
         _loc5_["\x16\x1b\x1d"]();
         _loc5_["\x16\x1c\t"]();
         _loc5_["\x16\x1c\n"]();
         _loc5_.payKama = 0;
         _loc5_["\x1a\x04\x0e"] = 0;
         this.api.ui.getUIComponent("SecureCraft")["\x1b\x15\x04"]();
      }
      var _loc6_ = !this.api.datacenter.Basics.aks_exchange_isForgemagus;
      loop0:
      switch(_loc3_.substr(0,1))
      {
         case "I":
            if(!_loc2_)
            {
               this.api.kernel.showMessage(this.api.lang.getText("CRAFT"),this.api.lang.getText("NO_CRAFT_RESULT"),"ERROR_BOX",{name:"Impossible"});
            }
            break;
         case "F":
            if(!_loc2_ && _loc6_)
            {
               this.api.kernel.showMessage(this.api.lang.getText("CRAFT"),this.api.lang.getText("CRAFT_FAILED"),"ERROR_BOX",{name:"CraftFailed"});
            }
            this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\x0f"]);
            break;
         case ";":
            if(_loc2_)
            {
               var _loc7_ = _loc3_.substr(1).split(";");
               if(_loc7_.length == 1)
               {
                  var _loc8_ = new dofus.datacenter.Item(0,Number(_loc7_[0]),undefined,undefined,undefined);
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("CRAFT_SUCCESS_SELF",[_loc8_.name]),"INFO_CHAT");
                  this.api.kernel.SpeakingItemsManager["\x1b\x11\x0e"](dofus.managers.SpeakingItemsManager["\x1b\x05\x0f"]);
                  break;
               }
               var _loc9_ = _loc7_[1].substr(0,1);
               var _loc10_ = _loc7_[1].substr(1);
               var _loc11_ = Number(_loc7_[0]);
               var _loc12_ = _loc7_[2];
               var _loc13_ = new Array();
               _loc13_.push(_loc11_);
               _loc13_.push(_loc12_);
               switch(_loc9_)
               {
                  case "T":
                     this.api.kernel.showMessage(undefined,this.api.kernel.ChatManager.parseInlineItems(this.api.lang.getText("CRAFT_SUCCESS_TARGET",[_loc10_]),_loc13_),"INFO_CHAT");
                     break loop0;
                  case "B":
                     this.api.kernel.showMessage(undefined,this.api.kernel.ChatManager.parseInlineItems(this.api.lang.getText("CRAFT_SUCCESS_OTHER",[_loc10_]),_loc13_),"INFO_CHAT");
               }
            }
      }
      if(!_loc2_)
      {
         this.api.datacenter.Exchange["\x16\x1b\x1b"]();
      }
   }
   function §\x19\x16\b§(sExtraData)
   {
      var _loc3_ = Number(_loc2_);
      this.api.kernel.showMessage(undefined,this.api.lang.getText("CRAFT_LOOP_PROCESS",[this["\x1d\x17\r"] - _loc3_ + 1,this["\x1d\x17\r"] + 1]),"INFO_CHAT");
   }
   function §\x19\x16\t§(sExtraData)
   {
      var _loc3_ = Number(_loc2_);
      this.api.datacenter.Basics.isCraftLooping = false;
      switch(_loc3_)
      {
         case 1:
            this.api.electron.makeNotification(this.api.lang.getText("CRAFT_LOOP_END_OK"));
            var _loc4_ = this.api.lang.getText("CRAFT_LOOP_END_OK");
            break;
         case 2:
            _loc4_ = this.api.lang.getText("CRAFT_LOOP_END_INTERRUPT");
            break;
         case 3:
            _loc4_ = this.api.lang.getText("CRAFT_LOOP_END_FAIL");
            break;
         case 4:
            _loc4_ = this.api.lang.getText("CRAFT_LOOP_END_INVALID");
      }
      this.api.kernel.showMessage(undefined,_loc4_,"INFO_CHAT");
      this.api.kernel.showMessage(this.api.lang.getText("CRAFT"),_loc4_,"ERROR_BOX");
      this.api.ui.getUIComponent("Craft")["\x19\x16\t"]();
      if(!this.api.datacenter.Basics.aks_exchange_isForgemagus)
      {
         this.api.datacenter.Exchange["\x16\x1c\x07"]();
      }
   }
   function §\x19\x1a\x01§(bSuccess, sExtraData)
   {
      this["\x18\x1d\x13"](_loc3_,this.api.datacenter.Exchange["\x18\x17\x06"],"localKama");
   }
   function §\x19\x16\x13§(bSuccess, sExtraData)
   {
      switch(this.api.datacenter.Basics.aks_exchange_echangeType)
      {
         case 1:
         case 2:
         case 3:
         case 9:
         case 12:
         case 13:
            this["\x18\x1d\x12"](_loc3_,this.api.datacenter.Exchange["\x17\b\x1c"],"distantKama");
            break;
         case 10:
            var _loc4_ = _loc3_.charAt(0) == "+";
            var _loc5_ = _loc3_.substr(1).split("|");
            var _loc6_ = Number(_loc5_[0]);
            var _loc7_ = Number(_loc5_[1]);
            var _loc8_ = Number(_loc5_[2]);
            var _loc9_ = _loc5_[3];
            var _loc10_ = Number(_loc5_[4]);
            var _loc11_ = Number(_loc5_[5]);
            var _loc12_ = this.api.datacenter.["\x1b\x0f\b"]["\x1a\x1c\x0e"];
            var _loc13_ = _loc12_["\x18\f\n"].findFirstItem("ID",_loc6_);
            if(_loc4_)
            {
               var _loc14_ = new dofus.datacenter.Item(_loc6_,_loc8_,_loc7_,-1,_loc9_,_loc10_);
               _loc14_["\x1a\x0b\x11"] = _loc11_;
               if(_loc13_.index != -1)
               {
                  _loc12_["\x18\f\n"]["\x1b\x15\x05"](_loc13_.index,_loc14_);
               }
               else
               {
                  _loc12_["\x18\f\n"].push(_loc14_);
               }
            }
            else if(_loc13_.index != -1)
            {
               _loc12_["\x18\f\n"]["\x1a\f\x0b"](_loc13_.index,1);
            }
            else
            {
               ank.utils.Logger.err("[onDistantMovement] cet objet n\'existe pas id=" + _loc6_);
            }
            var _loc15_ = dofus.graphics.gapi.ui.BigStoreSell(this.api.ui.getUIComponent("BigStoreSell"));
            if(_loc15_ != undefined)
            {
               _loc15_["\x1b\x15\x06"]();
               _loc15_["\x1a\x0b\x07"]();
               break;
            }
      }
   }
   function §\x19\x15\x1d§(bSuccess, sExtraData)
   {
      this.api.datacenter.Exchange["\x16\x1b\x1b"]();
      switch(this.api.datacenter.Basics.aks_exchange_echangeType)
      {
         case 12:
            this["\x18\x1d\x12"](_loc3_,this.api.datacenter.Exchange["\x17\x01\x0b"],"distantKama",false);
            break;
         case 13:
            this["\x18\x1d\x12"](_loc3_,this.api.datacenter.Exchange["\x17\x01\x0b"],"distantKama",true);
      }
   }
   function §\x19\x1b\x03§(bSuccess, sExtraData)
   {
      var _loc4_ = Number(_loc3_.charAt(0));
      var _loc5_ = _loc4_ != 1 ? this.api.datacenter.Exchange["\x1a\x04\r"] : this.api.datacenter.Exchange["\x1a\x04\x0b"];
      var _loc6_ = _loc4_ != 1 ? "\x1a\x04\x0e" : "payKama";
      switch(this.api.datacenter.Basics.aks_exchange_echangeType)
      {
         case 12:
            this["\x18\x1d\x12"](_loc3_.substr(2),_loc5_,_loc6_,false);
            break;
         case 13:
            this["\x18\x1d\x13"](_loc3_.substr(2),_loc5_,_loc6_);
      }
   }
   function §\x18\x1d\x13§(sExtraData, §\x17\n\x17§, §\x1b\x02\x05§)
   {
      var _loc5_ = _loc2_.charAt(0);
      var _loc6_ = this.api.datacenter.Exchange;
      switch(_loc5_)
      {
         case "O":
            var _loc7_ = _loc2_.charAt(1) == "+";
            var _loc8_ = _loc2_.substr(2).split("|");
            var _loc9_ = Number(_loc8_[0]);
            var _loc10_ = Number(_loc8_[1]);
            var _loc11_ = this.api.datacenter.Player.Inventory.findFirstItem("ID",_loc9_);
            var _loc12_ = _loc6_["\x18\f\n"].findFirstItem("ID",_loc9_);
            var _loc13_ = _loc3_.findFirstItem("ID",_loc9_);
            if(_loc7_)
            {
               var _loc14_ = _loc12_.item;
               var _loc15_ = new dofus.datacenter.Item(_loc9_,_loc14_.unicID,_loc10_,-2,_loc14_.compressedEffects);
               var _loc16_ = -1;
               var _loc17_ = _loc11_.item.Quantity - _loc10_;
               if(_loc17_ == 0)
               {
                  _loc16_ = -3;
               }
               _loc12_.item.Quantity = _loc17_;
               _loc12_.item.position = _loc16_;
               _loc6_["\x18\f\n"]["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
               _loc6_["\x18\f\n"]["\x1b\x15\x05"](_loc12_.index,_loc12_.item);
               if(_loc13_.index != -1)
               {
                  _loc3_["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
                  _loc3_["\x1b\x15\x05"](_loc13_.index,_loc15_);
               }
               else
               {
                  _loc3_["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
                  _loc3_.push(_loc15_);
               }
            }
            else if(_loc13_.index != -1)
            {
               _loc12_.item.position = -1;
               _loc12_.item.Quantity = _loc11_.item.Quantity;
               _loc6_["\x18\f\n"]["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
               _loc6_["\x18\f\n"]["\x1b\x15\x05"](_loc12_.index,_loc12_.item);
               _loc3_["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
               _loc3_["\x1a\f\x0b"](_loc13_.index,1);
            }
            break;
         case "G":
            var _loc18_ = Number(_loc2_.substr(1));
            _loc6_[_loc4_] = _loc18_;
      }
   }
   function §\x18\x1d\x12§(sExtraData, §\x17\n\x17§, §\x1b\x02\x05§, §\x16\f\x03§)
   {
      var _loc6_ = _loc2_.charAt(0);
      var _loc7_ = this.api.datacenter.Exchange;
      switch(_loc6_)
      {
         case "O":
            var _loc8_ = _loc2_.charAt(1) == "+";
            var _loc9_ = _loc2_.substr(2).split("|");
            var _loc10_ = Number(_loc9_[0]);
            var _loc11_ = Number(_loc9_[1]);
            var _loc12_ = Number(_loc9_[2]);
            var _loc13_ = _loc9_[3];
            var _loc14_ = _loc3_.findFirstItem("ID",_loc10_);
            if(_loc8_)
            {
               var _loc15_ = new dofus.datacenter.Item(_loc10_,_loc12_,_loc11_,-1,_loc13_);
               var _loc16_ = _loc5_ == undefined ? _loc7_["\x17\b\x1d"] == undefined : _loc5_;
               if(_loc14_.index != -1)
               {
                  _loc3_["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
                  _loc3_["\x1b\x15\x05"](_loc14_.index,_loc15_);
               }
               else
               {
                  _loc3_["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
                  _loc3_.push(_loc15_);
               }
               if(_loc16_)
               {
                  var _loc17_ = _loc7_["\x18\f\n"].findFirstItem("ID",_loc10_);
                  if(_loc17_.index != -1)
                  {
                     _loc17_.item.position = -1;
                     _loc17_.item.Quantity = Number(_loc17_.item.Quantity) + Number(_loc11_);
                     _loc7_["\x18\f\n"]["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
                     _loc7_["\x18\f\n"]["\x1b\x15\x05"](_loc17_.index,_loc17_.item);
                  }
                  else
                  {
                     _loc7_["\x18\f\n"]["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
                     _loc7_["\x18\f\n"].push(_loc15_);
                     _global.api.ui.getUIComponent("Craft")["\x1b\x14\x1c"](_loc15_);
                  }
               }
            }
            else if(_loc14_.index != -1)
            {
               _loc3_["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
               _loc3_["\x1a\f\x0b"](_loc14_.index,1);
            }
            break;
         case "G":
            var _loc18_ = Number(_loc2_.substr(1));
            _loc7_[_loc4_] = _loc18_;
      }
   }
   function §\x19\x1d\x11§(bSuccess, sExtraData)
   {
      var _loc4_ = _loc3_.charAt(0);
      var _loc5_ = this.api.datacenter.["\x1b\x0f\b"].Storage;
      var _loc6_ = _loc5_["\x18\f\n"];
      switch(_loc4_)
      {
         case "O":
            var _loc7_ = _loc3_.charAt(1) == "+";
            var _loc8_ = _loc3_.substr(2).split("|");
            var _loc9_ = Number(_loc8_[0]);
            var _loc10_ = Number(_loc8_[1]);
            var _loc11_ = Number(_loc8_[2]);
            var _loc12_ = _loc8_[3];
            var _loc13_ = _loc6_.findFirstItem("ID",_loc9_);
            if(_loc7_)
            {
               var _loc14_ = new dofus.datacenter.Item(_loc9_,_loc11_,_loc10_,-1,_loc12_);
               if(_loc13_.index != -1)
               {
                  _loc6_["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
                  _loc6_["\x1b\x15\x05"](_loc13_.index,_loc14_);
               }
               else
               {
                  _loc6_["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
                  _loc6_.push(_loc14_);
               }
            }
            else if(_loc13_.index != -1)
            {
               _loc6_["\x1b\t\x13"](dofus.Constants["\x17\x06\x16"]);
               _loc6_["\x1a\f\x0b"](_loc13_.index,1);
            }
            else
            {
               ank.utils.Logger.err("[onStorageMovement] cet objet n\'existe pas id=" + _loc9_);
            }
            break;
         case "G":
            var _loc15_ = Number(_loc3_.substr(1));
            _loc5_.Kama = _loc15_;
      }
   }
   function §\x19\x1b\x05§(bSuccess, sExtraData)
   {
      var _loc4_ = _loc3_.charAt(0) == "+";
      var _loc5_ = _loc3_.substr(1).split("|");
      var _loc6_ = Number(_loc5_[0]);
      var _loc7_ = Number(_loc5_[1]);
      var _loc8_ = Number(_loc5_[2]);
      var _loc9_ = _loc5_[3];
      var _loc10_ = Number(_loc5_[4]);
      var _loc11_ = this.api.datacenter.["\x1b\x0f\b"]["\x1a\x1c\x0e"];
      var _loc12_ = _loc11_["\x18\f\n"].findFirstItem("ID",_loc6_);
      if(_loc4_)
      {
         var _loc13_ = new dofus.datacenter.Item(_loc6_,_loc8_,_loc7_,-1,_loc9_,_loc10_);
         if(_loc12_.index != -1)
         {
            _loc11_["\x18\f\n"]["\x1b\x15\x05"](_loc12_.index,_loc13_);
         }
         else
         {
            _loc11_["\x18\f\n"].push(_loc13_);
         }
      }
      else if(_loc12_.index != -1)
      {
         _loc11_["\x18\f\n"]["\x1a\f\x0b"](_loc12_.index,1);
      }
      else
      {
         ank.utils.Logger.err("[onPlayerShopMovement] cet objet n\'existe pas id=" + _loc6_);
      }
      this.api.ui.getUIComponent("PlayerShopModifier")["\x1a\x0b\x07"]();
   }
   function onList(sExtraData)
   {
      switch(this.api.datacenter.Basics.aks_exchange_echangeType)
      {
         case 0:
            var _loc3_ = this.api.datacenter.Player.Inventory;
            var _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               var _loc5_ = _loc3_[_loc4_];
               _loc5_.resellCustomPrice = undefined;
               _loc5_.customMoneyItemId = undefined;
               _loc4_ = _loc4_ + 1;
            }
            var _loc6_ = _loc2_.split("|");
            var _loc7_ = new ank.utils.ExtendedArray();
            for(var k in _loc6_)
            {
               var _loc8_ = _loc6_[k].split(";");
               var _loc9_ = Number(_loc8_[0]);
               var _loc10_ = _loc8_[1];
               var _loc11_ = Number(_loc8_[2]);
               var _loc12_ = Number(_loc8_[3]);
               if(_global.isNaN(_loc11_))
               {
                  _loc11_ = undefined;
               }
               if(_global.isNaN(_loc12_))
               {
                  _loc12_ = undefined;
               }
               var _loc13_ = Number(_loc8_[4]);
               if(_global.isNaN(_loc13_))
               {
                  _loc13_ = undefined;
               }
               else
               {
                  var _loc14_ = 0;
                  while(_loc14_ < _loc3_.length)
                  {
                     var _loc15_ = _loc3_[_loc14_];
                     if(_loc15_.unicID == _loc9_)
                     {
                        _loc15_.resellCustomPrice = _loc13_;
                        _loc15_.customMoneyItemId = _loc11_;
                     }
                     _loc14_ = _loc14_ + 1;
                  }
               }
               var _loc16_ = _loc8_[5] == "1";
               if(!_loc16_)
               {
                  var _loc17_ = new dofus.datacenter.Item(0,_loc9_,undefined,undefined,_loc10_,_loc12_);
                  _loc17_.customMoneyItemId = _loc11_;
                  _loc17_.resellCustomPrice = _loc13_;
                  _loc17_["\x1a\x06\x1d"] = this.api.lang.getConfigText("BUY_PRICE_MULTIPLICATOR");
                  _loc7_.push(_loc17_);
               }
            }
            this.api.datacenter.["\x1b\x0f\b"]["\x1a\x1c\x0e"]["\x18\f\n"] = _loc7_;
            break;
         case 5:
         case 15:
         case 8:
            var _loc18_ = _loc2_.split(";");
            var _loc19_ = new ank.utils.ExtendedArray();
            for(var k in _loc18_)
            {
               var _loc20_ = _loc18_[k];
               var _loc21_ = _loc20_.charAt(0);
               var _loc22_ = _loc20_.substr(1);
               switch(_loc21_)
               {
                  case "O":
                     var _loc23_ = this.api.kernel.CharactersManager.getItemObjectFromData(_loc22_);
                     _loc19_.push(_loc23_);
                     break;
                  case "G":
                     this["\x19\x1d\x10"](_loc22_);
               }
            }
            this.api.datacenter.["\x1b\x0f\b"].Storage["\x18\f\n"] = _loc19_;
            if(dofus.Constants.SAVING_THE_WORLD)
            {
               dofus["\x1a\x0f\x1a"].getInstance()["\x19\x06\x1c"](_loc2_);
               dofus["\x1a\x0f\x1a"].getInstance()["\x19\x07\x05"]();
            }
            break;
         case 4:
         case 6:
            var _loc24_ = _loc2_.split("|");
            var _loc25_ = new ank.utils.ExtendedArray();
            for(var k in _loc24_)
            {
               var _loc26_ = _loc24_[k].split(";");
               var _loc27_ = Number(_loc26_[0]);
               var _loc28_ = Number(_loc26_[1]);
               var _loc29_ = Number(_loc26_[2]);
               var _loc30_ = _loc26_[3];
               var _loc31_ = Number(_loc26_[4]);
               var _loc32_ = Number(_loc26_[5]);
               var _loc33_ = new dofus.datacenter.Item(_loc27_,_loc29_,_loc28_,-1,_loc30_,_loc31_);
               if(!_global.isNaN(_loc32_))
               {
                  _loc33_.averagePrice = _loc32_;
               }
               _loc25_.push(_loc33_);
            }
            this.api.datacenter.["\x1b\x0f\b"]["\x1a\x1c\x0e"]["\x18\f\n"] = _loc25_;
            break;
         case 10:
            var _loc34_ = _loc2_.split("|");
            var _loc35_ = new ank.utils.ExtendedArray();
            if(_loc2_.length != 0)
            {
               for(var k in _loc34_)
               {
                  var _loc36_ = _loc34_[k].split(";");
                  var _loc37_ = Number(_loc36_[0]);
                  var _loc38_ = Number(_loc36_[1]);
                  var _loc39_ = Number(_loc36_[2]);
                  var _loc40_ = _loc36_[3];
                  var _loc41_ = Number(_loc36_[4]);
                  var _loc42_ = Number(_loc36_[5]);
                  var _loc43_ = new dofus.datacenter.Item(_loc37_,_loc39_,_loc38_,-1,_loc40_,_loc41_);
                  _loc43_["\x1a\x0b\x11"] = _loc42_;
                  _loc35_.push(_loc43_);
               }
            }
            this.api.datacenter.["\x1b\x0f\b"]["\x1a\x1c\x0e"]["\x18\f\n"] = _loc35_;
      }
   }
   function §\x19\x1c\x10§(bSuccess)
   {
      if(_loc2_)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("SELL_DONE"),"INFO_CHAT");
      }
      else
      {
         this.api.kernel.showMessage(this.api.lang.getText("EXCHANGE"),this.api.lang.getText("CANT_SELL"),"ERROR_BOX",{name:"Sell"});
      }
   }
   function §\x19\x15\x01§(bSuccess)
   {
      if(_loc2_)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("BUY_DONE"),"INFO_CHAT");
      }
      else
      {
         this.api.kernel.showMessage(this.api.lang.getText("EXCHANGE"),this.api.lang.getText("CANT_BUY"),"ERROR_BOX",{name:"Buy"});
      }
   }
   function §\x19\x1d\x10§(sExtraData)
   {
      var _loc3_ = Number(_loc2_);
      this.api.datacenter.["\x1b\x0f\b"].Storage.Kama = _loc3_;
   }
   function §\x19\x14\x17§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = _loc3_[1].split(";");
      var _loc6_ = new ank.utils.ExtendedArray();
      if(_loc3_[1].length != 0)
      {
         var _loc7_ = 0;
         while(_loc7_ < _loc5_.length)
         {
            var _loc8_ = Number(_loc5_[_loc7_]);
            if(dofus.datacenter.Item.isFullSoul(_loc4_))
            {
               var _loc9_ = new dofus.datacenter.MonsterInBidHouse(_loc8_,_loc4_);
            }
            else
            {
               _loc9_ = new dofus.datacenter.Item(0,_loc8_,1,-1,"",0);
            }
            _loc6_.push(_loc9_);
            _loc7_ = _loc7_ + 1;
         }
      }
      this.api.datacenter.["\x1b\x0f\b"]["\x1a\x1c\x0e"]["\x18\f\n"] = _loc6_;
      this.api.ui.getUIComponent("BigStoreBuy")["\x1a\x1a\x1a"](_loc4_);
   }
   function §\x19\x19\t§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      this.api.ui.getUIComponent("BigStoreBuy")["\x1a\x17\x1b"](_loc4_,_loc5_);
      this.api.ui.getUIComponent("BigStoreSell")["\x1a\x17\x1b"](_loc4_,_loc5_);
   }
   function §\x19\x14\x18§(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0) == "+";
      var _loc4_ = Number(_loc2_.substr(1));
      var _loc5_ = this.api.datacenter.["\x1b\x0f\b"]["\x1a\x1c\x0e"];
      var _loc6_ = _loc5_["\x18\f\n"].findFirstItem("unicID",_loc4_);
      if(_loc3_)
      {
         var _loc7_ = new dofus.datacenter.Item(0,_loc4_,0,-1,"",0);
         if(_loc6_.index != -1)
         {
            _loc5_["\x18\f\n"]["\x1b\x15\x05"](_loc6_.index,_loc7_);
         }
         else
         {
            _loc5_["\x18\f\n"].push(_loc7_);
         }
      }
      else if(_loc6_.index != -1)
      {
         _loc5_["\x18\f\n"]["\x1a\f\x0b"](_loc6_.index,1);
      }
      else
      {
         ank.utils.Logger.err("[onBigStoreTypeItemsMovement] cet objet n\'existe pas unicID=" + _loc4_);
      }
   }
   function §\x19\x14\x15§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      this.api.ui.getUIComponent("BigStoreBuy")["\x1a\x17\x0b"](_loc4_);
      var _loc5_ = new ank.utils.ExtendedArray();
      if(_loc3_[1].length == 0)
      {
         return this.api.datacenter.["\x1b\x0f\b"]["\x1a\x1c\x0e"]["\x18\f\x0b"] = _loc5_;
      }
      var _loc6_ = 1;
      while(_loc6_ < _loc3_.length)
      {
         var _loc7_ = _loc3_[_loc6_].split(";");
         var _loc8_ = Number(_loc7_[0]);
         var _loc9_ = _loc7_[1];
         var _loc10_ = _loc7_[2].split(",");
         var _loc11_ = Number(_loc10_[0]);
         var _loc12_ = !!Number(_loc10_[1]);
         var _loc13_ = _loc7_[3].split(",");
         var _loc14_ = Number(_loc13_[0]);
         var _loc15_ = !!Number(_loc13_[1]);
         var _loc16_ = _loc7_[4].split(",");
         var _loc17_ = Number(_loc16_[0]);
         var _loc18_ = !!Number(_loc16_[1]);
         var _loc19_ = Number(_loc7_[5]);
         var _loc20_ = new dofus.datacenter.Item(_loc8_,_loc19_,0,-1,_loc9_,0);
         var _loc21_ = {id:_loc8_,item:_loc20_,priceSet1:_loc11_,priceSet2:_loc14_,priceSet3:_loc17_,isMySale1:_loc12_,isMySale2:_loc15_,isMySale3:_loc18_};
         _loc5_.push(_loc21_);
         _loc6_ = _loc6_ + 1;
      }
      this.api.datacenter.["\x1b\x0f\b"]["\x1a\x1c\x0e"]["\x18\f\x0b"] = _loc5_;
   }
   function §\x19\x14\x16§(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0) == "+";
      var _loc4_ = _loc2_.substr(1).split("|");
      var _loc5_ = Number(_loc4_[0]);
      var _loc6_ = Number(_loc4_[1]);
      var _loc7_ = _loc4_[2];
      var _loc8_ = _loc4_[3].split(",");
      var _loc9_ = Number(_loc8_[0]);
      var _loc10_ = !!Number(_loc8_[1]);
      var _loc11_ = _loc4_[4].split(",");
      var _loc12_ = Number(_loc11_[0]);
      var _loc13_ = !!Number(_loc11_[1]);
      var _loc14_ = _loc4_[5].split(",");
      var _loc15_ = Number(_loc14_[0]);
      var _loc16_ = !!Number(_loc14_[1]);
      var _loc17_ = this.api.datacenter.["\x1b\x0f\b"]["\x1a\x1c\x0e"];
      var _loc18_ = _loc17_["\x18\f\x0b"].findFirstItem("id",_loc5_);
      if(_loc3_)
      {
         var _loc19_ = new dofus.datacenter.Item(_loc5_,_loc6_,0,-1,_loc7_,0);
         var _loc20_ = {id:_loc5_,item:_loc19_,priceSet1:_loc9_,priceSet2:_loc12_,priceSet3:_loc15_,isMySale1:_loc10_,isMySale2:_loc13_,isMySale3:_loc16_};
         if(_loc18_.index != -1)
         {
            _loc17_["\x18\f\x0b"]["\x1b\x15\x05"](_loc18_.index,_loc20_);
         }
         else
         {
            _loc17_["\x18\f\x0b"].push(_loc20_);
         }
         _loc17_.refreshInventory("modelChanged2");
         return undefined;
      }
      if(_loc18_.index != -1)
      {
         _loc17_["\x18\f\x0b"]["\x1a\f\x0b"](_loc18_.index,1);
         _loc17_.refreshInventory("modelChanged2");
      }
      else
      {
         ank.utils.Logger.err("[onBigStoreItemsMovement] cet objet n\'existe pas id=" + _loc5_);
      }
   }
   function §\x19\x1c\x0b§(sExtraData)
   {
      this.api.ui.getUIComponent("BigStoreBuy")["\x19\x1c\f"](_loc2_ == "K");
   }
   function §\x19\x16\n§(sExtraData)
   {
      if(_loc2_.length == 1)
      {
         var _loc3_ = _loc2_;
         this.api.datacenter.Player.craftPublicMode = _loc3_ != "+" ? false : true;
      }
      else
      {
         var _loc4_ = _loc2_.charAt(0);
         var _loc5_ = _loc2_.substr(1).split("|");
         var _loc6_ = _loc5_[0];
         var _loc7_ = this.api.datacenter.Sprites.getItemAt(_loc6_);
         if(_loc4_ == "+" && _loc5_[1].length > 0)
         {
            var _loc8_ = _loc5_[1].split(";");
            _loc7_["\x19\x02\t"] = _loc8_;
         }
         else
         {
            _loc7_["\x19\x02\t"] = undefined;
         }
      }
   }
   function §\x19\x1a\f§(sExtraData)
   {
      var _loc3_ = _loc2_.split(";");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      this.api.datacenter.Player.mount.podsMax = _loc5_;
      this.api.datacenter.Player.mount.pods = _loc4_;
   }
   function cancel(oEvent)
   {
      this["\x18\x13\x1d"]();
   }
   function yes(oEvent)
   {
      this["\x15\x1b\x0f"]();
   }
   function no(oEvent)
   {
      this["\x18\x13\x1d"]();
   }
   function ignore(oEvent)
   {
      this.api.kernel.ChatManager["\x16\x01\x03"](_loc2_.params.player);
      this.api.kernel.showMessage(undefined,this.api.lang.getText("TEMPORARY_BLACKLISTED",[_loc2_.params.player]),"INFO_CHAT");
      this["\x18\x13\x1d"]();
   }
}
