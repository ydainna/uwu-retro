class dofus.graphics.gapi.ui.Buff extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Buff";
   static var §\x18\x12\x1b§ = 27;
   static var LAST_GLADIATROOL_CONTAINER = 74;
   function Buff()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Buff.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
   }
   function addListeners()
   {
      var _loc2_ = 20;
      while(_loc2_ <= dofus.graphics.gapi.ui.Buff["\x18\x12\x1b"])
      {
         var _loc3_ = this["_ctr" + _loc2_];
         _loc3_.addEventListener("click",this);
         _loc3_.addEventListener("over",this);
         _loc3_.addEventListener("out",this);
         _loc2_ = _loc2_ + 1;
      }
      var _loc4_ = 66;
      while(_loc4_ <= dofus.graphics.gapi.ui.Buff.LAST_GLADIATROOL_CONTAINER)
      {
         var _loc5_ = this["_ctr" + _loc4_];
         _loc5_.addEventListener("click",this);
         _loc5_.addEventListener("over",this);
         _loc5_.addEventListener("out",this);
         _loc4_ = _loc4_ + 1;
      }
      this.api.datacenter.Player.Inventory.addEventListener("modelChanged",this);
   }
   function §\x1b\x14\x14§()
   {
      var _loc2_ = new Array();
      var _loc3_ = 20;
      while(_loc3_ <= dofus.graphics.gapi.ui.Buff["\x18\x12\x1b"])
      {
         _loc2_[_loc3_] = true;
         _loc3_ = _loc3_ + 1;
      }
      var _loc4_ = 6;
      while(_loc4_ <= dofus.graphics.gapi.ui.Buff.LAST_GLADIATROOL_CONTAINER)
      {
         _loc2_[_loc4_] = true;
         _loc4_ = _loc4_ + 1;
      }
      var _loc5_ = this.api.datacenter.Player.Inventory;
      for(var k in _loc5_)
      {
         var _loc6_ = _loc5_[k];
         if(!_global.isNaN(_loc6_.position))
         {
            var _loc7_ = _loc6_.position;
            if(_loc7_ < 20 && (_loc7_ > dofus.graphics.gapi.ui.Buff["\x18\x12\x1b"] && (_loc7_ < dofus.graphics.gapi.ui.Buff.LAST_GLADIATROOL_CONTAINER && _loc7_ > dofus.graphics.gapi.ui.Buff.LAST_GLADIATROOL_CONTAINER)))
            {
               continue;
            }
            var _loc8_ = this["_ctr" + _loc7_];
            _loc8_.contentData = _loc6_;
            _loc8_.enabled = true;
            _loc2_[_loc7_] = false;
         }
      }
      var _loc9_ = 20;
      while(_loc9_ <= dofus.graphics.gapi.ui.Buff["\x18\x12\x1b"])
      {
         if(_loc2_[_loc9_])
         {
            var _loc10_ = this["_ctr" + _loc9_];
            _loc10_.contentData = undefined;
            _loc10_.enabled = false;
         }
         _loc9_ = _loc9_ + 1;
      }
      var _loc11_ = 66;
      while(_loc11_ <= dofus.graphics.gapi.ui.Buff.LAST_GLADIATROOL_CONTAINER)
      {
         if(_loc2_[_loc11_])
         {
            var _loc12_ = this["_ctr" + _loc11_];
            _loc12_.contentData = undefined;
            _loc12_.enabled = false;
         }
         _loc11_ = _loc11_ + 1;
      }
   }
   function modelChanged(oEvent)
   {
      switch(_loc2_.eventName)
      {
         case "updateOne":
         case "updateAll":
      }
      this["\x1b\x14\x14"]();
   }
   function click(oEvent)
   {
      this.gapi.loadUIComponent("BuffInfos","BuffInfos",{data:_loc2_.target.contentData},{bStayIfPresent:true});
   }
   function over(oEvent)
   {
      var _loc3_ = _loc2_.target.contentData;
      if(_loc3_ != undefined)
      {
         this.gapi.showTooltip(_loc3_.name + "\n",_loc2_.target,30);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
