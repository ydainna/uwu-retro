class dofus.graphics.gapi.§\x17\x01\x06§.Card extends dofus.graphics.gapi.core.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Card";
   static var CARD_CLIP_FOLDER = 118;
   function Card()
   {
      super();
      this.initialize();
   }
   function §\x1e\x1c\x04§()
   {
      return this._nCardID;
   }
   function §\x14\x19§(nCardID)
   {
      this._nCardID = nCardID;
      return this["\x1e\x1c\x04"]();
   }
   function get familyID()
   {
      return this._nFamilyID;
   }
   function set familyID(nFamilyID)
   {
      this._nFamilyID = nFamilyID;
   }
   function §\x04\x1b§()
   {
      return this._sCardName;
   }
   function §\x19\f§(sCardName)
   {
      this._sCardName = sCardName;
      return this["\x04\x1b"]();
   }
   function get rarity()
   {
      return this._nCardRarity;
   }
   function set rarity(nCardRarity)
   {
      this._nCardRarity = nCardRarity;
   }
   function §\x1e\x1b\x01§()
   {
      return this._sCardGfx;
   }
   function §\x14\x02§(sCardGfx)
   {
      this._sCardGfx = sCardGfx;
      return this["\x1e\x1b\x01"]();
   }
   function get iconCardFile()
   {
      return dofus.Constants["\x18\x11\x04"] + (this.rarity + dofus.graphics.gapi.controls.Card.CARD_CLIP_FOLDER) + this.ID + ".swf";
   }
   function get iconFamilyFile()
   {
      return dofus.Constants.FAMILY_CLIP_FOLDER + this.familyID + ".swf";
   }
   function get isUnlocked()
   {
      return this._bIsCardUnlocked;
   }
   function set isUnlocked(bIsCardUnlocked)
   {
      this._bIsCardUnlocked = bIsCardUnlocked;
   }
   function get isFoil()
   {
      return this._bIsCardFoil;
   }
   function set isFoil(bFoil)
   {
      this._bIsCardFoil = bFoil;
   }
   function initialize(nCardID, nFamilyID, sCardName, nCardRarity, sCardGfx, bIsCardUnlocked, bIsCardFoil)
   {
      this.api = _global.api;
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.Card.CLASS_NAME);
      this._mcCardLabelBackground._visible = false;
      this._mcFamilyCardBackground._visible = false;
      this._mcFamilyCardForeground._visible = false;
      this._lblCardName._visible = false;
      this._mcCardIDBackground._visible = false;
      this._lblCardID._visible = false;
      this._mcFoilMask._visible = false;
      this._mcInventory._visible = false;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this.initTexts});
   }
   function initData()
   {
      if(this._bIsCardUnlocked)
      {
         this._lblCardName.text = this.name;
         if(this._lblCardName.textWidth > 46)
         {
            this._mcCardLabelBackground._height = 10;
            this._mcCardLabelBackground._y -= 4;
            this._lblCardName["\x1a\x19\x18"](47,15);
            this._lblCardName._x += 1;
            this._lblCardName._y -= 1.68;
            this._lblCardName.multiline = true;
            this._lblCardName.wordWrap = true;
            this._lblCardName.styleName = "BrownCenterExtraSmallBoldCard";
         }
         this._ldrCardIcon._rotation = 30;
         this._ldrCardIcon.contentPath = dofus.Constants["\x18\x11\x04"] + this.getItemCategoryIDByRarity() + "/" + this.ID + ".swf";
         this._ldrFamilyIcon.contentPath = dofus.Constants.FAMILY_CLIP_FOLDER + this.familyID + ".swf";
         this._lblCardID.text = "#" + this.ID;
         this._mcCardLabelBackground._visible = true;
         this._mcFamilyCardBackground._visible = true;
         this._mcFamilyCardForeground._visible = true;
         this._lblCardName._visible = true;
         this._mcCardIDBackground._visible = true;
         this._lblCardID._visible = true;
         this._mcFoilMask._visible = this._bIsCardFoil;
      }
      else
      {
         this._lblCardNameNotUnlocked.text = "#" + this.ID + " " + this.name + "\n\n" + this.api.lang.getText("RARITY") + " : " + this.rarity;
         this._lblCardNameNotUnlocked.styleName = "BrownCenterMediumBoldCardLabel";
         var _loc2_ = new dofus.datacenter.ttg.TtgCard(this.ID,false);
         var _loc3_ = dofus.datacenter.Item(this.api.datacenter.Player.Inventory.findFirstItem("unicID",_loc2_.correspondingItemID).item);
         if(_loc3_ != undefined)
         {
            this._mcInventory._visible = true;
         }
      }
   }
   function initTexts()
   {
   }
   function getItemCategoryIDByRarity()
   {
      switch(this.rarity)
      {
         case dofus.datacenter.ttg.TtgCard.CARD_RARITY_COMMON:
            return 119;
         case dofus.datacenter.ttg.TtgCard.CARD_RARITY_RARE:
            return 120;
         case dofus.datacenter.ttg.TtgCard.CARD_RARITY_EPIC:
            return 121;
         case dofus.datacenter.ttg.TtgCard.CARD_RARITY_UNIC:
            return 122;
         default:
      }
   }
}
