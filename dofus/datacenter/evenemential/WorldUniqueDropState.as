class dofus.§\x17\x04\x19§.evenemential.WorldUniqueDropState
{
   function WorldUniqueDropState(nItemGenericID, bDropped)
   {
      this._nItemGenericID = nItemGenericID;
      this._bDropped = bDropped;
   }
   function get itemGenericID()
   {
      return this._nItemGenericID;
   }
   function get dropped()
   {
      return this._bDropped;
   }
}
