class com.ankamagames.exceptions.ValueOutOfRangeException extends com.ankamagames.exceptions.AbstractException
{
   function ValueOutOfRangeException(objectErrorSource, §\x16\x1b\x0f§, methodName, variableName, invalidValue, minValue, maxValue)
   {
      super(objectErrorSource,_loc4_,methodName,variableName + "[" + invalidValue + ") is out of of range. The value value should be between " + minValue + " and " + maxValue + ").");
   }
   function §\x17\x17\x13§(§\x1b\x18\n§)
   {
      return "com.ankamagames.exceptions.ValueOutOfRangeException";
   }
}
