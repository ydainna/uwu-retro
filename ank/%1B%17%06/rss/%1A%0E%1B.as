class ank.utils.rss.§\x1a\x0e\x1b§
{
   function §\x1a\x0e\x1b§()
   {
   }
   function §\x1a\x03\x16§(§\x1b\x19\x1a§)
   {
      this.initialize();
      if(_loc2_.nodeName.toLowerCase() != "item")
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
               var _loc4_ = this["\x1e\r\b"].split("&apos;");
               this["\x1e\r\b"] = _loc4_.join("\'");
               break;
            case "link":
               this["\x1e\n\x19"] = _loc3_.childNodes.join("");
               break;
            case "pubdate":
               this["\x1e\x0b\x1b"] = _loc3_.childNodes.join("");
               this["\x1c\x0e\x19"] = eval("\x1a\x01\x1a")utils.["\x1b\x01\x19"]["\x17\x16\n"](this["\x1e\x0b\x1b"].substr(0,25),"E, d MMM yyyy H:m:s");
               if(this["\x1c\x0e\x19"] == null)
               {
                  this["\x1c\x0e\x19"] = eval("\x1a\x01\x1a")utils.["\x1b\x01\x19"]["\x17\x16\n"](this["\x1e\x0b\x1b"].substr(0,25),"E,  d MMM yyyy H:m:s");
               }
               this["\x1b\x04\x12"] = eval("\x1a\x01\x1a")utils.["\x1b\x01\x19"]["\x17\x12\r"](this["\x1c\x0e\x19"],"yyyyMMdd");
               break;
            case "guid":
               this["\x1e\n\x01"] = _loc3_.childNodes.join("");
               break;
            case "icon":
               this["\x1e\n\x05"] = _loc3_.childNodes.join("");
         }
         _loc3_ = _loc3_.nextSibling;
      }
      return true;
   }
   function toString()
   {
      return "RSSItem title:" + this["\x1e\r\b"] + "\tlink:" + this["\x1e\n\x19"] + "\tpubdate:" + this["\x1c\x0e\x19"] + "\tguid:" + this["\x1e\n\x01"];
   }
   function §\x18\x01\x1d§()
   {
      return this["\x1e\r\b"];
   }
   function §\x17\x1a\x19§()
   {
      return this["\x1e\n\x19"];
   }
   function §\x17\x1d\f§()
   {
      return this["\x1c\x0e\x19"];
   }
   function §\x17\x1d\r§(§\x1a\x1b\x16§, sLanguage)
   {
      return this["\x1c\x0e\x19"] != null ? eval("\x1a\x01\x1a")utils.["\x1b\x01\x19"]["\x17\x12\r"](this["\x1c\x0e\x19"],_loc2_,_loc3_) : this["\x1e\x0b\x1b"];
   }
   function §\x17\x18\x0b§()
   {
      return this["\x1e\n\x01"];
   }
   function §\x17\x18\x1c§()
   {
      return this["\x1e\n\x05"];
   }
   function initialize()
   {
      this["\x1e\r\b"] = "";
      this["\x1e\n\x19"] = "";
      this["\x1c\x0e\x19"] = null;
      this["\x1e\n\x01"] = "";
   }
}
