class dofus.aks.Spells extends dofus.aks.Handler
{
   function Spells(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function §\x19\x01\x10§(§\x19\b\x0b§, §\x19\f\r§)
   {
      this.aks.send("SM" + _loc2_ + "|" + _loc3_,false);
   }
   function §\x16\x10\x03§(§\x19\b\x0b§)
   {
      this.aks.send("SB" + _loc2_);
   }
   function §\x1b\x06\t§(§\x19\b\x0b§)
   {
      this.aks.send("SF" + _loc2_);
   }
   function spellRemove(§\x19\f\r§)
   {
      this.aks.send("SR" + _loc2_);
   }
   function §\x19\x1e\x0b§(bSuccess, sExtraData)
   {
      if(_loc2_)
      {
         var _loc4_ = this.api.kernel.CharactersManager["\x18\x01\x05"](_loc3_);
         this.api.datacenter.Player["\x1b\x16\x05"](_loc4_);
      }
      else
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_BOOST_SPELL"),"ERROR_BOX");
      }
   }
   function §\x19\x19\x1c§(sExtraData)
   {
      var _loc3_ = this.api.datacenter.Player;
      _loc3_.Spells["\x1a\f\x0b"](1,_loc3_.Spells.length);
      var _loc4_ = _loc2_.split("|");
      var _loc5_ = new Array();
      var _loc6_ = 0;
      while(_loc6_ < _loc4_.length)
      {
         var _loc7_ = _loc4_[_loc6_].split(";");
         var _loc8_ = 0;
         while(_loc8_ < _loc7_.length)
         {
            var _loc9_ = _loc7_[_loc8_];
            if(_loc9_.length != 0)
            {
               var _loc10_ = this.api.kernel.CharactersManager["\x18\x01\x05"](_loc9_);
               if(_loc10_ != undefined)
               {
                  _loc5_.push(_loc10_);
               }
            }
            _loc8_ = _loc8_ + 1;
         }
         _loc6_ = _loc6_ + 1;
      }
      _loc3_.Spells["\x1a\r\x0b"](1,_loc5_);
   }
   function §\x19\x15\t§(sExtraData)
   {
      this.api.datacenter.Basics.canUseSeeAllSpell = _loc2_.charAt(0) == "+";
   }
   function §\x19\x1c\x1d§(sExtraData)
   {
      var _loc3_ = _loc2_.split(";");
      var _loc4_ = _loc3_[1].toLowerCase();
      var _loc5_ = _loc4_.split(",");
      var _loc6_ = Number(_loc3_[0]);
      var _loc7_ = Number(_loc3_[2]);
      var _loc8_ = 0;
      while(_loc8_ < _loc5_.length)
      {
         var _loc9_ = Number(_loc5_[_loc8_]);
         var _loc10_ = new Array();
         if(_loc9_ == -1)
         {
            var _loc11_ = this.api.datacenter.Player.Spells;
            var _loc12_ = 0;
            while(_loc12_ < _loc11_.length)
            {
               var _loc13_ = _loc11_[_loc12_];
               if(_loc13_.ID != undefined && _loc13_.ID > 0)
               {
                  _loc10_.push(_loc13_.ID);
               }
               _loc12_ = _loc12_ + 1;
            }
         }
         else
         {
            _loc10_.push(_loc9_);
         }
         var _loc14_ = 0;
         while(_loc14_ < _loc10_.length)
         {
            var _loc15_ = _loc10_[_loc14_];
            this.api.kernel.SpellsBoostsManager["\x1a\x19\x1a"](_loc6_,_loc15_,_loc7_);
            _loc14_ = _loc14_ + 1;
         }
         _loc8_ = _loc8_ + 1;
      }
   }
   function §\x19\x1d\x01§(sExtraData)
   {
      if(_loc2_ == "+")
      {
         this.api.ui.loadUIComponent("SpellForget","SpellForget",undefined,{bStayIfPresent:true});
      }
      else if(_loc2_ == "-")
      {
         this.api.ui.unloadUIComponent("SpellForget");
      }
   }
   function onSpellMove(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      this.api.ui.getUIComponent("Banner")["\x1a\x1c\x10"].spellMove(_loc4_,_loc5_);
      this.api.ui.getUIComponent("SpellsCollection").spellMove(_loc4_,_loc5_);
   }
   function onSpellRemove(sExtraData)
   {
      var _loc3_ = Number(_loc2_);
      this.api.ui.getUIComponent("Banner")["\x1a\x1c\x10"].spellRemove(_loc3_);
      this.api.ui.getUIComponent("SpellsCollection").spellRemove(_loc3_);
   }
   function onSpellCooldown(sExtraData)
   {
      var _loc3_ = _loc2_.split(";");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      var _loc6_ = this.api.datacenter.Player.Spells.findFirstItem("ID",_loc4_).item;
      if(_loc6_ != undefined)
      {
         var _loc7_ = this.api.datacenter.Player["\x1b\x06\x12"];
         if(_loc7_.hasSpellLaunched(_loc4_))
         {
            var _loc8_ = _loc7_.getSpellLaunched(_loc4_);
         }
         else
         {
            _loc8_ = new dofus.datacenter.["\x18\x13\x06"](_loc4_,undefined);
            _loc7_["\x15\x1d\x17"](_loc8_);
         }
         _loc8_["\x1a\x0b\x12"] = _loc5_;
         _loc7_["\x17\x07\x19"]({type:"nextTurn"});
      }
   }
}
