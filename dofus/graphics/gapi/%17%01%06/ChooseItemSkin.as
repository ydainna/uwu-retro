class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.ChooseItemSkin extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ChooseItemSkin";
   static var _nOriginalHat = 9234;
   static var _nOriginalCape = 9233;
   static var _nOriginalJewel = 9255;
   static var _nOriginalRing = 9256;
   function ChooseItemSkin()
   {
      super();
   }
   function §\x16\n§(§\x19\x13\x07§)
   {
      this["\x1e\x03\x18"] = _loc2_;
      return this["\x01\x07"]();
   }
   function §\b\x15§()
   {
      return this["\x1e\x05\t"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.ChooseItemSkin.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
   }
   function addListeners()
   {
      this._cgGrid.addEventListener("dblClickItem",this._parent);
      this._cgGrid.addEventListener("selectItem",this);
      this._cgGrid["\x19\x02\n"] = false;
   }
   function §\x18\t\x14§()
   {
      if(!this["\x1e\x03\x18"].hasUnknownSkinsCount)
      {
         var _loc2_ = this["\x1e\x03\x18"]["\x18\x19\x1c"];
      }
      else
      {
         var _loc3_ = this["\x1e\x03\x18"]["\x1a\n\x07"];
         var _loc4_ = _loc3_ != dofus.graphics.gapi.controls.ChooseItemSkin._nOriginalHat && (_loc3_ != dofus.graphics.gapi.controls.ChooseItemSkin._nOriginalCape && (_loc3_ != dofus.graphics.gapi.controls.ChooseItemSkin._nOriginalJewel && _loc3_ != dofus.graphics.gapi.controls.ChooseItemSkin._nOriginalRing));
         _loc2_ = !(_loc4_ && this["\x1e\x03\x18"]["\x17\x03\x18"] > 127) ? this["\x1e\x03\x18"]["\x18\x19\x1c"] : 10;
      }
      var _loc5_ = new ank.utils.ExtendedArray();
      var _loc6_ = 0;
      while(_loc6_ < _loc2_)
      {
         if(this["\x1e\x03\x18"]["\x18\f\x13"])
         {
            _loc5_.push(new dofus.datacenter.["\x18\x10\x15"](-1,this["\x1e\x03\x18"]["\x1a\n\x07"],1,0,"",0,_loc6_,1));
         }
         else
         {
            _loc5_.push(new dofus.datacenter.["\x18\x10\x15"](-1,this["\x1e\x03\x18"].unicID,1,0,"",0,_loc6_,1));
         }
         _loc6_ = _loc6_ + 1;
      }
      this._cgGrid.dataProvider = _loc5_;
   }
   function selectItem(oEvent)
   {
      this["\x1e\x05\t"] = _loc2_.target.contentData;
   }
}
