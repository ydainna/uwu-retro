class dofus.aks.Friends extends dofus.aks.Handler
{
   function Friends(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function §\x17\x18\x04§()
   {
      this.aks.send("FL",true);
   }
   function §\x15\x1d\x10§(sName)
   {
      if(_loc2_ == undefined || (_loc2_.length == 0 || _loc2_ == "*"))
      {
         return undefined;
      }
      this.aks.send("FA" + _loc2_);
   }
   function §\x1a\f\x05§(sName)
   {
      if(_loc2_ == undefined || (_loc2_.length == 0 || _loc2_ == "*"))
      {
         return undefined;
      }
      this.aks.send("FD" + _loc2_);
   }
   function join(sType)
   {
      this.aks.send("FJ" + _loc2_);
   }
   function §\x18\x11\x13§(sName)
   {
      this.aks.send("FJF" + _loc2_);
   }
   function compass(§\x16\x13\x01§)
   {
      this.aks.send("FJC" + (!_loc2_ ? "+" : "-"));
   }
   function §\x1a\x18\f§(§\x16\b\x10§)
   {
      this.aks.send("FO" + (!_loc2_ ? "-" : "+"));
   }
   function §\x19\x13\x1d§(bSuccess, sExtraData)
   {
      if(_loc2_)
      {
         var _loc4_ = this["\x17\x18\x03"](_loc3_);
         if(_loc4_ != undefined)
         {
            this.api.datacenter.Player.Friends.push(_loc4_);
         }
         this.api.kernel.showMessage(undefined,this.api.lang.getText("ADD_TO_FRIEND_LIST",[_loc4_.name]),"INFO_CHAT");
      }
      else
      {
         switch(_loc3_)
         {
            case "f":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_ADD_FRIEND_NOT_FOUND"),"ERROR_CHAT");
               break;
            case "y":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_ADD_YOU"),"ERROR_CHAT");
               break;
            case "a":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("ALREADY_YOUR_FRIEND"),"ERROR_CHAT");
               break;
            case "m":
               this.api.kernel.showMessage(this.api.lang.getText("FRIENDS"),this.api.lang.getText("FRIENDS_LIST_FULL"),"ERROR_BOX",{name:"FriendsListFull"});
         }
      }
   }
   function §\x19\x1c\x01§(bSuccess, sExtraData)
   {
      if(_loc2_)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("REMOVE_FRIEND_OK"),"INFO_CHAT");
         this["\x17\x18\x04"]();
      }
      else
      {
         var _loc0_ = null;
         if((_loc0_ = _loc3_) === "f")
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_ADD_FRIEND_NOT_FOUND"),"ERROR_CHAT");
         }
      }
   }
   function §\x19\x17\x19§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      this.api.datacenter.Player.Friends = new Array();
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         var _loc5_ = this["\x17\x18\x03"](_loc3_[_loc4_]);
         if(_loc5_ != undefined)
         {
            this.api.datacenter.Player.Friends.push(_loc5_);
         }
         _loc4_ = _loc4_ + 1;
      }
      var _loc6_ = this.api.ui.getUIComponent("Friends");
      var _loc7_ = this.api.datacenter.Player.Friends;
      if(_loc6_ != undefined)
      {
         _loc6_["\x17\x12\x16"] = _loc7_;
      }
      else
      {
         var _loc8_ = new String();
         if(_loc7_.length != 0)
         {
            this.api.kernel.showMessage(undefined,"<b>" + this.api.lang.getText("YOUR_FRIEND_LIST") + " :</b>","INFO_CHAT");
            var _loc9_ = 0;
            while(_loc9_ < _loc7_.length)
            {
               _loc8_ = " - " + _loc7_[_loc9_].account;
               if(_loc7_[_loc9_].state != "DISCONNECT")
               {
                  _loc8_ += " (" + _loc7_[_loc9_].name + ") " + this.api.lang.getText("LEVEL") + ":" + _loc7_[_loc9_].level + ", " + this.api.lang.getText(_loc7_[_loc9_].state);
               }
               this.api.kernel.showMessage(undefined,_loc8_,"INFO_CHAT");
               _loc9_ = _loc9_ + 1;
            }
         }
         else
         {
            this.api.kernel.showMessage(undefined,this.api.lang.getText("EMPTY_FRIEND_LIST"),"INFO_CHAT");
         }
      }
   }
   function §\x19\x1d\x03§(sExtraData)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = _loc3_[0];
      if(_loc4_ == undefined || _loc4_ == "")
      {
         return undefined;
      }
      var _loc5_ = new Object();
      _loc5_.name = _loc4_;
      _loc5_.gfx = _loc3_[1];
      _loc5_.color1 = Number(_loc3_[2]);
      _loc5_.color2 = Number(_loc3_[3]);
      _loc5_.color3 = Number(_loc3_[4]);
      _loc5_.mapID = Number(_loc3_[5]);
      _loc5_.isConnected = !_global.isNaN(_loc5_.mapID);
      _loc5_.level = Number(_loc3_[6]);
      _loc5_.isInFight = _loc3_[7] != "1" ? false : true;
      _loc5_["\x1a\x1b\f"] = this.api.datacenter.Player.Sex != 0 ? "m" : "f";
      _loc5_.isFollow = _loc3_[8] != "1" ? false : true;
      _loc5_.id = Number(_loc3_[9]);
      var _loc6_ = this.api.ui.getUIComponent("Friends");
      _loc6_.spouse = _loc5_;
   }
   function §\x19\x1a\x18§(sExtraData)
   {
      this.api.datacenter.Basics.aks_notify_on_friend_connexion = _loc2_ == "+";
      var _loc3_ = dofus.graphics.gapi.ui.Friends(this.api.ui.getUIComponent("Friends"));
      if(_loc3_ != null)
      {
         _loc3_["\x19\x0b\x0f"](_loc2_ == "+");
      }
   }
   function §\x17\x18\x03§(sData)
   {
      var _loc3_ = _loc2_.split(";");
      var _loc4_ = new Object();
      _loc4_.account = String(_loc3_[0]);
      if(_loc3_[1] != undefined)
      {
         switch(_loc3_[1])
         {
            case "1":
               _loc4_.state = "IN_SOLO";
               break;
            case "2":
               _loc4_.state = "IN_MULTI";
               break;
            case "?":
               _loc4_.state = "IN_UNKNOW";
         }
         _loc4_.name = _loc3_[2];
         _loc4_.level = _loc3_[3];
         _loc4_.sortLevel = _loc4_.level != "?" ? Number(_loc4_.level) : -1;
         _loc4_.alignement = Number(_loc3_[4]);
         _loc4_.guild = _loc3_[5];
         _loc4_["\x1a\x1b\f"] = _loc3_[6];
         _loc4_["\x18\x02\x16"] = _loc3_[7];
         _loc4_.hasTtgCollection = _loc3_[8] == "1";
         _loc4_.id = _loc3_[9];
      }
      else
      {
         _loc4_.name = _loc4_.account;
         _loc4_.state = "DISCONNECT";
      }
      return _loc4_.account.length == 0 ? undefined : _loc4_;
   }
   function §\x1a\x18\x0b§(§\x16\x0f\x14§)
   {
      this.aks.send("FO" + (!_loc2_ ? "-" : "+"),false);
   }
}
