class dofus.utils.§\x17\t\f§
{
   var §\x1c\x06\x03§ = false;
   function §\x17\t\f§()
   {
      if(_global[dofus.Constants.GLOBAL_SO_OPTIONS_NAME] == undefined)
      {
         _global[dofus.Constants.GLOBAL_SO_OPTIONS_NAME] = ank.utils.["\x1a\x1c\b"].getLocal(dofus.Constants.OPTIONS_SHAREDOBJECT_NAME);
      }
   }
   function §\x11\x1b§(§\x16\x02\x02§)
   {
      this["\x1b\x1c\x11"] = _loc2_;
      return this["\x1e\x18\x04"]();
   }
   function §\x1e\x18\x04§()
   {
      return this["\x1b\x1c\x11"];
   }
   function §\x16\x1c§(sLanguage)
   {
      var _loc3_ = _global[dofus.Constants.GLOBAL_SO_OPTIONS_NAME];
      _loc3_.data.language = _loc2_;
      _loc3_.flush();
      return this["\x01\x1b"]();
   }
   function §\x01\x1b§()
   {
      var _loc2_ = dofus.Eelectron.getLanguage();
      if(_loc2_ != undefined)
      {
         switch(_loc2_)
         {
            case "de":
            case "en":
            case "es":
            case "fr":
            case "it":
            case "nl":
            case "pt":
               return _loc2_;
            default:
               return "fr";
         }
      }
      else
      {
         var _loc3_ = _global[dofus.Constants.GLOBAL_SO_OPTIONS_NAME].data.language;
         if(_loc3_ == undefined || (_loc3_ == "undefined" || _root.htmlLang != undefined))
         {
            if(_root.htmlLang != undefined)
            {
               var _loc4_ = _root.htmlLang;
            }
            else
            {
               _loc4_ = System.capabilities.language;
            }
            switch(_loc4_)
            {
               case "fr":
               case "en":
               case "de":
               case "pt":
               case "ru":
               case "nl":
               case "es":
               case "it":
                  return _loc4_;
               default:
                  return "fr";
            }
         }
         else
         {
            return _loc3_.toLowerCase();
         }
      }
   }
   function §\x16\x1d§(§\x16\x02\x16§)
   {
      this["\x1b\x1d\x10"] = _loc2_;
      return this["\x01\x1c"]();
   }
   function §\x01\x1c§()
   {
      var _loc2_ = new Array();
      if(this["\x1c\x01\x15"] != undefined)
      {
         var _loc3_ = 0;
         while(_loc3_ < this["\x1c\x01\x15"].length)
         {
            _loc2_.push(this["\x1c\x01\x15"][_loc3_]);
            _loc3_ = _loc3_ + 1;
         }
      }
      if(this["\x1b\x1d\x10"] != undefined)
      {
         var _loc4_ = 0;
         while(_loc4_ < this["\x1b\x1d\x10"].length)
         {
            var _loc5_ = false;
            var _loc6_ = 0;
            while(_loc6_ < this["\x1c\x01\x15"].length)
            {
               if(this["\x1c\x01\x15"][_loc6_] == this["\x1b\x1d\x10"][_loc4_])
               {
                  _loc5_ = true;
               }
               _loc6_ = _loc6_ + 1;
            }
            if(!_loc5_)
            {
               _loc2_.push(this["\x1b\x1d\x10"][_loc4_]);
            }
            _loc4_ = _loc4_ + 1;
         }
      }
      return _loc2_;
   }
   function §\x12§(§\x15\x1b\x04§)
   {
      this["\x1c\x01\x15"] = _loc2_;
      return this["\r\x15"]();
   }
   function §\r\x15§()
   {
      return this["\x1c\x01\x15"];
   }
   function §\x1d\x03§(§\x16\b\b§)
   {
      this["\x1c\b\x0f"] = _loc2_;
      return this["\t\r"]();
   }
   function §\t\r§()
   {
      return this["\x1c\b\x0f"];
   }
   function §\x10\x01§(§\x15\x1b\r§)
   {
      this["\x1b\x1b\x18"] = _loc2_;
      return this["\x1e\x13\x10"]();
   }
   function §\x1e\x13\x10§()
   {
      return this["\x1b\x1b\x18"];
   }
   function §\x15\x10§(§\x16\x0b\x0e§)
   {
      this["\x1c\x05\x16"] = _loc2_;
      return this["\x1e\x1d\f"]();
   }
   function §\x1e\x1d\f§()
   {
      return this["\x1c\x05\x16"];
   }
   function §\x16\x06§(§\x16\x13\x02§)
   {
      this["\x1c\x06\x03"] = _loc2_;
      return this["\x1e\x1e\x17"]();
   }
   function §\x1e\x1e\x17§()
   {
      return this["\x1c\x06\x03"];
   }
   function §\x1d\x17§(§\x1b\x03\x1d§)
   {
      this["\x1e\f\x1b"] = _loc2_;
      return this["\n\f"]();
   }
   function §\n\f§()
   {
      return this["\x1e\f\x1b"];
   }
   function §\x1e\x1d\x1b§()
   {
      return String(System.capabilities.version).indexOf("LNX") > -1;
   }
   function §\x01\x06§()
   {
      return String(System.capabilities.version).indexOf("WIN") > -1;
   }
   function §\x1e\x1e\x02§()
   {
      return String(System.capabilities.version).indexOf("MAC") > -1;
   }
   function §\x17\x16\b§(§\x19\x0e\x06§)
   {
      return this.customServersIP[_loc2_];
   }
}
