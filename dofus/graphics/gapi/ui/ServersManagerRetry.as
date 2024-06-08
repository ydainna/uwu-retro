class dofus.§\x18\x03\x10§.gapi.ui.ServersManagerRetry extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ServersManagerRetry";
   var §\x1d\x1e\r§ = 0;
   function ServersManagerRetry()
   {
      super();
   }
   function §\x1e\n§(§\x19\x0f\x1a§)
   {
      this.addToQueue({object:this,method:function(§\x19\x03\x01§)
      {
         this["\x1d\x1e\r"] = Number(_loc2_);
         if(this["\x18\t\x1c"])
         {
            this["\x1b\x15\x0b"]();
         }
      },params:[_loc2_]});
      return this.timer;
   }
   function §\x1b\x15\x0b§()
   {
      var _loc2_ = this.api.lang.getText("SERVERS_MANAGER_RETRY",[this["\x1d\x1e\r"]]);
      this["\x1c\x16\x02"].text = _loc2_;
      this["\x1c\x16\x03"].text = _loc2_;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.ServersManagerRetry.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this["\x1b\x15\x0b"]});
   }
}
