class dofus.§\x18\x03\x10§.gapi.ui.§\x18\x1e\r§.MountStorageMountItem extends ank.gapi.§\x17\x01\x0f§.§\x1b\x13\x04§
{
   function MountStorageMountItem()
   {
      super();
   }
   function §\x1a\x1b\x01§(§\x16\x14\n§, §\x1b\b\x1a§, §\x19\x13\x07§)
   {
      if(_loc2_)
      {
         this._lbl.text = _loc4_.name;
         this["\x1e\x03\x18"] = dofus.datacenter..Mount(_loc4_);
         if(this["\x1e\x03\x18"]["\x19\x06\x19"])
         {
            this["\x1d\x05\x19"].contentPath = "OeufCasse";
         }
         else
         {
            this["\x1d\x05\x19"].contentPath = "";
         }
         this._ldrIcon.contentPath = _loc4_.iconFile;
         this["\x1d\x0f\x1b"]._visible = !_loc4_["\x1a\x1b\f"];
         this["\x1d\x0f\x1c"]._visible = !this["\x1d\x0f\x1b"]._visible;
      }
      else if(this._lbl.text != undefined)
      {
         this._lbl.text = "";
         this._ldrIcon.contentPath = "";
         this["\x1d\x05\x19"].contentPath = "";
         this["\x1d\x0f\x1b"]._visible = false;
         this["\x1d\x0f\x1c"]._visible = false;
      }
   }
   function §\x18\t\x04§()
   {
      super.init(false);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this["\x16\x05\f"]();
   }
   function addListeners()
   {
      this._ldrIcon.addEventListener("complete",this);
   }
   function size()
   {
      super.size();
      this.addToQueue({object:this,method:this["\x16\x05\f"]});
   }
   function §\x16\x05\f§()
   {
      this._lbl["\x1a\x19\x18"](this["\x1d"],this["\x0e\x06"]);
   }
   function applyRideColor(§\x18\x1b\f§, §\x1b\x1b\x07§)
   {
      var _loc4_ = this["\x1e\x03\x18"]["color" + _loc3_];
      if(_loc4_ == -1 || _loc4_ == undefined)
      {
         return undefined;
      }
      var _loc5_ = (_loc4_ & 16711680) >> 16;
      var _loc6_ = (_loc4_ & 65280) >> 8;
      var _loc7_ = _loc4_ & 255;
      var _loc8_ = new Color(_loc2_);
      var _loc9_ = new Object();
      _loc9_ = {ra:0,ga:0,ba:0,rb:_loc5_,gb:_loc6_,bb:_loc7_};
      _loc8_.setTransform(_loc9_);
   }
   function complete(oEvent)
   {
      var ref = this;
      this._ldrIcon.content.applyRideColor = function(§\x18\x1b\f§, §\x1b\x1a\x1d§)
      {
         ref.applyRideColor(_loc2_,_loc3_);
      };
   }
}
