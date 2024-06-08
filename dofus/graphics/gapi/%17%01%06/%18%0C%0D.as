class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.§\x18\f\r§ extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.InventoryViewer
{
   static var §\x17\x06\t§ = 3;
   static var §\x17\x10\x1a§ = 3;
   static var §\x17\x10\x14§ = [true,true,true,true,true,true,true,true,true,true,true,true,true,true,false,false,false,false,false,false,false,false,false,true,true,true];
   function §\x18\f\r§()
   {
      super();
   }
   function §\x1a\x16\x14§(§\x19\x07\x16§)
   {
      if(_loc3_ == this["\x1d\x14\x10"])
      {
         return undefined;
      }
      if(_loc3_ == dofus.graphics.gapi.controls["\x18\f\r"]["\x17\x10\x1a"])
      {
         this.click({target:this["\x1c\t\x1a"]});
         this["\x1c\t\x1a"].selected = true;
      }
      else
      {
         super["\x1a\x16\x14"](_loc3_);
      }
   }
   function createChildren()
   {
      super.createChildren();
   }
   function addListeners()
   {
      super.addListeners();
      this["\x1c\t\x1a"].addEventListener("click",this);
      this["\x1c\t\x1a"].addEventListener("over",this);
      this["\x1c\t\x1a"].addEventListener("out",this);
   }
   function §\x17\x16\r§()
   {
      return dofus.graphics.gapi.controls["\x18\f\r"]["\x17\x10\x1a"];
   }
   function §\x1a\x18\x19§()
   {
      this["\x1a\x16\x14"](this["\x17\x16\r"]());
   }
   function click(oEvent)
   {
      if(_loc3_.target == this["\x1c\t\x1a"])
      {
         if(_loc3_.target != this["\x1c\n\x18"])
         {
            this["\x1c\n\x18"].selected = false;
            this["\x1c\n\x18"] = _loc3_.target;
            this["\x1b\x1e\x19"] = dofus.graphics.gapi.controls["\x18\f\r"]["\x17\x10\x14"];
            this["\x1d\x14\x10"] = dofus.graphics.gapi.controls["\x18\f\r"]["\x17\x10\x1a"];
            this["\x1b\x14\x14"]();
         }
         else
         {
            _loc3_.target.selected = true;
         }
      }
      else
      {
         super.click(_loc3_);
      }
   }
   function over(oEvent)
   {
      if(_loc3_.target == this["\x1c\t\x1a"])
      {
         this.api.ui.showTooltip(this.api.lang.getText("ALL"),_loc3_.target,-20);
      }
      else
      {
         super.over(_loc3_);
      }
   }
}
