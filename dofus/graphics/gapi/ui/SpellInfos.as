class dofus.§\x18\x03\x10§.gapi.ui.SpellInfos extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "SpellInfos";
   function SpellInfos()
   {
      super();
   }
   function §\x1d\r§(§\x1a\x02\x06§)
   {
      if(_loc2_ == this["\x1e\x05\x14"])
      {
         return undefined;
      }
      this.addToQueue({object:this,method:function(§\x1a\x0f\x06§)
      {
         this["\x1e\x05\x14"] = _loc2_;
         if(this["\x18\t\x1c"])
         {
            this.initData();
         }
      },params:[_loc2_]});
      return this["\t\x17"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.SpellInfos.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
   }
   function addListeners()
   {
      this["\x1c\x04\x12"].addEventListener("click",this);
      this._sfivSpellFullInfosViewer.addEventListener("close",this);
   }
   function initData()
   {
      if(this["\x1e\x05\x14"] != undefined)
      {
         this._sfivSpellFullInfosViewer.spell = this["\x1e\x05\x14"];
      }
   }
   function click(oEvent)
   {
      this["\x1b\x13\x13"]();
   }
   function close(oEvent)
   {
      this["\x1b\x13\x13"]();
   }
}
