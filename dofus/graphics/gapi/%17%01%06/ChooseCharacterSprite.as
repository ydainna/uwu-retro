class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.ChooseCharacterSprite extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "ChooseCharacterSprite";
   static var §\x17\x05\x12§ = 40;
   var §\x1c\x07\x1c§ = false;
   var §\x1c\x07\b§ = false;
   var §\x1c\x11\x0b§ = false;
   var §\x1d\x15\r§ = 0;
   var §\x1d\x14\x0b§ = dofus.graphics.gapi.controls.ChooseCharacterSprite["\x17\x05\x12"];
   var §\x1d\x14\f§ = -1;
   function ChooseCharacterSprite()
   {
      super();
   }
   function §\x1c\x15§(§\x16\x12\x0e§)
   {
      this["\x1c\b\x06"] = _loc2_;
      return this.showComboBox;
   }
   function §\x11\x19§(§\x19\x12\x10§)
   {
      this._oData = _loc2_;
      this["\x1b\x14\x14"]();
      return this["\x1e\x18\x01"]();
   }
   function §\x1e\x18\x01§()
   {
      return this._oData;
   }
   function §\x1c\t§(§\x16\x12\x06§)
   {
      this["\x1c\x07\x1c"] = _loc2_;
      this["\x1b\x16\x01"](!_loc2_ ? this.getStyle().overcolor : this.getStyle().selectedcolor);
      return this["\b\x13"]();
   }
   function §\b\x13§()
   {
      return this["\x1c\x07\x1c"];
   }
   function §\x12\x05§(bShow)
   {
      this["\x1c\x03\x0b"] = _loc2_;
      this["\x1c\t\x10"]._visible = _loc2_;
      return this["\x1e\x18\f"]();
   }
   function §\x1e\x18\f§()
   {
      return this["\x1c\x03\x0b"];
   }
   function §\x15\x0f§(§\x16\r\x13§)
   {
      this["\x1c\x11\x0b"] = _loc2_;
      if(this["\x1c\x11\x0b"])
      {
         var _loc3_ = {ra:dofus.graphics.gapi.controls.ChooseCharacterSprite["\x17\x05\x12"],rb:100,ga:dofus.graphics.gapi.controls.ChooseCharacterSprite["\x17\x05\x12"],gb:100,ba:dofus.graphics.gapi.controls.ChooseCharacterSprite["\x17\x05\x12"],bb:100};
      }
      else
      {
         _loc3_ = {ra:100,rb:0,ga:100,gb:0,ba:100,bb:0};
      }
      var _loc4_ = new Color(this["\x1d\x06\x01"]);
      _loc4_.setTransform(_loc3_);
      _loc4_ = new Color(this["\x1d\x05\x18"]);
      _loc4_.setTransform(_loc3_);
      _loc4_ = new Color(this["\x1d\x0b\x1c"]["\x1d\x0b\x1c"]);
      _loc4_.setTransform(_loc3_);
      this._btnReset._visible = this["\x1c\x11\x0b"];
      this["\x1c\x0e\x0b"]._visible = this["\x1c\x11\x0b"];
      return this["\x1e\x1d\t"]();
   }
   function §\x1e\x1d\t§()
   {
      return this["\x1c\x11\x0b"] && this["\x1c\x11\x0b"] != undefined;
   }
   function §\x11\x1d§(§\x19\x05\x17§)
   {
      this["\x1c\x0e\x0b"]["\x17\x05\x10"] = _loc2_;
      this["\x1c\x0e\x0b"]._alpha = 50;
      return this.death;
   }
   function §\x12\x01§(§\x19\x0e\x1d§)
   {
      this["\x1d\x15\r"] = _loc2_;
      var ref = this;
      if(this["\x1d\x15\r"] == 2)
      {
         this.onEnterFrame = function()
         {
            ref["\x1d\x14\x0b"] += ref["\x1d\x14\f"];
            var _loc2_ = ref["\x1d\x14\x0b"];
            if(ref["\x1d\x14\x0b"] == 0)
            {
               ref["\x1d\x14\f"] = 1;
            }
            if(ref["\x1d\x14\x0b"] == 40)
            {
               ref["\x1d\x14\f"] = -1;
            }
            var _loc3_ = {ra:_loc2_,rb:100,ga:_loc2_,gb:100,ba:_loc2_,bb:100};
            var _loc4_ = new Color(ref["\x1d\x06\x01"]);
            _loc4_.setTransform(_loc3_);
            _loc4_ = new Color(ref["\x1d\x05\x18"]);
            _loc4_.setTransform(_loc3_);
            _loc4_ = new Color(ref["\x1d\x0b\x1c"]["\x1d\x0b\x1c"]);
            _loc4_.setTransform(_loc3_);
         };
      }
      else
      {
         delete this.onEnterFrame;
      }
      return this["\x1e\x18\b"]();
   }
   function §\x1e\x18\b§()
   {
      return this["\x1d\x15\r"];
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.ChooseCharacterSprite.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
      this["\x1c\t\x10"]._visible = false;
      this._btnReset._visible = false;
   }
   function addListeners()
   {
      this["\x1d\x06\x01"]["\x16\x15\x06"] = false;
      this["\x1d\x06\x01"].addEventListener("initialization",this);
      this["\x1c\t\x10"].addEventListener("click",this);
      this["\x1c\t\x10"].addEventListener("over",this);
      this["\x1c\t\x10"].addEventListener("out",this);
      this._btnReset.addEventListener("click",this);
      this._btnReset.addEventListener("over",this);
      this._btnReset.addEventListener("out",this);
      this._cbServers.addEventListener("itemSelected",this);
      this["\x1c\x0e\x03"].addEventListener("over",this);
      this["\x1c\x0e\x03"].addEventListener("out",this);
      this.api.datacenter.Basics.aks_servers.addEventListener("modelChanged",this);
      Key.addListener(this);
   }
   function §\x18\t\x14§()
   {
      this["\x1b\x14\x14"]();
   }
   function §\x1a\x16\x07§()
   {
      if(this._bEnabled)
      {
         this["\x1d\f\x0b"]["\x18\x13\x01"] = function()
         {
            this._parent.onEnterFrame = this._parent["\x16\x03\x19"];
         };
         this["\x1d\f\x0b"].onPress = function()
         {
            ank.utils.Timer.setTimer(this,"AnimCharacter",this,this["\x18\x13\x01"],500);
         };
         this["\x1d\f\x0b"].onRelease = function()
         {
            delete this._parent.onEnterFrame;
            this._parent["\x18\n\x1b"]();
            ank.utils.Timer.removeTimer(this,"AnimCharacter");
         };
         this["\x1d\f\x0b"].onRollOver = this["\x1d\f\x0b"].onDragOver = function()
         {
            this._parent["\x18\n\x19"]();
         };
         this["\x1d\f\x0b"].onRollOut = this["\x1d\f\x0b"].onReleaseOutside = function()
         {
            delete this._parent.onEnterFrame;
            this._parent["\x18\n\x18"]();
         };
         this["\x1d\f\x0b"].onDragOut = function()
         {
            this._parent["\x18\n\x18"]();
         };
         this._mcUnknown._visible = false;
      }
      else
      {
         delete this["\x1d\f\x0b"].onRelease;
         delete this["\x1d\f\x0b"].onRollOver;
         delete this["\x1d\f\x0b"].onRollOut;
         delete this["\x1d\f\x0b"].onReleaseOutside;
         delete this["\x1d\f\x0b"].onPress;
         delete this["\x1d\f\x0b"].onDragOut;
         delete this["\x1d\f\x0b"].onDragOver;
         this._mcUnknown._visible = true;
         this.selected = false;
      }
      this["\x18\r\x0f"] = this["\x1c\x11\x0b"];
   }
   function §\x1b\x14\x14§()
   {
      if(this._oData != undefined)
      {
         this["\x1c\x1b\x0f"].text = this._oData.name;
         this["\x1c\x1a\x07"].text = this._oData.Level == undefined ? this._oData.title : this.api.lang.getText("LEVEL") + " " + this._oData.Level;
         if(this._oData["\x18\x1c\x14"])
         {
            this["\x1d\x05\x18"].contentPath = dofus.Constants["\x17\x0e\x1d"] + "0.swf";
         }
         this["\x1d\x06\x01"].forceReload = true;
         this["\x1d\x06\x01"].contentPath = this._oData.gfxFile;
         this["\x1c\t\x10"]._visible = this["\x1c\x03\x0b"];
         this._cbServers._visible = true;
         this["\x1b\x16\x02"](this._oData.serverID);
         this._mcStateBack._visible = true;
      }
      else if(this["\x1c\x1b\x0f"].text != undefined)
      {
         this["\x1c\x1b\x0f"].text = "";
         this["\x1c\x1a\x07"].text = "";
         this["\x1d\x06\x01"].forceReload = true;
         this["\x1d\x06\x01"].contentPath = "";
         this["\x1c\t\x10"]._visible = false;
         this._cbServers._visible = false;
         this["\x1c\x0e\x03"].contentPath = "";
         this._mcStateBack._visible = false;
      }
   }
   function §\x1b\x16\x02§(nServerID)
   {
      if(_loc2_ != undefined)
      {
         this["\x1d\x1c\x17"] = _loc2_;
      }
      var _loc3_ = this.api.datacenter.Basics.aks_servers;
      var _loc4_ = 0;
      var _loc5_ = 0;
      while(_loc5_ < _loc3_.length)
      {
         var _loc6_ = _loc3_[_loc5_].id;
         if(_loc6_ == this["\x1d\x1c\x17"])
         {
            _loc4_ = _loc5_;
            this["\x1e\x05\x0b"] = _loc3_[_loc5_];
            break;
         }
         _loc5_ = _loc5_ + 1;
      }
      var _loc7_ = _loc3_[_loc4_];
      if(_loc7_ == undefined)
      {
         ank.utils.Logger.err("Serveur " + this["\x1d\x1c\x17"] + " inconnu");
      }
      else
      {
         this.enabled = _loc7_.state == dofus.datacenter.Server.SERVER_ONLINE;
         this["\x1c\x0e\x03"].contentPath = "ChooseCharacterServerState" + _loc7_.state;
      }
      if(this["\x1c\b\x06"] && this["\x1d\x01\n"].text != undefined)
      {
         this._cbServers.dataProvider = _loc3_;
         this._cbServers.selectedIndex = _loc4_;
         this._cbServers["\x16\x14\x12"] = "ComboBoxButtonNormalIcon";
         this["\x1d\x01\n"].text = "";
         this._cbServers.enabled = true;
      }
      else
      {
         this._cbServers["\x16\x14\x12"] = "";
         this["\x1d\x01\n"].text = _loc7_.label;
         this._cbServers.enabled = false;
      }
   }
   function §\x1b\x16\x01§(§\x19\x05\x06§)
   {
      if(this["\x1c\x07\x1c"] || this["\x1c\x07\b"] && this._bEnabled)
      {
         this["\x1a\x18\x03"](this["\x1d\x0f\x17"],_loc2_);
         this["\x1d\x0f\x17"].gotoAndPlay(1);
         this["\x1d\x0f\x17"]._visible = true;
      }
      else
      {
         this["\x1d\x0f\x17"].stop();
         this["\x1d\x0f\x17"]._visible = false;
      }
   }
   function §\x16\x18\x1d§(§\x18\x1c\x03§)
   {
      _global.clearInterval(this["\x1d\x17\t"]);
      var _loc3_ = _loc2_.attachMovie("staticF","mcAnim",10);
      if(!_loc3_)
      {
         _loc3_ = _loc2_.attachMovie("staticR","mcAnim",10);
      }
      if(!_loc3_)
      {
         this.addToQueue({object:this,method:this["\x16\x18\x1d"],params:[_loc2_]});
      }
   }
   function §\x16\x03\x19§(§\x19\x03\x10§, §\x16\x0b\x16§)
   {
      var _loc4_ = 55;
      var _loc5_ = 100;
      if(_loc2_ == undefined)
      {
         _loc2_ = Math.atan2(this._ymouse - _loc5_,this._xmouse - _loc4_);
      }
      this["\x1e\t\x06"] = "F";
      this["\x1c\x04\b"] = false;
      var _loc6_ = Math.PI / 8;
      if(_loc2_ < -9 * _loc6_)
      {
         this["\x1e\t\x06"] = "S";
         this["\x1c\x04\b"] = true;
      }
      else if(_loc2_ < -5 * _loc6_)
      {
         this["\x1e\t\x06"] = "L";
      }
      else if(_loc2_ < -3 * _loc6_)
      {
         this["\x1e\t\x06"] = "B";
      }
      else if(_loc2_ < 0 - _loc6_)
      {
         this["\x1e\t\x06"] = "L";
         this["\x1c\x04\b"] = true;
      }
      else if(_loc2_ < _loc6_)
      {
         this["\x1e\t\x06"] = "S";
      }
      else if(_loc2_ < 3 * _loc6_)
      {
         this["\x1e\t\x06"] = "R";
      }
      else if(_loc2_ < 5 * _loc6_)
      {
         this["\x1e\t\x06"] = "F";
      }
      else if(_loc2_ < 7 * _loc6_)
      {
         this["\x1e\t\x06"] = "R";
         this["\x1c\x04\b"] = true;
      }
      else
      {
         this["\x1e\t\x06"] = "S";
         this["\x1c\x04\b"] = true;
      }
      var _loc7_ = "static";
      if(Key.isDown(Key.SHIFT))
      {
         _loc7_ = "walk";
      }
      if(Key.isDown(Key.CONTROL))
      {
         _loc7_ = "run";
      }
      this.setAnim(_loc7_);
   }
   function onKeyUp()
   {
      if(this["\x1c\x07\x1c"])
      {
         var _loc2_ = Number(String.fromCharCode(Key.getCode()));
         if(!_global.isNaN(_loc2_))
         {
            if(Key.isDown(Key.SHIFT))
            {
               _loc2_ += 10;
            }
            this.setAnim("emote" + _loc2_);
         }
      }
   }
   function §\x1a\x14\x1b§(§\x1a\x0f\x0f§, §\x16\x11\b§)
   {
      if(_loc3_)
      {
         this["\x1e\t\x06"] = "R";
         this["\x1c\x04\b"] = false;
      }
      var _loc4_ = _loc2_ + this["\x1e\t\x06"];
      if(this["\x1e\x0b\x0f"] != _loc4_ || (!this["\x1c\x04\b"] ? 180 : -180) != this["\x1d\x10\x0e"]._xscale)
      {
         this["\x1d\x10\x0e"].attachMovie(_loc4_,"anim",10);
         this["\x1d\x10\x0e"]._xscale = !this["\x1c\x04\b"] ? 180 : -180;
         this["\x1e\x0b\x0f"] = _loc4_;
      }
   }
   function initialization(oEvent)
   {
      this["\x1d\x10\x0e"] = _loc2_.clip;
      this.gapi.api.colors.addSprite(this["\x1d\x10\x0e"],this._oData);
      this["\x1d\x10\x0e"]._xscale = this["\x1d\x10\x0e"]._yscale = 180;
      this.addToQueue({object:this,method:this["\x16\x18\x1d"],params:[this["\x1d\x10\x0e"]]});
   }
   function §\x18\n\x1b§()
   {
      if(this["\x18\r\x0f"])
      {
         return undefined;
      }
      this.selected = true;
      this["\x17\x07\x19"]({type:"select",serverID:this["\x1d\x1c\x17"]});
   }
   function §\x18\n\x19§()
   {
      if(this["\x18\r\x0f"])
      {
         return undefined;
      }
      this["\x1c\x07\b"] = true;
      this["\x1b\x16\x01"](!this["\x1c\x07\x1c"] ? this.getStyle().overcolor : this.getStyle().selectedcolor);
   }
   function §\x18\n\x18§()
   {
      this["\x1c\x07\b"] = false;
      this["\x1b\x16\x01"](this.getStyle().selectedcolor);
   }
   function click(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\t\x10"]:
            if(this["\x1d\x15\r"] == 2)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CAUTION_WRONG_DEAD_STATE"),"ERROR_BOX",{name:"noSelection",listener:this});
               return undefined;
            }
            this["\x17\x07\x19"]({type:"remove"});
            break;
         case this._btnReset:
            if(this["\x1d\x15\r"] == 2)
            {
               this.api.kernel.showMessage(undefined,this.api.lang.getText("CAUTION_WRONG_DEAD_STATE"),"ERROR_BOX",{name:"noSelection",listener:this});
               return undefined;
            }
            this["\x17\x07\x19"]({type:"reset"});
            break;
      }
   }
   function over(oEvent)
   {
      switch(_loc2_.target)
      {
         case this["\x1c\t\x10"]:
            this.gapi.showTooltip(this.api.lang.getText("DELETE_CHARACTER"),_root._xmouse,_root._ymouse - 20);
            break;
         case this._btnReset:
            this.gapi.showTooltip(this.api.lang.getText("RESET_CHARACTER"),_root._xmouse,_root._ymouse - 20);
            break;
         case this["\x1c\x0e\x03"]:
            this.gapi.showTooltip(this["\x1e\x05\x0b"]["\x1b\t\x18"],_root._xmouse,_root._ymouse - 20);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
   function itemSelected(oEvent)
   {
      var _loc3_ = _loc2_.target.selectedItem;
      this["\x1d\x1c\x17"] = _loc3_.id;
      this["\x1b\x16\x02"]();
      if(!this["\x1c\x07\x1c"] && this._bEnabled)
      {
         this["\x18\n\x1b"]();
      }
      else if(!this._bEnabled)
      {
         this["\x17\x07\x19"]({type:"unselect"});
      }
   }
   function modelChanged(oEvent)
   {
      if(this._oData != undefined)
      {
         this["\x1b\x16\x02"]();
         this["\x17\x07\x19"]({type:"unselect"});
      }
   }
}
