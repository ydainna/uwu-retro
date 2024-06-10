class dofus.graphics.gapi.ui.MapInfos extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "MapInfos";
   function MapInfos()
   {
      super();
   }
   function §\x1b\x14\x01§()
   {
      this["\x18\n\x14"]();
      this._visible = true;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.MapInfos.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this["\x18\n\x14"]});
   }
   function §\x18\n\x14§()
   {
      var _loc2_ = this.api.datacenter.Map;
      if(_loc2_.name == undefined)
      {
         this["\x1c\x12\x15"].text = "";
         this["\x1c\x15\x12"].text = "";
         this["\x1c\x12\x19"].text = "";
         this["\x1c\x15\x13"].text = "";
      }
      else
      {
         var _loc3_ = dofus.datacenter.["\x1b\x0b\x18"](this.api.datacenter.Subareas.getItemAt(_loc2_["\x1b\x0b\x17"]));
         var _loc4_ = _loc2_.name + (_loc3_ != undefined ? (_loc3_.alignment.name != undefined ? " - " + _loc3_.alignment.name : "") : "");
         this["\x1c\x12\x15"].text = _loc4_;
         this["\x1c\x15\x12"].text = _loc2_.coordinates;
         this["\x1c\x12\x19"].text = _loc4_;
         this["\x1c\x15\x13"].text = _loc2_.coordinates;
      }
   }
}
