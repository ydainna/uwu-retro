class ank.utils.rss.RSSLoader extends XML
{
   function RSSLoader()
   {
      super();
      eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
      this.ignoreWhite = true;
      this.initialize();
   }
   function §\x1e\x18\x01§()
   {
      return this._oData;
   }
   function §\x17\x15\x05§()
   {
      return this["\x1b\x1b\x1c"];
   }
   function load(§\x1b\f\x13§, §\x19\x12\x10§)
   {
      super.load(_loc3_);
      this._oData = _loc4_;
   }
   function initialize()
   {
      this["\x1b\x1b\x1c"] = new Array();
   }
   function §\x1a\x03\x16§()
   {
      this.initialize();
      if(this.childNodes.length == 0)
      {
         return false;
      }
      var _loc2_ = this.firstChild;
      if(_loc2_.nodeName.toLowerCase() != "rss")
      {
         return false;
      }
      var _loc3_ = _loc2_.firstChild;
      while(_loc3_ != null)
      {
         if(_loc3_.nodeName.toLowerCase() == "channel")
         {
            var _loc4_ = new ank.utils.rss["\x1a\x0e\x1a"]();
            if(_loc4_["\x1a\x03\x16"](_loc3_))
            {
               this["\x1b\x1b\x1c"].push(_loc4_);
            }
         }
         _loc3_ = _loc3_.nextSibling;
      }
      return true;
   }
   function onLoad(bSuccess)
   {
      if(_loc2_)
      {
         if(this["\x1a\x03\x16"]())
         {
            this["\x17\x07\x19"]({type:"onRSSLoaded",data:this._oData});
         }
         else
         {
            this["\x17\x07\x19"]({type:"onBadRSSFile",data:this._oData});
         }
      }
      else
      {
         this["\x17\x07\x19"]({type:"onRSSLoadError",data:this._oData});
      }
   }
}
