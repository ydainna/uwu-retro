class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.ColorSelector extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ColorSelector";
   static var §\x18\x19\x13§ = 3;
   var §\x1d\x1c\x0f§ = 1;
   static var §\x18\x05\x16§ = ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"];
   function ColorSelector()
   {
      super();
   }
   function §\x10\x1d§(§\x15\x1b\x1c§)
   {
      this.addToQueue({object:this,method:this.applyColor,params:[_loc2_[0],1]});
      this.addToQueue({object:this,method:this.applyColor,params:[_loc2_[1],2]});
      this.addToQueue({object:this,method:this.applyColor,params:[_loc2_[2],3]});
      return this["\x1e\x16\x07"]();
   }
   function §\x0f\x16§(§\x19\x04\x04§)
   {
      this["\x1d\x13\r"] = _loc2_;
      return this["\x1e\x13\x07"]();
   }
   function §\x1c\x11§(§\x19\x0e\b§)
   {
      this["\x1d\x1c\x1a"] = _loc2_;
      return this["\b\x1c"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.ColorSelector.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
      this.addToQueue({object:this,method:this.addListeners});
   }
   function §\x18\t\x14§()
   {
      this["\x1e\x02\x16"] = {color1:-1,color2:-1,color3:-1};
      this["\x1e\x02\x0b"] = {color1:-1,color2:-1,color3:-1};
   }
   function addListeners()
   {
      this._btnColor1.addEventListener("click",this);
      this._btnColor2.addEventListener("click",this);
      this._btnColor3.addEventListener("click",this);
      this._btnColor1.addEventListener("over",this);
      this._btnColor2.addEventListener("over",this);
      this._btnColor3.addEventListener("over",this);
      this._btnColor1.addEventListener("out",this);
      this._btnColor2.addEventListener("out",this);
      this._btnColor3.addEventListener("out",this);
      this._cpColorPicker.addEventListener("change",this);
      this._btnReset.addEventListener("click",this);
      this._btnReset.addEventListener("over",this);
      this._btnReset.addEventListener("out",this);
      var ref = this;
      this._mcRandomColor1.onPress = function()
      {
         ref.click({target:this});
      };
      this._mcRandomColor2.onPress = function()
      {
         ref.click({target:this});
      };
      this._mcRandomColor3.onPress = function()
      {
         ref.click({target:this});
      };
      this["\x1d\x0f\x0b"].onPress = function()
      {
         ref.click({target:this});
      };
      this._mcRandomColor1.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._mcRandomColor2.onRollOver = function()
      {
         ref.over({target:this});
      };
      this._mcRandomColor3.onRollOver = function()
      {
         ref.over({target:this});
      };
      this["\x1d\x0f\x0b"].onRollOver = function()
      {
         ref.over({target:this});
      };
      this._mcRandomColor1.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._mcRandomColor2.onRollOut = function()
      {
         ref.out({target:this});
      };
      this._mcRandomColor3.onRollOut = function()
      {
         ref.out({target:this});
      };
      this["\x1d\x0f\x0b"].onRollOut = function()
      {
         ref.out({target:this});
      };
   }
   function §\x1a\x15\x12§(§\x19\b\x14§)
   {
      var _loc3_ = this["_btnColor" + this["\x1d\x1c\x0f"]];
      var _loc4_ = this["_btnColor" + _loc2_];
      _loc3_.selected = false;
      _loc4_.selected = true;
      this["\x1d\x1c\x0f"] = _loc2_;
   }
   function applyColor(§\x19\x05\x06§, §\x19\b\x14§)
   {
      if(_loc3_ == undefined)
      {
         _loc3_ = this["\x1d\x1c\x0f"];
      }
      var _loc4_ = {ColoredButton:{bgcolor:(_loc2_ != -1 ? _loc2_ : 16711680),highlightcolor:(_loc2_ != -1 ? _loc2_ : 16777215),bgdowncolor:(_loc2_ != -1 ? _loc2_ : 16711680),highlightdowncolor:(_loc2_ != -1 ? _loc2_ : 16777215)}};
      ank.gapi.styles["\x1b\x0b\x14"]["\x18\x16\x14"](_loc4_);
      this["_btnColor" + _loc3_].styleName = "ColoredButton";
      this["\x1e\x02\x16"]["color" + _loc3_] = _loc2_;
      this["\x1e\x02\x0b"]["color" + _loc3_] = _loc2_;
   }
   function §\x1a\x12\x10§(§\x19\b\x14§)
   {
      var _loc3_ = this["\x1e\x02\x0b"]["color" + _loc2_];
      if(_loc3_ != -1)
      {
         this._cpColorPicker["\x1a\x15\x11"](_loc3_);
      }
      this["\x1a\x15\x12"](_loc2_);
   }
   static function d2h(§\x17\x04\x0e§)
   {
      if(_loc2_ > 255)
      {
         _loc2_ = 255;
      }
      return dofus.graphics.gapi.controls.ColorSelector.HEX_CHARS[Math.floor(_loc2_ / 16)] + dofus.graphics.gapi.controls.ColorSelector.HEX_CHARS[_loc2_ % 16];
   }
   function §\x17\b\x07§(§\x19\b\x14§)
   {
      this["\x1a\x12\x10"](_loc2_);
      var _loc3_ = (this["\x1e\x02\x16"]["color" + _loc2_] & 16711680) >> 16;
      var _loc4_ = (this["\x1e\x02\x16"]["color" + _loc2_] & 65280) >> 8;
      var _loc5_ = this["\x1e\x02\x16"]["color" + _loc2_] & 255;
      var _loc6_ = dofus.graphics.gapi.controls.ColorSelector.d2h(_loc3_) + dofus.graphics.gapi.controls.ColorSelector.d2h(_loc4_) + dofus.graphics.gapi.controls.ColorSelector.d2h(_loc5_);
      if(this["\x1e\x02\x16"]["color" + _loc2_] == undefined || this["\x1e\x02\x16"]["color" + _loc2_] == -1)
      {
         _loc6_ = "";
      }
      var _loc7_ = this.gapi.loadUIComponent("PopupHexa","PopupHexa",{value:_loc6_,params:{targetType:"colorCode",colorIndex:_loc2_}});
      _loc7_.addEventListener("validate",this);
   }
   function §\x1a\x15\x11§(§\x19\b\x14§, §\x19\x10\x10§)
   {
      this["\x1a\x15\x12"](_loc2_);
      this.change({target:this._cpColorPicker,value:_loc3_});
      this.click({target:this["_btnColor" + _loc2_]});
   }
   function §\x18\b\x05§(§\x19\x05\x06§, §\x19\x10\x11§, §\x16\x0f\x07§)
   {
      var _loc5_ = this["\x1a\x0e\r"](_loc2_);
      if(_loc5_.h < 0.5 && !_loc4_)
      {
         _loc3_ = 0 - _loc3_;
      }
      _loc5_.h += _loc3_;
      if(_loc5_.h > 1)
      {
         _loc5_.h--;
      }
      if(_loc5_.h < 0)
      {
         _loc5_.h++;
      }
      return this["\x18\x07\x14"](_loc5_.h,_loc5_.s,_loc5_.l);
   }
   function §\x18\x15\x04§(§\x19\x05\x06§, §\x19\x10\x11§)
   {
      var _loc4_ = this["\x1a\x0e\r"](_loc2_);
      _loc4_.l += _loc3_;
      if(_loc4_.l > 1)
      {
         _loc4_.l = 1;
      }
      if(_loc4_.l < 0)
      {
         _loc4_.l = 0;
      }
      return this["\x18\x07\x14"](_loc4_.h,_loc4_.s,_loc4_.l);
   }
   function §\x16\x1e\x02§(§\x19\x05\x06§)
   {
      var _loc3_ = this["\x1a\x0e\r"](_loc2_);
      var _loc4_ = _loc3_.h + 0.5;
      if(_loc4_ > 1)
      {
         _loc4_ = _loc4_ - 1;
      }
      return this["\x18\x07\x14"](_loc4_,_loc3_.s,_loc3_.l);
   }
   function §\x18\x07\x14§(§\x18\x04\x1a§, §\x1a\x0f\x06§, §\x18\x12\t§)
   {
      if(_loc3_ == 0)
      {
         var _loc5_ = _loc4_ * 255;
         var _loc6_ = _loc4_ * 255;
         var _loc7_ = _loc4_ * 255;
      }
      else
      {
         if(_loc4_ < 0.5)
         {
            var _loc8_ = _loc4_ * (1 + _loc3_);
         }
         else
         {
            _loc8_ = _loc4_ + _loc3_ - _loc3_ * _loc4_;
         }
         var _loc9_ = 2 * _loc4_ - _loc8_;
         _loc5_ = 255 * this.h2rgb(_loc9_,_loc8_,_loc2_ + 0.3333333333333333);
         _loc6_ = 255 * this.h2rgb(_loc9_,_loc8_,_loc2_);
         _loc7_ = 255 * this.h2rgb(_loc9_,_loc8_,_loc2_ - 0.3333333333333333);
      }
      return Number("0x" + dofus.graphics.gapi.controls.ColorSelector.d2h(Math.round(_loc5_)) + dofus.graphics.gapi.controls.ColorSelector.d2h(Math.round(_loc6_)) + dofus.graphics.gapi.controls.ColorSelector.d2h(Math.round(_loc7_)));
   }
   function §\x1a\x0e\r§(§\x19\x05\x06§)
   {
      var _loc3_ = ((_loc2_ & 16711680) >> 16) / 255;
      var _loc4_ = ((_loc2_ & 65280) >> 8) / 255;
      var _loc5_ = (_loc2_ & 255) / 255;
      var _loc6_ = this.min(_loc3_,_loc4_,_loc5_);
      var _loc7_ = this.max(_loc3_,_loc4_,_loc5_);
      var _loc8_ = _loc7_ - _loc6_;
      var _loc9_ = (_loc7_ + _loc6_) / 2;
      if(_loc8_ == 0)
      {
         var _loc10_ = 0;
         var _loc11_ = 0;
      }
      else
      {
         if(_loc9_ < 0.5)
         {
            _loc11_ = _loc8_ / (_loc7_ + _loc6_);
         }
         else
         {
            _loc11_ = _loc8_ / (2 - _loc7_ - _loc6_);
         }
         var _loc12_ = ((_loc7_ - _loc3_) / 6 + _loc8_ / 2) / _loc8_;
         var _loc13_ = ((_loc7_ - _loc4_) / 6 + _loc8_ / 2) / _loc8_;
         var _loc14_ = ((_loc7_ - _loc5_) / 6 + _loc8_ / 2) / _loc8_;
         if(_loc3_ == _loc7_)
         {
            _loc10_ = _loc14_ - _loc13_;
         }
         else if(_loc4_ == _loc7_)
         {
            _loc10_ = 0.3333333333333333 + _loc12_ - _loc14_;
         }
         else if(_loc5_ == _loc7_)
         {
            _loc10_ = 0.6666666666666666 + _loc13_ - _loc12_;
         }
         if(_loc10_ < 0)
         {
            _loc10_ = _loc10_ + 1;
         }
         if(_loc10_ > 1)
         {
            _loc10_ = _loc10_ - 1;
         }
      }
      return {h:_loc10_,s:_loc11_,l:_loc9_};
   }
   function h2rgb(§\x1b\x17\b§, §\x1b\x17\t§, §\x18\x04\x1a§)
   {
      if(_loc4_ < 0)
      {
         _loc4_ = _loc4_ + 1;
      }
      if(_loc4_ > 1)
      {
         _loc4_ = _loc4_ - 1;
      }
      if(6 * _loc4_ < 1)
      {
         return _loc2_ + (_loc3_ - _loc2_) * 6 * _loc4_;
      }
      if(2 * _loc4_ < 1)
      {
         return _loc3_;
      }
      if(3 * _loc4_ < 2)
      {
         return _loc2_ + (_loc3_ - _loc2_) * ((0.6666666666666666 - _loc4_) * 6);
      }
      return _loc2_;
   }
   function min()
   {
      var _loc2_ = Number.POSITIVE_INFINITY;
      var _loc3_ = 0;
      while(_loc3_ < arguments.length)
      {
         if(!_global.isNaN(Number(arguments[_loc3_])) && _loc2_ > Number(arguments[_loc3_]))
         {
            _loc2_ = Number(arguments[_loc3_]);
         }
         _loc3_ = _loc3_ + 1;
      }
      return _loc2_;
   }
   function max()
   {
      var _loc2_ = Number.NEGATIVE_INFINITY;
      var _loc3_ = 0;
      while(_loc3_ < arguments.length)
      {
         if(!_global.isNaN(Number(arguments[_loc3_])) && _loc2_ < Number(arguments[_loc3_]))
         {
            _loc2_ = Number(arguments[_loc3_]);
         }
         _loc3_ = _loc3_ + 1;
      }
      return _loc2_;
   }
   function §\x18\x0f\x16§(§\x19\b\x14§)
   {
      return dofus.Constants["\x16\x11\x03"][this["\x1d\x1c\x1a"]][this["\x1d\x13\r"] - 1] == _loc2_;
   }
   function §\x1a\t\x12§()
   {
      return this["\x18\x15\x04"](dofus.Constants["\x16\x11\x02"][this["\x1d\x1c\x1a"]][this["\x1d\x13\r"] - 1],Math.random() * 0.2 * (Math.random() <= 0.5 ? -1 : 1));
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnColor1:
         case this._btnColor2:
         case this._btnColor3:
            var _loc3_ = Number(_loc2_.target._name.substr(9));
            if(Key.isDown(Key.SHIFT))
            {
               this["\x17\b\x07"](_loc3_);
            }
            else if(Key.isDown(Key.CONTROL))
            {
               this.applyColor(-1,_loc3_);
            }
            else
            {
               this["\x1a\x12\x10"](_loc3_);
            }
            break;
         case this._mcRandomColor1:
         case this._mcRandomColor2:
         case this._mcRandomColor3:
            var _loc4_ = Number(_loc2_.target._name.substr(14));
            this["\x1a\x15\x11"](_loc4_,Math.round(Math.random() * 16777215));
            break;
         case this["\x1d\x0f\x0b"]:
            var _loc5_ = Math.floor(Math.random() * dofus.graphics.gapi.controls.ColorSelector["\x18\x19\x13"]);
            var _loc6_ = Math.ceil(Math.random() * 16777215);
            this["\x1a\x15\x11"](_loc5_,!this["\x18\x0f\x16"](_loc5_) ? _loc6_ : this["\x1a\t\x12"]());
            _loc5_ = _loc5_ + 1;
            if(_loc5_ > dofus.graphics.gapi.controls.ColorSelector["\x18\x19\x13"])
            {
               _loc5_ -= dofus.graphics.gapi.controls.ColorSelector["\x18\x19\x13"];
            }
            this["\x1a\x15\x11"](_loc5_,!this["\x18\x0f\x16"](_loc5_) ? this["\x16\x1e\x02"](_loc6_) : this["\x1a\t\x12"]());
            _loc5_ = _loc5_ + 1;
            if(_loc5_ > dofus.graphics.gapi.controls.ColorSelector["\x18\x19\x13"])
            {
               _loc5_ -= dofus.graphics.gapi.controls.ColorSelector["\x18\x19\x13"];
            }
            this["\x1a\x15\x11"](_loc5_,!this["\x18\x0f\x16"](_loc5_) ? this["\x18\b\x05"](_loc6_,Math.random()) : this["\x1a\t\x12"]());
            break;
         case this._btnReset:
            var _loc7_ = 1;
            while(_loc7_ <= dofus.graphics.gapi.controls.ColorSelector["\x18\x19\x13"])
            {
               this.applyColor(-1,_loc7_);
               _loc7_ = _loc7_ + 1;
            }
            this["\x17\x07\x19"]({type:"change",value:this["\x1e\x02\x16"]});
      }
   }
   function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnColor1:
         case this._btnColor2:
         case this._btnColor3:
            var _loc3_ = Number(_loc2_.target._name.substr(9));
            this["\x17\x07\x19"]({type:"over",index:_loc3_});
            break;
         case this._btnReset:
            this.gapi.showTooltip(this.api.lang.getText("REINIT_WORD"),_loc2_.target,-20);
            break;
         case this._mcRandomColor1:
         case this._mcRandomColor2:
         case this._mcRandomColor3:
            this.gapi.showTooltip(this.api.lang.getText("RANDOM_COLOR"),_root._xmouse,_root._ymouse - 20);
            break;
         case this["\x1d\x0f\x0b"]:
            this.gapi.showTooltip(this.api.lang.getText("RANDOM_ALL_COLORS"),_root._xmouse,_root._ymouse - 20);
      }
   }
   function out(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnColor1:
         case this._btnColor2:
         case this._btnColor3:
            var _loc3_ = Number(_loc2_.target._name.substr(9));
            this["\x17\x07\x19"]({type:"out",index:_loc3_});
            break;
         default:
            this.gapi.hideTooltip();
      }
   }
   function change(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._cpColorPicker)
      {
         this.applyColor(_loc2_.value);
         this["\x17\x07\x19"]({type:"change",value:this["\x1e\x02\x16"]});
      }
   }
   function validate(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.params.targetType) === "colorCode")
      {
         if(!(_global.isNaN(_loc2_.value) || (_loc2_.value > 16777215 || _loc2_.value == undefined)))
         {
            this["\x1a\x15\x11"](_loc2_.params.colorIndex,_loc2_.value);
         }
      }
   }
}
