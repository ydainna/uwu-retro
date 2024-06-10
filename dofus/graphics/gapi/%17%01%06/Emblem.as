class dofus.graphics.gapi.§\x17\x01\x06§.Emblem extends ank.gapi.core.UIBasicComponent
{
   static var §\x16\x1b\x10§ = "Emblem";
   var §\x1c\b\x01§ = false;
   function Emblem()
   {
      super();
   }
   function §\x1c\x12§(§\x16\x12\t§)
   {
      this["\x1c\b\x01"] = _loc2_;
      return this["\b\x1d"]();
   }
   function §\b\x1d§()
   {
      return this["\x1c\b\x01"];
   }
   function §\x0f\x0f§(§\x19\x03\x1a§)
   {
      if(_loc2_ < 1 || _loc2_ > dofus.Constants["\x17\f\x17"])
      {
         _loc2_ = 1;
      }
      this["\x1e\x07\x15"] = dofus.Constants["\x17\f\x15"] + _loc2_ + ".swf";
      if(this["\x18\t\x1c"])
      {
         this["\x18\x13\x13"]();
      }
      return this.backID;
   }
   function §\x0f\n§(§\x19\x03\x16§)
   {
      this["\x1d\x13\x03"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x18\x13\x13"]();
      }
      return this.backColor;
   }
   function §\x1e\x1b§(§\x19\x10\x0f§)
   {
      if(_loc2_ < 1 && _loc2_ != -1 || _loc2_ > dofus.Constants["\x17\f\x18"])
      {
         _loc2_ = 1;
      }
      this["\x1e\r\f"] = dofus.Constants["\x17\f\x16"] + _loc2_ + ".swf";
      if(this["\x18\t\x1c"])
      {
         this["\x18\x13\x16"]();
      }
      return this.upID;
   }
   function §\x1e\x18§(§\x19\x10\f§)
   {
      this["\x1d\x1e\x1c"] = _loc2_;
      if(this["\x18\t\x1c"])
      {
         this["\x18\x13\x16"]();
      }
      return this.upColor;
   }
   function §\x11\x19§(§\x19\x12\x10§)
   {
      this["\x1e\x07\x15"] = dofus.Constants["\x17\f\x15"] + _loc2_.backID + ".swf";
      this["\x1d\x13\x03"] = _loc2_.backColor;
      this["\x1e\r\f"] = dofus.Constants["\x17\f\x16"] + _loc2_.upID + ".swf";
      this["\x1d\x1e\x1c"] = _loc2_.upColor;
      if(this["\x18\t\x1c"])
      {
         this["\x18\x13\x13"]();
         this["\x18\x13\x16"]();
      }
      return this["\x1e\x18\x01"]();
   }
   function §\x18\t\x04§()
   {
      super.init(false,dofus.graphics.gapi.controls.Emblem.CLASS_NAME);
   }
   function createChildren()
   {
      this.addToQueue({object:this,method:this.addListeners});
      this.addToQueue({object:this,method:this["\x18\x13\x14"]});
   }
   function §\x18\n\x10§()
   {
   }
   function addListeners()
   {
      this._ldrEmblemBack.addEventListener("initialization",this);
      this._ldrEmblemUp.addEventListener("initialization",this);
   }
   function §\x18\x13\x14§()
   {
      if(this["\x1e\x07\x15"] != undefined)
      {
         if(this["\x1c\b\x01"])
         {
            this["\x1d\x05\b"].contentPath = this["\x1e\x07\x15"];
            var _loc2_ = new Color(this["\x1d\x05\b"]);
            _loc2_.setRGB(16777215);
         }
         this["\x1d\x05\b"]._visible = this["\x1c\b\x01"];
         this["\x1d\x05\b"].enabled = false;
         this["\x18\x13\x13"]();
         this["\x18\x13\x16"]();
      }
   }
   function §\x18\x13\x13§()
   {
      if(this._ldrEmblemBack.contentPath == this["\x1e\x07\x15"])
      {
         this["\x16\x04\n"]();
      }
      else
      {
         this._ldrEmblemBack.contentPath = this["\x1e\x07\x15"];
      }
   }
   function §\x18\x13\x16§()
   {
      if(this._ldrEmblemUp.contentPath == this["\x1e\r\f"])
      {
         this["\x16\x04\x14"]();
      }
      else
      {
         this._ldrEmblemUp.contentPath = this["\x1e\r\f"];
      }
   }
   function §\x16\x04\n§()
   {
      this["\x1a\x18\x03"](this._ldrEmblemBack.content.back,this["\x1d\x13\x03"]);
   }
   function §\x16\x04\x14§()
   {
      if(this["\x1d\x1e\x1c"] == -1)
      {
         return undefined;
      }
      this["\x1a\x18\x03"](this._ldrEmblemUp.content,this["\x1d\x1e\x1c"]);
   }
   function initialization(oEvent)
   {
      var _loc3_ = _loc2_.target;
      switch(_loc3_._name)
      {
         case "_ldrEmblemBack":
            this["\x16\x04\n"]();
            break;
         case "_ldrEmblemUp":
            this["\x16\x04\x14"]();
      }
   }
}
