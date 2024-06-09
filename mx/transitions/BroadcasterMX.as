class mx.transitions.BroadcasterMX
{
   function BroadcasterMX()
   {
   }
   static function initialize(§\x19\x11\f§, dontCreateArray)
   {
      if(_loc2_.broadcastMessage != undefined)
      {
         delete _loc2_.broadcastMessage;
      }
      _loc2_.addListener = mx.transitions.BroadcasterMX.prototype.addListener;
      _loc2_.removeListener = mx.transitions.BroadcasterMX.prototype.removeListener;
      if(!dontCreateArray)
      {
         _loc2_._listeners = new Array();
      }
   }
   function addListener(§\x19\x11\f§)
   {
      this.removeListener(_loc2_);
      if(this.broadcastMessage == undefined)
      {
         this.broadcastMessage = mx.transitions.BroadcasterMX.prototype.broadcastMessage;
      }
      return this._listeners.push(_loc2_);
   }
   function removeListener(§\x19\x11\f§)
   {
      var _loc3_ = this._listeners;
      var _loc4_ = _loc3_.length;
      while(true)
      {
         _loc4_;
         if(!_loc4_--)
         {
            break;
         }
         if(_loc3_[_loc4_] == _loc2_)
         {
            _loc3_.splice(_loc4_,1);
            if(!_loc3_.length)
            {
               this.broadcastMessage = undefined;
            }
            return true;
         }
      }
      return false;
   }
   function broadcastMessage()
   {
      var _loc2_ = String(arguments.shift());
      var _loc3_ = this._listeners.concat();
      var _loc4_ = _loc3_.length;
      var _loc5_ = 0;
      while(_loc5_ < _loc4_)
      {
         _loc3_[_loc5_][_loc2_].apply(_loc3_[_loc5_],arguments);
         _loc5_ = _loc5_ + 1;
      }
   }
}
