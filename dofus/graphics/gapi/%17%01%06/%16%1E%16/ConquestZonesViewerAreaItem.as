class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.§\x16\x1e\x16§.ConquestZonesViewerAreaItem extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x19\x01\x15§ = 5;
   function ConquestZonesViewerAreaItem()
   {
      super();
      this.api = _global.api;
      this["\x1d\x05\x02"]._alpha = 0;
      this["\x1d\x0e\x03"]._alpha = 0;
      this["\x1d\x0b\f"]._alpha = 0;
      this["\x1d\r\r"]._alpha = 0;
      this["\x1d\x10\x15"]._alpha = 0;
   }
   function §\x17\x07§(§\x18\x1b\x17§)
   {
      this["\x1d\r\t"] = _loc2_;
      return this.list;
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      if(_loc2_)
      {
         this["\x1e\x03\x18"] = _loc4_;
         if(this["\x1e\x03\x18"].area == undefined || (Number(_loc4_.area) < 0 || _global.isNaN(_loc4_.area)))
         {
            var _loc5_ = this.api.lang["\x17\x1b\x0f"](_loc4_.id).n;
            this["\x1c\x12\x15"].text = _loc5_.substr(0,2) != "//" ? _loc5_ : _loc5_.substr(2);
            this["\x1d\x0b\f"]._alpha = !_loc4_["\x17\x0f\x17"] ? 0 : 100;
            if(_loc4_.alignment == -1)
            {
               this["\x1d\x05\x02"]._alpha = 0;
               this["\x1d\x0e\x03"]._alpha = 100;
            }
            else
            {
               this["\x1d\x0e\x03"]._alpha = 0;
               this["\x1d\x05\x02"]._alpha = 100;
               this["\x1d\x05\x02"].contentPath = dofus.Constants["\x16\x02\x1c"] + _loc4_.alignment + ".swf";
            }
            var ref = this;
            this["\x1d\x11\x01"].onRollOver = function()
            {
               ref.over({target:this});
            };
            this["\x1d\x11\x01"].onRollOut = function()
            {
               ref.out({target:this});
            };
            if(_loc4_["\x1a\x07\x04"] == 0)
            {
               delete this["\x1e\x05\x01"];
               this["\x1c\x1d\x05"].text = "-";
               this["\x1d\r\r"]._alpha = 0;
               delete this["\x1d\r\r"].onRelease;
               delete this["\x1d\r\r"].onRollOver;
               delete this["\x1d\r\r"].onRollOut;
            }
            else
            {
               this["\x1e\x05\x01"] = this.api.lang["\x17\x1b\x11"](_loc4_["\x1a\x07\x04"]);
               this["\x1c\x1d\x05"].text = this["\x1e\x05\x01"].x + ";" + this["\x1e\x05\x01"].y;
               this["\x1d\r\r"]._alpha = 100;
               this["\x1d\r\r"].onRelease = function()
               {
                  ref.click({target:this});
               };
               this["\x1d\r\r"].onRollOver = function()
               {
                  ref.over({target:this});
               };
               this["\x1d\r\r"].onRollOut = function()
               {
                  ref.out({target:this});
               };
            }
            this["\x1d\x07\x16"].onRollOver = function()
            {
               ref.over({target:this});
            };
            this["\x1d\x07\x16"].onRollOut = function()
            {
               ref.out({target:this});
            };
            if(this["\x1d\x0b\f"]._alpha == 0)
            {
               if(!this["\x1d\x0e\x03"].moved)
               {
                  this["\x1d\x0e\x03"]._x += dofus.graphics.gapi.controls["\x16\x1e\x16"].ConquestZonesViewerAreaItem["\x19\x01\x15"];
                  this["\x1d\x0e\x03"].moved = true;
               }
               if(!this["\x1d\x05\x02"].moved)
               {
                  this["\x1d\x05\x02"]._x += dofus.graphics.gapi.controls["\x16\x1e\x16"].ConquestZonesViewerAreaItem["\x19\x01\x15"];
                  this["\x1d\x05\x02"].moved = true;
               }
               if(!this["\x1d\x07\x16"].moved)
               {
                  this["\x1d\x07\x16"]._x += dofus.graphics.gapi.controls["\x16\x1e\x16"].ConquestZonesViewerAreaItem["\x19\x01\x15"];
                  this["\x1d\x07\x16"].moved = true;
               }
            }
            else
            {
               this["\x1d\x0b\r"].onRollOver = function()
               {
                  ref.over({target:this});
               };
               this["\x1d\x0b\r"].onRollOut = function()
               {
                  ref.out({target:this});
               };
               if(this["\x1d\x0e\x03"].moved)
               {
                  this["\x1d\x0e\x03"]._x -= dofus.graphics.gapi.controls["\x16\x1e\x16"].ConquestZonesViewerAreaItem["\x19\x01\x15"];
                  this["\x1d\x0e\x03"].moved = false;
               }
               if(this["\x1d\x05\x02"].moved)
               {
                  this["\x1d\x05\x02"]._x -= dofus.graphics.gapi.controls["\x16\x1e\x16"].ConquestZonesViewerAreaItem["\x19\x01\x15"];
                  this["\x1d\x05\x02"].moved = false;
               }
               if(this["\x1d\x07\x16"].moved)
               {
                  this["\x1d\x07\x16"]._x -= dofus.graphics.gapi.controls["\x16\x1e\x16"].ConquestZonesViewerAreaItem["\x19\x01\x15"];
                  this["\x1d\x07\x16"].moved = false;
               }
            }
            this["\x1d\x10\x15"]._alpha = 0;
            this["\x1d\x02\x12"].text = "";
         }
         else
         {
            this["\x1c\x12\x15"].text = "";
            this["\x1d\x05\x02"]._alpha = 0;
            this["\x1d\x0e\x03"]._alpha = 0;
            this["\x1d\x0b\f"]._alpha = 0;
            this["\x1d\r\r"]._alpha = 0;
            delete this["\x1d\r\r"].onRelease;
            delete this["\x1d\x07\x16"].onRollOver;
            delete this["\x1d\x07\x16"].onRollOut;
            delete this["\x1d\x0b\r"].onRollOver;
            delete this["\x1d\x0b\r"].onRollOut;
            delete this["\x1d\x11\x01"].onRollOver;
            delete this["\x1d\x11\x01"].onRollOut;
            this["\x1c\x1d\x05"].text = "";
            if(this["\x1d\x0e\x03"].moved)
            {
               this["\x1d\x0e\x03"]._x -= dofus.graphics.gapi.controls["\x16\x1e\x16"].ConquestZonesViewerAreaItem["\x19\x01\x15"];
               this["\x1d\x0e\x03"].moved = false;
            }
            if(this["\x1d\x05\x02"].moved)
            {
               this["\x1d\x05\x02"]._x -= dofus.graphics.gapi.controls["\x16\x1e\x16"].ConquestZonesViewerAreaItem["\x19\x01\x15"];
               this["\x1d\x05\x02"].moved = false;
            }
            if(this["\x1d\x07\x16"].moved)
            {
               this["\x1d\x07\x16"]._x -= dofus.graphics.gapi.controls["\x16\x1e\x16"].ConquestZonesViewerAreaItem["\x19\x01\x15"];
               this["\x1d\x07\x16"].moved = false;
            }
            this["\x1d\x10\x15"]._alpha = 100;
            this["\x1d\x02\x12"].text = this.api.lang["\x17\x1b\x06"](this["\x1e\x03\x18"].area).n;
         }
      }
      else if(this["\x1c\x12\x15"].text != undefined)
      {
         this["\x1c\x12\x15"].text = "";
         this["\x1d\x05\x02"]._alpha = 0;
         this["\x1d\x0e\x03"]._alpha = 0;
         this["\x1d\x0b\f"]._alpha = 0;
         this["\x1d\r\r"]._alpha = 0;
         this["\x1d\x10\x15"]._alpha = 0;
         this["\x1d\x02\x12"].text = "";
         delete this["\x1d\r\r"].onRelease;
         delete this["\x1d\x07\x16"].onRollOver;
         delete this["\x1d\x07\x16"].onRollOut;
         delete this["\x1d\x0b\r"].onRollOver;
         delete this["\x1d\x0b\r"].onRollOut;
         delete this["\x1d\x11\x01"].onRollOver;
         delete this["\x1d\x11\x01"].onRollOut;
         this["\x1c\x1d\x05"].text = "";
         if(this["\x1d\x0e\x03"].moved)
         {
            this["\x1d\x0e\x03"]._x -= dofus.graphics.gapi.controls["\x16\x1e\x16"].ConquestZonesViewerAreaItem["\x19\x01\x15"];
            this["\x1d\x0e\x03"].moved = false;
         }
         if(this["\x1d\x05\x02"].moved)
         {
            this["\x1d\x05\x02"]._x -= dofus.graphics.gapi.controls["\x16\x1e\x16"].ConquestZonesViewerAreaItem["\x19\x01\x15"];
            this["\x1d\x05\x02"].moved = false;
         }
         if(this["\x1d\x07\x16"].moved)
         {
            this["\x1d\x07\x16"]._x -= dofus.graphics.gapi.controls["\x16\x1e\x16"].ConquestZonesViewerAreaItem["\x19\x01\x15"];
            this["\x1d\x07\x16"].moved = false;
         }
      }
   }
   function click(§\x17\x0e\x03§)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this["\x1d\r\r"])
      {
         this.api.kernel.GameManager.updateCompass(this["\x1e\x05\x01"].x,this["\x1e\x05\x01"].y,true);
      }
   }
   function over(§\x17\x0e\x03§)
   {
      switch(_loc2_.target)
      {
         case this["\x1d\x07\x16"]:
            this.api.ui.showTooltip(this.api.lang.getText("ALIGNMENT") + ": " + (this["\x1e\x03\x18"].alignment <= 0 ? (this["\x1e\x03\x18"].alignment != -1 ? this.api.lang.getText("NEUTRAL_WORD") : this.api.lang.getText("NON_ALIGNED")) : new dofus.datacenter.Alignment(this["\x1e\x03\x18"].alignment,1).name),_root._xmouse,_root._ymouse - 20);
            break;
         case this["\x1d\x0b\r"]:
            this.api.ui.showTooltip(this.api.lang.getText("FIGHTING_PRISM"),_root._xmouse,_root._ymouse - 20);
            break;
         case this["\x1d\r\r"]:
            this.api.ui.showTooltip(this.api.lang.getText("LOCATE"),_root._xmouse,_root._ymouse - 20);
            break;
         case this["\x1d\x11\x01"]:
            var _loc3_ = new String();
            if(this["\x1e\x03\x18"].alignment == this.api.datacenter.Player.alignment.index)
            {
               _loc3_ = this.api.lang.getText("CONQUEST_AREA_OWNED") + "\n";
               if(this["\x1e\x03\x18"]["\x18\x10\x0f"]())
               {
                  _loc3_ += this.api.lang.getText("CONQUEST_AREA_VULNERABLE") + "\n";
               }
               _loc3_ += "\n";
            }
            else if(this["\x1e\x03\x18"]["\x18\r\x01"]())
            {
               _loc3_ = this.api.lang.getText("CONQUEST_AREA_CAN_BE_CAPTURED") + "\n\n";
            }
            else
            {
               _loc3_ = this.api.lang.getText("CONQUEST_AREA_CANT_BE_CAPTURED") + "\n\n";
            }
            _loc3_ += this.api.lang.getText("CONQUEST_NEAR_ZONES") + ":\n";
            var _loc4_ = this["\x1e\x03\x18"]["\x17\x1c\x11"]();
            for(var s in _loc4_)
            {
               var _loc5_ = this.api.lang["\x17\x1b\x0f"](_loc4_[s]).n;
               if(_loc5_.substr(0,2) == "//")
               {
                  _loc5_ = _loc5_.substr(2);
               }
               _loc3_ += " - " + _loc5_ + "\n";
            }
            this.api.ui.showTooltip(_loc3_,_root._xmouse,_root._ymouse + 20);
      }
   }
   function out(§\x17\x0e\x03§)
   {
      this.api.ui.hideTooltip();
   }
}
