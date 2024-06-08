class dofus.§\x18\x03\x10§.battlefield.SpellFullIcon extends ank.utils.§\x1a\t\t§
{
   function SpellFullIcon()
   {
      super();
      this.api = _global.api;
      this.addToQueue({object:this,method:this.buildFullIcon});
   }
   function §\t\x17§()
   {
      return this["\x1e\x05\x14"];
   }
   function §\x1d\r§(§\x1a\x02\x06§)
   {
      this["\x1e\x05\x14"] = _loc2_;
      return this["\t\x17"]();
   }
   function get ldrBackground()
   {
      return this._ldrBackground;
   }
   function get ldrUp()
   {
      return this._ldrUp;
   }
   function get breedID()
   {
      return this._nBreedID;
   }
   function set breedID(nBreedID)
   {
      this._nBreedID = nBreedID;
   }
   function getColorIndexForColorsArrays()
   {
      var _loc2_ = this.api.kernel.OptionsManager.getOption("RemasteredSpellIconsPack");
      switch(_loc2_)
      {
         case dofus.managers.OptionsManager.OPTION_SPELL_PACK_REMASTERED:
            var _loc3_ = 0;
            break;
         case dofus.managers.OptionsManager.OPTION_SPELL_PACK_CONTRAST:
            _loc3_ = 1;
            break;
         case dofus.managers.OptionsManager.OPTION_SPELL_PACK_CLASSIC:
            if(this._nBreedID == undefined)
            {
               _loc3_ = 2;
               break;
            }
            var _loc4_ = this.api.lang.getClassText(this._nBreedID).di;
            _loc3_ = !_loc4_ ? 2 : 3;
            break;
         default:
            _loc3_ = 0;
      }
      return _loc3_;
   }
   function buildFullIcon()
   {
      this._ldrBackground.addEventListener("initialization",this);
      this._ldrUp.addEventListener("initialization",this);
      var _loc2_ = dofus.Constants.SPELLS_ICONS_BACKGROUNDS_PATH + this["\x1e\x05\x14"].iconProperties.backgroundFileID + ".swf";
      var _loc3_ = dofus.Constants.SPELLS_ICONS_FRAMES_PATH + this["\x1e\x05\x14"].iconProperties.upFileID + ".swf";
      this._ldrBackground.contentPath = _loc2_;
      this._ldrUp.contentPath = _loc3_;
   }
   function applyColors()
   {
      this.addToQueue({object:this,method:this.applyBackgroundColors});
      this.addToQueue({object:this,method:this.applyUpColors});
      this.addToQueue({object:this,method:this.onColorsApplied});
   }
   function onColorsApplied()
   {
   }
   function applyBackgroundColors()
   {
      var _loc2_ = this.getColorIndexForColorsArrays();
      var _loc3_ = this._ldrBackground.content._spellBackground;
      if(_loc3_ != undefined)
      {
         var _loc4_ = this["\x1e\x05\x14"].iconProperties.backgroundColors[_loc2_];
         if(_loc4_ != undefined)
         {
            var _loc5_ = new Color(_loc3_);
            _loc5_.setRGB(_loc4_);
         }
      }
      var _loc6_ = this._ldrBackground.content._spellFrame;
      if(_loc6_ != undefined)
      {
         var _loc7_ = this["\x1e\x05\x14"].iconProperties.frameColors[_loc2_];
         if(_loc7_ != undefined)
         {
            var _loc8_ = new Color(_loc6_);
            _loc8_.setRGB(_loc7_);
         }
      }
   }
   function applyUpColors()
   {
      var _loc2_ = this.getColorIndexForColorsArrays();
      var _loc3_ = this._ldrUp.content._spellPrint;
      if(_loc3_ != undefined)
      {
         var _loc4_ = this["\x1e\x05\x14"].iconProperties.printColors[_loc2_];
         if(_loc4_ != undefined)
         {
            var _loc5_ = new Color(_loc3_);
            _loc5_.setRGB(_loc4_);
         }
      }
   }
   function initialization(oEvent)
   {
      var _loc3_ = _loc2_.target;
      if(_loc3_ == this._ldrBackground)
      {
         this.applyBackgroundColors();
      }
      else if(_loc3_ == this._ldrUp)
      {
         this.applyUpColors();
      }
   }
}
