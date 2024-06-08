class dofus.§\x18\x03\x10§.gapi.§\x17\x01\x06§.StarsDisplayer extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "StarsDisplayer";
   static var §\x1b\t\x06§ = 5;
   static var §\x1b\t\x05§ = [-1,16777011,16750848,39168,39372,6697728,2236962,16711680,65280,16777215,16711935];
   function StarsDisplayer()
   {
      super();
   }
   function §\f\x1c§()
   {
      return this["\x1e\x01\x03"];
   }
   function §\x04§(§\x1b\x17\x16§)
   {
      this["\x1e\x01\x03"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x1b\x14\x14"]();
      }
      return this["\f\x1c"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.StarsDisplayer.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this["\x18\t\x14"]});
      this.addToQueue({object:this,method:this.addListeners});
   }
   function §\x18\t\x14§()
   {
      this["\x1b\x14\x14"]();
   }
   function addListeners()
   {
      var ref = this;
      this._mcMask.onRollOut = function()
      {
         ref["\x17\x07\x19"]({type:"out"});
      };
      this._mcMask.onRollOver = function()
      {
         ref["\x17\x07\x19"]({type:"over"});
      };
      this._mcMask.onRelease = function()
      {
         ref["\x17\x07\x19"]({type:"click"});
      };
   }
   function §\x1b\x14\x14§()
   {
      if(this["\x1e\x01\x03"] != undefined && (this["\x1e\x01\x03"] > 0 && !_global.isNaN(this["\x1e\x01\x03"])))
      {
         var _loc2_ = this["\x18\x01\f"]();
         var _loc3_ = 0;
         while(_loc3_ < dofus.graphics.gapi.controls.StarsDisplayer["\x1b\t\x06"])
         {
            var _loc4_ = this["_mcStar" + _loc3_]["\x17\x10\x0e"];
            if(_loc2_[_loc3_] > -1)
            {
               var _loc5_ = new Color(_loc4_);
               _loc5_.setRGB(_loc2_[_loc3_]);
            }
            else
            {
               _loc4_._alpha = 0;
            }
            _loc3_ = _loc3_ + 1;
         }
      }
      else
      {
         var _loc6_ = 0;
         while(_loc6_ < dofus.graphics.gapi.controls.StarsDisplayer["\x1b\t\x06"])
         {
            this["_mcStar" + _loc6_]["\x17\x10\x0e"]._alpha = 0;
            _loc6_ = _loc6_ + 1;
         }
      }
   }
   function §\x18\x01\f§()
   {
      var _loc2_ = new Array();
      var _loc3_ = 0;
      while(_loc3_ < dofus.graphics.gapi.controls.StarsDisplayer["\x1b\t\x06"])
      {
         var _loc4_ = Math.floor(this["\x1e\x01\x03"] / 100) + (this["\x1e\x01\x03"] - Math.floor(this["\x1e\x01\x03"] / 100) * 100 <= _loc3_ * (100 / dofus.graphics.gapi.controls.StarsDisplayer["\x1b\t\x06"]) ? 0 : 1);
         _loc2_[_loc3_] = dofus.graphics.gapi.controls.StarsDisplayer["\x1b\t\x05"][Math.min(_loc4_,dofus.graphics.gapi.controls.StarsDisplayer["\x1b\t\x05"].length - 1)];
         _loc3_ = _loc3_ + 1;
      }
      return _loc2_;
   }
}
