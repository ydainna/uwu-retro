class dofus.utils.consoleParsers.§\x15\x1b\x0b§
{
   function §\x15\x1b\x0b§()
   {
   }
   function §\x1e\x12\x05§()
   {
      return this["\x1e\x02\t"];
   }
   function §\x0e\x17§(§\x19\x11\x11§)
   {
      this["\x1e\x02\t"] = _loc2_;
      return this["\x1e\x12\x05"]();
   }
   function initialize(oAPI)
   {
      this["\x1e\x02\t"] = oAPI;
      this["\x1b\x1c\b"] = new Array();
      this["\x1d\x14\x06"] = 0;
   }
   function process(§\x1a\x10\x19§, oParams)
   {
      this["\x1a\b\x05"]({value:_loc2_,params:_loc3_});
   }
   function §\x1a\b\x05§(§\x19\x12\n§)
   {
      var _loc3_ = this["\x1b\x1c\b"].slice(-1);
      if(_loc3_[0].value != _loc2_.value)
      {
         var _loc4_ = this["\x1b\x1c\b"].push(_loc2_);
         if(_loc4_ > 50)
         {
            this["\x1b\x1c\b"].shift();
         }
      }
      this["\x18\n\x02"]();
   }
   function §\x17\x18\x16§()
   {
      if(this["\x1d\x14\x06"] > 0)
      {
         this["\x1d\x14\x06"]--;
      }
      var _loc2_ = this["\x1b\x1c\b"][this["\x1d\x14\x06"]];
      return _loc2_;
   }
   function §\x17\x18\x15§()
   {
      if(this["\x1d\x14\x06"] < this["\x1b\x1c\b"].length)
      {
         this["\x1d\x14\x06"]++;
      }
      var _loc2_ = this["\x1b\x1c\b"][this["\x1d\x14\x06"]];
      return _loc2_;
   }
   function §\x16\x07\x12§(§\x16\x03\x03§, §\x1a\x10\x19§)
   {
      return ank.utils.["\x16\x1e\x19"]["\x16\x07\x12"](_loc2_,_loc3_);
   }
   function doConsoleAutoComplete(§\x16\x04\x05§, sText)
   {
      var _loc4_ = _loc2_.kernel.Console["\x16\x07\x12"](_loc2_.datacenter.Basics.allowedAdminCommands,_loc3_);
      if(!_loc4_.isFull)
      {
         if(_loc4_.list == undefined || _loc4_.list.length == 0)
         {
            _loc2_.sounds["\x17\x0e\x06"]["\x19\x16\x1d"]();
         }
         else
         {
            _loc2_.ui.showTooltip(_loc4_.list.sort().join(", "),0,520);
         }
      }
      var _loc5_ = _loc4_.result + (!_loc4_.isFull ? "" : " ");
      var _loc6_ = dofus.graphics.gapi.ui.Debug(_loc2_.ui.getUIComponent("Debug"));
      if(_loc6_ != undefined)
      {
         _loc6_.tiCommandLine = _loc5_;
         _loc6_["\x1a\x05\x03"]();
      }
      _loc2_.electron.retroConsoleSetPromptText(_loc5_);
   }
   function §\x18\n\x02§()
   {
      this["\x1d\x14\x06"] = this["\x1b\x1c\b"].length;
   }
}
