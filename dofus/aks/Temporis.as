class dofus.aks.Temporis extends dofus.aks.Handler
{
   function Temporis(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
      this._temporisEpisodeTwo = new dofus.aks.temporis.TemporisEpisodeTwo(this);
   }
   function get episodeTwo()
   {
      return this._temporisEpisodeTwo;
   }
   function sendTemporisPacket(nEpisode, sPacket)
   {
      this.aks.send("YT" + nEpisode + "|" + sPacket);
   }
   function onTemporisPacketReceived(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      _loc3_.shift();
      var _loc5_ = _loc3_.join("|");
      var _loc0_ = null;
      if((_loc0_ = _loc4_) === 2)
      {
         this._temporisEpisodeTwo.onTemporisEpisode2PacketReceived(_loc5_);
      }
   }
   function onTemporisInfos(sExtraData)
   {
      var _loc3_ = 1000;
      if(this.api.datacenter.Player.temporisInfos == undefined)
      {
         this.api.datacenter.Player.temporisInfos = new dofus.datacenter..TemporisInfos(_loc3_);
      }
      else
      {
         this.api.datacenter.Player.temporisInfos.initialize(true,_loc3_);
      }
   }
   function onTemporisConfig(sExtraData)
   {
      var _loc3_ = this.api.kernel.TemporisConfigManager;
      _loc3_.initialize();
      var _loc4_ = _loc2_.split("|");
      var _loc5_ = 0;
      while(_loc5_ < _loc4_.length)
      {
         var _loc6_ = _loc4_[_loc5_].split(";");
         var _loc7_ = _loc6_[0];
         var _loc8_ = _loc6_[1];
         var _loc9_ = Number(_loc8_);
         if(!_global.isNaN(_loc9_))
         {
            _loc3_.putIntegerValue(_loc7_,_loc9_);
         }
         _loc5_ = _loc5_ + 1;
      }
   }
}
