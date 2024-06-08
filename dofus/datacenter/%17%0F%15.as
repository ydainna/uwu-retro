class dofus.§\x17\x04\x19§.§\x17\x0f\x15§ extends Object
{
   function §\x17\x0f\x15§(§\x18\b\f§, showTarget, targetId, basicXpBonus, teamXpBonus, basicDropBonus, teamDropBonus, state)
   {
      super();
      if(_global.isNaN(state))
      {
         this.state = 0;
      }
      else
      {
         this.state = state;
      }
      this.id = _loc3_;
      this["\x1b\x01\n"] = showTarget;
      this["\x1b\r\x1c"] = targetId;
      this["\x16\t\x07"] = basicXpBonus;
      this["\x1b\x0f\x04"] = teamXpBonus;
      this["\x16\t\x03"] = basicDropBonus;
      this["\x1b\x0f\x01"] = teamDropBonus;
      var _loc11_ = dofusutils.["\x16\x04\x06"](_global.api);
      var _loc12_ = _loc11_.datacenter.["\x1b\x07\x0e"].getItemAt(targetId).name + " (" + _loc11_.lang.getText("LEVEL_SMALL") + " " + _loc11_.datacenter.["\x1b\x07\x0e"].getItemAt(targetId).mc.data.Level + ")";
      this.description = _loc11_.lang["\x17\x17\x15"](_loc3_).d.split("%1").join(_loc12_);
      this["\x18\b\t"] = dofus.Constants["\x17\x10\x03"] + _loc11_.lang["\x17\x17\x15"](_loc3_).g + ".swf";
   }
   function §\x16\x1c\x1b§()
   {
      return new dofus.datacenter.["\x17\x0f\x15"](this.id,this["\x1b\x01\n"],this["\x1b\r\x1c"],this["\x16\t\x07"],this["\x1b\x0f\x04"],this["\x16\t\x03"],this["\x1b\x0f\x01"],this.state);
   }
}
