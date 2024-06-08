class ank.utils.§\x17\x0e\x0e§ extends String
{
   static var §\x17\x06\x0e§ = " \n\r\t";
   function §\x17\x0e\x0e§(§\x19\x11\f§)
   {
      super();
      this._s = String(_loc3_);
   }
   function xmlUnescape()
   {
      return this.replace(["&lt;","&gt;","&quot;","&amp;","&apos;"],["<",">","\"","&","\'"]);
   }
   function externalInterfaceEscape()
   {
      return this.replace(["&amp;","&lt;","&gt;","","\\"],["&ASamp;","&ASlt;","&ASgt;","|","\\\\"]);
   }
   function §\x1a\r\n§(§\x1a\x04\x1a§, §\x1a\b\x03§)
   {
      if(arguments.length == 0)
      {
         return this._s;
      }
      if(arguments.length == 1)
      {
         if(!(_loc2_ instanceof Array))
         {
            return this._s.split(_loc2_).join("");
         }
         _loc3_ = new Array(_loc2_.length);
      }
      if(!(_loc2_ instanceof Array))
      {
         return this._s.split(_loc2_).join(_loc3_);
      }
      var _loc4_ = _loc2_.length;
      var _loc5_ = this._s;
      if(_loc3_ instanceof Array)
      {
         var _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            _loc5_ = _loc5_.split(_loc2_[_loc6_]).join(_loc3_[_loc6_]);
            _loc6_ = _loc6_ + 1;
         }
      }
      else
      {
         var _loc7_ = 0;
         while(_loc7_ < _loc4_)
         {
            _loc5_ = _loc5_.split(_loc2_[_loc7_]).join(_loc3_);
            _loc7_ = _loc7_ + 1;
         }
      }
      return _loc5_;
   }
   function §\x15\x1d\x18§(§\x1a\x10\x0f§, §\x19\n\b§)
   {
      var _loc4_ = _loc3_ - this._s.length;
      var _loc5_ = new String();
      var _loc6_ = 0;
      while(_loc6_ < _loc4_)
      {
         _loc5_ += _loc2_;
         _loc6_ = _loc6_ + 1;
      }
      _loc5_ += this._s;
      return _loc5_;
   }
   function §\x15\x1e\x01§(§\x19\x04\x19§, §\x19\x05\f§)
   {
      if(_global.isNaN(_loc3_))
      {
         _loc3_ = Number(_loc3_);
      }
      _loc3_ = Math.abs(_loc3_);
      var _loc5_ = new Array();
      var _loc4_ = this._s.length;
      while(_loc4_ > 0)
      {
         if(Math.max(0,_loc4_ - _loc3_) == 0)
         {
            _loc5_.push(this._s.substr(0,_loc4_));
         }
         else
         {
            _loc5_.push(this._s.substr(_loc4_ - _loc3_,_loc3_));
         }
         _loc4_ -= _loc3_;
      }
      _loc5_.reverse();
      return _loc5_.join(_loc2_);
   }
   function §\x18\x17\x1c§(§\x15\x1b\x03§)
   {
      this["\x1c\r\x0b"]();
      this["\x1d\x07\x0b"](this["\x1b\x04\x1d"](_loc2_));
      return this;
   }
   function §\x1a\x0e\x1d§(§\x15\x1b\x03§)
   {
      this["\x1c\r\x0b"]();
      this["\x1e\x07\r"](this["\x1b\x04\x1d"](_loc2_));
      return this;
   }
   function §\x1b\x11\x13§(§\x15\x1b\x03§)
   {
      var _loc3_ = this["\x1b\x04\x1d"](_loc2_);
      this["\x1c\r\x0b"]();
      this["\x1e\x07\r"](_loc3_);
      this["\x1d\x07\x0b"](_loc3_);
      return this;
   }
   function toString()
   {
      return this._s;
   }
   function §\x1a\x0b\x15§()
   {
      var _loc2_ = "àáâãäÀÁÂÃÄèéêëËÉÊÈìíîïÌÍÎÏòóôõöÒÓÔÕÖùúûüÙÚÛÜýýÿÝÝŸçÇñÑ";
      var _loc3_ = "aaaaaAAAAAeeeeEEEEiiiiIIIIoooooOOOOOuuuuUUUUyyyYYYcCnN";
      var _loc4_ = "";
      var _loc5_ = 0;
      while(_loc5_ < this._s.length)
      {
         var _loc6_ = this._s.charAt(_loc5_);
         var _loc7_ = _loc2_.indexOf(_loc6_);
         _loc4_ += _loc7_ == -1 ? _loc6_ : _loc3_.charAt(_loc7_);
         _loc5_ = _loc5_ + 1;
      }
      return _loc4_;
   }
   function §\x1b\x04\x1d§(§\x15\x1b\x03§)
   {
      var _loc3_ = new Object();
      if(_loc2_ == undefined)
      {
         _loc2_ = ank.utils.ExtendedString["\x17\x06\x0e"];
      }
      if(typeof _loc2_ == "string")
      {
         var _loc4_ = _loc2_.length;
         while((_loc4_ = _loc4_ - 1) >= 0)
         {
            _loc3_[_loc2_.charAt(_loc4_)] = true;
         }
      }
      else
      {
         _loc3_ = _loc2_;
      }
      return _loc3_;
   }
   function §\x1d\x07\x0b§(§\x15\x1b\x03§)
   {
      var _loc3_ = this._s.length;
      var _loc4_ = 0;
      while(_loc3_ > 0)
      {
         if(!_loc2_[this._s.charAt(_loc4_)])
         {
            break;
         }
         _loc4_ = _loc4_ + 1;
         _loc3_ = _loc3_ - 1;
      }
      this._s = this._s.slice(_loc4_);
   }
   function §\x1e\x07\r§(§\x15\x1b\x03§)
   {
      var _loc3_ = this._s.length;
      var _loc4_ = _loc3_ - 1;
      while(_loc3_ > 0)
      {
         if(!_loc2_[this._s.charAt(_loc4_)])
         {
            break;
         }
         _loc4_ = _loc4_ - 1;
         _loc3_ = _loc3_ - 1;
      }
      this._s = this._s.slice(0,_loc4_ + 1);
   }
   function §\x1c\r\x0b§()
   {
      var _loc2_ = "";
      var _loc3_ = 0;
      while(_loc3_ < this._s.length)
      {
         if(this._s.charCodeAt(_loc3_) >= 32 && this._s.charCodeAt(_loc3_) <= 255)
         {
            _loc2_ += this._s.charAt(_loc3_);
         }
         _loc3_ = _loc3_ + 1;
      }
      this._s = _loc2_;
   }
}
