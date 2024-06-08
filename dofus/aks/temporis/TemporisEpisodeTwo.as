class dofus.aks.temporis.TemporisEpisodeTwo
{
   static var TEMPORIS_EPISODE = 2;
   function TemporisEpisodeTwo(aksTemporis)
   {
      this.api = aksTemporis.api;
      this._aksTemporis = aksTemporis;
   }
   function onTemporisEpisode2PacketReceived(sPacket)
   {
      if(sPacket.length == 0)
      {
         return undefined;
      }
      var _loc3_ = sPacket.charAt(0);
      var _loc0_ = null;
      if((_loc0_ = _loc3_) === "s")
      {
         var _loc4_ = sPacket.charAt(1);
         if((_loc0_ = _loc4_) === "q")
         {
            var _loc5_ = sPacket.charAt(2);
            switch(_loc5_)
            {
               case "c":
                  this.onSpellsQuickCache(sPacket.substring(3));
                  break;
               case "r":
                  this.onSpellsQuickRemove(sPacket.substring(3));
                  break;
               case "m":
                  this.onSpellsQuickAddOrMove(sPacket.substring(3));
                  break;
               case "e":
                  this.onSpellsQuickEditResult(sPacket.substring(3));
            }
         }
      }
   }
   function onSpellsQuickCache(sExtraData)
   {
      var _loc3_ = _loc2_.split("~");
      var _loc4_ = _loc3_[0].split("|");
      var _loc5_ = Number(_loc4_[0]);
      this.api.datacenter.Player.currentSpellsDeckID = _loc5_;
      var _loc6_ = 1;
      while(_loc6_ < _loc3_.length)
      {
         var _loc7_ = _loc3_[_loc6_].split("|");
         var _loc8_ = Number(_loc7_[0]);
         if(_global.isNaN(_loc8_))
         {
            _loc8_ = 0;
         }
         var _loc9_ = _loc7_[1];
         var _loc10_ = _loc7_[2].split(";");
         var _loc11_ = new ank.utils.["\x17\x0e\r"]();
         var _loc12_ = 0;
         while(_loc12_ < _loc10_.length)
         {
            var _loc13_ = this.parseQuickSpellDataString(_loc10_[_loc12_]);
            var _loc14_ = new dofus.datacenter.["\x1b\x06\x06"](_loc13_.spellID);
            _loc14_.position = _loc13_.position;
            _loc14_.flags = _loc13_.flags;
            _loc11_["\x15\x1d\x13"](_loc13_.position,_loc14_);
            _loc12_ = _loc12_ + 1;
         }
         var _loc15_ = new dofus.datacenter..spellscollection.SpellsDeck(_loc11_,_loc9_,_loc8_);
         this.api.datacenter.Player.putSpellsDeck(_loc8_,_loc15_);
         _loc6_ = _loc6_ + 1;
      }
   }
   function parseQuickSpellDataString(sSpellData)
   {
      var _loc3_ = new Object();
      var _loc4_ = sSpellData.split(",");
      var _loc5_ = Number(_loc4_[0]);
      var _loc6_ = Number(_loc4_[1]);
      var _loc7_ = Number(_loc4_[2]);
      _loc3_.spellID = _loc5_;
      _loc3_.position = _loc6_;
      _loc3_.flags = _loc7_;
      return _loc3_;
   }
   function onSpellsQuickRemove(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      var _loc6_ = this.api.datacenter.Player.getSpellsDeck(_loc4_);
      if(_loc6_ == undefined)
      {
         return undefined;
      }
      var _loc7_ = _loc6_.eoSpells;
      _loc7_["\x1a\f\n"](_loc5_);
   }
   function onSpellsQuickAddOrMove(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = this.parseQuickSpellDataString(_loc3_[1]);
      var _loc6_ = this.api.datacenter.Player.getSpellsDeck(_loc4_);
      if(_loc6_ == undefined)
      {
         return undefined;
      }
      var _loc7_ = _loc6_.eoSpells;
      _loc7_["\x1a\f\n"](_loc5_.position);
      var _loc8_ = _loc7_.getItems();
      for(var k in _loc8_)
      {
         var _loc9_ = _loc8_[k];
         if(_loc9_.ID == _loc5_.spellID)
         {
            _loc7_["\x1a\f\n"](_loc9_.position);
         }
      }
      var _loc10_ = new dofus.datacenter.["\x1b\x06\x06"](_loc5_.spellID);
      _loc10_.position = _loc5_.position;
      _loc10_.flags = _loc5_.flags;
      _loc7_["\x15\x1d\x13"](_loc5_.position,_loc10_);
   }
   function onSpellsQuickEditResult(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0);
      _loc2_ = _loc2_.substring(1);
      var _loc4_ = _loc2_.split("|");
      var _loc5_ = Number(_loc4_[0]);
      var _loc6_ = _loc4_[1];
      var _loc7_ = this.api.datacenter.Player.getSpellsDeck(_loc5_);
      if(_loc7_ == undefined)
      {
         return undefined;
      }
      if(_loc3_ == "K")
      {
         _loc7_.name = _loc6_;
         this.api.kernel.showMessage(undefined,"Votre deck a bien été renommé, son nom a été sauvegardé et sera réutilisé au prochain redémarrage de l\'interface.","INFO_CHAT");
      }
      else
      {
         this.api.kernel.showMessage(undefined,"Une erreur est survenue durant le renommage du deck ! Le nom ne convient pas et ne sera pas réutilisé au redémarrage de l\'interface.","ERROR_CHAT");
      }
   }
   function sendSpellsQuickEditName(nDeckID, sName)
   {
      this._aksTemporis.sendTemporisPacket(dofus.aks.temporis.TemporisEpisodeTwo.TEMPORIS_EPISODE,"sqe" + nDeckID + "|" + _loc3_);
   }
   function sendSpellsQuickMove(nDeckID, §\x19\x0e\x17§, nCell)
   {
      this._aksTemporis.sendTemporisPacket(dofus.aks.temporis.TemporisEpisodeTwo.TEMPORIS_EPISODE,"sqm" + nDeckID + "|" + _loc3_ + "|" + nCell);
   }
   function sendSpellsQuickRemove(nDeckID, nCell)
   {
      this._aksTemporis.sendTemporisPacket(dofus.aks.temporis.TemporisEpisodeTwo.TEMPORIS_EPISODE,"sqr" + nDeckID + "|" + nCell);
   }
   function sendSpellsQuickLoad(nDeckID)
   {
      this._aksTemporis.sendTemporisPacket(dofus.aks.temporis.TemporisEpisodeTwo.TEMPORIS_EPISODE,"sql" + nDeckID);
   }
}
