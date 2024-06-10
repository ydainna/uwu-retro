class ank.battlefield.§\x16\t\t§ extends MovieClip
{
   var §\x1c\x06\x05§ = false;
   static var §\x17\x12\x10§ = 500;
   var §\x1c\x0b\x1b§ = false;
   var §\x16\f\x0f§ = false;
   var §\x16\n\n§ = false;
   var _bShowCellId = false;
   function §\x16\t\t§()
   {
      super();
   }
   function §\x1e\x1e\x03§()
   {
      if(this["\x1c\x06\x10"])
      {
         return true;
      }
      ank.utils.Logger.err("[isMapBuild] Carte non chargée");
      return false;
   }
   function §\x1c\x01§(§\x19\x0e\x01§)
   {
      this["\x1d\x1c\x0b"] = _loc2_;
      return this["\b\x0b"]();
   }
   function §\b\x0b§()
   {
      return this["\x1d\x1c\x0b"] != undefined ? this["\x1d\x1c\x0b"] : ank.battlefield.Constants["\x17\b\x17"];
   }
   function §\x1b\x1d§(§\x19\r\x1d§)
   {
      this["\x1d\x1c\n"] = _loc2_;
      return this["\b\n"]();
   }
   function §\b\n§()
   {
      return this["\x1d\x1c\n"] != undefined ? this["\x1d\x1c\n"] : ank.battlefield.Constants["\x17\b\x15"];
   }
   function §\x15\x19§(§\x16\x0e\x01§)
   {
      this["\x1c\x06\x05"] = _loc2_;
      return this["\x1e\x1d\x18"]();
   }
   function §\x1e\x1d\x18§()
   {
      return this["\x1c\x06\x05"];
   }
   function §\x1e\x16\x10§()
   {
      return this._mcMainContainer;
   }
   function §\x1e\x1d\x05§()
   {
      return this._mcMainContainer._visible;
   }
   function §\x1e\x18\x02§()
   {
      return this["\x1e\x03\b"];
   }
   function get showingCellIds()
   {
      return this._bShowCellId;
   }
   function initialize(§\x19\x12\x11§, §\x1a\x1c\x01§, §\x1b\x04\f§, §\x1a\x0f\b§, §\x16\x04\x05§)
   {
      this["\x1e\x03\b"] = _loc2_;
      this["\x1e\t\x1d"] = _loc3_;
      _loc6_;
      if(!this["\x18\t\x1d"]())
      {
         ank.utils.Logger.err("BattleField -> Init datacenter impossible");
         this["\x19\x19\x02"]();
      }
      ank.utils.Extensions.addExtensions();
      if(_global.GAC == undefined)
      {
         _global.GAC = new ank.battlefield["\x18\x03\x01"]();
         _global.GAC.setAccessoriesRoot(_loc5_);
      }
      this["\x16\x06\x16"](ank.battlefield.mc.Container,"_mcMainContainer",10,[this,this["\x1e\x03\b"],_loc4_]);
      this["\x1c\x06\x10"] = false;
      this["\x18\x16\n"] = new ank.battlefield["\x18\x16\x0b"](this.createEmptyMovieClip("\x18\x16\x0b",this.getNextHighestDepth()));
      this.fightPointAnimManager = new dofus.managers.FightPointAnimManager(_loc6_);
   }
   function streamingMethod(§\x1b\n\x10§, §\x19\x11\x17§, §\x18\x03\x19§)
   {
      ank.battlefield.Constants["\x1b\x17\x02"] = _loc2_;
      ank.battlefield.Constants["\x1b\x0b\x10"] = _loc3_;
      ank.battlefield.Constants["\x1b\x0b\x0e"] = _loc4_;
   }
   function setStreaming(sName)
   {
      ank.battlefield.Constants["\x1b\x0b\x0f"] = _loc2_;
   }
   function §\x1a\x15\x1b§(§\x1b\x05\x07§, §\x1b\x05\b§)
   {
      if(_loc2_ && (_loc2_ != "" && this["\x1e\t\x1d"] != _loc2_))
      {
         this["\x1e\t\x1d"] = _loc2_;
         this["\x1c\x0b\x1b"] = true;
         this["\x16\n\n"] = false;
      }
      if(_loc3_ && (_loc3_ != "" && this["\x1e\x0b\t"] != _loc3_))
      {
         this._mcMainContainer.initialize(this._mcMainContainer,this["\x1e\x03\b"],_loc3_);
         this["\x16\n\n"] = false;
         this["\x1e\x0b\t"] = _loc3_;
      }
   }
   function §\x15\x1c\x19§(§\x16\x04\x05§, §\x16\x10\f§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      if(_loc3_)
      {
         if(this["\x18\x03\x13"]["\x16\f\x10"])
         {
            this["\x1a\f\x07"]();
         }
      }
      else if(!this["\x18\x03\x13"]["\x16\f\x10"] && (_loc2_.datacenter..Game.isRunning || _loc2_.kernel.OptionsManager.getOption("Grid") == true))
      {
         this["\x17\n\x04"]();
      }
      this["\x18\x18\x15"]["\x1b\r\x17"](_loc3_);
   }
   function clear()
   {
      this._mcMainContainer.clear();
      this._mcCellIds.removeMovieClip();
      this["\x1e\t\x1d"] = "";
      this["\x1e\x0b\t"] = "";
      ank.utils.Timer.clear("battlefield");
      ank.utils.["\x17\x04\f"].getInstance().clear();
      this["\x18\t\x1d"]();
      this["\x17\x02\x10"]();
      this["\x1c\x06\x10"] = false;
   }
   function §\x1a\x15\x11§(§\x1b\r\x11§)
   {
      this._mcMainContainer["\x1a\x15\x11"](_loc2_);
   }
   function §\x16\x1b\x14§(§\x19\f\x05§, §\x16\x0e\x02§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      if(_loc2_ == undefined)
      {
         _loc2_ = Number.POSITIVE_INFINITY;
      }
      else
      {
         _loc2_ = Number(_loc2_);
      }
      this["\x18\x18\x15"]["\x18\n\x01"](_loc2_);
      this["\x1b\x13\x18"](true);
      this["\x16\x1b\x1a"]();
      this["\x16\x1c\x0b"]();
      this["\x1a\f\x07"]();
      this["\x16\x1b\x19"](_loc3_);
      this["\x1a\x02\x1a"].clear();
      this["\x1b\x0f\x12"].clear();
      this["\x1a\x06\x0b"].clear();
      ank.utils.Timer["\x16\x1b\x11"]();
      ank.utils.["\x17\x04\f"].getInstance().clear();
   }
   function §\x18\x02\x12§()
   {
      return this._mcMainContainer["\x18\x02\x12"]();
   }
   function §\x1a\x1d\x05§(§\x16\x10\x02§)
   {
      this._mcMainContainer._visible = _loc2_;
   }
   function zoom(§\x19\x07\x0e§)
   {
      this._mcMainContainer.zoom(_loc2_);
   }
   function §\x16\x14\x03§(§\x19\x13\x10§, §\x16\t\x15§)
   {
      this.clear();
      if(_loc2_ == undefined)
      {
         return undefined;
      }
      this.onMapBuilding();
      this["\x18\x18\x15"]["\x16\x14\x01"](_loc2_,undefined,_loc3_);
      if(this["\x18\x18\x15"]["\x18\x15\x1d"] == 0)
      {
         this["\x17\x07\x1c"]();
      }
      else
      {
         this["\x1d\x16\x10"] = ank.battlefield["\x16\t\t"]["\x17\x12\x10"];
         var ref = this;
         this.onEnterFrame = function()
         {
            ref["\x1d\x16\x10"]--;
            if(ref["\x1d\x16\x10"] <= 0 || ref["\x18\x18\x15"]["\x18\x15\x1d"] <= 0)
            {
               delete ref.onEnterFrame;
               ref["\x17\x07\x1c"]();
            }
         };
      }
   }
   function §\x17\x07\x1c§()
   {
      this["\x1c\x06\x10"] = true;
      this["\x19\x1a\x07"]();
   }
   function §\x16\x14\x02§(§\x19\b\x0b§, sName, §\x19\x10\x18§, §\x19\b\x03§, §\x19\x03\x1a§, §\x1a\x11\x02§, §\x19\x13\x10§, §\x16\t\x15§)
   {
      if(_loc8_ == undefined)
      {
         _loc8_ = new ank.battlefield.datacenter.Map();
      }
      ank.battlefieldutils.Compressor["\x1b\x13\r"](_loc2_,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
      this["\x16\x14\x03"](_loc8_,_loc9_);
   }
   function §\x1b\x14\b§(§\x19\x04\x12§, §\x1a\x11\x01§, §\x1b\x03\r§, §\x19\f\x05§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      var _loc6_ = this["\x18\x18\x15"]["\x17\x14\x1d"](_loc2_);
      if(_loc6_ != undefined)
      {
         var _loc7_ = _loc6_["\x16\x03\b"];
      }
      if(_loc3_ == undefined)
      {
         this["\x18\x18\x15"]["\x18\t\x1b"](_loc2_,Number.POSITIVE_INFINITY,true);
      }
      else
      {
         var _loc8_ = ank.battlefieldutils.Compressor["\x1b\x13\f"](_loc3_,true);
         this["\x18\x18\x15"]["\x1b\x14\b"](_loc2_,_loc8_,_loc4_,_loc5_);
      }
      if(_loc7_ != undefined)
      {
         _loc6_ = this["\x18\x18\x15"]["\x17\x14\x1d"](_loc2_);
         if(_loc6_ != undefined)
         {
            _loc6_["\x16\x03\b"] = _loc7_;
         }
      }
   }
   function §\x1a\x18\x0e§(§\x19\x04\x12§, §\x17\x12\x0f§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this["\x18\x18\x15"]["\x1a\x18\x0e"](_loc2_,_loc3_);
   }
   function §\x1a\x18\x0f§(§\x19\x04\x12§, §\x16\r\r§, §\x19\f\x05§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this["\x18\x18\x15"]["\x1a\x18\x0f"](_loc2_,_loc3_,_loc4_);
   }
   function §\x1b\x14\t§(§\x19\x04\x12§, §\x1a\x1b\x0f§, §\x19\f\x05§, §\x16\r\r§, §\x16\t\x0f§, §\x19\x12\x18§)
   {
      var _loc8_ = new ank.battlefield.datacenter.["\x16\x17\x13"]();
      _loc8_.layerObjectExternal = _loc3_;
      _loc8_.layerObjectExternalInteractive = _loc5_ != undefined ? _loc5_ : true;
      _loc8_.layerObjectExternalAutoSize = _loc6_;
      _loc8_.layerObjectExternalData = _loc7_;
      this["\x18\x18\x15"]["\x1b\x14\b"](_loc2_,_loc8_,"1C000",_loc4_);
   }
   function §\x1a\x18\x10§(§\x19\x04\x12§, §\x17\x12\x0f§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this["\x18\x18\x15"]["\x1a\x18\x10"](_loc2_,_loc3_);
   }
   function §\x18\t\x1b§(§\x19\x04\x12§, §\x19\f\x05§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this["\x18\x18\x15"]["\x18\t\x1b"](_loc2_,_loc3_);
   }
   function select(§\x16\x17\x17§, §\x19\x05\x06§, §\x1b\x02\x17§, §\x19\x03\x07§, bAnimate)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      if(typeof _loc2_ == "object")
      {
         this["\x1a\x12\x1c"]["\x1a\x13\x03"](true,_loc2_,_loc3_,_loc4_,_loc5_,bAnimate);
      }
      else if(typeof _loc2_ == "number")
      {
         this["\x1a\x12\x1c"].select(true,_loc2_,_loc3_,_loc4_,_loc5_,bAnimate);
      }
   }
   function §\x1b\x13\x18§(§\x16\b\x13§, §\x16\x17\x17§, §\x1b\x02\x17§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      if(_loc2_)
      {
         this["\x1a\x12\x1c"].clear();
      }
      else if(typeof _loc3_ == "object")
      {
         this["\x1a\x12\x1c"]["\x1a\x13\x03"](false,_loc3_,undefined,_loc4_);
      }
      else if(typeof _loc3_ == "number")
      {
         this["\x1a\x12\x1c"].select(false,_loc3_,undefined,_loc4_);
      }
      else if(_loc4_ != undefined)
      {
         this["\x1a\x12\x1c"]["\x16\x1c\x06"](_loc4_);
      }
   }
   function §\x1b\x13\x1b§(§\x1b\x02\x17§)
   {
      var _loc3_ = this["\x1a\x12\x1c"]["\x17\x1a\x16"]();
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         if(_loc3_[_loc4_] != _loc2_)
         {
            this["\x1a\x12\x1c"]["\x16\x1c\x06"](_loc3_[_loc4_]);
         }
         _loc4_ = _loc4_ + 1;
      }
   }
   function §\x1a\x17\x06§(§\x19\x0e\x1d§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this["\x18\x0b\x05"]["\x1a\x16\x07"](_loc2_);
   }
   function §\x1a\x17\x07§(§\x19\x04\x12§, §\x19\x0e\x1d§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this["\x18\x0b\x05"]["\x1a\x16\n"](_loc2_,_loc3_);
   }
   function §\x1a\x17\b§(§\x15\x1b\x19§, §\x19\x0e\x1d§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      for(var k in _loc2_)
      {
         this["\x18\x0b\x05"]["\x1a\x16\n"](_loc2_[k],_loc3_);
      }
   }
   function §\x17\n\x10§(§\x19\x04\x12§, §\x19\r\x02§, §\x19\r\x03§, §\x1b\x02\x17§, §\x19\x05\x06§, nShapeID)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this["\x1b\x1b\t"]["\x17\n\x10"](_loc2_,_loc3_,_loc4_,_loc5_,_loc6_,nShapeID);
   }
   function §\x16\x1c\x12§(§\x19\x04\x12§, §\x19\r\x01§, §\x1b\x02\x17§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this["\x1b\x1b\t"]["\x16\x1c\x12"](_loc2_,_loc3_,_loc4_);
   }
   function §\x16\x1c\x13§(§\x1b\x02\x17§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this["\x1b\x1b\t"]["\x16\x1c\x13"](_loc2_);
   }
   function §\x16\x1b\x1a§(§\x1b\x18\n§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this["\x1b\x1b\t"].clear();
   }
   function §\x16\x1c\x0b§(§\x1b\x18\n§)
   {
      this["\x1a\x06\x06"].clear();
   }
   function §\x18\x06\x14§(§\x1b\x18\n§)
   {
      this["\x1a\x06\x06"].hide();
   }
   function §\x15\x1e\x07§(§\x1b\b\b§, §\x19\x02\x04§, §\x19\x05\x06§, §\x19\x04\x13§)
   {
      this["\x1a\x06\x06"]["\x15\x1e\x0e"](_loc2_,_loc3_,_loc4_,_loc5_);
   }
   function §\x17\n\x0b§(§\x19\x04\x12§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this["\x1a\x06\x06"].draw(_loc2_);
   }
   function §\x18\x01\b§(sID)
   {
      return this.spriteHandler["\x18\x01\b"](sID);
   }
   function §\x18\x01\n§()
   {
      return this.spriteHandler.getSprites();
   }
   function isOnBattlefield(sID)
   {
      return this.spriteHandler.getSpriteMc(sID) != undefined;
   }
   function addSprite(sID, §\x1b\x07\x06§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler.addSprite(sID,_loc3_);
   }
   function §\x15\x1d\x19§(sID, §\x1b\x05\x04§, §\x19\x05\x03§, §\x1a\x02\b§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x15\x1d\x19"](sID,_loc3_,_loc4_,_loc5_);
   }
   function §\x16\x17\x05§(sID, §\x1b\x05\x04§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x16\x17\x05"](sID,_loc3_);
   }
   function §\x1a\f\x01§(§\x1a\x10\r§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x1a\f\x01"](_loc2_);
   }
   function §\x1b\x13\n§(sID, §\x19\x04\x12§, §\x16\x14\x1c§, §\x1a\x01\x1d§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x1b\x13\n"](sID,_loc3_,_loc4_,_loc5_);
   }
   function §\x18\x1e\f§(sID, §\x19\x13\x13§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x18\x1e\f"](sID,_loc3_);
   }
   function §\x1b\x13\x16§(sID)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x1b\x13\x16"](sID);
   }
   function §\x16\x1b\x19§(§\x16\x0e\x02§)
   {
      this.spriteHandler.clear(_loc2_);
   }
   function §\x1a\f\x19§(sID, §\x16\x0e\x02§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x1a\f\x19"](sID,_loc3_);
   }
   function §\x18\x06\x1c§(sID, §\x16\x10\x02§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x18\x06\x1c"](sID,_loc3_);
   }
   function §\x1a\x1a\t§(sID, §\x19\x04\x12§, §\x17\x07\x13§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x1a\x1a\t"](sID,_loc3_,_loc4_);
   }
   function §\x1a\x1a\x05§(sID, §\x19\x06\x01§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x1a\x1a\x05"](sID,_loc3_);
   }
   function §\x1b\x0b\x04§(sID, §\x1a\x01\x1d§, §\x19\x04\x12§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x1b\x0b\x04"](sID,_loc3_,_loc4_);
   }
   function §\x19\x01\n§(sID, §\x16\x1e\x06§, §\x1a\x01\x1d§, §\x16\n\x05§, §\x16\f\x01§, §\x16\f\x02§, §\x19\r\x17§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      var _loc9_ = ank.battlefieldutils.Compressor["\x17\x0e\x15"](this["\x18\x18\x15"],_loc3_);
      this["\x19\x01\x0b"](sID,_loc9_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_);
   }
   function §\x19\x01\x0b§(sID, §\x16\x04\x02§, §\x1a\x01\x1d§, §\x16\n\x05§, §\x16\f\x01§, §\x16\f\x02§, §\x19\r\x17§, §\x1a\x0f\x10§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      if(_loc3_ != undefined)
      {
         this.spriteHandler["\x19\x01\n"](sID,_loc3_,_loc4_,_loc5_,_loc9_,_loc6_,_loc7_,_loc8_);
      }
   }
   function §\x1b\x03\x02§(sID, §\x19\x04\x12§, §\x1a\x01\x1d§, §\x1a\x0f\x10§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x1b\x03\x02"](sID,_loc3_,_loc4_,_loc5_);
   }
   function §\x16\x07\x11§(sID, §\x19\x04\x12§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x16\x07\x11"](sID,_loc3_);
   }
   function §\x17\x01\b§(sID)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x17\x01\b"](sID);
   }
   function §\x1a\x16\x17§(sID, §\x1a\x0f\x0f§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x1a\x1a\x03"](sID,_loc3_,true);
   }
   function §\x1a\x1a\x03§(sID, §\x1a\x0f\x0f§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x1a\x1a\x03"](sID,_loc3_);
   }
   function §\x1a\x1a\b§(sID, §\x1a\x0f\x0f§, §\x19\x0f\x1a§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x1a\x1a\b"](sID,_loc3_,_loc4_);
   }
   function §\x1a\x1a\x0b§(sID, §\x1a\x0f\x0f§, §\x16\x0b\x1c§, §\x19\x0f\x1a§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x1a\x1a\x0b"](sID,_loc3_,_loc4_,_loc5_);
   }
   function §\x1a\x1a\x06§(sID, §\x1a\x1b\x0f§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x1a\x1a\x06"](sID,_loc3_);
   }
   function §\x1a\x1a\x04§(sID, §\x1a\x02\x11§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x1a\x1a\x04"](sID,_loc3_);
   }
   function §\x1a\x1a\x02§(sID, §\x19\x03\x07§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x1a\x1a\x02"](sID,_loc3_);
   }
   function §\x1b\x07\x0b§(sID, §\x19\x12\x14§, §\x19\x04\x12§, §\x19\x06\x06§, §\x19\x02\x06§, §\x1b\t\x03§, §\x1a\x02\x0b§, §\x16\f\n§, §\x16\t\x12§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x18\x13\x07"](sID,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_);
   }
   function §\x1b\x07\n§(sID, §\x19\x12\x14§, §\x19\x04\x12§, §\x19\x06\x06§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x18\x13\x03"](sID,_loc3_,_loc4_,_loc5_);
   }
   function §\x1a\x13\x0f§(sID, §\x16\x12\x04§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this.spriteHandler["\x1a\x13\x0f"](sID,_loc3_);
   }
   function addSpriteBubble(sID, sText, §\x19\x10\x06§)
   {
      var _loc5_ = this["\x1e\x03\b"]Sprites.getItemAt(sID);
      if(_loc5_ == undefined)
      {
         ank.utils.Logger.err("[addSpriteBubble] Sprite inexistant (sprite Id : " + sID + ")");
         return undefined;
      }
      if(_loc5_.isInMove)
      {
         return undefined;
      }
      if(!_loc5_["\x18\x10\x0e"])
      {
         return undefined;
      }
      var _loc6_ = _loc5_.mc;
      var _loc7_ = _loc6_._x;
      var _loc8_ = _loc6_._y;
      if(_loc4_ == undefined)
      {
         _loc4_ = ank.battlefield.TextHandler["\x16\x13\x1b"];
      }
      if(_loc7_ == 0 || _loc8_ == 0)
      {
         ank.utils.Logger.err("[addSpriteBubble] le sprite n\'est pas encore placé");
         return undefined;
      }
      this["\x1b\x0f\x12"]["\x15\x1d\x03"](sID,_loc7_,_loc8_,_loc3_,_loc4_);
   }
   function §\x1a\f\x1a§(sID)
   {
      var _loc3_ = this["\x1e\x03\b"]Sprites.getItemAt(sID);
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      this["\x1b\x0f\x12"]["\x1a\x0b\x1b"](sID);
   }
   function §\x15\x1e\x16§(sID, §\x1b\f\x15§, nTypePoint)
   {
      var _loc5_ = this["\x1e\x03\b"]Sprites.getItemAt(sID);
      if(_loc5_ == undefined)
      {
         ank.utils.Logger.err("[addSpritePoints] Sprite inexistant");
         return undefined;
      }
      if(!_loc5_["\x18\x10\x0e"])
      {
         return undefined;
      }
      var _loc6_ = _loc5_.mc;
      var _loc7_ = _loc6_._x;
      if(this["\x1a\x02\x1a"].overHeadID == sID)
      {
         var _loc9_ = this["\x1a\x02\x1a"].overHead.getBounds(this);
         var _loc8_ = Math.max(_loc9_.yMin + 10,50);
         if(_global.isNaN(_loc8_))
         {
            _loc8_ = Math.max(_loc6_._y - ank.battlefield.Constants["\x17\x06\x0f"],50);
         }
      }
      else
      {
         _loc8_ = Math.max(_loc6_._y - ank.battlefield.Constants["\x17\x06\x0f"],50);
      }
      if(_loc7_ == 0 || _loc8_ == 0)
      {
         ank.utils.Logger.err("[addSpritePoints] le sprite n\'est pas encore placé");
         return undefined;
      }
      this["\x1a\x06\x0b"]["\x15\x1e\b"](sID,_loc7_,_loc8_,_loc3_,nTypePoint);
   }
   function addSpriteOverHeadItem(sID, §\x1b\x02\x18§, §\x16\x1b\x0f§, §\x15\x1b\t§, §\x19\x05\x1a§, §\x16\x0b\r§)
   {
      var _loc8_ = this["\x1e\x03\b"]Sprites.getItemAt(sID);
      if(_loc8_ == undefined)
      {
         ank.utils.Logger.err("[addSpriteOverHeadItem] Sprite inexistant");
         return undefined;
      }
      if(_loc8_.isInMove && !_loc7_)
      {
         return undefined;
      }
      if(!_loc8_["\x18\x10\x0e"])
      {
         return undefined;
      }
      var _loc9_ = _loc8_.mc;
      this["\x1a\x02\x1a"]["\x15\x1e\x03"](sID,_loc9_._x,_loc9_._y,_loc9_,_loc3_,_loc4_,_loc5_,_loc6_);
   }
   function §\x1a\f\x1d§(sID, §\x1b\x02\x18§)
   {
      this["\x1a\x02\x1a"]["\x1a\f\x13"](sID,_loc3_);
   }
   function §\x18\x07\x01§(sID)
   {
      this["\x1a\x02\x1a"]["\x1a\f\x12"](sID);
   }
   function §\x15\x1e\x12§(sID, §\x1a\x1b\x0f§, §\x19\x05\x06§, §\x16\x13\x0f§, §\x19\x06\f§)
   {
      this["\x15\x1e\x11"](sID,_loc3_,_loc4_,_loc5_);
      var _loc7_ = new Object();
      _loc7_.timerId = _global.setInterval(this,"removeSpriteExtraClipOnTimer",_loc6_,_loc7_,sID,_loc5_);
   }
   function removeSpriteExtraClipOnTimer(§\x1a\x02\x0f§, sID, §\x16\x13\x0f§)
   {
      _global.clearInterval(_loc2_.timerId);
      this["\x1a\f\x1b"](sID,_loc4_);
   }
   function §\x15\x1e\x11§(sID, §\x1a\x1b\x0f§, §\x19\x05\x06§, §\x16\x13\x0f§)
   {
      this.spriteHandler["\x15\x1e\x11"](sID,_loc3_,_loc4_,_loc5_);
   }
   function §\x1a\f\x1b§(sID, §\x16\x13\x0f§)
   {
      this.spriteHandler["\x1a\f\x1b"](sID,_loc3_);
   }
   function §\x1b\x01\x04§(sID, §\x19\x10\x10§, §\x19\x05\x06§)
   {
      this.spriteHandler["\x1b\x01\x04"](sID,_loc3_,_loc4_);
   }
   function §\x1a\x1a\x07§(§\x16\x10\x02§)
   {
      this["\x16\f\x0f"] = _loc2_;
      this.spriteHandler["\x1a\x1a\x07"](_loc2_);
   }
   function §\x1a\x1a\n§(sID, §\x19\r\x1b§, §\x19\r\x1c§)
   {
      this.spriteHandler["\x1a\x1a\n"](sID,_loc3_,_loc4_);
   }
   function §\x17\n\x04§(§\x16\b\x13§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      if(this["\x18\x03\x13"]["\x16\f\x10"])
      {
         new org.flashdevelop.utils.FlashConnect.trace("[Battlefield] (drawGrid) Effacage de la grille","ank.battlefield.Battlefield::drawGrid","C:\\Users\\ddallinge\\Git\\client\\src\\ank-common\\classes/ank/battlefield/Battlefield.as",1145);
         this["\x1a\f\x07"]();
      }
      else
      {
         new org.flashdevelop.utils.FlashConnect.trace("[Battlefield] (drawGrid) Dessin de la grille","ank.battlefield.Battlefield::drawGrid","C:\\Users\\ddallinge\\Git\\client\\src\\ank-common\\classes/ank/battlefield/Battlefield.as",1150);
         this["\x18\x03\x13"].draw(_loc2_);
      }
   }
   function §\x1a\f\x07§(§\x1b\x18\n§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      this["\x18\x03\x13"].clear();
   }
   function showCellIds()
   {
      this._bShowCellId = true;
      this.updateCellIds();
   }
   function hideCellIds()
   {
      this._bShowCellId = false;
      this.updateCellIds();
   }
   function updateCellIds()
   {
      if(this._mcCellIds != undefined)
      {
         this._mcCellIds.removeMovieClip();
         this._mcCellIds = undefined;
      }
      if(this._bShowCellId)
      {
         this._mcCellIds = this["\x18\x18\x15"].drawCellIds();
      }
   }
   function §\x16\x01\b§(sID, §\x19\x12\x14§, §\x19\x04\x12§, §\x19\x06\x06§, §\x1b\t\x03§)
   {
      if(!this["\x18\x0e\x1b"])
      {
         return undefined;
      }
      var _loc7_ = this["\x1e\x03\b"]Sprites.getItemAt(sID);
      var _loc8_ = this["\x1e\x03\b"]Sprites.getItemAt(_loc6_);
      this["\x1b\x18\x05"]["\x15\x1d\b"](_loc7_,_loc3_,_loc4_,_loc5_,_loc8_);
   }
   function clearSpellPreview()
   {
      this["\x1b\x13\x18"](true);
      this["\x16\x1c\x13"]("spell");
      this["\x16\x1c\x0b"]();
      this.api.ui["\x18\x06\x07"]();
   }
   function §\x18\t\x1d§(§\x1b\x18\n§)
   {
      if(this["\x1e\x03\b"] == undefined)
      {
         return false;
      }
      this["\x1e\x03\b"].Map["\x16\x1b\x17"]();
      this["\x1e\x03\b"].Map = new ank.battlefield.datacenter.Map();
      this["\x1e\x03\b"]Sprites = new ank.utils.["\x17\x0e\r"]();
      return true;
   }
   function §\x17\x02\x10§(§\x1b\x18\n§)
   {
      this["\x18\x18\x15"] = new ank.battlefield["\x18\x18\x16"](this,this._mcMainContainer,this["\x1e\x03\b"]);
      this.spriteHandler = new ank.battlefield.SpriteHandler(this,this._mcMainContainer["\x17\x0e\x12"].Object2,this["\x1e\x03\b"]Sprites);
      this["\x18\x0b\x05"] = new ank.battlefield["\x18\x0b\x06"](this._mcMainContainer["\x17\x0e\x12"].InteractionCell,this["\x1e\x03\b"]);
      this["\x1b\x1b\t"] = new ank.battlefield["\x1b\x1b\n"](this,this._mcMainContainer["\x17\x0e\x12"]["\x1b\x1b\b"]);
      this["\x1a\x06\x06"] = new ank.battlefield["\x1a\x06\x07"](this,this._mcMainContainer["\x17\x0e\x12"]["\x1a\x06\x05"]);
      this["\x1a\x12\x1c"] = new ank.battlefield["\x1a\x12\x1d"](this,this._mcMainContainer["\x17\x0e\x12"],this["\x1e\x03\b"]);
      this["\x18\x03\x13"] = new ank.battlefield["\x18\x03\x14"](this._mcMainContainer["\x17\x0e\x12"].Grid,this["\x1e\x03\b"]);
      this["\x1b\x18\x05"] = new ank.battlefield["\x1b\x18\x06"](this,this._mcMainContainer["\x17\x0e\x12"].Object2);
      this["\x1b\x0f\x12"] = new ank.battlefield.TextHandler(this,this._mcMainContainer["\x1b\x0f\x10"],this["\x1e\x03\b"]);
      this["\x1a\x06\x0b"] = new ank.battlefield["\x1a\x06\f"](this,this._mcMainContainer["\x1a\x06\n"],this["\x1e\x03\b"]);
      this["\x1a\x02\x1a"] = new ank.battlefield["\x1a\x02\x1b"](this,this._mcMainContainer["\x1a\x02\x19"]);
   }
   function onLoadInit(§\x18\x1b\f§)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_._name) !== "Ground")
      {
         _loc2_.__proto__ = ank.battlefield.mc["\x17\x0e\x12"].prototype;
         _loc2_.initialize(this["\x1e\t\x1d"]);
         this["\x17\x02\x10"]();
      }
      else
      {
         _loc2_._parent["\x1b\x16\x14"](this["\x1c\x0b\x1b"]);
         this["\x16\n\n"] = true;
         this.onInitComplete();
      }
   }
   function onLoadError(§\x18\x1b\f§)
   {
      this["\x19\x19\x02"]();
   }
   function onLoadProgress(§\x18\x1b\f§, §\x19\x03\x1d§, §\x19\x04\x06§)
   {
      this.onInitProgress(_loc3_,_loc4_);
   }
}
