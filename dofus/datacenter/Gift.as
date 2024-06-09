class dofus.§\x17\x04\x19§.Gift extends Object
{
   function Gift()
   {
      super();
      this.api = _global.api;
      this._bPlayerWantsAttribution = false;
      mx.["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
   }
   function §\x1e\x1c\x05§()
   {
      return this["\x1d\x17\x01"];
   }
   function §\x14\x1a§(§\x19\b\x0b§)
   {
      this["\x1d\x17\x01"] = _loc2_;
      return this["\x1e\x1c\x05"]();
   }
   function §\f\x02§()
   {
      return this["\x1e\r\b"];
   }
   function §\x1e\r§(sTitle)
   {
      this["\x1e\r\b"] = _loc2_;
      return this["\f\x02"]();
   }
   function §\x01\x0b§()
   {
      return this["\x1c\x0f\x13"];
   }
   function __set__items(eaItems)
   {
      this["\x1c\x0f\x13"] = eaItems;
      return this["\x01\x0b"]();
   }
   function §\f\r§()
   {
      return this["\x1d\x1e\x18"];
   }
   function §\x1e\x14§(§\x19\x10\x06§)
   {
      this["\x1d\x1e\x18"] = _loc2_;
      return this["\f\r"]();
   }
   function get gfxUrl()
   {
      return this._sGfxURL;
   }
   function set gfxUrl(sGfxURL)
   {
      this._sGfxURL = sGfxURL;
   }
   function get desc()
   {
      return this["\x1e\t\x05"];
   }
   function set desc(§\x1a\x12\x01§)
   {
      this["\x1e\t\x05"] = _loc2_;
   }
   function get playerWantsAttribution()
   {
      return this._bPlayerWantsAttribution;
   }
   function set playerWantsAttribution(bPlayerWantsAttribution)
   {
      this._bPlayerWantsAttribution = bPlayerWantsAttribution;
   }
   function get forbidPlayerChoice()
   {
      return this._bForbidPlayerChoice;
   }
   function set forbidPlayerChoice(bForbidPlayerChoice)
   {
      this._bForbidPlayerChoice = bForbidPlayerChoice;
   }
   function get indexOnGiftsStack()
   {
      return this._nIndexOnGiftsStack;
   }
   function set indexOnGiftsStack(nIndexOnGiftsStack)
   {
      this._nIndexOnGiftsStack = nIndexOnGiftsStack;
   }
   function §\x1e\x18\x05§()
   {
      return this["\x1e\b\x1b"];
   }
   function __set__date(§\x1a\x11\x1d§)
   {
      this["\x1e\b\x1b"] = _loc2_;
      return this["\x1e\x18\x05"]();
   }
   function onAttributionStateChanged()
   {
      this["\x17\x07\x19"]({type:"giftAttributionStateChanged",currentValue:this._bPlayerWantsAttribution});
   }
}
