class dofus.utils.§\x18\x12\x10§ extends ank.utils.§\x1a\t\t§
{
   function §\x18\x12\x10§()
   {
      super();
      AsBroadcaster.initialize(this);
   }
   function loadLangFile(§\x16\x05\x13§, §\x1a\x1b\x0f§, §\x18\x1b\f§, §\x1b\b\t§, §\x1a\x1b\x10§, §\x1b\x02\x13§, §\x16\x14\r§)
   {
      this["\x1b\x1e\x1b"] = _loc2_;
      this["\x1e\t\x11"] = _loc3_;
      this._mc = _loc4_;
      this["\x1e\x10\x04"] = -1;
      this["\x1e\f\x13"] = _loc5_;
      this["\x1e\t\x12"] = _loc6_;
      this["\x1e\n\x0f"] = _loc7_;
      this["\x1c\f\x02"] = _loc8_;
      this["\x18\x16\x1c"]();
   }
   function §\x18\x16\x1c§()
   {
      this["\x1e\x10\x04"]++;
      if(this["\x1e\x10\x04"] < this["\x1b\x1e\x1b"].length && this["\x1b\x1e\x1b"].length > 0)
      {
         var _loc2_ = this["\x1b\x1e\x1b"][this["\x1e\x10\x04"]].url;
         var _loc3_ = _loc2_ + this["\x1e\t\x11"];
         System.security.allowDomain(_loc2_);
         this["\x1d\f\x19"] = new MovieClipLoader();
         this["\x1d\f\x19"].addListener(this);
         this["\x1e\x07\x04"] = _global.setInterval(this["\x19\x1d\x1b"],1000);
         this["\x1e\x0e\x0f"] = _global.setInterval(this["\x19\x17\x02"],5000);
         new org.flashdevelop.utils.FlashConnect.trace("[LangFileLoader] (loadWithNextURL) -> Chargement de " + _loc3_,"dofus.utils.LangFileLoader::loadWithNextURL","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/utils/LangFileLoader.as",90);
         this["\x1d\f\x19"].loadClip(_loc3_,this._mc);
      }
      else
      {
         this.broadcastMessage("onAllLoadFailed",this._mc);
      }
   }
   function §\x17\x16\x04§()
   {
      return this["\x1b\x1e\x1b"][this["\x1e\x10\x04"]];
   }
   function §\x19\x17\x02§(§\x18\x1b\f§)
   {
      _global.clearInterval(this["\x1e\x0e\x0f"]);
      this.onLoadError(_loc2_,"unknown",-1);
   }
   function onLoadStart(§\x18\x1b\f§)
   {
      _global.clearInterval(this["\x1e\x0e\x0f"]);
      this.broadcastMessage("onLoadStart",_loc2_,this["\x17\x16\x04"]());
   }
   function onLoadError(§\x18\x1b\f§, §\x17\r\x18§, §\x18\x07\x16§)
   {
      _global.clearInterval(this["\x1e\x0e\x0f"]);
      _global.clearInterval(this["\x1e\x07\x04"]);
      this.broadcastMessage("onLoadError",_loc2_,_loc3_,_loc4_,this["\x17\x16\x04"]());
      this["\x18\x16\x1c"]();
   }
   function §\x19\x1d\x1b§()
   {
      var _loc2_ = this["\x1d\f\x19"].getProgress(this._mc);
      this.broadcastMessage("onLoadProgress",this._mc,_loc2_.bytesLoaded,_loc2_.bytesTotal,this["\x17\x16\x04"]());
   }
   function onLoadComplete(§\x18\x1b\f§, §\x18\x07\x16§)
   {
      _global.clearInterval(this["\x1e\x0e\x0f"]);
      _global.clearInterval(this["\x1e\x07\x04"]);
      this.broadcastMessage("onLoadComplete",_loc2_,_loc3_,this["\x17\x16\x04"]());
   }
   function onLoadInit(§\x18\x1b\f§)
   {
      _global.clearInterval(this["\x1e\x0e\x0f"]);
      _global.clearInterval(this["\x1e\x07\x04"]);
      this["\x1e\x0b\b"] = ank.utils.["\x1a\x1c\b"].getLocal(this["\x1e\f\x13"]);
      if(_loc2_.FILE_BEGIN != true || _loc2_.FILE_END != true)
      {
         this.broadcastMessage("onCorruptFile",_loc2_,_loc2_.getBytesTotal(),this["\x17\x16\x04"]());
         this["\x18\x16\x1c"]();
         return undefined;
      }
      if(this["\x1e\x0b\b"].data.VERSIONS == undefined)
      {
         this["\x1e\x0b\b"].data.VERSIONS = new Object();
      }
      this["\x1e\x0b\b"].data.VERSIONS[this["\x1e\t\x12"]] = _loc2_.VERSION;
      if(this["\x1e\x0b\b"].data.WEIGHTS == undefined)
      {
         this["\x1e\x0b\b"].data.WEIGHTS = new Object();
      }
      this["\x1e\x0b\b"].data.WEIGHTS[this["\x1e\t\x12"].toUpperCase()] = _loc2_.getBytesTotal();
      this["\x1b\x1c\x10"] = new Array();
      for(var k in _loc2_)
      {
         if(!(k == "VERSION" || (k == "FILE_BEGIN" || k == "FILE_END")))
         {
            this["\x1b\x1c\x10"].push({key:k,value:_loc2_[k]});
            delete _loc2_[k];
         }
      }
      this["\x1e\x0b\b"].data.LANGUAGE = this["\x1e\n\x0f"];
      if(this["\x1e\x0b\b"].flush(1000000000) == false)
      {
         this.broadcastMessage("onCantWrite",_loc2_);
         return undefined;
      }
      this["\x1d\x1d\x0b"] = 0;
      if(this["\x1c\f\x02"])
      {
         this["\x1d\x1d\x0f"] = 1;
      }
      else
      {
         this["\x1d\x1d\x0f"] = 10000000;
      }
      this.addToQueue({object:this,method:this["\x1a\x07\x11"]});
   }
   function §\x1a\x07\x11§()
   {
      var _loc2_ = this["\x1d\x1d\x0b"];
      while(_loc2_ < this["\x1d\x1d\x0b"] + this["\x1d\x1d\x0f"])
      {
         if(!this["\x1b\x1c\x10"][_loc2_])
         {
            break;
         }
         if(this["\x1c\f\x02"])
         {
            var _loc3_ = this["\x1e\f\x13"] + "_" + this["\x1b\x1c\x10"][_loc2_].key;
            this["\x1e\x0b\b"] = ank.utils.["\x1a\x1c\b"].getLocal(_loc3_);
         }
         this["\x1e\x0b\b"].data[this["\x1b\x1c\x10"][_loc2_].key] = this["\x1b\x1c\x10"][_loc2_].value;
         delete this["\x1b\x1c\x10"][_loc2_];
         _loc2_ = _loc2_ + 1;
      }
      this["\x1d\x1d\x0b"] += this["\x1d\x1d\x0f"];
      new org.flashdevelop.utils.FlashConnect.trace("[LangFileLoader] (processFile) Flush des données","dofus.utils.LangFileLoader::processFile","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/utils/LangFileLoader.as",248);
      if(this["\x1e\x0b\b"].flush(1000000000) == false)
      {
         this.broadcastMessage("onCantWrite",this._mc);
         return undefined;
      }
      if(this["\x1d\x1d\x0b"] >= this["\x1b\x1c\x10"].length)
      {
         this["\x1a\x07\x12"]();
      }
      else
      {
         this.addToQueue({object:this,method:this["\x1a\x07\x11"]});
      }
   }
   function §\x1a\x07\x12§()
   {
      delete this["\x1e\x0b\b"];
      this.broadcastMessage("onLoadInit",this._mc,this["\x17\x16\x04"]());
   }
}
