class ank.utils.ExtendedDate extends Date
{
   function ExtendedDate(§\x19\x0f\x17§)
   {
      super();
      if(_loc3_ != undefined)
      {
         this.setTime(_loc3_);
      }
   }
   function getDofusFullYear(§\x16\x04\x05§)
   {
      return super.getFullYear() + _loc3_.lang["\x18\x01\x18"]().z;
   }
   function getDatePadded()
   {
      return this.ensureTwoDigits(super.getDate());
   }
   function getMonthPadded()
   {
      return this.ensureTwoDigits(super.getMonth() + 1);
   }
   function getHoursPadded()
   {
      return this.ensureTwoDigits(super.getHours());
   }
   function getMinutesPadded()
   {
      return this.ensureTwoDigits(super.getMinutes());
   }
   function getSecondsPadded()
   {
      return this.ensureTwoDigits(super.getSeconds());
   }
   function getMillisecondsPadded()
   {
      return new ank.utils.ExtendedString(super.getMilliseconds())["\x15\x1d\x18"]("0",3);
   }
   function ensureTwoDigits(nUnpaddedNumber)
   {
      var _loc3_ = nUnpaddedNumber >= 10 ? "" : "0";
      _loc3_ += nUnpaddedNumber;
      return _loc3_;
   }
   function getFullDateTimeString()
   {
      return super.getFullYear() + "-" + this.getMonthPadded() + "-" + this.getDatePadded() + " " + this.getHoursPadded() + ":" + this.getMinutesPadded() + ":" + this.getSecondsPadded();
   }
}
