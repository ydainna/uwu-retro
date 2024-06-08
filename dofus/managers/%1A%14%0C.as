class dofus.§\x18\x18\x0b§.§\x1a\x14\f§ extends dofus.utils.§\x16\x04\x07§
{
   function §\x1a\x14\f§()
   {
      super();
   }
   function initialize(oAPI, §\x1b\x04\r§, §\x1a\x1b\x14§)
   {
      super.initialize(oAPI);
      this["\x1e\x0b\n"] = _loc4_;
      this["\x1e\t\x14"] = _loc5_;
      this["\x1e\x03\x10"] = new Object();
   }
   function §\x18\x15\x18§(§\x1a\x1b\x0f§)
   {
      if(this["\x1e\t\x11"] == _loc2_)
      {
         return undefined;
      }
      this["\x1e\t\x11"] = _loc2_;
      this["\x16\x1c\x0f"]();
      this["\x1d\f\x19"].unloadClip(this._mc);
      this.api.ui.loadUIComponent("Waiting","Waiting");
      this["\x1b\x1e\x1b"] = _root._loader.copyAndOrganizeDataServersForDataBank(dofusutils.["\x17\t\x11"].STANDARD_DATA_BANK);
      this["\x1e\x10\x04"] = -1;
      this["\x18\x16\x1c"]();
   }
   function §\x18\x16\x1c§()
   {
      this["\x1e\x10\x04"]++;
      if(this["\x1e\x10\x04"] < this["\x1b\x1e\x1b"].length && this["\x1b\x1e\x1b"].length > 0)
      {
         this["\x1e\x03\x01"] = this["\x1b\x1e\x1b"][this["\x1e\x10\x04"]];
         this["\x1e\b\x14"] = this["\x1e\x03\x01"].url + this["\x1e\t\x14"] + this["\x1e\t\x11"];
         System.security.allowDomain(this["\x1e\x03\x01"].url);
         this["\x1d\f\x19"] = new MovieClipLoader();
         this["\x1d\f\x19"].addListener(this);
         this["\x1e\x0e\x0f"] = _global.setInterval(this["\x19\x17\x02"],3000);
         this._mc = _root.createEmptyMovieClip("\x1e\x11\b",_root.getNextHighestDepth());
         this["\x1d\f\x19"].loadClip(this["\x1e\b\x14"],this._mc);
      }
      else
      {
         this.onAllLoadFailed(this._mc);
      }
   }
   function clear()
   {
      this["\x16\x1c\x0f"]();
   }
   function §\x17\x16\x04§()
   {
      return this["\x1e\x03\x01"].url + this["\x1e\t\x14"];
   }
   function §\x16\x1c\x0f§()
   {
      _global.clearInterval(this["\x1e\x0e\x0f"]);
   }
   function §\x16\x1c\x10§()
   {
      this.api.ui.unloadUIComponent("Waiting");
      this.api.ui.unloadUIComponent("CenterText");
   }
   function §\x19\x17\x02§()
   {
      this["\x16\x1c\x0f"]();
      this.onLoadError();
   }
   function onLoadStart()
   {
      this["\x16\x1c\x0f"]();
   }
   function onLoadError(§\x18\x1b\f§)
   {
      this.api.kernel.showMessage(undefined,"Erreur au chargement du fichier \'" + this["\x1e\b\x14"] + "\'","DEBUG_LOG");
      this["\x16\x1c\x0f"]();
      this["\x19\x16\x1d"](_loc2_);
      this["\x18\x16\x1c"]();
   }
   function onLoadProgress()
   {
      this["\x16\x1c\x0f"]();
   }
   function onLoadComplete()
   {
      this["\x16\x1c\x0f"]();
   }
   function onLoadInit(§\x18\x1b\f§)
   {
      this["\x16\x1c\x0f"]();
      this["\x1e\t\x11"] = undefined;
      this["\x16\x1c\x10"]();
      this["\x19\x15\x18"](_loc2_);
   }
   function onAllLoadFailed(§\x18\x1b\f§)
   {
      this.api.kernel.showMessage(undefined,"Chargement du fichier \'" + this["\x1e\t\x11"] + "\' impossible ","DEBUG_LOG");
      this["\x16\x1c\x0f"]();
      this["\x1e\t\x11"] = undefined;
      this["\x16\x1c\x10"]();
      this["\x19\x17\b"](_loc2_);
   }
}
