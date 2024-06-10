class dofus.datacenter.Gladiatrool
{
   static var aIncarnations = [12782,12783,12784,12785,12786,12787,12788,12789,12790,12791,12792,12793];
   function Gladiatrool()
   {
   }
   static function isIncarnation(nItemId)
   {
      var _loc3_ = 0;
      while(_loc3_ < dofus.datacenter.Gladiatrool.aIncarnations.length)
      {
         if(dofus.datacenter.Gladiatrool.aIncarnations[_loc3_] == nItemId)
         {
            return true;
         }
         _loc3_ = _loc3_ + 1;
      }
      return false;
   }
}
