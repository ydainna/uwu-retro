class dofus.graphics.gapi.ui.§\x17\x13\x07§.GameResultPlayerLightPVP extends ank.gapi.core.UIBasicComponent
{
   function GameResultPlayerLightPVP()
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
               if(_loc4_.rank == 0 && !_loc5_.datacenter.Basics.aks_current_server["\x18\x0e\x03"]())
               {
                  this["\x1d\x04\x11"]._visible = false;
                  this["\x1c\x1d\x10"]._visible = false;
                  break;
               }
               this["\x1d\x04\x11"]._visible = true;
               this["\x1c\x1d\x10"]._visible = true;
               if(_loc4_.winhonour >= 0)
               {
                  this._lblCurrentHonour.text = "" + (_loc4_["\x18\x07\r"] - _loc4_.winhonour);
                  this["\x1a\x18\x03"](this["\x1d\x04\x11"],39168);
                  this["\x1d\x04\x11"].text = !_global.isNaN(_loc4_.winhonour) ? " + " + new ank.utils.ExtendedString(_loc4_.winhonour)["\x15\x1e\x01"](_loc5_.lang.getConfigText("THOUSAND_SEPARATOR"),3) : "";
               }
               else
               {
                  var _loc6_ = Math.abs(_loc4_.winhonour);
                  this._lblCurrentHonour.text = "" + (_loc4_["\x18\x07\r"] - _loc4_.winhonour);
                  this["\x1a\x18\x03"](this["\x1d\x04\x11"],12648448);
                  this["\x1d\x04\x11"].text = !_global.isNaN(_loc6_) ? " - " + new ank.utils.ExtendedString(_loc6_)["\x15\x1e\x01"](_loc5_.lang.getConfigText("THOUSAND_SEPARATOR"),3) : "";
               }
               this["\x1c\x1d\x10"].text = !_global.isNaN(_loc4_.rank) ? _loc4_.rank : "";
               this["\x1c\x19\x1c"].text = !_global.isNaN(_loc4_.kama) ? new ank.utils.ExtendedString(_loc4_.kama)["\x15\x1e\x01"](_loc5_.lang.getConfigText("THOUSAND_SEPARATOR"),3) : "0";
               this._sDisgrace = !_global.isNaN(_loc4_.disgrace) ? new ank.utils.ExtendedString(_loc4_.disgrace)["\x15\x1e\x01"](_loc5_.lang.getConfigText("THOUSAND_SEPARATOR"),3) : "";
               this._sHonour = !_global.isNaN(_loc4_["\x18\x07\r"]) ? new ank.utils.ExtendedString(_loc4_["\x18\x07\r"])["\x15\x1e\x01"](_loc5_.lang.getConfigText("THOUSAND_SEPARATOR"),3) : "";
               var _loc7_ = _loc4_.alignment;
               if(this["\x1c\x1d\x10"]._visible && _loc7_ > 0)
               {
                  this["\x1d\x07\x15"].gotoAndStop(_loc7_ + 1);
               }
               this.createEmptyMovieClip("\x1d\f\x0f",10);
               var _loc8_ = false;
               var _loc9_ = _loc4_.items.length;
               while((_loc9_ = _loc9_ - 1) >= 0)
               {
                  var _loc10_ = this["\x1d\f\x0e"]._x + 24 * _loc9_;
                  var _loc11_ = this["\x1d\f\x0e"]._y + 24 * _loc9_;
                  if(_loc10_ < this["\x1d\f\x0e"]._x + this["\x1d\f\x0e"]._width)
                  {
                     var _loc12_ = _loc4_.items[_loc9_];
                     var _loc13_ = this["\x1d\f\x0f"].attachMovie("Container","_ctrItem" + _loc9_,_loc9_,{_x:_loc10_,_y:this["\x1d\f\x0e"]._y + 1});
                     _loc13_["\x1a\x19\x18"](18,18);
                     _loc13_.addEventListener("over",this);
                     _loc13_.addEventListener("out",this);
                     _loc13_.addEventListener("click",this);
                     _loc13_.enabled = true;
                     _loc13_.margin = 0;
                     _loc13_.contentData = _loc12_;
                  }
                  else
                  {
                     _loc8_ = true;
                  }
               }
               this["\x1d\x05\x03"]._visible = _loc8_;
               break;
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
      this["\x1d\n\x16"].onRollOver = function()
      {
         this._parent.over({target:this});
      };
      this["\x1d\n\x16"].onRollOut = function()
      {
         this._parent.out({target:this});
      };
   }
   function over(oEvent)
   {
      var _loc3_ = _global.api;
      switch(_loc2_.target)
      {
         case this["\x1d\n\x16"]:
            this.gapi.showTooltip(_loc3_.lang.getText("HONOUR_POINTS") + " : " + this._sHonour + "\n" + _loc3_.lang.getText("DISGRACE_POINTS") + " : " + this._sDisgrace,this._lblCurrentHonour,22,{bXLimit:true,bYLimit:false});
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
