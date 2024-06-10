class dofus.§\x18\x03\x10§.gapi.ui.MountAncestorsViewer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "MountAncestorsViewer";
   function MountAncestorsViewer()
   {
      super();
   }
   function §\x18\x19§(§\x19\x13\x13§)
   {
      this["\x1e\x04\x11"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1b\x14\x14"]();
      }
      return this["\x04\t"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.MountAncestorsViewer.CLASS_NAME);
   }
   function §\x16\x15\n§()
   {
      this["\x1b\x13\x13"]();
      return true;
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.initTexts});
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x1b\x14\x14"]});
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      var _loc2_ = 0;
      while(_loc2_ < 15)
      {
         this["_ldr" + _loc2_].addEventListener("initialization",this);
         _loc2_ = _loc2_ + 1;
      }
   }
   function initTexts()
   {
   }
   function §\x1b\x14\x14§()
   {
      if(this["\x1e\x04\x11"] != undefined)
      {
         this["\x1c\x1b\x05"].text = this["\x1e\x04\x11"].name;
         var _loc2_ = new ank.utils.ExtendedArray();
         for(var a in this["\x1e\x04\x11"].ancestors)
         {
            _loc2_[a] = this["\x1e\x04\x11"].ancestors[a];
         }
         _loc2_.push(this["\x1e\x04\x11"].modelID);
         var _loc3_ = 0;
         while(_loc3_ < _loc2_.length)
         {
            var _loc4_ = Number(_loc2_[_loc3_]);
            if(_loc4_ != 0)
            {
               var _loc5_ = new dofus.datacenter.Mount(_loc4_);
               var _loc6_ = ank.gapi.controls.Loader(this["_ldr" + _loc3_]);
               _loc6_["\x17\x12\x07"]();
               _loc6_.contentPath = _loc5_.gfxFile;
               var _loc7_ = new ank.battlefield.datacenter..Sprite("-1",undefined,"",0,0);
               _loc7_.mount = _loc5_;
               this.api.colors.addSprite(_loc6_,_loc7_);
               var _loc8_ = this.attachMovie("Rectangle","mcButton" + _loc3_,_loc3_);
               _loc8_._width = 75;
               _loc8_._height = 75;
               _loc8_._alpha = 0;
               _loc8_._x = _loc6_._x - 35;
               _loc8_._y = _loc6_._y - 60;
               _loc8_.mount = _loc5_;
               _loc8_.onRollOver = function()
               {
                  this._parent.gapi.showTooltip(this.mount.modelName,this,-30,{bXLimit:true,bYLimit:false});
               };
               _loc8_.onRollOut = function()
               {
                  this._parent.out();
               };
            }
            this["_mcUnknown" + _loc3_]._visible = _loc4_ == 0;
            _loc3_ = _loc3_ + 1;
         }
      }
   }
   function initialization(oEvent)
   {
      var _loc3_ = _loc2_.target.content;
      _loc3_.attachMovie("staticR_front","anim_front",11);
      _loc3_.attachMovie("staticR_back","anim_back",10);
   }
   function click(oEvent)
   {
      var _loc0_ = null;
      if((_loc0_ = _loc2_.target) === this._btnClose)
      {
         this["\x16\x15\n"]();
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
