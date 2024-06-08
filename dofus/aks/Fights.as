class dofus.aks.Fights extends dofus.aks.Handler
{
   function Fights(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function §\x17\x1b\x01§()
   {
      this.aks.send("fL");
   }
   function §\x17\x16\x11§(§\x19\b\x0b§)
   {
      this.aks.send("fD" + _loc2_,false);
   }
   function §\x16\x0e\x10§()
   {
      this.aks.send("fS");
   }
   function §\x16\x0e\x0f§()
   {
      this.aks.send("fP");
   }
   function §\x16\x0e\x0e§()
   {
      this.aks.send("fN");
   }
   function §\x19\x06\r§()
   {
      this.aks.send("fH");
   }
   function onFightsOpenAndAutoSelect(§\x1a\x1b\r§)
   {
      var _loc3_ = Number(_loc2_);
      if(this.api.ui.getUIComponent("FightsInfos") == undefined)
      {
         this.api.ui.loadUIComponent("FightsInfos","FightsInfos",{autoSelectFightID:_loc3_},{bAlwaysOnTop:true});
      }
   }
   function §\x19\x16\x03§(§\x1a\x1b\r§)
   {
      var _loc3_ = Number(_loc2_);
      if(_global.isNaN(_loc3_) || (_loc2_.length == 0 || _loc3_ == 0))
      {
         this.api.ui.getUIComponent("Banner")["\x17\x0f\x1b"] = 0;
      }
      else if(_loc3_ < 0)
      {
         if(this.api.ui.getUIComponent("Banner")["\x17\x0f\x1b"] >= _loc3_)
         {
            this.api.ui.getUIComponent("Banner")["\x17\x0f\x1b"] = this.api.ui.getUIComponent("Banner")["\x17\x0f\x1b"] + _loc3_;
         }
      }
      else
      {
         this.api.ui.getUIComponent("Banner")["\x17\x0f\x1b"] = _loc3_;
      }
   }
   function §\x19\x19\x1c§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = new Array();
      var _loc5_ = 0;
      while(_loc5_ < _loc3_.length)
      {
         if(String(_loc3_[_loc5_]).length != 0)
         {
            var _loc6_ = _loc3_[_loc5_].split(";");
            var _loc7_ = Number(_loc6_[0]);
            var _loc8_ = Number(_loc6_[1]);
            var _loc9_ = _loc8_ != -1 ? this.api.kernel["\x19\b\x11"]["\x17\x16\x14"](_loc8_) : -1;
            var _loc10_ = new dofus.datacenter.["\x17\x0f\x16"](_loc7_,_loc9_);
            var _loc11_ = String(_loc6_[2]).split(",");
            var _loc12_ = Number(_loc11_[0]);
            var _loc13_ = Number(_loc11_[1]);
            var _loc14_ = Number(_loc11_[2]);
            _loc10_["\x15\x1e\x1d"](1,_loc12_,_loc13_,_loc14_);
            var _loc15_ = String(_loc6_[3]).split(",");
            var _loc16_ = Number(_loc15_[0]);
            var _loc17_ = Number(_loc15_[1]);
            var _loc18_ = Number(_loc15_[2]);
            _loc10_["\x15\x1e\x1d"](2,_loc16_,_loc17_,_loc18_);
            _loc4_.push(_loc10_);
         }
         _loc5_ = _loc5_ + 1;
      }
      var _loc19_ = dofus.graphics.gapi.ui.FightsInfos(this.api.ui.getUIComponent("FightsInfos"));
      if(_loc19_ == undefined)
      {
         return undefined;
      }
      var _loc20_ = _loc19_["\x17\x0f\x19"];
      if(_loc20_ != null)
      {
         _loc20_.splice(0,_loc20_.length);
         _loc20_["\x1a\r\x0b"](0,_loc4_);
      }
      _loc19_.doAutoSelectFightIDRow();
   }
   function §\x19\x16\x11§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = new ank.utils.ExtendedArray();
      var _loc6_ = _loc3_[1].split(";");
      var _loc7_ = 0;
      while(_loc7_ < _loc6_.length)
      {
         if(_loc6_[_loc7_] != "")
         {
            var _loc8_ = _loc6_[_loc7_].split("~");
            var _loc9_ = this.api.kernel["\x16\x19\t"]["\x17\x1c\x0f"](_loc8_[0]);
            var _loc10_ = Number(_loc8_[1]);
            var _loc11_ = _loc8_[2];
            _loc5_.push({name:_loc9_.name,level:_loc10_,type:_loc9_.type,id:_loc11_});
         }
         _loc7_ = _loc7_ + 1;
      }
      var _loc12_ = new ank.utils.ExtendedArray();
      var _loc13_ = _loc3_[2].split(";");
      var _loc14_ = 0;
      while(_loc14_ < _loc13_.length)
      {
         if(_loc13_[_loc14_] != "")
         {
            var _loc15_ = _loc13_[_loc14_].split("~");
            var _loc16_ = this.api.kernel["\x16\x19\t"]["\x17\x1c\x0f"](_loc15_[0]);
            var _loc17_ = Number(_loc15_[1]);
            var _loc18_ = _loc15_[2];
            _loc12_.push({name:_loc16_.name,level:_loc17_,type:_loc16_.type,id:_loc18_});
         }
         _loc14_ = _loc14_ + 1;
      }
      this.api.ui.getUIComponent("FightsInfos")["\x15\x1d\x0e"](_loc4_,_loc5_,_loc12_);
   }
}
