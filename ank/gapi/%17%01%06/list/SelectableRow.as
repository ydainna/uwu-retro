class ank.gapi.§\x17\x01\x06§.list.SelectableRow extends ank.gapi.core.UIBasicComponent
{
   var §\x1c\x03\b§ = false;
   function SelectableRow()
   {
      super();
   }
   function §\x16\r§(§\x19\b\x19§)
   {
      this["\x1d\x17\x0b"] = _loc2_;
      return this["\x01\n"]();
   }
   function §\x01\n§()
   {
      return this["\x1d\x17\x0b"];
   }
   function §\x01\x07§()
   {
      return this["\x1e\x03\x18"];
   }
   function §\x14\x1b§(§\x19\b\x14§)
   {
      this["\x1d\x17\x03"] = _loc2_;
      return this["\x1e\x1c\b"]();
   }
   function §\x1e\x1c\b§()
   {
      return this["\x1d\x17\x03"];
   }
   function get isRolledOver()
   {
      return this.over_mc._visible;
   }
   function §\x1a\x15\b§(§\x18\x15\x07§)
   {
      this.cellRenderer_mc.removeMovieClip();
      this.attachMovie(_loc2_,"cellRenderer_mc",100,{styleName:this.getStyle().cellrendererstyle,list:this._parent._parent,row:this});
   }
   function setState(§\x1b\b\x15§)
   {
      this.cellRenderer_mc.setState(_loc2_);
      switch(_loc2_)
      {
         case "selected":
            this["\x1a\x12\x19"]._visible = true;
            break;
         case "normal":
            this["\x1a\x12\x19"]._visible = false;
      }
   }
   function §\x1a\x1b\x01§(§\x1b\b\x1a§, §\x19\x13\x07§, §\x1b\b\x15§)
   {
      this["\x1c\x0b\x1c"] = _loc3_ != undefined;
      this["\x1e\x03\x18"] = _loc3_;
      this.cellRenderer_mc["\x1a\x1b\x01"](this["\x1c\x0b\x1c"],_loc2_,_loc3_);
      this.setState(_loc4_);
   }
   function select()
   {
      this.bg_mc.onRelease();
   }
   function §\x18\t\x04§()
   {
      super.init(false);
   }
   function createChildren()
   {
      this.createEmptyMovieClip("\x1a\x12\x19",-10);
      this.createEmptyMovieClip("over_mc",-20);
      this.createEmptyMovieClip("bg_mc",-30);
      this.bg_mc.trackAsMenu = true;
      this.over_mc._visible = false;
      this["\x1a\x12\x19"]._visible = false;
      this.bg_mc.useHandCursor = false;
      this.bg_mc.onRollOver = function()
      {
         if(this._parent["\x1c\x0b\x1c"] && this._parent._bEnabled)
         {
            this._parent.over_mc._visible = true;
            this._parent["\x17\x07\x19"]({type:"itemRollOver",target:this._parent});
            this._parent._sLastMouseAction = "RollOver";
         }
      };
      this.bg_mc.onRollOut = this.bg_mc.onReleaseOutside = function()
      {
         if(this._parent["\x1c\x0b\x1c"] && this._parent._bEnabled)
         {
            this._parent["\x17\x07\x19"]({type:"itemRollOut",target:this._parent});
            this._parent._sLastMouseAction = "RollOut";
         }
         this._parent.over_mc._visible = false;
      };
      this.bg_mc.onPress = function()
      {
         this._parent._sLastMouseAction = "Press";
      };
      this.bg_mc.onRelease = function()
      {
         if(this._parent["\x1c\x0b\x1c"] && this._parent._bEnabled)
         {
            if(this._parent._sLastMouseAction == "DragOver")
            {
               this._parent["\x17\x07\x19"]({type:"itemDrop"});
            }
            else if(1517 - this._parent._nLastClickTime < ank.gapi["\x17\x13\n"]["\x17\x05\x0f"] && !this._parent["\x1c\x03\b"])
            {
               ank.utils.Timer.removeTimer(this._parent,"selectablerow");
               this._parent["\x17\x07\x19"]({type:"itemdblClick"});
            }
            else if(this._parent["\x1c\x03\b"])
            {
               ank.utils.Timer.setTimer(this._parent,"selectablerow",this._parent,this._parent["\x17\x07\x19"],ank.gapi["\x17\x13\n"]["\x17\x05\x0f"],[{type:"itemSelected"}]);
            }
            else
            {
               this._parent["\x17\x07\x19"]({type:"itemSelected"});
            }
            this._parent._sLastMouseAction = "Release";
            this._parent._nLastClickTime = 6630;
         }
      };
      this.bg_mc.onDragOver = function()
      {
         if(this._parent["\x1c\x0b\x1c"] && this._parent._bEnabled)
         {
            this._parent.over_mc._visible = true;
            this._parent["\x17\x07\x19"]({type:"itemRollOver",target:this._parent});
            this._parent._sLastMouseAction = "DragOver";
         }
      };
      this.bg_mc.onDragOut = function()
      {
         if(this._parent["\x1c\x0b\x1c"] && this._parent._bEnabled)
         {
            if(this._parent._sLastMouseAction == "Press")
            {
               this._parent["\x17\x07\x19"]({type:"itemDrag"});
            }
            this._parent._sLastMouseAction = "DragOut";
            this._parent["\x17\x07\x19"]({type:"itemRollOut",target:this._parent});
         }
         this._parent.over_mc._visible = false;
      };
   }
   function size()
   {
      super.size();
      this.cellRenderer_mc["\x1a\x19\x18"](this["\x1d"],this["\x0e\x06"]);
      this["\x16\x05\f"]();
   }
   function §\x16\x05\f§()
   {
      this.over_mc._width = this["\x1a\x12\x19"]._width = this.bg_mc._width = this["\x1d"];
      this.over_mc._height = this["\x1a\x12\x19"]._height = this.bg_mc._height = this["\x0e\x06"];
   }
   function draw()
   {
      var _loc2_ = this.getStyle();
      var _loc3_ = _loc2_.cellbgcolor;
      var _loc4_ = _loc2_.cellselectedcolor;
      var _loc5_ = _loc2_.cellovercolor;
      this.over_mc.clear();
      this["\x1a\x12\x19"].clear();
      this.bg_mc.clear();
      this["\x17\n\x0f"](this.over_mc,0,0,1,1,0,_loc5_,_loc5_ != -1 ? 100 : 0);
      this["\x17\n\x0f"](this["\x1a\x12\x19"],0,0,1,1,0,_loc4_,_loc4_ != -1 ? 100 : 0);
      this["\x17\n\x0f"](this.bg_mc,0,0,1,1,0,typeof _loc3_ != "object" ? Number(_loc3_) : Number(_loc3_[this["\x1d\x17\x03"] % _loc3_.length]),_loc3_ != -1 ? 100 : 0);
      this.cellRenderer_mc.styleName = _loc2_.cellrendererstyle;
   }
}
