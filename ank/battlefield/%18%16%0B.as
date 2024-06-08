class ank.battlefield.§\x18\x16\x0b§ extends MovieClip
{
   static var §\x18\x1a\x1a§ = 3;
   static var §\x1b\n\f§ = 0;
   static var §\x1b\n\x02§ = 1;
   static var §\x1b\n\x01§ = 2;
   static var §\x1b\t\x1b§ = -1;
   static var §\x1b\n\x0b§ = -1;
   function §\x18\x16\x0b§(§\x18\x1b\f§)
   {
      super();
      this.initialize(_loc3_);
   }
   function §\x1a\x07\x13§()
   {
      var _loc2_ = 0;
      while(_loc2_ < ank.battlefield["\x18\x16\x0b"]._aMovieClipLoader.length)
      {
         if(this["\x1b\x18\x11"] > ank.battlefield["\x18\x16\x0b"]["\x18\x1a\x1a"])
         {
            return undefined;
         }
         if(ank.battlefield["\x18\x16\x0b"]._aMovieClipLoader[_loc2_].state == ank.battlefield["\x18\x16\x0b"]["\x1b\n\f"])
         {
            new org.flashdevelop.utils.FlashConnect.trace("processLoad " + ank.battlefield["\x18\x16\x0b"]._aMovieClipLoader[_loc2_].file,"ank.battlefield.LoadManager::processLoad","C:\\Users\\ddallinge\\Git\\client\\src\\ank-common\\classes/ank/battlefield/LoadManager.as",49);
            ank.battlefield["\x18\x16\x0b"]._aMovieClipLoader[_loc2_].state = ank.battlefield["\x18\x16\x0b"]["\x1b\n\x02"];
            ank.battlefield["\x18\x16\x0b"]._aMovieClipLoader[_loc2_]["\x18\x15\x1b"].loadClip(ank.battlefield["\x18\x16\x0b"]._aMovieClipLoader[_loc2_].file,ank.battlefield["\x18\x16\x0b"]._aMovieClipLoader[_loc2_].container);
         }
         _loc2_ = _loc2_ + 1;
      }
   }
   function §\x17\x17\x16§(§\x18\x1b\f§)
   {
      var _loc3_ = 0;
      while(_loc3_ < ank.battlefield["\x18\x16\x0b"]._aMovieClipLoader.length)
      {
         if(ank.battlefield["\x18\x16\x0b"]._aMovieClipLoader[_loc3_].container === _loc2_)
         {
            return ank.battlefield["\x18\x16\x0b"]._aMovieClipLoader[_loc3_];
         }
         _loc3_ = _loc3_ + 1;
      }
      return undefined;
   }
   function §\x17\x17\x17§(§\x1a\x1b\x0f§)
   {
      var _loc3_ = 0;
      while(_loc3_ < ank.battlefield["\x18\x16\x0b"]._aMovieClipLoader.length)
      {
         if(ank.battlefield["\x18\x16\x0b"]._aMovieClipLoader[_loc3_].file == _loc2_)
         {
            return ank.battlefield["\x18\x16\x0b"]._aMovieClipLoader[_loc3_];
         }
         _loc3_ = _loc3_ + 1;
      }
      return undefined;
   }
   function initialize(§\x18\x1b\f§)
   {
      eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
      ank.battlefield["\x18\x16\x0b"]._aMovieClipLoader = new Array();
      this._mcMainContainer = _loc2_;
   }
   function §\x18\x16\x02§(§\x1a\x1b\x0f§)
   {
      if(this["\x18\x0f\x0f"](_loc2_))
      {
         if(!this.isLoaded(_loc2_))
         {
            return undefined;
         }
         this["\x19\x17\x13"](_loc2_);
      }
      else
      {
         var _loc3_ = new Object();
         _loc3_.file = _loc2_;
         _loc3_.bitLoaded = 0;
         _loc3_.bitTotal = 1;
         _loc3_.state = ank.battlefield["\x18\x16\x0b"]["\x1b\n\f"];
         _loc3_["\x18\x15\x1b"] = new MovieClipLoader();
         var _loc4_ = this;
         _loc3_["\x18\x15\x1b"].addListener(_loc4_);
         _loc3_.container = this._mcMainContainer.createEmptyMovieClip(_loc2_.split("/").join("_").split(".").join("_"),this._mcMainContainer.getNextHighestDepth());
         ank.battlefield["\x18\x16\x0b"]._aMovieClipLoader.push(_loc3_);
         if(this["\x1b\x18\x11"] > ank.battlefield["\x18\x16\x0b"]["\x18\x1a\x1a"])
         {
            return undefined;
         }
         _loc3_.state = ank.battlefield["\x18\x16\x0b"]["\x1b\n\x02"];
         new org.flashdevelop.utils.FlashConnect.trace("Load : " + _loc2_,"ank.battlefield.LoadManager::loadFile","C:\\Users\\ddallinge\\Git\\client\\src\\ank-common\\classes/ank/battlefield/LoadManager.as",122);
         _loc3_["\x18\x15\x1b"].loadClip(_loc2_,_loc3_.container);
      }
   }
   function §\x18\x16\x03§(§\x16\x01\x18§)
   {
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         this["\x18\x16\x02"](_loc2_[_loc3_]);
         _loc3_ = _loc3_ + 1;
      }
   }
   function §\r\n§()
   {
      var _loc2_ = 0;
      var _loc3_ = 0;
      while(_loc3_ < ank.battlefield["\x18\x16\x0b"]._aMovieClipLoader.length)
      {
         if(ank.battlefield["\x18\x16\x0b"]._aMovieClipLoader[_loc3_].state == ank.battlefield["\x18\x16\x0b"]["\x1b\n\x02"])
         {
            _loc2_ = _loc2_ + 1;
         }
         _loc3_ = _loc3_ + 1;
      }
      return _loc2_;
   }
   function §\x18\x0f\x0f§(§\x1a\x1b\x0f§)
   {
      var _loc3_ = 0;
      while(_loc3_ < ank.battlefield["\x18\x16\x0b"]._aMovieClipLoader.length)
      {
         if(_loc2_ == ank.battlefield["\x18\x16\x0b"]._aMovieClipLoader[_loc3_].file)
         {
            return true;
         }
         _loc3_ = _loc3_ + 1;
      }
      return false;
   }
   function §\x18\x0e\x13§(§\x1a\x1b\x0f§)
   {
      if(!this["\x18\x0f\x0f"](_loc2_))
      {
         return false;
      }
      var _loc3_ = 0;
      while(_loc3_ < ank.battlefield["\x18\x16\x0b"]._aMovieClipLoader.length)
      {
         if(_loc2_ == ank.battlefield["\x18\x16\x0b"]._aMovieClipLoader[_loc3_].file)
         {
            return ank.battlefield["\x18\x16\x0b"]._aMovieClipLoader[_loc3_].state == ank.battlefield["\x18\x16\x0b"]["\x1b\n\x01"];
         }
         _loc3_ = _loc3_ + 1;
      }
   }
   function §\x16\x05\x05§(§\x16\x01\x18§)
   {
      true;
      var _loc3_ = _loc2_.length > 0;
      var _loc4_ = 0;
      while(_loc4_ < _loc2_.length && _loc3_)
      {
         _loc3_ = _loc3_ && this["\x18\x0f\x0f"](_loc2_[_loc4_]);
         _loc4_ = _loc4_ + 1;
      }
      return _loc3_;
   }
   function §\x16\x05\x04§(§\x16\x01\x18§)
   {
      if(!this["\x16\x05\x05"](_loc2_))
      {
         return false;
      }
      true;
      var _loc3_ = _loc2_.length > 0;
      var _loc4_ = 0;
      while(_loc4_ < _loc2_.length && _loc3_)
      {
         _loc3_ = _loc3_ && this.isLoaded(_loc2_[_loc4_]);
         _loc4_ = _loc4_ + 1;
      }
      return _loc3_;
   }
   function §\x17\x17\x18§(§\x1a\x1b\x0f§)
   {
      var _loc3_ = this["\x17\x17\x17"](_loc2_);
      if(_loc3_)
      {
         return _loc3_.state;
      }
      return ank.battlefield["\x18\x16\x0b"]["\x1b\n\x0b"];
   }
   function §\x17\x1d\t§(§\x1a\x1b\x0f§)
   {
      var _loc3_ = this["\x17\x17\x17"](_loc2_);
      if(!_loc3_)
      {
         return undefined;
      }
      if(_loc3_.state == ank.battlefield["\x18\x16\x0b"]["\x1b\n\x01"])
      {
         return 100;
      }
      return Math.floor(_loc3_.bitLoaded / _loc3_.bitTotal * 100);
   }
   function §\x17\x1d\n§(§\x16\x01\x18§)
   {
      var _loc3_ = 0;
      var _loc4_ = 0;
      while(_loc4_ < _loc2_.length)
      {
         var _loc5_ = this["\x17\x1d\t"](_loc2_[_loc4_]);
         if(_loc5_ == undefined)
         {
            return undefined;
         }
         _loc3_ += _loc5_;
         _loc4_ = _loc4_ + 1;
      }
      return Math.floor(_loc3_ / _loc2_.length);
   }
   function §\x19\x17\x13§(§\x1a\x1b\x0f§)
   {
      this["\x17\x07\x19"]({type:"\x19\x17\x13",value:_loc2_});
   }
   function onLoadError(§\x18\x1b\f§)
   {
      var _loc3_ = this["\x17\x17\x16"](_loc2_);
      new org.flashdevelop.utils.FlashConnect.trace("onLoadError " + _loc3_.file,"ank.battlefield.LoadManager::onLoadError","C:\\Users\\ddallinge\\Git\\client\\src\\ank-common\\classes/ank/battlefield/LoadManager.as",234);
      _loc3_.state = ank.battlefield["\x18\x16\x0b"]["\x1b\t\x1b"];
      delete _loc3_["\x18\x15\x1b"];
      this["\x1a\x07\x13"]();
   }
   function onLoadInit(§\x18\x1b\f§)
   {
      var _loc3_ = this["\x17\x17\x16"](_loc2_);
      _loc3_.state = ank.battlefield["\x18\x16\x0b"]["\x1b\n\x01"];
      delete _loc3_["\x18\x15\x1b"];
      this["\x19\x17\x13"](_loc3_.file);
      this["\x1a\x07\x13"]();
   }
   function onLoadProgress(§\x18\x1b\f§, §\x19\x03\x1d§, §\x19\x04\x06§)
   {
      var _loc5_ = this["\x17\x17\x16"](_loc2_);
      if(!_loc5_)
      {
         return undefined;
      }
      _loc5_.bitLoaded = _loc3_;
      _loc5_.bitTotal = _loc4_;
   }
}
