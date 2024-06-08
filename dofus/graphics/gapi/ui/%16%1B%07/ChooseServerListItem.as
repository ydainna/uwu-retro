class dofus.§\x18\x03\x10§.gapi.ui.§\x16\x1b\x07§.ChooseServerListItem extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function ChooseServerListItem()
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
      var _loc5_ = this["\x1d\r\t"]._parent._parent.api;
      if(_loc2_)
      {
         this["\x1e\x03\x18"] = _loc4_;
         _loc4_.sortFlag = _loc4_.language;
         _loc4_.sortName = _loc4_.label;
         _loc4_.sortType = _loc4_.type;
         _loc4_.sortOnline = _loc4_["\x1b\t\x19"];
         _loc4_.sortCommunity = _loc4_["\x16\x1d\x1c"];
         _loc4_.sortPopulation = _loc4_["\x1a\x06\x10"];
         var _loc6_ = new String();
         switch(_loc4_["\x16\x1d\x1b"])
         {
            case 0:
               _loc6_ = "fr";
               break;
            case 1:
               _loc6_ = "en";
               break;
            case 3:
               _loc6_ = "de";
               break;
            case 4:
               _loc6_ = "es";
               break;
            case 5:
               _loc6_ = "ru";
               break;
            case 6:
               _loc6_ = "pt";
               break;
            case 7:
               _loc6_ = "nl";
               break;
            case 8:
               _loc6_ = "jp";
               break;
            case 9:
               _loc6_ = "it";
               break;
            case 2:
            default:
               _loc6_ = "us";
         }
         this["\x1d\x05\x0b"].contentPath = "Flag_" + _loc6_;
         this["\x1c\x1b\x0f"].text = _loc4_.sortName;
         this["\x1c\x15\b"].text = _loc4_.sortCommunity;
         switch(_loc4_.state)
         {
            case dofus.datacenter.["\x1a\x14\x05"].SERVER_OFFLINE:
               this["\x1c\x1c\t"].styleName = "RedCenterSmallLabel";
               break;
            case dofus.datacenter.["\x1a\x14\x05"].SERVER_ONLINE:
               this["\x1c\x1c\t"].styleName = "GreenCenterSmallLabel";
               break;
            default:
               this["\x1c\x1c\t"].styleName = "BrownCenterSmallLabel";
         }
         this["\x1c\x1c\t"].text = _loc4_.sortOnline;
         switch(_loc4_.sortPopulation)
         {
            case 0:
               this["\x1c\x1c\x1c"].styleName = "GreenCenterSmallLabel";
               break;
            case 1:
               this["\x1c\x1c\x1c"].styleName = "BlueCenterSmallLabel";
               break;
            case 2:
               this["\x1c\x1c\x1c"].styleName = "RedCenterSmallLabel";
               break;
            default:
               this["\x1c\x1c\x1c"].styleName = "BrownCenterSmallLabel";
         }
         this["\x1c\x1c\x1c"].text = _loc4_["\x1a\x06\x11"];
         this["\x1d\x03\x18"].text = _loc4_.type;
         if(_loc4_["\x1b\x12\n"] == dofus.datacenter.["\x1a\x14\x05"]["\x1a\x14\x10"])
         {
            this["\x1c\x1b\x0f"].styleName = "RedLeftSmallLabel";
            this["\x1d\x03\x18"].styleName = "RedCenterSmallLabel";
            this["\x1d\f\x02"]._visible = true;
         }
         else
         {
            this["\x1c\x1b\x0f"].styleName = "BrownLeftSmallLabel";
            this["\x1d\x03\x18"].styleName = "BrownCenterSmallLabel";
            this["\x1d\f\x02"]._visible = false;
         }
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1d\x05\x0b"].contentPath = "";
         this["\x1c\x1b\x0f"].text = "";
         this["\x1d\x03\x18"].text = "";
         this["\x1c\x1c\t"].text = "";
         this["\x1c\x15\b"].text = "";
         this["\x1c\x1c\x1c"].text = "";
         this["\x1d\f\x02"]._visible = false;
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
   }
   function over()
   {
      if(!this["\x1e\x03\x18"].friendCharactersCount)
      {
         return undefined;
      }
      var _loc2_ = this["\x1d\r\t"].gapi.api;
      var _loc3_ = ank.utils.["\x1a\x04\t"]["\x16\x1d\x15"](_loc2_.lang.getText("A_POSSESS_CHARACTER",[this["\x1e\x03\x18"]["\x1a\x12\x04"],this["\x1e\x03\x18"].friendCharactersCount]),null,this["\x1e\x03\x18"].friendCharactersCount == 1);
      _loc2_.ui.showTooltip(_loc3_,this._mcOver,-20);
   }
   function out(oEvent)
   {
      this["\x1d\r\t"].gapi.api.ui.hideTooltip();
   }
}
