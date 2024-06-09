class dofus.§\x18\x03\x10§.gapi.ui.Tips extends dofus.§\x18\x03\x10§.gapi.§\x17\x01\x0f§.§\x17\t\n§
{
   static var §\x16\x1b\x10§ = "Tips";
   var §\x1c\b\x11§ = true;
   var §\x1d\x14\x12§ = 0;
   function Tips()
   {
      super();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.ui.Tips.CLASS_NAME);
   }
   function destroy()
   {
      this.gapi.hideTooltip();
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
      this.addToQueue({object:this,method:this.initData});
      this.addToQueue({object:this,method:this["\x1b\x01\r"]});
   }
   function initTexts()
   {
      this["\x1e\x10\t"].title = this.api.lang.getText("TIPS");
      this._btnClose2.label = this.api.lang.getText("CLOSE");
      this["\x1d\x03\x07"].text = this.api.lang.getText("SHOW_TIPS_ON_STARTUP");
   }
   function addListeners()
   {
      this._btnClose.addEventListener("click",this);
      this._btnClose2.addEventListener("click",this);
      this._btnTipsOnStart.addEventListener("click",this);
      this._btnNext.addEventListener("click",this);
      this._btnPrevious.addEventListener("click",this);
      this["\x1c\x0b\t"].addEventListener("over",this);
      this["\x1c\x0b\t"].addEventListener("out",this);
   }
   function initData()
   {
      var _loc2_ = SharedObject.getLocal(dofus.Constants.OPTIONS_SHAREDOBJECT_NAME);
      _loc2_._parentRef = this;
      _loc2_.onStatus = function(oEvent)
      {
         if(_loc2_.level == "status" && _loc2_.code == "SharedObject.Flush.Success")
         {
            this._parentRef._btnTipsOnStart._visible = true;
            this._parentRef["\x1d\x03\x07"]._visible = true;
            this._parentRef._btnTipsOnStart.enabled = true;
            this._parentRef["\x1c\x0b\t"]._visible = false;
            this._parentRef["\x1c\b\x11"] = true;
         }
      };
      if(SharedObject.getLocal(dofus.Constants.OPTIONS_SHAREDOBJECT_NAME).flush() != true)
      {
         this._btnTipsOnStart.enabled = false;
         this._btnTipsOnStart.selected = false;
         this["\x1c\b\x11"] = false;
      }
      else
      {
         this["\x1c\x0b\t"]._visible = false;
         this._btnTipsOnStart.selected = this.api.kernel.OptionsManager.getOption("TipsOnStart");
      }
   }
   function §\x1b\x01\r§(§\x19\b\x0b§)
   {
      var _loc3_ = this.api.lang["\x18\x01\x1a"]().length - 1;
      if(_loc2_ == undefined)
      {
         _loc2_ = random(_loc3_);
      }
      if(_loc2_ > _loc3_)
      {
         _loc2_ = 0;
      }
      if(_loc2_ < 0)
      {
         _loc2_ = _loc3_;
      }
      this["\x1d\x14\x12"] = _loc2_;
      var _loc4_ = this.api.lang["\x18\x01\x19"](_loc2_);
      if(_loc4_ != undefined)
      {
         this["\x1e\x0f\x1d"].text = _loc4_;
      }
      else
      {
         this["\x1b\x13\x13"]();
      }
   }
   function click(oEvent)
   {
      switch(_loc2_.target._name)
      {
         case "_btnClose":
         case "_btnClose2":
            this["\x16\x15\n"]();
            break;
         case "_btnTipsOnStart":
            this.api.kernel.OptionsManager.setOption("TipsOnStart",_loc2_.target.selected);
            break;
         case "_btnPrevious":
            this["\x1b\x01\r"](this["\x1d\x14\x12"] - 1);
            break;
         case "_btnNext":
            this["\x1b\x01\r"](this["\x1d\x14\x12"] + 1);
      }
   }
   function over(oEvent)
   {
      if(this["\x1c\b\x11"] == false)
      {
         this.gapi.showTooltip("Les cookies flash doivent être activés pour accèder à cette fonctionnalité.",this._btnTipsOnStart,-30);
      }
   }
   function out(oEvent)
   {
      this.gapi.hideTooltip();
   }
}
