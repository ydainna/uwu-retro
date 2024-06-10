class dofus.graphics.gapi.§\x17\x01\x06§.§\x18\x11\x06§.ItemViewerItem extends ank.gapi.core.UIBasicComponent
{
   function ItemViewerItem()
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
      this["\x1e\x03\x18"] = _loc4_;
      if(_loc2_)
      {
         this["\x1a\x1c\x19"](false);
         this["\x1a\x1e\b"](false);
         if(_loc4_ instanceof dofus.datacenter.["\x17\f\x02"])
         {
            this._lbl.text = _loc4_.description;
            switch(_loc4_.operator)
            {
               case "+":
                  this._lbl.styleName = !this["\x1e\x03\x18"].isOver ? "GreenLeftSmallLabel" : "GreenLeftSmallBoldLabel";
                  break;
               case "-":
                  this._lbl.styleName = !this["\x1e\x03\x18"].isOver ? "RedLeftSmallLabel" : "RedLeftSmallBoldLabel";
                  break;
               default:
                  this._lbl.styleName = "BrownLeftSmallLabel";
            }
            if(this["\x1e\x03\x18"].isExo)
            {
               this._lbl.styleName = "\x16\x0e\x15";
            }
            if((_loc0_ = _loc4_.type) !== 995)
            {
               this["\x1a\x1c\x19"](false,"");
               this._btn.removeEventListener();
            }
            else
            {
               this["\x1a\x1c\x19"](true,"ItemViewerUseHand");
               this._btn.addEventListener("click",this);
            }
            if(_loc4_["\x17\f\x12"] != undefined)
            {
               switch(_loc4_["\x17\f\x12"])
               {
                  case "W":
                     this["\x1a\x1e\b"](true,"IconWaterDommage");
                     break;
                  case "F":
                     this["\x1a\x1e\b"](true,"IconFireDommage");
                     break;
                  case "E":
                     this["\x1a\x1e\b"](true,"IconEarthDommage");
                     break;
                  case "A":
                     this["\x1a\x1e\b"](true,"IconAirDommage");
                     break;
                  case "N":
                     this["\x1a\x1e\b"](true,"IconNeutralDommage");
               }
            }
            else
            {
               switch(Number(_loc4_["\x16\x19\x04"]))
               {
                  case 13:
                     this["\x1a\x1e\b"](true,"IconWaterBonus");
                     break;
                  case 35:
                     this["\x1a\x1e\b"](true,"IconWater");
                     break;
                  case 15:
                     this["\x1a\x1e\b"](true,"IconFireBonus");
                     break;
                  case 34:
                     this["\x1a\x1e\b"](true,"IconFire");
                     break;
                  case 10:
                     this["\x1a\x1e\b"](true,"IconEarthBonus");
                     break;
                  case 33:
                     this["\x1a\x1e\b"](true,"IconEarth");
                     break;
                  case 14:
                     this["\x1a\x1e\b"](true,"IconAirBonus");
                     break;
                  case 36:
                     this["\x1a\x1e\b"](true,"IconAir");
                     break;
                  case 37:
                     this["\x1a\x1e\b"](true,"IconNeutral");
                     break;
                  case 1:
                     this["\x1a\x1e\b"](true,"Star");
                     break;
                  case 11:
                     this["\x1a\x1e\b"](true,"IconVita");
                     break;
                  case 12:
                     this["\x1a\x1e\b"](true,"IconWisdom");
                     break;
                  case 44:
                     this["\x1a\x1e\b"](true,"IconInit");
                     break;
                  case 48:
                     this["\x1a\x1e\b"](true,"IconPP");
                     break;
                  case 2:
                     this["\x1a\x1e\b"](true,"KamaSymbol");
                     break;
                  case 23:
                     this["\x1a\x1e\b"](true,"IconMP");
               }
            }
         }
         else
         {
            this._lbl.text = _loc3_;
            this._lbl.styleName = "BrownLeftSmallLabel";
         }
      }
      else if(this._lbl.text != undefined)
      {
         this["\x1a\x1c\x19"](false,"");
         this._btn.removeEventListener();
         this._lbl.text = "";
         this["\x1a\x1e\b"](false,"");
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
   }
   function createChildren()
   {
      this["\x16\x05\f"]();
   }
   function size()
   {
      super.size();
      this.addToQueue({object:this,method:this["\x16\x05\f"]});
   }
   function §\x16\x05\f§()
   {
      this._lbl["\x1a\x19\x18"](this["\x1d"],this["\x0e\x06"]);
   }
   function §\x1a\x1c\x19§(bShow, §\x1b\x01\x15§)
   {
      this._btn._visible = _loc2_;
      this._btn.icon = _loc3_;
      this["\x18\x1e\x1b"](!_loc2_ ? 0 : 20);
      if(_loc2_ == false)
      {
         this._btn.removeEventListener("click",this);
      }
   }
   function §\x1a\x1e\b§(bShow, §\x1b\x01\x15§)
   {
      this._ldr._visible = _loc2_;
      this._ldr.contentPath = _loc3_;
      this._ldr._x = this["\x1d"] - 17;
   }
   function §\x18\x1e\x1b§(§\x1b\x19\x14§)
   {
      this._lbl._x = _loc2_;
   }
   function click()
   {
      this["\x1d\r\t"].gapi.api.network.Mount.data(this["\x1e\x03\x18"]["\x1a\x03\r"],this["\x1e\x03\x18"]["\x1a\x03\x0e"]);
   }
}
