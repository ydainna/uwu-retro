class dofus.§\x17\x04\x19§.Job extends Object
{
   function Job(§\x19\b\x0b§, §\x17\x0b\x14§, §\x1a\x01\b§)
   {
      super();
      this.initialize(_loc3_,_loc4_,_loc5_);
   }
   function §\x19\x17§(§\x19\x11\f§)
   {
      this["\x1e\x04\x18"] = _loc2_;
      this["\x17\x07\x19"]({type:"optionsChanged",value:_loc2_});
      return this["\x05\x14"]();
   }
   function §\x05\x14§()
   {
      return this["\x1e\x04\x18"];
   }
   function §\x1e\x1c\x05§()
   {
      return this["\x1d\x17\x01"];
   }
   function §\x04\x1b§()
   {
      var _loc2_ = this["\x1e\x04\x01"].n;
      if(dofus.Constants.DEBUG)
      {
         _loc2_ += " (" + this.id + ")";
      }
      return _loc2_;
   }
   function §\x1e\x18\r§()
   {
      return this["\x1e\x04\x01"].d;
   }
   function §\x1e\x1c\x03§()
   {
      return dofus.Constants["\x18\x11\x10"] + this["\x1e\x04\x01"].g + ".swf";
   }
   function §\t\n§()
   {
      return this["\x1c\x10\r"];
   }
   function §\x1e\x17\x04§()
   {
      return this["\x1c\x0f\x04"];
   }
   function §\x17\x03§(§\x19\t\x0f§)
   {
      this["\x1d\x18\x10"] = _loc2_;
      return this["\x02\x06"]();
   }
   function §\x02\x06§()
   {
      return this["\x1d\x18\x10"];
   }
   function §\x18§(§\x19\x11\x02§)
   {
      this["\x1e\x01\x18"] = _loc2_;
      return this["\r\x1c"]();
   }
   function §\r\x1c§()
   {
      return this["\x1e\x01\x18"];
   }
   function §\x13§(§\x19\x10\x1b§)
   {
      this["\x1e\x01\x12"] = _loc2_;
      if(this.api.datacenter.Player.currentJobID == this.id)
      {
         var _loc3_ = dofus.graphics.gapi.ui.Banner(this.api.ui.getUIComponent("Banner"));
         if(_loc3_ != undefined && this.api.kernel.OptionsManager.getOption("BannerGaugeMode") == "xpcurrentjob")
         {
            dofus.graphics.gapi.ui["\x16\b\x1a"]["\x16\b\x1b"]["\x1a\x1d\x12"](_loc3_);
         }
      }
      return this["\r\x16"]();
   }
   function §\r\x16§()
   {
      return this["\x1e\x01\x12"];
   }
   function §\x17§(§\x19\x10\x1d§)
   {
      this["\x1e\x01\x16"] = _loc2_;
      return this["\r\x1a"]();
   }
   function §\r\x1a§()
   {
      return this["\x1e\x01\x16"] <= Math.pow(10,17) ? this["\x1e\x01\x16"] : this["\x1e\x01\x12"];
   }
   function §\t\x15§()
   {
      return this["\x1e\x04\x01"].s;
   }
   function initialize(§\x19\b\x0b§, §\x17\x0b\x14§, §\x1a\x01\b§)
   {
      eval("\x19\x02\x19")["\x17\x0e\x06"]["\x17\x0e\x04"].initialize(this);
      this.api = _global.api;
      this["\x1d\x17\x01"] = _loc2_;
      this["\x1c\x10\r"] = _loc3_;
      this["\x1e\x04\x18"] = _loc4_;
      this["\x1e\x04\x01"] = this.api.lang["\x17\x1a\x02"](_loc2_);
      if(!_global.isNaN(_loc3_.length))
      {
         this["\x1c\x0f\x04"] = new ank.utils.ExtendedArray();
         var _loc5_ = new ank.utils.ExtendedArray();
         var _loc6_ = 0;
         while(_loc6_ < _loc3_.length)
         {
            var _loc7_ = _loc5_.findFirstItem("id",_loc3_[_loc6_].id);
            if(_loc7_.index == -1)
            {
               _loc5_.push(_loc3_[_loc6_]);
            }
            else if(_loc7_.item["\x1a\x03\r"] < _loc3_[_loc6_]["\x1a\x03\r"])
            {
               _loc5_[_loc7_.index] = _loc3_[_loc6_];
            }
            _loc6_ = _loc6_ + 1;
         }
         var _loc8_ = 0;
         while(_loc8_ < _loc5_.length)
         {
            var _loc9_ = _loc5_[_loc8_];
            var _loc10_ = _loc9_["\x17\x02\x01"];
            if(_loc10_ != undefined)
            {
               var _loc11_ = 0;
               while(_loc11_ < _loc10_.length)
               {
                  var _loc12_ = _loc10_[_loc11_];
                  var _loc13_ = new dofus.datacenter..Craft(_loc12_,_loc9_);
                  if(_loc13_.itemsCount <= _loc9_["\x1a\x03\r"])
                  {
                     this["\x1c\x0f\x04"].push(_loc13_);
                  }
                  _loc11_ = _loc11_ + 1;
               }
            }
            this["\x1c\x0f\x04"].sortOn("name");
            _loc8_ = _loc8_ + 1;
         }
      }
   }
   function §\x17\x1b\x16§()
   {
      var _loc2_ = -1;
      var _loc3_ = 0;
      while(_loc3_ < this["\x1c\x10\r"].length)
      {
         var _loc4_ = this["\x1c\x10\r"][_loc3_];
         if(_loc4_["\x1a\x03\r"] > _loc2_)
         {
            _loc2_ = _loc4_["\x1a\x03\r"];
         }
         _loc3_ = _loc3_ + 1;
      }
      return _loc2_;
   }
}
