class dofus..sounds.§\x16\x07\x07§ extends Sound implements com.ankamagames.§\x18\f\x03§.§\x18\b\x0e§
{
   static var §\x18\b\x1b§ = 999999;
   static var §\x19\x17\x01§ = 1;
   static var §\x1b\x13\x10§ = 0;
   var §\x1e\x01\b§ = -1;
   function §\x16\x07\x07§(uniqID, §\x17\x10\x0b§, linkedClip, §\x1b\x0b\x0b§)
   {
      if(uniqID == undefined)
      {
         new org.flashdevelop.utils.FlashConnect.trace(new com.ankamagames.exceptions.NullPointerException(this,"\x16\x07\x07","","\x1b\x13\x0f"),"dofus.sounds.AudioElement::AudioElement","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/sounds/AudioElement.as",245);
         return undefined;
      }
      if(_loc4_ == undefined)
      {
         new org.flashdevelop.utils.FlashConnect.trace(new com.ankamagames.exceptions.NullPointerException(this,"\x16\x07\x07","","file"),"dofus.sounds.AudioElement::AudioElement","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/sounds/AudioElement.as",250);
         return undefined;
      }
      if(linkedClip == undefined)
      {
         new org.flashdevelop.utils.FlashConnect.trace(new com.ankamagames.exceptions.NullPointerException(this,"\x16\x07\x07","","\x18\x15\t"),"dofus.sounds.AudioElement::AudioElement","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/sounds/AudioElement.as",255);
         return undefined;
      }
      this["\x1d\x1e\x1b"] = uniqID;
      this["\x1d\r\b"] = linkedClip;
      this["\x1e\t\x11"] = _loc4_;
      this._bStreaming = _loc6_ == undefined ? false : _loc6_;
      super(linkedClip);
      this["\x1c\x06\t"] = true;
      if(dofus.Constants["\x1b\x17\x04"])
      {
         super.attachSound(_loc4_.substr(3));
         this.onLoad(true);
      }
      else
      {
         super.loadSound(_loc4_,this._bStreaming);
      }
   }
   function §\f\x16§()
   {
      return this["\x1d\x1e\x1b"];
   }
   function §\x02\x0b§()
   {
      return this["\x1d\r\b"];
   }
   function §\x1e\x1a\f§()
   {
      return this["\x1e\t\x11"];
   }
   function §\n\x0b§()
   {
      return this._bStreaming;
   }
   function §\r\t§()
   {
      return super.getVolume();
   }
   function §\n§(§\x19\x10\x10§)
   {
      if(_loc3_ < 0 || _loc3_ > 100)
      {
         new org.flashdevelop.utils.FlashConnect.trace(new com.ankamagames.exceptions.ValueOutOfRangeException(this,"\x16\x07\x07","set volume","nValue",_loc3_,0,100),"dofus.sounds.AudioElement::volume","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/sounds/AudioElement.as",115);
         return undefined;
      }
      if(!this["\x1c\x06\x1c"] && super.setVolume != undefined)
      {
         super.setVolume(_loc3_);
      }
      else if(super.setVolume != undefined)
      {
         super.setVolume(0);
         this["\x1e\x01\b"] = _loc3_;
      }
      return this["\r\t"]();
   }
   function §\x04\x19§()
   {
      return this["\x1c\x06\x1c"];
   }
   function §\x19\n§(§\x16\x14\x16§)
   {
      this["\x1c\x06\x1c"] = _loc3_;
      if(this["\x1c\x06\x1c"] && super.setVolume != undefined)
      {
         this["\x1e\x01\b"] = this["\x1b\x18\x0b"];
         super.setVolume(0);
      }
      else if(super.setVolume != undefined)
      {
         if(this["\x1e\x01\b"] > 0)
         {
            super.setVolume(this["\x1e\x01\b"]);
         }
      }
      return this["\x04\x19"]();
   }
   function §\x02\x19§()
   {
      return this["\x1d\x18\x1c"];
   }
   function §\x17\x0e§(§\x19\x10\x10§)
   {
      if(_loc2_ < dofus.sounds["\x16\x07\x07"]["\x19\x17\x01"] || _loc2_ > dofus.sounds["\x16\x07\x07"]["\x18\b\x1b"])
      {
         new org.flashdevelop.utils.FlashConnect.trace(new com.ankamagames.exceptions.ValueOutOfRangeException(this,"\x16\x07\x07","set loops","nValue",_loc2_,dofus.sounds["\x16\x07\x07"]["\x19\x17\x01"],dofus.sounds["\x16\x07\x07"]["\x18\b\x1b"]),"dofus.sounds.AudioElement::loops","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/sounds/AudioElement.as",172);
         return undefined;
      }
      this["\x1d\x18\x1c"] = _loc2_;
      return this["\x02\x19"]();
   }
   function §\x05\x11§()
   {
      return this["\x1d\x1a\x13"];
   }
   function §\x19\x13§(§\x19\x10\x10§)
   {
      if(_loc2_ < 0 || this["\x1d\x19\x11"] != null && _loc2_ > this["\x1d\x19\x11"])
      {
         new org.flashdevelop.utils.FlashConnect.trace(new com.ankamagames.exceptions.ValueOutOfRangeException(this,"\x16\x07\x07","set offset","nValue",_loc2_,0,this["\x1d\x19\x11"] != null ? this["\x1d\x19\x11"] : Number.POSITIVE_INFINITY),"dofus.sounds.AudioElement::offset","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/sounds/AudioElement.as",197);
         return undefined;
      }
      this["\x1d\x1a\x13"] = _loc2_;
      return this["\x05\x11"]();
   }
   function §\x03\f§()
   {
      return this["\x1d\x19\x11"];
   }
   function §\x18\x01§(§\x19\x10\x10§)
   {
      if(_loc2_ < 0)
      {
         new org.flashdevelop.utils.FlashConnect.trace(new com.ankamagames.exceptions.ValueOutOfRangeException(this,"\x16\x07\x07","set maxLength","nValue",_loc2_,0,Number.POSITIVE_INFINITY),"dofus.sounds.AudioElement::maxLength","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/sounds/AudioElement.as",222);
         return undefined;
      }
      this["\x1d\x19\x11"] = _loc2_;
      return this["\x03\f"]();
   }
   function §\x17\b\x18§(§\x1b\x18\n§)
   {
      this["\x19\x19\x13"]();
      this["\x1d\r\b"].onEnterFrame = null;
      delete this["\x1d\r\b"].onEnterFrame;
      this["\x1d\r\b"].unloadMovie();
      this["\x1d\r\b"].removeMovieClip();
      delete this["\x1d\r\b"];
   }
   function getVolume()
   {
      return this["\x1b\x18\x0b"];
   }
   function setVolume(§\x19\x10\x15§)
   {
      this["\x1b\x18\x0b"] = _loc2_;
   }
   function §\x1b\t\x0e§()
   {
      if(this._bStreaming && !this["\x1c\x06\t"] || !this._bStreaming && !this._bLoaded)
      {
         this["\x1c\b\x13"] = true;
      }
      else
      {
         if(this["\x1d\x19\x11"] != dofus.sounds["\x16\x07\x07"]["\x1b\x13\x10"])
         {
            _global.clearInterval(this["\x1d\x17\x13"]);
            this["\x1d\x17\x13"] = _global.setInterval(this,this["\x19\x19\x13"],this["\x1d\x19\x11"] * 1000);
         }
         super.start(this["\x1d\x1a\x13"],this["\x1d\x18\x1c"]);
      }
   }
   function stop()
   {
      super.stop();
   }
   function §\x17\x0f\x03§(§\x19\x06\f§, §\x16\t\n§)
   {
      var §\x1b\x18\x0b§ = this["\x1b\x18\x0b"];
      var t = eval("\x1b\x18\x0b") / _loc3_ / dofus.Constants["\x16\b\x04"];
      var §\x1a\x03\x13§ = this;
      var §\x1a\x03\x12§ = super;
      var §\x19\x02\x1d§ = this["\x1d\r\b"];
      var destroy = _loc4_;
      this["\x1d\r\b"].onEnterFrame = function()
      {
         set("\x1b\x18\x0b",eval("\x1b\x18\x0b") - t);
         eval("\x1a\x03\x12").setVolume(eval("\x1b\x18\x0b"));
         if(eval("\x1b\x18\x0b") <= 0)
         {
            eval("\x1a\x03\x13").stop();
            eval("\x19\x02\x1d").onEnterFrame = undefined;
            delete eval("\x19\x02\x1d").onEnterFrame;
            if(destroy)
            {
               eval("\x1a\x03\x13")["\x17\b\x18"]();
            }
         }
      };
   }
   function toString()
   {
      var _loc2_ = "[AudioElement = " + this["\x1d\x1e\x1b"] + "]\n";
      _loc2_ += " > Linked clip  : " + this["\x1d\r\b"] + "\n";
      _loc2_ += " > File         : " + this["\x1e\t\x11"] + "\n";
      _loc2_ += " > Loops        : " + this["\x1d\x18\x1c"] + "\n";
      _loc2_ += " > Start offset : " + this["\x1d\x1a\x13"] + "\n";
      _loc2_ += " > Max length   : " + this["\x1d\x19\x11"] + "\n";
      _loc2_ += " > Base vol.    : " + this.baseVolume + "\n";
      _loc2_ += " > Volume       : " + this.getVolume() + "\n";
      _loc2_ += " > Mute         : " + this["\x1c\x06\x1c"] + "\n";
      return _loc2_;
   }
   function onLoad(bSuccess)
   {
      if(!_loc2_)
      {
         new org.flashdevelop.utils.FlashConnect.trace(new com.ankamagames.exceptions.FileLoadException(this,"\x16\x07\x07","onLoad",this["\x1e\t\x11"]),"dofus.sounds.AudioElement::onLoad","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/sounds/AudioElement.as",429);
         return undefined;
      }
      this._bLoaded = true;
      if(this["\x1c\b\x13"])
      {
         this["\x1b\t\x0e"]();
      }
   }
   function onSoundComplete()
   {
      this["\x17\b\x18"]();
   }
   function §\x19\x19\x13§()
   {
      _global.clearInterval(this["\x1d\x17\x13"]);
      this.stop();
   }
}
