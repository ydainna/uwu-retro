class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.StatsViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "StatsViewer";
   function StatsViewer()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.StatsViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
   }
   function initTexts()
   {
      this["\x1e\x10\t"].title = this.api.lang.getText("ADVANCED_STATS");
      this["\x1c\x0e\x15"]["\x16\x1d\x12"] = [this.api.lang.getText("STAT_WORD"),this.api.lang.getText("BASE_WORD"),this.api.lang.getText("STUFF_WORD"),this.api.lang.getText("FEATS"),this.api.lang.getText("BOOST"),this.api.lang.getText("TOTAL_WORD")];
   }
   function addListeners()
   {
      this.api.datacenter.Player.addEventListener("fullStatsChanged",this);
   }
   function initData()
   {
      var _loc2_ = this.api.datacenter.Player.FullStats;
      var _loc3_ = new ank.utils.ExtendedArray();
      for(var k in _loc2_)
      {
         _loc3_.push({isCat:true,name:this.api.lang.getText("FULL_STATS_CAT" + k)});
         var _loc4_ = new ank.utils.ExtendedArray();
         var _loc5_ = 0;
         while(_loc5_ < _loc2_[k].length)
         {
            _loc4_.push({name:this.api.lang.getText("FULL_STATS_ID" + _loc2_[k][_loc5_].id),s:_loc2_[k][_loc5_].s,i:_loc2_[k][_loc5_].i,d:_loc2_[k][_loc5_].d,b:_loc2_[k][_loc5_].b,o:Number(_loc2_[k][_loc5_].o),c:k,p:_loc2_[k][_loc5_].p});
            _loc5_ = _loc5_ + 1;
         }
         _loc4_.sortOn("o",Array.NUMERIC);
         var _loc6_ = _loc3_.concat(_loc4_);
         _loc3_ = new ank.utils.ExtendedArray();
         _loc3_.createFromArray(_loc6_);
      }
      this["\x1c\x0e\x15"].dataProvider = _loc3_;
   }
   function fullStatsChanged(oEvent)
   {
      new org.flashdevelop.utils.FlashConnect.trace("fullStatsChanged!","dofus.graphics.gapi.controls.StatsViewer::fullStatsChanged","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/graphics/gapi/controls/StatsViewer.as",103);
      this.initData();
   }
}
