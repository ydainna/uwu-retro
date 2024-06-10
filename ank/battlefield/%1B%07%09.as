class ank.battlefield.§\x1b\x07\t§
{
   static var §\x17\x06\r§ = 6;
   static var §\x1c\x07\n§ = false;
   static var §\x1c\b\r§ = false;
   function §\x1b\x07\t§(§\x16\b\b§, c, d)
   {
      this.initialize(_loc2_,c,_loc4_);
   }
   function §\x1e\x1e\x13§()
   {
      return ank.battlefield.SpriteHandler["\x1c\b\r"];
   }
   function §\x1e\x1e\r§()
   {
      return ank.battlefield.SpriteHandler["\x1c\x07\n"];
   }
   function initialize(§\x16\b\b§, c, d)
   {
      this["\x1d\b\x12"] = _loc2_;
      this["\x1e\x05\x1c"] = _loc4_;
      this["\x1d\n\x06"] = c;
      this.api = _global.api;
   }
   function clear(§\x16\x0e\x02§)
   {
      var _loc3_ = this["\x1e\x05\x1c"].getItems();
      for(var k in _loc3_)
      {
         this["\x1a\f\x19"](k,_loc2_);
      }
   }
   function §\x18\x01\n§()
   {
      return this["\x1e\x05\x1c"];
   }
   function §\x18\x01\b§(sID)
   {
      return this["\x1e\x05\x1c"].getItemAt(sID);
   }
   function getSpriteMc(sID)
   {
      return this["\x1d\n\x06"]["sprite" + sID];
   }
   function addSprite(sID, §\x1a\x02\b§)
   {
      var _loc4_ = true;
      if(_loc3_ == undefined)
      {
         _loc4_ = false;
         _loc3_ = this["\x1e\x05\x1c"].getItemAt(sID);
      }
      if(_loc3_ == undefined)
      {
         ank.utils.Logger.err("[addSprite] pas de spriteData");
         return undefined;
      }
      if(_loc4_)
      {
         this["\x1e\x05\x1c"]["\x15\x1d\x13"](sID,_loc3_);
      }
      this["\x1d\n\x06"]["sprite" + sID].removeMovieClip();
      var _loc5_ = ank.battlefieldutils.["\x1b\x07\x07"]["\x17\x18\x01"](this["\x1d\b\x12"]["\x18\x18\x15"],this["\x1e\x05\x1c"],_loc3_.cellNum,_loc3_["\x16\x03\x06"] && this["\x1d\b\x12"]["\x16\f\x0f"]);
      var _loc6_ = this["\x1d\n\x06"].getInstanceAtDepth(_loc5_);
      _loc3_.mc = this["\x1d\n\x06"]["\x16\x06\x16"](_loc3_["\x16\x1c\x16"],"sprite" + sID,_loc5_,[this["\x1d\b\x12"],this["\x1e\x05\x1c"],_loc3_]);
      _loc3_["\x18\x0e\x04"] = this["\x1c\x01\x1b"];
      if(_loc3_["\x16\x03\x06"] && this["\x1d\b\x12"]["\x16\f\x0f"])
      {
         _loc3_.mc["\x1a\x14\x1a"](ank.battlefield.Constants["\x18\x02\x1a"]);
      }
   }
   function §\x15\x1d\x19§(sID, §\x1b\x05\x04§, §\x19\x05\x03§, §\x1a\x02\b§)
   {
      var _loc6_ = true;
      var _loc7_ = this["\x1e\x05\x1c"].getItemAt(_loc3_);
      if(_loc7_ == undefined)
      {
         ank.utils.Logger.err("[addLinkedSprite] pas de spriteData parent");
         return undefined;
      }
      if(_loc5_ == undefined)
      {
         _loc6_ = false;
         _loc5_ = this["\x1e\x05\x1c"].getItemAt(sID);
      }
      if(_loc5_ == undefined)
      {
         ank.utils.Logger.err("[addLinkedSprite] pas de spriteData");
         return undefined;
      }
      if(_loc6_)
      {
         this["\x1e\x05\x1c"]["\x15\x1d\x13"](sID,_loc5_);
      }
      var _loc8_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\r"](this["\x1d\b\x12"]["\x18\x18\x15"],_loc7_.cellNum,_loc7_.direction,_loc4_);
      var _loc9_ = this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](_loc8_);
      if(_loc9_.movement > 0 && _loc9_["\x15\x1c\x1a"])
      {
         _loc5_.cellNum = _loc8_;
      }
      else
      {
         _loc5_.cellNum = _loc7_.cellNum;
      }
      _loc5_["\x18\x15\x0b"] = _loc7_;
      _loc5_["\x16\x1b\x05"] = _loc4_;
      _loc7_["\x18\x15\b"]["\x15\x1d\x13"](sID,_loc5_);
      this.addSprite(sID);
   }
   function §\x16\x17\x05§(sID, §\x1b\x05\x04§)
   {
      var _loc4_ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(_loc4_ == undefined)
      {
         ank.utils.Logger.err("[carriedSprite] pas de spriteData");
         return undefined;
      }
      var _loc5_ = this["\x1e\x05\x1c"].getItemAt(_loc3_);
      if(_loc5_ == undefined)
      {
         ank.utils.Logger.err("[carriedSprite] pas de spriteData parent");
         return undefined;
      }
      if(!_loc5_["\x18\x05\x04"]())
      {
         this["\x16\x07\x11"](_loc3_,_loc4_.cellNum);
         _loc4_.direction = _loc5_.direction;
         _loc4_["\x16\x17\x04"] = _loc5_;
         _loc5_["\x16\x17\x03"] = _loc4_;
         var _loc6_ = _loc5_.mc;
         _loc6_.setAnim("carring",false,false);
         _loc6_.onEnterFrame = function()
         {
            this["\x1b\x14\x07"]();
            delete this.onEnterFrame;
         };
         _loc4_.mc["\x1b\x15\x11"](_loc5_.cellNum,_loc4_["\x18\x10\x0e"]);
         _loc4_.mc["\x1a\x18\x05"](_loc5_.cellNum);
      }
   }
   function §\x1a\f\x01§(§\x1a\x10\r§)
   {
      if(!this.api.datacenter.Game.isFight || _loc2_ == undefined)
      {
         return undefined;
      }
      var _loc3_ = this.getSprites().getItems();
      for(var sID in _loc3_)
      {
         var _loc4_ = _loc3_[sID];
         var _loc5_ = _loc4_["\x17\f\t"];
         if(_loc5_ != undefined)
         {
            _loc5_["\x1a\f\x01"](_loc2_);
         }
      }
   }
   function §\x1b\x13\n§(sID, §\x19\x04\x12§, §\x16\x14\x1c§, §\x1a\x01\x1d§)
   {
      var §\x1a\x02\b§ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(eval("\x1a\x02\b") == undefined)
      {
         ank.utils.Logger.err("[addLinkedSprite] pas de spriteData parent");
         return undefined;
      }
      if(eval("\x1a\x02\b")["\x18\x05\x05"]())
      {
         eval("\x1a\x02\b")["\x1b\x13\x0b"] = true;
         var _loc6_ = eval("\x1a\x02\b").mc;
         var _loc7_ = eval("\x1a\x02\b")["\x16\x17\x04"];
         var _loc8_ = _loc7_.mc;
         var _loc9_ = _loc7_.sequencer;
         if(_loc5_ == undefined)
         {
            _loc5_ = _loc9_;
         }
         else if(_loc4_)
         {
            _loc5_.addAction(1,false,this,function(§\x1a\x01\x01§, §\x1a\x02\x01§)
            {
               _loc2_.sequencer = _loc3_;
            }
            ,[_loc7_,_loc5_]);
         }
         if(_loc4_)
         {
            _loc5_.addAction(2,false,this,this["\x16\x07\x11"],[_loc7_.id,_loc3_]);
            _loc5_.addAction(3,true,_loc8_,_loc8_.setAnim,["carringEnd",false,false]);
            _loc8_.onEnterFrame = function()
            {
               this["\x1b\x14\x07"]();
               delete this.onEnterFrame;
            };
         }
         _loc5_.addAction(4,false,this,function(§\x19\x12\b§, §\x1a\x01\x01§)
         {
            eval("\x1a\x02\b")["\x1b\x13\x0b"] = false;
            eval("\x1a\x02\b")["\x16\x17\x04"] = undefined;
            _loc3_["\x16\x17\x03"] = undefined;
         }
         ,[eval("\x1a\x02\b"),_loc7_]);
         if(!_loc5_["\x17\x01\x03"](_loc6_,_loc6_["\x1a\x18\x18"]))
         {
            _loc5_.addAction(5,false,this,this["\x1a\x1a\t"],[eval("\x1a\x02\b").id,_loc3_]);
         }
         if(!_loc7_["\x18\x0f\x0b"])
         {
            _loc5_.addAction(6,false,_loc8_,_loc8_.setAnim,["static",false,false]);
         }
         if(_loc4_)
         {
            _loc5_.addAction(7,false,this,function(§\x1a\x01\x01§, §\x1a\x02\x01§)
            {
               _loc2_.sequencer = _loc3_;
            }
            ,[_loc7_,_loc9_]);
         }
      }
   }
   function §\x18\x1e\f§(sID, §\x19\x13\x13§)
   {
      var _loc4_ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(_loc4_ == undefined)
      {
         ank.utils.Logger.err("[mountSprite] Sprite " + sID + " inexistant");
         return undefined;
      }
      if(_loc3_ != _loc4_.mount)
      {
         _loc4_.mount = _loc3_;
         _loc4_.mc.draw();
      }
   }
   function §\x1b\x13\x16§(sID)
   {
      var _loc3_ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(_loc3_ == undefined)
      {
         ank.utils.Logger.err("[unmountSprite] Sprite " + sID + " inexistant");
         return undefined;
      }
      if(_loc3_.mount != undefined)
      {
         _loc3_.mount = undefined;
         _loc3_.mc.draw();
      }
   }
   function §\x1a\f\x19§(sID, §\x16\x0e\x02§)
   {
      this["\x1d\b\x12"]["\x1a\f\x1a"](sID);
      this["\x1d\b\x12"]["\x18\x07\x01"](sID);
      if(_loc3_ == undefined)
      {
         _loc3_ = false;
      }
      var _loc4_ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(_loc4_.mc != undefined && _loc4_.mc == this.api.gfx["\x1a\x0e\x16"])
      {
         this.api.gfx["\x19\x1d\x06"](_loc4_.mc);
      }
      if(_loc4_["\x18\x05\x06"])
      {
         var _loc5_ = _loc4_["\x18\x15\b"].getItems();
         for(var k in _loc5_)
         {
            this["\x1a\f\x19"](_loc5_[k].id,_loc3_);
         }
      }
      if(_loc4_["\x18\x05\x0e"] && !_loc3_)
      {
         _loc4_["\x18\x15\x0b"]["\x18\x15\b"]["\x1a\f\n"](sID);
      }
      if(_loc4_["\x18\x05\x04"]())
      {
         _loc4_["\x16\x17\x03"]["\x16\x17\x04"] = undefined;
         _loc4_["\x16\x17\x03"].mc["\x1a\x18\x18"]();
      }
      if(_loc4_["\x18\x05\x05"]())
      {
         var _loc6_ = _loc4_["\x16\x17\x04"];
         _loc4_["\x16\x17\x04"]["\x16\x17\x03"] = undefined;
         _loc6_.mc.setAnim("static",false,false);
      }
      this["\x1d\n\x06"]["sprite" + sID].__proto__ = MovieClip.prototype;
      this["\x1d\n\x06"]["sprite" + sID].removeMovieClip();
      this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](_loc4_.cellNum)["\x1a\f\x1c"](_loc4_.id);
      if(!_loc3_)
      {
         this["\x1e\x05\x1c"]["\x1a\f\n"](sID);
      }
   }
   function §\x18\x06\x1c§(sID, §\x16\f\x12§)
   {
      var _loc4_ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(_loc4_["\x18\x05\x06"])
      {
         var _loc5_ = _loc4_["\x18\x15\b"].getItems();
         for(var k in _loc5_)
         {
            this["\x18\x06\x1c"](_loc5_[k].id,_loc3_);
         }
      }
      _loc4_.mc["\x1a\x1b\x03"](!_loc3_);
   }
   function §\x1b\x13\x15§()
   {
      this["\x1c\x01\x1b"] = false;
      var _loc2_ = this["\x1e\x05\x1c"].getItems();
      for(var k in _loc2_)
      {
         _loc2_[k]["\x18\x0e\x04"] = false;
      }
   }
   function §\x18\x19\t§()
   {
      this["\x1c\x01\x1b"] = true;
      var _loc2_ = this["\x1e\x05\x1c"].getItems();
      for(var k in _loc2_)
      {
         _loc2_[k]["\x18\x0e\x04"] = true;
      }
   }
   function hideSprites(§\x16\f\x12§, §\x19\x10\x06§)
   {
      if(this.api.datacenter.Game.isFight)
      {
         return undefined;
      }
      ank.battlefield.SpriteHandler["\x1c\x07\n"] = _loc2_ != undefined ? _loc2_ : true;
      var _loc5_ = this.getSprites().getItems();
      for(var sID in _loc5_)
      {
         if(sID != this.api.datacenter.Player.ID)
         {
            var _loc6_ = _loc5_[sID];
            var _loc7_ = _loc6_.mc;
            var _loc8_ = _loc7_.data;
            switch(_loc3_)
            {
               case 1:
                  var _loc4_ = _loc8_ instanceof dofus.datacenter.["\x16\x19\x02"] || (_loc8_ instanceof dofus.datacenter.["\x18\x1d\x19"] || (_loc8_ instanceof dofus.datacenter.["\x19\x12\x19"] || _loc8_ instanceof dofus.datacenter.["\x1a\x07\x0b"]));
                  break;
               case 2:
                  _loc4_ = _loc8_ instanceof dofus.datacenter.["\x19\x0b\x07"];
                  break;
               case 3:
                  _loc4_ = _loc8_ instanceof dofus.datacenter.["\x18\x1d\x19"];
                  break;
               case 4:
                  _loc4_ = _loc8_ instanceof dofus.datacenter.["\x16\x19\x02"];
               default:
                  _loc4_ = true;
            }
            if(_loc4_)
            {
               _loc6_.mc["\x1a\x1b\x03"](!_loc2_);
               var _loc9_ = _loc6_["\x18\x15\b"].getItems();
               for(var §\x1a\x10\x17§ in _loc9_)
               {
                  var _loc10_ = _loc9_[eval("\x1a\x10\x17")];
                  _loc10_.mc["\x1a\x1b\x03"](!_loc2_);
               }
            }
         }
      }
   }
   function §\x1a\x1a\x05§(sID, §\x19\x06\x01§)
   {
      if(_loc3_ == undefined)
      {
         return undefined;
      }
      var _loc4_ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(_loc4_ == undefined)
      {
         ank.utils.Logger.err("[setSpriteDirection] Sprite " + sID + " inexistant");
         return undefined;
      }
      if(_loc4_["\x18\x05\x06"])
      {
         var _loc5_ = _loc4_["\x18\x15\b"].getItems();
         for(var k in _loc5_)
         {
            this["\x1a\x1a\x05"](_loc5_[k].id,_loc3_);
         }
      }
      if(_loc4_["\x18\x05\x04"]())
      {
         _loc4_["\x16\x17\x03"].mc["\x1a\x16\x04"](_loc3_);
      }
      var _loc6_ = _loc4_.mc;
      _loc6_["\x1a\x16\x04"](_loc3_);
   }
   function §\x1a\x1a\t§(sID, §\x19\x04\x12§, §\x19\x06\x01§)
   {
      var _loc5_ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(_loc5_ == undefined)
      {
         ank.utils.Logger.err("[setSpritePosition] Sprite " + sID + " inexistant");
         return undefined;
      }
      if(_global.isNaN(Number(_loc3_)))
      {
         ank.utils.Logger.err("[setSpritePosition] cellNum n\'est pas un nombre");
         return undefined;
      }
      if(Number(_loc3_) < 0 || Number(_loc3_) > this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1c"]())
      {
         ank.utils.Logger.err("[setSpritePosition] cellNum invalide");
         return undefined;
      }
      if(_loc5_["\x18\x05\x06"])
      {
         var _loc6_ = _loc5_["\x18\x15\b"].getItems();
         for(var k in _loc6_)
         {
            var _loc7_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\r"](this["\x1d\b\x12"]["\x18\x18\x15"],_loc3_,_loc4_,_loc6_[k]["\x16\x1b\x05"]);
            this["\x1a\x1a\x05"](_loc6_[k].id,_loc7_,_loc4_);
         }
      }
      this["\x1d\b\x12"]["\x1a\f\x1a"](sID);
      if(_loc4_ != undefined)
      {
         _loc5_.direction = _loc4_;
      }
      var _loc8_ = _loc5_.mc;
      _loc8_["\x1a\x18\x18"](_loc3_);
   }
   function §\x1b\x0b\x04§(sID, §\x1a\x01\x1d§, §\x19\x04\x12§)
   {
      _loc3_.clearAllNextActions();
      var _loc5_ = this["\x1e\x05\x1c"].getItemAt(sID);
      var _loc6_ = _loc5_.mc;
      _loc5_.isInMove = false;
      _loc3_.addAction(8,false,_loc6_,_loc6_["\x1a\x18\x18"],[_loc4_]);
      _loc3_.addAction(9,false,_loc6_,_loc6_.setAnim,["static"]);
   }
   function §\x1b\x03\x02§(sID, §\x16\x17\x18§, §\x1a\x14\x01§, §\x1a\x0f\x10§)
   {
      if(_loc3_ == -1)
      {
         return undefined;
      }
      if(_loc5_ == undefined)
      {
         _loc5_ = "static";
      }
      var _loc6_ = this["\x1e\x05\x1c"].getItemAt(sID);
      var _loc7_ = _loc6_["\x17\x13\x02"] == -1 ? _loc6_.cellNum : _loc6_["\x17\x13\x02"];
      var _loc8_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x16\x16"](this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](_loc7_).x,this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](_loc7_)["\x1a\x0e\x17"],this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](_loc3_).x,this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](_loc3_)["\x1a\x0e\x17"],false);
      var _loc9_ = ank.battlefieldutils.Compressor["\x18\x18\b"](this["\x1d\b\x12"]["\x18\x18\x15"],[{num:_loc7_},{num:_loc3_,dir:_loc8_}]);
      if(_loc9_ != undefined)
      {
         this["\x19\x01\n"](sID,_loc9_,_loc4_,false,_loc5_);
      }
   }
   function §\x19\x01\n§(sID, §\x1a\x04\x06§, §\x1a\x14\x01§, §\x16\n\x05§, §\x1a\x0f\x10§, §\x16\f\x01§, §\x16\f\x02§, §\x1a\x0f\x03§)
   {
      this["\x1d\b\x12"]["\x1a\f\x1a"](sID);
      this["\x1d\b\x12"]["\x18\x07\x01"](sID);
      var _loc10_ = _loc6_ != undefined;
      if(_loc9_ == undefined)
      {
         _loc9_ = ank.battlefield.SpriteHandler["\x17\x06\r"];
      }
      if(_loc7_ == undefined)
      {
         _loc7_ = false;
      }
      if(_loc8_ == undefined)
      {
         _loc8_ = false;
      }
      var _loc11_ = !_loc10_ ? "walk" : "slide";
      if(_loc8_)
      {
         _loc11_ = "walk";
      }
      else if(_loc7_)
      {
         _loc11_ = "run";
      }
      else if(!_loc7_ && (!_loc8_ && !_loc10_))
      {
         if(_loc3_.length > _loc9_)
         {
            _loc11_ = "run";
         }
      }
      var _loc12_ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(_loc12_ == undefined)
      {
         ank.utils.Logger.err("[moveSprite] Sprite " + sID + " inexistant");
         return undefined;
      }
      if(_loc4_ == undefined)
      {
         _loc4_ = _loc12_.sequencer;
      }
      var _loc13_ = Number(_loc3_[_loc3_.length - 1]);
      _loc12_["\x17\x13\x02"] = _loc13_;
      if(_loc12_["\x18\x05\x06"])
      {
         if(_loc3_.length > 1)
         {
            var _loc14_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x16\x15"](this["\x1d\b\x12"]["\x18\x18\x15"],Number(_loc3_[_loc3_.length - 2]),_loc13_);
         }
         else
         {
            _loc14_ = _loc12_.direction;
         }
         var _loc15_ = _loc12_["\x18\x15\b"].getItems();
         for(var k in _loc15_)
         {
            var _loc16_ = _loc15_[k];
            var _loc17_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x14\r"](this["\x1d\b\x12"]["\x18\x18\x15"],_loc13_,_loc14_,_loc16_["\x16\x1b\x05"]);
            var _loc18_ = ank.battlefieldutils.["\x1a\x04\b"]["\x1a\x04\x07"](this.api,this["\x1d\b\x12"]["\x18\x18\x15"],_loc16_.cellNum,_loc17_,{bAllDirections:_loc16_.allDirections,bIgnoreSprites:true,bCellNumOnly:true,bWithBeginCellNum:true});
            if(_loc18_ != null)
            {
               ank.utils.Timer.setTimer(_loc16_,"battlefield",this,this["\x19\x01\n"],200 + (_loc12_.cellNum != _loc16_.cellNum ? 0 : 200),[_loc16_.id,_loc18_,_loc16_.sequencer,_loc5_,_loc6_,_loc16_["\x17\x12\b"] || _loc7_,_loc16_["\x17\x12\n"] || _loc8_,_loc9_]);
            }
         }
      }
      var _loc19_ = _loc12_.mc;
      if(_loc5_)
      {
         if(!_loc10_)
         {
            _loc4_.clearAllNextActions();
         }
      }
      _loc4_.addAction(10,false,_loc19_,_loc19_["\x1a\x18\x18"],[_loc3_[0]]);
      var _loc20_ = _loc3_.length;
      var _loc21_ = _loc20_ - 1;
      var _loc22_ = 0;
      while(_loc22_ < _loc20_)
      {
         var _loc23_ = _loc6_;
         var _loc24_ = _loc11_;
         var _loc25_ = false;
         if(_loc22_ != 0)
         {
            var _loc26_ = this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x15\x01"](_loc3_[_loc22_ - 1]);
            var _loc27_ = this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x15\x01"](_loc3_[_loc22_]);
            if(Math.abs(_loc26_ - _loc27_) > 0.5 && this["\x1d\b\x12"]["\x18\x0e\x0f"])
            {
               _loc23_ = "jump";
               _loc24_ = "run";
               _loc25_ = true;
            }
         }
         _loc4_.addAction(11,true,_loc19_,_loc19_["\x19\x01\x0e"],[_loc4_,_loc3_[_loc22_],_loc22_ == _loc21_,_loc24_,_loc23_,_loc25_]);
         _loc22_ = _loc22_ + 1;
      }
      _loc4_.execute();
   }
   function §\x1a\x15\x17§(§\x16\x0b\t§)
   {
      var _loc3_ = this.api.datacenter.Sprites.getItems();
      for(var k in _loc3_)
      {
         var _loc4_ = _loc3_[k];
         if(_loc4_ instanceof dofus.datacenter.["\x16\x19\x02"])
         {
            if(_loc4_["\x16\x16\x14"])
            {
               if(!(_loc4_ instanceof dofus.datacenter.["\x19\x02\x13"]))
               {
                  if(_loc2_)
                  {
                     if(!_loc4_["\x16\r\x06"])
                     {
                        _loc4_.tmpGfxFile = _loc4_.gfxFile;
                        _loc4_.tmpMount = _loc4_.mount;
                        _loc4_.mount = undefined;
                        var _loc5_ = dofus.Constants["\x16\x1c\x1a"] + _loc4_.Guild + "2.swf";
                        this.api.gfx["\x1a\x1a\x06"](_loc4_.id,_loc5_);
                        _loc4_["\x16\r\x06"] = true;
                     }
                  }
                  else if(_loc4_["\x16\r\x06"])
                  {
                     _loc4_.mount = _loc4_.tmpMount;
                     delete _loc4_.tmpMount;
                     var _loc6_ = _loc4_.tmpGfxFile != undefined ? _loc4_.tmpGfxFile : _loc4_.gfxFile;
                     delete _loc4_.tmpGfxFile;
                     this.api.gfx["\x1a\x1a\x06"](_loc4_.id,_loc6_);
                     _loc4_["\x16\r\x06"] = false;
                  }
               }
            }
         }
      }
   }
   static function resetStaticVars()
   {
      ank.battlefield.SpriteHandler["\x1c\x07\n"] = false;
      ank.battlefield.SpriteHandler["\x1c\b\r"] = false;
   }
   function §\x1a\x1e\x0e§(bShow)
   {
      ank.battlefield.SpriteHandler["\x1c\b\r"] = _loc2_;
      var _loc3_ = this.api.gfx.SpriteHandler.getSprites().getItems();
      for(var sID in _loc3_)
      {
         var _loc4_ = _loc3_[sID].mc;
         var _loc5_ = _loc4_.data;
         if(_loc5_ instanceof dofus.datacenter.["\x18\x1d\x19"])
         {
            if(_loc2_)
            {
               _loc4_["\x1e\x07\n"](true);
            }
            else
            {
               _loc4_["\x1e\x07\t"](true);
            }
         }
      }
   }
   function §\x18\x13\x07§(sID, §\x19\x12\x14§, §\x19\x04\x12§, §\x19\x06\x06§, §\x19\x02\x06§, §\x1b\t\x03§, §\x1a\x02\x0b§, §\x16\f\n§, §\x16\t\x12§)
   {
      if(_loc10_ == undefined)
      {
         _loc10_ = true;
      }
      var _loc11_ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(_loc11_ == undefined)
      {
         ank.utils.Logger.err("[launchVisualEffect] Sprite " + sID + " inexistant");
         return undefined;
      }
      var _loc12_ = this["\x1e\x05\x1c"].getItemAt(_loc7_);
      if(!this.api.electron["\x18\x10\x11"])
      {
         _loc3_.file = undefined;
      }
      if(!_loc10_)
      {
         this["\x1d\b\x12"]["\x1b\x18\x05"]["\x15\x1d\b"](_loc11_,_loc3_,_loc4_,_loc5_,_loc12_,!_loc9_ ? _loc11_["\x18\x10\x0e"] : true);
         return undefined;
      }
      var _loc13_ = _loc11_.mc;
      var _loc14_ = _loc11_.sequencer;
      var _loc15_ = true;
      switch(_loc5_)
      {
         case 0:
            var _loc16_ = false;
            _loc15_ = false;
            break;
         case 10:
         case 11:
            _loc16_ = false;
            break;
         case 12:
            _loc16_ = true;
            break;
         case 20:
         case 21:
            _loc16_ = false;
            break;
         case 30:
         case 31:
            _loc16_ = true;
            break;
         case 40:
         case 41:
            _loc16_ = true;
            break;
         case 50:
            _loc16_ = false;
            break;
         case 51:
            _loc16_ = true;
            break;
         default:
            _loc16_ = false;
            _loc15_ = false;
      }
      _loc13_._ACTION = _loc11_;
      _loc13_._OBJECT = _loc13_;
      _loc14_.addAction(12,false,this,this["\x16\x07\x11"],[sID,_loc4_]);
      if(_loc6_ != undefined)
      {
         var _loc17_ = typeof _loc6_;
         if(_loc17_ == "object")
         {
            if(_loc6_.length < 3)
            {
               ank.utils.Logger.err("[launchVisualEffect] l\'anim " + _loc6_ + " est invalide");
               return undefined;
            }
            var _loc18_ = _loc11_.cellNum;
            var _loc19_ = this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](_loc18_);
            var _loc20_ = this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](_loc4_);
            var _loc21_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x16\x16"](_loc19_.x,_loc19_.y,_loc20_.x,_loc20_.y,false);
            var _loc22_ = ank.battlefieldutils.Compressor["\x18\x18\b"](this["\x1d\b\x12"]["\x18\x18\x15"],ank.battlefieldutils.["\x1a\x04\b"]["\x1a\x04\x07"](this.api,this["\x1d\b\x12"]["\x18\x18\x15"],_loc18_,_loc4_,{bIgnoreSprites:true,bWithBeginCellNum:true}));
            _loc22_.pop();
            var _loc23_ = _loc22_[_loc22_.length - 1];
            this["\x19\x01\n"](sID,_loc22_,_loc14_,false,_loc6_[0],false,true);
            _loc14_.addAction(13,false,_loc13_,_loc13_["\x1a\x16\x04"],[ank.battlefieldutils.["\x1a\x04\b"]["\x17\x01\x07"](_loc21_)]);
            _loc14_.addAction(14,true,_loc13_,_loc13_.setAnim,[_loc6_[1]]);
            if(_loc15_)
            {
               _loc14_.addAction(15,_loc16_,this["\x1d\b\x12"]["\x1b\x18\x05"],this["\x1d\b\x12"]["\x1b\x18\x05"]["\x15\x1d\b"],[_loc11_,_loc3_,_loc4_,_loc5_,_loc12_,!_loc9_ ? _loc11_["\x18\x10\x0e"] : true]);
            }
            var _loc24_ = ank.battlefieldutils.Compressor["\x18\x18\b"](this["\x1d\b\x12"]["\x18\x18\x15"],ank.battlefieldutils.["\x1a\x04\b"]["\x1a\x04\x07"](this.api,this["\x1d\b\x12"]["\x18\x18\x15"],_loc23_,_loc18_,{bIgnoreSprites:true,bWithBeginCellNum:true}));
            this["\x19\x01\n"](sID,_loc24_,_loc14_,false,_loc6_[2],false,true);
            _loc14_.addAction(16,false,_loc13_,_loc13_["\x1a\x16\x04"],[_loc21_]);
            if(_loc6_[3] != undefined)
            {
               _loc14_.addAction(17,false,_loc13_,_loc13_.setAnim,[_loc6_[3]]);
            }
            _loc14_.execute();
            return undefined;
         }
         if(_loc17_ == "string")
         {
            _loc14_.addAction(18,true,_loc13_,_loc13_.setAnim,[_loc6_,false,true]);
         }
      }
      if(_loc8_ != undefined)
      {
         _loc14_.addAction(19,false,this,this["\x18\x06\x1c"],[_loc8_.id,true]);
      }
      if(_loc15_)
      {
         _loc14_.addAction(20,_loc16_,this["\x1d\b\x12"]["\x1b\x18\x05"],this["\x1d\b\x12"]["\x1b\x18\x05"]["\x15\x1d\b"],[_loc11_,_loc3_,_loc4_,_loc5_,_loc12_,!_loc9_ ? _loc11_["\x18\x10\x0e"] : true]);
      }
      if(_loc8_ != undefined)
      {
         _loc14_.addAction(21,false,this,this["\x18\x06\x1c"],[_loc8_.id,false]);
      }
      _loc14_.execute();
   }
   function §\x18\x13\x03§(sID, §\x19\x12\x14§, §\x19\x04\x12§, §\x19\x06\x06§)
   {
      var _loc6_ = this["\x1e\x05\x1c"].getItemAt(sID);
      var _loc7_ = _loc6_.sequencer;
      if(_loc6_ == undefined)
      {
         ank.utils.Logger.err("[launchCarriedSprite] Sprite " + sID + " inexistant");
         return undefined;
      }
      var _loc8_ = _loc6_["\x16\x17\x03"];
      this["\x18\x13\x07"](sID,_loc3_,_loc4_,_loc5_,"carringThrow",undefined,_loc8_);
      _loc7_.addAction(22,false,this,this["\x1a\x1a\t"],[_loc8_.id,_loc4_]);
      this["\x1b\x13\n"](_loc8_.id,_loc4_,false,_loc7_);
      _loc7_.addAction(23,false,this,this["\x1a\x1a\x03"],[sID,"static"]);
      _loc7_.execute();
   }
   function §\x16\x07\x11§(sID, §\x19\x04\x12§)
   {
      var _loc4_ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(_loc4_ == undefined)
      {
         ank.utils.Logger.err("[launchVisualEffect] Sprite " + sID + " inexistant");
         return undefined;
      }
      if(_loc4_.cellNum != _loc3_)
      {
         var _loc5_ = _loc4_.mc;
         var _loc6_ = this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](_loc4_.cellNum);
         var _loc7_ = this["\x1d\b\x12"]["\x18\x18\x15"]["\x17\x14\x1d"](_loc3_);
         var _loc8_ = ank.battlefieldutils.["\x1a\x04\b"]["\x17\x16\x16"](_loc6_.x,_loc6_["\x1a\x0e\x17"],_loc7_.x,_loc7_["\x1a\x0e\x17"],false);
         _loc5_["\x1a\x16\x04"](_loc8_);
      }
   }
   function §\x17\x01\b§(sID)
   {
      var _loc3_ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(_loc3_ == undefined)
      {
         ank.utils.Logger.err("[convertHeightToFourSpriteDirection] Sprite " + sID + " inexistant");
         return undefined;
      }
      this["\x1a\x1a\x05"](sID,ank.battlefieldutils.["\x1a\x04\b"]["\x17\x01\x07"](_loc3_.direction));
   }
   function §\x1a\x1a\x03§(sID, §\x16\x03\x15§, §\x16\x0b\x1c§)
   {
      var _loc5_ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(_loc5_ == undefined)
      {
         ank.utils.Logger.err("[setSpriteAnim(" + _loc3_ + ")] Sprite " + sID + " inexistant");
         return undefined;
      }
      ank.utils.Timer.removeTimer(_loc5_.mc,"battlefield");
      _loc5_.mc.setAnim(_loc3_,false,_loc4_);
   }
   function §\x1a\x1a\b§(sID, §\x16\x03\x15§, §\x19\x0f\x1a§)
   {
      var _loc5_ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(_loc5_ == undefined)
      {
         ank.utils.Logger.err("[setSpriteLoopAnim] Sprite " + sID + " inexistant");
         return undefined;
      }
      ank.utils.Timer.removeTimer(_loc5_.mc,"battlefield");
      _loc5_.mc.setAnim(_loc3_,true);
      ank.utils.Timer.setTimer(_loc5_.mc,"battlefield",_loc5_.mc,_loc5_.mc.setAnim,_loc4_,["static"]);
   }
   function §\x1a\x1a\x0b§(sID, §\x16\x03\x15§, §\x16\x0b\x1c§, §\x19\x0f\x1a§)
   {
      var _loc6_ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(_loc6_ == undefined)
      {
         ank.utils.Logger.err("[setSpriteTimerAnim] Sprite " + sID + " inexistant");
         return undefined;
      }
      ank.utils.Timer.removeTimer(_loc6_.mc,"battlefield");
      _loc6_.mc["\x1a\x14\x1c"](_loc3_,false,_loc4_,_loc5_);
   }
   function §\x1a\x1a\x06§(sID, §\x1a\x1b\x0f§)
   {
      var _loc4_ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(_loc4_ == undefined)
      {
         ank.utils.Logger.err("[setSpriteGfx] Sprite " + sID + " inexistant");
         return undefined;
      }
      if(_loc3_ != _loc4_.gfxFile)
      {
         _loc4_.gfxFile = _loc3_;
         _loc4_.mc.draw();
         if(_loc4_["\x16\x03\x06"] && this["\x1d\b\x12"]["\x16\f\x0f"])
         {
            _loc4_.mc["\x1a\x14\x1a"](ank.battlefield.Constants["\x18\x02\x1a"]);
         }
      }
   }
   function §\x1a\x1a\x04§(sID, §\x1b\r\x11§)
   {
      var _loc4_ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(_loc4_ == undefined)
      {
         ank.utils.Logger.err("[setSpriteColorTransform] Sprite " + sID + " inexistant");
         return undefined;
      }
      _loc4_.mc["\x1a\x15\x13"](_loc3_);
   }
   function §\x1a\x1a\x02§(sID, §\x19\x03\x07§)
   {
      var _loc4_ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(_loc4_ == undefined)
      {
         ank.utils.Logger.err("[setSpriteAlpha] Sprite " + sID + " inexistant");
         return undefined;
      }
      _loc4_.mc["\x1a\x14\x1a"](_loc3_);
   }
   function §\x15\x1e\x11§(sID, §\x16\x1c\x17§, §\x16\x1d\x05§, §\x16\x13\x0f§)
   {
      var _loc6_ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(_loc6_ == undefined)
      {
         ank.utils.Logger.err("[addSpriteExtraClip] Sprite " + sID + " inexistant");
         return undefined;
      }
      _loc6_.mc["\x15\x1d\r"](_loc3_,_loc4_,_loc5_);
   }
   function §\x1a\f\x1b§(sID, §\x16\x13\x0f§)
   {
      var _loc4_ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(_loc4_ == undefined)
      {
         ank.utils.Logger.err("[removeSpriteExtraClip] Sprite " + sID + " inexistant");
         return undefined;
      }
      _loc4_.mc["\x1a\f\x04"](_loc3_);
   }
   function §\x1b\x01\x04§(sID, §\x1b\x17\x16§, §\x16\x1d\x05§)
   {
      var _loc5_ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(_loc5_ == undefined)
      {
         ank.utils.Logger.err("[showSpritePoints] Sprite " + sID + " inexistant");
         return undefined;
      }
      _loc5_.mc.showPoints(_loc3_,_loc4_);
   }
   function §\x1a\x1a\x07§(§\x16\x10\x02§)
   {
      var _loc3_ = this["\x1e\x05\x1c"].getItems();
      for(var k in _loc3_)
      {
         var _loc4_ = this["\x1e\x05\x1c"].getItemAt(k);
         _loc4_.mc["\x1a\x16\x1d"](_loc4_["\x16\x03\x06"] && _loc2_);
      }
   }
   function §\x1a\x13\x0f§(sID, §\x16\x12\x04§)
   {
      var _loc4_ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(_loc4_ == undefined)
      {
         ank.utils.Logger.err("[selectSprite] Sprite " + sID + " inexistant");
         return undefined;
      }
      if(_loc4_["\x18\x05\x06"])
      {
         var _loc5_ = _loc4_["\x18\x15\b"].getItems();
         for(var k in _loc5_)
         {
            this["\x1a\x13\x0f"](_loc5_[k].id,_loc3_);
         }
      }
      _loc4_.mc.select(_loc3_);
   }
   function §\x1a\x1a\n§(sID, §\x19\r\x1b§, §\x19\r\x1c§)
   {
      var _loc5_ = this["\x1e\x05\x1c"].getItemAt(sID);
      if(_loc5_ == undefined)
      {
         ank.utils.Logger.err("[selectSprite] Sprite " + sID + " inexistant");
         return undefined;
      }
      _loc5_.mc["\x1a\x19\r"](_loc3_,_loc4_);
   }
}
