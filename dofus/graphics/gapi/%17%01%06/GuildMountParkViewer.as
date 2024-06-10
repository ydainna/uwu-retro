class dofus.graphics.gapi.§\x17\x01\x06§.GuildMountParkViewer extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "GuildMountParkViewer";
   function GuildMountParkViewer()
   {
      super();
   }
   function §\x18\x1a§(§\x17\x0b\t§)
   {
      this["\x1b\x14\x14"](_loc2_);
      return this["\x04\n"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.GuildMountParkViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
   }
   function initTexts()
   {
      this["\x1c\x0e\x10"]["\x16\x1d\x12"] = [this.api.lang.getText("MOUNT_PARK"),"Max.",this.api.lang.getText("MOUNTS")];
      this["\x1c\x16\x17"].text = this.api.lang.getText("GUILD_MOUNTPARKS_LIST");
   }
   function §\x1b\x14\x14§(§\x17\x0b\t§)
   {
      this["\x1c\x15\x1a"].text = this.api.lang.getText("GUILD_MOUNTPARKS_COUNT",[_loc2_.length,this.api.datacenter.Player.guildInfos["\x18\x19\x1a"]]);
      _loc2_.sortOn("size",Array.NUMERIC | Array.DESCENDING);
      this["\x1c\x0e\x10"].dataProvider = _loc2_;
   }
}
