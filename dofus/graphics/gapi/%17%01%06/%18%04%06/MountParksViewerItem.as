class dofus.graphics.gapi.§\x17\x01\x06§.§\x18\x04\x06§.MountParksViewerItem extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var MAX_PARK_SLOTS = 20;
   function MountParksViewerItem()
   {
      super();
      this.api = _global.api;
   }
   function §\x17\x07§(§\x18\x1b\x17§)
   {
      this["\x1d\r\t"] = _loc2_;
      return this.list;
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      this["\x1c\x0b\x1c"] = _loc2_;
      if(_loc2_)
      {
         this["\x1e\x03\x18"] = _loc4_;
         this["\x1c\x12\x15"].text = _loc4_.areaName;
         this["\x1d\x02\x0e"].text = _loc4_.subareaName;
         this._btnLocate.label = "[" + _loc4_.coordinates + "]";
         this._btnLocate._visible = true;
         this["\x1c\x1b\x06"].text = _loc4_.mounts.length + " / " + _loc4_.size;
         this["\x1c\x0b\b"]._visible = true;
         var _loc5_ = 0;
         while(_loc5_ < dofus.graphics.gapi.controls["\x18\x04\x06"].MountParksViewerItem.MAX_PARK_SLOTS)
         {
            var _loc6_ = this["_ctr" + _loc5_];
            if(_loc5_ < _loc4_.size)
            {
               _loc6_.backgroundRenderer = !_loc4_.mounts[_loc5_]["\x18\x0e\x1c"](this.api) ? "UI_MountGridBackground" : "UI_MyMountGridBackground";
               _loc6_.contentData = _loc4_.mounts[_loc5_];
               _loc6_.addEventListener("onContentLoaded",this);
               _loc6_.addEventListener("over",this);
               _loc6_.addEventListener("out",this);
               _loc6_.enabled = true;
               _loc6_._visible = true;
            }
            else
            {
               _loc6_._visible = false;
            }
            if(_loc4_.size < 11)
            {
               _loc6_._y = 10.8;
            }
            else if(_loc5_ < 10)
            {
               _loc6_._y = 2;
            }
            else
            {
               _loc6_._y = 20;
            }
            _loc5_ = _loc5_ + 1;
         }
      }
      else
      {
         this["\x1c\x0b\b"]._visible = false;
         this._btnLocate._visible = false;
         if(this["\x1c\x12\x15"].text != undefined)
         {
            this["\x1c\x12\x15"].text = "";
            this["\x1d\x02\x0e"].text = "";
            this["\x1c\x1b\x06"].text = "";
         }
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
   }
   function addListeners()
   {
      this._btnLocate.addEventListener("click",this);
      this._btnLocate.addEventListener("over",this);
      this._btnLocate.addEventListener("out",this);
      this["\x1c\x0b\b"].addEventListener("click",this);
      this["\x1c\x0b\b"].addEventListener("over",this);
      this["\x1c\x0b\b"].addEventListener("out",this);
   }
   function over(oEvent)
   {
      var _loc3_ = this["\x1d\r\t"]._parent._parent.api;
      switch(_loc2_.target)
      {
         case this["\x1c\x0b\b"]:
            _loc3_.ui.showTooltip(_loc3_.lang.getText("GUILD_FARM_TELEPORT_TOOLTIP"),_loc2_.target,-20);
            break;
         case this._btnLocate:
            _loc3_.ui.showTooltip(_loc3_.lang.getText("LOCATE"),_loc2_.target,-20);
            break;
         default:
            var _loc4_ = _loc2_.target.contentData;
            _loc3_.ui.showTooltip(_loc4_ == undefined ? _loc3_.lang.getText("CUSTOM_SET_EMPTY_SLOT") : "<b>" + _loc4_.modelName + "</b> " + "<i>(" + _loc4_.name + ")</i> " + (_loc4_.sex != 0 ? "♀" : "♂") + "\n" + _loc3_.lang.getText("OWNER_WORD") + " : " + "<b>" + _loc4_["\x1a\x03\x06"] + "</b>",_loc2_.target,-30,{bXLimit:true,bYLimit:true});
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this._btnLocate:
            this["\x1d\r\t"].gapi.loadUIComponent("MapExplorer","MapExplorer",{mapID:this["\x1e\x03\x18"].mapID});
            break;
         case this["\x1c\x0b\b"]:
            if(!this["\x1c\x0b\x1c"])
            {
               return undefined;
            }
            this.api.network.Guild["\x1b\x0f\x06"](this["\x1e\x03\x18"].mapID);
            break;
      }
   }
   function out(oEvent)
   {
      var _loc3_ = this["\x1d\r\t"]._parent._parent.api;
      _loc3_.ui.hideTooltip();
   }
   function applyRideColor(§\x18\x1b\f§, §\x1b\x1b\x07§, oEvent)
   {
      var _loc5_ = _loc4_.target.contentData["color" + _loc3_];
      if(_loc5_ == -1 || _loc5_ == undefined)
      {
         return undefined;
      }
      var _loc6_ = (_loc5_ & 16711680) >> 16;
      var _loc7_ = (_loc5_ & 65280) >> 8;
      var _loc8_ = _loc5_ & 255;
      var _loc9_ = new Color(_loc2_);
      var _loc10_ = new Object();
      _loc10_ = {ra:0,ga:0,ba:0,rb:_loc6_,gb:_loc7_,bb:_loc8_};
      _loc9_.setTransform(_loc10_);
   }
   function onContentLoaded(oEvent)
   {
      var ref = this;
      oEvent.content.applyRideColor = function(§\x18\x1b\f§, §\x1b\x1a\x1d§, §\x17\x0e\x03§)
      {
         ref.applyRideColor(_loc2_,_loc3_,oEvent);
      };
   }
}
