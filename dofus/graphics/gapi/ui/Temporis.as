class dofus.§\x18\x03\x10§.gapi.ui.Temporis extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Temporis";
   static var MAXIMUM_TABS = 5;
   var §\x1e\b\x19§ = "Component0";
   function Temporis()
   {
      super();
   }
   function §\x11\x14§(§\x1b\b\x1b§)
   {
      this["\x1e\b\x19"] = _loc2_;
      return this["\x1e\x17\x17"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Temporis.CLASS_NAME);
   }
   function destroy()
   {
      this.gapi.hideTooltip();
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
      this.addToQueue({object:this,method:this.initTabs});
      this.addToQueue({object:this,method:this.initSprite});
      this.addToQueue({object:this.api.network.Guild,method:this.api.network.Guild["\x17\x19\x04"]});
      this.addToQueue({object:this,method:this.setCurrentTab,params:[this["\x1e\b\x19"]]});
      this["\x1e\r\x0f"]._visible = false;
      this["\x1d\x0e\x12"]._visible = false;
      this._mcCaution._visible = this["\x1d\x03\x1a"]._visible = false;
   }
   function initTexts()
   {
      this["\x1c\x1b\x0f"].text = this.api.datacenter.Player.Name;
      this["\x1c\x1a\x07"].text = this.api.lang.getText("LEVEL") + " " + this.api.datacenter.Player.Level;
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
   }
   function §\x18\t\x14§()
   {
      if(this.api.datacenter.Player.temporisInfos == undefined)
      {
         this.api.datacenter.Player.temporisInfos = new dofus.datacenter..TemporisInfos(10000);
      }
      else
      {
         this.api.datacenter.Player.temporisInfos.initialize(true,10000);
      }
      var _loc2_ = this.api.datacenter.Player.temporisInfos;
      this._nTemporisVersion = _loc2_.temporisVersion;
      this._aTemporisComponents = _loc2_.temporisUIComponents;
      this["\x1e\x10\t"].title = this.api.lang.getText("SERVER_GAME_TYPE_6") + " " + _loc2_.temporisVersion + " :" + " \'" + _loc2_.temporisName + "\'";
   }
   function initTabs()
   {
      var _loc2_ = 0;
      while(_loc2_ < dofus.graphics.gapi.ui.Temporis.MAXIMUM_TABS)
      {
         var _loc3_ = this["_btnTabComponent" + _loc2_];
         if(this._aTemporisComponents[_loc2_] == undefined)
         {
            _loc3_._visible = false;
         }
         else
         {
            _loc3_.label = this.api.lang.getText(this._aTemporisComponents[_loc2_].toUpperCase());
            _loc3_.addEventListener("click",this);
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   function initSprite()
   {
      var _loc2_ = ank.battlefield.datacenter..Sprite(this.api.datacenter.Player.data);
      var _loc3_ = this.api.datacenter.Player.Guild;
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      var _loc4_ = new ank.battlefield.datacenter..Sprite("viewer",ank.battlefield.mc.Sprite,_loc2_.gfxFile,undefined,5);
      _loc4_.color1 = _loc2_.color1;
      _loc4_.color2 = _loc2_.color2;
      _loc4_.color3 = _loc2_.color3;
      _loc4_.accessories = _loc2_.accessories;
      _loc4_.mount = _loc2_.mount;
      this["\x1e\r\x0f"]["\x1b\x04\x1b"] = _loc2_;
      this["\x1e\r\x0f"]["\x1b\x07\x06"] = _loc4_;
      this["\x1e\r\x0f"]["\x1b\x07\x05"] = ["StaticF","StaticR","StaticS","StaticL"];
      this["\x1e\r\x0f"]._xscale = 50;
      this["\x1e\r\x0f"]._yscale = 50;
      this["\x1e\r\x0f"]._visible = true;
      this["\x1d\x05\x06"].contentPath = dofus.Constants["\x16\x11\x01"] + _loc3_ + ".swf";
      this._ldrAlignIcon.contentPath = this.api.datacenter.Player.alignment.iconFile;
      this["\x1c\x18\x0e"].text = this.api.datacenter.Player.rank.value <= 0 ? "-" : this.api.datacenter.Player.rank.value + " (" + this.api.lang["\x17\x1d\x19"](this.api.datacenter.Player.alignment.index,this.api.datacenter.Player.rank.value) + ")";
      this._lblAlignmentName.text = this.api.lang.getText("ALIGNMENT") + " " + this.api.datacenter.Player.alignment.name;
   }
   function §\x1b\x14\x13§()
   {
      this._mcTabViewer.removeMovieClip();
      var _loc2_ = this._aTemporisComponents[Number(this["\x1e\b\x19"].substr(-1))];
      this.attachMovie(_loc2_,"_mcTabViewer",this.getNextHighestDepth(),{_x:this["\x1d\x0e\x12"]._x,_y:this["\x1d\x0e\x12"]._y});
      var _loc0_ = this["\x1e\b\x19"];
   }
   function setCurrentTab(§\x1b\x04\x07§)
   {
      var _loc3_ = this["_btnTab" + this["\x1e\b\x19"]];
      var _loc4_ = this["_btnTab" + _loc2_];
      _loc3_.selected = true;
      _loc3_.enabled = true;
      _loc4_.selected = false;
      _loc4_.enabled = false;
      this["\x1e\b\x19"] = _loc2_;
      this["\x1b\x14\x13"]();
   }
   function setQuests(aQuests)
   {
      this._mcTabViewer.setQuests(aQuests);
   }
   function click(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target._name) !== "_btnClose")
      {
         this.setCurrentTab(_loc2_.target._name.substr(7));
      }
      else
      {
         this["\x16\x15\n"]();
      }
   }
}
