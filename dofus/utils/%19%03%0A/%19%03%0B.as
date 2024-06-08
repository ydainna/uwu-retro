class dofus.utils.§\x19\x03\n§.§\x19\x03\x0b§
{
   static var §\x1b\x18\f§ = ["A","E","I","O","U","Y"];
   static var §\x16\x1e\x1a§ = ["B","C","D","F","G","H","J","K","L","M","N","P","Q","R","S","T","V","W","X","Z"];
   function §\x19\x03\x0b§(§\x1b\x03\x1d§)
   {
      this.name = _loc2_;
      this["\x1b\x16\x0f"] = _loc2_.toUpperCase();
      this["\x18\x17\x19"] = _loc2_.toLowerCase();
   }
   function §\x18\x10\x0b§(§\x1a\x0f\x01§)
   {
      if(!this["\x16\x1a\x0e"](_loc2_["\x17\x1c\x02"](),_loc2_["\x17\x1b\x13"]()))
      {
         return false;
      }
      if(!_loc2_["\x17\x19\r"]() && this["\x16\x1a\x05"]())
      {
         return false;
      }
      if(!this["\x16\x1a\x06"](_loc2_["\x17\x1c\x1a"]()))
      {
         return false;
      }
      var _loc3_ = 0;
      while(_loc3_ < _loc2_["\x17\x1c\x16"]().length)
      {
         if(!this["\x16\x19\x17"](_loc2_["\x17\x1c\x16"]()[_loc3_]))
         {
            return false;
         }
         _loc3_ = _loc3_ + 1;
      }
      if(_loc2_["\x17\x19\x01"]() && !this["\x16\x1a\x1c"]())
      {
         return false;
      }
      if(_loc2_["\x17\x19\x02"]() && !this["\x16\x1a\x1b"](_loc2_["\x17\x15\b"]()))
      {
         return false;
      }
      if(_loc2_["\x17\x18\x1d"]() && !this["\x16\x1a\r"]())
      {
         return false;
      }
      if(!this["\x16\x19\x1c"](_loc2_["\x18\x01\x10"]()))
      {
         return false;
      }
      if(!this["\x16\x19\x1d"](_loc2_["\x17\x15\x13"]()))
      {
         return false;
      }
      if(!this["\x16\x1a\x02"](_loc2_["\x17\x14\x13"]()))
      {
         return false;
      }
      if(!this["\x16\x1a\x01"](_loc2_["\x17\x17\r"]()))
      {
         return false;
      }
      if(!this["\x16\x1a\x04"](_loc2_["\x17\x1c\x01"](),dofusutils.["\x19\x03\n"]["\x19\x03\x0b"]["\x1b\x18\f"]))
      {
         return false;
      }
      if(!this["\x16\x1a\x04"](_loc2_["\x17\x1b\x1d"](),dofusutils.["\x19\x03\n"]["\x19\x03\x0b"]["\x16\x1e\x1a"]))
      {
         return false;
      }
      if(!this["\x16\x1a\x10"](_loc2_["\x17\x1b\x14"]()))
      {
         return false;
      }
      return true;
   }
   function §\x18\x10\f§(§\x1a\x0f\x01§)
   {
      var _loc3_ = new dofusutils.["\x19\x03\n"]["\x16\x1a\x19"]();
      _loc3_.IS_SUCCESS = true;
      if(!this["\x16\x1a\x0e"](_loc2_["\x17\x1c\x02"](),_loc2_["\x17\x1b\x13"]()))
      {
         _loc3_.FAILED_ON_LENGTH_CHECK = true;
         _loc3_.IS_SUCCESS = false;
      }
      if(this.name.length == 0)
      {
         _loc3_.FAILED_ON_LENGTH_CHECK = true;
         _loc3_.IS_SUCCESS = false;
         return _loc3_;
      }
      if(!_loc2_["\x17\x19\r"]() && this["\x16\x1a\x05"]())
      {
         _loc3_.FAILED_ON_SPACES_CHECK = true;
         _loc3_.IS_SUCCESS = false;
      }
      if(!this["\x16\x1a\x06"](_loc2_["\x17\x1c\x1a"]()))
      {
         _loc3_.FAILED_ON_DASHES_COUNT_CHECK = true;
         _loc3_.IS_SUCCESS = false;
      }
      var _loc4_ = 0;
      while(_loc4_ < _loc2_["\x17\x1c\x16"]().length)
      {
         if(!this["\x16\x19\x17"](_loc2_["\x17\x1c\x16"]()[_loc4_]))
         {
            _loc3_.FAILED_ON_DASHES_AT_INDEXES_CHECK = true;
            _loc3_.IS_SUCCESS = false;
            break;
         }
         _loc4_ = _loc4_ + 1;
      }
      if(_loc2_["\x17\x19\x01"]() && !this["\x16\x1a\x1c"]())
      {
         _loc3_.FAILED_ON_UPPERCASE_FIRST_CHAR_CHECK = true;
         _loc3_.IS_SUCCESS = false;
      }
      if(_loc2_["\x17\x19\x02"]() && !this["\x16\x1a\x1b"](_loc2_["\x17\x15\b"]()))
      {
         _loc3_.FAILED_ON_UPPERCASE_AFTER_THE_FIRST_CHECK = true;
         _loc3_.IS_SUCCESS = false;
      }
      if(_loc2_["\x17\x18\x1d"]() && !this["\x16\x1a\r"]())
      {
         _loc3_.FAILED_ON_UPPERCASE_AT_THE_END_CHECK = true;
         _loc3_.IS_SUCCESS = false;
      }
      if(!this["\x16\x19\x1c"](_loc2_["\x18\x01\x10"]()))
      {
         _loc3_.FAILED_ON_STRICTLY_EQUALS_PROHIBED_WORDS_CHECK = true;
         _loc3_.IS_SUCCESS = false;
      }
      if(!this["\x16\x19\x1d"](_loc2_["\x17\x15\x13"]()))
      {
         _loc3_.FAILED_ON_CONTAINING_PROHIBED_WORDS_CHECK = true;
         _loc3_.IS_SUCCESS = false;
      }
      if(!this["\x16\x1a\x02"](_loc2_["\x17\x14\x13"]()))
      {
         _loc3_.FAILED_ON_BEGINNING_WITH_PROHIBED_WORDS_CHECK = true;
         _loc3_.IS_SUCCESS = false;
      }
      if(!this["\x16\x1a\x01"](_loc2_["\x17\x17\r"]()))
      {
         _loc3_.FAILED_ON_ENDING_WITH_PROHIBED_WORDS_CHECK = true;
         _loc3_.IS_SUCCESS = false;
      }
      if(!this["\x16\x1a\x04"](_loc2_["\x17\x1c\x01"](),dofusutils.["\x19\x03\n"]["\x19\x03\x0b"]["\x1b\x18\f"]))
      {
         _loc3_.FAILED_ON_VOWELS_COUNT_CHECK = true;
         _loc3_.IS_SUCCESS = false;
      }
      if(!this["\x16\x1a\x04"](_loc2_["\x17\x1b\x1d"](),dofusutils.["\x19\x03\n"]["\x19\x03\x0b"]["\x16\x1e\x1a"]))
      {
         _loc3_.FAILED_ON_CONSONANTS_COUNT_CHECK = true;
         _loc3_.IS_SUCCESS = false;
      }
      if(!this["\x16\x1a\x10"](_loc2_["\x17\x1b\x14"]()))
      {
         _loc3_.FAILED_ON_REPETITION_CHECK = true;
         _loc3_.IS_SUCCESS = false;
      }
      return _loc3_;
   }
   function §\x16\x1a\x0e§(§\x19\n\x10§, §\x19\n\x03§)
   {
      if(this.name.length < _loc2_ || this.name.length > _loc3_)
      {
         return false;
      }
      return true;
   }
   function §\x16\x1a\x05§()
   {
      var _loc2_ = 0;
      while(_loc2_ < this.name.length)
      {
         if(this.name.charAt(_loc2_) == " ")
         {
            return true;
         }
         _loc2_ = _loc2_ + 1;
      }
      return false;
   }
   function §\x16\x19\x17§(§\x19\b\x14§)
   {
      if(this.name.charAt(_loc2_) == "-" || this.name.charAt(this.name.length - 1 - _loc2_) == "-")
      {
         return false;
      }
      return true;
   }
   function §\x16\x1a\x06§(§\x19\t\x1c§)
   {
      var _loc3_ = 0;
      var _loc4_ = 0;
      while(_loc4_ < this.name.length)
      {
         if(this.name.charAt(_loc4_) == "-")
         {
            if((_loc3_ = _loc3_ + 1) > _loc2_)
            {
               return false;
            }
         }
         _loc4_ = _loc4_ + 1;
      }
      return true;
   }
   function §\x16\x1a\x1c§()
   {
      if(this["\x1b\x16\x0f"].charAt(0) != this.name.charAt(0))
      {
         return false;
      }
      return true;
   }
   function §\x16\x1a\x1b§(§\x16\x01\x17§)
   {
      var _loc3_ = 1;
      while(_loc3_ < this.name.length)
      {
         if(this["\x18\x17\x19"].charAt(_loc3_) != this.name.charAt(_loc3_))
         {
            var _loc4_ = false;
            var _loc5_ = 0;
            while(_loc5_ < _loc2_.length)
            {
               if(this.name.charAt(_loc3_ - 1) == _loc2_[_loc5_])
               {
                  _loc4_ = true;
               }
               _loc5_ = _loc5_ + 1;
            }
            if(!_loc4_)
            {
               return false;
            }
         }
         _loc3_ = _loc3_ + 1;
      }
      return true;
   }
   function §\x16\x1a\r§()
   {
      if(this["\x18\x17\x19"].charAt(this.name.length - 1) != this.name.charAt(this.name.length - 1))
      {
         return false;
      }
      return true;
   }
   function §\x16\x19\x1c§(§\x16\x04\x18§)
   {
      if(_loc2_ == null)
      {
         return true;
      }
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         if(this["\x1b\x16\x0f"] == _loc2_[_loc3_])
         {
            return false;
         }
         _loc3_ = _loc3_ + 1;
      }
      return true;
   }
   function §\x16\x19\x1d§(§\x16\x04\x18§)
   {
      if(_loc2_ == null)
      {
         return true;
      }
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         if(this["\x1b\x16\x0f"].indexOf(_loc2_[_loc3_]) > -1)
         {
            return false;
         }
         _loc3_ = _loc3_ + 1;
      }
      return true;
   }
   function §\x16\x1a\x02§(§\x16\x04\x18§)
   {
      if(_loc2_ == null)
      {
         return true;
      }
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         if(this["\x1b\x16\x0f"].indexOf(_loc2_[_loc3_]) == 0)
         {
            return false;
         }
         _loc3_ = _loc3_ + 1;
      }
      return true;
   }
   function §\x16\x1a\x01§(§\x16\x04\x18§)
   {
      if(_loc2_ == null)
      {
         return true;
      }
      var _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         if(this["\x1b\x16\x0f"].indexOf(_loc2_[_loc3_],this["\x1b\x16\x0f"].length - _loc2_[_loc3_].length) == this["\x1b\x16\x0f"].length - _loc2_[_loc3_].length)
         {
            return false;
         }
         _loc3_ = _loc3_ + 1;
      }
      return true;
   }
   function §\x16\x1a\x04§(§\x19\x05\r§, §\x15\x1b\x1a§)
   {
      var _loc4_ = 0;
      var _loc5_ = 0;
      while(_loc5_ < this.name.length)
      {
         var _loc6_ = 0;
         while(_loc6_ < _loc3_.length)
         {
            if(this["\x1b\x16\x0f"].charAt(_loc5_) == _loc3_[_loc6_])
            {
               if((_loc4_ = _loc4_ + 1) >= _loc2_)
               {
                  return true;
               }
            }
            _loc6_ = _loc6_ + 1;
         }
         _loc5_ = _loc5_ + 1;
      }
      return false;
   }
   function §\x16\x1a\x10§(§\x19\n\x07§)
   {
      var _loc3_ = new String();
      var _loc4_ = 0;
      var _loc5_ = 0;
      while(_loc5_ < this.name.length)
      {
         if(_loc3_ == (_loc3_ = this.name.charAt(_loc5_)))
         {
            if((_loc4_ = _loc4_ + 1) > _loc2_ - 1)
            {
               return false;
            }
         }
         _loc5_ = _loc5_ + 1;
      }
      return true;
   }
}
