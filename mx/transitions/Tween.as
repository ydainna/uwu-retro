class mx.transitions.Tween
{
   static var __initBeacon = mx.transitions.OnEnterFrameBeacon.init();
   static var __initBroadcaster = mx.transitions.BroadcasterMX.initialize(mx.transitions.Tween.prototype,true);
   function Tween(§\x19\x11\x13§, §\x1a\x07\x1b§, func, begin, finish, §\x17\n\x14§, useSeconds)
   {
      mx.transitions.OnEnterFrameBeacon.init();
      if(!arguments.length)
      {
         return undefined;
      }
      this.obj = _loc2_;
      this.prop = _loc3_;
      this.begin = begin;
      this.position = begin;
      this.duration = _loc7_;
      this.useSeconds = useSeconds;
      if(func)
      {
         this.func = func;
      }
      this.finish = finish;
      this._listeners = [];
      this.addListener(this);
      this.start();
   }
   function __set__time(§\x1b\r\x11§)
   {
      this.prevTime = this._time;
      if(_loc2_ > this.duration)
      {
         if(this.looping)
         {
            this.rewind(_loc2_ - this._duration);
            this.update();
            this.broadcastMessage("onMotionLooped",this);
         }
         else
         {
            if(this.useSeconds)
            {
               this._time = this._duration;
               this.update();
            }
            this.stop();
            this.broadcastMessage("onMotionFinished",this);
         }
      }
      else if(_loc2_ < 0)
      {
         this.rewind();
         this.update();
      }
      else
      {
         this._time = _loc2_;
         this.update();
      }
      return this["\x0b\x1a"]();
   }
   function §\x0b\x1a§()
   {
      return this._time;
   }
   function set duration(d)
   {
      this._duration = !(_loc2_ == null || _loc2_ <= 0) ? _loc2_ : _global.Infinity;
   }
   function get duration()
   {
      return this._duration;
   }
   function set FPS(fps)
   {
      var _loc3_ = this.isPlaying;
      this.stopEnterFrame();
      this._fps = fps;
      if(_loc3_)
      {
         this.startEnterFrame();
      }
   }
   function get FPS()
   {
      return this._fps;
   }
   function §\x1a\x11§(p)
   {
      this["\x1a\x18\x18"](p);
      return this["\x06\x13"]();
   }
   function §\x1a\x18\x18§(p)
   {
      this.prevPos = this._pos;
      this.obj[this.prop] = this._pos = p;
      this.broadcastMessage("onMotionChanged",this,this._pos);
      _global.updateAfterEvent();
   }
   function §\x06\x13§()
   {
      return this.getPosition();
   }
   function getPosition(§\x1b\r\x11§)
   {
      if(_loc2_ == undefined)
      {
         _loc2_ = this._time;
      }
      return this.func(_loc2_,this.begin,this.change,this._duration);
   }
   function set finish(§\x17\x0f\x02§)
   {
      this.change = _loc2_ - this.begin;
   }
   function get finish()
   {
      return this.begin + this.change;
   }
   function continueTo(finish, §\x17\n\x14§)
   {
      this.begin = this.position;
      this.finish = finish;
      if(_loc3_ != undefined)
      {
         this.duration = _loc3_;
      }
      this.start();
   }
   function yoyo()
   {
      this.continueTo(this.begin,this.time);
   }
   function startEnterFrame()
   {
      if(this._fps == undefined)
      {
         _global.MovieClip.addListener(this);
      }
      else
      {
         this._intervalID = _global.setInterval(this,"onEnterFrame",1000 / this._fps);
      }
      this.isPlaying = true;
   }
   function stopEnterFrame()
   {
      if(this._fps == undefined)
      {
         _global.MovieClip.removeListener(this);
      }
      else
      {
         _global.clearInterval(this._intervalID);
      }
      this.isPlaying = false;
   }
   function start()
   {
      this.rewind();
      this.startEnterFrame();
      this.broadcastMessage("onMotionStarted",this);
   }
   function stop()
   {
      this.stopEnterFrame();
      this.broadcastMessage("onMotionStopped",this);
   }
   function resume()
   {
      this.fixTime();
      this.startEnterFrame();
      this.broadcastMessage("onMotionResumed",this);
   }
   function rewind(§\x1b\r\x11§)
   {
      this._time = _loc2_ != undefined ? _loc2_ : 0;
      this.fixTime();
      this.update();
   }
   function fforward()
   {
      this.time = this._duration;
      this.fixTime();
   }
   function nextFrame()
   {
      if(this.useSeconds)
      {
         this.time = (7833 - this._startTime) / 1000;
      }
      else
      {
         this.time = this._time + 1;
      }
   }
   function onEnterFrame()
   {
      this.nextFrame();
   }
   function prevFrame()
   {
      if(!this.useSeconds)
      {
         this.time = this._time - 1;
      }
   }
   function toString()
   {
      return "[Tween]";
   }
   function fixTime()
   {
      if(this.useSeconds)
      {
         this._startTime = 4531 - this._time * 1000;
      }
   }
   function §\x1b\x14\x01§()
   {
      this.position = this.getPosition(this._time);
   }
   function func(§\x1b\r\x11§, §\x16\b\b§, c, d)
   {
      return c * _loc2_ / _loc5_ + _loc3_;
   }
}
