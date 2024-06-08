class dofus.utils.§\x17\x03\x04§.§\x17\x03\x03§
{
   static var §\x18\x18\x04§ = "A";
   static var §\x1b\x12\x10§ = "A";
   static var §\x18\x18\x05§ = "B";
   static var §\x1b\x12\x11§ = "E";
   function §\x17\x03\x03§()
   {
   }
   static function §\x17\x10\x10§(§\x1a\x11\x0b§)
   {
      var _loc3_ = _loc2_.split("|");
      var _loc4_ = 0;
      while(_loc4_ < _loc3_.length)
      {
         var _loc5_ = String(_loc3_[_loc4_]).split("&");
         if(_loc5_.length != 0)
         {
            var _loc6_ = 0;
            var _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               var _loc8_ = dofusutils.["\x17\x03\x04"]["\x17\x03\x03"]["\x1a\x03\x17"](_loc5_[_loc7_]);
               if(_loc8_["\x18\r\x16"]())
               {
                  _loc6_ = _loc6_ + 1;
               }
               _loc7_ = _loc7_ + 1;
            }
            if(_loc6_ == _loc5_.length)
            {
               return true;
            }
         }
         _loc4_ = _loc4_ + 1;
      }
      return false;
   }
   static function §\x1a\x03\x17§(§\x1a\x11\n§)
   {
      var _loc3_ = _loc2_.charAt(0);
      var _loc4_ = _loc2_.charAt(1);
      var _loc5_ = _loc2_.charAt(2);
      var _loc6_ = _loc2_.substring(3);
      switch(_loc3_)
      {
         case dofusutils.["\x17\x03\x04"]["\x17\x03\x03"]["\x18\x18\x04"]:
            if((_loc0_ = _loc4_) === dofusutils.["\x17\x03\x04"]["\x17\x03\x03"]["\x1b\x12\x10"])
            {
               var _loc7_ = new dofusutils.["\x17\x03\x04"]["\x1b\x0b\x19"]["\x1b\x0b\x1a"](_loc5_,Number(_loc6_));
            }
            break;
         case dofusutils.["\x17\x03\x04"]["\x17\x03\x03"]["\x18\x18\x05"]:
            if((_loc0_ = _loc4_) !== dofusutils.["\x17\x03\x04"]["\x17\x03\x03"]["\x1b\x12\x11"])
            {
               break;
            }
            _loc7_ = new dofusutils.["\x17\x03\x04"]["\x16\t\x01"]["\x16\t\x02"](_loc5_,Number(_loc6_));
            break;
      }
      if(_loc7_ == null || !_loc7_["\x16\x19\x15"]())
      {
         new org.flashdevelop.utils.FlashConnect.trace(new com.ankamagames.exceptions.NullPointerException(dofusutils.["\x17\x03\x04"]["\x17\x03\x03"],"\x17\x03\x03","\x1a\x03\x17","criterionToReturn"),"dofus.utils.criterions.CriterionManager::parseCriterion","C:\\Users\\ddallinge\\Git\\client\\src\\core\\classes/dofus/utils/criterions/CriterionManager.as",73);
         return null;
      }
      return _loc7_;
   }
}
