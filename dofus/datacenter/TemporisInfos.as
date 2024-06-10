class dofus.datacenter.TemporisInfos extends Object
{
   function TemporisInfos(nMaxTempokens)
   {
      super();
      this.api = _global.api;
      mx.["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
      this.initialize(false,nMaxTempokens);
   }
   function get temporisName()
   {
      return this._sTemporisName;
   }
   function get temporisVersion()
   {
      return this._nTemporisVersion;
   }
   function get temporisUIComponents()
   {
      return this._aTemporisUIComponents;
   }
   function get currentTempokens()
   {
      return this._nCurrentTempokens;
   }
   function get maxTempokens()
   {
      return this._nMaxTempokens;
   }
   function initialize(§\x16\x14\x05§, nMaxTempokens)
   {
      this._nMaxTempokens = nMaxTempokens;
      this._nTemporisVersion = this.api.lang.getConfigText("TEMPORIS_CURRENT_VERSION");
      this._sTemporisName = this.api.lang.getText("TEMPORIS_" + this._nTemporisVersion + "_NAME");
      this._aTemporisUIComponents = this.api.lang.getConfigText("TEMPORIS_" + this._nTemporisVersion + "_UI_COMPONENTS");
      this._nCurrentTempokens = this.api.datacenter.Player.Inventory.findFirstItem("unicID",12001).item.Quantity;
      if(_loc2_)
      {
         this["\x17\x07\x19"]({type:"modelChanged",eventName:"infosUpdate"});
      }
   }
}
