class dofus.aks.Guild extends dofus.aks.Handler
{
   function Guild(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function §\x17\x02\x04§(§\x19\x03\x1a§, §\x19\x03\x16§, §\x19\x0f\n§, §\x19\x0f\t§, sName)
   {
      this.aks.send("gC" + _loc2_ + "|" + _loc3_ + "|" + _loc4_ + "|" + _loc5_ + "|" + _loc6_);
   }
   function §\x18\x13\x1d§()
   {
      this.aks.send("gV");
   }
   function §\x18\x14\x02§()
   {
      this.aks.send("gITV",false);
   }
   function §\x18\f\x0f§(§\x1b\x06\x1b§)
   {
      this.aks.send("gJR" + _loc2_);
   }
   function §\x15\x1b\x11§(§\x19\f\b§)
   {
      this.aks.send("gJK" + _loc2_);
   }
   function §\x1a\x0b\r§(§\x19\f\b§)
   {
      this.aks.send("gJE" + _loc2_,false);
   }
   function §\x17\x19\x04§()
   {
      this.aks.send("gIG",true);
   }
   function §\x17\x19\x06§()
   {
      this.aks.send("gIM",true);
   }
   function getInformationsGuild()
   {
      this.aks.send("gII",true);
   }
   function §\x17\x19\x03§()
   {
      this.aks.send("gIB",true);
   }
   function §\x17\x19\b§()
   {
      this.aks.send("gIT",false);
   }
   function §\x17\x19\x07§()
   {
      this.aks.send("gIF",false);
   }
   function §\x17\x19\x05§()
   {
      this.aks.send("gIH",false);
   }
   function §\x16\b\x19§(§\x1b\x06\x1b§)
   {
      this.aks.send("gK" + _loc2_);
   }
   function §\x16\x18\x1a§(§\x19\x13\x11§)
   {
      this.aks.send("gP" + _loc2_.id + "|" + _loc2_.rank + "|" + _loc2_.percentxp + "|" + _loc2_["\x1a\x0e\x13"].value,true);
   }
   function §\x16\x10\x04§(§\x1a\x10\x13§)
   {
      var _loc3_ = _loc2_;
      switch(_loc3_)
      {
         case "c":
            _loc3_ = "k";
            break;
         case "w":
            _loc3_ = "o";
      }
      this.aks.send("gB" + _loc3_,true);
   }
   function §\x16\x10\x06§(§\x19\x0e\x17§)
   {
      this.aks.send("gb" + _loc2_,true);
   }
   function §\x18\x07\t§()
   {
      this.aks.send("gH");
   }
   function §\x18\x11\x14§(§\x19\x0f\x12§, nDefenderID)
   {
      this.aks.send("gTJ" + _loc2_ + "|" + nDefenderID,false);
   }
   function §\x18\x14\x01§(§\x19\x0f\x12§, §\x19\b\x0b§)
   {
      this.aks.send("gTV" + _loc2_ + (_loc3_ == undefined ? "" : "|" + _loc3_),false);
   }
   function §\x1a\r\x02§(§\x19\b\x0b§)
   {
      this.aks.send("gF" + _loc2_,false);
   }
   function §\x1b\x0f\x07§(§\x19\b\x06§, nInstanceID)
   {
      this.aks.send("gh" + _loc2_ + "|" + nInstanceID,false);
   }
   function §\x1b\x0f\x06§(§\x19\b\x0b§)
   {
      this.aks.send("gf" + _loc2_,false);
   }
   function editNote(sNote)
   {
      this.aks.send("gEN" + sNote,false,undefined,true);
   }
   function editInfos(sInfos)
   {
      this.aks.send("gEI" + sInfos,false,undefined,true);
   }
   function editRankName(sRanks)
   {
      this.aks.send("gER" + sRanks,false);
   }
   function §\x19\x1a\x11§()
   {
      this.api.ui.loadUIComponent("CreateGuild","CreateGuild");
   }
   function §\x19\x16\x0b§(bSuccess, sExtraData)
   {
      if(_loc2_)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("GUILD_CREATED"),"INFO_CHAT");
         this.api.ui["\x18\x16\x19"]("Guild","Guild",{currentTab:"Members"},{bStayIfPresent:true});
      }
      else
      {
         switch(_loc3_)
         {
            case "an":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("GUILD_CREATE_ALLREADY_USE_NAME"),"ERROR_BOX");
               break;
            case "ae":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("GUILD_CREATE_ALLREADY_USE_EMBLEM"),"ERROR_BOX");
               break;
            case "a":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("GUILD_CREATE_ALLREADY_IN_GUILD"),"ERROR_BOX");
         }
         this.api.ui.getUIComponent("CreateGuild").enabled = true;
      }
   }
   function §\x19\x1d\x0b§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = _loc3_[0];
      var _loc5_ = _global.parseInt(_loc3_[1],36);
      var _loc6_ = _global.parseInt(_loc3_[2],36);
      var _loc7_ = _global.parseInt(_loc3_[3],36);
      var _loc8_ = _global.parseInt(_loc3_[4],36);
      var _loc9_ = _global.parseInt(_loc3_[5],36);
      if(this.api.datacenter.Player.guildInfos == undefined)
      {
         this.api.datacenter.Player.guildInfos = new dofus.datacenter.["\x18\x04\x04"](_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
      }
      else
      {
         this.api.datacenter.Player.guildInfos.initialize(true,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
      }
   }
   function §\x19\x18\x17§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = _loc3_[0] == "1";
      var _loc5_ = Number(_loc3_[1]);
      var _loc6_ = Number(_loc3_[2]);
      var _loc7_ = Number(_loc3_[3]);
      var _loc8_ = Number(_loc3_[4]);
      this.api.datacenter.Player.guildInfos["\x1a\x16\x1b"](_loc4_,_loc5_,_loc6_,_loc7_,_loc8_);
      var _loc9_ = Number(_loc3_[5]);
      var _loc10_ = _loc3_[6];
      var _loc11_ = _loc3_[7];
      this.api.datacenter.Player.guildInfos.setNote(_loc11_,_loc10_,_loc9_);
   }
   function §\x19\x18\x19§(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0) == "+";
      var _loc4_ = _loc2_.substr(1).split("|");
      var _loc5_ = this.api.datacenter.Player.guildInfos;
      var _loc6_ = 0;
      while(_loc6_ < _loc4_.length)
      {
         var _loc7_ = _loc4_[_loc6_].split(";");
         var _loc8_ = new Object();
         _loc8_.id = Number(_loc7_[0]);
         if(_loc3_)
         {
            var _loc9_ = _loc5_.members.length == 0;
            _loc8_.name = _loc7_[1];
            _loc8_.level = Number(_loc7_[2]);
            _loc8_.gfx = Number(_loc7_[3]);
            _loc8_.rank = Number(_loc7_[4]);
            _loc8_.rankOrder = this.api.lang["\x17\x1d\x18"](_loc8_.rank).o;
            _loc8_.winxp = Number(_loc7_[5]);
            _loc8_.percentxp = Number(_loc7_[6]);
            _loc8_["\x1a\x0e\x13"] = new dofus.datacenter.["\x18\x04\n"](Number(_loc7_[7]));
            _loc8_.state = Number(_loc7_[8]);
            _loc8_.alignement = Number(_loc7_[9]);
            _loc8_.lastConnection = Number(_loc7_[10]);
            _loc8_.hasTtgCollection = _loc7_[11] == "1";
            _loc8_["\x18\x0e\x14"] = _loc8_.id == this.api.datacenter.Player.ID;
            var _loc10_ = _loc7_[12].split(",");
            var _loc11_ = _loc7_[13];
            _loc8_.color1 = _loc10_[0];
            _loc8_.color2 = _loc10_[1];
            _loc8_.color3 = _loc10_[2];
            this.api.kernel.CharactersManager["\x1a\x1a\x01"](_loc8_,_loc11_);
            if(_loc9_)
            {
               _loc5_.members.push(_loc8_);
            }
            else
            {
               var _loc12_ = _loc5_.members.findFirstItem("id",_loc8_.id);
               if(_loc12_.index != -1)
               {
                  _loc5_.members["\x1b\x15\x05"](_loc12_.index,_loc8_);
               }
               else
               {
                  _loc5_.members.push(_loc8_);
               }
            }
            _loc5_.members.sortOn("rankOrder",Array.NUMERIC);
         }
         else
         {
            var _loc13_ = _loc5_.members.findFirstItem("id",_loc8_.id);
            if(_loc13_.index != -1)
            {
               _loc5_.members["\x1a\f\x0b"](_loc13_.index,1);
            }
         }
         _loc6_ = _loc6_ + 1;
      }
      _loc5_["\x1a\x17\x1a"]();
   }
   function §\x19\x18\x16§(sExtraData)
   {
      if(_loc2_.length == 0)
      {
         this.api.datacenter.Player.guildInfos["\x1a\x18\b"]();
      }
      else
      {
         var _loc3_ = _loc2_.split("|");
         var _loc4_ = Number(_loc3_[0]);
         var _loc5_ = Number(_loc3_[1]);
         var _loc6_ = Number(_loc3_[2]);
         var _loc7_ = Number(_loc3_[3]);
         var _loc8_ = Number(_loc3_[4]);
         var _loc9_ = Number(_loc3_[5]);
         var _loc10_ = Number(_loc3_[6]);
         _loc3_.splice(0,7);
         var _loc11_ = 0;
         while(_loc11_ < _loc3_.length)
         {
            _loc3_[_loc11_] = _loc3_[_loc11_].split(";");
            _loc11_ = _loc11_ + 1;
         }
         _loc3_.sortOn("0");
         var _loc12_ = new ank.utils.ExtendedArray();
         var _loc13_ = 0;
         while(_loc13_ < _loc3_.length)
         {
            var _loc14_ = Number(_loc3_[_loc13_][0]);
            var _loc15_ = Number(_loc3_[_loc13_][1]);
            _loc12_.push(new dofus.datacenter.["\x1b\x06\x06"](_loc14_,_loc15_));
            _loc13_ = _loc13_ + 1;
         }
         this.api.datacenter.Player.guildInfos["\x1a\x15\x03"](_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc12_);
      }
   }
   function §\x19\x18\x1a§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = new ank.utils.ExtendedArray();
      var _loc6_ = 1;
      while(_loc6_ < _loc3_.length)
      {
         var _loc7_ = _loc3_[_loc6_].split(";");
         var _loc8_ = Number(_loc7_[0]);
         var _loc9_ = Number(_loc7_[1]);
         var _loc10_ = _loc7_[2].split(",");
         var _loc11_ = Number(_loc10_[0]);
         var _loc12_ = Number(_loc10_[1]);
         var _loc13_ = new dofus.datacenter.["\x18\x1e\t"](0,-1,_loc9_,_loc11_,_loc12_,this.api.datacenter.Player.guildInfos.name,undefined,_loc8_);
         _loc13_.mounts = new ank.utils.ExtendedArray();
         if(_loc7_[3] != "")
         {
            var _loc14_ = _loc7_[3].split(",");
            var _loc15_ = 0;
            while(_loc15_ < _loc14_.length)
            {
               var _loc16_ = new dofus.datacenter..Mount(Number(_loc14_[_loc15_]));
               _loc16_.name = _loc14_[_loc15_ + 1] != "" ? _loc14_[_loc15_ + 1] : this.api.lang.getText("NO_NAME");
               _loc16_["\x1a\x03\x06"] = _loc14_[_loc15_ + 2];
               _loc16_["\x1a\x1b\f"] = Number(_loc14_[_loc15_ + 3]);
               _loc13_.mounts.push(_loc16_);
               _loc15_ += 4;
            }
         }
         _loc13_.sortArea = _loc13_.areaName + _loc13_.subareaName;
         _loc13_.minMax = _loc13_.size;
         _loc13_.sortMounts = _loc13_.mounts.length;
         _loc5_.push(_loc13_);
         _loc6_ = _loc6_ + 1;
      }
      this.api.datacenter.Player.guildInfos["\x1a\x18\x01"](_loc4_,_loc5_);
   }
   function §\x19\x18\x1c§(sExtraData)
   {
      if(_loc2_.length == 0)
      {
         this.api.datacenter.Player.guildInfos["\x1a\x18\n"]();
      }
      else
      {
         var _loc3_ = _loc2_.charAt(0) == "+";
         var _loc4_ = _loc2_.substr(1).split("|");
         var _loc5_ = this.api.datacenter.Player.guildInfos;
         var _loc6_ = _loc4_[0].split(";");
         _loc5_["\x1b\x0e\t"] = Number(_loc6_[0]);
         _loc5_["\x1b\x0e\n"] = Number(_loc6_[1]);
         _loc5_["\x1b\x0e\x05"] = Number(_loc6_[2]);
         var _loc7_ = 1;
         while(_loc7_ < _loc4_.length)
         {
            var _loc8_ = _loc4_[_loc7_].split(";");
            if(_loc8_.length < 2)
            {
               break;
            }
            var _loc9_ = new Object();
            _loc9_.id = _global.parseInt(_loc8_[0],36);
            if(_loc3_)
            {
               var _loc10_ = _loc5_["\x1b\x0e\x06"].length == 0;
               var _loc11_ = _global.parseInt(_loc8_[2],36);
               var _loc12_ = this.api.lang["\x17\x1b\x11"](_loc11_);
               var _loc13_ = this.api.lang["\x17\x1b\x04"](_loc12_.sa);
               var _loc14_ = _loc12_.x + ", " + _loc12_.y;
               var _loc15_ = this.api.lang["\x17\x1b\x06"](_loc13_.areaID).n;
               var _loc16_ = this.api.lang["\x17\x1b\x0f"](_loc12_.sa).n.substr(0,2) != "//" ? this.api.lang["\x17\x1b\x0f"](_loc12_.sa).n : String(this.api.lang["\x17\x1b\x0f"](_loc12_.sa).n).substr(2);
               if(dofus.Constants.DEBUG)
               {
                  _loc16_ += " (" + _loc11_ + ")";
               }
               _loc9_.name = this.api.lang["\x17\x18\x05"](_loc8_[1].split(","));
               _loc9_.mapID = _loc11_;
               _loc9_.areaName = _loc15_;
               _loc9_.subareaName = _loc16_;
               _loc9_.coordinates = _loc14_;
               _loc9_.state = Number(_loc8_[3]);
               _loc9_.timer = Number(_loc8_[4]);
               _loc9_["\x18\x1a\x03"] = Number(_loc8_[5]);
               _loc9_["\x1b\x10\x06"] = 3922;
               _loc9_.maxPlayerCount = Number(_loc8_[6]);
               var _loc17_ = _loc8_[1].split(",");
               if(_loc17_.length != 2)
               {
                  _loc9_.showMoreInfo = true;
                  _loc9_.callerName = _loc17_[2] != "" ? _loc17_[2] : "?";
                  _loc9_.startDate = _global.parseInt(_loc17_[3],10);
                  _loc9_.lastHarvesterName = _loc17_[4] != "" ? _loc17_[4] : "?";
                  _loc9_.lastHarvestDate = _global.parseInt(_loc17_[5],10);
                  _loc9_.nextHarvestDate = _global.parseInt(_loc17_[6],10);
                  _loc9_["\x18\x0e\x1c"] = _loc17_[7] == this.api.datacenter.Player.ID;
               }
               else
               {
                  _loc9_.showMoreInfo = false;
                  _loc9_.callerName = "?";
                  _loc9_.startDate = -1;
                  _loc9_.lastHarvesterName = "?";
                  _loc9_.lastHarvestDate = -1;
                  _loc9_.nextHarvestDate = -1;
                  _loc9_["\x18\x0e\x1c"] = false;
               }
               _loc9_.sortArea = _loc15_ + _loc16_;
               _loc9_.sortState = _loc9_.state + _loc9_["\x18\x0e\x1c"];
               _loc9_["\x1a\x05\x16"] = new ank.utils.ExtendedArray();
               _loc9_["\x16\x06\x1b"] = new ank.utils.ExtendedArray();
               if(_loc10_)
               {
                  _loc5_["\x1b\x0e\x06"].push(_loc9_);
               }
               else
               {
                  var _loc18_ = _loc5_["\x1b\x0e\x06"].findFirstItem("id",_loc9_.id);
                  if(_loc18_.index != -1)
                  {
                     _loc5_["\x1b\x0e\x06"]["\x1b\x15\x05"](_loc18_.index,_loc9_);
                  }
                  else
                  {
                     _loc5_["\x1b\x0e\x06"].push(_loc9_);
                  }
               }
            }
            else
            {
               var _loc19_ = _loc5_["\x1b\x0e\x06"].findFirstItem("id",_loc9_.id);
               if(_loc19_.index != -1)
               {
                  _loc5_["\x1b\x0e\x06"]["\x1a\f\x0b"](_loc19_.index,1);
               }
            }
            _loc7_ = _loc7_ + 1;
         }
         _loc5_["\x1a\x1a\x12"]();
      }
   }
   function §\x19\x18\x1d§(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0) == "+";
      var _loc4_ = _loc2_.substr(1).split("|");
      var _loc5_ = _global.parseInt(_loc4_[0],36);
      var _loc6_ = this.api.datacenter.Player.guildInfos["\x1b\x0e\x06"];
      var _loc7_ = _loc6_.findFirstItem("id",_loc5_);
      if(_loc7_.index != -1)
      {
         var _loc8_ = _loc7_.item;
         var _loc9_ = 1;
         while(_loc9_ < _loc4_.length)
         {
            var _loc10_ = _loc4_[_loc9_].split(";");
            if(_loc3_)
            {
               var _loc11_ = new Object();
               _loc11_.id = _global.parseInt(_loc10_[0],36);
               _loc11_.name = _loc10_[1];
               _loc11_.gfxFile = dofus.Constants["\x16\x1c\x1a"] + _loc10_[2] + ".swf";
               _loc11_.level = Number(_loc10_[3]);
               _loc11_.color1 = _global.parseInt(_loc10_[4],36);
               _loc11_.color2 = _global.parseInt(_loc10_[5],36);
               _loc11_.color3 = _global.parseInt(_loc10_[6],36);
               _loc11_.prio = !!Number(_loc10_[7]);
               var _loc12_ = _loc8_["\x1a\x05\x16"].findFirstItem("id",_loc11_.id);
               if(_loc12_.index != -1)
               {
                  _loc8_["\x1a\x05\x16"]["\x1b\x15\x05"](_loc12_.index,_loc11_);
               }
               else
               {
                  _loc8_["\x1a\x05\x16"].push(_loc11_);
               }
               if(_loc11_.id == this.api.datacenter.Player.ID)
               {
                  this.api.datacenter.Player.guildInfos["\x17\x06\x11"] = _loc5_;
               }
            }
            else
            {
               var _loc13_ = _global.parseInt(_loc10_[0],36);
               var _loc14_ = _loc8_["\x1a\x05\x16"].findFirstItem("id",_loc13_);
               if(_loc14_.index != -1)
               {
                  _loc8_["\x1a\x05\x16"]["\x1a\f\x0b"](_loc14_.index,1);
               }
               if(_loc13_ == this.api.datacenter.Player.ID)
               {
                  this.api.datacenter.Player.guildInfos["\x17\x06\x11"] = undefined;
               }
            }
            _loc9_ = _loc9_ + 1;
         }
      }
      else
      {
         ank.utils.Logger.err("[gITP] impossible de trouver le percepteur");
      }
   }
   function §\x19\x18\x1b§(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0) == "+";
      var _loc4_ = _loc2_.substr(1).split("|");
      var _loc5_ = _global.parseInt(_loc4_[0],36);
      var _loc6_ = this.api.datacenter.Player.guildInfos["\x1b\x0e\x06"];
      var _loc7_ = _loc6_.findFirstItem("id",_loc5_);
      if(_loc7_.index != -1)
      {
         var _loc8_ = _loc7_.item;
         var _loc9_ = 1;
         while(_loc9_ < _loc4_.length)
         {
            var _loc10_ = _loc4_[_loc9_].split(";");
            if(_loc3_)
            {
               var _loc11_ = new Object();
               _loc11_.id = _global.parseInt(_loc10_[0],36);
               _loc11_.name = _loc10_[1];
               _loc11_.level = Number(_loc10_[2]);
               var _loc12_ = _loc8_["\x16\x06\x1b"].findFirstItem("id",_loc11_.id);
               if(_loc12_.index != -1)
               {
                  _loc8_["\x16\x06\x1b"]["\x1b\x15\x05"](_loc12_.index,_loc11_);
               }
               else
               {
                  _loc8_["\x16\x06\x1b"].push(_loc11_);
               }
            }
            else
            {
               var _loc13_ = _global.parseInt(_loc10_[0],36);
               var _loc14_ = _loc8_["\x16\x06\x1b"].findFirstItem("id",_loc13_);
               if(_loc14_.index != -1)
               {
                  _loc8_["\x16\x06\x1b"]["\x1a\f\x0b"](_loc14_.index,1);
               }
            }
            _loc9_ = _loc9_ + 1;
         }
      }
      else
      {
         ank.utils.Logger.err("[gITp] impossible de trouver le percepteur");
      }
   }
   function §\x19\x18\x18§(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0) == "+";
      if(_loc2_.length <= 1)
      {
         this.api.datacenter.Player.guildInfos["\x1a\x18\t"]();
      }
      else
      {
         var _loc4_ = _loc2_.substr(1).split("|");
         var _loc5_ = new ank.utils.ExtendedArray();
         var _loc6_ = 0;
         while(_loc6_ < _loc4_.length)
         {
            var _loc7_ = _loc4_[_loc6_].split(";");
            var _loc8_ = Number(_loc7_[0]);
            var _loc9_ = Number(_loc7_[1]);
            var _loc10_ = _loc7_[2];
            var _loc11_ = _loc7_[3].split(",");
            var _loc12_ = new com.ankamagames.types["\x1a\x06\x02"](Number(_loc11_[0]),Number(_loc11_[1]));
            var _loc13_ = new Array();
            var _loc14_ = _loc7_[4].split(",");
            var _loc15_ = 0;
            while(_loc15_ < _loc14_.length)
            {
               _loc13_.push(Number(_loc14_[_loc15_]));
               _loc15_ = _loc15_ + 1;
            }
            var _loc16_ = _loc7_[5];
            var _loc17_ = this.api.kernel.HouseManager.getHouseByInstance(_loc8_,_loc9_);
            _loc17_["\x1a\x03\x06"] = _loc10_;
            _loc17_["\x17\x01\r"] = _loc12_;
            _loc17_.skills = _loc13_;
            _loc17_["\x18\x04\t"] = _loc16_;
            _loc5_.push(_loc17_);
            _loc6_ = _loc6_ + 1;
         }
         this.api.datacenter.Player.guildInfos["\x1a\x17\x05"](_loc5_);
      }
   }
   function onInfos(sData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = Number(_loc3_[0]);
      var _loc5_ = _loc3_[1];
      var _loc6_ = _loc3_[2];
      this.api.datacenter.Player.guildInfos.setInformations(_loc6_,_loc5_,_loc4_);
   }
   function §\x19\x1c\x06§(sExtraData)
   {
      this.api.kernel.showMessage(this.api.lang.getText("GUILD"),this.api.lang.getText("YOU_INVIT_B_IN_GUILD",[_loc2_]),"INFO_CANCEL",{name:"Guild",listener:this,params:{spriteID:this.api.datacenter.Player.ID}});
   }
   function §\x19\x1c\x05§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = _loc3_[0];
      var _loc5_ = _loc3_[1];
      var _loc6_ = _loc3_[2];
      if(this.api.kernel.ChatManager["\x18\f\x16"](_loc5_))
      {
         this["\x1a\x0b\r"](Number(_loc4_));
         return undefined;
      }
      this.api.electron.makeNotification(this.api.lang.getText("A_INVIT_YOU_IN_GUILD",[_loc5_,_loc6_]));
      this.api.kernel.showMessage(undefined,this.api.lang.getText("CHAT_A_INVIT_YOU_IN_GUILD",[this.api.kernel.ChatManager["\x17\x1a\x1d"](_loc4_,_loc5_),_loc6_]),"INFO_CHAT");
      this.api.kernel.showMessage(this.api.lang.getText("GUILD"),this.api.lang.getText("A_INVIT_YOU_IN_GUILD",[_loc5_,_loc6_]),"CAUTION_YESNOIGNORE",{name:"Guild",player:_loc5_,listener:this,params:{spriteID:_loc4_,player:_loc5_}});
   }
   function §\x19\x19\x10§(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0);
      switch(_loc3_)
      {
         case "a":
            this.api.kernel.showMessage(undefined,this.api.lang.getText("GUILD_JOIN_ALREADY_IN_GUILD"),"ERROR_CHAT");
            break;
         case "d":
            this.api.kernel.showMessage(undefined,this.api.lang.getText("GUILD_JOIN_NO_RIGHTS"),"ERROR_CHAT");
            break;
         case "u":
            this.api.kernel.showMessage(undefined,this.api.lang.getText("GUILD_JOIN_UNKNOW"),"ERROR_CHAT");
            break;
         case "o":
            this.api.kernel.showMessage(undefined,this.api.lang.getText("GUILD_JOIN_OCCUPED"),"ERROR_CHAT");
            break;
         case "r":
            var _loc4_ = _loc2_.substr(1);
            this.api.kernel.showMessage(undefined,this.api.lang.getText("GUILD_JOIN_REFUSED",[_loc4_]),"ERROR_CHAT");
            this.api.ui.unloadUIComponent("AskCancelGuild");
            break;
         case "c":
            this.api.ui.unloadUIComponent("AskCancelGuild");
            this.api.ui.unloadUIComponent("AskYesNoIgnoreGuild");
      }
   }
   function §\x19\x19\x11§(sExtraData)
   {
      var _loc3_ = _loc2_.charAt(0);
      switch(_loc3_)
      {
         case "a":
            this.api.ui.unloadUIComponent("AskCancelGuild");
            this.api.kernel.showMessage(undefined,this.api.lang.getText("A_JOIN_YOUR_GUILD",[_loc2_.substr(1)]),"INFO_CHAT");
            break;
         case "j":
            this.api.kernel.showMessage(undefined,this.api.lang.getText("YOUR_R_NEW_IN_GUILD",[this.api.datacenter.Player.guildInfos.name]),"INFO_CHAT");
      }
   }
   function §\x19\x19\x0f§()
   {
      this.api.ui.unloadUIComponent("AskYesNoIgnoreGuild");
   }
   function §\x19\x19\x16§()
   {
      this.api.ui.unloadUIComponent("CreateGuild");
   }
   function §\x19\x14\x0f§(bSuccess, sExtraData)
   {
      if(_loc2_)
      {
         var _loc4_ = _loc3_.split("|");
         var _loc5_ = _loc4_[0];
         var _loc6_ = _loc4_[1];
         var _loc7_ = _loc5_ == this.api.datacenter.Player.Name;
         if(_loc7_)
         {
            if(_loc5_ != _loc6_)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("YOU_BANN_A_FROM_GUILD",[_loc6_]),"INFO_CHAT");
            }
            else
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("YOU_BANN_YOU_FROM_GUILD"),"INFO_CHAT");
               this.api.ui.unloadUIComponent("Guild");
               this.api.datacenter.Player.guildInfos = undefined;
            }
         }
         else
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("YOU_ARE_BANN_BY_A_FROM_GUILD",[_loc5_]),"INFO_CHAT");
            this.api.ui.unloadUIComponent("Guild");
            delete this.api.datacenter.Player.guildInfos;
         }
      }
      else
      {
         var _loc8_ = _loc3_.charAt(0);
         switch(_loc8_)
         {
            case "d":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("NOT_ENOUGHT_RIGHTS_FROM_GUILD"),"ERROR_CHAT");
               break;
            case "a":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_BANN_FROM_GUILD_NOT_MEMBER"),"ERROR_CHAT");
         }
      }
   }
   function §\x19\x18\x0e§(bSuccess, sExtraData)
   {
      if(!_loc2_)
      {
         var _loc4_ = _loc3_.charAt(0);
         switch(_loc4_)
         {
            case "d":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("NOT_ENOUGHT_RIGHTS_FROM_GUILD"),"ERROR_CHAT");
               break;
            case "a":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("ALREADY_TAXCOLLECTOR_ON_MAP"),"ERROR_CHAT");
               break;
            case "k":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("NOT_ENOUGTH_RICH_TO_HIRE_TAX"),"ERROR_CHAT");
               break;
            case "m":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_HIRE_MAX_TAXCOLLECTORS"),"ERROR_CHAT");
               break;
            case "b":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("NOT_YOUR_TAXCOLLECTORS"),"ERROR_CHAT");
               break;
            case "y":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_HIRE_TAXCOLLECTORS_TOO_TIRED"),"ERROR_CHAT");
               break;
            case "h":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_HIRE_TAXCOLLECTORS_HERE"),"ERROR_CHAT");
         }
      }
      else
      {
         this["\x17\x19\b"]();
      }
   }
   function §\x19\x1d\x17§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = _loc3_[0].charAt(0);
      var _loc5_ = this.api.lang["\x17\x18\x05"](_loc3_[0].substr(1).split(","));
      var _loc6_ = Number(_loc3_[1]);
      var _loc7_ = _loc3_[2];
      var _loc8_ = _loc3_[3];
      var _loc9_ = "(" + _loc7_ + ", " + _loc8_ + ")";
      switch(_loc4_)
      {
         case "A":
            this.api.electron.makeNotification(this.api.lang.getText("TAX_ATTACKED",[_loc5_,_loc9_]));
            this.api.kernel.showMessage(undefined,this.api.electron.getCautionIcon() + "<a href=\"asfunction:onHref,OpenGuildTaxCollectors\">" + this.api.lang.getText("TAX_ATTACKED",[_loc5_,_loc9_]) + "</a>","GUILD_CHAT");
            this.api.sounds["\x17\x0e\x06"]["\x19\x1d\x16"]();
            break;
         case "S":
            this.api.kernel.showMessage(undefined,this.api.lang.getText("TAX_ATTACKED_SUVIVED",[_loc5_,_loc9_]),"GUILD_CHAT");
            break;
         case "D":
            this.api.kernel.showMessage(undefined,this.api.lang.getText("TAX_ATTACKED_DIED",[_loc5_,_loc9_]),"GUILD_CHAT");
      }
   }
   function §\x19\x1d\x18§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = _loc3_[0].charAt(0);
      var _loc5_ = this.api.lang["\x17\x18\x05"](_loc3_[0].substr(1).split(","));
      var _loc6_ = Number(_loc3_[1]);
      var _loc7_ = _loc3_[2];
      var _loc8_ = _loc3_[3];
      var _loc9_ = "(" + _loc7_ + ", " + _loc8_ + ")";
      var _loc10_ = _loc3_[4];
      switch(_loc4_)
      {
         case "S":
            this.api.kernel.showMessage(undefined,this.api.lang.getText("TAXCOLLECTOR_ADDED",[_loc5_,_loc9_,_loc10_]),"GUILD_CHAT");
            break;
         case "R":
            this.api.kernel.showMessage(undefined,this.api.lang.getText("TAXCOLLECTOR_REMOVED",[_loc5_,_loc9_,_loc10_]),"GUILD_CHAT");
            break;
         case "G":
            var _loc11_ = _loc3_[5].split(";");
            var _loc12_ = Number(_loc11_[0]);
            var _loc13_ = _loc12_ + " " + this.api.lang.getText("EXPERIENCE_POINT");
            var _loc14_ = 1;
            while(_loc14_ < _loc11_.length)
            {
               var _loc15_ = _loc11_[_loc14_].split(",");
               var _loc16_ = _loc15_[0];
               var _loc17_ = _loc15_[1];
               _loc13_ += ",<br/>" + _loc17_ + " x " + this.api.lang["\x17\x19\x1d"](_loc16_).n;
               _loc14_ = _loc14_ + 1;
            }
            _loc13_ += ".";
            this.api.kernel.showMessage(undefined,this.api.lang.getText("TAXCOLLECTOR_RECOLTED",[_loc5_,_loc9_,_loc10_,_loc13_]),"GUILD_CHAT");
      }
   }
   function §\x19\x1e\x0e§(sExtraData)
   {
      switch(_loc2_)
      {
         case "T":
            if(this.api.datacenter.Player.guildInfos.name != undefined)
            {
               this.api.ui["\x18\x16\x19"]("Guild","Guild",{currentTab:"GuildHouses"});
            }
            else
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("ITEM_NEED_GUILD"),"ERROR_CHAT");
            }
            break;
         case "F":
            if(this.api.datacenter.Player.guildInfos.name != undefined)
            {
               this.api.ui["\x18\x16\x19"]("Guild","Guild",{currentTab:"MountParks"});
               break;
            }
            this.api.kernel.showMessage(undefined,this.api.lang.getText("ITEM_NEED_GUILD"),"ERROR_CHAT");
            break;
      }
   }
   function onRankNameChange(sData)
   {
      var _loc3_ = this.api.datacenter.Player.guildInfos;
      var _loc4_ = _loc2_.split("|");
      var _loc5_ = 0;
      while(_loc5_ < _loc4_.length)
      {
         var _loc6_ = _loc4_[_loc5_];
         var _loc7_ = _loc6_.split(";");
         if(_loc7_[1] == "0")
         {
            _loc3_.resetRankName(Number(_loc7_[0]));
         }
         else
         {
            _loc3_.setRankName(Number(_loc7_[0]),_loc7_[1]);
         }
         _loc5_ = _loc5_ + 1;
      }
   }
   function cancel(oEvent)
   {
      new org.flashdevelop.utils.FlashConnect.trace(_loc2_.target._name,"dofus.aks.Guild::cancel","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/aks/Guild.as",1228);
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "AskCancelGuild")
      {
         this["\x1a\x0b\r"](_loc2_.params.spriteID);
      }
   }
   function yes(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "AskYesNoIgnoreGuild")
      {
         this["\x15\x1b\x11"](_loc2_.params.spriteID);
      }
   }
   function no(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "AskYesNoIgnoreGuild")
      {
         this["\x1a\x0b\r"](_loc2_.params.spriteID);
      }
   }
   function ignore(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "AskYesNoIgnoreGuild")
      {
         this.api.kernel.ChatManager["\x16\x01\x03"](_loc2_.params.player);
         this.api.kernel.showMessage(undefined,this.api.lang.getText("TEMPORARY_BLACKLISTED",[_loc2_.params.player]),"INFO_CHAT");
         this["\x1a\x0b\r"](_loc2_.params.spriteID);
      }
   }
}
