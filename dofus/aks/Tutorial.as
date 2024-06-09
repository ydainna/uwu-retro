class dofus.aks.Tutorial extends dofus.aks.Handler
{
   static var §\x18\f\b§ = dofus.Constants["\x16\x1b\f"] + "8.swf";
   static var §\x18\f\x06§ = 120;
   static var §\x18\f\t§ = "";
   static var §\x18\f\x07§ = 120;
   static var §\x19\x0b\t§ = 129;
   function Tutorial(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function end(§\x19\x03\x03§, §\x19\x04\x12§, §\x19\x06\x01§)
   {
      if(_loc2_ == undefined)
      {
         _loc2_ = 0;
      }
      if(_loc3_ == undefined || _loc4_ == undefined)
      {
         this.aks.send("TV" + String(_loc2_),false);
      }
      else
      {
         this.aks.send("TV" + String(_loc2_) + "|" + String(_loc3_) + "|" + String(_loc4_),false);
      }
   }
   function §\x19\x1c\x19§(sExtraData)
   {
      var _loc3_ = Number(_loc2_);
      this.api.kernel.TipsManager.showNewTip(_loc3_);
   }
   function §\x19\x16\x0b§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = _loc3_[0];
      var _loc5_ = _loc3_[1];
      var _loc6_ = this.api.config.language;
      this.api.kernel.TutorialServersManager["\x18\x16\x18"](_loc4_ + "_" + _loc5_);
   }
   function §\x19\x17\x1b§()
   {
      var _loc2_ = new ank.utils.["\x1a\x14\x02"]((!this.api.config.isStreaming ? dofus.aks.Tutorial["\x18\f\x06"] : dofus.aks.Tutorial["\x18\f\x07"]) * 1000);
      dofus.aks.Tutorial["\x18\f\t"] = dofus.Constants["\x16\x1b\f"] + "9_" + this.api.config.language + ".swf";
      _loc2_.addAction(118,false,this.api.sounds,this.api.sounds.stopAllSounds);
      if(!this.api.config.isStreaming)
      {
         _loc2_.addAction(119,true,this.api.ui,this.api.ui.loadUIComponent,["Cinematic","Cinematic",{file:(!this.api.config.isStreaming ? dofus.aks.Tutorial["\x18\f\b"] : dofus.aks.Tutorial["\x18\f\t"]),sequencer:_loc2_},{bUltimateOnTop:true}]);
      }
      _loc2_.addAction(120,false,this.api.ui,this.api.ui.loadUIComponent,["AskGameBegin","AskGameBegin",undefined,{bAlwaysOnTop:true}]);
      _loc2_.addAction(121,false,this.api.sounds,this.api.sounds["\x1a\x05\x1a"],[dofus.aks.Tutorial["\x19\x0b\t"],true]);
      this.addToQueue({object:_loc2_,method:_loc2_.execute,params:[true]});
   }
}
