class dofus.graphics.gapi.ui.Party extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Party";
   var §\x1e\n\x17§ = "0";
   var §\x1e\t\x15§ = "0";
   function Party()
   {
      super();
   }
   function §\x02\x04§()
   {
      return this["\x1e\n\x17"];
   }
   function §\x1e\x1a\x11§()
   {
      return this["\x1e\t\x15"];
   }
   function §\x19\x01\x12§(§\x19\x06\b§)
   {
      this._btnOpenClose._y += _loc2_;
      this["\x1c\t\x05"]._y += _loc2_;
      this["\x1d\f\n"]._y += _loc2_;
      this._piMember0._y += _loc2_;
      this._piMember1._y += _loc2_;
      this._piMember2._y += _loc2_;
      this._piMember3._y += _loc2_;
      this._piMember4._y += _loc2_;
      this._piMember5._y += _loc2_;
      this._piMember6._y += _loc2_;
      this._piMember7._y += _loc2_;
   }
   function §\x15\x1d\x1d§(§\x19\x13\x11§, §\x16\x11\x04§)
   {
      this["\x1b\x1d\x1b"].push(_loc2_);
      if(_loc3_)
      {
         this["\x1b\x14\x14"]();
      }
   }
   function §\x17\x1b\x18§(§\x1b\x03\x0f§)
   {
      var _loc3_ = this["\x1b\x1d\x1b"].findFirstItem("id",_loc2_);
      if(_loc3_.index != -1)
      {
         return _loc3_.item;
      }
      return null;
   }
   function §\x17\x1b\x19§(§\x19\n\r§)
   {
      var _loc3_ = 0;
      while(_loc3_ < dofus.Constants["\x18\x1c\x13"])
      {
         if(this["\x1b\x1d\x1b"][_loc3_].id == _loc2_)
         {
            return this["\x1b\x1d\x1b"][_loc3_];
         }
         _loc3_ = _loc3_ + 1;
      }
      return null;
   }
   function §\x1a\f\x10§(§\x1b\x03\x0f§, §\x16\x11\x04§)
   {
      var _loc4_ = this["\x1b\x1d\x1b"].findFirstItem("id",_loc2_);
      if(this["\x1e\t\x15"] == _loc2_)
      {
         this.api.kernel.GameManager.updateCompass(this.api.datacenter.Basics["\x16\b\x1c"][0],this.api.datacenter.Basics["\x16\b\x1c"][1]);
         delete this["\x1e\t\x15"];
      }
      if(_loc4_.index != -1)
      {
         this["\x1b\x1d\x1b"]["\x1a\f\x0b"](_loc4_.index,1);
      }
      if(_loc3_)
      {
         this["\x1b\x14\x14"]();
      }
   }
   function §\x1a\n\x15§()
   {
      this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
   }
   function §\x1a\x17\x13§(§\x1b\x02\x1a§)
   {
      this["\x1e\n\x17"] = _loc2_;
      this["\x1b\x14\x14"]();
      if(_loc2_ == undefined)
      {
         this.api.kernel.GameManager.updateCompass(this.api.datacenter.Basics["\x16\b\x1c"][0],this.api.datacenter.Basics["\x16\b\x1c"][0]);
      }
   }
   function §\x1a\x16\x16§(§\x1a\x1b\x15§)
   {
      this["\x1e\t\x15"] = _loc2_;
      this["\x1b\x14\x14"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Party.CLASS_NAME);
      this["\x1b\x1d\x1b"] = new ank.utils.ExtendedArray();
   }
   function destroy()
   {
      this.gapi.hideTooltip();
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
      this.addToQueue({object:this,method:this["\x18\n\r"]});
      if(this.api.ui.getUIComponent("Timeline") != undefined && dofus.graphics.gapi.ui.Timeline["\x18\x10\x04"])
      {
         this["\x19\x01\x12"](dofus.graphics.gapi.ui.Timeline["\x1b\x13\b"]);
      }
   }
   function addListeners()
   {
      this._btnOpenClose.addEventListener("click",this);
      this._btnOpenClose.addEventListener("over",this);
      this._btnOpenClose.addEventListener("out",this);
      this["\x1c\t\x05"].addEventListener("click",this);
      this["\x1c\t\x05"].addEventListener("over",this);
      this["\x1c\t\x05"].addEventListener("out",this);
   }
   function §\x18\n\r§()
   {
      this["\x1c\t\x05"].selected = this.api.kernel.OptionsManager.getOption("FightGroupAutoLock");
   }
   function §\x1b\x14\x14§(§\x19\x13\x12§)
   {
      var _loc3_ = 0;
      this["\x1d\x19\x01"] = 0;
      this["\x1d\x1b\x0f"] = 0;
      var _loc5_ = false;
      if(this["\x1b\x1d\x1b"].length != 0)
      {
         var _loc6_ = 0;
         while(_loc6_ < dofus.Constants["\x18\x1c\x13"])
         {
            var _loc7_ = this["\x1b\x1d\x1b"][_loc6_];
            _loc3_;
            var _loc8_ = this["_piMember" + _loc3_++];
            if(_loc2_ && _loc2_.id == _loc7_.id)
            {
               _loc7_ = _loc2_;
               this["\x1b\x1d\x1b"][_loc6_] = _loc2_;
            }
            _loc8_["\x1a\x15\x1d"](_loc7_);
            _loc8_["\x18\r\x1a"] = _loc7_.id == this["\x1e\t\x15"];
            _loc8_["\x18\x0e\x10"] = _loc7_.id == this["\x1e\n\x17"];
            if(_loc8_["\x18\x0e\x06"])
            {
               this["\x1d\x19\x01"] += _loc7_.level;
               this["\x1d\x1b\x0f"] += _loc7_.prospection;
            }
            _loc6_ = _loc6_ + 1;
         }
         var _loc9_ = true;
         while(_loc9_)
         {
            _loc9_ = false;
            var _loc10_ = 0;
            while(_loc10_ < dofus.Constants["\x18\x1c\x13"])
            {
               if(this["\x1b\x1d\x1b"][_loc10_ + 1] != undefined && this["\x1b\x1d\x1b"][_loc10_].initiative < this["\x1b\x1d\x1b"][_loc10_ + 1].initiative)
               {
                  var _loc11_ = this["\x1b\x1d\x1b"][_loc10_];
                  this["\x1b\x1d\x1b"][_loc10_] = this["\x1b\x1d\x1b"][_loc10_ + 1];
                  this["\x1b\x1d\x1b"][_loc10_ + 1] = _loc11_;
                  _loc9_ = true;
               }
               var _loc12_ = this["_piMember" + _loc10_];
               _loc12_._visible = !this._btnOpenClose.selected;
               _loc12_["\x1a\x15\x1d"](this["\x1b\x1d\x1b"][_loc10_]);
               _loc12_["\x18\r\x1a"] = this["\x1b\x1d\x1b"][_loc10_].id == this["\x1e\t\x15"];
               _loc12_["\x18\x0e\x10"] = this["\x1b\x1d\x1b"][_loc10_].id == this["\x1e\n\x17"];
               if(_loc12_["\x18\x0e\x06"])
               {
                  var _loc4_ = _loc12_;
               }
               _loc10_ = _loc10_ + 1;
            }
         }
      }
      var ref = this;
      this["\x1d\f\n"].onRollOver = function()
      {
         ref.over({target:this});
      };
      this["\x1d\f\n"].onRollOut = function()
      {
         ref.out({target:this});
      };
   }
   function click(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) !== this["\x1c\t\x05"])
      {
         this._piMember0._visible = !this._btnOpenClose.selected;
         this._piMember1._visible = !this._btnOpenClose.selected;
         this._piMember2._visible = !this._btnOpenClose.selected;
         this._piMember3._visible = !this._btnOpenClose.selected;
         this._piMember4._visible = !this._btnOpenClose.selected;
         this._piMember5._visible = !this._btnOpenClose.selected;
         this._piMember6._visible = !this._btnOpenClose.selected;
         this._piMember7._visible = !this._btnOpenClose.selected;
      }
      else
      {
         var _loc3_ = !this.api.kernel.OptionsManager.getOption("FightGroupAutoLock");
         this.api.kernel.OptionsManager.setOption("FightGroupAutoLock",_loc3_);
      }
   }
   function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnOpenClose:
            this.gapi.showTooltip(this.api.lang.getText("PARTY_OPEN_CLOSE"),_loc2_.target,20);
            break;
         case this["\x1d\f\n"]:
            this.gapi.showTooltip("<b>" + this.api.lang.getText("INFORMATIONS") + "</b>\n" + this.api.lang.getText("TOTAL_LEVEL") + " : " + "<b>" + this["\x1d\x19\x01"] + "</b>\n" + this.api.lang.getText("TOTAL_DISCERNMENT") + " : " + "<b>" + this["\x1d\x1b\x0f"] + "</b>",_loc2_.target,20);
            break;
         case this["\x1c\t\x05"]:
            this.gapi.showTooltip(this.api.lang.getText("FIGHT_OPTION_BLOCKJOINEREXCEPTPARTY"),_loc2_.target,20);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
