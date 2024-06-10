class dofus.graphics.gapi.§\x17\x01\x06§.ConquestZonesViewer extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ConquestZonesViewer";
   static var §\x17\x11\x05§ = -4;
   static var §\x17\x10\x16§ = -3;
   static var §\x17\x10\x15§ = -2;
   static var §\x17\x10\x19§ = -1;
   function ConquestZonesViewer()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.ConquestZonesViewer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this.initData});
   }
   function initTexts()
   {
      this["\x1c\x17\x18"].text = this.api.lang.getText("FILTER");
      this["\x1c\x12\x18"].text = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("CONQUEST_AREA_WORD"),null,false);
      this["\x1c\x12\x1a"].text = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("CONQUEST_AREA_WORD"),null,true);
      this["\x1c\x12\x16"].text = this.api.lang.getText("CONQUEST_STATE_WORD") + " / " + this.api.lang.getText("CONQUEST_PRISM_WORD");
      this["\x1d\x04\x03"].text = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("CONQUEST_VILLAGE_WORD"),null,false);
      this["\x1d\x04\x04"].text = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("CONQUEST_VILLAGE_WORD"),null,true);
      this["\x1d\x04\x02"].text = this.api.lang.getText("CONQUEST_STATE_WORD") + " / " + this.api.lang.getText("CONQUEST_DOOR_WORD") + " / " + this.api.lang.getText("CONQUEST_PRISM_WORD");
   }
   function addListeners()
   {
      var ref = this;
      this["\x1d\x0b\x19"].onRollOver = function()
      {
         ref.over({target:this});
      };
      this["\x1d\x0b\x19"].onRollOut = function()
      {
         ref.out({target:this});
      };
      this["\x1d\x0b\x1a"].onRollOver = function()
      {
         ref.over({target:this});
      };
      this["\x1d\x0b\x1a"].onRollOut = function()
      {
         ref.out({target:this});
      };
      this.api.datacenter.Conquest.addEventListener("worldDataChanged",this);
      this["\x1c\f\x11"].addEventListener("itemSelected",this);
   }
   function §\x1a\n\x17§()
   {
      var _loc2_ = this.api.datacenter.Conquest["\x1b\x19\x0f"];
      var _loc3_ = this["\x1c\f\x11"].selectedItem.value;
      var _loc4_ = new ank.utils.ExtendedArray();
      var _loc5_ = new String();
      var _loc6_ = 0;
      while(_loc6_ < _loc2_["\x16\x04\x1d"].length)
      {
         if(!(_loc3_ == dofus.graphics.gapi.controls.ConquestZonesViewer["\x17\x10\x19"] && !_loc2_["\x16\x04\x1d"][_loc6_]["\x17\x0f\x17"]))
         {
            if(!(_loc3_ == dofus.graphics.gapi.controls.ConquestZonesViewer["\x17\x10\x16"] && !_loc2_["\x16\x04\x1d"][_loc6_]["\x18\r\x01"]()))
            {
               if(!(_loc3_ == dofus.graphics.gapi.controls.ConquestZonesViewer["\x17\x11\x05"] && !_loc2_["\x16\x04\x1d"][_loc6_]["\x18\x10\x0f"]()))
               {
                  if(!(_loc3_ >= 0 && _loc2_["\x16\x04\x1d"][_loc6_].alignment != _loc3_))
                  {
                     if(_loc5_ != _loc2_["\x16\x04\x1d"][_loc6_].areaName)
                     {
                        _loc4_.push({area:_loc2_["\x16\x04\x1d"][_loc6_]["\x16\x04\x1c"]});
                        _loc5_ = _loc2_["\x16\x04\x1d"][_loc6_].areaName;
                     }
                     _loc4_.push(_loc2_["\x16\x04\x1d"][_loc6_]);
                  }
               }
            }
         }
         _loc6_ = _loc6_ + 1;
      }
      this["\x1d\x06\f"].dataProvider = _loc4_;
   }
   function initData()
   {
      var _loc2_ = this.api.datacenter.Conquest["\x1b\x19\x0f"];
      this["\x1c\x18\n"].text = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("CONQUEST_POSSESSED_WORD"),"f",false) + " : " + _loc2_["\x1a\x03\x04"] + " / " + _loc2_["\x1a\x06\x13"] + " / " + _loc2_["\x1b\x11\x03"];
      this["\x1c\x18\f"].text = ank.utils.PatternDecoder["\x16\x1d\x15"](this.api.lang.getText("CONQUEST_POSSESSED_WORD"),"m",false) + " : " + _loc2_["\x1a\x03\x05"] + " / " + _loc2_["\x1b\x11\x06"];
      this["\x1d\x07\n"].dataProvider = _loc2_["\x1b\x17\x1a"];
      var _loc3_ = new ank.utils.ExtendedArray();
      var _loc4_ = this.api.lang["\x17\x14\x04"]();
      for(var s in _loc4_)
      {
         if(_loc4_[s].c)
         {
            _loc3_.push({label:this.api.lang.getText("CONQUEST_ALIGNED_AREAS",[_loc4_[s].n]),value:s});
         }
      }
      _loc3_.push({label:this.api.lang.getText("CONQUEST_HOSTILE_AREAS"),value:dofus.graphics.gapi.controls.ConquestZonesViewer["\x17\x10\x19"]});
      _loc3_.push({label:this.api.lang.getText("CONQUEST_CAPTURABLE_AREAS"),value:dofus.graphics.gapi.controls.ConquestZonesViewer["\x17\x10\x16"]});
      _loc3_.push({label:this.api.lang.getText("CONQUEST_VULNERALE_AREAS"),value:dofus.graphics.gapi.controls.ConquestZonesViewer["\x17\x11\x05"]});
      _loc3_.push({label:this.api.lang.getText("CONQUEST_ALL_AREAS"),value:dofus.graphics.gapi.controls.ConquestZonesViewer["\x17\x10\x15"]});
      this["\x1c\f\x11"].dataProvider = _loc3_;
      this["\x1c\f\x11"].selectedIndex = _loc3_.findFirstItem("value",this.api.kernel.OptionsManager.getOption("ConquestFilter")).index;
      this["\x1a\n\x17"]();
   }
   function over(§\x17\x0e\x03§)
   {
      var _loc3_ = this.api.datacenter.Conquest["\x1b\x19\x0f"];
      switch(_loc2_.target)
      {
         case this["\x1d\x0b\x19"]:
            this.api.ui.showTooltip(this.api.lang.getText("CONQUEST_GOT_ZONES",[_loc3_["\x1a\x03\x04"],_loc3_["\x1a\x06\x13"],_loc3_["\x1a\x03\x05"],_loc3_["\x1b\x11\x03"]]),this["\x1d\x0b\x19"],-55);
            break;
         case this["\x1d\x0b\x1a"]:
            this.api.ui.showTooltip(this.api.lang.getText("CONQUEST_GOT_VILLAGES",[_loc3_["\x1a\x03\x05"],_loc3_["\x1b\x11\x06"]]),this["\x1d\x0b\x1a"],-20);
      }
   }
   function out(§\x17\x0e\x03§)
   {
      this.api.ui.hideTooltip();
   }
   function worldDataChanged(§\x17\x0e\x03§)
   {
      this.addToQueue({object:this,method:this.initData});
   }
   function itemSelected(§\x17\x0e\x03§)
   {
      this.api.kernel.OptionsManager.setOption("ConquestFilter",this["\x1c\f\x11"].selectedItem.value);
      this["\x1a\n\x17"]();
   }
}
