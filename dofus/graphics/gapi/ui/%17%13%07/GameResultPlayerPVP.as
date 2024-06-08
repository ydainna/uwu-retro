class dofus.§\x18\x03\x10§.gapi.ui.§\x17\x13\x07§.GameResultPlayerPVP extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function GameResultPlayerPVP()
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
      var _loc5_ = this["\x1d\r\t"]._parent.api;
      if(_loc2_)
      {
         switch(_loc4_.type)
         {
            case "monster":
            case "taxcollector":
            case "player":
               this["\x1c\x1b\x0f"].text = _loc4_.name;
               if(_loc4_.rank == 0 && !_loc5_.datacenter.Basics.aks_current_server["\x18\x0e\x03"]())
               {
                  this["\x1e\x06\x10"]._visible = false;
                  this["\x1d\x04\x11"]._visible = false;
                  this["\x1e\x06\r"]._visible = false;
                  this["\x1d\x04\x10"]._visible = false;
                  this["\x1c\x1d\x10"]._visible = false;
               }
               else
               {
                  this["\x1e\x06\x10"]._visible = true;
                  this["\x1e\x06\r"]._visible = true;
                  this["\x1d\x04\x10"]._visible = true;
                  this["\x1d\x04\x11"]._visible = true;
                  this["\x1c\x1d\x10"]._visible = true;
                  if(_loc5_.datacenter.Basics.aks_current_server["\x18\x0e\x03"]())
                  {
                     if(_global.isNaN(_loc4_.minxp))
                     {
                        this["\x1e\x06\r"]._visible = false;
                     }
                     this["\x1e\x06\r"]["\x18\x1d\x03"] = _loc4_.minxp;
                     this["\x1e\x06\r"]["\x18\x19\x12"] = _loc4_.maxxp;
                     this["\x1e\x06\r"].value = _loc4_.xp;
                  }
                  else
                  {
                     this["\x1e\x06\r"].uberMinimum = _loc0_ = _loc4_.mindisgrace;
                     this["\x1e\x06\r"]["\x18\x1d\x03"] = _loc0_;
                     this["\x1e\x06\r"].uberMaximum = _loc0_ = _loc4_.maxdisgrace;
                     this["\x1e\x06\r"]["\x18\x19\x12"] = _loc0_;
                     this["\x1e\x06\r"].value = _loc4_["\x17\x07\x17"];
                     this["\x1e\x06\r"].uberValue = _loc4_["\x17\x07\x17"] - (!_global.isNaN(_loc4_.windisgrace) ? _loc4_.windisgrace : 0);
                  }
                  this["\x1e\x06\x10"].uberMinimum = _loc0_ = _loc4_.minhonour;
                  this["\x1e\x06\x10"]["\x18\x1d\x03"] = _loc0_;
                  this["\x1e\x06\x10"].uberMaximum = _loc0_ = _loc4_.maxhonour;
                  this["\x1e\x06\x10"]["\x18\x19\x12"] = _loc0_;
                  if(_loc4_.winhonour >= 0)
                  {
                     this["\x1e\x06\x10"].value = _loc4_["\x18\x07\r"];
                     this["\x1e\x06\x10"].uberValue = _loc4_["\x18\x07\r"] - _loc4_.winhonour;
                  }
                  else
                  {
                     this["\x1e\x06\x10"].value = _loc4_["\x18\x07\r"] - _loc4_.winhonour;
                     this["\x1e\x06\x10"].styleName = "BrownProgressBarLoss";
                     this["\x1e\x06\x10"].uberValue = _loc4_["\x18\x07\r"];
                  }
               }
               this["\x1d\x04\x11"].text = !_global.isNaN(_loc4_.winhonour) ? new ank.utils.ExtendedString(_loc4_.winhonour)["\x15\x1e\x01"](_loc5_.lang.getConfigText("THOUSAND_SEPARATOR"),3) : "";
               if(!_loc5_.datacenter.Basics.aks_current_server["\x18\x0e\x03"]())
               {
                  this["\x1d\x04\x10"].text = !_global.isNaN(_loc4_.windisgrace) ? _loc4_.windisgrace : "";
               }
               else
               {
                  this["\x1d\x04\x10"].text = !_global.isNaN(_loc4_.winxp) ? new ank.utils.ExtendedString(_loc4_.winxp)["\x15\x1e\x01"](_loc5_.lang.getConfigText("THOUSAND_SEPARATOR"),3) : "";
               }
               this["\x1c\x1d\x10"].text = !_global.isNaN(_loc4_.rank) ? _loc4_.rank : "";
               this["\x1c\x19\x1c"].text = !_global.isNaN(_loc4_.kama) ? _loc4_.kama : "";
               this["\x1c\x1a\x07"].text = _loc4_.level;
               if(_loc4_.bDead)
               {
                  this["\x1d\x05\r"].contentPath = "";
                  this["\x1d\n\x13"]._visible = true;
               }
               else
               {
                  this["\x1d\x05\r"].contentPath = dofus.Constants["\x18\x04\x16"] + _loc4_.gfx + ".swf";
                  this["\x1d\n\x13"]._visible = false;
               }
               var _loc6_ = _loc4_.alignment;
               if(this["\x1c\x1d\x10"]._visible && _loc6_ > 0)
               {
                  this["\x1d\x07\x15"].gotoAndStop(_loc6_ + 1);
               }
               this.createEmptyMovieClip("\x1d\f\x0f",10);
               var _loc7_ = false;
               var _loc8_ = _loc4_.items.length;
               while((_loc8_ = _loc8_ - 1) >= 0)
               {
                  var _loc9_ = this["\x1d\f\x0e"]._x + 24 * _loc8_;
                  if(_loc9_ < this["\x1d\f\x0e"]._x + this["\x1d\f\x0e"]._width)
                  {
                     var _loc10_ = _loc4_.items[_loc8_];
                     var _loc11_ = this["\x1d\f\x0f"].attachMovie("Container","_ctrItem" + _loc8_,_loc8_,{_x:_loc9_,_y:this["\x1d\f\x0e"]._y + 1});
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
                     _loc7_ = true;
                  }
               }
               this["\x1d\x05\x03"]._visible = _loc7_;
         }
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1e\x06\x10"]._visible = false;
         this["\x1c\x1b\x0f"].text = "";
         this["\x1e\x06\x10"]["\x18\x1d\x03"] = 0;
         this["\x1e\x06\x10"]["\x18\x19\x12"] = 100;
         this["\x1e\x06\x10"].value = 0;
         this["\x1e\x06\x10"].uberValue = 0;
         this["\x1e\x06\r"]["\x18\x1d\x03"] = 0;
         this["\x1e\x06\r"]["\x18\x19\x12"] = 100;
         this["\x1e\x06\r"].value = 0;
         this["\x1e\x06\r"].uberValue = 0;
         this["\x1d\x04\x11"].text = "";
         this["\x1d\x04\x10"].text = "";
         this["\x1c\x19\x1c"].text = "";
         this["\x1d\n\x13"]._visible = false;
         this["\x1d\f\x0f"].removeMovieClip();
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
      this["\x1d\f\x0e"]._visible = false;
      this["\x1e\x06\x10"]._visible = false;
      this["\x1d\n\x13"]._visible = false;
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
      this["\x1e\x06\x10"].enabled = true;
      this["\x1e\x06\x10"].addEventListener("over",this);
      this["\x1e\x06\x10"].addEventListener("out",this);
      this["\x1e\x06\r"].enabled = true;
      this["\x1e\x06\r"].addEventListener("over",this);
      this["\x1e\x06\r"].addEventListener("out",this);
   }
   function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1d\x05\x03"]:
            var _loc3_ = this["\x1e\x03\x1a"].items;
            var _loc4_ = "";
            var _loc5_ = 0;
            while(_loc5_ < _loc3_.length)
            {
               var _loc6_ = _loc3_[_loc5_];
               if(_loc5_ > 0)
               {
                  _loc4_ += "\n";
               }
               _loc4_ += _loc6_.Quantity + " x " + _loc6_.name;
               _loc5_ = _loc5_ + 1;
            }
            if(_loc4_ != "")
            {
               this["\x1d\r\t"].gapi.showTooltip(_loc4_,_loc2_.target,30);
            }
            break;
         case this["\x1e\x06\x10"]:
            this["\x1d\r\t"].gapi.showTooltip(this["\x1e\x03\x1a"]["\x18\x07\r"] + " / " + this["\x1e\x03\x1a"].maxhonour,_loc2_.target,20);
            break;
         case this["\x1e\x06\r"]:
            this["\x1d\r\t"].gapi.showTooltip(this["\x1e\x03\x1a"]["\x17\x07\x17"] + " / " + this["\x1e\x03\x1a"].maxdisgrace,_loc2_.target,20);
            break;
         default:
            var _loc7_ = _loc2_.target.contentData;
            var _loc8_ = _loc7_.style + "ToolTip";
            this["\x1d\r\t"].gapi.showTooltip(_loc7_.Quantity + " x " + _loc7_.name,_loc2_.target,20,undefined,_loc8_);
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
