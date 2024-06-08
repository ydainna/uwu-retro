class dofus..sounds.§\x16\x07\t§ extends dofus.utils.§\x16\x04\x07§
{
   static var §\x19\x02\x11§ = 1000;
   static var §\x18\x1a\x17§ = 1010;
   static var §\x1b\x04\x19§ = 1;
   static var §\x18\x1b\x04§ = 100;
   static var §\x19\x02\x10§ = 4;
   static var §\x17\r\x13§ = "TAG_ENVIRONMENT";
   static var §\x17\r\x12§ = "TAG_ENVIRONMENT_NOISE";
   static var §\x17\f\x10§ = "TAG_EFFECT";
   static var §\x19\x02\x12§ = "TAG_MUSIC";
   static var §\x1a\x03\x0b§ = "mu/";
   static var §\x1a\x03\n§ = "fx/";
   static var §\x18\x0b\x01§ = null;
   static var §\x1c\x05\x07§ = false;
   var §\x1c\x02\x03§ = true;
   var §\x1d\x15\x03§ = dofus.sounds.AudioManager["\x1b\x04\x19"];
   var §\x1d\x14\x19§ = dofus.sounds.AudioManager["\x19\x02\x11"];
   var §\x1c\x03\x1b§ = false;
   var §\x1c\x06\x1b§ = false;
   var §\x1c\x03\x18§ = false;
   var §\x1d\x16\x03§ = 100;
   var §\x1d\x1a\x0b§ = 100;
   var §\x1d\x15\x1c§ = 100;
   var §\x1c\x01\x01§ = new Array();
   var §\x1d\x18\f§ = -1;
   var §\x1d\x18\x0b§ = -1;
   var §\x1b\x1c\x17§ = null;
   var §\x1d\x18\n§ = -1;
   var §\x1b\x1d\x13§ = null;
   var §\x1d\x16\x02§ = -1;
   function §\x16\x07\t§()
   {
      super();
      if(dofus.sounds.AudioManager._mcSoundNest == null)
      {
         new org.flashdevelop.utils.FlashConnect.trace(new com.ankamagames.exceptions.NullPointerException(this,"\x16\x07\t","","_mcSoundNest"),"dofus.sounds.AudioManager::AudioManager","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/sounds/AudioManager.as",200);
         return undefined;
      }
   }
   function §\x1e\x1a\x03§()
   {
      return dofus.sounds["\x16\x07\b"].getInstance();
   }
   function §\x1e\x19\x17§()
   {
      return this["\x1c\x02\x03"];
   }
   function §\x13\x02§(§\x16\x14\x16§)
   {
      this["\x1c\x02\x03"] = _loc2_;
      return this["\x1e\x19\x17"]();
   }
   static function §\t\x11§()
   {
      return dofus.sounds.AudioManager._mcSoundNest;
   }
   static function §\x1d\t§(§\x19\x07\x01§)
   {
      dofus.sounds.AudioManager._mcSoundNest = _loc2_;
      return this["\t\x11"]();
   }
   function §\x1e\x19\x1c§()
   {
      return this["\x1c\x03\x1b"];
   }
   function §\x13\x06§(§\x16\x14\x16§)
   {
      this["\x1c\x03\x1b"] = _loc2_;
      for(var k in this["\x1c\x01\x01"])
      {
         var _loc3_ = this["\x1c\x01\x01"][k];
         if(_loc3_.tag == dofus.sounds.AudioManager["\x17\r\x13"])
         {
            _loc3_["\x19\x02\x15"] = this["\x1c\x03\x1b"];
         }
      }
      this["\x19\x02\x16"]();
      return this["\x1e\x19\x1c"]();
   }
   function §\x04\x16§()
   {
      return this["\x1c\x06\x1b"];
   }
   function §\x19\b§(§\x16\x14\x16§)
   {
      this["\x1c\x06\x1b"] = _loc2_;
      for(var k in this["\x1c\x01\x01"])
      {
         var _loc3_ = this["\x1c\x01\x01"][k];
         if(_loc3_.tag == dofus.sounds.AudioManager["\x19\x02\x12"])
         {
            _loc3_["\x19\x02\x15"] = this["\x1c\x06\x1b"];
         }
      }
      this["\x19\x02\x16"]();
      return this["\x04\x16"]();
   }
   function §\x1e\x19\t§()
   {
      return this["\x1c\x03\x18"];
   }
   function §\x12\x1a§(§\x16\x14\x16§)
   {
      this["\x1c\x03\x18"] = _loc2_;
      for(var k in this["\x1c\x01\x01"])
      {
         var _loc3_ = this["\x1c\x01\x01"][k];
         if(_loc3_.tag == dofus.sounds.AudioManager["\x17\f\x10"])
         {
            _loc3_["\x19\x02\x15"] = this["\x1c\x03\x18"];
         }
      }
      this["\x19\x02\x16"]();
      return this["\x1e\x19\t"]();
   }
   function §\x1e\x19\x1d§()
   {
      return this["\x1d\x16\x03"];
   }
   function §\x13\x07§(§\x19\x10\x10§)
   {
      this["\x1d\x16\x03"] = _loc2_;
      for(var k in this["\x1c\x01\x01"])
      {
         var _loc3_ = this["\x1c\x01\x01"][k];
         if(_loc3_.tag == dofus.sounds.AudioManager["\x17\r\x13"])
         {
            _loc3_["\x1b\x18\x0b"] = _loc3_.baseVolume / 100 * this["\x1d\x16\x03"];
         }
      }
      return this["\x1e\x19\x1d"]();
   }
   function §\x04\x18§()
   {
      return this["\x1d\x1a\x0b"];
   }
   function §\x19\t§(§\x19\x10\x10§)
   {
      this["\x1d\x1a\x0b"] = _loc2_;
      for(var k in this["\x1c\x01\x01"])
      {
         var _loc3_ = this["\x1c\x01\x01"][k];
         if(_loc3_.tag == dofus.sounds.AudioManager["\x19\x02\x12"])
         {
            _loc3_["\x1b\x18\x0b"] = _loc3_.baseVolume / 100 * this["\x1d\x1a\x0b"];
         }
      }
      return this["\x04\x18"]();
   }
   function §\x1e\x19\x0f§()
   {
      return this["\x1d\x15\x1c"];
   }
   function §\x12\x1b§(§\x19\x10\x10§)
   {
      this["\x1d\x15\x1c"] = _loc2_;
      for(var k in this["\x1c\x01\x01"])
      {
         var _loc3_ = this["\x1c\x01\x01"][k];
         if(_loc3_.tag == dofus.sounds.AudioManager["\x17\f\x10"])
         {
            _loc3_["\x1b\x18\x0b"] = _loc3_.baseVolume / 100 * this["\x1d\x15\x1c"];
         }
      }
      return this["\x1e\x19\x0f"]();
   }
   static function initialize(§\x1b\x04\x15§)
   {
      dofus.sounds.AudioManager._mcSoundNest = _loc2_;
      if(dofus.Constants["\x1b\x17\x04"])
      {
         dofus.sounds.AudioManager._pckEffects = _loc2_.createEmptyMovieClip("\x1a\x04\x12",_loc2_.getNextHighestDepth());
         dofus.sounds.AudioManager._pckEffects.loadMovie(dofus.Constants["\x1b\x04\x18"]);
         dofus.sounds.AudioManager._pckMusics = _loc2_.createEmptyMovieClip("\x1a\x04\x13",_loc2_.getNextHighestDepth());
         dofus.sounds.AudioManager._pckMusics.loadMovie(dofus.Constants["\x1b\x04\x1a"]);
      }
      dofus.sounds.AudioManager["\x1c\x05\x07"] = true;
   }
   static function §\x17\x19\t§()
   {
      if(!dofus.sounds.AudioManager["\x1c\x05\x07"])
      {
         new org.flashdevelop.utils.FlashConnect.trace(new com.ankamagames.exceptions.InvalidOperationException(null,"\x16\x07\t","\x17\x19\t","Can\'t request an AudioManager\'s instance before initializing it."),"dofus.sounds.AudioManager::getInstance","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/sounds/AudioManager.as",238);
         return null;
      }
      if(dofus.sounds.AudioManager.instance == null)
      {
         dofus.sounds.AudioManager.instance = new dofus.sounds.AudioManager();
      }
      return dofus.sounds.AudioManager.instance;
   }
   static function §\x17\x1d\x01§(§\x1b\x05\x01§)
   {
      switch(_loc2_)
      {
         case dofus.sounds.AudioManager["\x1a\x03\x0b"]:
            return dofus.sounds.AudioManager._pckMusics;
         case dofus.sounds.AudioManager["\x1a\x03\n"]:
            return dofus.sounds.AudioManager._pckEffects;
         default:
            return null;
      }
   }
   function playSound(§\x1b\x04\x10§)
   {
      var _loc3_ = new ank.utils.ExtendedString(_loc2_);
      var _loc4_ = _loc3_.replace([" ","é","à","-"],["_","e","a","_"]).toUpperCase();
      var _loc5_ = this.api.lang["\x17\x17\x03"](_loc4_);
      if(_loc5_ != undefined && !_global.isNaN(_loc5_))
      {
         this["\x1a\x05\x0b"](_loc5_);
      }
      else if(dofus.Constants["\x1b\x17\x04"])
      {
         this["\x1a\x05\f"](this["\x17\x17\b"](_loc2_));
      }
      else
      {
         new org.flashdevelop.utils.FlashConnect.trace(new com.ankamagames.exceptions.NullPointerException(this,"\x16\x07\t","playSound","nEffect"),"dofus.sounds.AudioManager::playSound","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/sounds/AudioManager.as",279);
         return undefined;
      }
   }
   function §\x1a\x05\x0e§(§\x17\r\x0f§)
   {
      if(this["\x1d\x18\n"] == _loc2_ && !this["\x1c\x03\x1b"])
      {
         return undefined;
      }
      if(this["\x1b\x1d\x13"] != null)
      {
         var _loc3_ = 0;
         while(_loc3_ < this["\x1b\x1d\x13"].length)
         {
            this["\x1b\x1d\x13"][_loc3_]["\x17\x0f\x03"](dofus.sounds.AudioManager["\x19\x02\x10"],true);
            _loc3_ = _loc3_ + 1;
         }
         this["\x1b\n\x1b"](dofus.sounds.AudioManager["\x17\r\x12"]);
         _global.clearInterval(this["\x1d\x16\x02"]);
      }
      var _loc4_ = this.api.lang["\x17\x17\x10"](_loc2_);
      if(_loc4_ == null)
      {
         new org.flashdevelop.utils.FlashConnect.trace(new com.ankamagames.exceptions.NullPointerException(this,"\x16\x07\t","\x1a\x05\x0e","oEnvironment"),"dofus.sounds.AudioManager::playEnvironment","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/sounds/AudioManager.as",310);
         return undefined;
      }
      this["\x1b\x1d\x13"] = new Array();
      var _loc5_ = 0;
      while(_loc5_ < _loc4_["\x16\f\r"].length)
      {
         var _loc6_ = this["\x17\x17\x07"](this.api.lang["\x17\x17\x02"](Number(_loc4_["\x16\f\r"][_loc5_])));
         _loc6_["\x19\x02\x15"] = this["\x1c\x03\x1b"];
         _loc6_["\x18\x17\x18"] = dofus.sounds["\x16\x07\x07"]["\x18\b\x1b"];
         _loc6_.baseVolume = 100;
         _loc6_["\x1b\x18\x0b"] = this["\x1d\x16\x03"];
         _loc6_.tag = dofus.sounds.AudioManager["\x17\r\x13"];
         this["\x1a\x05\r"](_loc6_);
         this["\x1b\x1d\x13"].push(_loc6_);
         _loc5_ = _loc5_ + 1;
      }
      this["\x19\x07\x0b"](_loc4_);
      this["\x1d\x18\n"] = _loc2_;
   }
   function §\x1a\x05\x1a§(§\x19\x02\r§, §\x16\x11\x1c§)
   {
      if(this["\x1d\x18\x0b"] == _loc2_ && !this["\x1c\x06\x1b"])
      {
         return undefined;
      }
      if(this["\x1b\x1c\x17"] != null)
      {
         this["\x1b\x1c\x17"]["\x17\x0f\x03"](dofus.sounds.AudioManager["\x19\x02\x10"],true);
         if(_loc3_)
         {
            this["\x1d\x18\f"] = this["\x1d\x18\x0b"];
         }
      }
      var _loc4_ = this["\x17\x17\t"](this.api.lang["\x17\x1c\f"](_loc2_));
      _loc4_.tag = dofus.sounds.AudioManager["\x19\x02\x12"];
      _loc4_["\x19\x02\x15"] = this["\x1c\x06\x1b"];
      this["\x1a\x05\r"](_loc4_);
      this["\x1b\x1c\x17"] = _loc4_;
      this["\x1d\x18\x0b"] = _loc2_;
   }
   function §\x16\b\f§(§\x16\x12\x1c§)
   {
      this["\x1a\x05\x1a"](this["\x1d\x18\f"],_loc2_);
   }
   function §\x1a\x05\x0b§(§\x17\f\x04§, §\x17\x04\x0b§, §\x16\t\x18§)
   {
      if(_loc4_ == undefined)
      {
         _loc4_ = false;
      }
      if(!_loc4_ && !this.api.electron["\x18\x10\x11"])
      {
         return undefined;
      }
      var _loc5_ = this["\x17\x17\x07"](this.api.lang["\x17\x17\x02"](_loc2_));
      _loc5_.tag = _loc3_ != undefined ? _loc3_ : dofus.sounds.AudioManager["\x17\f\x10"];
      switch(_loc3_)
      {
         case dofus.sounds.AudioManager["\x19\x02\x12"]:
            _loc5_["\x19\x02\x15"] = this["\x1c\x06\x1b"];
            break;
         case dofus.sounds.AudioManager["\x17\r\x13"]:
            _loc5_["\x19\x02\x15"] = this["\x1c\x03\x1b"];
            break;
         case dofus.sounds.AudioManager["\x17\f\x10"]:
         default:
            _loc5_["\x19\x02\x15"] = this["\x1c\x03\x18"];
      }
      this["\x1a\x05\r"](_loc5_);
   }
   function §\x1a\x05\f§(§\x16\x01\x11§)
   {
      _loc2_.tag = dofus.sounds.AudioManager["\x17\f\x10"];
      _loc2_["\x19\x02\x15"] = this["\x1c\x03\x18"];
      this["\x1a\x05\r"](_loc2_);
   }
   function §\x1a\x05\x19§(§\x17\x10\x0b§)
   {
      var _loc3_ = this["\x17\x02\b"](_loc2_,false,true);
      this["\x1a\x05\r"](_loc3_);
   }
   function §\x1b\n\x1b§(§\x1b\b\x1c§)
   {
      for(var k in this["\x1c\x01\x01"])
      {
         var _loc3_ = this["\x1c\x01\x01"][k];
         if(_loc3_.tag == _loc2_)
         {
            _loc3_["\x17\b\x18"]();
         }
      }
   }
   function stopAllSounds()
   {
      for(var k in this["\x1c\x01\x01"])
      {
         var _loc2_ = this["\x1c\x01\x01"][k];
         _loc2_["\x17\b\x18"]();
      }
      _global.clearInterval(this["\x1d\x16\x02"]);
      this["\x1d\x18\f"] = -1;
      this["\x1d\x18\x0b"] = -1;
      this["\x1d\x18\n"] = -1;
   }
   function §\x17\x02\b§(§\x17\x10\x0b§, §\x1b\x0b\x0b§, §\x19\x02\f§, §\x1a\x03\t§)
   {
      if(_loc2_ == undefined)
      {
         new org.flashdevelop.utils.FlashConnect.trace(new com.ankamagames.exceptions.NullPointerException(this,"\x16\x07\t","\x17\x02\b","file"),"dofus.sounds.AudioManager::createAudioElement","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/sounds/AudioManager.as",464);
         return null;
      }
      var _loc6_ = !_loc4_ ? this["\x17\x1c\x14"]() : this["\x17\x1c\x13"]();
      var _loc7_ = this["\x17\x1e\x18"](_loc6_,_loc5_);
      return new dofus.sounds["\x16\x07\x07"](_loc6_,_loc2_,_loc7_,_loc3_);
   }
   function §\x1a\x05\r§(§\x1b\x04\x14§)
   {
      if(_loc2_ == undefined)
      {
         new org.flashdevelop.utils.FlashConnect.trace(new com.ankamagames.exceptions.NullPointerException(this,"\x16\x07\t","playSound","soundElement"),"dofus.sounds.AudioManager::playElement","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/sounds/AudioManager.as",483);
         return undefined;
      }
      if(!this["\x1c\x02\x03"])
      {
         return undefined;
      }
      this["\x1c\x01\x01"]["SND" + _loc2_["\x1b\x13\x0f"]] = _loc2_;
      this.addToQueue({object:_loc2_,method:_loc2_["\x1b\t\x0e"]});
   }
   function §\x17\x1c\x14§(§\x1b\x18\n§)
   {
      this["\x1d\x15\x03"]++;
      if(this["\x1d\x15\x03"] > dofus.sounds.AudioManager["\x18\x1b\x04"])
      {
         this["\x1d\x15\x03"] = dofus.sounds.AudioManager["\x1b\x04\x19"];
      }
      var _loc3_ = this["\x1c\x01\x01"]["SND" + this["\x1d\x15\x03"]];
      _loc3_["\x17\b\x18"]();
      return this["\x1d\x15\x03"];
   }
   function §\x17\x1c\x13§(§\x1b\x18\n§)
   {
      this["\x1d\x14\x19"]++;
      if(this["\x1d\x14\x19"] > dofus.sounds.AudioManager["\x18\x1a\x17"])
      {
         this["\x1d\x14\x19"] = dofus.sounds.AudioManager["\x19\x02\x11"];
      }
      var _loc3_ = this["\x1c\x01\x01"]["SND" + this["\x1d\x15\x03"]];
      _loc3_["\x17\b\x18"]();
      return this["\x1d\x14\x19"];
   }
   function §\x17\x1e\x18§(§\x19\x10\x0b§, §\x1a\x03\t§)
   {
      if(!dofus.Constants["\x1b\x17\x04"] || _loc3_ == null)
      {
         return dofus.sounds.AudioManager._mcSoundNest.createEmptyMovieClip("SND" + _loc2_,_loc2_);
      }
      switch(_loc3_)
      {
         case dofus.sounds.AudioManager["\x1a\x03\n"]:
            return dofus.sounds.AudioManager._pckEffects.createEmptyMovieClip("FX" + _loc2_,_loc2_);
         case dofus.sounds.AudioManager["\x1a\x03\x0b"]:
            return dofus.sounds.AudioManager._pckMusics.createEmptyMovieClip("MU" + _loc2_,_loc2_);
         default:
            return null;
      }
   }
   function §\x17\x17\b§(§\x1b\x03\x03§)
   {
      var _loc3_ = this["\x17\x02\b"](dofus.sounds.AudioManager["\x1a\x03\n"] + _loc2_,true,false,dofus.sounds.AudioManager["\x1a\x03\n"]);
      _loc3_.baseVolume = 100;
      _loc3_["\x1b\x18\x0b"] = this["\x1d\x15\x1c"];
      _loc3_.offset = 0;
      _loc3_["\x18\x17\x18"] = dofus.sounds["\x16\x07\x07"]["\x19\x17\x01"];
      return _loc3_;
   }
   function §\x17\x17\x07§(§\x19\x12\x13§)
   {
      var _loc3_ = this["\x17\x02\b"]((!dofus.Constants["\x1b\x17\x04"] ? dofus.Constants["\x16\x07\x0b"] : dofus.sounds.AudioManager["\x1a\x03\n"]) + _loc2_.f,_loc2_.s,false,!dofus.Constants["\x1b\x17\x04"] ? null : dofus.sounds.AudioManager["\x1a\x03\n"]);
      _loc3_.baseVolume = _loc2_.v;
      _loc3_["\x1b\x18\x0b"] = _loc2_.v / 100 * this["\x1d\x15\x1c"];
      _loc3_.offset = _loc2_.o;
      _loc3_["\x18\x17\x18"] = _loc2_.l != true ? dofus.sounds["\x16\x07\x07"]["\x19\x17\x01"] : dofus.sounds["\x16\x07\x07"]["\x18\b\x1b"];
      return _loc3_;
   }
   function §\x17\x17\t§(§\x19\x13\x14§)
   {
      var _loc3_ = this["\x17\x02\b"]((!dofus.Constants["\x1b\x17\x04"] ? dofus.Constants["\x16\x07\r"] : dofus.sounds.AudioManager["\x1a\x03\x0b"]) + _loc2_.f,_loc2_.s,true,!dofus.Constants["\x1b\x17\x04"] ? null : dofus.sounds.AudioManager["\x1a\x03\x0b"]);
      _loc3_.baseVolume = _loc2_.v;
      _loc3_["\x1b\x18\x0b"] = _loc2_.v / 100 * this["\x1d\x1a\x0b"];
      _loc3_.offset = _loc2_.o;
      _loc3_["\x18\x17\x18"] = _loc2_.l != true ? dofus.sounds["\x16\x07\x07"]["\x19\x17\x01"] : dofus.sounds["\x16\x07\x07"]["\x18\b\x1b"];
      return _loc3_;
   }
   function §\x19\x07\x0b§(§\x19\x12\x16§)
   {
      _global.clearInterval(this["\x1d\x16\x02"]);
      if(_loc2_ == undefined)
      {
         new org.flashdevelop.utils.FlashConnect.trace(new com.ankamagames.exceptions.NullPointerException(this,"\x16\x07\t","\x19\x07\x0b","oEnvironment"),"dofus.sounds.AudioManager::nextEnvironmentNoise","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/sounds/AudioManager.as",608);
         return undefined;
      }
      var _loc3_ = (_loc2_.mind + Math.round(Math.random() * _loc2_.maxd)) * 1000;
      _loc3_ = Math.max(10,_loc3_);
      this["\x1d\x16\x02"] = _global.setInterval(this,"onPlayNoise",_loc3_,_loc2_);
   }
   function onPlayNoise(§\x17\r\x0e§)
   {
      if(_loc2_ == undefined)
      {
         new org.flashdevelop.utils.FlashConnect.trace(new com.ankamagames.exceptions.NullPointerException(this,"\x16\x07\t","onPlayNoise","environment"),"dofus.sounds.AudioManager::onPlayNoise","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/sounds/AudioManager.as",631);
         return undefined;
      }
      var _loc3_ = _loc2_.n[Math.floor(_loc2_.n.length * Math.random())];
      this["\x1a\x05\x0b"](_loc3_,dofus.sounds.AudioManager["\x17\r\x12"]);
      this["\x19\x07\x0b"](_loc2_);
   }
   function §\x19\x02\x16§()
   {
      if(this["\x1c\x06\x1b"] && (this["\x1c\x03\x1b"] && this["\x1c\x03\x18"]))
      {
         this["\x1c\x02\x03"] = false;
      }
      else
      {
         this["\x1c\x02\x03"] = true;
      }
   }
}
