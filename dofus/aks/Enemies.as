class dofus.aks.Enemies extends dofus.aks.Handler
{
   function Enemies(oAKS, oAPI)
   {
      super.initialize(_loc3_,oAPI);
   }
   function §\x17\x17\x0e§()
   {
      this.aks.send("iL",true);
   }
   function §\x15\x1d\n§(sName)
   {
      if(_loc2_ == undefined || (_loc2_.length == 0 || _loc2_ == "*"))
      {
         return undefined;
      }
      this.aks.send("iA" + _loc2_);
   }
   function §\x1a\f\x02§(sName)
   {
      if(_loc2_ == undefined || (_loc2_.length == 0 || _loc2_ == "*"))
      {
         return undefined;
      }
      this.aks.send("iD" + _loc2_);
   }
   function §\x19\x13\x1c§(bSuccess, §\x1a\x1b\r§)
   {
      if(_loc2_)
      {
         var _loc4_ = this["\x17\x17\x0f"](_loc3_);
         if(_loc4_ != undefined)
         {
            this.api.datacenter.Player.Enemies.push(_loc4_);
         }
         this.api.kernel.showMessage(undefined,this.api.lang.getText("ADD_TO_ENEMY_LIST",[_loc4_.name]),"INFO_CHAT");
      }
      else
      {
         switch(_loc3_)
         {
            case "f":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_ADD_FRIEND_NOT_FOUND"),"ERROR_CHAT");
               break;
            case "y":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CANT_ADD_YOU_AS_ENEMY"),"ERROR_CHAT");
               break;
            case "a":
               this.api.kernel.showMessage(undefined,this.api.lang.getText("ALREADY_YOUR_ENEMY"),"ERROR_CHAT");
               break;
            case "m":
               this.api.kernel.showMessage(this.api.lang.getText("ENEMIES"),this.api.lang.getText("ENEMIES_LIST_FULL"),"ERROR_BOX",{name:"EnemiesListFull"});
         }
      }
   }
   function §\x19\x1b\x1d§(bSuccess, §\x1a\x1b\r§)
   {
      if(_loc2_)
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("REMOVE_ENEMY_OK"),"INFO_CHAT");
         this["\x17\x17\x0e"]();
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
   function §\x19\x16\x1a§(§\x1a\x1b\r§)
   {
      var _loc3_ = _loc2_.split("|");
      this.api.datacenter.Player.Enemies = new Array();
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         var _loc5_ = this["\x17\x17\x0f"](_loc3_[_loc4_]);
         if(_loc5_ != undefined)
         {
            this.api.datacenter.Player.Enemies.push(_loc5_);
         }
         _loc4_ = _loc4_ + 1;
      }
      var _loc6_ = this.api.ui.getUIComponent("Friends");
      var _loc7_ = this.api.datacenter.Player.Enemies;
      if(_loc6_ != undefined)
      {
         _loc6_["\x17\r\b"] = _loc7_;
      }
      else
      {
         var _loc8_ = new String();
         if(_loc7_.length != 0)
         {
            this.api.kernel.showMessage(undefined,"<b>" + this.api.lang.getText("YOUR_ENEMY_LIST") + " :</b>","INFO_CHAT");
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
            this.api.kernel.showMessage(undefined,this.api.lang.getText("EMPTY_ENEMY_LIST"),"INFO_CHAT");
         }
      }
   }
   function §\x17\x17\x0f§(sData)
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
         _loc4_.id = _loc3_[8];
      }
      else
      {
         _loc4_.name = _loc4_.account;
         _loc4_.state = "DISCONNECT";
      }
      return _loc4_.account.length == 0 ? undefined : _loc4_;
   }
}
