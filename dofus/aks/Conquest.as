class dofus.aks.Conquest extends dofus.aks.Handler
{
   function Conquest(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function §\x17\x13\x18§()
   {
      this.aks.send("CB",true);
   }
   function §\x1a\x07\x07§()
   {
      this.api.datacenter.Conquest.clear();
      this.aks.send("CIJ",true);
   }
   function §\x1a\x07\b§()
   {
      this.aks.send("CIV",false);
   }
   function §\x1a\x07\x05§()
   {
      this.aks.send("CFJ",true);
   }
   function §\x1a\x07\x06§()
   {
      this.aks.send("CFL",false);
   }
   function §\x1b\x19\x10§()
   {
      if(this.api.datacenter.Basics.isSubscribedConquestFeed)
      {
         return undefined;
      }
      this.aks.send("CWJ",false);
      this.api.datacenter.Basics.isSubscribedConquestFeed = true;
   }
   function §\x1b\x19\x11§()
   {
      if(!this.api.datacenter.Basics.isSubscribedConquestFeed)
      {
         return undefined;
      }
      this.aks.send("CWV",false);
      this.api.datacenter.Basics.isSubscribedConquestFeed = false;
   }
   function §\x1b\r\x02§(§\x18\b\f§)
   {
      this.aks.send("CFS" + _loc2_,true);
   }
   function §\x1a\r\x14§()
   {
      this.aks.send("Cb",true);
   }
   function §\x19\x14\x05§(sExtraData)
   {
      var _loc3_ = String(_loc2_).split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = Number(_loc3_[1]);
      var _loc6_ = this.api.lang["\x17\x1b\x06"](_loc4_).n;
      var _loc7_ = this.api.lang["\x17\x13\x19"](_loc5_).n;
      if(_loc5_ == -1)
      {
         this.api.kernel.showMessage(undefined,"<b>" + this.api.lang.getText("AREA_ALIGNMENT_PRISM_REMOVED",[_loc6_]) + "</b>","PVP_CHAT");
      }
      else
      {
         this.api.kernel.showMessage(undefined,"<b>" + this.api.lang.getText("AREA_ALIGNMENT_IS",[_loc6_,_loc7_]) + "</b>","PVP_CHAT");
      }
   }
   function §\x19\x15\x1c§(sExtraData)
   {
      var _loc3_ = _loc2_.split(";");
      var _loc4_ = String(_loc3_[0]).split(",");
      var _loc5_ = new dofus.datacenter.["\x16\x1e\x11"]();
      _loc5_.xp = Number(_loc4_[0]);
      _loc5_.drop = Number(_loc4_[1]);
      _loc5_["\x1a\n\f"] = Number(_loc4_[2]);
      _loc4_ = String(_loc3_[1]).split(",");
      var _loc6_ = new dofus.datacenter.["\x16\x1e\x11"]();
      _loc6_.xp = Number(_loc4_[0]);
      _loc6_.drop = Number(_loc4_[1]);
      _loc6_["\x1a\n\f"] = Number(_loc4_[2]);
      _loc4_ = String(_loc3_[2]).split(",");
      var _loc7_ = new dofus.datacenter.["\x16\x1e\x11"]();
      _loc7_.xp = Number(_loc4_[0]);
      _loc7_.drop = Number(_loc4_[1]);
      _loc7_["\x1a\n\f"] = Number(_loc4_[2]);
      this.api.datacenter.Conquest["\x16\x02\x19"] = _loc5_;
      this.api.datacenter.Conquest["\x1a\t\x18"] = _loc6_;
      this.api.datacenter.Conquest["\x16\x02\x1a"] = _loc7_;
   }
   function §\x19\x15\x1b§(sExtraData)
   {
      var _loc3_ = dofus.graphics.gapi.ui.Conquest(this.api.ui.getUIComponent("Conquest"));
      var _loc4_ = _loc2_.split(";");
      _loc3_["\x1a\x15\x02"](Number(_loc4_[0]),Number(_loc4_[1]));
   }
   function §\x19\x1e\x13§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = new dofus.datacenter.["\x16\x1e\x14"]();
      _loc4_["\x1a\x03\x04"] = Number(_loc3_[0]);
      _loc4_["\x1b\x11\x03"] = Number(_loc3_[1]);
      _loc4_["\x1a\x06\x13"] = Number(_loc3_[2]);
      var _loc5_ = _loc3_[3];
      var _loc6_ = _loc5_.split(";");
      _loc4_["\x16\x04\x1d"] = new ank.utils.ExtendedArray();
      for(var i in _loc6_)
      {
         var _loc7_ = String(_loc6_[i]).split(",");
         if(_loc7_.length >= 5)
         {
            var _loc8_ = new dofus.datacenter.["\x16\x1e\x15"](Number(_loc7_[0]),Number(_loc7_[1]),Number(_loc7_[2]) == 1,Number(_loc7_[3]),Number(_loc7_[4]) == 1);
            _loc4_["\x16\x04\x1d"].push(_loc8_);
         }
      }
      _loc4_["\x16\x04\x1d"].sortOn("areaName");
      _loc4_["\x1a\x03\x05"] = Number(_loc3_[4]);
      _loc4_["\x1b\x11\x06"] = Number(_loc3_[5]);
      var _loc9_ = _loc3_[6];
      var _loc10_ = _loc9_.split(";");
      _loc4_["\x1b\x17\x1a"] = new ank.utils.ExtendedArray();
      for(var i in _loc10_)
      {
         var _loc11_ = String(_loc10_[i]).split(",");
         if(_loc11_.length == 4)
         {
            var _loc12_ = new dofus.datacenter.["\x16\x1e\x13"](Number(_loc11_[0]),Number(_loc11_[1]),Number(_loc11_[2]) == 1,Number(_loc11_[3]) == 1);
            _loc4_["\x1b\x17\x1a"].push(_loc12_);
         }
      }
      _loc4_["\x1b\x17\x1a"].sortOn("areaName");
      this.api.datacenter.Conquest["\x1b\x19\x0f"] = _loc4_;
   }
   function §\x19\x1b\x0f§(sExtraData)
   {
      var _loc3_ = _loc2_.split(";");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = dofus.graphics.gapi.ui.Conquest(this.api.ui.getUIComponent("Conquest"));
      if(_loc4_ == 0)
      {
         var _loc6_ = Number(_loc3_[1]);
         var _loc7_ = Number(_loc3_[2]);
         var _loc8_ = Number(_loc3_[3]);
         var _loc9_ = new Object();
         _loc9_.error = 0;
         _loc9_.timer = _loc6_;
         _loc9_["\x18\x1a\x03"] = _loc7_;
         _loc9_["\x1b\x10\x06"] = 7656;
         _loc9_["\x18\x1a\x02"] = _loc8_;
         _loc5_["\x1a\x1c\t"](_loc9_);
      }
      else
      {
         var _loc10_ = new Object();
         switch(_loc4_)
         {
            case -1:
            case -2:
            case -3:
               _loc10_.error = _loc4_;
         }
         _loc5_["\x1a\x1c\t"](_loc10_);
      }
   }
   function §\x19\x1b\x0e§(sExtraData)
   {
      var _loc3_ = dofus.graphics.gapi.ui.Conquest(this.api.ui.getUIComponent("Conquest"));
      _loc3_["\x1a\x1c\t"]({noUnsubscribe:true});
      this.api.ui.unloadUIComponent("Conquest");
   }
   function §\x19\x1b\t§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = _loc3_[1];
      var _loc6_ = _loc3_[2];
      var _loc7_ = "[" + _loc5_ + ", " + _loc6_ + "]";
      var _loc8_ = Number(this.api.lang["\x17\x1b\x11"](_loc4_).sa);
      var _loc9_ = String(this.api.lang["\x17\x1b\x0f"](_loc8_).n).substr(0,2) != "//" ? this.api.lang["\x17\x1b\x0f"](_loc8_).n : String(this.api.lang["\x17\x1b\x0f"](_loc8_).n).substr(2);
      if(_loc8_ == this.api.datacenter.Basics.gfx_lastSubarea)
      {
         this.api.kernel.showMessage(undefined,this.api.electron.getCautionIcon() + this.api.lang.getText("PRISM_ATTACKED",[_loc9_,_loc7_]),"PVP_CHAT");
         this.api.sounds["\x17\x0e\x06"]["\x19\x1d\x16"]();
      }
      else
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("PRISM_ATTACKED",[_loc9_,_loc7_]),"PVP_CHAT");
      }
   }
   function §\x19\x1b\x11§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = _loc3_[1];
      var _loc6_ = _loc3_[2];
      var _loc7_ = "[" + _loc5_ + ", " + _loc6_ + "]";
      var _loc8_ = Number(this.api.lang["\x17\x1b\x11"](_loc4_).sa);
      var _loc9_ = String(this.api.lang["\x17\x1b\x0f"](_loc8_).n).substr(0,2) != "//" ? this.api.lang["\x17\x1b\x0f"](_loc8_).n : String(this.api.lang["\x17\x1b\x0f"](_loc8_).n).substr(2);
      this.api.kernel.showMessage(undefined,this.api.lang.getText("PRISM_ATTACKED_SUVIVED",[_loc9_,_loc7_]),"PVP_CHAT");
   }
   function §\x19\x1b\x0b§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = _loc3_[1];
      var _loc6_ = _loc3_[2];
      var _loc7_ = "[" + _loc5_ + ", " + _loc6_ + "]";
      var _loc8_ = Number(this.api.lang["\x17\x1b\x11"](_loc4_).sa);
      var _loc9_ = String(this.api.lang["\x17\x1b\x0f"](_loc8_).n).substr(0,2) != "//" ? this.api.lang["\x17\x1b\x0f"](_loc8_).n : String(this.api.lang["\x17\x1b\x0f"](_loc8_).n).substr(2);
      this.api.kernel.showMessage(undefined,this.api.lang.getText("PRISM_ATTACKED_DIED",[_loc9_,_loc7_]),"PVP_CHAT");
   }
   function §\x19\x1b\r§(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0) == "+";
      var _loc4_ = _loc2_.substr(1).split("|");
      var _loc5_ = _global.parseInt(_loc4_[0],36);
      var _loc6_ = 1;
      while(_loc6_ < _loc4_.length)
      {
         var _loc7_ = _loc4_[_loc6_].split(";");
         if(_loc3_)
         {
            var _loc8_ = new Object();
            _loc8_.id = _global.parseInt(_loc7_[0],36);
            _loc8_.name = _loc7_[1];
            _loc8_.gfxFile = dofus.Constants["\x16\x1c\x1a"] + _loc7_[2] + ".swf";
            _loc8_.level = Number(_loc7_[3]);
            _loc8_.color1 = _global.parseInt(_loc7_[4],36);
            _loc8_.color2 = _global.parseInt(_loc7_[5],36);
            _loc8_.color3 = _global.parseInt(_loc7_[6],36);
            _loc8_.reservist = _loc7_[7] == "1";
            var _loc9_ = this.api.datacenter.Conquest["\x1a\x05\x16"].findFirstItem("id",_loc8_.id);
            if(_loc9_.index != -1)
            {
               this.api.datacenter.Conquest["\x1a\x05\x16"]["\x1b\x15\x05"](_loc9_.index,_loc8_);
            }
            else
            {
               this.api.datacenter.Conquest["\x1a\x05\x16"].push(_loc8_);
            }
         }
         else
         {
            var _loc10_ = _global.parseInt(_loc7_[0],36);
            var _loc11_ = this.api.datacenter.Conquest["\x1a\x05\x16"].findFirstItem("id",_loc10_);
            if(_loc11_.index != -1)
            {
               this.api.datacenter.Conquest["\x1a\x05\x16"]["\x1a\f\x0b"](_loc11_.index,1);
            }
         }
         _loc6_ = _loc6_ + 1;
      }
   }
   function §\x19\x1b\f§(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0) == "+";
      var _loc4_ = _loc2_.substr(1).split("|");
      var _loc5_ = _global.parseInt(_loc4_[0],36);
      var _loc6_ = this.api.datacenter.Conquest["\x16\x06\x1b"];
      var _loc7_ = 1;
      while(_loc7_ < _loc4_.length)
      {
         var _loc8_ = _loc4_[_loc7_].split(";");
         if(_loc3_)
         {
            var _loc9_ = new Object();
            _loc9_.id = _global.parseInt(_loc8_[0],36);
            _loc9_.name = _loc8_[1];
            _loc9_.level = Number(_loc8_[2]);
            var _loc10_ = _loc6_.findFirstItem("id",_loc9_.id);
            if(_loc10_.index != -1)
            {
               _loc6_["\x1b\x15\x05"](_loc10_.index,_loc9_);
            }
            else
            {
               _loc6_.push(_loc9_);
            }
         }
         else
         {
            var _loc11_ = _global.parseInt(_loc8_[0],36);
            var _loc12_ = _loc6_.findFirstItem("id",_loc11_);
            if(_loc12_.index != -1)
            {
               _loc6_["\x1a\f\x0b"](_loc12_.index,1);
            }
         }
         _loc7_ = _loc7_ + 1;
      }
   }
}
