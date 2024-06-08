class dofus.aks.Party extends dofus.aks.Handler
{
   function Party(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function §\x18\f\x0f§(§\x1b\b\x11§)
   {
      this.aks.send("PI" + _loc2_);
   }
   function §\x1a\x0b\r§()
   {
      this.aks.send("PR",false);
   }
   function §\x15\x1b\x11§()
   {
      this.aks.send("PA");
   }
   function §\x18\x13\x1d§(§\x1b\b\x10§)
   {
      this.aks.send("PV" + (_loc2_ == undefined ? "" : _loc2_));
      var _loc3_ = dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"));
      _loc3_["\x18\b\x12"]["\x1b\x14\x1a"]();
      _loc3_["\x16\x19\x0b"].miniMapReplacementPanel["\x1b\x14\x1a"]();
      _loc3_["\x16\x19\x0b"].shortcutsReplacementPanel.miniMap["\x1b\x14\x1a"]();
   }
   function §\x17\x11\x19§(§\x16\x13\x01§, §\x1b\b\x10§)
   {
      this.aks.send("PF" + (!_loc2_ ? "+" : "-") + _loc3_);
   }
   function §\x1b\x18\x1d§()
   {
      this.aks.send("PW");
   }
   function §\x17\x11\x1a§(§\x16\x13\x01§, §\x1b\b\x10§)
   {
      this.aks.send("PG" + (!_loc2_ ? "+" : "-") + _loc3_);
   }
   function §\x19\x19\x07§(bSuccess, §\x1a\x1b\r§)
   {
      if(_loc2_)
      {
         var _loc4_ = _loc3_.split("|");
         var _loc5_ = _loc4_[0];
         var _loc6_ = _loc4_[1];
         if(_loc5_ == undefined || _loc6_ == undefined)
         {
            this["\x1a\x0b\r"]();
            return undefined;
         }
         if(_loc5_ == this.api.datacenter.Player.Name)
         {
            this.api.kernel.showMessage(this.api.lang.getText("PARTY"),this.api.lang.getText("YOU_INVITE_B_IN_PARTY",[_loc6_]),"INFO_CANCEL",{name:"Party",listener:this});
         }
         if(_loc6_ == this.api.datacenter.Player.Name)
         {
            if(this.api.kernel.ChatManager["\x18\f\x16"](_loc5_))
            {
               this["\x1a\x0b\r"]();
               return undefined;
            }
            this.api.electron.makeNotification(this.api.lang.getText("A_INVITE_YOU_IN_PARTY",[_loc5_]));
            this.api.kernel.showMessage(undefined,this.api.lang.getText("CHAT_A_INVITE_YOU_IN_PARTY",[this.api.kernel.ChatManager["\x17\x1a\x1d"](undefined,_loc5_)]),"INFO_CHAT");
            this.api.kernel.showMessage(this.api.lang.getText("PARTY"),this.api.lang.getText("A_INVITE_YOU_IN_PARTY",[_loc5_]),"CAUTION_YESNOIGNORE",{name:"Party",player:_loc5_,listener:this,params:{player:_loc5_}});
            this.api.sounds["\x17\x0e\x06"]["\x19\x18\x02"]();
         }
      }
      else
      {
         var _loc7_ = _loc3_.charAt(0);
         switch(_loc7_)
         {
            case "a":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("PARTY_ALREADY_IN_GROUP"),"ERROR_CHAT",{name:"PartyError"});
               break;
            case "f":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("PARTY_FULL"),"ERROR_CHAT",{name:"PartyError"});
               break;
            case "n":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_FIND_ACCOUNT_OR_CHARACTER",[_loc3_.substr(1)]),"ERROR_CHAT",{name:"PartyError"});
         }
      }
   }
   function §\x19\x19\x15§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_;
      var _loc4_ = this.api.ui.getUIComponent("Party");
      _loc4_["\x1a\x17\x13"](_loc3_);
      var _loc5_ = _loc4_["\x17\x1b\x18"](_loc3_).name;
      if(_loc5_ != undefined)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("NEW_GROUP_LEADER",[_loc5_]),"INFO_CHAT");
      }
   }
   function §\x19\x1b\x1a§(§\x1a\x1b\r§)
   {
      this.api.ui.unloadUIComponent("AskYesNoIgnoreParty");
      this.api.ui.unloadUIComponent("AskCancelParty");
   }
   function §\x19\x13\x15§(§\x1a\x1b\r§)
   {
      this.api.ui.unloadUIComponent("AskYesNoIgnoreParty");
      this.api.ui.unloadUIComponent("AskCancelParty");
   }
   function §\x19\x16\x0b§(bSuccess, §\x1a\x1b\r§)
   {
      if(_loc2_)
      {
         var _loc4_ = _loc3_;
         if(_loc4_ != this.api.datacenter.Player.Name)
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("U_ARE_IN_GROUP",[_loc4_]),"INFO_CHAT");
         }
         this.api.datacenter.Player.inParty = true;
         this.api.ui.loadUIComponent("Party","Party",undefined,{bStrayIfPresent:true});
      }
      else
      {
         var _loc5_ = _loc3_.charAt(0);
         switch(_loc5_)
         {
            case "a":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("PARTY_ALREADY_IN_GROUP"),"ERROR_CHAT",{name:"PartyError"});
               break;
            case "f":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("PARTY_FULL"),"ERROR_CHAT",{name:"PartyError"});
         }
      }
   }
   function §\x19\x19\x16§(§\x1a\x1b\r§)
   {
      var _loc3_ = this.api.ui.getUIComponent("Party");
      if(_loc3_["\x17\x11\x1b"] != undefined)
      {
         this.api.kernel.GameManager.updateCompass(this.api.datacenter.Basics["\x16\b\x1c"][0],this.api.datacenter.Basics["\x16\b\x1c"][1]);
      }
      var _loc4_ = _loc3_["\x17\x1b\x18"](_loc2_).name;
      if(_loc4_ != undefined)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("A_KICK_FROM_PARTY",[_loc4_]),"INFO_CHAT");
      }
      else
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("LEAVE_GROUP"),"INFO_CHAT");
      }
      this.api.ui.unloadUIComponent("Party");
      this.api.ui.unloadUIComponent("AskYesNoIgnoreParty");
      this.api.ui.unloadUIComponent("AskCancelParty");
      this.api.datacenter.Player.inParty = false;
      this.api.datacenter.Basics["\x16\x02\x10"](2);
   }
   function §\x19\x17\x15§(bSuccess, §\x1a\x1b\r§)
   {
      if(_loc2_)
      {
         var _loc4_ = this.api.ui.getUIComponent("Party");
         var _loc5_ = _loc3_;
         _loc4_["\x1a\x16\x16"](_loc5_);
      }
      else
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("PARTY_NOT_IN_IN_GROUP"),"ERROR_BOX",{name:"PartyError"});
      }
   }
   function §\x19\x1a\x0f§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_.charAt(0) == "+";
      var _loc4_ = dofus.graphics.gapi.ui.Party(this.api.ui.getUIComponent("Party"));
      var _loc5_ = _loc2_.substr(1).split("|");
      var _loc6_ = 0;
      while(_loc6_ < _loc5_.length)
      {
         var _loc7_ = String(_loc5_[_loc6_]).split(";");
         var _loc8_ = _loc7_[0];
         switch(_loc2_.charAt(0))
         {
            case "+":
               var _loc9_ = _loc7_[1];
               var _loc10_ = _loc7_[2];
               var _loc11_ = Number(_loc7_[3]);
               var _loc12_ = Number(_loc7_[4]);
               var _loc13_ = Number(_loc7_[5]);
               var _loc14_ = _loc7_[6];
               var _loc15_ = _loc7_[7];
               var _loc16_ = Number(_loc7_[8]);
               var _loc17_ = Number(_loc7_[9]);
               var _loc18_ = Number(_loc7_[10]);
               var _loc19_ = Number(_loc7_[11]);
               var _loc20_ = new Object();
               _loc20_.id = _loc8_;
               _loc20_.name = _loc9_;
               _loc20_.gfxFile = dofus.Constants["\x16\x1c\x1a"] + _loc10_ + ".swf";
               _loc20_.color1 = _loc11_;
               _loc20_.color2 = _loc12_;
               _loc20_.color3 = _loc13_;
               _loc20_.life = _loc15_;
               _loc20_.level = _loc16_;
               _loc20_.initiative = _loc17_;
               _loc20_.prospection = _loc18_;
               _loc20_.side = _loc19_;
               _loc20_["\x18\x02\x15"] = _loc10_;
               this.api.kernel["\x16\x19\t"]["\x1a\x1a\x01"](_loc20_,_loc14_);
               _loc4_["\x15\x1d\x1d"](_loc20_);
               break;
            case "-":
               _loc4_["\x1a\f\x10"](_loc8_,true);
               break;
            case "~":
               var _loc21_ = _loc7_[1];
               var _loc22_ = _loc7_[2];
               var _loc23_ = Number(_loc7_[3]);
               var _loc24_ = Number(_loc7_[4]);
               var _loc25_ = Number(_loc7_[5]);
               var _loc26_ = _loc7_[6];
               var _loc27_ = _loc7_[7];
               var _loc28_ = Number(_loc7_[8]);
               var _loc29_ = Number(_loc7_[9]);
               var _loc30_ = Number(_loc7_[10]);
               var _loc31_ = Number(_loc7_[11]);
               var _loc32_ = new Object();
               _loc32_.id = _loc8_;
               _loc32_.name = _loc21_;
               _loc32_.gfxFile = dofus.Constants["\x16\x1c\x1a"] + _loc22_ + ".swf";
               _loc32_.color1 = _loc23_;
               _loc32_.color2 = _loc24_;
               _loc32_.color3 = _loc25_;
               _loc32_.life = _loc27_;
               _loc32_.level = _loc28_;
               _loc32_.initiative = _loc29_;
               _loc32_.prospection = _loc30_;
               _loc32_.side = _loc31_;
               _loc32_["\x18\x02\x15"] = _loc22_;
               this.api.kernel["\x16\x19\t"]["\x1a\x1a\x01"](_loc32_,_loc26_);
               _loc4_["\x1b\x14\x14"](_loc32_);
         }
         _loc6_ = _loc6_ + 1;
      }
      _loc4_["\x1a\n\x15"]();
   }
   function cancel(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "AskCancelParty")
      {
         this["\x1a\x0b\r"]();
      }
   }
   function yes(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "AskYesNoIgnoreParty")
      {
         this["\x15\x1b\x11"]();
      }
   }
   function no(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "AskYesNoIgnoreParty")
      {
         this["\x1a\x0b\r"]();
      }
   }
   function ignore(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) === "AskYesNoIgnoreParty")
      {
         this.api.kernel.ChatManager["\x16\x01\x03"](_loc2_.params.player);
         this.api.kernel.showMessage(undefined,this.api.lang.getText("TEMPORARY_BLACKLISTED",[_loc2_.params.player]),"INFO_CHAT");
         this["\x1a\x0b\r"](_loc2_.params.spriteID);
      }
   }
}
