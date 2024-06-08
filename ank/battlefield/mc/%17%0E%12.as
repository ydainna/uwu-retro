class ank.battlefield.mc.§\x17\x0e\x12§ extends MovieClip
{
   function §\x17\x0e\x12§()
   {
      super();
   }
   function initialize(§\x1a\x1c\x01§)
   {
      this.api = _global.api;
      if(this.api.electron.enabled)
      {
         this.createEmptyMovieClip("\x15\x1b\x13",900);
         var _loc3_ = new MovieClipLoader();
         _loc3_.loadClip(dofus.Constants["\x16\x1c\x1a"] + "10.swf",this["\x15\x1b\x13"]);
      }
      this["\x1e\t\x1d"] = _loc2_;
      this.clear();
   }
   function §\x1b\x16\x14§(§\x16\x12\x1d§)
   {
      if(_loc2_)
      {
         this.InteractionCell = this.Ground.createEmptyMovieClip("InteractionCell",-400);
      }
   }
   function §\x16\x1c\x05§()
   {
      if(this.Ground == undefined)
      {
         this.createEmptyMovieClip("Ground",200);
         this.Ground["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["ExternalContainer/Ground"];
         if(ank.battlefield.Constants["\x1b\x17\x02"] && ank.battlefield.Constants["\x1b\x0b\x0f"] == "explod")
         {
            this._parent.onLoadInit(ank.battlefield.mc["\x17\x0e\x12"]);
         }
         else
         {
            var _loc2_ = new MovieClipLoader();
            _loc2_.addListener(this._parent._parent);
            _loc2_.loadClip(this["\x1e\t\x1d"],this.Ground);
         }
      }
      else
      {
         if(ank.battlefield.Constants["\x1b\x17\x02"] || ank.battlefield.Constants["\x1b\x0b\x0f"] == "compact")
         {
            for(var s in this.Ground)
            {
               if(typeof this.Ground[s] == "movieclip")
               {
                  if(ank.battlefield.Constants["\x1b\x0b\x0f"] == "compact" && (this.Ground[s]._name == "InteractionCell" || this.Ground[s]._name == "Select"))
                  {
                     continue;
                  }
                  this.Ground[s].unloadMovie();
                  this.Ground[s].removeMovieClip();
               }
            }
         }
         this.Ground.clear();
      }
   }
   function clear()
   {
      this.InteractionCell.removeMovieClip();
      this.createEmptyMovieClip("InteractionCell",100);
      this["\x16\x1c\x05"]();
      if(ank.battlefield.Constants["\x1b\x17\x02"] && ank.battlefield.Constants["\x1b\x0b\x0f"] == "explod")
      {
         for(var s in this.Object1)
         {
            if(typeof this.Object1[s] == "movieclip")
            {
               this.Object1[s].unloadMovie();
               this.Object1[s].removeMovieClip();
            }
         }
         this.Object1.clear();
      }
      this.Object1.removeMovieClip();
      this.createEmptyMovieClip("Object1",300);
      this.Object1["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["ExternalContainer/Object1"];
      this.Grid.removeMovieClip();
      this.createEmptyMovieClip("Grid",400);
      this.Grid["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["ExternalContainer/Grid"];
      this["\x1b\x1b\b"].removeMovieClip();
      this.createEmptyMovieClip("\x1b\x1b\b",500);
      this["\x1b\x1b\b"]["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["ExternalContainer/Zone"];
      this.Select.removeMovieClip();
      this.createEmptyMovieClip("Select",600);
      this.Select["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["ExternalContainer/Select"];
      this["\x1a\x06\x05"].removeMovieClip();
      this.createEmptyMovieClip("\x1a\x06\x05",700);
      this["\x1a\x06\x05"]["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["ExternalContainer/Pointer"];
      if(ank.battlefield.Constants["\x1b\x17\x02"] && ank.battlefield.Constants["\x1b\x0b\x0f"] == "explod")
      {
         for(var s in this.Object2)
         {
            if(typeof this.Object1[s] == "movieclip")
            {
               this.Object2[s].unloadMovie();
               this.Object2[s].removeMovieClip();
            }
         }
         this.Object2.clear();
      }
      this.Object2.removeMovieClip();
      this.createEmptyMovieClip("Object2",800);
      this.Object2["\x16\x15\x06"] = _global.CONFIG["\x16\x15\x06"]["ExternalContainer/Object2"];
      this.Object2.__proto__ = MovieClip.prototype;
   }
}
