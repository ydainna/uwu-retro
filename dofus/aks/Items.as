if(!dofus.aks.Items)
{
   if(!dofus)
   {
      _global.dofus = new Object();
   }
   if(!dofus.aks)
   {
      _global.dofus.aks = new Object();
   }
   dofus.aks.Items = function(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   } extends dofus.aks.Handler;
   var _loc1_ = dofus.aks.Items = function(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }.prototype;
   _loc1_.movement = function §\x18\x1e\x1d§(§\x19\b\x0b§, §\x19\f\r§, nQuantity)
   {
      if(_loc3_ > 0)
      {
         this.api.kernel.GameManager["\x1a\x14\x1d"](_loc3_);
      }
      this.aks.send("OM" + _loc2_ + "|" + _loc3_ + (!_global.isNaN(_loc4_) ? "|" + _loc4_ : ""),true);
   };
   _loc1_.drop = function drop(§\x19\b\x0b§, nQuantity)
   {
      this.aks.send("OD" + _loc2_ + "|" + _loc3_,false);
   };
   _loc1_["\x16\x06\x0e"] = function §\x16\x06\x0e§(§\x19\b\x0f§, §\x19\b\x10§)
   {
      this.aks.send("AEi1|" + _loc2_ + "|" + _loc3_);
   };
   _loc1_.destroyMimibiote = function destroyMimibiote(§\x19\b\x0b§)
   {
      this.aks.send("AEi0|" + _loc2_);
   };
   _loc1_.selectRouletteItem = function selectRouletteItem(§\x19\b\x14§)
   {
      this.aks.send("wc" + _loc2_,false);
   };
   _loc1_.destroy = function destroy(§\x19\b\x0b§, nQuantity)
   {
      this.aks.send("Od" + _loc2_ + "|" + _loc3_,false);
   };
   _loc1_.reinitialize = function reinitialize(§\x19\b\x0b§)
   {
      this.aks.send("OR" + _loc2_,false);
   };
   _loc1_.use = function §\x1b\x16\x11§(§\x19\b\x0b§, §\x1b\b\x10§, §\x19\x04\x12§, §\x16\n\x06§, nQuantity)
   {
      if(_loc6_ == undefined)
      {
         _loc6_ = 1;
      }
      this.aks.send("O" + (!_loc5_ ? "U" : "u") + _loc2_ + (!(_loc3_ != undefined && !_global.isNaN(Number(_loc3_))) ? "|" : "|" + _loc3_) + (_loc4_ == undefined ? "|" : "|" + _loc4_) + "|" + _loc6_,true);
   };
   _loc1_["\x17\b\x19"] = function §\x17\b\x19§(§\x19\b\x0b§, §\x19\f\r§)
   {
      this.aks.send("Ox" + _loc2_ + "|" + _loc3_,false);
   };
   _loc1_["\x1a\x19\x19"] = function §\x1a\x19\x19§(§\x19\b\x0b§, §\x19\f\r§, §\x19\x0e\r§)
   {
      this.aks.send("Os" + _loc2_ + "|" + _loc3_ + "|" + _loc4_,false);
   };
   _loc1_["\x17\x0f\x0f"] = function §\x17\x0f\x0f§(§\x19\b\x0b§, §\x19\f\r§, §\x19\x07\x0f§)
   {
      this.aks.send("Of" + _loc2_ + "|" + _loc3_ + "|" + _loc4_,false);
   };
   function §\x17\r\x17§(oItem)
   {
      if(oItem.isEquiped || oItem.isShortcut)
      {
         return false;
      }
      var _loc3_ = oItem.superType;
      if(oItem.superType != 8)
      {
         var _loc4_ = 0;
         while(_loc4_ < dofus.graphics.gapi.ui.Inventory.arrayInventory.length)
         {
            if(dofus.graphics.gapi.ui.Inventory.arrayInventory[_loc4_] == _loc3_)
            {
               return false;
            }
            _loc4_ = _loc4_ + 1;
         }
      }
      var _loc5_ = this.api.lang.getSlotsFromSuperType(oItem.superType);
      var _loc6_ = undefined;
      var _loc7_ = 0;
      while(_loc7_ < _loc5_.length)
      {
         var _loc8_ = Number(_loc5_[_loc7_]);
         var _loc9_ = this.api.datacenter.Player.InventoryByItemPositions.getItemAt(_loc8_) == undefined;
         if(_loc9_)
         {
            _loc6_ = _loc8_;
            break;
         }
         _loc7_ = _loc7_ + 1;
      }
      var _loc10_ = _loc6_ == undefined;
      if(_loc10_)
      {
         var _loc11_ = 10719;
         var _loc12_ = 0;
         while(_loc12_ < _loc5_.length)
         {
            if(this.api.kernel.GameManager.getLastModified(_loc5_[_loc12_]) < _loc11_)
            {
               _loc11_ = this.api.kernel.GameManager.getLastModified(_loc5_[_loc12_]);
               _loc6_ = _loc5_[_loc12_];
            }
            _loc12_ = _loc12_ + 1;
         }
      }
      if(_loc6_ == undefined || _global.isNaN(_loc6_))
      {
         return false;
      }
      this.api.network.Items.movement(params.ID,_loc6_);
      return true;
   };
   _loc1_["\x19\x13\x16"] = function §\x19\x13\x16§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = _loc3_[0];
      var _loc5_ = _loc3_[1].split(",");
      var _loc6_ = new Array();
      var _loc7_ = 0;
      while(_loc7_ < _loc5_.length)
      {
         if(_loc5_[_loc7_].indexOf("~") != -1)
         {
            var _loc11_ = _loc5_[_loc7_].split("~");
            var _loc8_ = _global.parseInt(_loc11_[0],16);
            var _loc10_ = _global.parseInt(_loc11_[1]);
            var _loc9_ = _global.parseInt(_loc11_[2]) - 1;
            if(_loc9_ < 0)
            {
               _loc9_ = 0;
            }
         }
         else
         {
            _loc8_ = _global.parseInt(_loc5_[_loc7_],16);
            _loc10_ = undefined;
            _loc9_ = undefined;
         }
         if(!_global.isNaN(_loc8_))
         {
            var _loc12_ = new dofus.datacenter.["\x15\x1b\x15"](_loc8_,_loc10_,_loc9_);
            _loc6_[_loc7_] = _loc12_;
         }
         _loc7_ = _loc7_ + 1;
      }
      var _loc13_ = this.api.datacenter.Sprites.getItemAt(_loc4_);
      _loc13_.accessories = _loc6_;
      this.api.gfx["\x1a\x16\x17"](_loc4_,"static");
      if(_loc4_ == this.api.datacenter.Player.ID)
      {
         this.api.datacenter.Player["\x1b\x14\x0f"]();
      }
   };
   _loc1_["\x19\x16\x15"] = function §\x19\x16\x15§(bSuccess, sExtraData)
   {
      if(!_loc2_)
      {
         switch(_loc3_)
         {
            case "F":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("DROP_FULL"),"ERROR_BOX",{name:"DropFull"});
               break;
            case "E":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_DROP_ITEM"),"ERROR_BOX");
         }
      }
   };
   _loc1_["\x19\x13\x1b"] = function §\x19\x13\x1b§(bSuccess, sExtraData)
   {
      if(!_loc2_)
      {
         switch(_loc3_)
         {
            case "F":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("INVENTORY_FULL"),"ERROR_BOX",{name:"Full"});
               addr155:
               break;
            case "L":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("TOO_LOW_LEVEL_FOR_ITEM"),"ERROR_BOX",{name:"LowLevel"});
               §§goto(addr155);
            case "A":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("ALREADY_EQUIPED"),"ERROR_BOX",{name:"Already"});
               §§goto(addr155);
         }
      }
      else
      {
         var _loc4_ = _loc3_.split("*");
         var _loc5_ = 0;
         while(_loc5_ < _loc4_.length)
         {
            var _loc6_ = _loc4_[_loc5_];
            var _loc7_ = _loc6_.charAt(0);
            _loc6_ = _loc6_.substr(1);
            switch(_loc7_)
            {
               case "G":
                  break;
               case "O":
                  var _loc8_ = _loc6_.split(";");
                  var _loc9_ = 0;
                  while(_loc9_ < _loc8_.length)
                  {
                     var _loc10_ = this.api.kernel.CharactersManager.getItemObjectFromData(_loc8_[_loc9_]);
                     if(this.api.datacenter.Basics.aks_exchange_echangeType == 0)
                     {
                        var _loc11_ = this.api.datacenter.["\x1b\x0f\b"]["\x1a\x1c\x0e"]["\x18\f\n"];
                        var _loc12_ = 0;
                        while(_loc12_ < _loc11_.length)
                        {
                           var _loc13_ = _loc11_[_loc12_];
                           if(_loc13_.hasCustomResellCustomPrice)
                           {
                              if(_loc10_.unicID == _loc13_.unicID)
                              {
                                 _loc10_.resellCustomPrice = _loc13_.resellCustomPrice;
                                 _loc10_.customMoneyItemId = _loc13_.customMoneyItemId;
                              }
                           }
                           _loc12_ = _loc12_ + 1;
                        }
                     }
                     if(_loc10_ != undefined)
                     {
                        this.api.datacenter.Player["\x15\x1d\x12"](_loc10_);
                     }
                     _loc9_ = _loc9_ + 1;
                  }
                  break;
               default:
                  ank.utils.Logger.err("Ajout d\'un type obj inconnu");
            }
            _loc5_ = _loc5_ + 1;
         }
      }
   };
   _loc1_["\x19\x15\b"] = function §\x19\x15\b§(sExtraData)
   {
      var _loc3_ = _loc2_.split("*");
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         var _loc5_ = _loc3_[_loc4_];
         var _loc6_ = _loc5_.split(";");
         var _loc7_ = 0;
         while(_loc7_ < _loc6_.length)
         {
            var _loc8_ = this.api.kernel.CharactersManager.getItemObjectFromData(_loc6_[_loc7_]);
            if(_loc8_ != undefined)
            {
               this.api.datacenter.Player["\x1b\x15\x05"](_loc8_);
            }
            _loc7_ = _loc7_ + 1;
         }
         _loc4_ = _loc4_ + 1;
      }
   };
   _loc1_["\x19\x1b\x1c"] = function §\x19\x1b\x1c§(sExtraData)
   {
      var _loc3_ = Number(_loc2_);
      this.api.datacenter.Player.dropItem(_loc3_);
   };
   _loc1_["\x19\x1b\x14"] = function §\x19\x1b\x14§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      this.api.datacenter.Player["\x1b\x15\b"](_loc4_,_loc5_);
   };
   _loc1_["\x19\x1a\x0f"] = function §\x19\x1a\x0f§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = !_global.isNaN(Number(_loc3_[1])) ? Number(_loc3_[1]) : -1;
      this.api.datacenter.Player["\x1b\x15\x07"](_loc4_,_loc5_);
   };
   _loc1_["\x19\x1d\x1c"] = function §\x19\x1d\x1c§(sExtraData)
   {
      var _loc3_ = Number(_loc2_);
      if(_global.isNaN(_loc3_))
      {
         this.api.datacenter.Player.currentJobID = undefined;
      }
      else
      {
         this.api.datacenter.Player.currentJobID = _loc3_;
      }
   };
   _loc1_.onDeletion = function onDeletion(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0);
      if(_loc3_ == "E")
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("CANNOT_DELETE_THIS_OBJECT"),"ERROR_CHAT");
      }
   };
   _loc1_["\x19\x1e\x11"] = function §\x19\x1e\x11§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      var _loc6_ = Number(_loc3_[2]);
      this.api.datacenter.Player.maxWeight = _loc5_;
      this.api.datacenter.Player.currentWeight = _loc4_;
      this.api.datacenter.Player.maxOverWeight = _loc6_;
   };
   _loc1_["\x19\x19\f"] = function §\x19\x19\f§(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0) == "+";
      var _loc4_ = _loc2_.substr(1).split("|");
      var _loc5_ = Number(_loc4_[0]);
      var _loc6_ = String(_loc4_[1]).split(";");
      var _loc7_ = _loc4_[2];
      if(_loc3_)
      {
         var _loc8_ = new dofus.datacenter..ItemSet(_loc5_,_loc7_,_loc6_);
         this.api.datacenter.Player["\x18\x10\x1d"]["\x15\x1d\x13"](_loc5_,_loc8_);
      }
      else
      {
         this.api.datacenter.Player["\x18\x10\x1d"]["\x1a\f\n"](_loc5_);
      }
   };
   _loc1_["\x19\x19\r"] = function §\x19\x19\r§(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0);
      switch(_loc3_)
      {
         case "G":
            var _loc4_ = _loc2_.substr(1).split("|");
            var _loc5_ = !_global.isNaN(Number(_loc4_[0])) ? Number(_loc4_[0]) : 0;
            var _loc6_ = !_global.isNaN(Number(_loc4_[1])) ? Number(_loc4_[1]) : undefined;
            §§push(_loc4_);
            §§push(2);
         default:
            var _loc7_ = !_global.isNaN(Number(§§pop()[§§pop()])) ? Number(_loc4_[2]) : undefined;
            var _loc8_ = !_global.isNaN(Number(_loc4_[3])) ? Number(_loc4_[3]) : undefined;
            var _loc9_ = {name:"UseItemGold",listener:this,params:{objectID:_loc5_,spriteID:_loc6_,cellID:_loc7_}};
            this.api.kernel.showMessage(undefined,this.api.lang.getText("ITEM_USE_CONDITION_GOLD",[_loc8_]),"CAUTION_YESNO",_loc9_);
            break;
         case "U":
            var _loc10_ = _loc2_.substr(1).split("|");
            var _loc11_ = !_global.isNaN(Number(_loc10_[0])) ? Number(_loc10_[0]) : 0;
            var _loc12_ = !_global.isNaN(Number(_loc10_[1])) ? Number(_loc10_[1]) : undefined;
            var _loc13_ = !_global.isNaN(Number(_loc10_[2])) ? Number(_loc10_[2]) : undefined;
            var _loc14_ = !_global.isNaN(Number(_loc10_[3])) ? Number(_loc10_[3]) : undefined;
            var _loc15_ = {name:"UseItem",listener:this,params:{objectID:_loc11_,spriteID:_loc12_,cellID:_loc13_}};
            var _loc16_ = new dofus.datacenter.["\x18\x10\x15"](-1,_loc14_,1,0,"",0);
            this.api.kernel.showMessage(undefined,this.api.lang.getText("ITEM_USE_CONFIRMATION",[_loc16_.name]),"CAUTION_YESNO",_loc15_);
      }
   };
   _loc1_["\x19\x19\b"] = function §\x19\x19\b§(sExtraData)
   {
      var _loc3_ = _loc2_[undefined](undefined);
      var _loc4_ = !eval(undefined)[undefined](Number(_loc3_[0])) ? Number(_loc3_[0]) : 0;
      var _loc5_ = !eval(undefined)[undefined](Number(_loc3_[2])) ? Number(_loc3_[2]) : 0;
      var _loc6_ = _loc3_[1][undefined](undefined);
      var _loc7_ = !eval(undefined)[undefined](Number(_loc6_[0])) ? Number(_loc6_[0]) : 0;
      var _loc8_ = !eval(undefined)[undefined](Number(_loc6_[1])) ? Number(_loc6_[1]) : 0;
      if(_loc4_ == 1)
      {
         if(_loc7_ == 0)
         {
            var _loc9_ = {(undefined):undefined};
         }
         else
         {
            _loc9_ = new eval("{invalid_utf8=161}b")[undefined][undefined](0,_loc7_,_loc8_);
         }
         this[undefined][undefined][undefined](this[undefined][undefined][undefined][undefined],undefined,eval("{invalid_utf8=161}b")[undefined][undefined][undefined],[true,_loc9_],2000);
      }
   };
   _loc1_[""] = function §§(oEvent)
   {
      switch(_loc2_[""]["\b\x03\x1c{invalid_utf8=150}\x02"])
      {
         case "\b\x0fR\x12\x12{invalid_utf8=157}\x02":
            this["{invalid_utf8=208}\x19O{invalid_utf8=142}\r"](_loc2_[""]["N{invalid_utf8=135}\x01"],_loc2_[""]["\x04\x17{invalid_utf8=150}\x0e"],_loc2_[""]["\b=\x07\x01"],true);
            break;
         case "E\x02{invalid_utf8=150}\r":
            this["{invalid_utf8=208}\x19O{invalid_utf8=142}\r"](_loc2_[""]["N{invalid_utf8=135}\x01"],_loc2_[""]["\x04\x17{invalid_utf8=150}\x0e"],_loc2_[""]["\b=\x07\x01"],true);
      }
   };
   "\x04\t\x04\n\x04\b\x07\x03"(_loc1_,null,1);
   dofus.aks.Items = function(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }[""] = "";
   dofus.aks.Items = function(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }["\b"] = 16;
   dofus.aks.Items = function(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }["\x1c{invalid_utf8=150}\x02"] = 300;
}
