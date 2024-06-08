class dofus.§\x18\x03\x10§.gapi.ui.AutomaticServer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "AutomaticServer";
   function AutomaticServer()
   {
      super();
   }
   function §\x1c\x0e§(§\x17\x0b\x13§)
   {
      this["\x1c\x10\x0b"] = _loc2_;
      return this["\b\x1a"]();
   }
   function §\x1b\x0e§(§\x19\r\r§)
   {
      this["\x1d\x1b\x1d"] = _loc2_;
      return this.remainingTime;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.AutomaticServer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initTexts});
   }
   function addListeners()
   {
      this._mcAutomaticSelect.onRelease = function()
      {
         this._parent.click({target:this});
      };
      this._mcManualSelect.onRelease = function()
      {
         this._parent.click({target:this});
      };
   }
   function initTexts()
   {
      if(this.api.datacenter.Basics.first_connection_from_miniclip)
      {
         this["\x1e\r\x1c"].text = this.api.lang.getText("SERVER_FIRST_CONNECTION_MINICLIP");
         this["\x1d\b\x1d"]._visible = false;
      }
      else
      {
         this._lblTitle.text = this.api.lang.getText("CHOOSE_GAME_SERVER");
         this["\x1d\b\x18"]._visible = false;
      }
      this._lblCopyright.text = this.api.lang.getText("COPYRIGHT",[new Date().getUTCFullYear()]);
      this["\x1c\x13\x05"].text = this.api.lang.getText("AUTOMATIC_SERVER_SELECTION");
      this["\x1c\x1a\x16"].text = this.api.lang.getText("MANUAL_SERVER_SELECT");
   }
   function §\x17\x1a\x18§(§\x17\x0b\x13§)
   {
      if(_loc2_.length == 1)
      {
         return _loc2_[0].id;
      }
      _loc2_.sortOn("populationWeight",Array.NUMERIC | Array.ASCENDING);
      var _loc3_ = _loc2_[0].populationWeight;
      var _loc4_ = new ank.utils.ExtendedArray();
      var _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         if(_loc2_[_loc5_].populationWeight == _loc3_)
         {
            _loc4_.push(_loc2_[_loc5_]);
         }
         _loc5_ = _loc5_ + 1;
      }
      _loc4_.sortOn("completion",Array.NUMERIC | Array.ASCENDING);
      var _loc6_ = _loc4_[0].completion;
      var _loc7_ = new ank.utils.ExtendedArray();
      var _loc8_ = 0;
      while(_loc8_ < _loc4_.length)
      {
         if(_loc4_[_loc8_].completion == _loc6_)
         {
            _loc7_.push(_loc4_[_loc8_]);
         }
         _loc8_ = _loc8_ + 1;
      }
      return _loc7_[Math.round(Math.random() * (_loc7_.length - 1))].id;
   }
   function §\x1a\x13\r§(nServerID)
   {
      this.gapi.loadUIComponent("ServerInformations","ServerInformations",{server:_loc2_});
      this.gapi.getUIComponent("ServerInformations").addEventListener("serverSelected",this);
      this.gapi.getUIComponent("ServerInformations").addEventListener("canceled",this);
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_mcAutomaticSelect":
            var _loc3_ = new ank.utils.ExtendedArray();
            var _loc4_ = 0;
            while(_loc4_ < this["\x1c\x10\x0b"].length)
            {
               if(this["\x1c\x10\x0b"][_loc4_].state == dofus.datacenter.Server.SERVER_ONLINE && this["\x1c\x10\x0b"][_loc4_].isAllowed())
               {
                  _loc3_.push(this["\x1c\x10\x0b"][_loc4_]);
               }
               _loc4_ = _loc4_ + 1;
            }
            if(_loc3_.length <= 0)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("ALL_SERVERS_ARE_DOWN"),"ERROR_BOX");
               break;
            }
            var _loc5_ = new ank.utils.ExtendedArray();
            var _loc6_ = 0;
            while(_loc6_ < _loc3_.length)
            {
               if(_loc3_[_loc6_]["\x16\x16\x07"] && (_loc3_[_loc6_].typeNum == dofus.datacenter.Server["\x1a\x14\x0e"] || _loc3_[_loc6_].typeNum == dofus.datacenter.Server["\x1a\x14\x13"]))
               {
                  _loc5_.push(_loc3_[_loc6_]);
               }
               _loc6_ = _loc6_ + 1;
            }
            _loc3_ = _loc5_;
            if(_loc3_.length <= 0)
            {
               if(this["\x1d\x1b\x1d"] <= 0)
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("ALL_SERVERS_ARE_FULL_NOT_FULL_MEMBER"),"ERROR_BOX");
               }
               else
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("ALL_SERVERS_ARE_FULL_FULL_MEMBER"),"ERROR_BOX");
               }
               break;
            }
            this["\x1c\x10\x05"] = _loc3_;
            _loc5_ = new ank.utils.ExtendedArray();
            var _loc7_ = 0;
            while(_loc7_ < _loc3_.length)
            {
               if(_loc3_[_loc7_]["\x16\x1d\x1b"] == this.api.datacenter.Basics.communityId || _loc3_[_loc7_]["\x16\x1d\x1b"] == dofus.datacenter.Server["\x1a\x14\x0f"])
               {
                  _loc5_.push(_loc3_[_loc7_]);
               }
               _loc7_ = _loc7_ + 1;
            }
            _loc3_ = _loc5_;
            if(_loc3_.length <= 0)
            {
               if(this["\x1d\x1b\x1d"] <= 0)
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("COMMUNITY_IS_FULL_NOT_FULL_MEMBER"),"CAUTION_YESNO",{name:"automaticServer",listener:this});
               }
               else
               {
                  this.api.kernel.showMessage(undefined,this.api.lang.getText("COMMUNITY_IS_FULL_FULL_MEMBER"),"CAUTION_YESNO",{name:"automaticServer",listener:this});
               }
               break;
            }
            this["\x1a\x13\r"](this["\x17\x1a\x18"](_loc3_));
            break;
         case "_mcManualSelect":
            this.api.datacenter.Basics.forceManualServerSelection = true;
            this.api.network.Account.getServersList();
      }
   }
   function yes(oEvent)
   {
      var _loc3_ = new ank.utils.ExtendedArray();
      var _loc4_ = 0;
      while(_loc4_ < this["\x1c\x10\x05"].length)
      {
         if(this["\x1c\x10\x05"][_loc4_]["\x16\x1d\x1b"] == dofus.datacenter.Server["\x1a\x14\x0f"])
         {
            _loc3_.push(this["\x1c\x10\x05"][_loc4_]);
         }
         _loc4_ = _loc4_ + 1;
      }
      if(_loc3_.length > 0)
      {
         this["\x1a\x13\r"](this["\x17\x1a\x18"](_loc3_));
      }
      else
      {
         this["\x1a\x13\r"](this["\x17\x1a\x18"](this["\x1c\x10\x05"]));
      }
   }
   function serverSelected(oEvent)
   {
      this.gapi.unloadUIComponent("ServerInformations");
      var _loc3_ = new dofus.datacenter.Server(_loc2_.value,1,0);
      if(_loc3_["\x18\x0e\x1d"]())
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("SRV_MSG_41"),"ERROR_BOX");
         return undefined;
      }
      if(_loc3_.isAllowed())
      {
         this.api.datacenter.Basics.aks_current_server = _loc3_;
         this.api.datacenter.Basics.createCharacter = true;
         this.api.network.Account.setServer(_loc2_.value);
      }
      else
      {
         this.api.kernel.showMessage(undefined,this.api.lang.getText("SERVER_NOT_ALLOWED_IN_YOUR_LANGUAGE"),"ERROR_BOX");
      }
   }
   function canceled(oEvent)
   {
      this.gapi.unloadUIComponent("ServerInformations");
   }
}
