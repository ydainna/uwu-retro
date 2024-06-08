class ank.utils.rss.§\x1a\x0e\x1a§
{
   function §\x1a\x0e\x1a§()
   {
      this.initialize();
   }
   function §\x1a\x03\x16§(§\x1b\x19\x17§)
   {
      this.initialize();
      if(_loc2_.nodeName.toLowerCase() != "channel")
      {
         return false;
      }
      var _loc3_ = _loc2_.firstChild;
      while(_loc3_ != null)
      {
         switch(_loc3_.nodeName.toLowerCase())
         {
            case "title":
               this["\x1e\r\b"] = _loc3_.childNodes.join("");
               break;
            case "link":
               this["\x1e\n\x19"] = _loc3_.childNodes.join("");
               break;
            case "description":
               this["\x1e\t\x05"] = _loc3_.childNodes.join("");
               break;
            case "language":
               this["\x1e\n\x10"] = _loc3_.childNodes.join("");
               break;
            case "pubdate":
               this["\x1e\x0b\x1b"] = _loc3_.childNodes.join("");
               this["\x1c\x0e\x19"] = eval("\x1a\x01\x1a")utils.["\x1b\x01\x19"]["\x17\x16\n"](this["\x1e\x0b\x1b"].substr(0,25),"E, d MMM yyyy H:m:s");
               break;
            case "lastbuilddate":
               this["\x1e\n\x13"] = _loc3_.childNodes.join("");
               this["\x1c\x0e\x17"] = eval("\x1a\x01\x1a")utils.["\x1b\x01\x19"]["\x17\x16\n"](this["\x1e\n\x13"].substr(0,25),"E, d MMM yyyy H:m:s");
               break;
            case "docs":
               this["\x1e\t\t"] = _loc3_.childNodes.join("");
               break;
            case "generator":
               this["\x1e\t\x18"] = _loc3_.childNodes.join("");
               break;
            case "managingeditor":
               this["\x1e\n\x1c"] = _loc3_.childNodes.join("");
               break;
            case "webmaster":
               this["\x1e\r\x11"] = _loc3_.childNodes.join("");
               break;
            case "item":
               var _loc4_ = new ank.utils.rss.RSSItem();
               if(_loc4_["\x1a\x03\x16"](_loc3_))
               {
                  this["\x1b\x1d\n"].push(_loc4_);
                  break;
               }
         }
         _loc3_ = _loc3_.nextSibling;
      }
      return true;
   }
   function toString()
   {
      return "RSSChannel title:" + this["\x1e\r\b"] + "\tlink:" + this["\x1e\n\x19"] + "\tdescription:" + this["\x1c\x0e\x19"] + "\tlanguage:" + this["\x1c\x0e\x19"] + "\tpubdate:" + this["\x1c\x0e\x19"] + "\tlastbuilddate:" + this["\x1c\x0e\x19"] + "\tdocs:" + this["\x1c\x0e\x19"] + "\tgenerator:" + this["\x1c\x0e\x19"] + "\tmanagingeditor:" + this["\x1c\x0e\x19"] + "\twebmaster:" + this["\x1c\x0e\x19"] + "\titems:" + this["\x1b\x1d\n"].join("\n");
   }
   function §\x18\x01\x1d§()
   {
      return this["\x1e\r\b"];
   }
   function §\x17\x1a\x19§()
   {
      return this["\x1e\n\x19"];
   }
   function §\x17\x16\x10§()
   {
      return this["\x1e\t\x05"];
   }
   function getLanguage()
   {
      return this["\x1e\n\x10"];
   }
   function §\x17\x1d\f§()
   {
      return this["\x1c\x0e\x19"];
   }
   function §\x17\x1d\r§(§\x1a\x1b\x16§, sLanguage)
   {
      return this["\x1c\x0e\x19"] != null ? eval("\x1a\x01\x1a")utils.["\x1b\x01\x19"]["\x17\x12\r"](this["\x1c\x0e\x19"],_loc2_,_loc3_) : this["\x1e\x0b\x1b"];
   }
   function §\x17\x1a\x12§()
   {
      return this["\x1c\x0e\x17"];
   }
   function §\x17\x1a\x13§(§\x1a\x1b\x16§, sLanguage)
   {
      return this["\x1c\x0e\x17"] != null ? eval("\x1a\x01\x1a")utils.["\x1b\x01\x19"]["\x17\x12\r"](this["\x1c\x0e\x17"],_loc2_,_loc3_) : this["\x1e\n\x13"];
   }
   function §\x17\x16\x1b§()
   {
      return this["\x1e\t\t"];
   }
   function §\x17\x18\x06§()
   {
      return this["\x1e\t\x18"];
   }
   function §\x17\x1b\x03§()
   {
      return this["\x1e\n\x1c"];
   }
   function §\x18\x02\n§()
   {
      return this["\x1e\r\x11"];
   }
   function §\x17\x19\x16§()
   {
      return this["\x1b\x1d\n"];
   }
   function initialize()
   {
      this["\x1e\r\b"] = "";
      this["\x1e\n\x19"] = "";
      this["\x1e\t\x05"] = "";
      this["\x1e\n\x10"] = "";
      this["\x1c\x0e\x19"] = null;
      this["\x1c\x0e\x17"] = null;
      this["\x1e\t\t"] = "";
      this["\x1e\t\x18"] = "";
      this["\x1e\n\x1c"] = "";
      this["\x1e\r\x11"] = "";
      this["\x1b\x1d\n"] = new Array();
   }
   function §\x1a\x03\x18§(§\x1a\x11\x1d§)
   {
      return new Date();
   }
}
