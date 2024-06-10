class dofus.graphics.gapi.ui.§\x17\x13\x07§.GameResultPlayerLight extends ank.gapi.core.UIBasicComponent
{
   function GameResultPlayerLight()
   {
      super();
   }
   function §\x17\x07§(§\x18\x1b\x17§)
   {
      this["\x1d\r\t"] = _loc2_;
      return this.list;
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      this["\x1e\x03\x1a"] = _loc4_;
      if(_loc2_)
      {
         switch(_loc4_.type)
         {
            case "monster":
            case "taxcollector":
            case "player":
               var _loc5_ = _global.api;
               this["\x1d\x04\x13"].text = !_global.isNaN(_loc4_.winxp) ? new ank.utils.ExtendedString(_loc4_.winxp)["\x15\x1e\x01"](_loc5_.lang.getConfigText("THOUSAND_SEPARATOR"),3) : "0";
               this._sGuildXP = !_global.isNaN(_loc4_.guildxp) ? new ank.utils.ExtendedString(_loc4_.guildxp)["\x15\x1e\x01"](_loc5_.lang.getConfigText("THOUSAND_SEPARATOR"),3) : "0";
               this._sMountXP = !_global.isNaN(_loc4_.mountxp) ? new ank.utils.ExtendedString(_loc4_.mountxp)["\x15\x1e\x01"](_loc5_.lang.getConfigText("THOUSAND_SEPARATOR"),3) : "0";
               this["\x1c\x19\x1c"].text = !_global.isNaN(_loc4_.kama) ? new ank.utils.ExtendedString(_loc4_.kama)["\x15\x1e\x01"](_loc5_.lang.getConfigText("THOUSAND_SEPARATOR"),3) : "0";
               this.createEmptyMovieClip("\x1d\f\x0f",10);
               var _loc6_ = false;
               var _loc7_ = _loc4_.items.length;
               while((_loc7_ = _loc7_ - 1) >= 0)
               {
                  var _loc8_ = this["\x1d\f\x0e"]._x + 24 * _loc7_;
                  var _loc9_ = this["\x1d\f\x0e"]._y + 24 * _loc7_;
                  if(_loc8_ < this["\x1d\f\x0e"]._x + this["\x1d\f\x0e"]._width)
                  {
                     var _loc10_ = _loc4_.items[_loc7_];
                     var _loc11_ = this["\x1d\f\x0f"].attachMovie("Container","_ctrItem" + _loc7_,_loc7_,{_x:_loc8_,_y:this["\x1d\f\x0e"]._y + 1});
                     _loc11_["\x1a\x19\x18"](18,18);
                     _loc11_.addEventListener("over",this);
                     _loc11_.addEventListener("out",this);
                     _loc11_.addEventListener("click",this);
                     _loc11_.enabled = true;
                     _loc11_.margin = 0;
                     _loc11_.contentData = _loc10_;
                  }
                  else
                  {
                     _loc6_ = true;
                  }
               }
               this["\x1d\x05\x03"]._visible = _loc6_;
         }
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
      this["\x1d\f\x0e"]._alpha = 0;
      this.addToQueue({object:this,method:this.addListeners});
   }
   function size()
   {
      super.size();
   }
   function addListeners()
   {
      var _loc2_ = this;
      this["\x1d\x05\x03"].addEventListener("over",this);
      this["\x1d\x05\x03"].addEventListener("out",this);
      this._mcDetailsXP.onRollOver = function()
      {
         this._parent.over({target:this});
      };
      this._mcDetailsXP.onRollOut = function()
      {
         this._parent.out({target:this});
      };
   }
   function over(oEvent)
   {
      var _loc3_ = _global.api;
      switch(_loc2_.target)
      {
         case this._mcDetailsXP:
            this.gapi.showTooltip(_loc3_.lang.getText("WORD_XP") + " " + _loc3_.lang.getText("XP_GUILD") + " : " + this._sGuildXP + "\n" + _loc3_.lang.getText("WORD_XP") + " " + _loc3_.lang.getText("XP_MOUNT") + " : " + this._sMountXP,this["\x1d\x04\x13"],22,{bXLimit:true,bYLimit:false});
            break;
         case this["\x1d\x05\x03"]:
            var _loc4_ = this["\x1e\x03\x1a"].items;
            var _loc5_ = "";
            var _loc6_ = 0;
            while(_loc6_ < _loc4_.length)
            {
               var _loc7_ = _loc4_[_loc6_];
               if(_loc6_ > 0)
               {
                  _loc5_ += "\n";
               }
               _loc5_ += _loc7_.Quantity + " x " + _loc7_.name;
               _loc6_ = _loc6_ + 1;
            }
            if(_loc5_ != "")
            {
               this["\x1d\r\t"].gapi.showTooltip(_loc5_,_loc2_.target,30);
            }
            break;
         default:
            var _loc8_ = _loc2_.target.contentData;
            var _loc9_ = _loc8_.style + "ToolTip";
            this["\x1d\r\t"].gapi.showTooltip(_loc8_.Quantity + " x " + _loc8_.name,_loc2_.target,20,undefined,_loc9_);
      }
   }
   function out(oEvent)
   {
      this["\x1d\r\t"].gapi.hideTooltip();
   }
   function click(oEvent)
   {
      var _loc3_ = _loc2_.target.contentData;
      if(Key.isDown(dofus.Constants["\x16\x19\x13"]) && _loc3_ != undefined)
      {
         this["\x1d\r\t"]._parent.gapi.api.kernel.GameManager["\x18\n\x1d"](_loc3_);
      }
   }
}
